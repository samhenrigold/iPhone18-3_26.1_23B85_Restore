const char *sub_1D168C318()
{
  if (*v0 == 2)
  {
    return "VirtualAudio";
  }

  else
  {
    return "ControlCenter";
  }
}

const char *sub_1D168C344()
{
  v1 = *v0;
  if (!*v0)
  {
    return "InactiveMicModeSelection";
  }

  if (v1 == 2)
  {
    return "ios_high_quality_local_recording";
  }

  if (v1 == 1)
  {
    return "DynamicControls";
  }

  result = sub_1D16CC694();
  __break(1u);
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

unint64_t sub_1D168C430()
{
  result = qword_1EC640BB0;
  if (!qword_1EC640BB0)
  {
    type metadata accessor for Feature(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640BB0);
  }

  return result;
}

double CCUIEdgeInsetsRTLSwap(double a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 userInterfaceLayoutDirection];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 userInterfaceLayoutDirection];

  return a1;
}

void _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0()
{
  if (([v0 suppressesLabelTransitions] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v2 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v2 != 1)
    {
      v3 = *(v1 + 1);
      v4 = *(v1 + 2);
      sub_1D16C2014(*v1, v3, v4);
      v5 = v2;
      if (v2)
      {
        v6 = v5;
        sub_1D16BE8C8(1, v5);
      }

      sub_1D168E910(v2, v3, v4);
    }

    v7 = &v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    v8 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    if (v8 != 1)
    {
      v9 = *(v7 + 1);
      v10 = *(v7 + 2);
      sub_1D16C2014(*v7, v9, v10);
      v11 = v8;
      if (v8)
      {
        v12 = v11;
        sub_1D16BE8C8(0, v11);
      }

      sub_1D168E910(v8, v9, v10);
    }
  }

  if (([v0 suppressesLabelTransitions] & 1) == 0)
  {
    v13 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v14 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v14 != 1)
    {
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      sub_1D16C2014(*v13, v15, v16);
      v17 = v16;
      if (v16)
      {
        v18 = v17;
        sub_1D16BE8C8(1, v17);
      }

      sub_1D168E910(v14, v15, v16);
    }

    v19 = &v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    v20 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    if (v20 != 1)
    {
      v21 = *(v19 + 1);
      v22 = *(v19 + 2);
      sub_1D16C2014(*v19, v21, v22);
      v23 = v22;
      if (v22)
      {
        v24 = v23;
        sub_1D16BE8C8(0, v23);
      }

      sub_1D168E910(v20, v21, v22);
    }
  }
}

BOOL CCUILayoutShouldBePortrait(void *a1)
{
  v1 = [a1 window];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  if (CGRectIsEmpty(v15))
  {
    v3 = CCUIScreenBounds();
    v5 = v10;
    v7 = v11;
    v9 = v12;
  }

  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  Height = CGRectGetHeight(v16);
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  return Height > CGRectGetWidth(v17);
}

double CCUIScreenBounds()
{
  v0 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  switch(v0)
  {
    case 1:
      v1 = 0.0;
      break;
    case 3:
      v1 = 1.57079633;
      break;
    case 4:
      v1 = -1.57079633;
      break;
    default:
      v1 = 3.14159265;
      if (v0 != 2)
      {
        v1 = 0.0;
      }

      break;
  }

  memset(&v6, 0, sizeof(v6));
  Rotation = CGAffineTransformMakeRotation(&v6, v1);
  v7.origin.x = CCUIReferenceScreenBounds(Rotation, v3);
  v5 = v6;
  CGRectApplyAffineTransform(v7, &v5);
  UIRectIntegralWithScale();
  return *MEMORY[0x1E695EFF8];
}

double CCUIReferenceScreenBounds(uint64_t a1, uint64_t a2)
{
  if (CCUIReferenceScreenBounds_onceToken != -1)
  {
    CCUIReferenceScreenBounds_cold_1();
  }

  return *&CCUIReferenceScreenBounds___referenceScreenBounds_0;
}

double CCUIExpandedModuleEdgeInsets()
{
  ShouldBePortrait = CCUILayoutShouldBePortrait(0);

  return CCUILayoutEdgeInsetsForcePortrait(ShouldBePortrait, v1);
}

double CCUILayoutEdgeInsetsForcePortrait(_BOOL8 ShouldBePortrait, uint64_t a2)
{
  if (!ShouldBePortrait)
  {
    ShouldBePortrait = CCUILayoutShouldBePortrait(0);
    if (!ShouldBePortrait)
    {
      v73.origin.x = CCUIReferenceScreenBounds(ShouldBePortrait, a2);
      Width = CGRectGetWidth(v73);
      if (Width >= 1024.0)
      {
        v2 = [MEMORY[0x1E69DC938] currentDevice];
        v26 = [v2 userInterfaceIdiom];
        if (v26 == 1)
        {
          v26 = SBFEffectiveHomeButtonType();
          v9 = 27.0;
          if (v26 != 2)
          {
            goto LABEL_60;
          }
        }
      }

      v74.origin.x = CCUIReferenceScreenBounds(v26, v27);
      v12 = CGRectGetWidth(v74);
      if (v12 >= 1024.0)
      {
        v3 = [MEMORY[0x1E69DC938] currentDevice];
        v28 = [v3 userInterfaceIdiom];
        if (v28 == 1)
        {
          v28 = SBFEffectiveHomeButtonType();
          if (v28 == 2)
          {
LABEL_27:

            v9 = 27.0;
            if (Width < 1024.0)
            {
              return v9;
            }

            goto LABEL_60;
          }
        }
      }

      v75.origin.x = CCUIReferenceScreenBounds(v28, v29);
      v15 = CGRectGetWidth(v75);
      if (v15 >= 834.0)
      {
        v4 = [MEMORY[0x1E69DC938] currentDevice];
        v30 = [v4 userInterfaceIdiom];
        if (v30 == 1)
        {
          v30 = SBFEffectiveHomeButtonType();
          v9 = 20.0;
          if (v30 == 2)
          {
            goto LABEL_56;
          }
        }
      }

      v76.origin.x = CCUIReferenceScreenBounds(v30, v31);
      v16 = CGRectGetWidth(v76);
      if (v16 >= 834.0)
      {
        v5 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v5 userInterfaceIdiom] == 1)
        {
          v9 = 20.0;
          if (SBFEffectiveHomeButtonType() != 2)
          {
            goto LABEL_54;
          }
        }
      }

      v17 = [MEMORY[0x1E69DC938] currentDevice];
      v32 = [v17 userInterfaceIdiom];
      v9 = 20.0;
      if (v32 == 1)
      {
        goto LABEL_53;
      }

      v77.origin.x = CCUIReferenceScreenBounds(v32, v33);
      if (CGRectGetWidth(v77) >= 430.0)
      {
        v9 = 37.0;
        goto LABEL_53;
      }

      v78.origin.x = CCUIReferenceScreenBounds(v34, v35);
      if (CGRectGetWidth(v78) >= 428.0)
      {
        v9 = 36.0;
        goto LABEL_53;
      }

      v79.origin.x = CCUIReferenceScreenBounds(v36, v37);
      if (CGRectGetWidth(v79) >= 420.0)
      {
        v38 = SBFEffectiveHomeButtonType();
        if (v38 == 2)
        {
LABEL_40:
          v9 = 27.0;
          goto LABEL_53;
        }
      }

      v85.origin.x = CCUIReferenceScreenBounds(v38, v39);
      if (CGRectGetWidth(v85) >= 414.0 && (v51 = SBFEffectiveHomeButtonType(), v51 == 2) || (v86.origin.x = CCUIReferenceScreenBounds(v51, v52), CGRectGetWidth(v86) >= 414.0))
      {
        v9 = 34.0;
        goto LABEL_53;
      }

      v87.origin.x = CCUIReferenceScreenBounds(v53, v54);
      v9 = 30.0;
      if (CGRectGetWidth(v87) < 393.0)
      {
        v88.origin.x = CCUIReferenceScreenBounds(v55, v56);
        if (CGRectGetWidth(v88) < 390.0)
        {
          v89.origin.x = CCUIReferenceScreenBounds(v57, v58);
          if (CGRectGetWidth(v89) >= 375.0)
          {
            v59 = SBFEffectiveHomeButtonType();
            if (v59 == 2)
            {
              goto LABEL_40;
            }
          }

          v90.origin.x = CCUIReferenceScreenBounds(v59, v60);
          v9 = 27.0;
          if (CGRectGetWidth(v90) < 375.0)
          {
            v91.origin.x = CCUIReferenceScreenBounds(v61, v62);
            if (CGRectGetWidth(v91) < 320.0)
            {
              v9 = 16.0;
            }
          }
        }
      }

LABEL_53:

      if (v16 < 834.0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  v66.origin.x = CCUIReferenceScreenBounds(ShouldBePortrait, a2);
  Width = CGRectGetWidth(v66);
  if (Width >= 1024.0)
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v2 userInterfaceIdiom];
    if (v6 == 1)
    {
      v6 = SBFEffectiveHomeButtonType();
      v9 = 27.0;
      if (v6 != 2)
      {
LABEL_60:

        return v9;
      }
    }
  }

  v67.origin.x = CCUIReferenceScreenBounds(v6, v7);
  v12 = CGRectGetWidth(v67);
  if (v12 >= 1024.0)
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v3 userInterfaceIdiom];
    if (v10 == 1)
    {
      v10 = SBFEffectiveHomeButtonType();
      if (v10 == 2)
      {
        goto LABEL_27;
      }
    }
  }

  v68.origin.x = CCUIReferenceScreenBounds(v10, v11);
  v15 = CGRectGetWidth(v68);
  if (v15 < 834.0 || ([MEMORY[0x1E69DC938] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v4, "userInterfaceIdiom"), v13 != 1) || (v13 = SBFEffectiveHomeButtonType(), v9 = 20.0, v13 != 2))
  {
    v69.origin.x = CCUIReferenceScreenBounds(v13, v14);
    v16 = CGRectGetWidth(v69);
    if (v16 < 834.0 || ([MEMORY[0x1E69DC938] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "userInterfaceIdiom") != 1) || (v9 = 20.0, SBFEffectiveHomeButtonType() == 2))
    {
      v17 = [MEMORY[0x1E69DC938] currentDevice];
      v18 = [v17 userInterfaceIdiom];
      v9 = 20.0;
      if (v18 != 1)
      {
        v70.origin.x = CCUIReferenceScreenBounds(v18, v19);
        if (CGRectGetWidth(v70) >= 430.0)
        {
          v9 = 64.0;
        }

        else
        {
          v71.origin.x = CCUIReferenceScreenBounds(v20, v21);
          if (CGRectGetWidth(v71) >= 428.0 || (v72.origin.x = CCUIReferenceScreenBounds(v22, v23), CGRectGetWidth(v72) >= 420.0) && (v24 = SBFEffectiveHomeButtonType(), v24 == 2))
          {
            v9 = 64.0;
          }

          else
          {
            v80.origin.x = CCUIReferenceScreenBounds(v24, v25);
            if (CGRectGetWidth(v80) >= 414.0 && (v40 = SBFEffectiveHomeButtonType(), v40 == 2) || (v81.origin.x = CCUIReferenceScreenBounds(v40, v41), CGRectGetWidth(v81) >= 414.0))
            {
              v9 = 64.0;
            }

            else
            {
              v82.origin.x = CCUIReferenceScreenBounds(v42, v43);
              if (CGRectGetWidth(v82) >= 393.0 || (v83.origin.x = CCUIReferenceScreenBounds(v44, v45), CGRectGetWidth(v83) >= 390.0) || (v84.origin.x = CCUIReferenceScreenBounds(v46, v47), CGRectGetWidth(v84) >= 375.0) && (v48 = SBFEffectiveHomeButtonType(), v48 == 2) || (v92.origin.x = CCUIReferenceScreenBounds(v48, v49), CGRectGetWidth(v92) >= 375.0) || (v93.origin.x = CCUIReferenceScreenBounds(v63, v64), CGRectGetWidth(v93) >= 320.0))
              {
                v65 = 0x4050000000000000;
              }

              else
              {
                v65 = 0x404C000000000000;
              }

              v9 = *&v65;
            }
          }
        }
      }

      goto LABEL_53;
    }

LABEL_54:

LABEL_55:
    if (v15 < 834.0)
    {
      goto LABEL_57;
    }
  }

LABEL_56:

LABEL_57:
  if (v12 >= 1024.0)
  {
  }

  if (Width >= 1024.0)
  {
    goto LABEL_60;
  }

  return v9;
}

double CCUIDefaultExpandedContentModuleFullWidth()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    CCUILayoutEdgeInsetsForcePortrait(1, v2);
    v4 = v3;
    v6 = v5;
    v9 = CCUIPortraitMainListGridGeometryInfo(v7, v8);
    return v6 + v4 + v10 * 3.0 + v9 * 4.0;
  }

  else
  {
    ShouldBePortrait = CCUILayoutShouldBePortrait(0);
    v13 = CCUIScreenBounds();
    if (ShouldBePortrait)
    {

      return CGRectGetWidth(*&v13);
    }

    else
    {

      return CGRectGetHeight(*&v13);
    }
  }
}

CGFloat CCUIMaximumExpandedContentModuleHeight()
{
  ShouldBePortrait = CCUILayoutShouldBePortrait(0);
  v2 = CCUILayoutEdgeInsetsForcePortrait(ShouldBePortrait, v1);
  v4 = v3;
  v6.origin.x = CCUIScreenBounds();
  return CGRectGetHeight(v6) - v2 - v4;
}

CGFloat CCUISliderExpandedContentModuleHeight()
{
  if (CCUISliderExpandedContentModuleHeight_onceToken != -1)
  {
    CCUISliderExpandedContentModuleHeight_cold_1();
  }

  result = CCUIMaximumExpandedContentModuleHeight();
  if (result >= *&CCUISliderExpandedContentModuleHeight_height)
  {
    return *&CCUISliderExpandedContentModuleHeight_height;
  }

  return result;
}

Swift::Void __swiftcall CCUIOverlayBackgroundView.layoutSubviews()()
{
  v43.super_class = CCUIOverlayBackgroundView;
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  v1 = [v0 containerView];
  [v0 contentFrame];
  [v1 setFrame_];

  if (![v0 usesAdvancedBackdropRendering])
  {
    v33 = [v0 materialView];
    if (!v33)
    {
      return;
    }

    v28 = v33;
    v34 = [v0 containerView];
    [v34 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v32 = v42;
    v31 = v40;
    v30 = v38;
    v29 = v36;
    goto LABEL_8;
  }

  v2 = [v0 _shouldReverseLayoutDirection];
  v3 = [v0 containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5 + -100.0;
  v13 = v9 + 200.0;
  v14 = [v0 backdropLayer];
  [v14 setFrame_];

  v15 = [v0 containerView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = 0.0;
  if ((v2 & 1) == 0)
  {
    v23 = [v0 containerView];
    [v23 bounds];
    v25 = v24;

    v22 = v13 - v25;
  }

  v26 = [v0 roundedRectangleMask];
  [v26 setFrame_];

  v27 = [v0 advancedBackdropDimmingView];
  if (v27)
  {
    v28 = v27;
    [v0 bounds];
LABEL_8:
    [v28 setFrame_];
  }
}

uint64_t static Logger.userInterface.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC640B50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D16CC2C4();
  v3 = __swift_project_value_buffer(v2, qword_1EC640B58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1D168E910(void *a1, uint64_t a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1D168EE64(uint64_t a1, unint64_t *a2, void *a3)
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

char *sub_1D168EFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[OBJC_IVAR___CCUIControlImageView__isActive] = 0;
  *&v2[OBJC_IVAR___CCUIControlImageView_glyphTintColor] = 0;
  *&v2[OBJC_IVAR___CCUIControlImageView_font] = 0;
  v4 = &v2[OBJC_IVAR___CCUIControlImageView__controlIconView];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v2[OBJC_IVAR___CCUIControlImageView_systemImageName];
  *v5 = a1;
  *(v5 + 1) = a2;
  v13 = sub_1D16CC474();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641B68, &unk_1D16D24C0));
  v7 = sub_1D16CC404();
  [v7 setBackgroundColor_];
  sub_1D16CC424();
  *&v3[OBJC_IVAR___CCUIControlImageView_hostingView] = v7;
  [v7 bounds];
  v12.receiver = v3;
  v12.super_class = CCUIControlImageView;
  v8 = objc_msgSendSuper2(&v12, sel_initWithFrame_);
  v9 = *&v8[OBJC_IVAR___CCUIControlImageView_hostingView];
  v10 = v8;
  [v10 addSubview_];
  [v10 setBackgroundColor_];
  sub_1D168FA54();
  sub_1D168FD84();

  return v10;
}

void sub_1D168F1D0(id a1, void *a2, unint64_t *a3, void *a4, void (*a5)(void))
{
  v8 = *(v5 + *a2);
  *(v5 + *a2) = a1;
  if (!v8)
  {
    if (!a1)
    {
      return;
    }

    v12 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v12 = v8;
  if (!a1 || (sub_1D168EE64(0, a3, a4), a1 = a1, v9 = v12, v10 = sub_1D16CC5A4(), v9, (v10 & 1) == 0))
  {
LABEL_7:
    a5();

    v11 = v12;
    goto LABEL_8;
  }

  v11 = v9;
LABEL_8:
}

uint64_t sub_1D168FA54()
{
  v1 = v0;
  v2 = sub_1D16CC294();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = v18 - v8 + 16;
  if (![v1 glyphTintColor])
  {
    v10 = [objc_opt_self() whiteColor];
  }

  sub_1D16CC464();
  if (([v1 isActive] & 1) == 0)
  {
    v11 = [v1 glyphTintColor];
    if (v11)
    {
    }
  }

  v12 = [v1 systemImageName];
  sub_1D16CC4A4();

  sub_1D16CC284();
  sub_1D16CC274();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v18[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(v3 + 16))(boxed_opaque_existential_1, v9, v2);
  v15 = OBJC_IVAR___CCUIControlImageView__controlIconView;
  swift_beginAccess();
  sub_1D1690038(v18, v1 + v15);
  swift_endAccess();
  sub_1D168FD84();

  return (v13)(v9, v2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1D168FD84()
{
  v1 = sub_1D16CC294();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641B58, &qword_1D16D2480);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v15 - v7;
  v9 = [v0 font];
  if (!v9)
  {
    v9 = [objc_opt_self() systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB980]];
  }

  v10 = OBJC_IVAR___CCUIControlImageView__controlIconView;
  swift_beginAccess();
  sub_1D16900A8(v0 + v10, &v16);
  if (v17)
  {
    sub_1D16901B4(&v16, &v18);
    swift_dynamicCast();
    v11 = v9;
    v12 = sub_1D16CC454();
    KeyPath = swift_getKeyPath();
    (*(v2 + 16))(v8, v4, v1);
    v14 = &v8[*(v5 + 36)];
    *v14 = KeyPath;
    v14[1] = v12;
    (*(v2 + 8))(v4, v1);
    sub_1D1690128();
    *&v18 = sub_1D16CC474();
    sub_1D16CC414();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D168FFE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D16CC434();
  *a1 = result;
  return result;
}

uint64_t sub_1D1690038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641620, &qword_1D16D2180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D16900A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641620, &qword_1D16D2180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1690128()
{
  result = qword_1EC640B40;
  if (!qword_1EC640B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC641B58, &qword_1D16D2480);
    sub_1D16CBC70();
    sub_1D16CBCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640B40);
  }

  return result;
}

_OWORD *sub_1D16901B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D1690294@<X0>(void *a1@<X8>)
{
  v3 = [v1 systemImageName];
  if (!v3)
  {
    sub_1D16CC4A4();
    v3 = sub_1D16CC494();
  }

  v4 = [objc_allocWithZone(CCUIControlImageView) initWithSystemImageName_];

  [v4 setActive_];
  v5 = [v1 glyphTintColor];
  [v4 setGlyphTintColor_];

  v6 = [v1 font];
  [v4 setFont_];

  result = type metadata accessor for CCUIControlImageView(v7);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t CCUINumberOfRowsForGridSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 1;
  }

  else
  {
    return word_1D16D1D62[a1 - 1];
  }
}

uint64_t CCUINumberOfColumnsForGridSizeClass(uint64_t a1)
{
  if ((a1 - 2) > 8)
  {
    return 1;
  }

  else
  {
    return word_1D16D1D50[a1 - 2];
  }
}

double CCUIBoundsSizeForGridSizeClassWithGeometry(uint64_t a1, double a2, double a3)
{
  v6 = CCUINumberOfColumnsForGridSizeClass(a1);
  CCUINumberOfRowsForGridSizeClass(a1);
  return a3 * (v6 + -1.0) + v6 * a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D169159C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641620, &qword_1D16D2180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1691604(uint64_t a1, int a2)
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

uint64_t sub_1D1691624(uint64_t result, int a2, int a3)
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

uint64_t sub_1D169166C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16916F0()
{
  MEMORY[0x1D388F430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1691728()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1691760()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16917B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16917E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1691840()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1691888()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16918C8()
{
  v1 = *(v0 + 104);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D1691928()
{

  v1 = *(v0 + 176);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1D1691998()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double sub_1D1691A00@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  UIMutableTraits.moduleResizingConfiguration.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1D1691A54(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  v9 = *a1;
  v10 = v6;
  v11 = v7;
  return UIMutableTraits.moduleResizingConfiguration.setter(&v9, v4, v5);
}

__n128 sub_1D1691AB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1691ABC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D1691B04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gridSizeClass];
  *a2 = result;
  return result;
}

id sub_1D1691B4C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 suppressesContentTransitions];
  *a2 = result;
  return result;
}

id sub_1D1691B94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userVisibilityStatus];
  *a2 = result;
  return result;
}

id sub_1D1691BDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 compactContinuousCornerRadius];
  *a2 = v4;
  return result;
}

id sub_1D1691C24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentMetrics];
  *a2 = result;
  return result;
}

id sub_1D1691C74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isResizing];
  *a2 = result;
  return result;
}

uint64_t sub_1D1691D04()
{
  MEMORY[0x1D388F430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1691D3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1691D7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1691DCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t CCUISignpostImpulse(NSObject *a1, __int16 a2)
{
  if (os_signpost_enabled(a1))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D168A000, a1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "signpost", " enableTelemetry=YES ", v4, 2u);
  }

  return kdebug_trace();
}

CGAffineTransform *CCUIAffineTransformBetweenInterfaceOrientations@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 != 1)
  {
    if (a2 == 3)
    {
      v4 = 1.57079633;
    }

    else if (a2 == 4)
    {
      v4 = -1.57079633;
    }

    else
    {
      v4 = 3.14159265;
      if (a2 != 2)
      {
        v4 = 0.0;
      }
    }
  }

  if (a1 != 1)
  {
    if (a1 == 3)
    {
      v3 = 1.57079633;
    }

    else if (a1 == 4)
    {
      v3 = -1.57079633;
    }

    else
    {
      v3 = 3.14159265;
      if (a1 != 2)
      {
        v3 = 0.0;
      }
    }
  }

  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return CGAffineTransformMakeRotation(a3, v4 - v3);
}

void __CCUIReferenceScreenBounds_block_invoke()
{
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 _referenceBounds];
  CCUIReferenceScreenBounds___referenceScreenBounds_0 = v0;
  CCUIReferenceScreenBounds___referenceScreenBounds_1 = v1;
  CCUIReferenceScreenBounds___referenceScreenBounds_2 = v2;
  CCUIReferenceScreenBounds___referenceScreenBounds_3 = v3;
}

double CCUIScreenSafeAreaInsets(uint64_t a1, uint64_t a2)
{
  if (CCUIScreenSafeAreaInsets_onceToken != -1)
  {
    CCUIScreenSafeAreaInsets_cold_1();
  }

  return *&CCUIScreenSafeAreaInsets___screenSafeAreaInsets_0;
}

void __CCUIScreenSafeAreaInsets_block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  v6 = [v0 _keyWindowForScreen:v1];

  [v6 safeAreaInsets];
  CCUIScreenSafeAreaInsets___screenSafeAreaInsets_0 = v2;
  CCUIScreenSafeAreaInsets___screenSafeAreaInsets_1 = v3;
  CCUIScreenSafeAreaInsets___screenSafeAreaInsets_2 = v4;
  CCUIScreenSafeAreaInsets___screenSafeAreaInsets_3 = v5;
}

double CCUIPortraitMainListGridGeometryInfo(uint64_t a1, uint64_t a2)
{
  if (CCUIPortraitMainListGridGeometryInfo_onceToken != -1)
  {
    CCUIPortraitMainListGridGeometryInfo_cold_1();
  }

  return *&CCUIPortraitMainListGridGeometryInfo_gridGeometryInfo_0;
}

void __CCUIPortraitMainListGridGeometryInfo_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v4 = 10.0;
    v5 = 66.0;
  }

  else
  {
    if (CCUIPortraitGridLayoutSideMargin_onceToken != -1)
    {
      __CCUIPortraitMainListGridGeometryInfo_block_invoke_cold_1();
    }

    v6 = *&CCUIPortraitGridLayoutSideMargin_margin;
    v9.origin.x = CCUIReferenceScreenBounds(v2, v3);
    v7 = CGRectGetWidth(v9) + v6 * -2.0;
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 scale];

    v5 = round(v7 / 4.66176471);
    UIFloorToScale();
  }

  CCUIPortraitMainListGridGeometryInfo_gridGeometryInfo_0 = *&v5;
  CCUIPortraitMainListGridGeometryInfo_gridGeometryInfo_1 = *&v4;
}

double CCUIPortraitGridLayoutSideMargin(uint64_t a1, uint64_t a2)
{
  if (CCUIPortraitGridLayoutSideMargin_onceToken != -1)
  {
    __CCUIPortraitMainListGridGeometryInfo_block_invoke_cold_1();
  }

  return *&CCUIPortraitGridLayoutSideMargin_margin;
}

double CCUICalculateGridGeometryInfo(uint64_t a1, double a2, double a3, double a4)
{
  v4 = round(a2 / (a1 + (a1 + -1.0) * a3));
  UIFloorToScale();
  return v4;
}

double CCUICompactModuleContinuousCornerRadius(uint64_t a1, uint64_t a2)
{
  if (CCUICompactModuleContinuousCornerRadius_onceToken != -1)
  {
    CCUICompactModuleContinuousCornerRadius_cold_1();
  }

  return *&CCUICompactModuleContinuousCornerRadius_radius;
}

void __CCUICompactModuleContinuousCornerRadius_block_invoke(uint64_t a1, uint64_t a2)
{
  v40.origin.x = CCUIReferenceScreenBounds(a1, a2);
  Width = CGRectGetWidth(v40);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v38 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v38, "userInterfaceIdiom"), v5 != 1) || (v5 = SBFEffectiveHomeButtonType(), v5 == 2))
  {
    v41.origin.x = CCUIReferenceScreenBounds(v5, v6);
    v10 = CGRectGetWidth(v41);
    if (v10 >= 1024.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      v8 = [v2 userInterfaceIdiom];
      if (v8 == 1)
      {
        v8 = SBFEffectiveHomeButtonType();
        if (v8 == 2)
        {
          CCUICompactModuleContinuousCornerRadius_radius = 0x4033000000000000;
LABEL_31:

LABEL_32:
          v27 = v38;
          if (Width < 1024.0)
          {
            return;
          }

          goto LABEL_33;
        }
      }
    }

    v42.origin.x = CCUIReferenceScreenBounds(v8, v9);
    v13 = CGRectGetWidth(v42);
    if (v13 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      v11 = [v3 userInterfaceIdiom];
      if (v11 == 1)
      {
        v11 = SBFEffectiveHomeButtonType();
        if (v11 == 2)
        {
          CCUICompactModuleContinuousCornerRadius_radius = 0x4031000000000000;
LABEL_29:

LABEL_30:
          if (v10 < 1024.0)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }
    }

    v43.origin.x = CCUIReferenceScreenBounds(v11, v12);
    v14 = CGRectGetWidth(v43);
    if (v14 >= 834.0)
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v4 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUICompactModuleContinuousCornerRadius_radius = 0x4031000000000000;
        goto LABEL_27;
      }
    }

    v15 = [MEMORY[0x1E69DC938] currentDevice];
    v16 = [v15 userInterfaceIdiom];
    v18 = 17.0;
    if (v16 != 1)
    {
      v44.origin.x = CCUIReferenceScreenBounds(v16, v17);
      if (CGRectGetWidth(v44) >= 430.0)
      {
        goto LABEL_22;
      }

      v45.origin.x = CCUIReferenceScreenBounds(v19, v20);
      if (CGRectGetWidth(v45) >= 428.0)
      {
        goto LABEL_22;
      }

      v46.origin.x = CCUIReferenceScreenBounds(v21, v22);
      if (CGRectGetWidth(v46) < 420.0 || (v23 = SBFEffectiveHomeButtonType(), v18 = 19.0, v23 != 2))
      {
        v47.origin.x = CCUIReferenceScreenBounds(v23, v24);
        if (CGRectGetWidth(v47) >= 414.0)
        {
          v25 = SBFEffectiveHomeButtonType();
          if (v25 == 2)
          {
LABEL_22:
            v18 = 21.0;
            goto LABEL_23;
          }
        }

        v48.origin.x = CCUIReferenceScreenBounds(v25, v26);
        v18 = 21.0;
        if (CGRectGetWidth(v48) < 414.0)
        {
          v49.origin.x = CCUIReferenceScreenBounds(v28, v29);
          v18 = 20.0;
          if (CGRectGetWidth(v49) < 393.0)
          {
            v50.origin.x = CCUIReferenceScreenBounds(v30, v31);
            if (CGRectGetWidth(v50) < 390.0)
            {
              v51.origin.x = CCUIReferenceScreenBounds(v32, v33);
              if (CGRectGetWidth(v51) < 375.0 || (v34 = SBFEffectiveHomeButtonType(), v18 = 19.0, v34 != 2))
              {
                v52.origin.x = CCUIReferenceScreenBounds(v34, v35);
                v18 = 19.0;
                if (CGRectGetWidth(v52) < 375.0)
                {
                  v53.origin.x = CCUIReferenceScreenBounds(v36, v37);
                  if (CGRectGetWidth(v53) < 320.0)
                  {
                    v18 = 17.0;
                  }

                  else
                  {
                    v18 = 19.0;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    CCUICompactModuleContinuousCornerRadius_radius = *&v18;

    if (v14 < 834.0)
    {
LABEL_28:
      if (v13 < 834.0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_27:

    goto LABEL_28;
  }

  CCUICompactModuleContinuousCornerRadius_radius = 0x4033000000000000;
  v27 = v38;
LABEL_33:
}

double CCUIExpandedModuleContinuousCornerRadius(uint64_t a1, uint64_t a2)
{
  if (CCUIExpandedModuleContinuousCornerRadius_onceToken[0] != -1)
  {
    CCUIExpandedModuleContinuousCornerRadius_cold_1();
  }

  return *&CCUIExpandedModuleContinuousCornerRadius_radius;
}

void __CCUIExpandedModuleContinuousCornerRadius_block_invoke(uint64_t a1, uint64_t a2)
{
  v42.origin.x = CCUIReferenceScreenBounds(a1, a2);
  Width = CGRectGetWidth(v42);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v40 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v40, "userInterfaceIdiom"), v5 != 1) || (v5 = SBFEffectiveHomeButtonType(), v5 == 2))
  {
    v43.origin.x = CCUIReferenceScreenBounds(v5, v6);
    v10 = CGRectGetWidth(v43);
    if (v10 >= 1024.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      v8 = [v2 userInterfaceIdiom];
      if (v8 == 1)
      {
        v8 = SBFEffectiveHomeButtonType();
        if (v8 == 2)
        {
          CCUIExpandedModuleContinuousCornerRadius_radius = 0x4043000000000000;
LABEL_42:

LABEL_43:
          v25 = v40;
          if (Width < 1024.0)
          {
            return;
          }

          goto LABEL_44;
        }
      }
    }

    v44.origin.x = CCUIReferenceScreenBounds(v8, v9);
    v13 = CGRectGetWidth(v44);
    if (v13 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      v11 = [v3 userInterfaceIdiom];
      if (v11 == 1)
      {
        v11 = SBFEffectiveHomeButtonType();
        if (v11 == 2)
        {
          CCUIExpandedModuleContinuousCornerRadius_radius = 0x4041000000000000;
LABEL_40:

LABEL_41:
          if (v10 < 1024.0)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }
      }
    }

    v45.origin.x = CCUIReferenceScreenBounds(v11, v12);
    v14 = CGRectGetWidth(v45);
    if (v14 >= 834.0)
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v4 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUIExpandedModuleContinuousCornerRadius_radius = 0x4041000000000000;
LABEL_38:

LABEL_39:
        if (v13 < 834.0)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    v15 = [MEMORY[0x1E69DC938] currentDevice];
    v16 = [v15 userInterfaceIdiom];
    if (v16 == 1)
    {
      v18 = 0x4041000000000000;
LABEL_36:
      v39 = *&v18;
      goto LABEL_37;
    }

    v46.origin.x = CCUIReferenceScreenBounds(v16, v17);
    if (CGRectGetWidth(v46) < 430.0)
    {
      v47.origin.x = CCUIReferenceScreenBounds(v19, v20);
      if (CGRectGetWidth(v47) < 428.0)
      {
        v48.origin.x = CCUIReferenceScreenBounds(v21, v22);
        if (CGRectGetWidth(v48) >= 420.0)
        {
          v23 = SBFEffectiveHomeButtonType();
          if (v23 == 2)
          {
LABEL_21:
            v18 = 0x4043000000000000;
            goto LABEL_36;
          }
        }

        v49.origin.x = CCUIReferenceScreenBounds(v23, v24);
        if (CGRectGetWidth(v49) < 414.0 || (v26 = SBFEffectiveHomeButtonType(), v26 != 2))
        {
          v50.origin.x = CCUIReferenceScreenBounds(v26, v27);
          if (CGRectGetWidth(v50) < 414.0)
          {
            v51.origin.x = CCUIReferenceScreenBounds(v28, v29);
            if (CGRectGetWidth(v51) >= 393.0 || (v52.origin.x = CCUIReferenceScreenBounds(v30, v31), CGRectGetWidth(v52) >= 390.0))
            {
              v18 = 0x4044000000000000;
              goto LABEL_36;
            }

            v53.origin.x = CCUIReferenceScreenBounds(v32, v33);
            if (CGRectGetWidth(v53) < 375.0 || (v34 = SBFEffectiveHomeButtonType(), v34 != 2))
            {
              v54.origin.x = CCUIReferenceScreenBounds(v34, v35);
              if (CGRectGetWidth(v54) < 375.0)
              {
                v55.origin.x = CCUIReferenceScreenBounds(v36, v37);
                v38 = CGRectGetWidth(v55) < 320.0;
                v39 = 34.0;
                if (!v38)
                {
                  v39 = 38.0;
                }

LABEL_37:
                CCUIExpandedModuleContinuousCornerRadius_radius = *&v39;

                if (v14 < 834.0)
                {
                  goto LABEL_39;
                }

                goto LABEL_38;
              }
            }

            goto LABEL_21;
          }
        }
      }
    }

    v18 = 0x4045000000000000;
    goto LABEL_36;
  }

  CCUIExpandedModuleContinuousCornerRadius_radius = 0x4043000000000000;
  v25 = v40;
LABEL_44:
}

double CCUISliderExpandedModuleContinuousCornerRadius(uint64_t a1, uint64_t a2)
{
  if (CCUISliderExpandedContentModuleWidth_onceToken != -1)
  {
    CCUISliderExpandedModuleContinuousCornerRadius_cold_1();
  }

  return *&CCUISliderExpandedContentModuleWidth_width * 0.5;
}

double CCUISliderExpandedContentModuleWidth(uint64_t a1, uint64_t a2)
{
  if (CCUISliderExpandedContentModuleWidth_onceToken != -1)
  {
    CCUISliderExpandedModuleContinuousCornerRadius_cold_1();
  }

  return *&CCUISliderExpandedContentModuleWidth_width;
}

void __CCUISliderExpandedContentModuleWidth_block_invoke(uint64_t a1, uint64_t a2)
{
  v43.origin.x = CCUIReferenceScreenBounds(a1, a2);
  Width = CGRectGetWidth(v43);
  if (Width >= 1024.0)
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v2 userInterfaceIdiom];
    if (v6 == 1)
    {
      v6 = SBFEffectiveHomeButtonType();
      if (v6 != 2)
      {
        CCUISliderExpandedContentModuleWidth_width = 0x405EC00000000000;
LABEL_42:

        goto LABEL_43;
      }
    }
  }

  v44.origin.x = CCUIReferenceScreenBounds(v6, v7);
  v11 = CGRectGetWidth(v44);
  if (v11 < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "userInterfaceIdiom"), v9 != 1) || (v9 = SBFEffectiveHomeButtonType(), v9 != 2))
  {
    v45.origin.x = CCUIReferenceScreenBounds(v9, v10);
    v14 = CGRectGetWidth(v45);
    if (v14 >= 834.0)
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      v12 = [v4 userInterfaceIdiom];
      if (v12 == 1)
      {
        v12 = SBFEffectiveHomeButtonType();
        if (v12 == 2)
        {
          CCUISliderExpandedContentModuleWidth_width = 0x405EC00000000000;
LABEL_38:

LABEL_39:
          if (v11 < 1024.0)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }
    }

    v46.origin.x = CCUIReferenceScreenBounds(v12, v13);
    v15 = CGRectGetWidth(v46);
    if (v15 >= 834.0)
    {
      v5 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v5 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUISliderExpandedContentModuleWidth_width = 0x405EC00000000000;
LABEL_36:

LABEL_37:
        if (v14 < 834.0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v16 = [MEMORY[0x1E69DC938] currentDevice];
    v17 = [v16 userInterfaceIdiom];
    if (v17 == 1)
    {
      v19 = 0x405EC00000000000;
      goto LABEL_35;
    }

    v47.origin.x = CCUIReferenceScreenBounds(v17, v18);
    v19 = 0x4062C00000000000;
    if (CGRectGetWidth(v47) < 430.0)
    {
      v48.origin.x = CCUIReferenceScreenBounds(v20, v21);
      if (CGRectGetWidth(v48) < 428.0)
      {
        v49.origin.x = CCUIReferenceScreenBounds(v22, v23);
        if (CGRectGetWidth(v49) >= 420.0)
        {
          v24 = SBFEffectiveHomeButtonType();
          if (v24 == 2)
          {
            goto LABEL_21;
          }
        }

        v50.origin.x = CCUIReferenceScreenBounds(v24, v25);
        if (CGRectGetWidth(v50) >= 414.0 && (v26 = SBFEffectiveHomeButtonType(), v26 == 2))
        {
          v19 = 0x4062400000000000;
        }

        else
        {
          v51.origin.x = CCUIReferenceScreenBounds(v26, v27);
          if (CGRectGetWidth(v51) >= 414.0)
          {
            v19 = 0x4060800000000000;
          }

          else
          {
            v52.origin.x = CCUIReferenceScreenBounds(v28, v29);
            v19 = 0x4061800000000000;
            if (CGRectGetWidth(v52) < 393.0)
            {
              v53.origin.x = CCUIReferenceScreenBounds(v30, v31);
              if (CGRectGetWidth(v53) < 390.0)
              {
                v54.origin.x = CCUIReferenceScreenBounds(v32, v33);
                if (CGRectGetWidth(v54) >= 375.0)
                {
                  v34 = SBFEffectiveHomeButtonType();
                  if (v34 == 2)
                  {
LABEL_21:
                    v19 = 0x4060E00000000000;
                    goto LABEL_35;
                  }
                }

                v55.origin.x = CCUIReferenceScreenBounds(v34, v35);
                v19 = 0x405EC00000000000;
                if (CGRectGetWidth(v55) < 375.0)
                {
                  v56.origin.x = CCUIReferenceScreenBounds(v36, v37);
                  v19 = qword_1D16D1D30[CGRectGetWidth(v56) >= 320.0];
                }
              }
            }
          }
        }
      }
    }

LABEL_35:
    CCUISliderExpandedContentModuleWidth_width = v19;

    if (v15 < 834.0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  CCUISliderExpandedContentModuleWidth_width = 0x405EC00000000000;
LABEL_40:

LABEL_41:
  if (Width >= 1024.0)
  {
    goto LABEL_42;
  }

LABEL_43:
  v41 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v41 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    v57.origin.x = CCUIReferenceScreenBounds(2, v38);
    v39 = CGRectGetWidth(v57);

    if (v39 < 375.0)
    {
      v40 = *&CCUISliderExpandedContentModuleWidth_width;
      if (*&CCUISliderExpandedContentModuleWidth_width < 135.0)
      {
        v40 = 135.0;
      }

      CCUISliderExpandedContentModuleWidth_width = *&v40;
    }
  }
}

void __CCUISliderExpandedContentModuleHeight_block_invoke(uint64_t a1, uint64_t a2)
{
  v43.origin.x = CCUIReferenceScreenBounds(a1, a2);
  Width = CGRectGetWidth(v43);
  if (Width >= 1024.0)
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v2 userInterfaceIdiom];
    if (v6 == 1)
    {
      v6 = SBFEffectiveHomeButtonType();
      if (v6 != 2)
      {
        CCUISliderExpandedContentModuleHeight_height = 0x4075400000000000;
LABEL_32:

        goto LABEL_33;
      }
    }
  }

  v44.origin.x = CCUIReferenceScreenBounds(v6, v7);
  v11 = CGRectGetWidth(v44);
  if (v11 < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "userInterfaceIdiom"), v9 != 1) || (v9 = SBFEffectiveHomeButtonType(), v9 != 2))
  {
    v45.origin.x = CCUIReferenceScreenBounds(v9, v10);
    v14 = CGRectGetWidth(v45);
    if (v14 >= 834.0)
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      v12 = [v4 userInterfaceIdiom];
      if (v12 == 1)
      {
        v12 = SBFEffectiveHomeButtonType();
        if (v12 == 2)
        {
          CCUISliderExpandedContentModuleHeight_height = 0x4075400000000000;
LABEL_28:

LABEL_29:
          if (v11 < 1024.0)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }
    }

    v46.origin.x = CCUIReferenceScreenBounds(v12, v13);
    v15 = CGRectGetWidth(v46);
    if (v15 >= 834.0)
    {
      v5 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v5 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUISliderExpandedContentModuleHeight_height = 0x4075400000000000;
        goto LABEL_26;
      }
    }

    v16 = [MEMORY[0x1E69DC938] currentDevice];
    v17 = [v16 userInterfaceIdiom];
    v19 = 0x4075400000000000;
    if (v17 != 1)
    {
      v47.origin.x = CCUIReferenceScreenBounds(v17, v18);
      if (CGRectGetWidth(v47) >= 430.0 || (v48.origin.x = CCUIReferenceScreenBounds(v20, v21), CGRectGetWidth(v48) >= 428.0))
      {
        v19 = 0x4079000000000000;
      }

      else
      {
        v49.origin.x = CCUIReferenceScreenBounds(v22, v23);
        if (CGRectGetWidth(v49) >= 420.0)
        {
          v24 = SBFEffectiveHomeButtonType();
          if (v24 == 2)
          {
            goto LABEL_20;
          }
        }

        v51.origin.x = CCUIReferenceScreenBounds(v24, v25);
        if (CGRectGetWidth(v51) >= 414.0 && (v29 = SBFEffectiveHomeButtonType(), v29 == 2))
        {
          v19 = 0x4078600000000000;
        }

        else
        {
          v52.origin.x = CCUIReferenceScreenBounds(v29, v30);
          if (CGRectGetWidth(v52) < 414.0)
          {
            v53.origin.x = CCUIReferenceScreenBounds(v31, v32);
            v19 = 0x4077200000000000;
            if (CGRectGetWidth(v53) < 393.0)
            {
              v54.origin.x = CCUIReferenceScreenBounds(v33, v34);
              if (CGRectGetWidth(v54) < 390.0)
              {
                v55.origin.x = CCUIReferenceScreenBounds(v35, v36);
                if (CGRectGetWidth(v55) >= 375.0)
                {
                  v37 = SBFEffectiveHomeButtonType();
                  if (v37 == 2)
                  {
LABEL_20:
                    v19 = 0x4076800000000000;
                    goto LABEL_22;
                  }
                }

                v56.origin.x = CCUIReferenceScreenBounds(v37, v38);
                if (CGRectGetWidth(v56) >= 375.0)
                {
                  v19 = 0x4073B00000000000;
                }

                else
                {
                  v57.origin.x = CCUIReferenceScreenBounds(v39, v40);
                  v19 = qword_1D16D1D40[CGRectGetWidth(v57) >= 320.0];
                }
              }
            }
          }
        }
      }
    }

LABEL_22:
    CCUISliderExpandedContentModuleHeight_height = v19;

    if (v15 < 834.0)
    {
LABEL_27:
      if (v14 < 834.0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_26:

    goto LABEL_27;
  }

  CCUISliderExpandedContentModuleHeight_height = 0x4075400000000000;
LABEL_30:

LABEL_31:
  if (Width >= 1024.0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v41 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v41 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    v50.origin.x = CCUIReferenceScreenBounds(2, v26);
    v27 = CGRectGetWidth(v50);

    if (v27 < 375.0)
    {
      v28 = *&CCUISliderExpandedContentModuleHeight_height;
      if (*&CCUISliderExpandedContentModuleHeight_height < 360.0)
      {
        v28 = 360.0;
      }

      CCUISliderExpandedContentModuleHeight_height = *&v28;
    }
  }
}

double CCUIAlertCompactPresentationTopMarginForOrientation(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    if (CCUIAlertCompactPresentationTopMarginForOrientation_onceToken != -1)
    {
      CCUIAlertCompactPresentationTopMarginForOrientation_cold_1();
    }

    v1 = &CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait;
  }

  else
  {
    if (CCUIAlertCompactPresentationTopMarginForOrientation_onceToken_17 != -1)
    {
      CCUIAlertCompactPresentationTopMarginForOrientation_cold_2();
    }

    v1 = &CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape;
  }

  return *v1;
}

void __CCUIAlertCompactPresentationTopMarginForOrientation_block_invoke(uint64_t a1, uint64_t a2)
{
  v40.origin.x = CCUIReferenceScreenBounds(a1, a2);
  Width = CGRectGetWidth(v40);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v38 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v38, "userInterfaceIdiom"), v5 != 1) || (v5 = SBFEffectiveHomeButtonType(), v5 == 2))
  {
    v41.origin.x = CCUIReferenceScreenBounds(v5, v6);
    v10 = CGRectGetWidth(v41);
    if (v10 >= 1024.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      v8 = [v2 userInterfaceIdiom];
      if (v8 == 1)
      {
        v8 = SBFEffectiveHomeButtonType();
        if (v8 == 2)
        {
          CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = 0x4038000000000000;
LABEL_36:

LABEL_37:
          v35 = v38;
          if (Width < 1024.0)
          {
            return;
          }

          goto LABEL_38;
        }
      }
    }

    v42.origin.x = CCUIReferenceScreenBounds(v8, v9);
    v13 = CGRectGetWidth(v42);
    if (v13 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      v11 = [v3 userInterfaceIdiom];
      if (v11 == 1)
      {
        v11 = SBFEffectiveHomeButtonType();
        if (v11 == 2)
        {
          CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = 0x4038000000000000;
LABEL_34:

LABEL_35:
          if (v10 < 1024.0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }
    }

    v43.origin.x = CCUIReferenceScreenBounds(v11, v12);
    v14 = CGRectGetWidth(v43);
    if (v14 >= 834.0)
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v4 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = 0x4038000000000000;
        goto LABEL_32;
      }
    }

    v15 = [MEMORY[0x1E69DC938] currentDevice];
    v16 = [v15 userInterfaceIdiom];
    v18 = 24.0;
    if (v16 != 1)
    {
      v44.origin.x = CCUIReferenceScreenBounds(v16, v17);
      if (CGRectGetWidth(v44) >= 430.0)
      {
        goto LABEL_27;
      }

      v45.origin.x = CCUIReferenceScreenBounds(v19, v20);
      if (CGRectGetWidth(v45) >= 428.0)
      {
        goto LABEL_27;
      }

      v46.origin.x = CCUIReferenceScreenBounds(v21, v22);
      if (CGRectGetWidth(v46) >= 420.0)
      {
        v23 = SBFEffectiveHomeButtonType();
        if (v23 == 2)
        {
          goto LABEL_27;
        }
      }

      v47.origin.x = CCUIReferenceScreenBounds(v23, v24);
      if (CGRectGetWidth(v47) >= 414.0)
      {
        v25 = SBFEffectiveHomeButtonType();
        if (v25 == 2)
        {
          goto LABEL_27;
        }
      }

      v48.origin.x = CCUIReferenceScreenBounds(v25, v26);
      if (CGRectGetWidth(v48) >= 414.0)
      {
        goto LABEL_28;
      }

      v49.origin.x = CCUIReferenceScreenBounds(v27, v28);
      if (CGRectGetWidth(v49) >= 393.0 || (v50.origin.x = CCUIReferenceScreenBounds(v29, v30), CGRectGetWidth(v50) >= 390.0) || (v51.origin.x = CCUIReferenceScreenBounds(v31, v32), CGRectGetWidth(v51) >= 375.0) && (v33 = SBFEffectiveHomeButtonType(), v33 == 2))
      {
LABEL_27:
        v18 = 48.0;
      }

      else
      {
        v52.origin.x = CCUIReferenceScreenBounds(v33, v34);
        if (CGRectGetWidth(v52) < 375.0)
        {
          v53.origin.x = CCUIReferenceScreenBounds(v36, v37);
          CGRectGetWidth(v53);
        }
      }
    }

LABEL_28:
    CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = *&v18;

    if (v14 < 834.0)
    {
LABEL_33:
      if (v13 < 834.0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_32:

    goto LABEL_33;
  }

  CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = 0x4038000000000000;
  v35 = v38;
LABEL_38:
}

void __CCUIAlertCompactPresentationTopMarginForOrientation_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v39.origin.x = CCUIReferenceScreenBounds(a1, a2);
  Width = CGRectGetWidth(v39);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v37 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v37, "userInterfaceIdiom"), v5 != 1) || (v5 = SBFEffectiveHomeButtonType(), v5 == 2))
  {
    v40.origin.x = CCUIReferenceScreenBounds(v5, v6);
    v10 = CGRectGetWidth(v40);
    if (v10 >= 1024.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      v8 = [v2 userInterfaceIdiom];
      if (v8 == 1)
      {
        v8 = SBFEffectiveHomeButtonType();
        if (v8 == 2)
        {
          CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;
LABEL_37:

LABEL_38:
          v36 = v37;
          if (Width < 1024.0)
          {
            return;
          }

          goto LABEL_39;
        }
      }
    }

    v41.origin.x = CCUIReferenceScreenBounds(v8, v9);
    v13 = CGRectGetWidth(v41);
    if (v13 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      v11 = [v3 userInterfaceIdiom];
      if (v11 == 1)
      {
        v11 = SBFEffectiveHomeButtonType();
        if (v11 == 2)
        {
          CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;
LABEL_35:

LABEL_36:
          if (v10 < 1024.0)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }
    }

    v42.origin.x = CCUIReferenceScreenBounds(v11, v12);
    v14 = CGRectGetWidth(v42);
    if (v14 >= 834.0 && ([MEMORY[0x1E69DC938] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;
    }

    else
    {
      v15 = [MEMORY[0x1E69DC938] currentDevice];
      v16 = [v15 userInterfaceIdiom];
      if (v16 != 1)
      {
        v43.origin.x = CCUIReferenceScreenBounds(v16, v17);
        if (CGRectGetWidth(v43) < 430.0)
        {
          v44.origin.x = CCUIReferenceScreenBounds(v18, v19);
          if (CGRectGetWidth(v44) < 428.0)
          {
            v45.origin.x = CCUIReferenceScreenBounds(v20, v21);
            if (CGRectGetWidth(v45) < 420.0 || (v22 = SBFEffectiveHomeButtonType(), v22 != 2))
            {
              v46.origin.x = CCUIReferenceScreenBounds(v22, v23);
              if (CGRectGetWidth(v46) < 414.0 || (v24 = SBFEffectiveHomeButtonType(), v24 != 2))
              {
                v47.origin.x = CCUIReferenceScreenBounds(v24, v25);
                if (CGRectGetWidth(v47) < 414.0)
                {
                  v48.origin.x = CCUIReferenceScreenBounds(v26, v27);
                  if (CGRectGetWidth(v48) < 393.0)
                  {
                    v49.origin.x = CCUIReferenceScreenBounds(v28, v29);
                    if (CGRectGetWidth(v49) < 390.0)
                    {
                      v50.origin.x = CCUIReferenceScreenBounds(v30, v31);
                      if (CGRectGetWidth(v50) < 375.0 || (v32 = SBFEffectiveHomeButtonType(), v32 != 2))
                      {
                        v51.origin.x = CCUIReferenceScreenBounds(v32, v33);
                        if (CGRectGetWidth(v51) < 375.0)
                        {
                          v52.origin.x = CCUIReferenceScreenBounds(v34, v35);
                          CGRectGetWidth(v52);
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

      CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;

      if (v14 < 834.0)
      {
LABEL_34:
        if (v13 < 834.0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_34;
  }

  CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;
  v36 = v37;
LABEL_39:
}

double CCUIAlertCompactPresentationMargin(uint64_t a1, uint64_t a2)
{
  if (CCUIAlertCompactPresentationMargin_onceToken != -1)
  {
    CCUIAlertCompactPresentationMargin_cold_1();
  }

  return *&CCUIAlertCompactPresentationMargin_defaultMargin;
}

void __CCUIAlertCompactPresentationMargin_block_invoke(uint64_t a1, uint64_t a2)
{
  v39.origin.x = CCUIReferenceScreenBounds(a1, a2);
  Width = CGRectGetWidth(v39);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v37 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v37, "userInterfaceIdiom"), v5 != 1) || (v5 = SBFEffectiveHomeButtonType(), v5 == 2))
  {
    v40.origin.x = CCUIReferenceScreenBounds(v5, v6);
    v10 = CGRectGetWidth(v40);
    if (v10 >= 1024.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      v8 = [v2 userInterfaceIdiom];
      if (v8 == 1)
      {
        v8 = SBFEffectiveHomeButtonType();
        if (v8 == 2)
        {
          CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;
LABEL_37:

LABEL_38:
          v36 = v37;
          if (Width < 1024.0)
          {
            return;
          }

          goto LABEL_39;
        }
      }
    }

    v41.origin.x = CCUIReferenceScreenBounds(v8, v9);
    v13 = CGRectGetWidth(v41);
    if (v13 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      v11 = [v3 userInterfaceIdiom];
      if (v11 == 1)
      {
        v11 = SBFEffectiveHomeButtonType();
        if (v11 == 2)
        {
          CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;
LABEL_35:

LABEL_36:
          if (v10 < 1024.0)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }
    }

    v42.origin.x = CCUIReferenceScreenBounds(v11, v12);
    v14 = CGRectGetWidth(v42);
    if (v14 >= 834.0 && ([MEMORY[0x1E69DC938] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;
    }

    else
    {
      v15 = [MEMORY[0x1E69DC938] currentDevice];
      v16 = [v15 userInterfaceIdiom];
      if (v16 != 1)
      {
        v43.origin.x = CCUIReferenceScreenBounds(v16, v17);
        if (CGRectGetWidth(v43) < 430.0)
        {
          v44.origin.x = CCUIReferenceScreenBounds(v18, v19);
          if (CGRectGetWidth(v44) < 428.0)
          {
            v45.origin.x = CCUIReferenceScreenBounds(v20, v21);
            if (CGRectGetWidth(v45) < 420.0 || (v22 = SBFEffectiveHomeButtonType(), v22 != 2))
            {
              v46.origin.x = CCUIReferenceScreenBounds(v22, v23);
              if (CGRectGetWidth(v46) < 414.0 || (v24 = SBFEffectiveHomeButtonType(), v24 != 2))
              {
                v47.origin.x = CCUIReferenceScreenBounds(v24, v25);
                if (CGRectGetWidth(v47) < 414.0)
                {
                  v48.origin.x = CCUIReferenceScreenBounds(v26, v27);
                  if (CGRectGetWidth(v48) < 393.0)
                  {
                    v49.origin.x = CCUIReferenceScreenBounds(v28, v29);
                    if (CGRectGetWidth(v49) < 390.0)
                    {
                      v50.origin.x = CCUIReferenceScreenBounds(v30, v31);
                      if (CGRectGetWidth(v50) < 375.0 || (v32 = SBFEffectiveHomeButtonType(), v32 != 2))
                      {
                        v51.origin.x = CCUIReferenceScreenBounds(v32, v33);
                        if (CGRectGetWidth(v51) < 375.0)
                        {
                          v52.origin.x = CCUIReferenceScreenBounds(v34, v35);
                          CGRectGetWidth(v52);
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

      CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;

      if (v14 < 834.0)
      {
LABEL_34:
        if (v13 < 834.0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_34;
  }

  CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;
  v36 = v37;
LABEL_39:
}

void __CCUIPortraitGridLayoutSideMargin_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    v8.origin.x = CCUIReferenceScreenBounds(v2, v3);
    v4 = CGRectGetWidth(v8) < 1024.0;
    v5 = 60.0;
    v6 = 50.0;
  }

  else
  {
    if (SBFEffectiveHomeButtonType() != 2)
    {
      v5 = 44.0;
      goto LABEL_7;
    }

    v9.origin.x = CCUIReferenceScreenBounds(2, v7);
    v4 = CGRectGetWidth(v9) < 414.0;
    v5 = 46.0;
    v6 = 38.0;
  }

  if (v4)
  {
    v5 = v6;
  }

LABEL_7:
  CCUIPortraitGridLayoutSideMargin_margin = *&v5;
}

__CFString *NSStringFromCCUIContentRenderingMode(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Preview";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %lu>", a1];
    }
  }

  else
  {
    v2 = @"Live";
  }

  return v2;
}

double _CCUIRoundButtonSize(uint64_t a1, uint64_t a2)
{
  if (_CCUIRoundButtonSize_onceToken != -1)
  {
    _CCUIRoundButtonSize_cold_1();
  }

  return *&_CCUIRoundButtonSize_size;
}

void sub_1D169AEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D169B250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCCUIGridSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"CCUIGridSizeClassSmall";
  }

  else
  {
    return off_1E83EA8C8[a1 - 1];
  }
}

void CCUIEnumerateGridSizeClassesWithBlock(void (**a1)(id, uint64_t))
{
  v1 = a1 + 2;
  v2 = a1[2];
  v3 = a1;
  v2();
  (*v1)(v3, 1);
  (*v1)(v3, 2);
  (*v1)(v3, 3);
  (*v1)(v3, 4);
  (*v1)(v3, 5);
  (*v1)(v3, 6);
  (*v1)(v3, 7);
  (*v1)(v3, 8);
  (*v1)(v3, 9);
  (*v1)(v3, 10);
}

uint64_t CCUIGridSizeClassMaskForGridSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 1;
  }

  else
  {
    return qword_1D16D1E18[a1 - 1];
  }
}

uint64_t CCUIAdjustGridSizeClassForAccessibility(uint64_t result, int a2)
{
  if (a2)
  {
    if (result == 2)
    {
      return 3;
    }

    else if (result == 4)
    {
      return 5;
    }
  }

  else if (result == 3)
  {
    return 2;
  }

  else if (result == 5)
  {
    return 4;
  }

  return result;
}

void sub_1D16A6BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D16A7628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CCUIRegisterControlCenterLogging(uint64_t result, uint64_t a2)
{
  if (CCUIRegisterControlCenterLogging_onceToken != -1)
  {
    CCUIRegisterControlCenterLogging_cold_1();
  }
}

uint64_t __CCUIRegisterControlCenterLogging_block_invoke()
{
  v0 = os_log_create("com.apple.ControlCenter", "AnimationRunner");
  v1 = CCUILogAnimationRunner;
  CCUILogAnimationRunner = v0;

  v2 = os_log_create("com.apple.ControlCenter", "ModuleInstance");
  v3 = CCUILogModuleInstance;
  CCUILogModuleInstance = v2;

  v4 = os_log_create("com.apple.ControlCenter", "UserInterface");
  v5 = CCUILogUserInterface;
  CCUILogUserInterface = v4;

  v6 = os_log_create("com.apple.ControlCenter", "IconLookup");
  v7 = CCUILogIconLookup;
  CCUILogIconLookup = v6;

  v8 = os_log_create("com.apple.ControlCenter", "XcodeSupport");
  v9 = CCUILogXcodeSupport;
  CCUILogXcodeSupport = v8;

  return MEMORY[0x1EEE66BB8](v8, v9);
}

__CFString *NSStringFromCCUIBaseSliderViewBehaviorIdentifier(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %lu>", a1];
  }

  else
  {
    v2 = off_1E83EAB00[a1];
  }

  return v2;
}

void sub_1D16B0B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1D16B2B1C()
{
  v45.receiver = v0;
  v45.super_class = type metadata accessor for LabelWithAccessoryView();
  objc_msgSendSuper2(&v45, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 _shouldReverseLayoutDirection];
  v10 = [v0 traitCollection];
  [v10 displayScale];
  v12 = v11;

  v13 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel;
  [*&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel] bounds];
  v15 = v14;
  v46.origin.x = v2;
  v46.origin.y = v4;
  v46.size.width = v6;
  v46.size.height = v8;
  v16 = CGRectGetWidth(v46) - v15;
  v47.origin.x = v2;
  v47.origin.y = v4;
  v47.size.width = v6;
  v47.size.height = v8;
  Height = CGRectGetHeight(v47);
  v18 = *&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel];
  [v18 sizeThatFits_];
  BSRectWithSize();
  v43 = v12;
  v42 = v12;
  v44 = v2;
  v19 = v4;
  v20 = v6;
  UIRectCenteredYInRectScale();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = 0.0;
  if (v9)
  {
    v29 = v21;
    v48.size.height = v8;
    v48.origin.x = v44;
    v48.origin.y = v19;
    v48.size.width = v20;
    Width = CGRectGetWidth(v48);
    v49.origin.x = v29;
    v49.origin.y = v23;
    v49.size.width = v25;
    v49.size.height = v27;
    v28 = Width - CGRectGetWidth(v49);
  }

  [v18 setFrame_];
  UIRectCenteredYInRectScale();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (v9)
  {
    v38 = v31;
    v50.origin.x = v28;
    v50.origin.y = v23;
    v50.size.width = v25;
    v50.size.height = v27;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = v38;
    v51.origin.y = v33;
    v51.size.width = v35;
    v51.size.height = v37;
    MaxX = MinX - CGRectGetWidth(v51);
  }

  else
  {
    v52.origin.x = v28;
    v52.origin.y = v23;
    v52.size.width = v25;
    v52.size.height = v27;
    MaxX = CGRectGetMaxX(v52);
  }

  return [*&v0[v13] setFrame_];
}

uint64_t sub_1D16B2E78()
{
  v1 = *&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryImage];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel;
    v3 = *&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel];
    v4 = v1;
    v5 = [v3 superview];
    if (v5)
    {
    }

    else
    {
      [v0 addSubview_];
    }

    v9 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v10 = sub_1D16CC494();
    v11 = [v9 initWithString_];

    v12 = [v0 _shouldReverseLayoutDirection];
    v13 = [objc_opt_self() textAttachmentWithImage_];
    v14 = [objc_opt_self() attributedStringWithAttachment_];

    if (v12)
    {
      [v11 insertAttributedString:v14 atIndex:0];

      [*&v0[v2] setAttributedText_];
      v15 = *&v0[v2];
      [v15 setSemanticContentAttribute_];
    }

    else
    {
      [v11 insertAttributedString:v14 atIndex:{objc_msgSend(v11, sel_length)}];

      [*&v0[v2] setAttributedText_];
    }
  }

  else
  {
    v6 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel;
    v7 = [*&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel] superview];
    if (v7)
    {
      v8 = v7;

      if (v8 == v0)
      {
        [*&v0[v6] removeFromSuperview];
      }
    }

    [*&v0[v6] setAttributedText_];
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D16B38C8;
  *(v18 + 24) = v17;
  v22[4] = sub_1D16B38E4;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D16C3318;
  v22[3] = &block_descriptor;
  v19 = _Block_copy(v22);
  v20 = v0;

  [v16 performWithoutAnimation_];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    [v20 setNeedsLayout];
  }

  return result;
}

id sub_1D16B3220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabelWithAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_1D16B32F8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel) font];

  return v1;
}

void sub_1D16B3338(void *a1)
{
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setFont_];
  v2 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel;
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel] setFont_];
  [*&v1[v2] sizeToFit];
  [v1 setNeedsLayout];
}

id sub_1D16B33D0(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel];
  if (a2)
  {
    v4 = sub_1D16CC494();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];

  return [v2 setNeedsLayout];
}

void sub_1D16B3454(void *a1)
{
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setAttributedText_];
  [v1 setNeedsLayout];
}

id sub_1D16B34B4(uint64_t a1)
{
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setNumberOfLines_];

  return [v1 setNeedsLayout];
}

id sub_1D16B3500(char a1)
{
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setAdjustsFontSizeToFitWidth_];

  return [v1 setNeedsLayout];
}

id sub_1D16B3550()
{
  [*&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setMinimumScaleFactor_];

  return [v0 setNeedsLayout];
}

id sub_1D16B3598()
{
  [*&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] _setHyphenationFactor_];

  return [v0 setNeedsLayout];
}

uint64_t sub_1D16B35E0()
{
  v1 = *v0;
  sub_1D16CC724();
  MEMORY[0x1D388E8D0](v1);
  return sub_1D16CC744();
}

uint64_t sub_1D16B3654(uint64_t a1)
{
  v2 = *v1;
  sub_1D16CC724();
  MEMORY[0x1D388E8D0](v2);
  return sub_1D16CC744();
}

void *sub_1D16B3698@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_1D16B36A8(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryImage] = a1;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v12 = a1;
  v13 = [v11 initWithFrame_];
  v14 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel;
  *&v5[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v5[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel] = v15;
  [*&v5[v14] bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = type metadata accessor for LabelWithAccessoryView();
  v33.receiver = v5;
  v33.super_class = v24;
  v25 = objc_msgSendSuper2(&v33, sel_initWithFrame_, v17, v19, v21, v23);
  v26 = *&v25[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel];
  v27 = v25;
  [v27 addSubview_];
  if (a1)
  {
    sub_1D16B2E78();
  }

  [v27 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6414A0, &qword_1D16D20B0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D16D1ED0;
  v29 = sub_1D16CC354();
  v30 = MEMORY[0x1E69DC2B0];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v32[3] = v24;
  v32[0] = v27;
  MEMORY[0x1D388E720](v28, v32, sel_setNeedsLayout);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v32);
  return v27;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D16B3924(uint64_t a1, int a2)
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

uint64_t sub_1D16B3944(uint64_t result, int a2, int a3)
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

unint64_t sub_1D16B3988()
{
  result = qword_1EC640B10;
  if (!qword_1EC640B10)
  {
    type metadata accessor for MTVisualStyleCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640B10);
  }

  return result;
}

void sub_1D16B3A1C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id CCUIControlTemplateView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___CCUIControlTemplateView_backgroundView] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_customGlyphView] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView_showsMenuAffordance] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_menuAffordancePosition] = 1;
  v9 = &v4[OBJC_IVAR___CCUIControlTemplateView_title];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR___CCUIControlTemplateView_subtitle];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView__isRedacted] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView__isResizing] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView__isExpanded] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_gridSizeClass] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView_suppressesLabelTransitions] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_continuousCornerRadius] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView_supportsAccessibilityContentSizeCategories] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels] = 0;
  v11 = &v4[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  *v11 = 1;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0;
  v12 = &v4[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  *v12 = 1;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_blurPocket] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_blurPocketRemovalAnimationGeneration] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView_isLimitingTitleToSingleLineForAccessibility] = 0;
  v20.receiver = v4;
  v20.super_class = CCUIControlTemplateView;
  v13 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 addTarget:v13 action:sel_primaryActionTriggered forControlEvents:64];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6414A0, &qword_1D16D20B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D16D1ED0;
  v15 = sub_1D16CC354();
  v16 = MEMORY[0x1E69DC2B0];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  MEMORY[0x1D388E710](v14, sel_didUpdatePreferredContentSizeCategory);
  swift_unknownObjectRelease();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D16D1ED0;
  v18 = sub_1D16B3D94();
  *(v17 + 32) = &type metadata for ModuleResizingConfigurationTrait;
  *(v17 + 40) = v18;
  MEMORY[0x1D388E710](v17, sel_didUpdateResizingConfiguration);

  swift_unknownObjectRelease();

  return v13;
}

unint64_t sub_1D16B3D94()
{
  result = qword_1EC640B78;
  if (!qword_1EC640B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640B78);
  }

  return result;
}

id CCUIControlTemplateView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void sub_1D16B403C(void *a1)
{
  v2 = OBJC_IVAR___CCUIControlTemplateView_backgroundView;
  v3 = *&v1[OBJC_IVAR___CCUIControlTemplateView_backgroundView];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    v4 = a1;
    v5 = [v4 superview];
    if (v5)
    {
      v6 = v5;

      if (v6 == v1)
      {
        [v4 removeFromSuperview];
      }
    }

    v3 = *&v1[v2];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else if (!v3)
  {
    return;
  }

  v7 = v3;
  [v1 bounds];
  [v7 setFrame_];
  [v1 continuousCornerRadius];
  [v7 _setContinuousCornerRadius_];
  [v1 insertSubview:v7 atIndex:0];

LABEL_10:
  if (*&v1[OBJC_IVAR___CCUIControlTemplateView_blurPocket])
  {

    sub_1D16B4170(v8, v9);
  }
}

void sub_1D16B4170(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong layer];

  if (!v5)
  {
    return;
  }

  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = *(v2 + 64);
    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      v9 = v6;
      v16 = v7;
      if (v8 && (v10 = sub_1D16BE678(), v8, v10) && (v11 = [v10 layer], v10, v11))
      {
        [v5 insertSublayer:v9 below:v11];
      }

      else
      {
        v13 = swift_unknownObjectWeakLoadStrong();
        if (!v13 || (v14 = v13, v15 = [v13 backgroundView], v14, !v15) || (v11 = objc_msgSend(v15, sel_layer), v15, !v11))
        {
          [v5 insertSublayer:v9 below:0];
          goto LABEL_17;
        }

        [v5 insertSublayer:v9 above:v11];
      }

LABEL_17:
      [v5 insertSublayer:v16 above:0];

      v12 = v16;
      goto LABEL_18;
    }
  }

  v12 = v5;
LABEL_18:
}

void sub_1D16B4360(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id))
{
  v9 = *&a1[*a4];
  *&a1[*a4] = a3;
  v7 = a3;
  v8 = a1;
  a5(v9);
}

id sub_1D16B43E0(id result)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___CCUIControlTemplateView_customGlyphView];
  if (!result)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v3 == result)
  {
    return result;
  }

  if (v3)
  {
LABEL_6:
    v5 = objc_allocWithZone(_s22ButtonGlyphWrapperViewCMa());
    v4 = sub_1D16BF66C(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  [v2 setGlyphView_];

  v6 = [v2 glyphView];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641630, &qword_1D16D2188);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D16D1ED0;
    *(v8 + 56) = swift_getObjectType();
    *(v8 + 32) = v7;
    v9 = v7;
    v10 = sub_1D16CC4E4();

    [v2 setAutomationElements_];
  }

  return [v2 setNeedsLayout];
}

id sub_1D16B45A8()
{
  v1 = v0;
  if ([v0 showsMenuAffordance])
  {
    v2 = [v0 menuAffordancePosition] == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v4 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v4 >= 2)
  {
    v5 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 184);
    v8 = v4;
    v9 = v7(ObjectType, v5);
    if (v9)
    {

      if (v2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else if (!v2)
    {
      goto LABEL_8;
    }

    sub_1D16BD44C(&OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels);
    goto LABEL_8;
  }

LABEL_9:
  v10 = &v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v11 = *&v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v11 < 2)
  {
    goto LABEL_14;
  }

  v12 = *(v10 + 1);
  v13 = swift_getObjectType();
  v14 = *(v12 + 184);
  v15 = v11;
  v16 = v14(v13, v12);
  if (!v16)
  {
    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
LABEL_12:
    sub_1D16BD44C(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
  }

LABEL_13:

LABEL_14:
  sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
  v17 = *v3;
  if (*v3 != 1)
  {
    v18 = *(v3 + 1);
    v19 = *(v3 + 2);
    v20 = *(v3 + 3);
    sub_1D16C2014(*v3, v18, v19);
    v21 = v19;
    if (v19)
    {
      v22 = v21;
      v23 = [v1 subtitle];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1D16CC4A4();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = swift_getObjectType();
      sub_1D16B55B0(v25, v27);
      v30 = v29;

      (*(v20 + 64))(v30, v28, v20);
    }

    sub_1D168E910(v17, v18, v19);
  }

  v31 = *v10;
  if (*v10 != 1)
  {
    v32 = *(v10 + 1);
    v33 = *(v10 + 2);
    v34 = *(v10 + 3);
    sub_1D16C2014(*v10, v32, v33);
    v35 = v33;
    if (v33)
    {
      v36 = v35;
      v37 = [v1 subtitle];
      if (v37)
      {
        v38 = v37;
        v39 = sub_1D16CC4A4();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v42 = swift_getObjectType();
      sub_1D16B55B0(v39, v41);
      v44 = v43;

      (*(v34 + 64))(v44, v42, v34);
    }

    sub_1D168E910(v31, v32, v33);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1D16B49A8(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR___CCUIControlTemplateView_title + 8];
  if (a2)
  {
    if (v4)
    {
      if (*&v2[OBJC_IVAR___CCUIControlTemplateView_title] == result && v4 == a2)
      {
        return result;
      }

      result = sub_1D16CC6F4();
      if (result)
      {
        return result;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
  v6 = &v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v7 = *&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v7 != 1)
  {
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    sub_1D16C2014(*&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v8, v9);
    v10 = v7;
    if (v7)
    {
      v11 = v10;
      v12 = [v3 title];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1D16CC4A4();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      ObjectType = swift_getObjectType();
      (*(v8 + 40))(v14, v16, ObjectType, v8);
    }

    sub_1D168E910(v7, v8, v9);
  }

  v18 = &v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v19 = *&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v19 != 1)
  {
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    sub_1D16C2014(*&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v20, v21);
    v22 = v19;
    if (v19)
    {
      v23 = v22;
      v24 = [v3 title];
      if (v24)
      {
        v25 = v24;
        v41 = v21;
        v26 = sub_1D16CC4A4();
        v28 = v27;

        v29 = v26;
        v21 = v41;
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      v30 = swift_getObjectType();
      (*(v20 + 40))(v29, v28, v30, v20);
    }

    sub_1D168E910(v19, v20, v21);
  }

  if ([v3 isResizing] && (objc_msgSend(v3, sel_suppressesLabelTransitions) & 1) == 0)
  {
    v31 = *v6;
    if (*v6 != 1)
    {
      v32 = *(v6 + 1);
      v33 = *(v6 + 2);
      sub_1D16C2014(*v6, v32, v33);
      v34 = v31;
      if (v31)
      {
        v35 = v34;
        sub_1D16BE8C8(1, v34);
      }

      sub_1D168E910(v31, v32, v33);
    }

    v36 = *v18;
    if (*v18 != 1)
    {
      v37 = *(v18 + 1);
      v38 = *(v18 + 2);
      sub_1D16C2014(*v18, v37, v38);
      v39 = v36;
      if (v36)
      {
        v40 = v39;
        sub_1D16BE8C8(0, v39);
      }

      sub_1D168E910(v36, v37, v38);
    }
  }

  [v3 setIsLimitingTitleToSingleLineForAccessibility_];

  return [v3 setNeedsLayout];
}

uint64_t sub_1D16B4D50(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = sub_1D16CC4A4();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v8;
  v10[1] = v9;
  v13 = a1;
  a5(v11, v12);
}

uint64_t sub_1D16B4DD8(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR___CCUIControlTemplateView_subtitle + 8];
  if (a2)
  {
    if (v4)
    {
      if (*&v2[OBJC_IVAR___CCUIControlTemplateView_subtitle] == result && v4 == a2)
      {
        return result;
      }

      result = sub_1D16CC6F4();
      if (result)
      {
        return result;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  sub_1D16B5288(&selRef_subtitle, sub_1D16BD740, sub_1D16BD698);
  v6 = &v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v7 = *&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v7 != 1)
  {
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    sub_1D16C2014(*&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v8, v9);
    v11 = v9;
    if (v9)
    {
      v12 = v11;
      v13 = [v2 subtitle];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1D16CC4A4();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      ObjectType = swift_getObjectType();
      sub_1D16B55B0(v15, v17);
      v20 = v19;

      (*(v10 + 64))(v20, ObjectType, v10);
    }

    sub_1D168E910(v7, v8, v9);
  }

  v21 = &v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v22 = *&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v22 != 1)
  {
    v23 = *(v21 + 1);
    v24 = *(v21 + 2);
    v25 = *(v21 + 3);
    sub_1D16C2014(*&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v23, v24);
    v26 = v24;
    if (v24)
    {
      v27 = v26;
      v59 = v23;
      v28 = [v3 subtitle];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1D16CC4A4();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = swift_getObjectType();
      sub_1D16B55B0(v30, v32);
      v35 = v34;

      (*(v25 + 64))(v35, v33, v25);

      v23 = v59;
    }

    sub_1D168E910(v22, v23, v24);
  }

  if ([v3 isResizing] && (objc_msgSend(v3, sel_suppressesLabelTransitions) & 1) == 0)
  {
    v36 = *v6;
    if (*v6 != 1)
    {
      v37 = *(v6 + 1);
      v38 = *(v6 + 2);
      sub_1D16C2014(*v6, v37, v38);
      v39 = v38;
      if (v38)
      {
        v40 = v39;
        sub_1D16BE8C8(1, v39);
      }

      sub_1D168E910(v36, v37, v38);
    }

    v41 = *v21;
    if (*v21 != 1)
    {
      v42 = *(v21 + 1);
      v43 = *(v21 + 2);
      sub_1D16C2014(*v21, v42, v43);
      v44 = v43;
      if (v43)
      {
        v45 = v44;
        sub_1D16BE8C8(0, v44);
      }

      sub_1D168E910(v41, v42, v43);
    }
  }

  [v3 setIsLimitingTitleToSingleLineForAccessibility_];
  v46 = sub_1D16BE21C();
  v47 = *v6;
  if (*v6 != 1)
  {
    v48 = *(v6 + 1);
    v49 = *(v6 + 2);
    sub_1D16C2014(v47, v48, v49);
    v50 = v47;
    if (v47)
    {
      v51 = v50;
      v52 = swift_getObjectType();
      (*(v48 + 88))(v46, v52, v48);
    }

    sub_1D168E910(v47, v48, v49);
  }

  v53 = *v21;
  if (*v21 != 1)
  {
    v54 = *(v21 + 1);
    v55 = *(v21 + 2);
    sub_1D16C2014(*v21, v54, v55);
    v56 = v53;
    if (v53)
    {
      v57 = v56;
      v58 = swift_getObjectType();
      (*(v54 + 88))(v46, v58, v54);
    }

    sub_1D168E910(v53, v54, v55);
  }

  [v3 setNeedsLayout];

  return [v3 setNeedsLayout];
}

uint64_t sub_1D16B5288(SEL *a1, void (*a2)(uint64_t *, uint64_t), uint64_t (*a3)(uint64_t *))
{
  v7 = v3;
  v8 = sub_1D16CC1F4();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v3 *a1];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = sub_1D16CC4A4();
  v17 = v16;

  v31[0] = v15;
  v31[1] = v17;
  sub_1D16CC1E4();
  sub_1D16C2810();
  v18 = sub_1D16CC5C4();
  v20 = v19;
  (*(v9 + 8))(v12, v8);

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
LABEL_7:
    a3(&OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels);
    return a3(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
  }

  if ([v7 isResizing])
  {
    goto LABEL_6;
  }

  v23 = [v7 gridSizeClass];
  v24 = CCUINumberOfRowsForGridSizeClass(v23);
  v25 = CCUINumberOfColumnsForGridSizeClass(v23);
  if (v24 >= 2)
  {
    v26 = v25;
    if (([v7 supportsAccessibilityContentSizeCategories] & 1) == 0)
    {
      goto LABEL_15;
    }

    v27 = [v7 traitCollection];
    v28 = [v27 preferredContentSizeCategory];

    LOBYTE(v27) = sub_1D16CC544();
    if ((v27 & 1) == 0 || v26 < 2)
    {
      goto LABEL_15;
    }
  }

  else if (v25 <= 1)
  {
LABEL_15:
    a3(&OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels);
    goto LABEL_16;
  }

LABEL_6:
  a2(&OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels, 1);
LABEL_16:
  if (([v7 isResizing] & 1) == 0)
  {
    if ([v7 supportsAccessibilityContentSizeCategories])
    {
      v29 = [v7 traitCollection];
      v30 = [v29 preferredContentSizeCategory];

      LOBYTE(v29) = sub_1D16CC544();
      if (v29)
      {
        return a3(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
      }
    }

    if (CCUINumberOfRowsForGridSizeClass([v7 gridSizeClass]) < 2)
    {
      return a3(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
    }
  }

  return (a2)(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels, 0);
}

void sub_1D16B55B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v4 = sub_1D16CC494();
    v5 = [v3 initWithString_];

    if ([v2 showsMenuAffordance])
    {
      if ([v2 menuAffordancePosition] == 1)
      {
        v6 = [objc_opt_self() configurationWithScale_];
        v7 = sub_1D16CC494();
        v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

        if (v8)
        {

          v9 = [objc_opt_self() textAttachmentWithImage_];
          v10 = [objc_opt_self() attributedStringWithAttachment_];

          v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v12 = sub_1D16CC494();
          v13 = [v11 initWithString_];

          [v5 appendAttributedString_];
          [v5 appendAttributedString_];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_1D16B58C4(id result)
{
  v2 = v1[OBJC_IVAR___CCUIControlTemplateView__isResizing];
  v1[OBJC_IVAR___CCUIControlTemplateView__isResizing] = result;
  if (v2 != (result & 1))
  {
    v3 = sub_1D16BC804();
    v4 = [v3 count];

    v5 = [v1 isResizing];
    if (v4 > 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    [v1 setClipsToBounds_];
    sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
    sub_1D16B5288(&selRef_subtitle, sub_1D16BD740, sub_1D16BD698);
    if ([v1 isResizing])
    {
      _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
    }

    sub_1D16B5A08();
    [v1 setIsLimitingTitleToSingleLineForAccessibility_];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1D16B5A08()
{
  v1 = v0;
  if ([v0 isResizing] && objc_msgSend(v0, sel_gridSizeClass) && ((v2 = objc_msgSend(v0, sel_traitCollection), sub_1D16B3D94(), sub_1D16CC534(), v2, v26 == 2) || (v26 & 1) == 0))
  {
    v13 = OBJC_IVAR___CCUIControlTemplateView_blurPocket;
    if (!*&v1[OBJC_IVAR___CCUIControlTemplateView_blurPocket])
    {
      v14 = [v1 traitCollection];
      sub_1D16CC534();

      if (v26 == 2)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = *&v24;
      }

      _s10BlurPocketCMa();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v16 + 56) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      sub_1D16BEC60(v1);
      *&v1[v13] = v16;
    }

    v17 = [v1 traitCollection];
    sub_1D16CC534();

    if (v26 == 2)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v25;
    }

    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    v27 = sub_1D16C28B0;
    v28 = v20;
    v23 = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = COERCE_DOUBLE(sub_1D16B76AC);
    v26 = &block_descriptor_64;
    v21 = _Block_copy(&v23);
    v22 = v1;

    [v19 animateWithDuration:v21 animations:v18];
    _Block_release(v21);
  }

  else
  {
    v3 = *&v1[OBJC_IVAR___CCUIControlTemplateView_blurPocket];
    if (v3)
    {

      v4 = [v1 blurPocketRemovalAnimationGeneration];
      v5 = v4 + 1;
      if (v4 == -1)
      {
        __break(1u);
      }

      else
      {
        [v1 setBlurPocketRemovalAnimationGeneration_];
        v6 = [v1 traitCollection];
        sub_1D16B3D94();
        sub_1D16CC534();

        if (v26 == 2)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v25;
        }

        v8 = objc_opt_self();
        v27 = sub_1D16C2864;
        v28 = v3;
        v23 = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = COERCE_DOUBLE(sub_1D16B76AC);
        v26 = &block_descriptor_0;
        v9 = _Block_copy(&v23);

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v5;
        v27 = sub_1D16C28A8;
        v28 = v11;
        v23 = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = COERCE_DOUBLE(sub_1D16C2E3C);
        v26 = &block_descriptor_58;
        v12 = _Block_copy(&v23);

        [v8 animateWithDuration:v9 animations:v12 completion:v7];
        _Block_release(v12);
        _Block_release(v9);
      }
    }
  }
}

uint64_t sub_1D16B5F78(uint64_t result)
{
  v2 = OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu;
  v3 = v1[OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu];
  v1[OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu] = result;
  if (v3 != (result & 1))
  {
    result = [v1 contextMenuDelegate];
    if (result)
    {
      v4 = result;
      if (v1[v2])
      {
        v5 = &selRef_didBeginContextMenuPresentationForControlTemplateView_;
      }

      else
      {
        v5 = &selRef_didEndContextMenuPresentationForControlTemplateView_;
      }

      if ([result respondsToSelector_])
      {
        [v4 *v5];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1D16B60A4(id result)
{
  v2 = *&v1[OBJC_IVAR___CCUIControlTemplateView_gridSizeClass];
  *&v1[OBJC_IVAR___CCUIControlTemplateView_gridSizeClass] = result;
  if (v2 != result)
  {
    sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
    sub_1D16B5288(&selRef_subtitle, sub_1D16BD740, sub_1D16BD698);
    if ([v1 isResizing])
    {
      _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
    }

    sub_1D16B5A08();
    [v1 setIsLimitingTitleToSingleLineForAccessibility_];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1D16B6268()
{
  v1 = [v0 layer];
  [v0 continuousCornerRadius];
  [v1 setCornerRadius_];

  [v0 continuousCornerRadius];
  [v0 _setContinuousCornerRadius_];
  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 continuousCornerRadius];
    [v3 _setContinuousCornerRadius_];
  }
}

id sub_1D16B63B4(id result)
{
  v2 = v1[OBJC_IVAR___CCUIControlTemplateView_supportsAccessibilityContentSizeCategories];
  v1[OBJC_IVAR___CCUIControlTemplateView_supportsAccessibilityContentSizeCategories] = result;
  if (v2 != (result & 1))
  {
    [v1 setIsLimitingTitleToSingleLineForAccessibility_];
    v3 = &v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v4 = *&v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v4 != 1)
    {
      v5 = *(v3 + 1);
      v6 = *(v3 + 2);
      sub_1D16C2014(*&v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v5, v6);
      v7 = v4;
      if (v4)
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        v10 = sub_1D16BE38C(1, 1);
        (*(v5 + 16))(v10, ObjectType, v5);
        sub_1D16BE568(v8, v5);
      }

      sub_1D168E910(v4, v5, v6);
    }

    v11 = &v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    v12 = *&v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    if (v12 != 1)
    {
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      sub_1D16C2014(*&v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v13, v14);
      v15 = v12;
      if (v12)
      {
        v16 = v15;
        v17 = swift_getObjectType();
        v18 = sub_1D16BE38C(1, 0);
        (*(v13 + 16))(v18, v17, v13);
        sub_1D16BE568(v16, v13);
      }

      sub_1D168E910(v12, v13, v14);
    }

    v19 = *v3;
    if (*v3 != 1)
    {
      v20 = *(v3 + 1);
      v21 = *(v3 + 2);
      v22 = *(v3 + 3);
      sub_1D16C2014(*v3, v20, v21);
      v23 = v21;
      if (v21)
      {
        v24 = v23;
        v25 = swift_getObjectType();
        v26 = sub_1D16BE38C(0, 1);
        (*(v22 + 16))(v26, v25, v22);
        sub_1D16BE568(v24, v22);
      }

      sub_1D168E910(v19, v20, v21);
    }

    v27 = *v11;
    if (*v11 != 1)
    {
      v28 = *(v11 + 1);
      v29 = *(v11 + 2);
      v30 = *(v11 + 3);
      sub_1D16C2014(*v11, v28, v29);
      v31 = v29;
      if (v29)
      {
        v32 = v31;
        v33 = swift_getObjectType();
        v34 = sub_1D16BE38C(0, 0);
        (*(v30 + 16))(v34, v33, v30);
        sub_1D16BE568(v32, v30);
      }

      sub_1D168E910(v27, v28, v29);
    }

    [v1 setNeedsLayout];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1D16B66D0(void *a1, char a2)
{
  v3 = v2;
  v5 = [v3 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D16CC4A4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D16CC4A4();
    v14 = v13;

    if (v9)
    {
      if (v14)
      {
        if (v7 == v12 && v9 == v14)
        {

          v16 = 1;
        }

        else
        {
          v16 = sub_1D16CC6F4();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v16 = 1;
    goto LABEL_19;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_13:
  v16 = 0;
LABEL_18:

LABEL_19:
  v17 = [v3 subtitle];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D16CC4A4();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 subtitle];
  if (!v22)
  {
    if (v21)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v23 = v22;
  v24 = sub_1D16CC4A4();
  v26 = v25;

  if (!v21)
  {
    if (v26)
    {
      goto LABEL_31;
    }

LABEL_32:
    v27 = 0;
    goto LABEL_34;
  }

  if (v26)
  {
    if (v19 != v24 || v21 != v26)
    {
      v28 = sub_1D16CC6F4();

      v27 = v28 ^ 1;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_31:

  v27 = 1;
LABEL_34:
  v29 = [v3 isEnabled];
  v30 = [a1 isEnabled];
  v31 = [v3 isRedacted];
  v32 = [a1 isRedacted];
  v33 = [v3 isSelected];
  v34 = [a1 isSelected];
  if (((v16 ^ 1 | v27) & 1) == 0 && ((v29 ^ v30) & 1) == 0 && ((v31 ^ v32) & 1) == 0 && ((v33 ^ v34) & 1) == 0)
  {
    return;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v3;
  *(v35 + 24) = a1;
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v41 = v3;
    goto LABEL_45;
  }

  v36 = objc_opt_self();
  swift_unknownObjectRetain();
  v37 = v3;
  if (([v36 areAnimationsEnabled] & 1) == 0)
  {
LABEL_45:
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    v43[2] = v3;
    v43[3] = a1;
    v43[4] = sub_1D16C29DC;
    v43[5] = v35;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1D16C29E4;
    *(v44 + 24) = v43;
    v173 = sub_1D16C2DA8;
    v174 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v170 = 1107296256;
    v171 = sub_1D16C3318;
    v172 = &block_descriptor_131;
    v45 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v46 = v3;

    [v42 performWithoutAnimation_];

    _Block_release(v45);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_97;
  }

  if ((v16 ^ 1 | v27))
  {
    v38 = [v37 gridSizeClass];
    v39 = CCUINumberOfRowsForGridSizeClass(v38);
    v40 = CCUINumberOfColumnsForGridSizeClass(v38);
    if (v39 >= 2)
    {
      v48 = v40;
      if (([v37 supportsAccessibilityContentSizeCategories] & 1) == 0 || (v49 = objc_msgSend(v37, sel_traitCollection), v50 = objc_msgSend(v49, sel_preferredContentSizeCategory), v49, LOBYTE(v49) = sub_1D16CC544(), v50, (v49 & 1) == 0) || v48 < 2)
      {
LABEL_56:
        v58 = &v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
        v53 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
        v59 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 8];
        v60 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 16];
        v166 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 24];
        v168 = v60;
        v162 = v59;
        if (v16)
        {
          v55 = &selRef_ccui_systemImageName;
          if (v53 == 1)
          {
            v61 = 0;
            v62 = 0;
            goto LABEL_63;
          }

          v61 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 8];
          sub_1D16C2014(v53, v59, v60);
          v63 = v53;
          v62 = v53;
        }

        else
        {
          sub_1D16C2014(v53, v59, v60);
          v62 = 0;
          v61 = 0;
          v55 = &selRef_ccui_systemImageName;
        }

        if (!(v27 & 1 | (v53 == 1)))
        {
          v66 = v168;
          v64 = v168;
          v65 = v166;
          goto LABEL_65;
        }

LABEL_63:
        v64 = 0;
        v65 = 0;
LABEL_65:
        v67 = *v58;
        v68 = *(v58 + 1);
        v69 = *(v58 + 2);
        *v58 = v62;
        *(v58 + 1) = v61;
        *(v58 + 2) = v64;
        *(v58 + 3) = v65;
        sub_1D168E910(v67, v68, v69);
        v70 = &OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels;
        goto LABEL_71;
      }
    }

    else if (v40 <= 1)
    {
      goto LABEL_56;
    }

    v51 = &v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v53 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v52 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 8];
    v54 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 16];
    v166 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 24];
    v168 = v54;
    v162 = v52;
    if (v16)
    {
      v55 = &selRef_ccui_systemImageName;
      if (v53 == 1)
      {
        v56 = 0;
        v57 = 0;
        goto LABEL_68;
      }

      v56 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 8];
      sub_1D16C2014(v53, v52, v54);
      v71 = v53;
      v57 = v53;
    }

    else
    {
      sub_1D16C2014(v53, v52, v54);
      v57 = 0;
      v56 = 0;
      v55 = &selRef_ccui_systemImageName;
    }

    if (!(v27 & 1 | (v53 == 1)))
    {
      v74 = v168;
      v72 = v168;
      v73 = v166;
      goto LABEL_70;
    }

LABEL_68:
    v72 = 0;
    v73 = 0;
LABEL_70:
    v75 = *v51;
    v76 = *(v51 + 1);
    v77 = *(v51 + 2);
    *v51 = v57;
    *(v51 + 1) = v56;
    *(v51 + 2) = v72;
    *(v51 + 3) = v73;
    sub_1D168E910(v75, v76, v77);
    v70 = &OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels;
LABEL_71:
    [v37 setEnabled_];
    [v37 setRedacted_];
    [v37 setSelected_];
    v78 = [a1 title];
    [v37 setTitle_];

    v79 = [a1 subtitle];
    [v37 setSubtitle_];

    v80 = &v37[*v70];
    v82 = *(v80 + 2);
    v81 = *(v80 + 3);
    v83 = *v80;
    v84 = *(v80 + 1);
    sub_1D16C2014(*v80, v84, v82);
    if (v53 != 1)
    {
      v85 = v53;
      if (v53)
      {
        goto LABEL_80;
      }

      if (v168)
      {
        goto LABEL_81;
      }
    }

    if (v83 == 1)
    {
LABEL_73:

      sub_1D168E910(v53, v162, v168);

      sub_1D168E910(v83, v84, v82);
      return;
    }

    v85 = v83;
    if (!v83)
    {
      if (!v82)
      {
        goto LABEL_73;
      }

LABEL_81:
      v158 = v37;
      v161 = sub_1D16BC2AC(v53, v162, v168, v166, v83, v84, v82);
      v86 = v53;
      v88 = v87;
      v90 = v89;
      v91 = v84;
      v93 = v92;
      v163 = v91;
      v164 = v83;
      v165 = v82;
      v157 = v81;
      v94 = sub_1D16BC2AC(v83, v91, v82, v81, v86, v162, v168);
      v96 = v95;
      v98 = v97;
      v100 = v99;
      v101 = swift_allocObject();
      v101[2] = v161;
      v101[3] = v88;
      v148 = v93;
      v149 = v88;
      v102 = v86;
      v101[4] = v90;
      v101[5] = v93;
      v156 = v101;
      v103 = swift_allocObject();
      v103[2] = v94;
      v103[3] = v96;
      v103[4] = v98;
      v103[5] = v100;
      v154 = v90;
      v155 = v94;
      v151 = v98;
      v152 = v102;
      if (v102 == 1)
      {
        v104 = v163;
        v105 = v98;
        v106 = v161;
        v107 = v90;
        v108 = v94;
        v109 = 0;
        v110 = 1;
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 1;
        v118 = 0;
        v119 = v164;
        v120 = v158;
      }

      else
      {
        v104 = v163;
        v117 = v102 == 0;
        v121 = v98;
        v122 = v161;
        v123 = v154;
        v124 = v94;
        if (v102)
        {
          [v102 frame];
          v114 = v125;
          v115 = v126;
          v116 = v127;
          v118 = v128;
        }

        else
        {
          v114 = 0;
          v115 = 0;
          v116 = 0;
          v118 = 0;
        }

        v119 = v164;
        v120 = v158;
        if (v168)
        {
          [v168 frame];
          v109 = v129;
          v111 = v130;
          v112 = v131;
          v113 = v132;
          v110 = 0;
        }

        else
        {
          v110 = 1;
          v109 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
        }
      }

      v147 = v117;
      v133 = swift_allocObject();
      *(v133 + 16) = v120;
      *(v133 + 24) = v114;
      *(v133 + 32) = v115;
      *(v133 + 40) = v116;
      *(v133 + 48) = v118;
      *(v133 + 56) = v117;
      *(v133 + 64) = v109;
      *(v133 + 72) = v111;
      *(v133 + 80) = v112;
      *(v133 + 88) = v113;
      *(v133 + 96) = v110;
      *(v133 + 104) = v119;
      *(v133 + 112) = v104;
      *(v133 + 120) = v165;
      *(v133 + 128) = v157;
      *(v133 + 136) = 0x3F847AE147AE147BLL;
      *(v133 + 144) = sub_1D16C29F0;
      *(v133 + 152) = v156;
      *(v133 + 160) = sub_1D16C2D94;
      *(v133 + 168) = v103;
      v134 = swift_allocObject();
      *(v134 + 16) = sub_1D16C2A10;
      *(v134 + 24) = v133;
      v173 = sub_1D16C2DA8;
      v174 = v134;
      aBlock = MEMORY[0x1E69E9820];
      v170 = 1107296256;
      v171 = sub_1D16C3318;
      v172 = &block_descriptor_147;
      v135 = _Block_copy(&aBlock);
      v159 = v158;
      sub_1D16C2014(v119, v104, v165);

      [v36 performWithoutAnimation_];
      _Block_release(v135);
      LOBYTE(v135) = swift_isEscapingClosureAtFileLocation();

      if ((v135 & 1) == 0)
      {
        v136 = sub_1D16BC804();
        v137 = [v136 count];

        v138 = [v159 isResizing];
        if (v137 > 0)
        {
          v139 = 1;
        }

        else
        {
          v139 = v138;
        }

        [v159 setClipsToBounds_];
        v153 = [objc_allocWithZone(MEMORY[0x1E69D3FC8]) init];
        [v153 setBehaviorType_];
        [v153 setDampingRatio_];
        [v153 setResponse_];
        v140 = swift_allocObject();
        *(v140 + 16) = v159;
        *(v140 + 24) = sub_1D16C29F0;
        v146 = v103;
        *(v140 + 32) = v156;
        *(v140 + 40) = sub_1D16C2D94;
        *(v140 + 48) = v103;
        *(v140 + 56) = v114;
        *(v140 + 64) = v115;
        *(v140 + 72) = v116;
        *(v140 + 80) = v118;
        *(v140 + 88) = v147;
        *(v140 + 96) = v109;
        *(v140 + 104) = v111;
        *(v140 + 112) = v112;
        *(v140 + 120) = v113;
        *(v140 + 128) = v110;
        *(v140 + 136) = 0x3F847AE147AE147BLL;
        *(v140 + 144) = v161;
        *(v140 + 152) = v149;
        *(v140 + 160) = v154;
        *(v140 + 168) = v148;
        *(v140 + 176) = v164;
        *(v140 + 184) = v163;
        *(v140 + 192) = v165;
        *(v140 + 200) = v157;
        v173 = sub_1D16C2A78;
        v174 = v140;
        aBlock = MEMORY[0x1E69E9820];
        v170 = 1107296256;
        v171 = sub_1D16B76AC;
        v172 = &block_descriptor_153;
        v150 = _Block_copy(&aBlock);
        v141 = v159;
        sub_1D16C2014(v164, v163, v165);
        v160 = v154;

        v142 = v161;

        v143 = swift_allocObject();
        v143[2] = sub_1D16C29F0;
        v143[3] = v156;
        v143[4] = v141;
        v143[5] = sub_1D16C2D94;
        v143[6] = v146;
        v173 = sub_1D16C2AE8;
        v174 = v143;
        aBlock = MEMORY[0x1E69E9820];
        v170 = 1107296256;
        v171 = sub_1D16BCFC0;
        v172 = &block_descriptor_159;
        v144 = _Block_copy(&aBlock);
        v145 = v141;

        [v36 sb:v153 animateWithSettings:3 mode:v150 animations:v144 completion:?];

        sub_1D168E910(v164, v163, v165);

        _Block_release(v144);
        _Block_release(v150);

        sub_1D168E910(v152, v162, v168);

        return;
      }

LABEL_97:
      __break(1u);
      return;
    }

LABEL_80:

    goto LABEL_81;
  }

  [v37 setEnabled_];
  [v37 setRedacted_];
  [v37 setSelected_];
}

uint64_t sub_1D16B76AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D16B7770()
{
  v1 = [v0 contextMenuDelegate];
  if (v1)
  {
    v8 = [v1 contextMenu];
    swift_unknownObjectRelease();
    if (v8)
    {
      v2 = [v0 contextMenuInteraction];
      if (v2)
      {
        v3 = v2;
        v4 = swift_allocObject();
        *(v4 + 16) = v8;
        v5 = swift_allocObject();
        *(v5 + 16) = sub_1D16C2934;
        *(v5 + 24) = v4;
        aBlock[4] = sub_1D16C293C;
        aBlock[5] = v5;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D16B7968;
        aBlock[3] = &block_descriptor_112;
        v6 = _Block_copy(aBlock);
        v7 = v8;

        [v3 updateVisibleMenuWithBlock_];

        _Block_release(v6);
        LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

        if (v3)
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

id sub_1D16B7968(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

id CCUIControlTemplateView.contentMetrics.getter()
{
  v2.super_class = CCUIControlTemplateView;
  v0 = objc_msgSendSuper2(&v2, sel_contentMetrics);

  return v0;
}

void CCUIControlTemplateView.contentMetrics.setter(void *a1)
{
  v5.super_class = CCUIControlTemplateView;
  v3 = objc_msgSendSuper2(&v5, sel_contentMetrics);
  v4.receiver = v1;
  v4.super_class = CCUIControlTemplateView;
  objc_msgSendSuper2(&v4, sel_setContentMetrics_, a1);
  sub_1D16B7BCC(v3);
}

void sub_1D16B7BCC(void *a1)
{
  v2 = v1;
  v4 = [v2 contentMetrics];
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      type metadata accessor for CCUIModuleContentMetrics();
      v6 = a1;
      v7 = sub_1D16CC5A4();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }
  }

  v8 = &v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v9 = *&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v9 != 1)
  {
    v10 = *(v8 + 1);
    v11 = *(v8 + 2);
    sub_1D16C2014(*&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v10, v11);
    v12 = v9;
    if (v9)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = sub_1D16BE38C(1, 1);
      (*(v10 + 16))(v15, ObjectType, v10);
      sub_1D16BE568(v13, v10);
    }

    sub_1D168E910(v9, v10, v11);
  }

  v16 = &v2[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v17 = *&v2[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v17 != 1)
  {
    v18 = *(v16 + 1);
    v19 = *(v16 + 2);
    sub_1D16C2014(*&v2[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v18, v19);
    v20 = v17;
    if (v17)
    {
      v21 = v20;
      v22 = swift_getObjectType();
      v23 = sub_1D16BE38C(1, 0);
      (*(v18 + 16))(v23, v22, v18);
      sub_1D16BE568(v21, v18);
    }

    sub_1D168E910(v17, v18, v19);
  }

  v24 = *v8;
  if (*v8 != 1)
  {
    v25 = *(v8 + 1);
    v26 = *(v8 + 2);
    v27 = *(v8 + 3);
    sub_1D16C2014(*v8, v25, v26);
    v28 = v26;
    if (v26)
    {
      v29 = v28;
      v30 = swift_getObjectType();
      v31 = sub_1D16BE38C(0, 1);
      (*(v27 + 16))(v31, v30, v27);
      sub_1D16BE568(v29, v27);
    }

    sub_1D168E910(v24, v25, v26);
  }

  v32 = *v16;
  if (*v16 != 1)
  {
    v33 = *(v16 + 1);
    v34 = *(v16 + 2);
    v35 = *(v16 + 3);
    sub_1D16C2014(*v16, v33, v34);
    v36 = v34;
    if (v34)
    {
      v37 = v36;
      v38 = swift_getObjectType();
      v39 = sub_1D16BE38C(0, 0);
      (*(v35 + 16))(v39, v38, v35);
      sub_1D16BE568(v37, v35);
    }

    sub_1D168E910(v32, v33, v34);
  }

  [v2 setNeedsLayout];

  [v2 setNeedsLayout];
}

__C::CGRect __swiftcall CCUIControlTemplateView.glyphContentFrame()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 _shouldReverseLayoutDirection];
  v10 = [v0 contentMetrics];
  if (v10)
  {
    v11 = v10;
    [v10 metricsScaleFactor];
    v12 = [v0 traitCollection];
    [v12 displayScale];

    UIRoundToScale();
    v14 = v13;
  }

  else
  {
    v14 = 14.0;
  }

  v15 = [v0 contentMetrics];
  if (v15)
  {
    v17 = v15;
    [v15 gridGeometryInfo];
    v19 = v18;
  }

  else
  {
    v19 = CCUIPortraitMainListGridGeometryInfo(0, v16);
  }

  v132.origin.x = v2;
  v132.origin.y = v4;
  v132.size.width = v6;
  v132.size.height = v8;
  Height = CGRectGetHeight(v132);
  if (v19 >= Height)
  {
    v19 = Height;
  }

  v21 = 0.0;
  if (v9)
  {
    v133.origin.x = v2;
    v133.origin.y = v4;
    v133.size.width = v6;
    v133.size.height = v8;
    v21 = CGRectGetMaxX(v133) - v19;
  }

  v22 = 0;
  v23 = v19;
  v24 = v19;
  v134 = CGRectInset(*&v21, v14, v14);
  x = v134.origin.x;
  v26 = v4;
  y = v134.origin.y;
  width = v134.size.width;
  v29 = v134.size.height;
  v134.origin.x = v2;
  rect = v26;
  v134.origin.y = v26;
  v134.size.width = v6;
  v134.size.height = v8;
  v160 = CGRectInset(v134, v14, v14);
  v135.origin.x = x;
  v135.origin.y = y;
  v135.size.width = width;
  v135.size.height = v29;
  v136 = CGRectIntersection(v135, v160);
  v30 = v136.origin.x;
  v31 = v136.origin.y;
  v32 = v136.size.width;
  v33 = v136.size.height;
  if (v9)
  {
    MaxX = CGRectGetMaxX(v136);
    v137.origin.x = v30;
    v137.origin.y = v31;
    v137.size.width = v32;
    v137.size.height = v33;
    v30 = MaxX - CGRectGetWidth(v137);
  }

  v35 = [v0 traitCollection];
  [v35 displayScale];
  v37 = v36;

  if ([v0 isExpanded])
  {
    v112 = v37;
    if (CCUINumberOfColumnsForGridSizeClass([v0 gridSizeClass]) > 1)
    {
      UIRectCenteredYInRectScale();
    }

    else
    {
      UIRectCenteredIntegralRectScale();
    }

    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
  }

  if (![v0 supportsAccessibilityContentSizeCategories])
  {
    goto LABEL_49;
  }

  v42 = [v0 traitCollection];
  v43 = [v42 preferredContentSizeCategory];

  LOBYTE(v42) = sub_1D16CC544();
  if ((v42 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (CCUINumberOfRowsForGridSizeClass([v0 gridSizeClass]) < 2)
  {
    goto LABEL_49;
  }

  if ([v0 isResizing])
  {
    goto LABEL_49;
  }

  if ([v0 isExpanded])
  {
    goto LABEL_49;
  }

  v44 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v45 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v45 < 2)
  {
    goto LABEL_49;
  }

  v46 = *(v44 + 1);
  v127 = *(v44 + 2);
  sub_1D16C2014(*&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v46, v127);
  v117 = v45;
  v47 = [v0 _shouldReverseLayoutDirection];
  v48 = [v0 traitCollection];
  [v48 displayScale];
  v120 = v49;

  sub_1D16BD040();
  CCUIEdgeInsetsFromDirectionalEdgeInsets();
  v123 = v51;
  v125 = v52;
  v121 = v50;
  if (v47)
  {
    if ([v0 isResizing])
    {
      v53 = [v0 contentMetrics];
      if (v53)
      {
        v54 = v53;
        [v53 metricsScaleFactor];
        v55 = [v0 traitCollection];
        [v55 displayScale];

        UIRoundToScale();
        v57 = v56;

        v58 = v57 + v57;
      }

      else
      {
        v58 = 28.0;
      }

      v61 = v127;
      v141.origin.x = v2;
      v141.origin.y = rect;
      v141.size.width = v6;
      v141.size.height = v8;
      v114 = CGRectGetMaxX(v141) - v32 - v58 - v125;
      v60 = v2;
    }

    else
    {
      v140.origin.x = v30;
      v140.origin.y = v31;
      v140.size.width = v32;
      v140.size.height = v33;
      v114 = CGRectGetMinX(v140) - v125;
      v60 = v2;
      v61 = v127;
    }
  }

  else
  {
    v138.origin.x = v30;
    v59 = v50;
    v138.origin.y = v31;
    v138.size.width = v32;
    v138.size.height = v33;
    v60 = v59 + CGRectGetMaxX(v138);
    v139.origin.x = v2;
    v139.origin.y = rect;
    v139.size.width = v6;
    v139.size.height = v8;
    v114 = CGRectGetMaxX(v139);
    v61 = v127;
  }

  v142.origin.x = v60;
  v142.origin.y = rect;
  v142.size.width = v6;
  v142.size.height = v8;
  v115 = v114 - CGRectGetMinX(v142);
  v161.origin.x = UIEdgeInsetsInsetRect(v2, rect, v6, v8, v123, v121);
  v161.origin.y = v62;
  v161.size.width = v63;
  v161.size.height = v64;
  v143.origin.x = v60;
  v143.size.width = v115;
  v143.origin.y = rect;
  v143.size.height = v8;
  v144 = CGRectIntersection(v143, v161);
  v65 = v144.origin.x;
  v66 = v144.origin.y;
  v67 = v144.size.width;
  v68 = v144.size.height;
  v124 = v144.size.width;
  if (v61)
  {
    v69 = v61;
    [v69 sizeThatFits_];
    v116 = v70;
    rectb = v71;
    v145.origin.x = v65;
    v145.origin.y = v66;
    v145.size.width = v67;
    v145.size.height = v68;
    CGRectGetWidth(v145);
    v146.origin.x = v65;
    v146.origin.y = v66;
    v146.size.width = v67;
    v146.size.height = v68;
    v72 = v66;
    v73 = v68;
    v74 = CGRectGetHeight(v146);

    v61 = v127;
    v75 = rectb;
    if (v74 < rectb)
    {
      v75 = v74;
    }

    recta = v75;
    v68 = v73;
    v66 = v72;
    v67 = v124;
  }

  else
  {
    recta = 0.0;
    v116 = 0.0;
  }

  v76 = v117;
  v147.origin.x = v65;
  v147.origin.y = v66;
  v147.size.width = v67;
  v147.size.height = v68;
  v77 = CGRectGetWidth(v147);
  v78 = v65;
  v79 = v77;
  v122 = v78;
  v148.origin.x = v78;
  v148.size.width = v67;
  v80 = v66;
  v148.origin.y = v66;
  v126 = v68;
  v148.size.height = v68;
  v81 = CGRectGetHeight(v148) - recta;
  [v76 sizeThatFits_];
  if (v81 < v82)
  {
    if ([v0 supportsAccessibilityContentSizeCategories])
    {
      v83 = [v0 traitCollection];
      v84 = [v83 preferredContentSizeCategory];

      LOBYTE(v83) = sub_1D16CC544();
      v61 = v127;
      v82 = v81;
      if (v83)
      {
        v149.origin.x = v122;
        v149.origin.y = v66;
        v149.size.width = v124;
        v149.size.height = v126;
        v118 = CGRectGetWidth(v149) - v116;
        v150.origin.x = v122;
        v150.origin.y = v66;
        v150.size.width = v124;
        v150.size.height = v126;
        [v76 sizeThatFits_];
        v151.origin.x = v122;
        v151.origin.y = v66;
        v151.size.width = v124;
        v151.size.height = v126;
        CGRectGetHeight(v151);

        v152.origin.x = v122;
        v152.origin.y = v66;
        v152.size.width = v124;
        v152.size.height = v126;
        CGRectGetMinX(v152);
        v153.origin.x = v122;
        v153.origin.y = v66;
        v153.size.width = v124;
        v153.size.height = v126;
        CGRectGetMinY(v153);
        UIRectCenteredYInRectScale();
        if (v47)
        {
          v154.origin.x = v122;
          v154.origin.y = v66;
          v154.size.width = v124;
          v154.size.height = v126;
          CGRectGetMinX(v154);
        }

        else
        {
          CGRectGetMaxX(*&v85);
        }

        v158.origin.x = v122;
        v158.origin.y = v66;
        v158.size.width = v124;
        v158.size.height = v126;
        CGRectGetMinY(v158);
        v113 = v120;
        UIRectCenteredYInRectScale();
        goto LABEL_46;
      }
    }

    else
    {
      v82 = v81;
    }
  }

  v155.origin.x = v122;
  v89 = v82;
  v155.origin.y = v80;
  v155.size.width = v124;
  v155.size.height = v126;
  v119 = CGRectGetWidth(v155);

  v128 = v89;
  v113 = v120;
  UIRectCenteredYInRectScale();
  v93 = v92;
  if (v47)
  {
    v94 = v91;
    sub_1D16BD040();
    CCUIEdgeInsetsFromDirectionalEdgeInsets();
    v96 = v95;
    v156.origin.x = v30;
    v156.origin.y = v31;
    v156.size.width = v32;
    v156.size.height = v33;
    v90 = CGRectGetMinX(v156) - v96 - v94;
  }

  v97 = v90;
  v98 = v93;
  v99 = v119;
  v100 = v128;
  CGRectGetMinX(*&v90);
  v157.origin.x = v97;
  v157.origin.y = v93;
  v157.size.width = v119;
  v157.size.height = v128;
  CGRectGetMaxY(v157);
LABEL_46:

  ObjectType = swift_getObjectType();
  v102 = *(v46 + 8);
  v103 = v102(ObjectType, v46);
  if (!v103)
  {
    __break(1u);
    goto LABEL_53;
  }

  v108 = v103;
  [v103 ascender];

  v109 = v102(ObjectType, v46);
  if (!v109)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v110 = v109;
  [v109 capHeight];

  UIRoundToScale();
  v31 = v111;

LABEL_49:
  v104 = v30;
  v105 = v31;
  v106 = v32;
  v107 = v33;
LABEL_54:
  result.size.height = v107;
  result.size.width = v106;
  result.origin.y = v105;
  result.origin.x = v104;
  return result;
}

Swift::Void __swiftcall CCUIControlTemplateView.selectionDidChange()()
{
  v1 = [v0 visualStylingProviderForCategory_];
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    sub_1D16B8A08(v3, 1, v2);
  }
}

void sub_1D16B8A08(void *a1, uint64_t a2, void *a3)
{
  if (a2 == 1)
  {
    v4 = v3;
    v6 = [v3 isSelected];
    v7 = v6;
    v8 = 0x80000001D16D3E90;
    if (v6)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0;
    }

    if (!v6)
    {
      v8 = 0;
    }

    v132 = v8;
    v10 = [v3 isSelected];
    v11 = v10;
    v12 = 0x80000001D16D3E70;
    if (v10)
    {
      v13 = 0xD000000000000016;
    }

    else
    {
      v13 = 1;
    }

    v133 = v13;
    if (!v10)
    {
      v12 = 0;
    }

    v129 = v12;
    v14 = objc_opt_self();
    v15 = 0.0;
    v127 = [v14 _isInAnimationBlockWithAnimationsEnabled];
    if (v127)
    {
      [v14 _currentAnimationDuration];
      v15 = v16;
    }

    v17 = &v3[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v18 = *&v4[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v18 == 1)
    {
LABEL_34:
      v53 = &v4[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
      v54 = *&v4[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
      if (v54 == 1)
      {
        goto LABEL_54;
      }

      v55 = *(v53 + 1);
      v131 = *(v53 + 2);
      sub_1D16C2014(*&v4[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v55, v131);
      v56 = v54;
      if (!v54)
      {
LABEL_53:
        sub_1D168E910(v54, v55, v131);
LABEL_54:
        sub_1D16C2904(v9, v132, v7);
        v83 = *v17;
        if (*v17 == 1)
        {
          goto LABEL_63;
        }

        v84 = v17;
        v85 = *(v17 + 1);
        v86 = *(v84 + 2);
        sub_1D16C2014(v83, v85, v86);
        v87 = v86;
        if (!v86)
        {
LABEL_62:
          sub_1D168E910(v83, v85, v86);
LABEL_63:
          v96 = *v53;
          if (*v53 != 1)
          {
            v97 = *(v53 + 1);
            v98 = *(v53 + 2);
            sub_1D16C2014(*v53, v97, v98);
            v99 = v98;
            if (v98)
            {
              v100 = v99;
              if (a3)
              {
                [a3 stopAutomaticallyUpdatingView_];
                if (v11)
                {
LABEL_67:
                  v101 = a1;
                  v102 = v100;
                  v103 = sub_1D16CC494();
                  v139 = sub_1D16BB9E8;
                  v140 = 0;
                  aBlock = MEMORY[0x1E69E9820];
                  v136 = 1107296256;
                  v137 = sub_1D16BBB64;
                  v138 = &block_descriptor_168;
                  v104 = _Block_copy(&aBlock);

                  [v101 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

                  _Block_release(v104);
                  sub_1D168E910(v96, v97, v98);
                  v105 = 0xD000000000000016;
                  v106 = 0x80000001D16D3E70;
                  v107 = 1;
LABEL_70:
                  sub_1D16C2904(v105, v106, v107);
                  return;
                }
              }

              else
              {
                v108 = v99;
                if (v11)
                {
                  goto LABEL_67;
                }
              }

              v139 = sub_1D16BB9E8;
              v140 = 0;
              aBlock = MEMORY[0x1E69E9820];
              v136 = 1107296256;
              v137 = sub_1D16BBB64;
              v138 = &block_descriptor_171;
              v109 = _Block_copy(&aBlock);
              v110 = a1;
              v111 = v100;

              [v110 automaticallyUpdateView:v111 withStyle:1 andObserverBlock:v109];

              _Block_release(v109);
              sub_1D168E910(v96, v97, v98);
              return;
            }

            sub_1D168E910(v96, v97, 0);
          }

          v105 = v133;
          v106 = v129;
          v107 = v11;
          goto LABEL_70;
        }

        v88 = v87;
        if (a3)
        {
          [a3 stopAutomaticallyUpdatingView_];
          v126 = a3;
          if (v11)
          {
LABEL_58:
            v89 = a1;
            v90 = v88;
            v91 = sub_1D16CC494();
            v139 = sub_1D16BB9E8;
            v140 = 0;
            aBlock = MEMORY[0x1E69E9820];
            v136 = 1107296256;
            v137 = sub_1D16BBB64;
            v138 = &block_descriptor_174;
            v92 = _Block_copy(&aBlock);

            [v89 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

            _Block_release(v92);
LABEL_61:

            a3 = v126;
            goto LABEL_62;
          }
        }

        else
        {
          v93 = v87;
          v126 = 0;
          if (v11)
          {
            goto LABEL_58;
          }
        }

        v139 = sub_1D16BB9E8;
        v140 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16BBB64;
        v138 = &block_descriptor_177;
        v94 = _Block_copy(&aBlock);
        v95 = a1;
        v90 = v88;

        [v95 automaticallyUpdateView:v90 withStyle:1 andObserverBlock:v94];

        _Block_release(v94);
        v91 = v90;
        goto LABEL_61;
      }

      v120 = v17;
      v122 = v9;
      v116 = v56;
      if (v127)
      {
        v57 = v56;
        v58 = swift_allocObject();
        *(v58 + 16) = v4;
        *(v58 + 24) = v57;
        *(v58 + 32) = v55;
        *(v58 + 40) = v9;
        v118 = v14;
        *(v58 + 48) = v132;
        *(v58 + 56) = v7;
        *(v58 + 64) = a1;
        *(v58 + 72) = a3;
        *(v58 + 80) = v133;
        *(v58 + 88) = v129;
        *(v58 + 96) = v11;
        v139 = sub_1D16C2C44;
        v140 = v58;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16B76AC;
        v138 = &block_descriptor_195;
        v124 = _Block_copy(&aBlock);
        v59 = v4;
        sub_1D16C2C48(v9, v132, v7);
        v60 = a3;
        v61 = a1;
        sub_1D16C2C48(v133, v129, v11);
        v62 = v116;

        [v118 transitionWithView:v62 duration:5242880 options:v124 animations:0 completion:v15];
        _Block_release(v124);
        v17 = v120;
LABEL_52:

        v9 = v122;
        goto LABEL_53;
      }

      ObjectType = swift_getObjectType();
      v64 = (*(v55 + 176))(ObjectType, v55);
      v65 = v64;
      if (a3)
      {
        [a3 stopAutomaticallyUpdatingView_];
      }

      else
      {
        v66 = v64;
      }

      v128 = v11;
      v125 = a3;
      v67 = v7;
      if (v7)
      {
        v68 = a1;
        v69 = v65;
        v70 = sub_1D16CC494();
        v139 = sub_1D16BB9E8;
        v140 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16BBB64;
        v138 = &block_descriptor_180;
        v71 = _Block_copy(&aBlock);

        [v68 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

        _Block_release(v71);
      }

      else
      {
        v139 = sub_1D16BB9E8;
        v140 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16BBB64;
        v138 = &block_descriptor_189;
        v72 = _Block_copy(&aBlock);
        v73 = a1;
        v70 = v65;

        [v73 automaticallyUpdateView:v70 withStyle:0 andObserverBlock:v72];

        _Block_release(v72);
      }

      v74 = (*(v55 + 184))(ObjectType, v55);
      a3 = v125;
      v11 = v128;
      if (!v74)
      {
        LOBYTE(v7) = v67;
        v62 = v116;
        goto LABEL_52;
      }

      v75 = v74;
      if (v125)
      {
        [v125 stopAutomaticallyUpdatingView_];
        if (v128)
        {
LABEL_47:
          v76 = a1;
          v77 = v75;
          v78 = sub_1D16CC494();
          v139 = sub_1D16BB9E8;
          v140 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v136 = 1107296256;
          v137 = sub_1D16BBB64;
          v138 = &block_descriptor_183;
          v79 = _Block_copy(&aBlock);

          [v76 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

          _Block_release(v79);
          v62 = v78;
LABEL_51:
          a3 = v125;
          LOBYTE(v7) = v67;
          goto LABEL_52;
        }
      }

      else
      {
        v80 = v74;
        if (v128)
        {
          goto LABEL_47;
        }
      }

      v139 = sub_1D16BB9E8;
      v140 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v136 = 1107296256;
      v137 = sub_1D16BBB64;
      v138 = &block_descriptor_186;
      v81 = _Block_copy(&aBlock);
      v82 = a1;
      v62 = v75;

      [v82 automaticallyUpdateView:v62 withStyle:1 andObserverBlock:v81];

      _Block_release(v81);
      goto LABEL_51;
    }

    v19 = v11;
    v21 = *(v17 + 1);
    v20 = *(v17 + 2);
    v130 = *&v4[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    sub_1D16C2014(v18, v21, v20);
    v22 = v130;
    if (!v130)
    {
      sub_1D168E910(0, v21, v20);
      v11 = v19;
      goto LABEL_34;
    }

    v115 = v20;
    v117 = v14;
    v119 = v17;
    v121 = v9;
    if (v127)
    {
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v4;
      *(v24 + 24) = v23;
      v112 = v21;
      *(v24 + 32) = v21;
      *(v24 + 40) = v9;
      *(v24 + 48) = v132;
      *(v24 + 56) = v7;
      *(v24 + 64) = a1;
      *(v24 + 72) = a3;
      *(v24 + 80) = v133;
      *(v24 + 88) = v129;
      *(v24 + 96) = v19;
      v139 = sub_1D16C2D98;
      v140 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v136 = 1107296256;
      v137 = sub_1D16B76AC;
      v138 = &block_descriptor_214;
      v25 = _Block_copy(&aBlock);
      v11 = v19;
      v26 = v4;
      v27 = v23;
      sub_1D16C2C48(v9, v132, v7);
      v28 = a3;
      v29 = a1;
      sub_1D16C2C48(v133, v129, v19);

      [v117 transitionWithView:v27 duration:5242880 options:v25 animations:0 completion:v15];
      v30 = v25;
      v14 = v117;
      _Block_release(v30);

      sub_1D168E910(v130, v112, v20);
      v17 = v119;
      goto LABEL_34;
    }

    v31 = v22;
    v32 = v21;
    v113 = swift_getObjectType();
    v114 = v31;
    v33 = (*(v21 + 176))(v113, v21);
    v34 = v33;
    if (a3)
    {
      [a3 stopAutomaticallyUpdatingView_];
    }

    else
    {
      v35 = v33;
    }

    v36 = v19;
    v123 = a3;
    if (v7)
    {
      v37 = a1;
      v38 = v34;
      v39 = sub_1D16CC494();
      v139 = sub_1D16BB9E8;
      v140 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v136 = 1107296256;
      v137 = sub_1D16BBB64;
      v138 = &block_descriptor_198;
      v40 = _Block_copy(&aBlock);

      [v37 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

      _Block_release(v40);
    }

    else
    {
      v139 = sub_1D16BB9E8;
      v140 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v136 = 1107296256;
      v137 = sub_1D16BBB64;
      v138 = &block_descriptor_207;
      v41 = _Block_copy(&aBlock);
      v42 = a1;
      v39 = v34;

      [v42 automaticallyUpdateView:v39 withStyle:0 andObserverBlock:v41];

      _Block_release(v41);
    }

    v43 = (*(v32 + 184))(v113, v32);
    a3 = v123;
    v11 = v19;
    if (!v43)
    {

      sub_1D168E910(v130, v32, v115);
LABEL_33:
      v17 = v119;
      v9 = v121;
      v14 = v117;
      goto LABEL_34;
    }

    v44 = v43;
    if (v123)
    {
      [v123 &selRef:v43 setFilters:? + 1];
      if (v19)
      {
LABEL_28:
        v45 = a1;
        v46 = v44;
        v47 = sub_1D16CC494();
        v139 = sub_1D16BB9E8;
        v140 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16BBB64;
        v138 = &block_descriptor_201;
        v48 = _Block_copy(&aBlock);

        [v45 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

        _Block_release(v48);
LABEL_32:
        sub_1D168E910(v130, v32, v115);
        a3 = v123;
        v11 = v36;
        goto LABEL_33;
      }
    }

    else
    {
      v49 = v43;
      if (v19)
      {
        goto LABEL_28;
      }
    }

    v139 = sub_1D16BB9E8;
    v140 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v136 = 1107296256;
    v137 = sub_1D16BBB64;
    v138 = &block_descriptor_204;
    v50 = _Block_copy(&aBlock);
    v51 = a1;
    v52 = v44;

    [v51 automaticallyUpdateView:v52 withStyle:1 andObserverBlock:v50];

    _Block_release(v50);
    goto LABEL_32;
  }
}

id CCUIControlTemplateView.visualStylingProvider(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1D16B9BF8(a1, a2);
  if (*(v5 + 16) && (v6 = sub_1D16C1A54(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    return v8;
  }

  else
  {

    v10.receiver = v3;
    v10.super_class = CCUIControlTemplateView;
    return objc_msgSendSuper2(&v10, sel_visualStylingProviderForCategory_, a1);
  }
}

unint64_t sub_1D16B9BF8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders;
  if (*(v2 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders))
  {
    v4 = *(v2 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders);
  }

  else
  {
    v4 = sub_1D16CB67C(MEMORY[0x1E69E7CC0]);
    *(v2 + v3) = v4;
  }

  return v4;
}

void sub_1D16B9DA4(void *a1, uint64_t a2)
{
  if (qword_1F4D511A8 != a2)
  {
    return;
  }

  v3 = v2;
  v6 = sub_1D16B9BF8(a1, a2);
  if (*(v6 + 16) && (v7 = sub_1D16C1A54(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  if (!a1)
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v9 || (sub_1D168EE64(0, &unk_1EC640AF0, 0x1E69AE170), v11 = a1, v16 = v9, v12 = sub_1D16CC5A4(), v11, v16, v13 = v16, (v12 & 1) == 0))
  {
LABEL_11:
    v14 = OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders;
    v17 = *(v3 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders);
    v15 = a1;

    sub_1D16C6D14(a1, a2);
    *(v3 + v14) = v17;

    if (!a1)
    {
      __break(1u);
      return;
    }

    sub_1D16B8A08(v15, a2, v9);
    v13 = v9;
  }
}

Swift::Void __swiftcall CCUIControlTemplateView.layoutSubviews()()
{
  v201.super_class = CCUIControlTemplateView;
  objc_msgSendSuper2(&v201, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 backgroundView];
  v10 = &selRef_ccui_systemImageName;
  [v9 setFrame_];

  v196 = [v0 contentMetrics];
  if (v196)
  {
    [v196 gridGeometryInfo];
  }

  else
  {
    v12 = CCUIPortraitMainListGridGeometryInfo(0, v11);
  }

  v14 = v12;
  v15 = v13;
  [v0 glyphContentFrame];
  v198 = v17;
  v199 = v16;
  v200 = v18;
  rect = v19;
  v20 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v21 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v21 != 1)
  {
    v193 = v2;
    v23 = *(v20 + 1);
    v22 = *(v20 + 2);
    v187 = *(v20 + 3);
    v24 = v22;
    v25 = v21;
    v26 = &selRef_ccui_systemImageName;
    if (([v0 isResizing] & 1) != 0 || (v27 = v2, v28 = v4, v190 = v6, Height = v8, objc_msgSend(v0, sel_isExpanded)))
    {
      if ([v0 supportsAccessibilityContentSizeCategories] && (v30 = objc_msgSend(v0, sel_traitCollection), v31 = v22, v32 = v24, v33 = v25, v34 = objc_msgSend(v30, sel_preferredContentSizeCategory), v30, LOBYTE(v30) = sub_1D16CC544(), v34, v25 = v33, v24 = v32, v22 = v31, v26 = &selRef_ccui_systemImageName, (v30 & 1) != 0))
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v190 = CCUIBoundsSizeForGridSizeClassWithGeometry(v35, v14, v15);
      Height = v36;
      v27 = 0.0;
      if ([v0 isExpanded])
      {
        v202.origin.x = v193;
        v202.origin.y = v4;
        v202.size.width = v6;
        v202.size.height = v8;
        Height = CGRectGetHeight(v202);
      }

      v28 = 0.0;
    }

    v182 = v14;
    v185 = v6;
    if ([v0 v26[470]])
    {
      v37 = [v0 traitCollection];
      v38 = v24;
      v39 = v25;
      v40 = [v37 preferredContentSizeCategory];

      LOBYTE(v37) = sub_1D16CC544();
      v25 = v39;
      v24 = v38;
      if ((v37 & 1) != 0 && ([v0 isLimitingTitleToSingleLineForAccessibility] & 1) == 0)
      {
        sub_1D16BAF08(v21, v23, v22, v187, v27, v28, v190, Height, v199, v198, v200, rect);
      }
    }

    v41 = [v0 _shouldReverseLayoutDirection];
    v42 = [v0 traitCollection];
    [v42 displayScale];
    v188 = v43;

    sub_1D16BD040();
    CCUIEdgeInsetsFromDirectionalEdgeInsets();
    v179 = v44;
    v46 = v45;
    v48 = v47;
    v183 = v4;
    v184 = v8;
    v181 = v15;
    if (v41)
    {
      if ([v0 isResizing])
      {
        v49 = [v0 contentMetrics];
        if (v49)
        {
          v50 = v49;
          [v49 metricsScaleFactor];
          v51 = [v0 traitCollection];
          [v51 displayScale];

          UIRoundToScale();
          v53 = v52;

          v54 = v53 + v53;
        }

        else
        {
          v54 = 28.0;
        }

        v206.origin.x = v27;
        v206.origin.y = v28;
        v58 = v190;
        v206.size.width = v190;
        v206.size.height = Height;
        v59 = CGRectGetMaxX(v206) - v200 - v54 - v48;
        v57 = v27;
      }

      else
      {
        v205.origin.y = v198;
        v205.origin.x = v199;
        v205.size.width = v200;
        v205.size.height = rect;
        v59 = CGRectGetMinX(v205) - v48;
        v57 = v27;
        v58 = v190;
      }
    }

    else
    {
      v203.origin.y = v198;
      v203.origin.x = v199;
      v203.size.width = v200;
      v203.size.height = rect;
      MaxX = CGRectGetMaxX(v203);
      v56 = v27;
      v27 = v46 + MaxX;
      v57 = v56;
      v204.origin.x = v56;
      v204.origin.y = v28;
      v58 = v190;
      v204.size.width = v190;
      v204.size.height = Height;
      v59 = CGRectGetMaxX(v204);
    }

    v207.origin.x = v27;
    v207.origin.y = v28;
    v207.size.width = v58;
    v207.size.height = Height;
    v60 = v59 - CGRectGetMinX(v207);
    v251.origin.x = UIEdgeInsetsInsetRect(v57, v28, v58, Height, v179, v46);
    v251.origin.y = v61;
    v251.size.width = v62;
    v251.size.height = v63;
    v208.origin.x = v27;
    v208.origin.y = v28;
    v208.size.width = v60;
    v208.size.height = Height;
    v209 = CGRectIntersection(v208, v251);
    x = v209.origin.x;
    y = v209.origin.y;
    width = v209.size.width;
    v67 = v209.size.height;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0.0;
    v180 = 0.0;
    if (v22)
    {
      v71 = v24;
      [v71 sizeThatFits_];
      v180 = v72;
      v70 = v73;
      v210.origin.x = x;
      v210.origin.y = y;
      v210.size.width = width;
      v210.size.height = v67;
      v69 = CGRectGetWidth(v210);
      v211.origin.x = x;
      v211.origin.y = y;
      v211.size.width = width;
      v211.size.height = v67;
      v74 = CGRectGetHeight(v211);

      if (v74 < v70)
      {
        v70 = v74;
      }
    }

    v178 = v69;
    v75 = 0.0;
    v191 = v70;
    if (v21)
    {
      v76 = v25;
      v212.origin.x = x;
      v212.origin.y = y;
      v212.size.width = width;
      v212.size.height = v67;
      v77 = CGRectGetWidth(v212);
      v213.origin.x = x;
      v213.origin.y = y;
      v213.size.width = width;
      v213.size.height = v67;
      v78 = CGRectGetHeight(v213) - v70;
      [v76 sizeThatFits_];
      v75 = v79;
      if (v78 < v79)
      {
        if ([v0 supportsAccessibilityContentSizeCategories])
        {
          v80 = [v0 traitCollection];
          v81 = v22;
          v82 = v24;
          v83 = v25;
          v84 = [v80 preferredContentSizeCategory];

          LOBYTE(v80) = sub_1D16CC544();
          v25 = v83;
          v24 = v82;
          v22 = v81;
          v75 = v78;
          if (v80)
          {
            v214.origin.x = x;
            v214.origin.y = y;
            v214.size.width = width;
            v214.size.height = v67;
            v85 = CGRectGetWidth(v214) - v180;
            v215.origin.x = x;
            v215.origin.y = y;
            v215.size.width = width;
            v215.size.height = v67;
            [v76 sizeThatFits_];
            v216.origin.x = x;
            v216.origin.y = y;
            v216.size.width = width;
            v216.size.height = v67;
            CGRectGetHeight(v216);

            v217.origin.x = x;
            v217.origin.y = y;
            v217.size.width = width;
            v217.size.height = v67;
            CGRectGetMinX(v217);
            v218.origin.x = x;
            v218.origin.y = y;
            v218.size.width = width;
            v218.size.height = v67;
            CGRectGetMinY(v218);
            UIRectCenteredYInRectScale();
            v90 = v86;
            v91 = v87;
            v92 = v88;
            v93 = v89;
            if (v41)
            {
              v219.origin.x = x;
              v219.origin.y = y;
              v219.size.width = width;
              v219.size.height = v67;
              CGRectGetMinX(v219);
            }

            else
            {
              CGRectGetMaxX(*&v86);
            }

            v10 = &selRef_ccui_systemImageName;
            v249.origin.x = x;
            v249.origin.y = y;
            v249.size.width = width;
            v249.size.height = v67;
            CGRectGetMinY(v249);
            UIRectCenteredYInRectScale();
            MinX = v169;
            MaxY = v170;
            v178 = v171;
            v191 = v172;
            v2 = v193;
            v4 = v183;
            [v25 setFrame_];
LABEL_42:
            v8 = v184;
            v6 = v185;
            v14 = v182;
            if (v22)
            {
              v104 = v10[340];
              v105 = v24;
              [v105 v104];
            }

            v15 = v181;
            goto LABEL_45;
          }
        }

        else
        {
          v75 = v78;
        }
      }

      v220.origin.x = x;
      v220.origin.y = y;
      v220.size.width = width;
      v220.size.height = v67;
      v68 = CGRectGetWidth(v220);
    }

    v177 = v188;
    UIRectCenteredYInRectScale();
    v97 = v96;
    if (v41)
    {
      v98 = v95;
      sub_1D16BD040();
      CCUIEdgeInsetsFromDirectionalEdgeInsets();
      v100 = v99;
      v221.origin.y = v198;
      v221.origin.x = v199;
      v221.size.width = v200;
      v221.size.height = rect;
      v101 = CGRectGetMinX(v221) - v100 - v98;
    }

    else
    {
      v101 = v94;
    }

    v10 = &selRef_ccui_systemImageName;
    v2 = v193;
    v4 = v183;
    v222.origin.x = v101;
    v222.origin.y = v97;
    v222.size.width = v68;
    v222.size.height = v75;
    MinX = CGRectGetMinX(v222);
    v223.origin.x = v101;
    v223.origin.y = v97;
    v223.size.width = v68;
    v223.size.height = v75;
    MaxY = CGRectGetMaxY(v223);
    if (v21)
    {
      [v25 setFrame_];
    }

    goto LABEL_42;
  }

LABEL_45:
  v106 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v106 == 1)
  {
    goto LABEL_77;
  }

  v107 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 16];
  v108 = v107;
  v109 = v106;
  if (([v0 isResizing] & 1) != 0 || objc_msgSend(v0, sel_isExpanded))
  {
    if ([v0 supportsAccessibilityContentSizeCategories] && (v110 = objc_msgSend(v0, sel_traitCollection), v111 = objc_msgSend(v110, sel_preferredContentSizeCategory), v110, LOBYTE(v110) = sub_1D16CC544(), v111, (v110 & 1) != 0))
    {
      v112 = 5;
    }

    else
    {
      v112 = 4;
    }

    v113 = CCUIBoundsSizeForGridSizeClassWithGeometry(v112, v14, v15);
    v224.origin.x = v2;
    v224.origin.y = v4;
    v224.size.width = v6;
    v224.size.height = v8;
    v114 = CGRectGetHeight(v224);
    v115 = 0.0;
    v4 = 0.0;
    v116 = v113;
  }

  else
  {
    v114 = v8;
    v115 = v2;
    v116 = v6;
  }

  v117 = [v0 _shouldReverseLayoutDirection];
  v118 = [v0 traitCollection];
  [v118 displayScale];
  v186 = v119;

  sub_1D16BD17C();
  CCUIEdgeInsetsFromDirectionalEdgeInsets();
  v121 = v120;
  v194 = v122;
  v123 = v4;
  if (([v0 isResizing] & 1) == 0)
  {
    v225.origin.y = v198;
    v225.origin.x = v199;
    v225.size.width = v200;
    v225.size.height = rect;
    v123 = v121 + CGRectGetMaxY(v225);
  }

  v226.origin.x = v115;
  v226.origin.y = v4;
  v226.size.width = v116;
  v226.size.height = v114;
  v124 = v4;
  v125 = CGRectGetMaxY(v226);
  v227.origin.x = v115;
  v227.origin.y = v123;
  v227.size.width = v116;
  v227.size.height = v114;
  v126 = v125 - CGRectGetMinY(v227);
  v252.origin.x = UIEdgeInsetsInsetRect(v115, v124, v116, v114, v121, v194);
  v252.origin.y = v127;
  v252.size.width = v128;
  v252.size.height = v129;
  v228.origin.x = v115;
  v228.origin.y = v123;
  v228.size.width = v116;
  v228.size.height = v126;
  v229 = CGRectIntersection(v228, v252);
  v130 = v229.origin.x;
  v131 = v229.origin.y;
  v132 = v229.size.width;
  v133 = v229.size.height;
  v134 = 0.0;
  v195 = 0.0;
  v135 = 0.0;
  v189 = 0.0;
  if (v107)
  {
    v136 = v108;
    [v136 sizeThatFits_];
    v189 = v137;
    v139 = v138;
    v230.origin.x = v130;
    v230.origin.y = v131;
    v230.size.width = v132;
    v230.size.height = v133;
    v195 = CGRectGetWidth(v230);
    v231.origin.x = v130;
    v231.origin.y = v131;
    v231.size.width = v132;
    v231.size.height = v133;
    v140 = CGRectGetHeight(v231);

    if (v140 >= v139)
    {
      v135 = v139;
    }

    else
    {
      v135 = v140;
    }
  }

  v141 = 0.0;
  v192 = v135;
  if (!v106)
  {
    goto LABEL_68;
  }

  v142 = v109;
  v232.origin.x = v130;
  v232.origin.y = v131;
  v232.size.width = v132;
  v232.size.height = v133;
  v143 = CGRectGetWidth(v232);
  v233.origin.x = v130;
  v233.origin.y = v131;
  v233.size.width = v132;
  v233.size.height = v133;
  v144 = CGRectGetHeight(v233) - v135;
  [v142 sizeThatFits_];
  v141 = v145;
  if (v144 >= v145)
  {
    goto LABEL_67;
  }

  if (![v0 supportsAccessibilityContentSizeCategories])
  {
    v141 = v144;
    goto LABEL_67;
  }

  v146 = [v0 traitCollection];
  v147 = v109;
  v148 = v10;
  v149 = [v146 preferredContentSizeCategory];

  LOBYTE(v146) = sub_1D16CC544();
  v10 = v148;
  v109 = v147;
  v141 = v144;
  if ((v146 & 1) == 0)
  {
LABEL_67:
    v240.origin.x = v130;
    v240.origin.y = v131;
    v240.size.width = v132;
    v240.size.height = v133;
    v134 = CGRectGetWidth(v240);

LABEL_68:
    v159 = v135 + v141;
    v241.origin.x = v130;
    v241.origin.y = v131;
    v241.size.width = v132;
    v241.size.height = v133;
    v160 = CGRectGetMaxY(v241);
    v242.origin.x = v130;
    v242.origin.y = v131;
    v242.size.width = v132;
    v242.size.height = v135 + v141;
    v161 = v160 - CGRectGetHeight(v242);
    sub_1D16BD17C();
    CCUIEdgeInsetsFromDirectionalEdgeInsets();
    v163 = v162;
    v243.origin.y = v198;
    v243.origin.x = v199;
    v243.size.width = v200;
    v243.size.height = rect;
    if (v161 <= CGRectGetMaxY(v243) + v163)
    {
      v244.origin.y = v198;
      v244.origin.x = v199;
      v244.size.width = v200;
      v244.size.height = rect;
      v161 = v163 + CGRectGetMaxY(v244);
      v159 = v141;
    }

    if (v117)
    {
      v245.origin.y = v198;
      v245.origin.x = v199;
      v245.size.width = v200;
      v245.size.height = rect;
      v164 = CGRectGetMaxX(v245);
      v246.origin.x = v130;
      v246.origin.y = v161;
      v246.size.width = v132;
      v246.size.height = v159;
      v130 = v164 - CGRectGetWidth(v246);
    }

    v247.origin.x = v130;
    v247.origin.y = v161;
    v247.size.width = v134;
    v247.size.height = v141;
    v165 = CGRectGetMinX(v247);
    v248.origin.x = v130;
    v248.origin.y = v161;
    v248.size.width = v134;
    v248.size.height = v141;
    v166 = CGRectGetMaxY(v248);
    if (v106)
    {
      [v109 v10[340]];
    }

    goto LABEL_74;
  }

  v234.origin.x = v130;
  v234.origin.y = v131;
  v234.size.width = v132;
  v234.size.height = v133;
  v150 = CGRectGetWidth(v234) - v189;
  v235.origin.x = v130;
  v235.origin.y = v131;
  v235.size.width = v132;
  v235.size.height = v133;
  [v142 sizeThatFits_];
  v236.origin.x = v130;
  v236.origin.y = v131;
  v236.size.width = v132;
  v236.size.height = v133;
  CGRectGetHeight(v236);

  v237.origin.x = v130;
  v237.origin.y = v131;
  v237.size.width = v132;
  v237.size.height = v133;
  CGRectGetMinX(v237);
  v238.origin.x = v130;
  v238.origin.y = v131;
  v238.size.width = v132;
  v238.size.height = v133;
  CGRectGetMinY(v238);
  UIRectCenteredYInRectScale();
  v155 = v151;
  v156 = v152;
  v157 = v153;
  v158 = v154;
  if (v117)
  {
    v239.origin.x = v130;
    v239.origin.y = v131;
    v239.size.width = v132;
    v239.size.height = v133;
    CGRectGetMinX(v239);
  }

  else
  {
    CGRectGetMaxX(*&v151);
  }

  v250.origin.x = v130;
  v250.origin.y = v131;
  v250.size.width = v132;
  v250.size.height = v133;
  CGRectGetMinY(v250);
  UIRectCenteredYInRectScale();
  v165 = v173;
  v166 = v174;
  v192 = v176;
  v195 = v175;
  [v147 v10[340]];
LABEL_74:
  if (v107)
  {
    v167 = v10[340];
    v168 = v108;
    [v168 v167];
  }

LABEL_77:
  if (([v0 isResizing] & 1) == 0)
  {
    _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
  }
}

void sub_1D16BAF08(void *a1, uint64_t a2, void *a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11, CGFloat a12)
{
  if (a1)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v27 = *(a2 + 8);
    v28 = a1;
    v29 = v27(ObjectType, a2);
    if (v29)
    {
      rect = a11;
      oslog = v29;
      v30 = [v12 _shouldReverseLayoutDirection];
      sub_1D16BD040();
      CCUIEdgeInsetsFromDirectionalEdgeInsets();
      v71 = v32;
      v33 = v31;
      v69 = v34;
      if (v30)
      {
        v68 = v31;
        if ([v12 isResizing])
        {
          v35 = [v12 contentMetrics];
          if (v35)
          {
            v36 = v35;
            [v35 metricsScaleFactor];
            v37 = [v13 traitCollection];
            [v37 displayScale];

            UIRoundToScale();
            v39 = v38;

            v40 = v39 + v39;
          }

          else
          {
            v40 = 28.0;
          }

          v33 = v68;
          v48 = v69;
          v77.origin.x = a5;
          v77.origin.y = a6;
          v77.size.width = a7;
          v77.size.height = a8;
          MinX = CGRectGetMaxX(v77) - rect - v40;
        }

        else
        {
          v76.origin.x = a9;
          v76.origin.y = a10;
          v76.size.width = rect;
          v76.size.height = a12;
          MinX = CGRectGetMinX(v76);
          v33 = v68;
          v48 = v69;
        }

        MaxX = MinX - v48;
        v45 = a5;
      }

      else
      {
        v74.origin.x = a9;
        v74.origin.y = a10;
        v74.size.width = rect;
        v74.size.height = a12;
        v45 = v33 + CGRectGetMaxX(v74);
        v75.origin.x = a5;
        v75.origin.y = a6;
        v75.size.width = a7;
        v75.size.height = a8;
        MaxX = CGRectGetMaxX(v75);
      }

      v78.origin.x = v45;
      v78.origin.y = a6;
      v78.size.width = a7;
      v78.size.height = a8;
      v49 = MaxX - CGRectGetMinX(v78);
      v82.origin.x = UIEdgeInsetsInsetRect(a5, a6, a7, a8, v71, v33);
      v82.origin.y = v50;
      v82.size.width = v51;
      v82.size.height = v52;
      v79.origin.x = v45;
      v79.origin.y = a6;
      v79.size.width = v49;
      v79.size.height = a8;
      v80 = CGRectIntersection(v79, v82);
      x = v80.origin.x;
      y = v80.origin.y;
      width = v80.size.width;
      height = v80.size.height;
      [oslog lineHeight];
      v58 = v57 + v57;
      [oslog leading];
      v60 = v58 + v59;
      if (a3)
      {
        v61 = swift_getObjectType();
        v62 = *(a4 + 8);
        v63 = a3;
        v64 = v62(v61, a4);
        if (v64)
        {
          v65 = v64;
          [v64 lineHeight];
          v67 = v66;

          v60 = v60 + v67;
        }

        else
        {
        }
      }

      v81.origin.x = x;
      v81.origin.y = y;
      v81.size.width = width;
      v81.size.height = height;
      if (CGRectGetHeight(v81) < v60)
      {
        [v13 setIsLimitingTitleToSingleLineForAccessibility_];
      }
    }

    else
    {
      if (qword_1EC6412A8 != -1)
      {
        swift_once();
      }

      v41 = sub_1D16CC2C4();
      __swift_project_value_buffer(v41, qword_1EC6420F8);
      v28 = v28;
      oslog = sub_1D16CC2A4();
      v42 = sub_1D16CC524();

      if (os_log_type_enabled(oslog, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v28;
        *v44 = a1;
        v28 = v28;
        _os_log_impl(&dword_1D168A000, oslog, v42, "Unexpectedly missing font on title label: %@", v43, 0xCu);
        sub_1D16C2BE4(v44, &unk_1EC641670, qword_1D16D21B0);
        MEMORY[0x1D388F3F0](v44, -1, -1);
        MEMORY[0x1D388F3F0](v43, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall CCUIControlTemplateView.didMoveToWindow()()
{
  v4.super_class = CCUIControlTemplateView;
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  if ([v0 _isInAWindow])
  {
    v3.receiver = v0;
    v3.super_class = CCUIControlTemplateView;
    v1 = objc_msgSendSuper2(&v3, sel_visualStylingProviderForCategory_, 1);
    if (v1)
    {
      v2 = v1;
      [v0 setVisualStylingProvider:v1 forCategory:1];
    }
  }
}

id CCUIControlTemplateView.contextMenuInteraction(_:configuration:dismissalPreviewForItemWithIdentifier:)()
{
  v1 = [v0 makeContextMenuPreview];

  return v1;
}

id CCUIControlTemplateView.contextMenuInteraction(_:willEndFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super_class = CCUIControlTemplateView;
  objc_msgSendSuper2(&v5, sel_contextMenuInteraction_willEndForConfiguration_animator_, a1, a2, a3);
  return [v3 setPresentingContextMenu_];
}

void (*sub_1D16BB9E8(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  result = sub_1D16900A8(a2, &v6);
  if (v7)
  {
    sub_1D16901B4(&v6, &v8);
    sub_1D168EE64(0, &qword_1EC640AD8, 0x1E69DD250);
    swift_dynamicCast();
    [v5 alpha];
    v4 = v3;

    *(swift_allocObject() + 16) = v4;
    return sub_1D16C2914;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D16BBABC(double a1, uint64_t a2, uint64_t a3)
{
  sub_1D16900A8(a3, &v5);
  if (v6)
  {
    sub_1D16901B4(&v5, &v7);
    sub_1D168EE64(0, &qword_1EC640AD8, 0x1E69DD250);
    swift_dynamicCast();
    [v4 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D16BBB64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a3;
    sub_1D16901B4(&v11, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v7 = v5(a2, v16);
  v9 = v8;

  sub_1D16C2BE4(v16, &unk_1EC641620, &qword_1D16D2180);
  if (v7)
  {
    v14 = v7;
    v15 = v9;
    *&v11 = MEMORY[0x1E69E9820];
    *(&v11 + 1) = 1107296256;
    v12 = sub_1D16BBC98;
    ObjectType = &block_descriptor_94;
    v7 = _Block_copy(&v11);
  }

  return v7;
}

uint64_t sub_1D16BBC98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_1D16901B4(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_1D16C2BE4(v10, &unk_1EC641620, &qword_1D16D2180);
}

void sub_1D16BBD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8, uint64_t a9, uint64_t a10, char a11)
{
  ObjectType = swift_getObjectType();
  v17 = (*(a3 + 176))(ObjectType, a3);
  v18 = v17;
  if (a8)
  {
    [a8 stopAutomaticallyUpdatingView_];
    if (a6)
    {
LABEL_3:
      v19 = v18;
      v20 = a7;
      v21 = sub_1D16CC494();
      v39 = sub_1D16BB9E8;
      v40 = 0;
      v35 = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1D16BBB64;
      v38 = &block_descriptor_217;
      v22 = _Block_copy(&v35);

      [v20 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

      _Block_release(v22);
      goto LABEL_6;
    }
  }

  else
  {
    v23 = v17;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v39 = sub_1D16BB9E8;
  v40 = 0;
  v35 = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1D16BBB64;
  v38 = &block_descriptor_226;
  v24 = _Block_copy(&v35);
  v21 = v18;
  v25 = a7;

  [v25 automaticallyUpdateView:v21 withStyle:a4 andObserverBlock:v24];

  _Block_release(v24);
LABEL_6:

  v26 = (*(a3 + 184))(ObjectType, a3);
  if (!v26)
  {
    return;
  }

  v27 = v26;
  if (!a8)
  {
    v32 = v26;
    if (a11)
    {
      goto LABEL_9;
    }

LABEL_11:
    v39 = sub_1D16BB9E8;
    v40 = 0;
    v35 = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1D16BBB64;
    v38 = &block_descriptor_223;
    v33 = _Block_copy(&v35);
    v34 = a7;
    v30 = v27;

    [v34 automaticallyUpdateView:v30 withStyle:a9 andObserverBlock:v33];

    _Block_release(v33);
    goto LABEL_12;
  }

  [a8 stopAutomaticallyUpdatingView_];
  if ((a11 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v28 = a7;
  v29 = v27;
  v30 = sub_1D16CC494();
  v39 = sub_1D16BB9E8;
  v40 = 0;
  v35 = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1D16BBB64;
  v38 = &block_descriptor_220;
  v31 = _Block_copy(&v35);

  [v28 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

  _Block_release(v31);
LABEL_12:
}

id sub_1D16BC148(void *a1, id a2)
{
  [a1 setEnabled_];
  [a1 setRedacted_];
  v4 = [a2 isSelected];

  return [a1 setSelected_];
}

id sub_1D16BC1E4(void *a1, id a2, void (*a3)(void))
{
  v6 = [a2 title];
  [a1 setTitle_];

  v7 = [a2 subtitle];
  [a1 setSubtitle_];

  a3();

  return [a1 layoutIfNeeded];
}

void *sub_1D16BC2AC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  if (a1 == 1)
  {
    return 0;
  }

  v12 = a1;
  result = a1;
  if (a1)
  {
    if (a5 == 1)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (a1 == a5)
    {

      result = 0;
    }
  }

  if (!a3)
  {
    return result;
  }

LABEL_8:
  if (a5 == 1 || !a7 || a3 != a7)
  {
    v13 = result;
    v14 = a3;
    return v13;
  }

  return result;
}

void sub_1D16BC38C(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v7 = a3;
    a1();
  }

  if (a5)
  {
    v8 = a5;
    a1();
  }
}

uint64_t sub_1D16BC434(void *a1, uint64_t a2, void *a3, double a4, uint64_t a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t (*)()), uint64_t a9, uint64_t (*a10)(id (*)(void *a1), __n128))
{
  v13 = *a2;
  v33 = *(a2 + 16);
  v34 = *(a2 + 8);
  v14 = *(a2 + 32);
  v31.origin.x = *(a2 + 40);
  v31.origin.y = *(a2 + 48);
  v31.size.width = *(a2 + 56);
  v31.size.height = *(a2 + 64);
  v32 = *(a2 + 24);
  v15 = *(a2 + 72);
  [a1 layoutIfNeeded];
  if (!a3)
  {
LABEL_5:
    v30 = v13;
    if (a6)
    {
      [a6 frame];
      CGRectGetMinY(v36);
    }

    v17 = BSFloatApproximatelyEqualToFloat();
    v16 = a3;
    if (a3)
    {
      if (v14)
      {
        if (v15)
        {

          goto LABEL_11;
        }

        x = v31.origin.x;
        y = v31.origin.y;
        width = v31.size.width;
        height = v31.size.height;
        v25 = v16;
        CGRectGetMinY(v31);
        [v25 frame];
        CGRectGetHeight(v40);
        [v25 frame];
        [v25 setFrame_];

        v18 = a8;
        if (!a6)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v19 = v16;
      v37.origin.x = v30;
      v37.origin.y = v34;
      v37.size.width = v33;
      v37.size.height = v32;
      CGRectGetMaxY(v37);
      [v19 frame];
      CGRectGetHeight(v38);
      [v19 frame];
      [v19 setFrame_];
    }

    v18 = a8;
    if (!a6)
    {
      goto LABEL_21;
    }

    if (v15)
    {
      if (v14 & 1 | ((v17 & 1) == 0))
      {
        goto LABEL_21;
      }

      v20 = a6;
      v39.origin.x = v30;
      v39.origin.y = v34;
      v39.size.width = v33;
      v39.size.height = v32;
      CGRectGetMaxY(v39);
LABEL_20:
      [v20 frame];
      [v20 setFrame_];

      goto LABEL_21;
    }

    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
LABEL_19:
    v20 = a6;
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    CGRectGetMinY(v41);
    goto LABEL_20;
  }

  if (a3 != 1)
  {
    [a3 frame];
    CGRectGetMaxY(v35);
    goto LABEL_5;
  }

  v16 = BSFloatApproximatelyEqualToFloat();
LABEL_11:
  v18 = a8;
LABEL_21:
  v26 = MEMORY[0x1EEE9AC00](v16);
  v27 = (v18)(sub_1D16C2BAC, v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  return a10(sub_1D16C2BB4, v28);
}

void sub_1D16BC77C(void *a1)
{
  v2 = sub_1D16BC804();
  [v2 addObject_];

  sub_1D16BC878();
  if ((v3 & 1) == 0)
  {
    [a1 ensureGaussianBlurFilter];

    [a1 setGaussianBlurRadius_];
  }
}

id sub_1D16BC804()
{
  v1 = OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels;
  v2 = *(v0 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D16BC878()
{
  v1 = [v0 layer];
  v2 = [v1 filters];

  if (v2)
  {
    v3 = sub_1D16CC4F4();

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v3 + 32;
      do
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        sub_1D16C27B0(v6, v16);
        sub_1D16C27B0(v16, v15);
        sub_1D168EE64(0, &qword_1EC640AC0, 0x1E6979378);
        if (swift_dynamicCast())
        {
          v7 = [v14 name];
          if (v7)
          {
            v8 = v4;
            v9 = v7;
            v10 = sub_1D16CC4A4();
            v12 = v11;

            v4 = v8;
          }

          else
          {
            v10 = 0;
            v12 = 0;
          }

          if (qword_1EC640B80 == -1)
          {
            if (!v12)
            {
              goto LABEL_18;
            }
          }

          else
          {
            swift_once();
            if (!v12)
            {
LABEL_18:

              __swift_destroy_boxed_opaque_existential_0(v16);
              goto LABEL_5;
            }
          }

          if (v10 == qword_1EC640B90 && v12 == *algn_1EC640B98)
          {

            __swift_destroy_boxed_opaque_existential_0(v16);
LABEL_22:

            return;
          }

          v13 = sub_1D16CC6F4();

          __swift_destroy_boxed_opaque_existential_0(v16);
          if (v13)
          {
            goto LABEL_22;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

LABEL_5:
        ++v5;
        v6 += 32;
      }

      while (v4 != v5);
    }
  }
}

id sub_1D16BCAC8(void *a1)
{
  v2 = sub_1D16BC804();
  [v2 addObject_];

  [a1 ensureGaussianBlurFilter];
  [a1 setGaussianBlurRadius_];

  return [a1 setAlpha_];
}

void sub_1D16BCB4C(void *a1, void (*a2)(uint64_t (*)(), void), double a3, uint64_t a4, uint64_t (*a5)(uint64_t (*)(), void), uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15)
{
  v19 = a14;
  v20 = *a7;
  v21 = *(a7 + 8);
  v23 = *(a7 + 16);
  v22 = *(a7 + 24);
  v24 = *(a7 + 32);
  v35 = *(a7 + 48);
  v36 = *(a7 + 40);
  v25 = *(a7 + 56);
  v26 = *(a7 + 64);
  v27 = *(a7 + 72);
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
  a2(sub_1D16BCE6C, 0);
  a5(sub_1D16BCEBC, 0);
  if ((v24 & 1) == 0)
  {
    v39.origin.x = v20;
    v39.origin.y = v21;
    v39.size.width = v23;
    v39.size.height = v22;
    CGRectGetMaxY(v39);
  }

  if ((v27 & 1) == 0)
  {
    v40.origin.y = v35;
    v40.origin.x = v36;
    v40.size.width = v25;
    v40.size.height = v26;
    CGRectGetMinY(v40);
  }

  v28 = BSFloatApproximatelyEqualToFloat();
  if (a8)
  {
    if (a12 == 1)
    {
      return;
    }

    v29 = a8;
    sub_1D16C2014(a12, a13, a14);

    if (a12)
    {
      v30 = v29;
      [a12 frame];
      CGRectGetMaxY(v41);
      v31 = a12;
    }

    else
    {
      if (!a14)
      {
LABEL_12:

        goto LABEL_13;
      }

      v32 = v29;
      v31 = a14;
      [v31 frame];
      CGRectGetMinY(v42);
    }

    [v29 frame];
    CGRectGetHeight(v43);
    [v29 frame];
    [v29 setFrame_];

    goto LABEL_12;
  }

LABEL_13:
  if (!a10 || a12 == 1)
  {
    return;
  }

  sub_1D16C2014(a12, a13, a14);
  v37 = a10;

  if (a14)
  {
    v33 = v37;
    [a14 frame];
    CGRectGetMinY(v44);
LABEL_20:
    [v37 frame];
    [v37 setFrame_];

    goto LABEL_21;
  }

  if (((a12 != 0) & v28) == 1)
  {
    v34 = v37;
    v19 = a12;
    [v19 frame];
    CGRectGetMaxY(v45);
    goto LABEL_20;
  }

LABEL_21:
}

id sub_1D16BCE6C(void *a1)
{
  [a1 setAlpha_];

  return [a1 setGaussianBlurRadius_];
}

void sub_1D16BCECC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), _BYTE *), uint64_t a4, char *a5, void (*a6)(uint64_t (*)(), void *))
{
  v15 = a5;
  a3(sub_1D16C2AF8, v14);
  v13[2] = a5;
  a6(sub_1D16C2B54, v13);
  v8 = sub_1D16BC804();
  v9 = [v8 count];

  if (!v9)
  {
    _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
    v10 = [*&a5[OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels] count];
    v11 = [a5 isResizing];
    if (v10 > 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    [a5 setClipsToBounds_];
  }
}

uint64_t sub_1D16BCFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

double sub_1D16BD040()
{
  v1 = [v0 contentMetrics];
  if (v1)
  {
    v2 = v1;
    [v1 metricsScaleFactor];
    v3 = [v0 traitCollection];
    [v3 displayScale];

    UIRoundToScale();
  }

  v4 = [v0 contentMetrics];
  if (v4)
  {
    v5 = v4;
    [v4 metricsScaleFactor];
    v6 = [v0 traitCollection];
    [v6 displayScale];

    UIRoundToScale();
  }

  return 2.0;
}

double sub_1D16BD17C()
{
  v1 = [v0 contentMetrics];
  if (v1)
  {
    v2 = v1;
    [v1 metricsScaleFactor];
    v3 = [v0 traitCollection];
    [v3 displayScale];

    UIRoundToScale();
  }

  v4 = [v0 contentMetrics];
  if (v4)
  {
    v5 = v4;
    [v4 metricsScaleFactor];
    v6 = [v0 traitCollection];
    [v6 displayScale];

    UIRoundToScale();
  }

  v7 = [v0 contentMetrics];
  if (v7)
  {
    v8 = v7;
    [v7 metricsScaleFactor];
    v9 = [v0 traitCollection];
    [v9 displayScale];

    UIRoundToScale();
  }

  return 4.0;
}

uint64_t sub_1D16BD328()
{
  v1 = [v0 delegate];
  if (!v1 || (v2 = [v1 performPrimaryActionForControlTemplateView_], result = swift_unknownObjectRelease(), v2))
  {
    result = [v0 showsMenuAsPrimaryAction];
    if ((result & 1) == 0)
    {
      result = [v0 menuModuleDelegate];
      if (result)
      {
        v4 = result;
        if ([result showsMenuModuleAsPrimaryAction])
        {
          [v4 presentMenuModule];
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1D16BD44C(void *a1)
{
  v2 = v1 + *a1;
  if (*v2 >= 2uLL)
  {
    [*v2 removeFromSuperview];
    v3 = *v2;
    v4 = *(v2 + 16);
    if (*v2 == 1 || !v4)
    {
      v10 = 0;
      v5 = 0;
      v9 = 1;
    }

    else
    {
      v5 = *(v2 + 24);
      v6 = *v2;
      v7 = *(v2 + 16);
      v8 = v4;
      v4 = v7;
      v3 = v6;
      v9 = 0;
      v10 = v7;
    }

    v11 = *(v2 + 8);
    *v2 = v9;
    *(v2 + 8) = 0;
    *(v2 + 16) = v10;
    *(v2 + 24) = v5;

    sub_1D168E910(v3, v11, v4);
  }
}

void sub_1D16BD504(void *a1, char a2)
{
  v5 = [v2 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D16CC4A4();
    v9 = v8;

    v10 = &v2[*a1];
    if (*v10 >= 2uLL)
    {
    }

    else
    {
      sub_1D16BD8D8(v7, v9, 1, a2 & 1);
      v12 = v11;
      v14 = v13;

      v15 = *v10;
      v16 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (*v10 == 1)
      {
        v18 = 0;
        v19 = 0;
      }

      else
      {
        v20 = v16;
        v18 = v16;
        v19 = v17;
      }

      v21 = *(v10 + 1);
      *v10 = v12;
      *(v10 + 1) = v14;
      *(v10 + 2) = v18;
      *(v10 + 3) = v19;
      v24 = v12;
      sub_1D168E910(v15, v21, v16);
      [v2 addSubview_];
      if (*&v2[OBJC_IVAR___CCUIControlTemplateView_blurPocket])
      {

        sub_1D16B4170(v22, v23);
      }
    }
  }
}

void sub_1D16BD698(void *a1)
{
  v2 = v1 + *a1;
  if (*v2 != 1)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *v2;
      v5 = *(v2 + 8);
      if (*v2 >= 2uLL)
      {
        v8 = v4;
        v7 = v4;
        v6 = v5;
      }

      else
      {
        v6 = 0;
        v7 = 1;
      }

      v9 = *(v2 + 16);
      *v2 = v7;
      *(v2 + 8) = v6;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;

      sub_1D168E910(v4, v5, v9);
    }
  }
}

void sub_1D16BD740(void *a1, char a2)
{
  v5 = [v2 subtitle];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D16CC4A4();
    v9 = v8;

    v10 = &v2[*a1];
    if (*v10 == 1 || !*(v10 + 2))
    {
      sub_1D16BD8D8(v7, v9, 0, a2 & 1);
      v12 = v11;
      v14 = v13;

      v15 = *v10;
      v16 = *(v10 + 1);
      if (*v10 == 1)
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v19 = v15;
        v17 = v15;
        v18 = v16;
      }

      v20 = *(v10 + 2);
      *v10 = v17;
      *(v10 + 1) = v18;
      *(v10 + 2) = v12;
      *(v10 + 3) = v14;
      v23 = v12;
      sub_1D168E910(v15, v16, v20);
      [v2 addSubview_];
      if (*&v2[OBJC_IVAR___CCUIControlTemplateView_blurPocket])
      {

        sub_1D16B4170(v21, v22);
      }
    }

    else
    {
    }
  }
}

void sub_1D16BD8D8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  if ((a3 & 1) != 0 && [v4 showsMenuAffordance] && !objc_msgSend(v4, sel_menuAffordancePosition))
  {
    v56 = [objc_opt_self() configurationWithScale_];
    v57 = sub_1D16CC494();
    v58 = [objc_opt_self() systemImageNamed:v57 withConfiguration:v56];

    if (!v58)
    {
      __break(1u);
      return;
    }

    v59 = objc_allocWithZone(type metadata accessor for LabelWithAccessoryView());
    v60 = sub_1D16B36A8(v58, 0.0, 0.0, 0.0, 0.0);

    v9 = v60;
    v10 = &off_1F4D51548;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    if ((a3 & 1) == 0)
    {
      v11 = v9;
      v10 = &off_1F4D51488;
      v12 = 1;
      goto LABEL_8;
    }

    v10 = &off_1F4D51488;
  }

  v11 = v9;
  v12 = sub_1D16BE21C();
LABEL_8:
  swift_getObjectType();
  (v10[11])(v12);
  v13 = v11;
  v14 = sub_1D16BE38C(a3 & 1, a4 & 1);
  (v10[2])(v14);

  v15 = v13;
  sub_1D16BE568(v15, v10);
  (v10[20])();

  [v15 setContentMode_];
  v16 = [v5 visualStylingProviderForCategory_];
  if (a3)
  {
    v17 = (v10[22])();
    v18 = [v5 isSelected];
    v19 = v18;
    if (v16)
    {
      if (v18)
      {
        v20 = v17;
        v61 = v16;
        v21 = v16;
        v22 = sub_1D16CC494();
        v69 = sub_1D16BB9E8;
        v70 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D16BBB64;
        v68 = &block_descriptor_88;
        v62 = a2;
        v23 = _Block_copy(&aBlock);

        [v21 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];
        sub_1D16C2904(0xD000000000000014, 0x80000001D16D3E90, 1);

        v16 = v61;
        v24 = v23;
        a2 = v62;
        _Block_release(v24);
      }

      else
      {
        v69 = sub_1D16BB9E8;
        v70 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D16BBB64;
        v68 = &block_descriptor_91;
        v35 = _Block_copy(&aBlock);
        v22 = v17;
        v36 = v16;

        [v36 automaticallyUpdateView:v22 withStyle:0 andObserverBlock:v35];

        _Block_release(v35);
      }
    }

    else
    {
      if (v18)
      {
        v31 = 0x80000001D16D3E90;
      }

      else
      {
        v31 = 0;
      }

      if (v18)
      {
        v32 = 0xD000000000000014;
      }

      else
      {
        v32 = 0;
      }

      sub_1D16C2904(v32, v31, v19);
    }

    v37 = (v10[23])();
    v38 = [v5 isSelected];
    if (v38)
    {
      v39 = 0xD000000000000016;
    }

    else
    {
      v39 = 1;
    }

    if (v38)
    {
      v40 = 0x80000001D16D3E70;
    }

    else
    {
      v40 = 0;
    }

    if (v37)
    {
      if (v16)
      {
        if (v38)
        {
          v41 = v37;
          v42 = a2;
          v43 = v16;
          v44 = v41;
          v45 = sub_1D16CC494();
          v69 = sub_1D16BB9E8;
          v70 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v66 = 1107296256;
          v67 = sub_1D16BBB64;
          v68 = &block_descriptor_82;
          v46 = _Block_copy(&aBlock);

          [v43 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];
          sub_1D16C2904(0xD000000000000016, 0x80000001D16D3E70, 1);

          a2 = v42;
          _Block_release(v46);
        }

        else
        {
          v69 = sub_1D16BB9E8;
          v70 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v66 = 1107296256;
          v67 = sub_1D16BBB64;
          v68 = &block_descriptor_85;
          v51 = _Block_copy(&aBlock);
          v52 = v37;
          v53 = v16;
          v54 = v52;

          [v53 automaticallyUpdateView:v54 withStyle:1 andObserverBlock:v51];

          _Block_release(v51);
        }
      }

      else
      {
        sub_1D16C2904(v39, v40, v38);
      }
    }

    else
    {
      sub_1D16C2904(v39, v40, v38);
    }

    v55 = v10[5];

    v55(a1, a2);
  }

  else
  {
    v25 = [v5 isSelected];
    v26 = v25;
    if (v16)
    {
      if (v25)
      {
        v27 = v15;
        v28 = v16;
        v63 = a2;
        v29 = sub_1D16CC494();
        v69 = sub_1D16BB9E8;
        v70 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D16BBB64;
        v68 = &block_descriptor_76;
        v30 = _Block_copy(&aBlock);

        [v28 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];
        sub_1D16C2904(0xD000000000000016, 0x80000001D16D3E70, 1);

        _Block_release(v30);
        a2 = v63;
      }

      else
      {
        v69 = sub_1D16BB9E8;
        v70 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D16BBB64;
        v68 = &block_descriptor_79;
        v47 = _Block_copy(&aBlock);
        v48 = v15;
        v49 = v16;

        [v49 automaticallyUpdateView:v48 withStyle:1 andObserverBlock:v47];

        _Block_release(v47);
      }
    }

    else
    {
      if (v25)
      {
        v33 = 0x80000001D16D3E70;
      }

      else
      {
        v33 = 0;
      }

      if (v25)
      {
        v34 = 0xD000000000000016;
      }

      else
      {
        v34 = 1;
      }

      sub_1D16C2904(v34, v33, v26);
    }

    sub_1D16B55B0(a1, a2);
    (v10[8])(v50);
  }
}

uint64_t sub_1D16BE21C()
{
  v1 = sub_1D16CC1F4();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isLimitingTitleToSingleLineForAccessibility])
  {
    return 1;
  }

  v7 = [v0 subtitle];
  if (!v7)
  {
    return 3;
  }

  v8 = v7;
  v9 = sub_1D16CC4A4();
  v11 = v10;

  v16[0] = v9;
  v16[1] = v11;
  sub_1D16CC1E4();
  sub_1D16C2810();
  v12 = sub_1D16CC5C4();
  v14 = v13;
  (*(v2 + 8))(v5, v1);

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

id sub_1D16BE38C(char a1, char a2)
{
  v3 = v2;
  v5 = sub_1D16BF380(v2, a2);
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v7 = *MEMORY[0x1E69DDD90];
  if (a1)
  {
    v8 = MEMORY[0x1E69DB970];
  }

  else
  {
    v8 = MEMORY[0x1E69DB978];
  }

  v9 = *v8;
  v10 = objc_opt_self();
  v11 = *MEMORY[0x1E69DB8C8];
  v12 = v7;
  result = [v10 _preferredFontDescriptorWithTextStyle_addingSymbolicTraits_design_weight_compatibleWithTraitCollection_];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() fontWithDescriptor:result size:0.0];
    v16 = [v3 contentMetrics];
    if (!v16)
    {
      v21 = v5;
      v22 = v12;
      goto LABEL_11;
    }

    v17 = v16;
    [v16 metricsScaleFactor];
    v19 = v18;

    if (v19 >= 1.0)
    {
      v21 = v14;
      v22 = v6;
      v6 = v12;
      v14 = v5;
      goto LABEL_11;
    }

    result = [v15 _fontScaledByScaleFactor_];
    if (result)
    {
      v20 = result;

      v21 = v6;
      v22 = v12;
      v6 = v14;
      v14 = v15;
      v15 = v20;
LABEL_11:

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D16BE568(uint64_t a1, uint64_t a2)
{
  if ([v2 supportsAccessibilityContentSizeCategories] && (v4 = objc_msgSend(v2, sel_traitCollection), v5 = objc_msgSend(v4, sel_preferredContentSizeCategory), v4, LOBYTE(v4) = sub_1D16CC544(), v5, (v4 & 1) != 0))
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 112))(0, ObjectType, a2);
  }

  else
  {
    v8 = swift_getObjectType();
    (*(a2 + 112))(1, v8, a2);
    return (*(a2 + 136))(v8, a2, 0.7);
  }
}

id sub_1D16BE678()
{
  v1 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v1 == 1)
  {
    v2 = 0;
    v1 = 0;
  }

  else
  {
    v2 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 16];
    v3 = v2;
    v4 = v1;
  }

  v5 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v5 == 1)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 16];
    v7 = v6;
    v8 = v5;
  }

  v9 = [v0 subviews];
  sub_1D168EE64(0, &qword_1EC640AD8, 0x1E69DD250);
  v10 = sub_1D16CC4F4();

  if (v10 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D16CC6A4())
  {
    v12 = 0;
    while ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1D388E7D0](v12, v10);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_30;
      }

LABEL_17:
      if (v1 && v13 == v1)
      {

        return v1;
      }

      if (v2 && v13 == v2)
      {

        return v2;
      }

      if (v5 && v13 == v5)
      {

        return v5;
      }

      if (v6 && v13 == v6)
      {

        return v6;
      }

      ++v12;
      if (v14 == i)
      {

        goto LABEL_34;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v13 = *(v10 + 8 * v12 + 32);
    v14 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_34:
  return 0;
}

id sub_1D16BE8C8(char a1, void *a2)
{
  v5 = &selRef_ensureGaussianBlurFilter;
  if (([v2 isResizing] & 1) == 0)
  {
    v6 = sub_1D16BC804();
    v7 = [v6 countForObject_];

    if (v7 <= 0)
    {
      v5 = &selRef_removeGaussianBlurFilter;
    }
  }

  [a2 *v5];
  if (a1)
  {
    v8 = [v2 gridSizeClass];
    v9 = CCUINumberOfRowsForGridSizeClass(v8);
    v10 = CCUINumberOfColumnsForGridSizeClass(v8);
    if (v9 >= 2)
    {
      v17 = v10;
      v18 = [v2 supportsAccessibilityContentSizeCategories];
      v19 = 0.0;
      if ((v18 & 1) == 0)
      {
        v11 = 0;
        goto LABEL_37;
      }

      v20 = [v2 traitCollection];
      v21 = [v20 preferredContentSizeCategory];

      LOBYTE(v20) = sub_1D16CC544();
      v11 = 0;
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }

      v19 = 0.0;
      if (v17 < 2)
      {
        goto LABEL_37;
      }
    }

    else if (v10 <= 1)
    {
      v11 = 0;
LABEL_19:
      v19 = 0.0;
      goto LABEL_37;
    }

    if ([v2 isExpanded])
    {
      v11 = 1;
      goto LABEL_19;
    }

    if ([v2 isEnabled])
    {
      v23 = [v2 isRedacted];
      v19 = 0.12;
      if (!v23)
      {
        v19 = 1.0;
      }
    }

    else
    {
      [v2 disabledContentAlpha];
    }

    v11 = 1;
LABEL_37:
    [a2 setAlpha_];
    result = [v2 isResizing];
    if (!result)
    {
      return result;
    }

    v25 = 0.0;
    if (v11)
    {
      return [a2 setGaussianBlurRadius_];
    }

    goto LABEL_39;
  }

  if ([v2 supportsAccessibilityContentSizeCategories] && (v12 = objc_msgSend(v2, sel_traitCollection), v13 = objc_msgSend(v12, sel_preferredContentSizeCategory), v12, LOBYTE(v12) = sub_1D16CC544(), v13, (v12 & 1) != 0))
  {
    v14 = 0;
    v15 = 0.0;
  }

  else
  {
    v16 = CCUINumberOfRowsForGridSizeClass([v2 gridSizeClass]);
    v15 = 0.0;
    if (v16 < 2)
    {
      v14 = 0;
    }

    else if ([v2 isExpanded])
    {
      v14 = 1;
      v15 = 0.0;
    }

    else
    {
      if ([v2 isEnabled])
      {
        v22 = [v2 isRedacted];
        v15 = 0.12;
        if (!v22)
        {
          v15 = 1.0;
        }
      }

      else
      {
        [v2 disabledContentAlpha];
      }

      v14 = 1;
    }
  }

  [a2 setAlpha_];
  result = [v2 isResizing];
  if (result)
  {
    v25 = 0.0;
    if (v14)
    {
      return [a2 setGaussianBlurRadius_];
    }

LABEL_39:
    v26 = [v2 traitCollection];
    sub_1D16B3D94();
    sub_1D16CC534();

    v25 = v27;
    if (v28 == 2)
    {
      v25 = 0.0;
    }

    return [a2 setGaussianBlurRadius_];
  }

  return result;
}

uint64_t sub_1D16BEC60(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D16C28F8;
  *(v7 + 24) = v6;
  v11[4] = sub_1D16B38E4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D16C3318;
  v11[3] = &block_descriptor_73;
  v8 = _Block_copy(v11);

  v9 = a1;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_1D16BEE04(uint64_t a1, uint64_t a2, id a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong blurPocketRemovalAnimationGeneration] == a3 && (objc_msgSend(v5, sel_isResizing) & 1) == 0 && (v6 = OBJC_IVAR___CCUIControlTemplateView_blurPocket, *&v5[OBJC_IVAR___CCUIControlTemplateView_blurPocket]))
    {

      sub_1D16BEEC4();

      *&v5[v6] = 0;
    }

    else
    {
    }
  }
}

uint64_t sub_1D16BEEC4()
{
  v1 = v0[5];
  if (v1)
  {
    [v1 removeFromSuperlayer];
    v2 = v0[5];
  }

  else
  {
    v2 = 0;
  }

  v0[5] = 0;

  v3 = v0[8];
  if (v3)
  {
    [v3 removeFromSuperlayer];
    v4 = v0[8];
  }

  else
  {
    v4 = 0;
  }

  v0[8] = 0;

  v5 = v0[6];
  v0[6] = 0;

  v6 = v0[7];
  v0[7] = 0;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D16BEF5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1D16BEFB0()
{
  [v0 setIsLimitingTitleToSingleLineForAccessibility_];
  sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
  sub_1D16B5288(&selRef_subtitle, sub_1D16BD740, sub_1D16BD698);
  v1 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v2 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v2 != 1)
  {
    v3 = *(v1 + 1);
    v4 = *(v1 + 2);
    sub_1D16C2014(*&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v3, v4);
    v5 = v2;
    if (v2)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = sub_1D16BE38C(1, 1);
      (*(v3 + 16))(v8, ObjectType, v3);
      sub_1D16BE568(v6, v3);
    }

    sub_1D168E910(v2, v3, v4);
  }

  v9 = &v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v10 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v10 != 1)
  {
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    sub_1D16C2014(*&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v11, v12);
    v13 = v10;
    if (v10)
    {
      v14 = v13;
      v15 = swift_getObjectType();
      v16 = sub_1D16BE38C(1, 0);
      (*(v11 + 16))(v16, v15, v11);
      sub_1D16BE568(v14, v11);
    }

    sub_1D168E910(v10, v11, v12);
  }

  v17 = *v1;
  if (*v1 != 1)
  {
    v18 = *(v1 + 1);
    v19 = *(v1 + 2);
    v20 = *(v1 + 3);
    sub_1D16C2014(*v1, v18, v19);
    v21 = v19;
    if (v19)
    {
      v22 = v21;
      v23 = swift_getObjectType();
      v24 = sub_1D16BE38C(0, 1);
      (*(v20 + 16))(v24, v23, v20);
      sub_1D16BE568(v22, v20);
    }

    sub_1D168E910(v17, v18, v19);
  }

  v25 = *v9;
  if (*v9 != 1)
  {
    v26 = *(v9 + 1);
    v27 = *(v9 + 2);
    v28 = *(v9 + 3);
    sub_1D16C2014(*v9, v26, v27);
    v29 = v27;
    if (v27)
    {
      v30 = v29;
      v31 = swift_getObjectType();
      v32 = sub_1D16BE38C(0, 0);
      (*(v28 + 16))(v32, v31, v28);
      sub_1D16BE568(v30, v28);
    }

    sub_1D168E910(v25, v26, v27);
  }

  return [v0 setNeedsLayout];
}

id sub_1D16BF380(void *a1, char a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (![a1 supportsAccessibilityContentSizeCategories] || (v6 = objc_msgSend(a1, sel_traitCollection), v7 = objc_msgSend(v6, sel_preferredContentSizeCategory), v6, LOBYTE(v6) = sub_1D16CC544(), v7, (v6 & 1) == 0))
  {
    v8 = MEMORY[0x1E69DDC58];
    if ((a2 & 1) == 0)
    {
      v8 = MEMORY[0x1E69DDC50];
    }

    v9 = *v8;
    v10 = sub_1D16CC554();
    if (v10)
    {
      v11 = v5;
    }

    else
    {
      v11 = v9;
    }

    if (v10)
    {
      v5 = v9;
    }
  }

  return v5;
}

id sub_1D16BF4E4(id result)
{
  v2 = v1[OBJC_IVAR___CCUIControlTemplateView_isLimitingTitleToSingleLineForAccessibility];
  v1[OBJC_IVAR___CCUIControlTemplateView_isLimitingTitleToSingleLineForAccessibility] = result;
  if (v2 != (result & 1))
  {
    v3 = v1;
    v4 = sub_1D16BE21C();
    v5 = &v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v6 = *&v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v6 != 1)
    {
      v7 = *(v5 + 1);
      v8 = *(v5 + 2);
      sub_1D16C2014(*&v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v7, v8);
      v9 = v6;
      if (v6)
      {
        v10 = v9;
        ObjectType = swift_getObjectType();
        (*(v7 + 88))(v4, ObjectType, v7);
      }

      sub_1D168E910(v6, v7, v8);
    }

    v12 = &v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    v13 = *&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    if (v13 != 1)
    {
      v14 = *(v12 + 1);
      v15 = *(v12 + 2);
      sub_1D16C2014(*&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v14, v15);
      v16 = v13;
      if (v13)
      {
        v17 = v16;
        v18 = swift_getObjectType();
        (*(v14 + 88))(v4, v18, v14);
      }

      sub_1D168E910(v13, v14, v15);
    }

    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_1D16BF66C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView_wrappedView] = a1;
  v4 = a1;
  [v4 bounds];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, sel_initWithFrame_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641630, &qword_1D16D2188);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D16D1ED0;
  *(v6 + 56) = sub_1D168EE64(0, &qword_1EC640AD8, 0x1E69DD250);
  *(v6 + 32) = v4;
  v7 = v5;
  v8 = v4;
  v9 = v7;
  v10 = sub_1D16CC4E4();

  [v9 setAutomationElements_];

  [v9 addSubview_];
  return v9;
}

id sub_1D16BF8E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D16BF91C(uint64_t a1, void *a2)
{
  v4 = sub_1D16CC234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D16BEEC4();
  v83 = [a2 _shouldReverseLayoutDirection];
  v8 = [a2 layer];
  swift_unknownObjectWeakAssign();
  [a2 bounds];
  v10 = v9;
  v11 = *(a1 + 16);
  v12 = v11 * 0.5;
  v13 = -(v11 * 0.5);
  v86.m11 = 0.0;
  v86.m12 = -2.68156159e154;
  sub_1D16CC624();

  v86.m11 = -2.31584178e77;
  *&v86.m12 = 0x80000001D16D3DA0;
  sub_1D16CC224();
  v14 = sub_1D16CC214();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1D388E650](v14, v16);

  MEMORY[0x1D388E650](0x72646B6361623A3ELL, 0xEA0000000000706FLL);
  m11 = v86.m11;
  v18 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  [v18 setBounds_];
  [v18 setCaptureOnly_];
  v80 = *&m11;
  v19 = sub_1D16CC494();
  [v18 setGroupName_];

  v20 = sub_1D16BE678();
  v82 = a2;
  v78 = a1;
  if (v20)
  {
    v21 = v20;
    v22 = [v20 layer];
    [v8 insertSublayer:v18 below:v22];

    v23 = v8;
  }

  else
  {
    v23 = v8;
    v24 = [a2 backgroundView];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 layer];
      [v8 insertSublayer:v18 above:v26];
    }

    else
    {
      [v8 insertSublayer:v18 below:0];
    }
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
  [v27 setSourceLayer_];
  [v27 setUsesNormalizedCoordinates_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641648, &unk_1D16D2198);
  v28 = swift_allocObject();
  v85 = xmmword_1D16D2070;
  *(v28 + 16) = xmmword_1D16D2070;
  v29 = objc_opt_self();
  v30 = v29;
  if (v83)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  if (v83)
  {
    v13 = v11 * 0.5;
  }

  *(v28 + 32) = [v29 valueWithCGPoint_];
  *(v28 + 40) = [v30 &selRef:v31 :1.0resetPackage + 5];
  v84 = sub_1D168EE64(0, &unk_1EC641650, 0x1E696B098);
  v32 = sub_1D16CC4E4();

  [v27 setSourcePoints_];

  [v27 setAppliesScale_];
  [v27 setAppliesRotation_];
  [v27 setDuration_];
  CATransform3DMakeTranslation(&v86, v13, 0.0, 0.0);
  [v18 setTransform_];
  v33 = sub_1D16CC494();
  [v18 addAnimation:v27 forKey:v33];

  sub_1D16C254C(v18, v23);
  v34 = v78;
  v35 = *(v78 + 40);
  v81 = v18;
  *(v78 + 40) = v18;

  v36 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v37 = sub_1D16CC494();

  [v36 setGroupName_];

  v38 = v36;
  [v38 setBounds_];
  [v23 addSublayer_];
  v39 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
  [v39 setSourceLayer_];
  [v39 setUsesNormalizedCoordinates_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641648, &unk_1D16D2198);
  v40 = swift_allocObject();
  *(v40 + 16) = v85;
  v41 = objc_opt_self();
  *(v40 + 32) = [v41 valueWithCGPoint_];
  *(v40 + 40) = [v41 valueWithCGPoint_];
  v42 = sub_1D16CC4E4();

  [v39 setSourcePoints_];

  [v39 setAppliesScale_];
  [v39 setAppliesRotation_];
  [v39 setDuration_];
  CATransform3DMakeTranslation(&v86, v13, 0.0, 0.0);
  [v38 setTransform_];
  v43 = sub_1D16CC494();
  [v38 addAnimation:v39 forKey:v43];

  sub_1D16C254C(v38, v23);
  v44 = *(v34 + 64);
  *(v34 + 64) = v38;
  v79 = v38;

  v45 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v45 setBounds_];
  v46 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v46 setBounds_];
  [v45 addSublayer_];
  v47 = [objc_opt_self() blackColor];
  v48 = [v47 CGColor];

  [v46 setBackgroundColor_];
  v49 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
  v50 = v45;
  [v49 setSourceLayer_];
  [v49 setUsesNormalizedCoordinates_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641648, &unk_1D16D2198);
  v51 = swift_allocObject();
  *(v51 + 16) = v85;
  v52 = v23;
  v53 = objc_opt_self();
  *(v51 + 32) = [v53 valueWithCGPoint_];
  *(v51 + 40) = [v53 valueWithCGPoint_];
  v54 = sub_1D16CC4E4();

  [v49 setSourcePoints_];

  [v49 setAppliesScale_];
  [v49 setAppliesRotation_];
  [v49 setDuration_];
  CATransform3DMakeTranslation(&v86, v13, 0.0, 0.0);
  [v46 setTransform_];
  v80 = "<ControlTemplateView:";
  v55 = sub_1D16CC494();
  [v46 addAnimation:v49 forKey:v55];

  sub_1D16C254C(v46, v52);
  v56 = *(v34 + 56);
  *(v34 + 56) = v46;
  v77 = v46;

  v57 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  if (qword_1EC640B80 != -1)
  {
    swift_once();
  }

  v58 = sub_1D16CC494();
  [v57 setName_];

  v59 = sub_1D16CC244();
  [v57 setValue:v59 forKey:*MEMORY[0x1E6979BA8]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641648, &unk_1D16D2198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D16D2080;
  *(inited + 32) = v57;
  v76 = v57;
  sub_1D16C0738(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v61 = sub_1D16CC4E4();

  [v50 setFilters_];

  [v50 setDelegate_];
  v62 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
  v63 = v79;
  [v62 setSourceLayer_];
  [v62 setUsesNormalizedCoordinates_];
  v64 = swift_allocObject();
  *(v64 + 16) = v85;
  v65 = objc_opt_self();
  *(v64 + 32) = [v65 valueWithCGPoint_];
  *(v64 + 40) = [v65 valueWithCGPoint_];
  v66 = sub_1D16CC4E4();

  [v62 setSourcePoints_];

  [v62 setAppliesScale_];
  [v62 setAppliesRotation_];
  [v62 setDuration_];
  v67 = -(v12 + (v11 + v12) * -0.5);
  if (!v83)
  {
    v67 = v12 + (v11 + v12) * -0.5;
  }

  CATransform3DMakeTranslation(&v86, v67, 0.0, 0.0);
  [v50 setTransform_];
  v68 = sub_1D16CC494();
  [v50 addAnimation:v62 forKey:v68];

  sub_1D16C254C(v50, v52);
  v69 = *(v34 + 48);
  *(v34 + 48) = v45;

  [v63 setMask_];
  v70 = *(v34 + 48);
  if (v70)
  {
    v71 = *(v34 + 24);
    if (v71 <= 0.0)
    {
      v71 = 0.0;
    }

    if (v71 <= 1.0)
    {
      v72 = v71;
    }

    else
    {
      v72 = 1.0;
    }

    v73 = v70;
    *&v74 = v72;
    [v73 setOpacity_];
  }
}

char *sub_1D16C0738(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D16CC6A4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D16C1C38(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1D388E7D0](i, a1);
        sub_1D168EE64(0, &qword_1EC640AC0, 0x1E6979378);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D16C1C38((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1D16901B4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1D168EE64(0, &qword_1EC640AC0, 0x1E6979378);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D16C1C38((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1D16901B4(v12, (v3 + 32 * v11 + 32));
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

uint64_t sub_1D16C0934()
{
  MEMORY[0x1D388F430](v0 + 4);

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

void sub_1D16C098C()
{
  v1 = v0;
  sub_1D16BC878();
  if ((v2 & 1) == 0)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    if (qword_1EC640B80 != -1)
    {
      swift_once();
    }

    v4 = sub_1D16CC494();
    [v3 setName_];

    v5 = [v1 layer];
    v6 = [v5 filters];

    if (v6)
    {
      v7 = sub_1D16CC4F4();
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v15 = sub_1D168EE64(0, &qword_1EC640AC0, 0x1E6979378);
    *&v14 = v3;
    sub_1D16901B4(&v14, v13);
    v8 = *(v7 + 16);
    v9 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v7;
    if (!isUniquelyReferenced_nonNull_native || v8 >= *(v7 + 24) >> 1)
    {
      v16 = sub_1D16C1944(isUniquelyReferenced_nonNull_native, v8 + 1, 1, v7);
    }

    sub_1D16C1D68(0, 0, 1, v13);
    v11 = [v1 layer];
    v12 = sub_1D16CC4E4();

    [v11 setFilters_];
  }
}

void sub_1D16C0B94(void *a1)
{
  v1 = a1;
  sub_1D16C098C();
}

void sub_1D16C0BDC()
{
  v1 = v0;
  v2 = [v0 layer];
  v3 = [v2 filters];

  v4 = MEMORY[0x1E69E7CA0];
  if (v3)
  {
    v24 = v1;
    v5 = sub_1D16CC4F4();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      v3 = MEMORY[0x1E69E7CC0];
      v9 = &qword_1EC640AC0;
      v25 = v5;
      while (1)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        sub_1D16C27B0(v8, v28);
        sub_1D16C27B0(v28, v27);
        sub_1D168EE64(0, v9, 0x1E6979378);
        if (!swift_dynamicCast())
        {
          goto LABEL_20;
        }

        v10 = v6;
        v11 = v9;
        v12 = v4;
        v13 = [v26 name];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1D16CC4A4();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        if (qword_1EC640B80 == -1)
        {
          if (!v17)
          {
            goto LABEL_19;
          }
        }

        else
        {
          swift_once();
          if (!v17)
          {
LABEL_19:

            v4 = v12;
            v9 = v11;
            v6 = v10;
            v5 = v25;
LABEL_20:
            sub_1D16901B4(v28, v27);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = v3;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D16C1C38(0, v3[2] + 1, 1);
              v3 = v29;
            }

            v21 = v3[2];
            v20 = v3[3];
            if (v21 >= v20 >> 1)
            {
              sub_1D16C1C38((v20 > 1), v21 + 1, 1);
              v3 = v29;
            }

            v3[2] = v21 + 1;
            sub_1D16901B4(v27, &v3[4 * v21 + 4]);
            goto LABEL_6;
          }
        }

        if (v15 == qword_1EC640B90 && v17 == *algn_1EC640B98)
        {

          v4 = v12;
          v9 = v11;
          v6 = v10;
          v5 = v25;
        }

        else
        {
          v18 = sub_1D16CC6F4();

          v4 = v12;
          v9 = v11;
          v6 = v10;
          v5 = v25;
          if ((v18 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_6:
        ++v7;
        v8 += 32;
        if (v6 == v7)
        {
          goto LABEL_26;
        }
      }
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v1 = v24;
  }

  v22 = [v1 layer];
  if (v3)
  {
    v23 = sub_1D16CC4E4();
  }

  else
  {
    v23 = 0;
  }

  [v22 setFilters_];
}