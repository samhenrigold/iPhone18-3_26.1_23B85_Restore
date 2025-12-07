id sub_188C5B6D8(char a1)
{
  v3 = [v1 button];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 appearanceData];

    if (v5)
    {
      v6 = &selRef_compactBackIndicatorImage;
      if ((a1 & 1) == 0)
      {
        v6 = &selRef_backIndicatorImage;
      }

      v7 = [v5 *v6];

      if (v7)
      {
        goto LABEL_12;
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = [Strong backIndicatorImage], swift_unknownObjectRelease(), !v7))
  {
    v9 = ((a1 & 1) != 0 ? &selRef_compactBackIndicatorImage : &selRef_backIndicatorImage);
    v10 = [objc_opt_self() standardBackButtonData];
    v7 = [v10 *v9];

    if (!v7)
    {
      return 0;
    }
  }

LABEL_12:
  v11 = [v7 imageFlippedForRightToLeftLayoutDirection];

  return v11;
}

char *sub_188C5B948(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskExtensionView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setUserInteractionEnabled_];
  [v12 setCompositingMode_];
  v13 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView;
  [*&v12[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v12[v13];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 whiteColor];
  [v16 setTintColor_];

  [v12 addSubview_];
  v18 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskExtensionView;
  v19 = *&v12[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskExtensionView];
  v20 = [v15 whiteColor];
  [v19 setBackgroundColor_];

  [*&v12[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 addSubview_];
  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18A64B810;
  v23 = [v12 leadingAnchor];
  v24 = [*&v12[v13] leadingAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor_];

  *(v22 + 32) = v25;
  v26 = [*&v12[v18] trailingAnchor];
  v27 = [v12 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 40) = v28;
  v29 = [v12 topAnchor];
  v30 = [*&v12[v18] topAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v22 + 48) = v31;
  v32 = [v12 bottomAnchor];

  v33 = [*&v12[v18] bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v22 + 56) = v34;
  sub_188A34624(0, &qword_1ED48CFF0, 0x1E69977A0);
  v35 = sub_18A4A7518();

  [v21 activateConstraints_];

  return v12;
}

id sub_188C5BD44(char a1)
{
  v3 = [v1 button];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 appearanceData];

    if (v5)
    {
      v6 = &selRef_compactBackIndicatorTransitionMaskImage;
      if ((a1 & 1) == 0)
      {
        v6 = &selRef_backIndicatorTransitionMaskImage;
      }

      v7 = [v5 *v6];

      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = [Strong backIndicatorMaskImage], swift_unknownObjectRelease(), !v7))
  {
    v9 = [objc_opt_self() standardBackButtonData];
    v7 = [v9 compactBackIndicatorTransitionMaskImage];

    if (!v7)
    {
      return 0;
    }
  }

LABEL_9:
  v10 = [v7 imageFlippedForRightToLeftLayoutDirection];

  return v10;
}

void sub_188C5C00C(void *a1, uint64_t a2)
{
  v3 = v2;
  v64 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_appearanceDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong compactMetrics];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = v7;
  v66 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_style;
  v67 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  v10 = &selRef_showAlternateImage_;
  v65 = v7;
  while (1)
  {
    v11 = *(&unk_1EFAB9200 + v8 + 32);
    if (a2)
    {
      v12 = [a1 backButtonBackgroundImageForState:*(&unk_1EFAB9200 + v8 + 32) barMetrics:v9];
      if (v12)
      {
        break;
      }

      v13 = [v3 button];
      if (!v13 || (v14 = v13, v15 = [v13 appearanceData], v14, !v15))
      {
        v20 = swift_unknownObjectWeakLoadStrong();
        if (!v20)
        {
          goto LABEL_25;
        }

        v15 = [v20 appearanceStorage];
        swift_unknownObjectRelease();
        v17 = [v15 backButtonBackgroundImageForState:v11 isMini:v9];
        goto LABEL_24;
      }

      if (v11)
      {
        v16 = 1;
      }

      else
      {
        v16 = v11 & 2;
      }

      goto LABEL_12;
    }

    v12 = [a1 backgroundImageForState:*(&unk_1EFAB9200 + v8 + 32) style:*&v3[v66] barMetrics:v9];
    if (v12)
    {
      break;
    }

    v18 = [v3 button];
    if (v18)
    {
      v19 = v18;
      v15 = [v18 appearanceData];

      if (v15)
      {
        if (v11)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11 & 2;
        }

LABEL_12:
        v17 = [v15 backgroundImageForState_];
        goto LABEL_24;
      }
    }

    v21 = swift_unknownObjectWeakLoadStrong();
    if (!v21)
    {
      goto LABEL_25;
    }

    v15 = [v21 appearanceStorage];
    swift_unknownObjectRelease();
    if (!v15)
    {
      goto LABEL_25;
    }

    v17 = [v15 backgroundImageForState:v11 style:*&v3[v66] isMini:v9];
LABEL_24:
    v22 = v17;

    if (v22)
    {
      goto LABEL_27;
    }

LABEL_25:
    v12 = [a1 _backgroundImageForState_compact_type_];
    if (v12)
    {
      break;
    }

LABEL_41:
    v8 += 8;
    if (v8 == 24)
    {
      swift_beginAccess();
      v48 = *&v3[v67];
      if (*(v48 + 16) && (v49 = sub_188C4585C(0), (v50 & 1) != 0))
      {
        v51 = *(*(v48 + 56) + 8 * v49);
        swift_endAccess();
        v52 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView;
        v53 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
        if (v53)
        {
          v54 = v51;
          goto LABEL_51;
        }

        v57 = objc_allocWithZone(UIImageView);
        v58 = v51;
        v59 = [v57 init];
        [v59 setTranslatesAutoresizingMaskIntoConstraints_];
        [v59 setContentMode_];

        v60 = [v3 button];
        if (v60)
        {
          v61 = v60;
          [v60 insertSubview:v59 atIndex:0];
        }

        v62 = *&v3[v52];
        *&v3[v52] = v59;

        v53 = *&v3[v52];
        if (v53)
        {
LABEL_51:
          v63 = v53;
          [v63 setImage_];
        }

        else
        {
          v51 = v58;
        }
      }

      else
      {
        swift_endAccess();
        v55 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView;
        v56 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
        if (!v56)
        {
          return;
        }

        [v56 removeFromSuperview];
        v51 = *&v3[v55];
        *&v3[v55] = 0;
      }

      return;
    }
  }

  v22 = v12;
LABEL_27:
  [v22 v10[289]];
  if (v24 == 0.0 && v23 == 0.0)
  {
LABEL_40:

    goto LABEL_41;
  }

  v25 = a1;
  v26 = a2;
  swift_beginAccess();
  v27 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v3;
  v30 = isUniquelyReferenced_nonNull_native;
  v31 = *&v29[v67];
  v32 = v11;
  v33 = v29;
  *&v29[v67] = 0x8000000000000000;
  v34 = v32;
  v35 = sub_188C4585C(v32);
  v37 = v31[2];
  v38 = (v36 & 1) == 0;
  v39 = __OFADD__(v37, v38);
  v40 = v37 + v38;
  if (!v39)
  {
    v41 = v36;
    if (v31[3] >= v40)
    {
      if ((v30 & 1) == 0)
      {
        v47 = v35;
        sub_188FA6B0C();
        v35 = v47;
      }
    }

    else
    {
      sub_1890C10B8(v40, v30);
      v35 = sub_188C4585C(v34);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_57;
      }
    }

    v3 = v33;
    if (v41)
    {
      v43 = v31[7];
      v44 = *(v43 + 8 * v35);
      *(v43 + 8 * v35) = v27;
    }

    else
    {
      v31[(v35 >> 6) + 8] |= 1 << v35;
      *(v31[6] + 8 * v35) = v34;
      *(v31[7] + 8 * v35) = v27;
      v45 = v31[2];
      v39 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v39)
      {
        goto LABEL_56;
      }

      v31[2] = v46;
    }

    *&v33[v67] = v31;
    swift_endAccess();
    a2 = v26;
    a1 = v25;
    v9 = v65;
    v10 = &selRef_showAlternateImage_;
    goto LABEL_40;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_18A4A87A8();
  __break(1u);
}

id sub_188C5C5BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled;
  v3 = v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled];
  if ((v3 & 1) != 0 || (v4 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView]) == 0)
  {
    v36 = 0;
  }

  else
  {
    v36 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
    v5 = v4;
  }

  v6 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v6)
  {
    v37 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
    if (v7)
    {
      v37 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      v8 = v7;
    }

    else
    {
      v37 = 0;
    }
  }

  v9 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask;
  v10 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask];
  v11 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  v38 = v10;
  v39 = v11;
  if (v3 && (v12 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView]) != 0)
  {
    v40 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
    v13 = v12;
  }

  else
  {
    v40 = 0;
  }

  v14 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v15 = v11;
  v16 = v6;
  v17 = v10;
  v18 = 0;
LABEL_15:
  if (v18 <= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = v18;
  }

  while (1)
  {
    if (v18 == 5)
    {
      v32 = v9;
      v33 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0, &qword_18A653940);
      swift_arrayDestroy();
      if (v14 >> 62)
      {
        goto LABEL_38;
      }

      v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    if (v19 == v18)
    {
      break;
    }

    v20 = v35[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      MEMORY[0x18CFE2450]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      v14 = v34;
      goto LABEL_15;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v22 = sub_18A4A7F68();
    if (!v22)
    {
      break;
    }

LABEL_26:
    v23 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v24 = sub_188E49300(v23, v14);
      }

      else
      {
        if (v23 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v24 = *(v14 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = [v1 button];
      if (v27)
      {
        v28 = v27;
        [v27 insertSubview:v25 atIndex:v23];
      }

      ++v23;
      if (v26 == v22)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_39:

  v29 = *&v1[v32];
  if (v29)
  {
    [v29 setHidden_];
  }

  result = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
  if (result)
  {
    if (v1[v33])
    {
      v31 = 18;
    }

    else
    {
      v31 = 0;
    }

    return [result setCompositingMode_];
  }

  return result;
}

void sub_188C5C8A4(char a1)
{
  v3 = [v1 button];
  if (v3)
  {
    v4 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v6 _layoutMarginsForButtonBarButton_compact_];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_188C5C9E0(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong backButtonMargin];
    v13 = v12;
    swift_unknownObjectRelease();
    v14 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0.0;
    v14 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v15 = a1;
  v16 = [v6 v14[239]];
  if (v16)
  {
    v17 = v16;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = 0.0;
      if ([v18 respondsToSelector_])
      {
        [v19 _backButtonContentPaddingInButtonBarButton_];
        v20 = v21;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0.0;
    }

    v34 = *&v6[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
    if (v34)
    {
      v35 = v34;
      v36 = [v35 leadingAnchor];
      v37 = [v17 leadingAnchor];
      v38 = [v36 constraintEqualToAnchor:v37 constant:v13 - a4 + v20];

      sub_188C5CE34(v38, 0xD000000000000013, 0x800000018A6A41B0);
      v39 = [v15 leadingAnchor];
      v40 = [v35 trailingAnchor];

      v41 = [v39 constraintEqualToAnchor:v40 constant:a2 + 6.0 - a6];
      sub_188C5CE34(v41, 0xD000000000000017, 0x800000018A6A4210);
    }

    v42 = [v15 trailingAnchor];
    v43 = [v17 trailingAnchor];
    v25 = [v42 constraintLessThanOrEqualToAnchor:v43 constant:-5.0 - v20];

    v33 = 0xD000000000000014;
    v31 = 0x800000018A6A41F0;
    v32 = v25;
    goto LABEL_18;
  }

LABEL_11:
  v22 = *&v6[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  if (v22)
  {
    v15 = v22;
    v23 = [v6 v14[239]];
    if (!v23)
    {
LABEL_19:

      goto LABEL_20;
    }

    v24 = v23;
    v25 = v15;
    v26 = [v25 leadingAnchor];
    v17 = v24;
    v27 = [v17 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:v13 - a4];

    sub_188C5CE34(v28, 0xD000000000000013, 0x800000018A6A41B0);
    v29 = [v25 centerXAnchor];

    v30 = [v17 centerXAnchor];
    v15 = [v29 constraintEqualToAnchor:v30 constant:a4 - a6];

    v31 = 0x800000018A6A41D0;
    v32 = v15;
    v33 = 0xD000000000000013;
LABEL_18:
    sub_188C5CE34(v32, v33, v31);

    goto LABEL_19;
  }

LABEL_20:
  sub_188C5D0B4(&selRef_widthMinimizingConstraint, 0xED00006874646957);
}

void sub_188C5CE34(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_oldConstraints;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16) || (v10 = sub_188B0944C(a2, a3), (v11 & 1) == 0))
  {
    swift_endAccess();
    v13 = 0;
    goto LABEL_6;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  v13 = v12;
  if (([v13 _isEqualToConstraintValue_includingConstant_includeOtherMutableProperties_] & 1) == 0)
  {
LABEL_6:
    v16 = sub_18A4A7258();
    [a1 setIdentifier_];

    v17 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_currentConstraints;
    swift_beginAccess();

    v18 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + v17);
    *(v4 + v17) = 0x8000000000000000;
    sub_188C5D060(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + v17) = v21;
    goto LABEL_7;
  }

  [a1 constant];
  [v13 setConstant_];
  v14 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_currentConstraints;
  swift_beginAccess();
  v13 = v13;

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_188C5D060(v13, a2, a3, v15);

  *(v4 + v14) = v20;
  swift_endAccess();
  swift_beginAccess();

  sub_188C5D2D8(0, a2, a3);
LABEL_7:
  swift_endAccess();
}

void sub_188C5D0B4(SEL *a1, uint64_t a2)
{
  v5 = [v2 button];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 *a1];
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = v7;
  sub_188C5D2D8(v7, 0x657A696D696E696DLL, a2);
  swift_endAccess();
  swift_beginAccess();
  sub_188C5D2D8(0, 0x657A696D696E696DLL, a2);
  swift_endAccess();
}

void sub_188C5D1C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v20;
  }

  else
  {
    v15 = sub_188B0944C(a2, a3);
    v17 = v16;

    if (v17)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v7;
      v21 = *v7;
      if (!v18)
      {
        a6();
        v19 = v21;
      }

      a5(v15, v19);
      *v7 = v19;
    }
  }
}

void sub_188C5D318(char a1, double a2, double a3)
{
  v7 = [v3 button];
  if (!v7)
  {
    return;
  }

  v8 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  if (v8)
  {
    v26 = v7;
    v9 = v8;
    if ([v26 verticallyCentersContents])
    {
      v10 = [v9 centerYAnchor];
      v11 = [v26 centerYAnchor];
      v12 = [v10 constraintEqualToAnchor_];
      v13 = "BIB_CenterY_CenterY";
    }

    else
    {
      if (a1)
      {
        v10 = [v9 lastBaselineAnchor];
        v14 = [v26 layoutMarginsGuide];
        v11 = [v14 bottomAnchor];

        v12 = [v10 constraintEqualToAnchor:v11 constant:-a2];
        v15 = "BIB_Bottom_Bottom";
        v16 = 0xD000000000000015;
LABEL_10:
        v18 = v12;

        sub_188C5CE34(v18, v16, v15 | 0x8000000000000000);
        v19 = v9;
        v20 = [v19 topAnchor];
        v21 = v26;
        v22 = [v21 topAnchor];
        v23 = [v20 constraintGreaterThanOrEqualToAnchor_];

        sub_188C5CE34(v23, 0x5F706F545F424942, 0xEB00000000706F54);
        v24 = [v21 bottomAnchor];

        v25 = [v19 bottomAnchor];
        v27 = [v24 constraintGreaterThanOrEqualToAnchor_];

        sub_188C5CE34(v27, 0xD000000000000011, 0x800000018A6A4150);
        v7 = v27;
        goto LABEL_11;
      }

      v10 = [v9 bottomAnchor];
      v17 = [v26 layoutMarginsGuide];
      v11 = [v17 bottomAnchor];

      v12 = [v10 constraintEqualToAnchor:v11 constant:a3 - a2];
      v13 = "BIB_Bottom_Baseline";
    }

    v15 = v13 - 32;
    v16 = 0xD000000000000013;
    goto LABEL_10;
  }

LABEL_11:
}

void sub_188C5D680()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
    if (v2)
    {
      v29 = v2;
      v3 = v1;
      v4 = [v0 button];
      if (v4)
      {
        v5 = v4;
        v6 = v3;
        v7 = [v6 leadingAnchor];
        v3 = v5;
        v8 = [v3 leadingAnchor];
        v9 = [v7 constraintEqualToAnchor_];

        sub_188C5CE34(v9, 0xD000000000000014, 0x800000018A6A4070);
        v10 = [v6 trailingAnchor];
        v11 = [v3 trailingAnchor];
        v12 = [v10 constraintEqualToAnchor_];

        sub_188C5CE34(v12, 0xD000000000000016, 0x800000018A6A4090);
        v13 = [v6 topAnchor];
        v14 = [v3 topAnchor];
        v15 = [v13 constraintEqualToAnchor_];

        sub_188C5CE34(v15, 0x706F545F6B73614DLL, 0xEC000000706F545FLL);
        v16 = [v6 bottomAnchor];

        v17 = [v3 bottomAnchor];
        v18 = [v16 constraintEqualToAnchor_];

        sub_188C5CE34(v18, 0xD000000000000012, 0x800000018A6A40B0);
        v19 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView;
        v20 = [*&v6[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView] leadingAnchor];
        v21 = v29;
        v22 = [v21 leadingAnchor];
        v23 = [v20 constraintEqualToAnchor_];

        sub_188C5CE34(v23, 0xD00000000000001BLL, 0x800000018A6A40D0);
        v24 = [*&v6[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskExtensionView] leadingAnchor];
        v25 = [v21 trailingAnchor];
        v26 = [v24 constraintEqualToAnchor_];

        sub_188C5CE34(v26, 0xD00000000000001BLL, 0x800000018A6A40F0);
        v27 = [*&v6[v19] centerYAnchor];
        v28 = [v21 centerYAnchor];

        v29 = [v27 constraintEqualToAnchor_];
        sub_188C5CE34(v29, 0xD00000000000001ALL, 0x800000018A6A4110);
      }
    }
  }
}

void *sub_188C5DAF8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

double sub_188C5DCB8(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
  if (v4)
  {
    [v4 setEnabled_];
  }

  v5 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v5)
  {
    [v5 setEnabled_];
  }

  v6 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v6)
  {
    [v6 setEnabled_];
  }

  v7 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && ((a1 & 1) == 0 ? (v9 = 2) : (v9 = 0), v10 = sub_188C4585C(v9), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
    swift_endAccess();
    v14 = *(v2 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView);
    if (v14)
    {
      [v14 setImage_];
    }
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

id sub_188C5DE08(char *a1, void *a2, double a3, double a4, float a5, float a6)
{
  v11 = *&a1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth];
  if (*&a1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider])
  {
    [*&a1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider] minimumBackButtonWidth];
    v15 = v14;
  }

  else
  {
    v16 = [a1 traitCollection];
    v17 = [v16 userInterfaceIdiom];

    if (v17 == 5)
    {
      if (_UISolariumEnabled())
      {
        v15 = 38.0;
      }

      else
      {
        v15 = 34.0;
      }
    }

    else
    {
      v15 = 44.0;
    }
  }

  v18 = 250.0;
  if (v11 > 0.0)
  {
    v18 = v11;
  }

  if (v15 < a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = v15;
  }

  if (v19 < v18)
  {
    v18 = v19;
  }

  *&v12 = a5;
  *&v13 = a6;
  return [a2 backButtonSystemLayoutSizeFittingSize:v18 horizontalFittingPriority:a4 verticalFittingPriority:{v12, v13}];
}

double sub_188C5DF30(void *a1)
{
  v3 = [a1 style];
  *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_style) = v3;
  v4 = [a1 titleTextAttributesForState_];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v6 = sub_18A4A70A8();
  }

  else
  {
    v6 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v7 = [a1 titleTextAttributesForState_];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v9 = sub_18A4A70A8();
  }

  else
  {
    v9 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v10 = [a1 titleTextAttributesForState_];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v12 = sub_18A4A70A8();
  }

  else
  {
    v12 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v13 = (v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes);
  v14 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes);
  v15 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes + 8);
  v16 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes + 16);
  *v13 = v6;
  v13[1] = v9;
  v13[2] = v12;
  sub_188C58BC4(v14, v15, v16);

  return sub_188C5A3BC();
}

unint64_t sub_188C5E0DC()
{
  result = qword_1ED48E360;
  if (!qword_1ED48E360)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E360);
  }

  return result;
}

void sub_188C5E134(char a1)
{
  v2 = v1;
  v4 = [v1 button];
  if (v4)
  {
    v94 = v4;
    if ([v4 isBreadcrumb])
    {
      v5 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton;
      v6 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      if (v6)
      {
        [v6 removeFromSuperview];
        v7 = *&v2[v5];
      }

      else
      {
        v7 = 0;
      }

      *&v2[v5] = 0;

      sub_188C5E9C0();
      goto LABEL_69;
    }
  }

  v8 = [v1 barButtonItem];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _imageForState_compact_type_];

    if (v10)
    {
      sub_188C5E9C0();
      v11 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton;
      v12 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      if (v12)
      {
        [v12 setNeedsLayout];
        v13 = *&v2[v11];
        if (!v13)
        {
LABEL_31:
          v94 = v10;
          v43 = [v94 _hasBaseline];
          v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageHasBaseline] = v43;
          v44 = [v2 button];
          v45 = [v44 appearanceData];

          if (!v45)
          {
            v45 = [objc_opt_self() standardItemDataForStyle_];
          }

          v46 = &selRef_compactImageSymbolConfiguration;
          if ((a1 & 1) == 0)
          {
            v46 = &selRef_imageSymbolConfiguration;
          }

          v47 = [v45 *v46];

          v48 = *&v2[v11];
          if (v48)
          {
            [v48 setImage:v94 forState:0];
            v49 = *&v2[v11];
            if (v49)
            {
              [v49 setPreferredSymbolConfiguration:v47 forImageInState:0];
              v50 = *&v2[v11];
              if (v50)
              {
                [v50 setImage:v94 forState:2];
                v51 = *&v2[v11];
                if (v51)
                {
                  v51[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___guardAgainstDegenerateBaselineCalculation] = 1;
                  v52 = v51;
                  v53 = [v52 _imageView];
                  if (v53)
                  {
                    v54 = v53;
                    objc_opt_self();
                    v55 = swift_dynamicCastObjCClass();
                    if (v55)
                    {
                      [v55 _setGuardAgainstDegenerateBaselineCalculation_];
                      v56 = v54;
                    }

                    else
                    {
                      v56 = v52;
                      v52 = v54;
                    }
                  }

                  v74 = *&v2[v11];
                  if (v74)
                  {
                    v75 = v74;
                    v76 = [v2 barButtonItem];
                    if (v76)
                    {
                      v77 = v76;
                      v78 = [v76 isSymbolAnimationEnabled];
                    }

                    else
                    {
                      v78 = 0;
                    }

                    [v75 setSymbolAnimationEnabled_];

                    v79 = *&v2[v11];
                    if (v79)
                    {
                      v93 = v79;
                      v80 = [v2 button];
                      if (v80)
                      {
                        v81 = v80;
                        v82 = [v80 usesTintColorCapsuleForSelection];
                      }

                      else
                      {
                        v82 = 0;
                      }

                      v83 = v93;
                      *(v93 + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_usesTintColorCapsuleForSelection) = v82;
                      goto LABEL_70;
                    }
                  }
                }
              }
            }
          }

LABEL_69:
          v83 = v94;
LABEL_70:

          return;
        }
      }

      else
      {
        v29 = sub_188C5B38C();
        v30 = *&v2[v11];
        *&v2[v11] = v29;

        v31 = *&v2[v11];
        if (!v31)
        {
          goto LABEL_31;
        }

        v32 = v31;
        v33 = [v2 barButtonItem];
        if (v33)
        {
          v34 = v33;
          [v33 _additionalSelectionInsets];
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;
        }

        else
        {
          v36 = 0;
          v38 = 0;
          v40 = 0;
          v42 = 0;
        }

        v71 = &v32[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets];
        *v71 = v36;
        *(v71 + 1) = v38;
        *(v71 + 2) = v40;
        *(v71 + 3) = v42;

        v72 = *&v2[v11];
        if (!v72)
        {
          goto LABEL_31;
        }

        v73 = v72;
        sub_18909DA24();

        v13 = *&v2[v11];
        if (!v13)
        {
          goto LABEL_31;
        }
      }

      v14 = v13;
      v15 = [v2 barButtonItem];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 isEnabled];
      }

      else
      {
        v17 = 0;
      }

      [v14 setEnabled_];

      goto LABEL_31;
    }
  }

  v18 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton;
  v19 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (v19)
  {
    [v19 removeFromSuperview];
    v20 = *&v2[v18];
  }

  else
  {
    v20 = 0;
  }

  *&v2[v18] = 0;

  v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageHasBaseline] = 0;
  v21 = [v2 barButtonItem];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 resolvedTitle];

    if (v23)
    {
      v24 = sub_18A4A7288();
      v26 = v25;

      if (sub_18A4A7358() >= 1)
      {
        v27 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
        if (v27)
        {
          v28 = v27;
          [v28 setNeedsLayout];
        }

        else
        {
          v28 = sub_18909D928();
        }

        v57 = [v2 button];
        if (v57 && (v58 = v57, v59 = [v57 verticallyCentersContents], v58, (v59 & 1) != 0) || (v60 = swift_unknownObjectWeakLoadStrong()) != 0 && (v61 = objc_msgSend(v60, sel_centerTextButtons), swift_unknownObjectRelease(), v61))
        {
          v62 = 0.0;
          v63 = 0.0;
        }

        else
        {
          v64 = [v2 button];
          if (!v64 || (v65 = v64, v66 = [v64 isBackButton], v65, v63 = 0.0, (v66 & 1) == 0))
          {
            v67 = [v2 barButtonItem];
            v63 = 0.0;
            if (v67)
            {
              v68 = v67;
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v70 = [Strong edgesPaddingBarButtonItem_];

                swift_unknownObjectRelease();
                if ((v70 & 8) != 0)
                {
                  v63 = 3.0;
                }

                else
                {
                  v63 = 0.0;
                }
              }

              else
              {
              }
            }
          }

          if (a1)
          {
            v62 = 3.0;
          }

          else
          {
            v62 = 1.0;
          }
        }

        v84 = v28;
        [v84 setContentEdgeInsets_];
        v85 = [v2 button];
        if (v85)
        {
          v86 = v85;
          v87 = [v85 usesTintColorCapsuleForSelection];
        }

        else
        {
          v87 = 0;
        }

        *(v84 + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_usesTintColorCapsuleForSelection) = v87;
        v88 = [v2 barButtonItem];
        if (v88)
        {
          v89 = v88;
          v90 = [v88 isEnabled];
        }

        else
        {
          v90 = 0;
        }

        [v84 setEnabled_];

        sub_188C678E4();
        v91 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
        swift_beginAccess();
        if (*(*&v2[v91] + 16))
        {

          v24 = sub_188C6E9C8();
          v26 = v92;
        }

        if (sub_18A4A7358() < 1)
        {

          if (*(*&v2[v91] + 16) == 1)
          {
            sub_188C5E9C0();
          }
        }

        else
        {
          sub_188C69168(v24, v26);
        }

        return;
      }
    }
  }

  sub_188C5E9C0();
}

void sub_188C5E9C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint);
  *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint) = 0;

  v2 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v3)
  {
    [v3 removeFromSuperview];
    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
}

double sub_188C5EB3C(void *a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 isSelected] ^ a2;
    if (v8)
    {
      [v7 setSelected_];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (!v9)
  {
LABEL_11:
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v11 = 4;
    goto LABEL_13;
  }

  v10 = v9;
  if ([v10 isSelected] == (a2 & 1))
  {

    goto LABEL_11;
  }

  [v10 setSelected_];

  v8 = 1;
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = 0;
LABEL_13:
  v12 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16) || (v14 = sub_188C4585C(v11), (v15 & 1) == 0))
  {
    swift_endAccess();
    if ((v8 & 1) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  swift_endAccess();
  v18 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView);
  if (v18)
  {
    [v18 setImage_];
  }

  if (v8)
  {
LABEL_18:
    sub_188C5AFA4();
    [a1 setNeedsLayout];
  }

  return result;
}

id sub_188C5ECB4()
{
  result = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (result)
  {
    result = [result _imageView];
    if (result)
    {
      v2 = result;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_188C5ED8C(double a1, double a2, float a3, float a4)
{
  ObjectType = swift_getObjectType();
  v10 = [v4 button];
  if (v10 && (v11 = v10, v12 = [v10 isBreadcrumb], v11, (v12 & 1) != 0) || (v15 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent, swift_beginAccess(), !*(*&v4[v15] + 16)))
  {
    v26.receiver = v4;
    v26.super_class = ObjectType;
    *&v13 = a3;
    *&v14 = a4;
    objc_msgSendSuper2(&v26, sel_backButtonSystemLayoutSizeFittingSize_horizontalFittingPriority_verticalFittingPriority_, a1, a2, v13, v14);
  }

  else
  {
    v16 = *&v4[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
    if (v16)
    {
      v17 = v16;
      *&v18 = a3;
      *&v19 = a4;
      [v17 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{v18, v19}];
      sub_188C694AC();
    }

    else
    {
      v28[0] = 0;
      v28[1] = 0;
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v4;
      *(v21 + 24) = v28;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = a3;
      *(v21 + 52) = a4;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_188C68EE4;
      *(v22 + 24) = v21;
      aBlock[4] = sub_188E3FE50;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_76;
      v23 = _Block_copy(aBlock);
      v24 = v4;

      [v20 performWithoutAnimation_];
      _Block_release(v23);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_188C5F02C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_188C5F1C8(double a1, double a2, double a3, double a4)
{
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v19, sel__newImageViewWithFrame_, a1, a2, a3, a4);
  v10 = [v4 button];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for ButtonBarButtonVisualProvider.Button();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
LABEL_9:

      return v9;
    }

    v13 = v12;
    v14 = [v12 _imageView];
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = [v16 _guardAgainstDegenerateBaselineCalculation];

LABEL_8:
        [v9 _setGuardAgainstDegenerateBaselineCalculation_];
        [v9 setClipsToBounds_];
        goto LABEL_9;
      }
    }

    v17 = v13[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___guardAgainstDegenerateBaselineCalculation];
    goto LABEL_8;
  }

  return v9;
}

double sub_188C5F320(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_188C5F334(a1, a2, a3);
  }

  return result;
}

double sub_188C5F334(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

void sub_188C5F39C()
{
  v1 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
  swift_beginAccess();
  if (*(*&v0[v1] + 16))
  {
    v2 = [v0 button];
    if (v2)
    {

      v3 = [v0 barButtonItem];
      if (v3)
      {

        v4 = sub_188C6E9C8();
        v6 = v5;
        v7 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
        if (v7)
        {
          v8 = [v7 attributedTitleForState_];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 string];

            v11 = sub_18A4A7288();
            v13 = v12;

            if (v11 == v4 && v13 == v6)
            {

              return;
            }

            v15 = sub_18A4A86C8();

            if (v15)
            {

              return;
            }
          }
        }

        sub_188C69168(v4, v6);

        v16 = [v0 button];
        if (v16)
        {
          v17 = v16;
          v18 = [v0 barButtonItem];
          if (v18)
          {
            v19 = v18;
            sub_188C58C20(v17, v18);
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_188C5F60C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_188C5F7DC;
  *(v9 + 24) = v8;
  v14[4] = sub_188E3FE50;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_188A4A968;
  v14[3] = &block_descriptor_66_3;
  v10 = _Block_copy(v14);

  v11 = a1;
  v12 = v3;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_188C5F790()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_188C5F7E8(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  if (([a3 isBackButton] & 1) == 0 && objc_msgSend(a3, sel_usesTintColorCapsuleForSelection))
  {
    v6 = *(a4 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
    if (v6)
    {
      v7 = v6;
      [a3 bounds];
      [a3 convertRect:v7 toCoordinateSpace:?];
      v21.origin.x = v8;
      v21.origin.y = v9;
      v21.size.width = v10;
      v21.size.height = v11;
      v19 = *&v7[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
      *&v7[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame] = v21;
      if (!CGRectEqualToRect(v19, v21))
      {
        [v7 setNeedsLayout];
      }
    }

    v12 = *(a4 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    if (v12)
    {
      v17 = v12;
      [a3 bounds];
      [a3 convertRect:v17 toCoordinateSpace:?];
      v22.origin.x = v13;
      v22.origin.y = v14;
      v22.size.width = v15;
      v22.size.height = v16;
      v20 = *&v17[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
      *&v17[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame] = v22;
      if (!CGRectEqualToRect(v20, v22))
      {
        [v17 setNeedsLayout];
      }
    }
  }
}

void sub_188C5FAF0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      sub_18A4A8888();

      sub_18A4A7348();
      v9 = sub_18A4A88E8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_188C5FD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_188C5AFA4();
  }
}

void sub_188C5FD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong _visualProvider])
    {
      type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
      swift_dynamicCastClassUnconditional();
      v5 = [v4 _imageView];
      if (v5)
      {

        sub_1890A0B8C();
      }

      v6 = [v4 _titleView];
      if (v6)
      {

        sub_1890A0D18();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_188C5FEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarModel.PlacedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188C5FF60()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  sub_18A4A8888();
  sub_188C18FD0(v6, v1, v2, v4);
  MEMORY[0x18CFE37E0](v3);
  return sub_18A4A88E8();
}

void *sub_188C5FFDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_18A4A29D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188C60080@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v155 = a6;
  v176 = a7;
  v177 = a5;
  v150 = a3;
  v151 = a4;
  v187 = a2;
  v8 = sub_18A4A5768();
  v174 = *(v8 - 8);
  v175 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v173 = v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828, &unk_18A65EF70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v172 = v138 - v11;
  v165 = sub_18A4A6188();
  MEMORY[0x1EEE9AC00](v165);
  v161 = v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_18A4A6178();
  v157 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v156 = v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v183 = v138 - v15;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD78, &qword_18A6648B8);
  v163 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v158 = v138 - v16;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD70, &qword_18A6648B0);
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v160 = v138 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD68, &qword_18A6648A8);
  v170 = *(v18 - 8);
  v171 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v168 = v138 - v19;
  v20 = sub_18A4A29D8();
  v186 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v185 = v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for BarLayoutElement(0);
  v154 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v153 = (v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = sub_18A4A53C8();
  MEMORY[0x1EEE9AC00](v142);
  v141 = v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD80, &qword_18A6648C0);
  MEMORY[0x1EEE9AC00](v182);
  v188 = v138 - v24;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDD0, &qword_18A664970);
  v162 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v159 = v138 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDC8, &qword_18A664938);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v138 - v30;
  v32 = type metadata accessor for ToolbarModel.PlacedItem(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v149 = (v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v37 = v138 - v36;
  v38 = *a1;
  v152 = OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem;
  v39 = *&v38[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  v180 = v38;
  v181 = v39;
  sub_188A3F29C(v187, v31, &qword_1EA93BDC8, &qword_18A664938);
  v40 = *(v33 + 48);
  v41 = v40(v31, 1, v32);
  v187 = v20;
  if (v41 == 1)
  {
    sub_188A3F5FC(v31, &qword_1EA93BDC8, &qword_18A664938);
    v42 = 1;
  }

  else
  {
    sub_1890AF8EC(v31, v37, type metadata accessor for ToolbarModel.PlacedItem);
    sub_188BAD234(&qword_1EA930B00, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v43 = sub_18A4A7248();
    sub_1890AF954(v37, type metadata accessor for ToolbarModel.PlacedItem);
    v42 = v43 ^ 1;
  }

  sub_188A3F29C(v150, v28, &qword_1EA93BDC8, &qword_18A664938);
  v44 = v40(v28, 1, v32);
  v179 = v32;
  v145 = a1;
  if (v44 == 1)
  {
    sub_188A3F5FC(v28, &qword_1EA93BDC8, &qword_18A664938);
    v45 = v151;
    v46 = *v151;
    v47 = v177;
    v48 = v180;
    if (v42)
    {
      LODWORD(v150) = 0;
      if (v46)
      {
        v49 = 1;
        goto LABEL_11;
      }

      v59 = 0.0;
      v53 = -0.0;
      v54 = -0.0;
LABEL_52:
      v57 = -0.0;
      v52 = v152;
      goto LABEL_67;
    }

    if ((v46 & 1) == 0)
    {
      v54 = -2.0;
      LODWORD(v150) = 1;
      v59 = 0.0;
      v53 = -0.0;
      goto LABEL_52;
    }

    v60 = v151[3];
    v49 = 1;
    v52 = v152;
    if ((v60 & 1) == 0)
    {
LABEL_24:
      if (v45[4] >= 2u)
      {
        v53 = -5.0;
      }

      else
      {
        v53 = -4.0;
      }

      v61 = v45[4];
      if (v45[4])
      {
LABEL_28:
        v62 = 3.0;
        if ((v60 & 1) == 0)
        {
          v62 = 4.0;
          if (v61 == 2)
          {
            v62 = 2.0;
          }

          v63 = 5.0;
          if (v61 != 1)
          {
LABEL_57:
            v54 = -(v63 + v62);
            v55 = v45[4];
            v56 = v55 < 2;
            if (v55 >= 2)
            {
              v57 = -5.0;
            }

            else
            {
              v57 = -4.0;
            }

            LODWORD(v150) = 1;
            if ((v49 & 1) == 0)
            {
LABEL_17:
              if (v55)
              {
                v58 = 2.0;
                if (v55 != 2)
                {
                  v58 = 4.0;
                }

                v59 = 5.0;
                if (v55 != 1)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                v58 = 0.0;
              }

              v59 = 4.0;
LABEL_66:
              v59 = v59 + v58;
              goto LABEL_67;
            }

            goto LABEL_61;
          }

LABEL_56:
          v63 = 4.0;
          goto LABEL_57;
        }

LABEL_37:
        v54 = -v62;
        LODWORD(v150) = 1;
        if ((v49 & 1) == 0)
        {
LABEL_48:
          v58 = 3.0;
          v59 = 0.0;
          if (!v45[4])
          {
            v58 = 0.0;
          }

          v57 = -0.0;
          goto LABEL_66;
        }

LABEL_38:
        v59 = 0.0;
        v57 = -0.0;
        goto LABEL_67;
      }

LABEL_36:
      v62 = 0.0;
      if ((v60 & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

LABEL_35:
    v53 = -0.0;
    v61 = v45[4];
    if (v45[4])
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

  v50 = v149;
  sub_1890AF8EC(v28, v149, type metadata accessor for ToolbarModel.PlacedItem);
  sub_188BAD234(&qword_1EA930B00, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v51 = sub_18A4A7248();
  sub_1890AF954(v50, type metadata accessor for ToolbarModel.PlacedItem);
  v49 = v51 ^ 1;
  v45 = v151;
  v47 = v177;
  if (v42)
  {
    v48 = v180;
    if (*v151)
    {
      LODWORD(v150) = v51;
LABEL_11:
      v52 = v152;
      if (v45[3])
      {
        v53 = -0.0;
        v54 = -0.0;
        goto LABEL_47;
      }

      v64 = v45[4];
      if (v64 >= 2)
      {
        v53 = -5.0;
      }

      else
      {
        v53 = -4.0;
      }

      v65 = 5.0;
      if (v64 < 2)
      {
        v65 = 4.0;
      }

      v54 = -v65;
      if (v45[3])
      {
LABEL_47:
        if ((v49 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      v55 = v45[4];
      v56 = v55 < 2;
      if (v55 >= 2)
      {
        v57 = -5.0;
      }

      else
      {
        v57 = -4.0;
      }

      if ((v49 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_61:
      v59 = 5.0;
      if (v56)
      {
        v59 = 4.0;
      }

      goto LABEL_67;
    }

    v58 = 2.0;
    v59 = 0.0;
    v53 = -0.0;
    LODWORD(v150) = v51;
    v54 = -0.0;
  }

  else
  {
    v48 = v180;
    if (*v151)
    {
      v60 = v151[3];
      v52 = v152;
      if ((v60 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }

    v58 = 2.0;
    v59 = 0.0;
    v54 = -2.0;
    LODWORD(v150) = 1;
    v53 = -0.0;
  }

  v57 = -0.0;
  v52 = v152;
  if (v51)
  {
    goto LABEL_66;
  }

LABEL_67:
  v66 = -v59;
  LODWORD(v180) = sub_1890ABF38(*&v48[v52]);
  v149 = sub_18A4A5378();
  v202 = 1;
  swift_getKeyPath();
  v67 = v47 + OBJC_IVAR____TtC5UIKit12ToolbarModel___observationRegistrar;
  *&v197 = v47;
  v68 = sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  swift_beginAccess();
  v69 = v47[5];
  v205 = v47[4];
  v206 = v69;
  v207 = *(v47 + 12);
  v70 = v47[3];
  v203 = v47[2];
  v204 = v70;
  swift_getKeyPath();
  *&v197 = v47;
  sub_18A4A2C08();

  v72 = *(v47 + 20);
  v71 = *(v47 + 21);
  v144 = *(v47 + 22);
  swift_getKeyPath();
  *&v197 = v47;
  v146 = v71;
  v73 = v71;
  v147 = v72;
  v74 = v72;
  sub_18A4A2C08();

  v143 = *(v47 + 34);
  v148 = v48;
  v75 = [v181 _transitionIdentifier];
  if (v75)
  {

    sub_1890AF174();
  }

  else
  {
    sub_18A4A53B8();
    sub_188BAD234(&unk_1EA930BA0, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
  }

  v142 = sub_18A4A45E8();
  LODWORD(v141) = (v150 & 1) == 0;
  v150 = *&v48[v52];
  v140 = v202;
  swift_getKeyPath();
  *&v197 = v47;
  sub_18A4A2C08();

  v76 = qword_18A664B50[*(v47 + 36)];
  v199 = v205;
  v200 = v206;
  v201 = v207;
  v197 = v203;
  v198 = v204;
  v77 = type metadata accessor for BarLayoutElement.ItemConfig(0);
  v78 = *(v77 + 24);
  v79 = *(v179 + 20);
  v138[1] = v67;
  v139 = v79;
  v81 = v186;
  v80 = v187;
  v138[0] = v68;
  v83 = v186 + 16;
  v82 = *(v186 + 16);
  v84 = v153;
  v85 = v145;
  v82(v153 + v78, v145 + v79, v187);
  v151 = *(v81 + 56);
  v152 = v81 + 56;
  (v151)(v84 + v78, 0, 1, v80);
  *v84 = 0;
  LOBYTE(v81) = v180;
  *(v84 + 1) = v180;
  (*(*(v77 - 8) + 56))(v84, 0, 2, v77);
  v86 = *(v182 + 36);
  v87 = v188;
  sub_1890AF8EC(v84, v188 + v86, type metadata accessor for BarLayoutElement);
  (*(v154 + 56))(v87 + v86, 0, 1, v178);
  *v87 = v76;
  v88 = v197;
  *(v87 + 56) = v198;
  v89 = v200;
  *(v87 + 72) = v199;
  *(v87 + 88) = v89;
  v90 = v148;
  *(v87 + 8) = v149;
  *(v87 + 16) = 0;
  *(v87 + 24) = v140;
  *(v87 + 32) = v90;
  v91 = v201;
  *(v87 + 40) = v88;
  v93 = v146;
  v92 = v147;
  *(v87 + 104) = v91;
  *(v87 + 112) = v92;
  v94 = v144;
  *(v87 + 120) = v93;
  *(v87 + 128) = v94;
  *(v87 + 136) = v53;
  *(v87 + 144) = v54;
  *(v87 + 152) = v57;
  *(v87 + 160) = v66;
  *(v87 + 168) = v143;
  *(v87 + 169) = v141;
  *(v87 + 170) = v81;
  v95 = v150;
  *(v87 + 176) = v142;
  *(v87 + 184) = v95;
  v96 = v85 + *(v179 + 24);
  v97 = *v96;
  v98 = *(v96 + 1);
  LOBYTE(v84) = v96[16];
  v178 = v84;
  v147 = *(v96 + 3);
  v153 = v82;
  v154 = v83;
  v82(v185, v85 + v139, v80);
  v149 = v98;
  v150 = v97;
  sub_188BB395C(v97, v98, v84);
  v179 = sub_18A4A6CA8();
  v99 = sub_188C61B48();
  if (([v181 hidesSharedBackground] & 1) == 0)
  {
    swift_getKeyPath();
    v193 = v177;
    sub_18A4A2C08();
  }

  v100 = v183;
  sub_18A4A60F8();
  v101 = v156;
  v181 = v99;
  sub_18A4A6168();
  v102 = v157;
  v103 = v184;
  v177 = *(v157 + 8);
  (v177)(v100, v184);
  (*(v102 + 32))(v100, v101, v103);
  v104 = sub_18A4A6078();
  v105 = sub_18A4A60D8();
  v107 = v106;
  sub_18A4A6088();
  if (sub_18A4A6088() != v104)
  {
    *v107 = sub_18A4A6088();
  }

  v105(&v193, 0);
  v108 = *MEMORY[0x1E697F468];
  v109 = sub_18A4A53E8();
  v110 = v161;
  (*(*(v109 - 8) + 104))(v161, v108, v109);
  v111 = sub_1890AF628();
  v112 = sub_188BAD234(&unk_1ED48D010, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  v113 = v158;
  v115 = v182;
  v114 = v183;
  v116 = v165;
  sub_18A4A5CF8();
  sub_1890AF954(v110, MEMORY[0x1E6981998]);
  (v177)(v114, v184);
  v117 = v149;
  v118 = v150;
  v193 = v150;
  v194 = v149;
  v195 = v178;
  v196 = v147;
  v189 = v115;
  v190 = v116;
  v191 = v111;
  v192 = v112;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = sub_188BAF5D4();
  v121 = v160;
  v122 = v166;
  sub_18A4A5D18();
  (*(v163 + 8))(v113, v122);
  v123 = sub_188BB3988(v118, v117, v178);
  v124 = v172;
  v125 = v121;
  v126 = v185;
  v127 = v187;
  (v153)(v172, v185, v187, v123);
  (v151)(v124, 0, 1, v127);
  v193 = v122;
  v194 = &type metadata for ToolbarModel.PlacedItem.UniqueSemanticID;
  v195 = OpaqueTypeConformance2;
  v196 = v120;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = sub_188BAD234(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v131 = v168;
  v130 = v169;
  sub_18A4A5D38();
  sub_188A3F5FC(v124, &qword_1EA93A828, &unk_18A65EF70);
  (*(v167 + 8))(v125, v130);
  sub_18A4A5858();
  sub_18A4A6D08();
  v132 = v173;
  sub_18A4A5758();
  v193 = v130;
  v194 = v127;
  v195 = v128;
  v196 = v129;
  swift_getOpaqueTypeConformance2();
  v133 = v159;
  v134 = v171;
  sub_18A4A5D48();

  (*(v174 + 8))(v132, v175);
  (*(v170 + 8))(v131, v134);
  (*(v186 + 8))(v126, v127);
  sub_188A3F5FC(v188, &qword_1EA93BD80, &qword_18A6648C0);
  if (v180 == 2)
  {
    v135 = 0.0;
  }

  else
  {
    v135 = -1.0;
  }

  v136 = v176;
  (*(v162 + 32))(v176, v133, v164);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD60, &qword_18A6648A0);
  *(v136 + *(result + 36)) = v135;
  return result;
}

uint64_t sub_188C614E4(uint64_t a1)
{
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

id sub_188C61534(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_18A4A4918();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A5318();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(sub_18A4A5A28()) init];
  (*(v10 + 16))(v12, a1, v9);
  sub_18A4A5A08();
  (*(v6 + 16))(v8, a2, v5);
  sub_18A4A5A18();
  return v13;
}

void sub_188C616D8(void *a1, uint64_t a2, void *a3)
{
  v19 = a2;
  v20 = 0;
  v21 = a1;
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = sub_188EB7F24;
  v6[4] = &v18;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188BA5B68;
  *(v7 + 24) = v6;
  v26 = sub_188A86D40;
  v27 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A7AC24;
  v25 = &block_descriptor_78;
  v8 = _Block_copy(&aBlock);
  v9 = a3;

  v10 = [a1 traitCollectionByModifyingTraits_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v11);
  v17[2] = a2;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = sub_188EB8D90;
  v12[4] = v17;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188EB96A0;
  *(v13 + 24) = v12;
  v26 = sub_188EB96AC;
  v27 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A7AC24;
  v25 = &block_descriptor_14_3;
  v14 = _Block_copy(&aBlock);
  v15 = v9;
  v16 = v10;

  [v16 traitCollectionByModifyingTraits_];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_188C619E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_188C61AF0()
{
  result = qword_1EA930978;
  if (!qword_1EA930978)
  {
    _s18ToolbarPreferencesCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930978);
  }

  return result;
}

uint64_t sub_188C61B48()
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  v1 = *(v0 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  if (![v1 _prefersFilledAppearance])
  {
    return 0;
  }

  v2 = [v1 _effectiveTintColor];
  type metadata accessor for UICorePlatformColorDefinition(0);
  return sub_18A4A5E38();
}

BOOL sub_188C61C5C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a7 == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (a3 != 4)
      {
        v8 = 0;
        if (a7 != 5)
        {
          return v8;
        }

        goto LABEL_20;
      }

      if (a7 == 4)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
LABEL_13:
      if (a1 == a5 && a2 == a6)
      {
        return a4 == a8;
      }

      v9 = a4;
      v10 = a8;
      v11 = sub_18A4A86C8();
      a4 = v9;
      a8 = v10;
      if (v11)
      {
        return a4 == a8;
      }
    }

    return 0;
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (a7 != 1)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
    if (a7 != 2)
    {
      return v8;
    }
  }

LABEL_20:
  if (a1 == a5)
  {
    return a4 == a8;
  }

  return v8;
}

uint64_t sub_188C61D54(uint64_t *a1)
{
  sub_188C614E4(*a1);

  return swift_unknownObjectRetain();
}

id _sSo21UIContentSizeCategorya5UIKitE012_dynamicTypeB0AB7SwiftUI07DynamicfB0OSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CF8, &unk_18A64FA88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_188A3F29C(a1, &v14 - v6, &qword_1EA935CF8, &unk_18A64FA88);
  v8 = sub_18A4A4CB8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_188A3F29C(v7, v4, &qword_1EA935CF8, &unk_18A64FA88);
    v11 = (*(v9 + 88))(v4, v8);
    if (v11 == *MEMORY[0x1E697E718])
    {
      v10 = &UIContentSizeCategoryExtraSmall;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6F0])
    {
      v10 = &UIContentSizeCategorySmall;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6F8])
    {
      v10 = &UIContentSizeCategoryMedium;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6E8])
    {
      v10 = &UIContentSizeCategoryLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E708])
    {
      v10 = &UIContentSizeCategoryExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E720])
    {
      v10 = &UIContentSizeCategoryExtraExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E728])
    {
      v10 = &UIContentSizeCategoryExtraExtraExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6C0])
    {
      v10 = &UIContentSizeCategoryAccessibilityMedium;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6C8])
    {
      v10 = &UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6D0])
    {
      v10 = &UIContentSizeCategoryAccessibilityExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6D8])
    {
      v10 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6E0])
    {
      v10 = &UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      goto LABEL_27;
    }

    (*(v9 + 8))(v4, v8);
  }

  v10 = &UIContentSizeCategoryUnspecified;
LABEL_27:
  v12 = *v10;
  sub_188A3F5FC(a1, &qword_1EA935CF8, &unk_18A64FA88);
  sub_188A3F5FC(v7, &qword_1EA935CF8, &unk_18A64FA88);
  return v12;
}

uint64_t sub_188C620F8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = [a1 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  sub_188A3F29C(v20, &v18, &qword_1EA934050, qword_18A64CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  v14 = swift_dynamicCast();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 56);
  if (v14)
  {
    v16(v12, 0, 1, AssociatedTypeWitness);
    sub_188A3F5FC(v20, &qword_1EA934050, qword_18A64CA10);
    return (*(v15 + 32))(a4, v12, AssociatedTypeWitness);
  }

  else
  {
    v16(v12, 1, 1, AssociatedTypeWitness);
    (*(a3 + 16))(a2, a3);
    sub_188A3F5FC(v20, &qword_1EA934050, qword_18A64CA10);
    result = (*(v15 + 48))(v12, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_188C623C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_188C62424(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18A4A29D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t _sSo24UIUserInterfaceSizeClassV5UIKitE05_sizeD0AB7SwiftUI04UserbcD0OSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CE0, &qword_18A64FA70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  sub_188A3F29C(a1, &v13 - v6, &qword_1EA935CE0, &qword_18A64FA70);
  v8 = sub_18A4A5738();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  sub_188A3F29C(v7, v4, &qword_1EA935CE0, &qword_18A64FA70);
  v11 = (*(v9 + 88))(v4, v8);
  if (v11 == *MEMORY[0x1E697FF38])
  {
    v10 = 1;
LABEL_6:
    sub_188A3F5FC(a1, &qword_1EA935CE0, &qword_18A64FA70);
    sub_188A3F5FC(v7, &qword_1EA935CE0, &qword_18A64FA70);
    return v10;
  }

  if (v11 == *MEMORY[0x1E697FF40])
  {
    v10 = 2;
    goto LABEL_6;
  }

  (*(v9 + 8))(v4, v8);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

void sub_188C6270C(uint64_t a1)
{
  sub_1890A47DC(319, &unk_1EA930ED8, MEMORY[0x1E6980948]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_188C629E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v4;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v8 = v4;
  }

  if (sub_18A4A46F8())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1890AD778();
    v9 = v2;
    sub_18A4A4708();
  }

  sub_188BAC830();
  sub_18A4A4718();

  if (v17)
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = v4;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v15 = v4;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890AD778();
      v16 = v2;
      sub_18A4A4708();
    }

    type metadata accessor for CGRect(0);
    sub_18A4A46B8();

    v13 = v17;
    v14 = v18;
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v17 == 0;
}

uint64_t sub_188C62BCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_188C62C28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_188C62C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_188C62CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 32))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

_BYTE *sub_188C62D24(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828, &unk_18A65EF70);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188C62DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarLayoutElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188C62E48(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BarLayoutElement.ItemConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

__n128 __swift_memcpy139_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_188C62F00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v165 = a1;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFE8, &qword_18A665248);
  MEMORY[0x1EEE9AC00](v146);
  v137 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v136 - v5;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFF0, &qword_18A665250);
  MEMORY[0x1EEE9AC00](v143);
  v145 = &v136 - v6;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFF8, &qword_18A665258);
  MEMORY[0x1EEE9AC00](v164);
  v147 = &v136 - v7;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C000, &qword_18A665260);
  MEMORY[0x1EEE9AC00](v144);
  v9 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v136 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C008, &qword_18A665268);
  MEMORY[0x1EEE9AC00](v157);
  v139 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v136 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C010, &qword_18A665270);
  MEMORY[0x1EEE9AC00](v161);
  v163 = &v136 - v15;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C018, &qword_18A665278);
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v136 - v16;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C020, &qword_18A665280);
  MEMORY[0x1EEE9AC00](v162);
  v156 = &v136 - v17;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C028, &qword_18A665288);
  MEMORY[0x1EEE9AC00](v152);
  v19 = &v136 - v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C030, &unk_18A665290);
  MEMORY[0x1EEE9AC00](v149);
  v150 = &v136 - v20;
  v21 = type metadata accessor for BarLayoutElement(0);
  v159 = *(v21 - 8);
  v160 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD58, &qword_18A664888);
  MEMORY[0x1EEE9AC00](v148);
  v24 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  *&v142 = &v136 - v26;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C040, &qword_18A6652A0);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v136 - v27;
  v28 = *v1;
  swift_getKeyPath();
  *&v173 = v28;
  sub_188C4AE0C();
  v29 = v28;
  sub_18A4A2C08();

  v30 = *&v29[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed];
  v31 = *&v29[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  if ([v31 isSpaceItem])
  {

    if ([v31 systemItem] == 5)
    {
      sub_18A4A6C08();
      sub_18A4A4EA8();
      *&v166[55] = v176[0];
      *&v166[71] = v176[1];
      *&v166[87] = v176[2];
      *&v166[103] = v176[3];
      *&v166[7] = v173;
      *&v166[23] = v174;
      LOBYTE(v172[0]) = 1;
      *&v166[39] = v175;
      v32 = type metadata accessor for BarLayoutElement.ItemConfig(0);
      v33 = v158;
      (*(*(v32 - 8) + 56))(v158, 1, 2, v32);
      v34 = *(v148 + 36);
      sub_188C62DD0(v33, &v24[v34]);
      (*(v159 + 56))(&v24[v34], 0, 1, v160);
      v35 = *&v166[80];
      *(v24 + 73) = *&v166[64];
      *(v24 + 89) = v35;
      *(v24 + 105) = *&v166[96];
      v36 = *&v166[16];
      *(v24 + 9) = *v166;
      *(v24 + 25) = v36;
      v37 = *&v166[48];
      *(v24 + 41) = *&v166[32];
      *v24 = 0;
      v24[8] = 1;
      *(v24 + 15) = *&v166[111];
      *(v24 + 57) = v37;
      v38 = v142;
      sub_188A3F704(v24, v142, &qword_1EA93BD58, &qword_18A664888);
      sub_188A3F29C(v38, v150, &qword_1EA93BD58, &qword_18A664888);
      swift_storeEnumTagMultiPayload();
      sub_188BAD4FC();
      sub_188BAD6E0();
      v39 = v151;
      sub_18A4A5598();
      v40 = v38;
      v41 = &qword_1EA93BD58;
      v42 = &qword_18A664888;
    }

    else
    {
      [v31 _width];
      sub_18A4A6C08();
      sub_18A4A45B8();
      v92 = v173;
      v93 = v174;
      v94 = v175;
      v170 = 1;
      v169 = BYTE8(v173);
      v168 = BYTE8(v174);
      v95 = type metadata accessor for BarLayoutElement.ItemConfig(0);
      v96 = v158;
      (*(*(v95 - 8) + 56))(v158, 2, 2, v95);
      v97 = *(v152 + 36);
      sub_188C62DD0(v96, &v19[v97]);
      (*(v159 + 56))(&v19[v97], 0, 1, v160);
      *v19 = 0;
      v19[8] = v170;
      *(v19 + 9) = v172[0];
      *(v19 + 3) = *(v172 + 3);
      *(v19 + 2) = v92;
      v19[24] = v169;
      *(v19 + 25) = v171[0];
      *(v19 + 7) = *(v171 + 3);
      *(v19 + 4) = v93;
      v19[40] = v168;
      v98 = v167[0];
      *(v19 + 11) = *(v167 + 3);
      *(v19 + 41) = v98;
      *(v19 + 3) = v94;
      sub_188A3F29C(v19, v150, &qword_1EA93C028, &qword_18A665288);
      swift_storeEnumTagMultiPayload();
      sub_188BAD4FC();
      sub_188BAD6E0();
      v39 = v151;
      sub_18A4A5598();
      v40 = v19;
      v41 = &qword_1EA93C028;
      v42 = &qword_18A665288;
    }

    sub_188A3F5FC(v40, v41, v42);
    v99 = &unk_1EA93C040;
    v100 = &qword_18A6652A0;
    sub_188A3F29C(v39, v155, &unk_1EA93C040, &qword_18A6652A0);
    swift_storeEnumTagMultiPayload();
    sub_188BAD470();
    sub_1890B47A4(&unk_1EA930AD0, &qword_1EA93C008, &qword_18A665268, sub_1890B4854);
    v101 = v156;
    sub_18A4A5598();
    sub_188A3F29C(v101, v163, &qword_1EA93C020, &qword_18A665280);
    swift_storeEnumTagMultiPayload();
    sub_1890B46EC();
    sub_1890B4934();
    sub_18A4A5598();
    sub_188A3F5FC(v101, &qword_1EA93C020, &qword_18A665280);
    v65 = v39;
LABEL_16:
    v90 = v99;
    v91 = v100;
    return sub_188A3F5FC(v65, v90, v91);
  }

  if ([v31 _isSearchBarPlacementItem] && (v43 = objc_msgSend(v31, sel__associatedSearchController)) != 0)
  {
    v44 = v43;

    v45 = *(v2 + 138);
    v46 = v44;
    LOBYTE(v44) = sub_18A4A5BC8();
    sub_18A4A43C8();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    LOBYTE(v171[0]) = 0;
    v55 = type metadata accessor for BarLayoutElement.ItemConfig(0);
    v56 = *(v55 + 24);
    v57 = sub_18A4A29D8();
    v58 = v158;
    (*(*(v57 - 8) + 56))(&v158[v56], 1, 1, v57);
    *v58 = 1;
    v58[1] = v45;
    (*(*(v55 - 8) + 56))(v58, 0, 2, v55);
    v59 = *(v157 + 36);
    v60 = v139;
    sub_188C62DD0(v58, &v139[v59]);
    (*(v159 + 56))(v60 + v59, 0, 1, v160);
    *v60 = v46;
    *(v60 + 8) = v45;
    *(v60 + 9) = v173;
    *(v60 + 12) = *(&v173 + 3);
    *(v60 + 16) = v44;
    *(v60 + 17) = v172[0];
    *(v60 + 20) = *(v172 + 3);
    *(v60 + 24) = v48;
    *(v60 + 32) = v50;
    *(v60 + 40) = v52;
    *(v60 + 48) = v54;
    *(v60 + 56) = 0;
    v61 = &qword_1EA93C008;
    v62 = &qword_18A665268;
    v63 = v140;
    sub_188A3F704(v60, v140, &qword_1EA93C008, &qword_18A665268);
    sub_188A3F29C(v63, v155, &qword_1EA93C008, &qword_18A665268);
    swift_storeEnumTagMultiPayload();
    sub_188BAD470();
    sub_1890B47A4(&unk_1EA930AD0, &qword_1EA93C008, &qword_18A665268, sub_1890B4854);
    v64 = v156;
    sub_18A4A5598();
    sub_188A3F29C(v64, v163, &qword_1EA93C020, &qword_18A665280);
    swift_storeEnumTagMultiPayload();
    sub_1890B46EC();
    sub_1890B4934();
    sub_18A4A5598();

    sub_188A3F5FC(v64, &qword_1EA93C020, &qword_18A665280);
    v65 = v63;
  }

  else
  {
    v157 = v30;
    v66 = [v31 customView];

    if (!v66)
    {
      v102 = *(v2 + 138);
      if (v102 == 2)
      {
        v103 = 1.0;
      }

      else
      {
        v103 = 0.0;
      }

      LODWORD(v151) = *(v2 + 8);
      LODWORD(v153) = *(v2 + 9);
      v104 = *(v2 + 11);
      v105 = *(v2 + 12);
      v106 = v2[11];
      v149 = v2[10];
      v107 = v149;
      v150 = v106;
      v154 = v2[12];
      LODWORD(v156) = *(v2 + 136);
      LODWORD(v155) = *(v2 + 137);
      v108 = v106;
      v109 = v107;
      LODWORD(v152) = sub_18A4A5BC8();
      sub_18A4A43C8();
      v111 = v110;
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v118 = *(v2 + 29);
      v119 = *(v2 + 61);
      v175 = *(v2 + 45);
      v176[0] = v119;
      *(v176 + 15) = *(v2 + 19);
      v173 = *(v2 + 13);
      v174 = v118;
      LOBYTE(v167[0]) = 0;
      v120 = type metadata accessor for BarLayoutElement.ItemConfig(0);
      v121 = *(v120 + 24);
      v122 = sub_18A4A29D8();
      v123 = *(*(v122 - 8) + 56);
      v148 = *(v2 + 13);
      v142 = *(v2 + 15);
      v124 = v158;
      v123(&v158[v121], 1, 1, v122);
      *v124 = 0;
      v124[1] = v102;
      (*(*(v120 - 8) + 56))(v124, 0, 2, v120);
      v125 = *(v146 + 36);
      v126 = v137;
      sub_188C62DD0(v124, &v137[v125]);
      (*(v159 + 56))(v126 + v125, 0, 1, v160);
      v127 = v173;
      *(v126 + 29) = v174;
      v128 = v176[0];
      *(v126 + 45) = v175;
      *(v126 + 61) = v128;
      *v126 = v29;
      *(v126 + 8) = v151;
      *(v126 + 9) = v153;
      *(v126 + 11) = v104;
      *(v126 + 12) = v105;
      *(v126 + 76) = *(v176 + 15);
      *(v126 + 13) = v127;
      v129 = v149;
      v130 = v150;
      *(v126 + 80) = v157;
      *(v126 + 88) = v129;
      v131 = v154;
      *(v126 + 96) = v130;
      *(v126 + 104) = v131;
      v132 = v142;
      *(v126 + 112) = v148;
      *(v126 + 128) = v132;
      *(v126 + 144) = v156;
      *(v126 + 145) = v155;
      *(v126 + 150) = v171[1];
      *(v126 + 146) = v171[0];
      *(v126 + 152) = v103;
      *(v126 + 160) = v152;
      *(v126 + 164) = *(v172 + 3);
      *(v126 + 161) = v172[0];
      *(v126 + 168) = v111;
      *(v126 + 176) = v113;
      *(v126 + 184) = v115;
      *(v126 + 192) = v117;
      *(v126 + 200) = 0;
      v99 = &qword_1EA93BFE8;
      v100 = &qword_18A665248;
      v133 = v138;
      sub_188A3F704(v126, v138, &qword_1EA93BFE8, &qword_18A665248);
      sub_188A3F29C(v133, v145, &qword_1EA93BFE8, &qword_18A665248);
      swift_storeEnumTagMultiPayload();
      sub_1890B47A4(&qword_1EA930BB0, &qword_1EA93C000, &qword_18A665260, sub_188C659A4);
      sub_1890B47A4(&qword_1EA930AC8, &qword_1EA93BFE8, &qword_18A665248, sub_1890B45D4);
      v134 = v147;
      sub_18A4A5598();
      sub_188A3F29C(v134, v163, &qword_1EA93BFF8, &qword_18A665258);
      swift_storeEnumTagMultiPayload();
      sub_1890B46EC();
      sub_1890B4934();
      sub_18A4A5598();
      sub_188A3F5FC(v134, &qword_1EA93BFF8, &qword_18A665258);
      v65 = v133;
      goto LABEL_16;
    }

    LODWORD(v152) = *(v2 + 8);
    LODWORD(v155) = *(v2 + 9);
    v67 = *(v2 + 11);
    v68 = *(v2 + 12);
    LODWORD(v154) = *(v2 + 137);
    v156 = v66;
    LODWORD(v153) = sub_18A4A5BC8();
    sub_18A4A43C8();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = *(v2 + 29);
    v78 = *(v2 + 61);
    v175 = *(v2 + 45);
    v176[0] = v78;
    *(v176 + 15) = *(v2 + 19);
    v173 = *(v2 + 13);
    v174 = v77;
    LOBYTE(v167[0]) = 0;
    v79 = type metadata accessor for BarLayoutElement.ItemConfig(0);
    v80 = *(v79 + 24);
    v81 = sub_18A4A29D8();
    v82 = v158;
    (*(*(v81 - 8) + 56))(&v158[v80], 1, 1, v81);
    *v82 = 513;
    (*(*(v79 - 8) + 56))(v82, 0, 2, v79);
    v83 = *(v144 + 36);
    sub_188C62DD0(v82, &v9[v83]);
    (*(v159 + 56))(&v9[v83], 0, 1, v160);
    v84 = v173;
    *(v9 + 45) = v174;
    v85 = v176[0];
    *(v9 + 61) = v175;
    *(v9 + 77) = v85;
    v87 = v156;
    v86 = v157;
    *v9 = v29;
    *(v9 + 1) = v86;
    *(v9 + 2) = v87;
    v9[24] = v152;
    *(v9 + 25) = v155;
    v9[27] = v67;
    v9[28] = v68;
    *(v9 + 23) = *(v176 + 15);
    *(v9 + 29) = v84;
    v9[96] = v154;
    LODWORD(v86) = v172[0];
    *(v9 + 25) = *(v172 + 3);
    *(v9 + 97) = v86;
    *(v9 + 13) = v87;
    v9[112] = v153;
    *(v9 + 29) = *(v171 + 3);
    *(v9 + 113) = v171[0];
    *(v9 + 15) = v70;
    *(v9 + 16) = v72;
    *(v9 + 17) = v74;
    *(v9 + 18) = v76;
    v9[152] = 0;
    v61 = &qword_1EA93C000;
    v62 = &qword_18A665260;
    v88 = v141;
    sub_188A3F704(v9, v141, &qword_1EA93C000, &qword_18A665260);
    sub_188A3F29C(v88, v145, &qword_1EA93C000, &qword_18A665260);
    swift_storeEnumTagMultiPayload();
    sub_1890B47A4(&qword_1EA930BB0, &qword_1EA93C000, &qword_18A665260, sub_188C659A4);
    sub_1890B47A4(&qword_1EA930AC8, &qword_1EA93BFE8, &qword_18A665248, sub_1890B45D4);
    v89 = v147;
    sub_18A4A5598();
    sub_188A3F29C(v89, v163, &qword_1EA93BFF8, &qword_18A665258);
    swift_storeEnumTagMultiPayload();
    sub_1890B46EC();
    sub_1890B4934();
    sub_18A4A5598();

    sub_188A3F5FC(v89, &qword_1EA93BFF8, &qword_18A665258);
    v65 = v88;
  }

  v90 = v61;
  v91 = v62;
  return sub_188A3F5FC(v65, v90, v91);
}

uint64_t sub_188C643CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for UICoreViewRepresentableContext(0, a2, a3, a4);
  type metadata accessor for PlatformViewRepresentableAdaptor(255, a2, a3, v9);
  swift_getWitnessTable();
  v10 = sub_18A4A5A58();
  sub_18A4A5A38();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5, a1, v10);
}

uint64_t sub_188C644AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  v6 = sub_18A4A5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v13 = type metadata accessor for UICoreViewRepresentableContext(0, v11, v10, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  (*(v7 + 16))(v9, a2, v6, v15);
  sub_188C643CC(v9, v11, v10, v18, v17);
  (*(v10 + 40))(a1, v17, v11, v10);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_188C6468C()
{
  result = qword_1EA9313B0;
  if (!qword_1EA9313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9313B0);
  }

  return result;
}

uint64_t sub_188C646E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA930BC8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB78, &qword_18A6638C0);
  v3 = __swift_project_value_buffer(v2, qword_1EA930BD0);
  return sub_188A3F29C(v3, a1, &qword_1EA93BB78, &qword_18A6638C0);
}

uint64_t sub_188C64784(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828, &unk_18A65EF70);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

uint64_t sub_188C64854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarLayoutElement.ItemConfig(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188C648C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188C64928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188C649C8(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v27 = a4;
  v28 = a1;
  v29 = a3;
  swift_getWitnessTable();
  v10 = sub_18A4A5A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-v12];
  v14 = *(a7 + 16);
  v15 = *(a7 + 24);
  v17 = type metadata accessor for UICoreViewRepresentableContext(0, v14, v15, v16);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v26[-v20];
  (*(v11 + 16))(v13, a6, v10, v19);
  sub_188C643CC(v13, v14, v15, v22, v21);
  v23 = *(v15 + 64);
  v32 = a2 & 1;
  v31 = v27 & 1;
  v24 = v23(v28);
  (*(v18 + 8))(v21, v17);
  return v24;
}

uint64_t sub_188C64C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_188C64CF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t *a6)
{
  v12 = sub_18A4A4618();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB80, &qword_18A6638C8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v19 = *(v6 + 72);
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v20 = CGRectGetWidth(v46) * 0.5;
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v47.origin.x = a1;
  v47.origin.y = a2;
  v47.size.width = a3;
  v47.size.height = a4;
  v48 = CGRectInset(v47, v21, 0.0);
  if (*v6)
  {
    if (*(v6 + 4))
    {
      v22 = 8.0;
      if (*(v6 + 4) == 2)
      {
        v22 = 4.0;
      }

      v23 = 6.0;
      if ((*(v6 + 3) & 1) == 0)
      {
        v23 = v22;
      }

      __asm { FMOV            V4.2D, #12.0 }

      *&_Q4 = v23;
    }

    else
    {
      _Q4 = xmmword_18A661BA0;
    }
  }

  else
  {
    __asm { FMOV            V4.2D, #4.0 }
  }

  v44 = v48;
  v45 = _Q4;
  sub_188BB105C(*a6, &v44.origin.x, v43);
  v29 = a6[1];
  v40 = *(v29 + 16);
  if (v40)
  {
    v30 = 0;
    v38 = v13 + 16;
    v31 = (v13 + 8);
    v39 = *&v43[0];
    v32 = (*&v43[0] + 56);
    while (v30 < *(v29 + 16))
    {
      (*(v13 + 16))(v15, v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v30, v12);
      v33 = *(v39 + 16);
      if (v30 == v33)
      {
        sub_188BB3390(v43);
        (*v31)(v15, v12);
        return;
      }

      if (v30 >= v33)
      {
        goto LABEL_22;
      }

      ++v30;
      v34 = *(v32 - 3);
      v35 = *(v32 - 2);
      v36 = *(v32 - 1);
      v37 = *v32;
      (*(v13 + 32))(v18, v15, v12);
      v49.origin.x = v34;
      v49.origin.y = v35;
      v49.size.width = v36;
      v49.size.height = v37;
      CGRectGetMidX(v49);
      v50.origin.x = v34;
      v50.origin.y = v35;
      v50.size.width = v36;
      v50.size.height = v37;
      CGRectGetMidY(v50);
      sub_18A4A6D08();
      v42 = 0;
      v41 = 0;
      sub_18A4A4608();
      (*v31)(v18, v12);
      v32 += 5;
      if (v40 == v30)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_19:
    sub_188BB3390(v43);
  }
}

uint64_t sub_188C65074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarButtonBarElement(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_188C650D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934490, &qword_18A64BF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_188C65230(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_188C18FD0(a1, *v1, *(v1 + 8), *(v1 + 16));
  return MEMORY[0x18CFE37E0](v2);
}

unint64_t sub_188C65274(uint64_t a1)
{
  result = sub_188C6529C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C6529C()
{
  result = qword_1EA930308;
  if (!qword_1EA930308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930308);
  }

  return result;
}

uint64_t sub_188C653B4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C0D0, &qword_18A665478);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C0C0, &qword_18A665470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C0D8, &qword_18A665480);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&qword_1EA9302D8, &unk_1EA93C0C0, &qword_18A665470, &unk_18A674048);
    sub_18A4A5608();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

char *sub_188C65594()
{
  v1 = objc_opt_self();
  v2 = *(v0 + 16);
  if ([v1 shouldWrapView_])
  {

    v3 = [objc_allocWithZone(_UITAMICAdaptorView) initWithView_];
    [v3 setInvalidatesIntrinsicContentSizeOnSizeChange_];
    v2 = v3;
  }

  else
  {
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v2 subviews];
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v5 = sub_18A4A7548();

    if (v5 >> 62)
    {
      v6 = sub_18A4A7F68();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6)
    {

      type metadata accessor for CustomViewWrapper();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v8 = *&v7[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped];
      *&v7[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped] = v2;

      v9 = [(UIView *)v2 _typedStorage];
      v10 = sub_18902B930();

      v27 = v10;
      if (*(v10 + 16) >= 6uLL)
      {
        v11 = sub_1890B3F54(v10);

        v27 = v11;
      }

      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v26 = 0;
      sub_188F27F58(&v25, v7);
      v12 = v27;
      v13 = [(UIView *)v2 _typedStorage];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C0B8, &qword_18A665468);
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v15 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(&v13->super.isa + v15);
      *(&v13->super.isa + v15) = 0x8000000000000000;
      sub_188A40430(v14, &_s19OwningSuperviewsKeyVN, isUniquelyReferenced_nonNull_native);
      *(&v13->super.isa + v15) = v24;
      swift_endAccess();

      sub_1890B32B4();
      v2 = v7;
      [v2 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges_];
    }
  }

  v17 = [(UIView *)v2 _traitOverrides];
  v18 = [(_UITraitOverrides *)v17 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
  inited = swift_initStackObject();
  *(inited + 16) = v18;
  v25 = inited;
  sub_1890B30E8(1, &type metadata for UIContainedInBarMaterialTraitDefinition, sub_1890B2D2C, sub_18901C418);
  v20 = v25;
  v21 = [(UIView *)v2 _traitOverrides];
  v22 = *(v20 + 16);

  [(_UITraitOverrides *)v21 _replaceWithOverrides:v22];

  return v2;
}

uint64_t _s18ToolbarPreferencesCMa(uint64_t a1)
{
  result = qword_1EA930EB8;
  if (!qword_1EA930EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_188C659A4()
{
  result = qword_1EA930BB8;
  if (!qword_1EA930BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C050, &qword_18A6652D0);
    sub_188A34360(&qword_1EA930B98, &unk_1EA93C060, &qword_18A6652D8, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930BB8);
  }

  return result;
}

unint64_t sub_188C65A5C()
{
  result = qword_1EA930BC0;
  if (!qword_1EA930BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930BC0);
  }

  return result;
}

uint64_t sub_188C65AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_188A34360(a7, a5, a6, &unk_18A674048);
  return sub_18A4A5618();
}

uint64_t sub_188C65BAC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_188C65BD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_188C65BD4(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  v4 = sub_18A4A5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v11 = type metadata accessor for UICoreViewRepresentableContext(0, v9, v8, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  sub_188C643CC(v7, v9, v8, v16, v15);
  v17 = (*(v8 + 32))(v15, v9, v8);
  (*(v12 + 8))(v15, v11);
  return v17;
}

uint64_t sub_188C65DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformViewRepresentableAdaptor(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  result = sub_18A4A5A58();
  if (v5 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *UICorePlatformViewHost.__allocating_init(_:host:environment:viewPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_188BA6950(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v13;
}

uint64_t sub_188C65F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB78, &qword_18A6638C0);
  __swift_allocate_value_buffer(v0, qword_1EA930BD0);
  v1 = __swift_project_value_buffer(v0, qword_1EA930BD0);
  v2 = type metadata accessor for BarLayoutElement(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_188C66004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v8 = a2;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v11 = [v10 view]) == 0)
  {
    v11 = a5;
  }

  [v11 updateTraitsIfNeeded];
  sub_1890B358C(a1, v8 & 1, a3, v6 & 1);
  v13 = v12;

  return v13;
}

void sub_188C6613C(void *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  v18 = *(v1 + 56);
  v19 = v4;
  v20 = *(v1 + 88);
  v16 = *(v1 + 24);
  v17 = v3;
  sub_188E4FA28(*(*v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem), *(v1 + 96), &v13);
  v10 = v14;
  v11 = v13;
  [*(v1 + 16) setLayoutMargins_];
  v14 = v10;
  v13 = v11;
  LOBYTE(v15) = 0;
  v5 = [(UIView *)a1 _traitOverrides];
  v6 = [(_UITraitOverrides *)v5 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
  inited = swift_initStackObject();
  *(inited + 16) = v6;
  v12 = inited;
  sub_18901E41C(&v13);
  v8 = [(UIView *)a1 _traitOverrides];
  v9 = *(v12 + 16);

  [(_UITraitOverrides *)v8 _replaceWithOverrides:v9];
}

uint64_t sub_188C66288()
{
  v1 = v0;
  v2 = [(UIBarButtonItem *)v0 _typedStorage];
  v3 = sub_188C663B8();

  if (!v3)
  {
    _s18ToolbarPreferencesCMa(0);
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    sub_18A4A2C38();
    v4 = [(UIBarButtonItem *)v1 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9390C0, &qword_18A657E98);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(&v4->super.isa + v6);
    *(&v4->super.isa + v6) = 0x8000000000000000;
    sub_188A40430(v5, &_s18ToolbarPreferencesC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v4->super.isa + v6) = v9;
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_188C663C4(uint64_t a1)
{
  result = sub_18A4A2C48();
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

void _saveSceneSessionUserInfo(void *a1)
{
  v1 = a1;
  [v1 _setUserInfoIsDirty:0];
  v2 = [v1 userInfo];
  v3 = [v1 persistentIdentifier];
  v4 = _restorationDirectory(v3);
  v5 = [v4 URLByAppendingPathComponent:@"userInfo.data" isDirectory:0];

  if (v2)
  {
    if ([MEMORY[0x1E696AE40] propertyList:v2 isValidForFormat:100])
    {
      v6 = [v1 persistentIdentifier];
      _ensureRestorationDirectoryExists(v6);

      v13 = 0;
      [v2 writeToURL:v5 error:&v13];
      v7 = v13;
      if (v7)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SCouldNotSaveS.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)", v7);
        }

        goto LABEL_18;
      }

      if (_UIStateRestorationDebugLogEnabled())
      {
        v7 = 0;
        NSLog(&cfstr_SSavedSceneSes.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)");
        goto LABEL_18;
      }
    }

    else if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SSceneSessionU_0.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)");
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SNothingToSave_0.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)", v5);
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v9 = [v8 removeItemAtURL:v5 error:&v14];
  v7 = v14;

  if (!v7 && (v9 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (v7)
  {
    v10 = [v7 domain];
    v11 = v10;
    if (v10 == *MEMORY[0x1E696A250])
    {
      v12 = [v7 code];

      if (v12 == 4)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningUnable_1.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)", v5, v7);
  }

LABEL_18:
}

void _ensureRestorationDirectoryExists(void *a1)
{
  v1 = _restorationDirectory(a1);
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = 0;
  [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v3];
}

void sub_188C6707C(void *a1, char a2)
{
  v3 = v2;
  v6 = [v3 stack];
  v7 = [v6 state];

  if (!v7)
  {
    v8 = [v3 stack];
    v9 = [v8 topItem];

    if (v9)
    {
      sub_188A34624(0, &unk_1ED48CFF8, off_1E70EA260);
      v20 = v9;
      v10 = a1;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        v12 = objc_opt_self();
        v13 = swift_allocObject();
        *(v13 + 16) = v3;
        v14 = swift_allocObject();
        *(v14 + 16) = sub_188C673B8;
        *(v14 + 24) = v13;
        aBlock[4] = sub_188E3FE50;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A968;
        aBlock[3] = &block_descriptor_147;
        v15 = _Block_copy(aBlock);
        v16 = v3;

        [v12 performWithoutAnimation_];
        _Block_release(v15);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v18 = [v16 stack];
          v19 = [v18 backItem];

          sub_188B2A9B4(v9, v19, a2 & 1);
        }
      }

      else
      {
      }
    }
  }
}

id sub_188C673B8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer);
  if (result)
  {
    return [result end];
  }

  return result;
}

double _possibleTopViewsHeightBasedOnContentOffsetForScrollView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v5[1324] == 1 && ([v5 _existingView], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_usesMinimumSafeAreas"), v7, v8))
  {
    v9 = [v6 _existingView];
    [v9 _minimumSafeAreaInsets];
    v11 = v10;
  }

  else
  {
    [v6 _contentOverlayInsets];
    v11 = v12;
  }

  [v4 adjustedContentInset];
  if (v11 >= v13)
  {
    v11 = v13;
  }

  [v4 _contentOffsetOrDeferredContentOffset];
  v15 = -v14 - v11;
  [v6 _heightRangeOfTopViews];
  if (v15 < v16)
  {
    v17 = v16;
    [v4 _allowedNavigationOverlapAmount];
    v19 = v15 + v18;
    if (v15 + v18 >= v17)
    {
      v19 = v17;
    }

    if (v18 > 0.0)
    {
      v15 = v19;
    }
  }

  return v15;
}

void sub_188C678E4()
{
  v3 = v0;
  v68 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v4 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (!v4)
  {
    v28 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
    swift_beginAccess();
    *&v3[v28] = MEMORY[0x1E69E7CC0];

    return;
  }

  v5 = v4;
  v6 = &selRef_backButtonTitlePositionOffsetForCompact_;
  v7 = [v0 barButtonItem];
  if (v7 && (v8 = v7, v9 = [v7 resolvedTitle], v8, v9))
  {
    v10 = sub_18A4A7288();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v3 button];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  if (![v13 isBackButton])
  {

LABEL_21:

    v29 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
    swift_beginAccess();
    *&v3[v29] = MEMORY[0x1E69E7CC0];

    goto LABEL_22;
  }

  v65 = v5;
  v66 = v14;
  v15 = [v3 barButtonItem];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 _backButtonAlternateTitles];

    v18 = sub_18A4A7548();
    if (v12)
    {
      goto LABEL_10;
    }

LABEL_26:
    LODWORD(v21) = 0;
    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_10:
  v19 = (v18 + 40);
  v20 = *(v18 + 16) + 1;
  do
  {
    LODWORD(v21) = --v20 != 0;
    if (!v20)
    {
      break;
    }

    if (*(v19 - 1) == v10 && v12 == *v19)
    {
      break;
    }

    v19 += 2;
  }

  while ((sub_18A4A86C8() & 1) == 0);

  sub_188C6E6D4(v10, v12);
  v10 = v23;
  v2 = v24;

  v25 = sub_188C6E8BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v25 + 2);
  v26 = *(v25 + 3);
  v1 = (v6 + 1);
  if (v6 >= v26 >> 1)
  {
LABEL_70:
    v25 = sub_188C6E8BC((v26 > 1), v1, 1, v25);
  }

  *(v25 + 2) = v1;
  v27 = &v25[16 * v6];
  *(v27 + 4) = v10;
  *(v27 + 5) = v2;
LABEL_27:
  v70 = *(v18 + 16);
  if (v70)
  {
    v64 = v21;
    v33 = 0;
    v69 = v18 + 32;
    v21 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleLookup;
    v67 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes;
    while (1)
    {
      v26 = *(v18 + 16);
      if (v33 >= v26)
      {
        __break(1u);
        goto LABEL_70;
      }

      v6 = v18;
      v34 = (v69 + 16 * v33);
      v36 = *v34;
      v35 = v34[1];
      swift_beginAccess();
      v37 = *&v3[v21];
      v38 = *(v37 + 16);

      if (v38 && (v39 = sub_188B0944C(v36, v35), (v40 & 1) != 0))
      {
        v41 = *(v37 + 56) + 16 * v39;
        v1 = *v41;
        v2 = *(v41 + 8);
        swift_endAccess();
        v42 = v1;
      }

      else
      {
        swift_endAccess();
        v43 = *&v3[v67];
        if (v43)
        {
        }

        else
        {
          v43 = MEMORY[0x1E69E7CC8];
        }

        v44 = *&v3[v68];
        if (!v44)
        {
          __break(1u);
          return;
        }

        v1 = sub_188C67F68(v36, v35, v43, v44);
        v2 = v45;
        swift_beginAccess();
        v46 = v1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = *&v3[v21];
        *&v3[v21] = 0x8000000000000000;
        sub_188C6810C(v1, v36, v35, isUniquelyReferenced_nonNull_native, v2);

        *&v3[v21] = v71;
        swift_endAccess();
      }

      v10 = *(v25 + 2);
      if (v10)
      {
        v48 = 0;
        v49 = (v25 + 40);
        while (*v49 > v2)
        {
          ++v48;
          v49 += 2;
          if (v10 == v48)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
LABEL_45:
        v48 = *(v25 + 2);
      }

      if (!v12 || v48)
      {
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v72 = v25;
        if (!v50 || v10 >= *(v25 + 3) >> 1)
        {
          v25 = sub_188C6E8BC(v50, v10 + 1, 1, v25);
          v72 = v25;
        }

        v10 = &v72;
        sub_188C6E510(v48, v48, 1, v1, v2);
      }

      ++v33;

      v18 = v6;
      if (v33 == v70)
      {

        LODWORD(v21) = v64;
        goto LABEL_53;
      }
    }
  }

LABEL_53:
  v51 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
  swift_beginAccess();
  *&v3[v51] = v25;

  v52 = *(v25 + 2);
  if (v21)
  {

    v5 = v65;
    goto LABEL_58;
  }

  v5 = v65;
  if (!v12)
  {
LABEL_58:
    if (v52)
    {
      goto LABEL_59;
    }

    goto LABEL_22;
  }

  if (v52 > 1)
  {
LABEL_59:
    v53 = v5;
    LODWORD(v54) = 1132068864;
    [v53 setContentCompressionResistancePriority:0 forAxis:v54];
    v55 = *&v3[v51];
    if (*(v55 + 16))
    {
      v56 = *(v55 + 40);
    }

    else
    {
      v56 = 0.0;
    }

    v57 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint;
    if (*&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint])
    {

      v58 = *&v3[v57];
      if (!v58)
      {
LABEL_68:

        return;
      }

      [v58 setConstant_];
    }

    else
    {
      v59 = [v53 widthAnchor];

      v60 = [v59 constraintLessThanOrEqualToConstant_];
      v61 = *&v3[v57];
      *&v3[v57] = v60;
    }

    v62 = *&v3[v57];
    if (v62)
    {
      v63 = v62;
      [v63 setActive_];
    }

    goto LABEL_68;
  }

LABEL_22:
  LODWORD(v30) = 1144913920;
  [v5 setContentCompressionResistancePriority:0 forAxis:v30];
  v31 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint];
  if (v31)
  {
    v32 = v31;
    [v32 setActive_];
  }
}

id sub_188C67F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_18A4A7358() < 1)
  {

    return 0;
  }

  v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v6 = sub_18A4A7258();

  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v7 = sub_18A4A7088();

  v8 = [v5 initWithString:v6 attributes:v7];

  if (!v8)
  {
LABEL_8:

    return v8;
  }

  v9 = v8;
  [a4 contentEdgeInsets];
  if (![a4 _visualProvider])
  {

    goto LABEL_8;
  }

  type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    [v10 _intrinsicWidthForAttributedTitle_];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v8;
}

void sub_188C6810C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188B0944C(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_188FA698C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_188C6826C(v18, a4 & 1);
    v13 = sub_188B0944C(a2, a3);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a5;
  }

  else
  {
    sub_188C6E868(v13, a2, a3, a1, v23, a5);
  }
}

void sub_188C6826C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C60, &unk_18A6570A0);
  v40 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v40 & 1) == 0)
      {
        v29 = v27;
      }

      sub_18A4A8888();
      sub_18A4A7348();
      v30 = sub_18A4A88E8();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v39;
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

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

CGColorRef createPatternColorFromImage(void *a1)
{
  v1 = a1;
  [v1 scale];
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeScale(&v8, 1.0 / v2, -1.0 / v2);
  [v1 CGImage];

  v3 = CGPatternCreateWithImage2();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Pattern = CGColorSpaceCreatePattern(0);
  v6 = CGColorCreateWithPattern(Pattern, v4, &createPatternColorFromImage_alpha);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v4);
  return v6;
}

double sub_188C686D8(char a1, SEL *a2, SEL *a3)
{
  v6 = v3;
  v8 = [v6 button];
  if (v8 && (v9 = v8, v10 = [v8 appearanceData], v9, v10))
  {
    [v10 titlePositionAdjustmentForState_];
    v12 = v11;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = [Strong appearanceStorage];
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    if (a1)
    {
      v15 = a2;
    }

    else
    {
      v15 = a3;
    }

    v16 = [v14 *v15];
    if (v16)
    {
      v17 = v16;
      [v16 UIOffsetValue];
      v12 = v18;
    }

    else
    {
      v12 = 0.0;
    }
  }

  return v12;
}

void sub_188C68888()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = [(UIView *)v0 _typedStorage];
  sub_188A6852C(aBlock);

  if (v20)
  {
    sub_188A53994(aBlock, v23);
    sub_188ACE668(aBlock);
  }

  else
  {
    sub_188A3F5FC(aBlock, &unk_1EA933EC0, &qword_18A65E090);
    memset(v23, 0, sizeof(v23));
    v24 = 0;
  }

  sub_188A3F29C(v23, aBlock, &unk_1EA93C9A0, qword_18A6513A0);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
    v6 = type metadata accessor for _Glass(0);
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v4, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_188A3F5FC(aBlock, &unk_1EA93C9A0, qword_18A6513A0);
    v6 = type metadata accessor for _Glass(0);
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  type metadata accessor for _Glass(0);
  v8 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_188A3F5FC(v4, &unk_1EA93BA10, &qword_18A6526E0);
  if (v8)
  {
    sub_188A3F5FC(v23, &unk_1EA93C9A0, qword_18A6513A0);
  }

  else
  {
    v9 = objc_opt_self();
    sub_188A3F29C(v23, v17, &unk_1EA93C9A0, qword_18A6513A0);
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = v17[1];
    *(v10 + 24) = v17[0];
    *(v10 + 40) = v11;
    *(v10 + 56) = v18;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18902C134;
    *(v12 + 24) = v10;
    v21 = sub_188E3FE50;
    v22 = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    v20 = &block_descriptor_100_1;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    [v9 performWithoutAnimation_];
    _Block_release(v13);
    sub_188A3F5FC(v23, &unk_1EA93C9A0, qword_18A6513A0);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_188C68C5C()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

double __parametersOfSpringAnimation_block_invoke_3(uint64_t a1, double a2)
{
  v4 = *(a1 + 40);
  v5 = exp(-(*(a1 + 48) * a2));
  return v4 - fabs(v5 * (*(*(a1 + 32) + 16))(a2));
}

double __parametersOfSpringAnimation_block_invoke_4(uint64_t a1, double a2)
{
  v4 = a2 * a2;
  v5 = exp(-(*(a1 + 40) * a2));
  v6 = (*(*(a1 + 32) + 16))(a2);
  v7 = *(a1 + 48);
  v8 = v4 * *(a1 + 64);
  if (v5 * v6 <= 0.0)
  {
    v9 = v7 + *(a1 + 56) * a2 - v8;
  }

  else
  {
    v9 = -(v7 + *(a1 + 56) * a2 - v8);
  }

  v10 = *(a1 + 40) * a2;
  return v9 / (v4 * *(a1 + 72) * expf(v10));
}

void sub_188C68EF4(char *a1, double *a2, double a3, double a4, float a5, float a6)
{
  v12 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v13 = *&a1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v13 && (v14 = [v13 attributedTitleForState_]) != 0)
  {
    v15 = v14;
    v16 = [v14 string];

    v17 = sub_18A4A7288();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a1 barButtonItem];
  if (v20 && (v21 = v20, v22 = [v20 resolvedTitle], v21, v22))
  {
    v23 = sub_18A4A7288();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  if (sub_18A4A7358() < 1)
  {

    v27 = [a1 button];
    if (v27)
    {
      v30 = v27;
      *&v28 = a5;
      *&v29 = a6;
      [v27 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:a4 verticalFittingPriority:{v28, v29}];
      v32 = v31;
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    *a2 = v32;
    *(a2 + 1) = v34;
  }

  else
  {
    v26 = *&a1[v12];
    if (v26)
    {
      v42 = *&a1[v12];
    }

    else
    {
      v42 = sub_18909D928();
      v26 = 0;
    }

    v35 = v26;
    sub_188C69168(v23, v25);

    *&v36 = a5;
    *&v37 = a6;
    [v42 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:a4 verticalFittingPriority:{v36, v37}];
    *a2 = v38;
    *(a2 + 1) = v39;
    *a2 = sub_188C694AC() + *a2 + 6.0;
    if (v19)
    {
      v40 = v17;
    }

    else
    {
      v40 = 0;
    }

    if (v19)
    {
      v41 = v19;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    sub_188C69168(v40, v41);
  }
}

void sub_188C69168(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v3 = [v2 barButtonItem];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 resolvedTitle];

      if (v5)
      {
        sub_18A4A7288();
      }
    }
  }

  v6 = &v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  v7 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];

  if (v7 || (sub_188C5A3BC(), *v6))
  {
  }

  else
  {
    sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v8 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v9 = sub_18A4A7258();
  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v10 = sub_18A4A7088();

  v25 = [v8 initWithString:v9 attributes:v10];

  v11 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v12 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v12)
  {
    [v12 setAttributedTitle:v25 forState:0];
  }

  if (*v6)
  {
  }

  else
  {
    sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v14 = sub_18A4A7258();
  v15 = sub_18A4A7088();

  v16 = [v13 initWithString:v14 attributes:v15];

  v17 = *&v2[v11];
  if (v17)
  {
    [v17 setAttributedTitle:v16 forState:1];
  }

  if (*v6)
  {
  }

  else
  {
    sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_18A4A7258();

  v20 = sub_18A4A7088();

  v21 = [v18 initWithString:v19 attributes:v20];

  v22 = *&v2[v11];
  if (v22)
  {
    v23 = v22;
    v24 = v21;
    [v23 setAttributedTitle:v24 forState:2];
  }
}

double sub_188C694AC()
{
  v1 = [v0 button];
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
    v4 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v6 _backButtonContentPaddingInButtonBarButton_];
        v8 = v7;
        swift_unknownObjectRelease();

        v3 = v8 + v8;
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  v9 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  if (v9)
  {
    [v9 intrinsicContentSize];
    v2 = v10;
  }

  return v3 + v2 + 5.0;
}

void SetCachedPatternColor(void *a1, const void *a2)
{
  v3 = a1;
  v4 = qword_1ED498D30;
  key = v3;
  if (a2 && !qword_1ED498D30)
  {
    os_unfair_lock_lock(&stru_1ED498CF4);
    if (!qword_1ED498D30)
    {
      qword_1ED498D30 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    }

    os_unfair_lock_unlock(&stru_1ED498CF4);
    v4 = qword_1ED498D30;
    v3 = key;
  }

  if (v4)
  {
    os_unfair_lock_lock(&stru_1ED498CF4);
    if (a2)
    {
      CFDictionarySetValue(qword_1ED498D30, key, a2);
    }

    else
    {
      CFDictionaryRemoveValue(qword_1ED498D30, key);
    }

    os_unfair_lock_unlock(&stru_1ED498CF4);
    v3 = key;
    key[26] = key[26] & 0xFFFFFF7F | ((a2 != 0) << 7);
  }
}

unint64_t sub_188C69808(uint64_t a1)
{
  result = sub_188C65A5C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_188C69830(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFD8, &qword_18A665178);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BFC8, &qword_18A665170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFE0, &unk_18A665180);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&unk_1EA930830, &unk_1EA93BFC8, &qword_18A665170, &unk_18A674048);
    sub_18A4A5608();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void *sub_188C699E8@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  type metadata accessor for ButtonRepresentation.Coordinator();
  v5 = v4;
  v6 = objc_allocWithZone(v4);
  *&v6[OBJC_IVAR____TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator_barButtonItem] = v3;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = v3;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

id sub_188C69AC4(uint64_t a1)
{
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = [objc_opt_self() visualProviderForIdiom_];
  [v5 buttonBarButtonClass];
  swift_getObjCClassMetadata();
  sub_188A34624(0, &qword_1ED48C6B0, off_1E70EB178);
  swift_dynamicCastMetatypeUnconditional();
  v76 = v5;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVisualProvider_];
  v7 = *(v1 + 25);
  v8 = *(v1 + 57);
  v84 = *(v1 + 41);
  v85[0] = v8;
  *(v85 + 15) = *(v1 + 72);
  v82 = *(v1 + 9);
  v83 = v7;
  v9 = *(v1 + 8);
  v10 = v6;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setVerticallyCentersContents_];
  [v10 setUsesAdjustedTintColorWhenItemPrefersFilledAppearance_];
  [v10 setUsesTintColorCapsuleForSelection_];
  v11 = *(v1 + 145);
  [v10 setIsSingleItemInSectionWithPlatter_];
  [v10 removeTarget:0 action:0 forControlEvents:0x2000];
  v12 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFC0, &qword_18A665168) + 36));
  [v10 addTarget:v12 action:sel__invokeWithRealSender_forEvent_ forControlEvents:0x2000];
  [*(*v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem) setView_];

  v13 = *(v1 + 88);
  v15 = *(v1 + 104);
  v80 = *(v1 + 96);
  v14 = v80;
  v81 = v13;
  v16 = *(v1 + 144);
  type metadata accessor for ButtonWrapper();
  v18 = v17;
  v19 = objc_allocWithZone(v17);
  *&v19[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button] = v10;
  *&v19[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_coordinator] = v12;
  v20 = &v19[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance];
  *v20 = v13;
  *(v20 + 1) = v14;
  *(v20 + 2) = v15;
  type metadata accessor for ButtonWrapper.AppearanceDelegate();
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  v23[OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isCompact] = v16;
  v23[OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isSingleItemSection] = v11;
  v24 = &v23[OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_metrics];
  v25 = v82;
  *(v24 + 17) = v83;
  v26 = v85[0];
  *(v24 + 33) = v84;
  *(v24 + 49) = v26;
  *v24 = v9;
  *(v24 + 8) = *(v85 + 15);
  *(v24 + 1) = v25;
  v27 = v12;
  sub_188A3F29C(&v81, &v79, &qword_1EA93BFA8, &qword_18A665158);
  sub_188A3F29C(&v80, &v79, &qword_1EA93BFA8, &qword_18A665158);
  v28 = v10;
  v75 = v27;
  sub_188A3F29C(&v81, &v79, &qword_1EA93BFA8, &qword_18A665158);
  sub_188A3F29C(&v80, &v79, &qword_1EA93BFA8, &qword_18A665158);
  v78.receiver = v23;
  v78.super_class = v22;
  *&v19[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_appearanceDelegate] = objc_msgSendSuper2(&v78, sel_init);
  v77.receiver = v19;
  v77.super_class = v18;
  v29 = objc_msgSendSuper2(&v77, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 _glassMonochromaticTreatment];
  v33 = [(UIView *)v31 _traitOverrides];
  v34 = [(_UITraitOverrides *)v33 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
  inited = swift_initStackObject();
  *(inited + 16) = v34;
  v79 = inited;
  sub_188AED3F4(v32);
  v36 = v79;
  v37 = [(UIView *)v31 _traitOverrides];
  v38 = *(v36 + 16);

  [(_UITraitOverrides *)v37 _replaceWithOverrides:v38];

  v39 = [v31 traitCollection];
  v40 = [v39 userInterfaceIdiom];

  if (v40 == 5)
  {
    v41 = [(UIView *)v31 _traitOverrides];
    v42 = [(_UITraitOverrides *)v41 _swiftImplCopy];

    v43 = swift_initStackObject();
    *(v43 + 16) = v42;
    v79 = v43;
    sub_18914E51C(3);
    v44 = v79;
    v45 = [(UIView *)v31 _traitOverrides];
    v46 = *(v44 + 16);

    [(_UITraitOverrides *)v45 _replaceWithOverrides:v46];
  }

  v47 = v31;
  v48 = [(UIView *)v47 _traitOverrides];
  v49 = [(_UITraitOverrides *)v48 _swiftImplCopy];

  v50 = swift_initStackObject();
  *(v50 + 16) = v49;
  v79 = v50;
  sub_1890B30E8(1, &type metadata for UIContainedInBarMaterialTraitDefinition, sub_1890B2D2C, sub_18901C418);
  v51 = v79;
  v52 = [(UIView *)v47 _traitOverrides];
  v53 = *(v51 + 16);

  [(_UITraitOverrides *)v52 _replaceWithOverrides:v53];

  [v47 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges_];
  v54 = v28;
  [v47 addSubview_];
  if ([v54 translatesAutoresizingMaskIntoConstraints])
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    v55 = [v47 centerXAnchor];
    v56 = [v54 centerXAnchor];
    v57 = [v55 constraintEqualToAnchor_];

    v58 = [v47 centerYAnchor];
    v59 = [v54 centerYAnchor];

    v60 = [v58 constraintEqualToAnchor_];
    v61 = [v47 widthAnchor];
    v62 = [v54 widthAnchor];

    v63 = [v61 constraintEqualToAnchor_];
    v64 = [v47 heightAnchor];

    v65 = [v54 heightAnchor];
    v66 = [v64 constraintEqualToAnchor_];

    v67 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_18A64B810;
    *(v68 + 32) = v57;
    *(v68 + 40) = v60;
    *(v68 + 48) = v63;
    *(v68 + 56) = v66;
    sub_188A34624(0, &qword_1ED48CFF0, 0x1E69977A0);
    v69 = v57;
    v70 = v60;
    v71 = v63;
    v72 = v66;
    v73 = sub_18A4A7518();

    [v67 activateConstraints_];

    sub_188A3F5FC(&v81, &qword_1EA93BFA8, &qword_18A665158);
    sub_188A3F5FC(&v80, &qword_1EA93BFA8, &qword_18A665158);

    return v47;
  }

  return result;
}

void static UICorePlatformColorDefinition.resolvedColor(_:environment:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(sub_18A4A5A28());
  v26[0] = a1;
  swift_unknownObjectRetain();
  v5 = [v4 init];
  sub_188C6AAD4();
  v6 = sub_18A4A5328();
  v7 = aBlock;
  if (aBlock)
  {
    v8 = aBlock;
  }

  else
  {
    v6 = [objc_opt_self() currentTraitCollection];
    v8 = v6;
  }

  v26[1] = v26;
  MEMORY[0x1EEE9AC00](v6);
  v24[0] = a2;
  v24[1] = 0;
  v25 = v8;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_188EB7F24;
  v9[4] = &v23;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_188BA5B68;
  *(v10 + 24) = v9;
  v31 = sub_188A86D40;
  v32 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_188A7AC24;
  v30 = &block_descriptor_125;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = v7;

  v14 = [v8 traitCollectionByModifyingTraits_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15);
    v25 = a2;
    v16 = swift_allocObject();
    v16[2] = v5;
    v16[3] = sub_188EB8D90;
    v16[4] = v24;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_188EB96A0;
    *(v17 + 24) = v16;
    v31 = sub_188EB96AC;
    v32 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188A7AC24;
    v30 = &block_descriptor_14_7;
    v18 = _Block_copy(&aBlock);
    v19 = v12;
    v20 = v14;

    v21 = [v20 traitCollectionByModifyingTraits_];
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      v22 = [v26[0] resolvedColorWithTraitCollection_];
      sub_188B56C3C(v22);
      swift_unknownObjectRelease();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_188C6A99C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_188C6AA10(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_coordinator);
  v3 = OBJC_IVAR____TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator_barButtonItem;
  v4 = [*(v2 + OBJC_IVAR____TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator_barButtonItem) style];
  if (v4 == 2)
  {
    v5 = (a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance + 8);
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = (a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance);
  }

  [*(a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button) setAppearanceData_];
LABEL_6:
  v6 = *(a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button);
  v7 = *(v2 + v3);
  v8 = *(a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_appearanceDelegate);

  return [v6 configureFromBarItem:v7 withAppearanceDelegate:v8];
}

unint64_t sub_188C6AAD4()
{
  result = qword_1EA930350;
  if (!qword_1EA930350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930350);
  }

  return result;
}

uint64_t sub_188C6AB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_188C6ACE0(char *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v46 = sub_18A4A4CD8();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = sub_18A4A5318();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 144);
  v10 = *(v2 + 145);
  v53 = *(v2 + 88);
  v11 = &a1[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance];
  v12 = *&a1[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance];
  v13 = *&a1[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance + 8];
  *v11 = v53;
  v14 = *(v2 + 96);
  v52 = *(v2 + 96);
  *(v11 + 8) = v14;
  sub_188A3F29C(&v53, aBlock, &qword_1EA93BFA8, &qword_18A665158);
  sub_188A3F29C(&v52, aBlock, &qword_1EA93BFA8, &qword_18A665158);

  v15 = *&a1[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_appearanceDelegate];
  *(v15 + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isCompact) = v9;
  v41 = v10;
  *(v15 + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isSingleItemSection) = v10;
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_188C6AB9C;
  *(v18 + 24) = v17;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_103;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  [v16 performWithoutAnimation_];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v21 = v15 + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_metrics;
    v22 = *(v3 + 24);
    v23 = *(v3 + 56);
    *(v21 + 32) = *(v3 + 40);
    *(v21 + 48) = v23;
    *(v21 + 64) = *(v3 + 72);
    *v21 = *(v3 + 8);
    *(v21 + 16) = v22;
    v24 = *&v20[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button];
    [v24 setIsSingleItemInSectionWithPlatter_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BFB0, &qword_18A665160);
    sub_18A4A5A48();
    sub_18A4A5008();
    (*(v42 + 8))(v8, v43);
    v25 = v45;
    v26 = v46;
    v27 = (*(v45 + 88))(v6, v46);
    if (v27 == *MEMORY[0x1E697E7D0])
    {
      v28 = *(v3 + 112);
      v29 = *(v3 + 120);
      v30 = *(v3 + 128);
      v31 = *(v3 + 136);
      type metadata accessor for ButtonWrapper();
      v33 = v32;
      v48.receiver = v20;
      v48.super_class = v32;
      objc_msgSendSuper2(&v48, sel_setHitTestInsets_, v28, v29, v30, v31);
      v47.receiver = v20;
      v47.super_class = v33;
      objc_msgSendSuper2(&v47, sel_hitTestInsets);
LABEL_6:
      [v24 setHitTestInsets_];
      return;
    }

    if (v27 == *MEMORY[0x1E697E7D8])
    {
      v34 = *(v3 + 112);
      v35 = *(v3 + 120);
      v36 = *(v3 + 128);
      v37 = *(v3 + 136);
      type metadata accessor for ButtonWrapper();
      v39 = v38;
      v50.receiver = v20;
      v50.super_class = v38;
      objc_msgSendSuper2(&v50, sel_setHitTestInsets_, v34, v37, v36, v35);
      v49.receiver = v20;
      v49.super_class = v39;
      objc_msgSendSuper2(&v49, sel_hitTestInsets);
      goto LABEL_6;
    }

    (*(v25 + 8))(v6, v26);
  }
}

uint64_t sub_188C6B1C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_188C6B2F8(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  [a5 updateTraitsIfNeeded];
  sub_1890B358C(a1, a2 & 1, a3, a4 & 1);
  return result;
}

uint64_t _UIResponderRequiresTextInput(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [v1 _requiresKeyboardWhenFirstResponder];
    }

    else
    {
      v2 = [v1 conformsToProtocol:&unk_1EFE8B2D0];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __UIImageCacheKeyWithSentinel(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v10 = a1;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = v11;
  if (v10)
  {
    [v11 addObject:v10];
  }

  v20 = &a10;
  v13 = a9;
  if (v13 != @"__UIImageCacheKeySentinel")
  {
    v14 = v13;
    do
    {
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = @"__NilKey";
      }

      [v12 addObject:v15];
      v16 = v20++;
      v17 = *v16;

      v14 = v17;
    }

    while (v17 != @"__UIImageCacheKeySentinel");
  }

  v18 = [v12 copy];

  return v18;
}

void UIGraphicsPopContext(void)
{
  ContextStack = GetContextStack(0);

  PopContextFromStack(ContextStack);
}

void sub_188C6E510(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = v11 + 32 + 16 * a1;
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = (v12 + 16 * a3);
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v12 = a4;
    *(v12 + 8) = a5;
    v22 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

uint64_t _UIVibrancyStyleConvertToPublic(uint64_t a1)
{
  if ((a1 - 101) > 0x13)
  {
    return 101;
  }

  else
  {
    return qword_18A6783B0[a1 - 101];
  }
}

void sub_188C6E6D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleLookup;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_188B0944C(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 16 * v8);
    swift_endAccess();
    v11 = v10;
  }

  else
  {
    swift_endAccess();
    v12 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes);
    if (v12)
    {
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC8];
    }

    v13 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    if (v13)
    {
      v14 = v13;

      v15 = sub_188C67F68(a1, a2, v12, v14);
      v17 = v16;
      swift_beginAccess();
      v18 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      sub_188C6810C(v15, a1, a2, isUniquelyReferenced_nonNull_native, v17);

      *(v3 + v6) = v20;
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_188C6E868(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a5[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a6;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

char *sub_188C6E8BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934220, &qword_18A64BE48);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_188C6E9C8()
{
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    Width = CGRectGetWidth(v24);
  }

  else
  {
    Width = 0.0;
  }

  v12 = Width - (sub_188C694AC() + 6.0);
  v13 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
  swift_beginAccess();
  v14 = *&v0[v13];
  v15 = (v14 + 40);
  v16 = *(v14 + 16) + 1;
  while (--v16)
  {
    v17 = v15;
    v18 = *v15;
    if (*v15 > v12)
    {
      v15 += 2;
      if (vabdd_f64(v18, v12) > 0.0001)
      {
        continue;
      }
    }

    v19 = *(v17 - 1);
    if (v19)
    {
      v20 = v19;
      v21 = [v20 string];
      v22 = sub_18A4A7288();

      return v22;
    }

    return 0;
  }

  return 0;
}

uint64_t _shouldAssistantDescendent(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v5 = v3;
    v6 = v5;
    if (WeakRetained == v5)
    {
      v8 = 1;
    }

    else
    {
      v7 = v5;
      while (1)
      {
        v8 = [v7 _allowAssistanceInSubtree];
        if (!v8)
        {
          break;
        }

        v6 = [v7 superview];

        v7 = v6;
        if (v6 == WeakRetained)
        {
          goto LABEL_10;
        }
      }

      v6 = v7;
    }

LABEL_10:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_188C6EFA0(double a1)
{
  v3 = [v1 button];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (v4)
    {
      v22 = v3;
      v5 = v4;
      if (([v22 verticallyCentersContents] & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v7 = objc_msgSend(Strong, sel_centerTextButtons), swift_unknownObjectRelease(), v7))
      {
        v8 = [v5 centerYAnchor];
        v9 = [v22 centerYAnchor];
        v10 = [v8 constraintEqualToAnchor_];
        v11 = "TB_Bottom_Bottom";
        v12 = 0xD000000000000012;
      }

      else
      {
        v8 = [v5 lastBaselineAnchor];
        v13 = [v22 layoutMarginsGuide];
        v9 = [v13 bottomAnchor];

        v10 = [v8 constraintEqualToAnchor:v9 constant:a1];
        v11 = "IB_CenterX_CenterX";
        v12 = 0xD000000000000014;
      }

      v14 = v10;

      sub_188C5CE34(v14, v12, v11 | 0x8000000000000000);
      v15 = v5;
      v16 = [v15 topAnchor];
      v17 = v22;
      v18 = [v17 topAnchor];
      v19 = [v16 constraintGreaterThanOrEqualToAnchor_];

      sub_188C5CE34(v19, 0x545F706F545F4254, 0xEA0000000000706FLL);
      v20 = [v17 bottomAnchor];

      v21 = [v15 bottomAnchor];
      v23 = [v20 constraintGreaterThanOrEqualToAnchor_];

      sub_188C5CE34(v23, 0xD000000000000010, 0x800000018A6A4310);
      v3 = v23;
    }
  }
}

unint64_t sub_188C6F6AC()
{
  result = qword_1ED48EDE8;
  if (!qword_1ED48EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48EDE8);
  }

  return result;
}

void UICollectionLayoutListConfiguration.backgroundColor.setter(void *a1)
{
  sub_188C6FFB4(a1);
}

id sub_188C6FFB4(uint64_t a1)
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
    sub_188C2E864();
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0, &unk_18A668140);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setBackgroundColor_];
}

id sub_188C700A0(uint64_t a1, char a2, SEL *a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    [*(v8 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0, &unk_18A668140);
    v10 = swift_allocObject();
    *(v10 + 16) = v13;

    *v3 = v10;
  }

  v11 = 1.79769313e308;
  if ((a2 & 1) == 0)
  {
    v11 = *&a1;
  }

  return [v9 *a3];
}

double UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  sub_188C701F8(a1, a2, &block_descriptor_185, &selRef_setTrailingSwipeActionsConfigurationProvider_);

  return sub_188A55B8C(a1, a2);
}

void sub_188C701F8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = sub_188C702D8();
  v9 = v8;
  if (a1)
  {
    v13[4] = a1;
    v13[5] = a2;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_189123788;
    v13[3] = a3;
    v10 = _Block_copy(v13);
    v11 = v9;
    sub_188A52E38(a1, a2);
  }

  else
  {
    v12 = v8;
    v10 = 0;
  }

  [v9 *a4];
  _Block_release(v10);
}

uint64_t sub_188C702D8()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    return *(v2 + 16);
  }

  [*(v2 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188C2E864();
  swift_dynamicCast();
  v3 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0, &unk_18A668140);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;

  *v0 = v4;
  return v3;
}

void UICollectionLayoutListConfiguration.itemSeparatorHandler.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = sub_188C702D8();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    aBlock[4] = sub_188CE6160;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188CE5F94;
    aBlock[3] = &block_descriptor_118;
    v7 = _Block_copy(aBlock);
    v8 = v5;
    sub_188A52E38(a1, a2);

    [v8 setItemSeparatorHandler_];
    _Block_release(v7);

    sub_188A55B8C(a1, a2);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = *(v10 + 16);
    }

    else
    {
      [*(v10 + 16) copy];
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188C2E864();
      swift_dynamicCast();
      v11 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0, &unk_18A668140);
      v12 = swift_allocObject();
      *(v12 + 16) = v14;

      *v2 = v12;
    }

    [v11 setItemSeparatorHandler_];
  }
}

uint64_t sub_188C70568()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_188C705A4()
{
  v1 = __swift_project_boxed_opaque_existential_0(v0, *(v0 + 24));
  v2 = sub_188C70A3C(*v1);
  v3 = __swift_project_boxed_opaque_existential_0(v0, *(v0 + 24));
  if (sub_188C70E8C(*v3) < 2u || (v8 = __swift_project_boxed_opaque_existential_0(v0, *(v0 + 24)), v9 = sub_188C26B20(*v8, *(v8 + 8)), v9 != 3) && _UIAccessibilityFullKeyboardAccessEnabled(v9, v10))
  {
    v4 = *(v0 + 40);
    if ((v4 - 3) >= 2)
    {
      return 0;
    }

    v5 = __swift_project_boxed_opaque_existential_0(v0, *(v0 + 24));
    v6 = sub_188C706BC(*v5);
    if (!dyld_program_sdk_at_least())
    {
      return v4 == 3 && v6 == 3;
    }

    if (!v2)
    {
      return v6 != 3;
    }
  }

  return v2 == 2;
}

char *sub_188C706BC(void *a1)
{
  result = [a1 _splitViewControllerContext] + 1;
  if (result >= 8)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000045, 0x800000018A6B4610);
    [a1 _splitViewControllerContext];
    type metadata accessor for _UISplitViewControllerContext(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

double UICollectionLayoutListConfiguration._willBeginSwipingHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_188C70D78(a1, a2, &block_descriptor_182, &selRef__setWillBeginSwipingHandler_);

  return sub_188A55B8C(a1, a2);
}

double UICollectionLayoutListConfiguration._didEndSwipingHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_188C70D78(a1, a2, &block_descriptor_179_1, &selRef__setDidEndSwipingHandler_);

  return sub_188A55B8C(a1, a2);
}

unint64_t sub_188C70A3C(unint64_t a1)
{
  result = [(UITraitCollection *)a1 _selectionIsKey]+ 1;
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000003CLL, 0x800000018A6B46A0);
    [(UITraitCollection *)a1 _selectionIsKey];
    type metadata accessor for _UITraitCollectionSelectionIsKey(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

id sub_188C70C18(char a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0, &unk_18A668140);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

void _s10Foundation9IndexPathV5UIKitE3row7sectionACSi_SitcfC_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937BF0, &qword_18A6617E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A64BFA0;
  *(v4 + 32) = a2;
  *(v4 + 40) = a1;

  JUMPOUT(0x18CFDDA80);
}

void sub_188C70D78(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = sub_188C702D8();
  v9 = v8;
  if (a1)
  {
    v13[4] = a1;
    v13[5] = a2;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_188A4A8F0;
    v13[3] = a3;
    v10 = _Block_copy(v13);
    v11 = v9;
    sub_188A52E38(a1, a2);
  }

  else
  {
    v12 = v8;
    v10 = 0;
  }

  [v9 *a4];
  _Block_release(v10);
}

char *sub_188C70E8C(void *a1)
{
  result = [a1 _focusSystemState] + 1;
  if (result >= 4)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000003ALL, 0x800000018A6B4660);
    [a1 _focusSystemState];
    type metadata accessor for _UITraitCollectionFocusSystemState(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

id UIButton.init(configuration:primaryAction:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = *(v3 + 16);

  v6 = [ObjCClassFromMetadata buttonWithConfiguration:v5 primaryAction:a2];

  return v6;
}

uint64_t _UISupportsShouldInvalidateForInsets()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_EnableCollectionViewLayoutShouldInvalidateForInsets, @"EnableCollectionViewLayoutShouldInvalidateForInsets");
    if (byte_1ED48AAEC)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

BOOL _UIEdgeInsetsEqualToInsetsAlongAxis(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if ((a1 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIEdgeInsetsEqualToInsetsAlongAxis(UIEdgeInsets, UIEdgeInsets, UIAxis)"}];
    [v22 handleFailureInFunction:v23 file:@"_UICollectionLayoutHelpers.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"axis == UIAxisVertical || axis == UIAxisHorizontal || axis == UIAxisBoth"}];
  }

  v18 = a3 == a7;
  if (a2 != a6)
  {
    v18 = 0;
  }

  if (a5 != a9)
  {
    v18 = 0;
  }

  if (a4 != a8)
  {
    v18 = 0;
  }

  v19 = a2 == a6;
  if (a4 != a8)
  {
    v19 = 0;
  }

  v20 = a3 == a7;
  if (a5 != a9)
  {
    v20 = 0;
  }

  if (a1 != 1)
  {
    v20 = 0;
  }

  if (a1 != 2)
  {
    v19 = v20;
  }

  if (a1 == 3)
  {
    return v18;
  }

  else
  {
    return v19;
  }
}

uint64_t UIHostingViewBase.tearDown(uiView:updateDelegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_188C7180C(a1, a2, v3, ObjectType, a3);
}

uint64_t sub_188C7180C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver_];

  v8 = a1;
  v9 = [v8 window];
  if (v9)
  {
  }

  v10 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  swift_beginAccess();
  if (*(a3 + v10) == 1)
  {
    sub_18A4A4738();
  }

  sub_18A4A47E8();

  return sub_18A4A4948();
}

void sub_188C71E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __UIRunLoopObserverTrampoline(__CFRunLoopObserver *a1, int a2, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v6[2]();
  CFRelease(aBlock);
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveObserver(Current, a1, *MEMORY[0x1E695E8D0]);
}

id sub_188C72350()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  [*(v0 + 128) stopAnimations];
  v2 = [*(v0 + 128) hostContainerView];
  [v2 removeFromSuperview];

  v3 = *(v0 + 56);
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  [*(v0 + 72) removeFromSuperview];
  v4 = *(v0 + 80);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = v5;

      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v9 _setDonatedTitleView_];
      }

      swift_unknownObjectWeakAssign();
    }

    v11 = *(v0 + 80);
    if (v11)
    {
      [v11 removeFromSuperview];
    }
  }

  v12 = *(v0 + 96);
  if (v12)
  {
    [v12 removeFromSuperview];
  }

  v13 = *(v0 + 120);
  if (v13)
  {
    [v13 removeFromSuperview];
  }

  [*(v0 + 144) removeFromSuperview];
  v14 = *(v0 + 152);
  if (v14)
  {
    [v14 removeFromSuperview];
  }

  result = *(v0 + 160);
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

UIColor __swiftcall UIColor.init(_colorLiteralRed:green:blue:alpha:)(Swift::Float _colorLiteralRed, Swift::Float green, Swift::Float blue, Swift::Float alpha)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v9 = [v8 initWithRed:_colorLiteralRed green:green blue:blue alpha:alpha];
  result._cachedStyleString = v11;
  result._systemColorName = v10;
  result.super.isa = v9;
  return result;
}

unint64_t sub_188C72980()
{
  result = qword_1EA92F7D0;
  if (!qword_1EA92F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F7D0);
  }

  return result;
}

unint64_t sub_188C729D4()
{
  v0 = objc_opt_self();
  v1 = @"UICTFontTextStyleEmphasizedFootnote";
  v2 = [v0 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0, &unk_18A65FF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  v4 = *off_1E70EC918;
  *(inited + 32) = *off_1E70EC918;
  v5 = sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
  *(inited + 40) = v2;
  v6 = *off_1E70EC920;
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = v4;
  v9 = v2;
  v10 = v6;
  v11 = [v7 grayColor];
  *(inited + 104) = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
  *(inited + 80) = v11;
  v12 = sub_188AEC99C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C6D0, &unk_18A64E7C0);
  swift_arrayDestroy();

  return v12;
}

uint64_t sub_188C72BC4(uint64_t a1, int a2)
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

void __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(uint64_t a1)
{
  v2 = *(a1 + 40);
}

_UIOrderedRangeIndexerImpl *_UIOrderedRangeIndexerImpl::binarySearchForLocation@<X0>(_UIOrderedRangeIndexerImpl *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = xmmword_18A678470;
  *(a5 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 <= a4)
  {
    v5 = *this;
    while (1)
    {
      v6 = (a4 + a3) / 2;
      v7 = *(v5 + 16 * v6);
      v8 = *(v5 + 16 * v6 + 8);
      if (a2 >= v7 && a2 - v7 < v8)
      {
        break;
      }

      if (a3 == a4)
      {
        return this;
      }

      if (v8 + v7 <= a2)
      {
        a3 = v6 + 1;
        if (v6 >= a4)
        {
          return this;
        }
      }

      else
      {
        a4 = v6 - 1;
        if (a3 >= v6)
        {
          return this;
        }
      }
    }

    *a5 = *(v5 + 16 * v6);
    *(a5 + 16) = v6;
  }

  return this;
}

_UIOrderedRangeIndexerImpl *_UIOrderedRangeIndexerImpl::binarySearchForLocation@<X0>(_UIOrderedRangeIndexerImpl *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 3);
  v5 = a2 >= v3;
  v4 = a2 - v3;
  v5 = !v5 || v4 >= *(this + 4);
  if (!v5)
  {
    return _UIOrderedRangeIndexerImpl::binarySearchForLocation(this, a2, 0, ((*(this + 1) - *this) >> 4) - 1, a3);
  }

  *(a3 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *a3 = xmmword_18A678470;
  return this;
}

void _UIDataSourceDestroyUpdateMaps(uint64_t a1)
{
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIDataSourceDestroyUpdateMaps(_UIDataSourceUpdateMaps * _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:689 description:{@"Invalid parameter not satisfying: %@", @"updateMaps != NULL"}];
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    free(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    free(v5);
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
}

void sub_188C7495C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(va);

  _Unwind_Resume(a1);
}

void *__copy_constructor_8_8_sb0_sb8_sb16_sb24_sb32_sb40(void **a1, const void **a2)
{
  *a1 = _Block_copy(*a2);
  a1[1] = _Block_copy(a2[1]);
  a1[2] = _Block_copy(a2[2]);
  a1[3] = _Block_copy(a2[3]);
  a1[4] = _Block_copy(a2[4]);
  result = _Block_copy(a2[5]);
  a1[5] = result;
  return result;
}

void _UIDataSourceGenerateUpdateMaps(unsigned int *a1@<X0>, unsigned int *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, int32x4_t *a7@<X8>)
{
  v7 = a6;
  if (!a4)
  {
    v191 = [MEMORY[0x1E696AAA8] currentHandler];
    v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIDataSourceUpdateMaps _UIDataSourceGenerateUpdateMaps(const _UIDataSourceModel, const _UIDataSourceModel, const NSUInteger, const __strong _UIDataSourceUpdateProvider _Nonnull, const _UIDataSourceUpdateProcessingCallbacks, NSString * _Nullable __autoreleasing * _Nullable)"}];
    [v191 handleFailureInFunction:v192 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"updateProvider != NULL"}];

    v7 = a6;
  }

  v230 = objc_alloc_init(_UIMutableFastIndexSet);
  v200 = v7;
  v8 = objc_alloc_init(_UIMutableFastIndexSet);
  v9 = *(a1 + 1);
  v239[0] = *a1;
  v228 = _Block_copy(v9);
  v239[1] = v228;
  v222 = _Block_copy(*(a1 + 2));
  v239[2] = v222;
  v11 = *a2;
  v10 = *(a2 + 1);
  v238[0] = *a2;
  v12 = _Block_copy(v10);
  v238[1] = v12;
  v234 = _Block_copy(*(a2 + 2));
  v238[2] = v234;
  if (!a4)
  {
    v193 = [MEMORY[0x1E696AAA8] currentHandler];
    v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _computeGlobalIndexesOfItemUpdates(const _UIDataSourceModel, const _UIDataSourceModel, const NSUInteger, const __strong _UIDataSourceUpdateProvider, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, NSString *__autoreleasing *)"}];
    [v193 handleFailureInFunction:v194 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"updateProvider != NULL"}];
  }

  if (v230)
  {
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v195 = [MEMORY[0x1E696AAA8] currentHandler];
    v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _computeGlobalIndexesOfItemUpdates(const _UIDataSourceModel, const _UIDataSourceModel, const NSUInteger, const __strong _UIDataSourceUpdateProvider, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, NSString *__autoreleasing *)"}];
    [v195 handleFailureInFunction:v196 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"deleteItemUpdatesIncludingMoves != nil"}];

    if (v8)
    {
      goto LABEL_7;
    }
  }

  v197 = [MEMORY[0x1E696AAA8] currentHandler];
  v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _computeGlobalIndexesOfItemUpdates(const _UIDataSourceModel, const _UIDataSourceModel, const NSUInteger, const __strong _UIDataSourceUpdateProvider, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, NSString *__autoreleasing *)"}];
  [v197 handleFailureInFunction:v198 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"insertItemUpdatesIncludingMoves != nil"}];

LABEL_7:
  v224 = v8;
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      aBlock = 0u;
      v245 = 0u;
      (*(a4 + 16))(&aBlock);
      if ((BYTE8(v245) & 1) == 0)
      {
        break;
      }

LABEL_25:
      if (a3 == ++v14)
      {
        goto LABEL_44;
      }
    }

    v240 = 0uLL;
    *&v241 = 0;
    if (aBlock == 2)
    {
      v15 = v238;
    }

    else
    {
      if ((aBlock & 0xFFFFFFFFFFFFFFFDLL) != 1)
      {
        goto LABEL_24;
      }

      v15 = v239;
    }

    __copy_assignment_8_8_t0w8_sb8_sb16(&v240, v15);
    v16 = DWORD2(aBlock);
    v17 = v240;
    if (DWORD2(aBlock) >= v240)
    {
      if (v13)
      {
        goto LABEL_24;
      }

      v30 = MEMORY[0x1E696AEC0];
      v31 = _UIDataSourceUpdateActionDescription(aBlock);
      v32 = [v30 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu), but there are only %lu sections.", v31, v16, HIDWORD(aBlock), v17];
    }

    else
    {
      v18 = (*(*(&v240 + 1) + 16))(*(&v240 + 1), DWORD2(aBlock));
      v20 = HIDWORD(aBlock);
      v21 = (HIDWORD(aBlock) + v18);
      v22 = DWORD1(v240);
      if (v21 >= DWORD1(v240))
      {
        v215 = v241;
        if (v20 >= (*(v241 + 16))(v241, v16))
        {
          if (v13)
          {
            goto LABEL_24;
          }

          v35 = MEMORY[0x1E696AEC0];
          v36 = _UIDataSourceUpdateActionDescription(aBlock);
          v37 = [v35 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu), but there are only %lu items in the section.", v36, v16, HIDWORD(aBlock), (*(v215 + 16))(v215, v16)];
LABEL_35:
          v13 = v37;
          v38 = v37;

          goto LABEL_24;
        }

        if (v13)
        {
          goto LABEL_24;
        }

        v33 = MEMORY[0x1E696AEC0];
        v31 = _UIDataSourceUpdateActionDescription(aBlock);
        v32 = [v33 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu) (global item index %lu), but there are only %lu total items.", v31, v16, HIDWORD(aBlock), v21, v22];
      }

      else
      {
        v23 = v230;
        if (aBlock == 1)
        {
LABEL_20:
          [(_UIMutableFastIndexSet *)v23 addIndex:v21, v19];
          goto LABEL_24;
        }

        if (aBlock != 3)
        {
          if (aBlock == 2)
          {
            v23 = v8;
            goto LABEL_20;
          }

LABEL_24:

          goto LABEL_25;
        }

        v24 = v245;
        if (v245 >= v11)
        {
          if (!v13)
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu), but there are only %lu sections.", @"move", v245, DWORD1(v245), v11];
            v39 = v13;
          }

          goto LABEL_24;
        }

        v25 = v12[2](v12, v245);
        v27 = DWORD1(v245);
        v28 = (DWORD1(v245) + v25);
        if (v28 < HIDWORD(v11))
        {
          [(_UIMutableFastIndexSet *)v230 addIndex:v21, v26];
          [(_UIMutableFastIndexSet *)v8 addIndex:v28, v29];
          goto LABEL_24;
        }

        if (v27 < v234[2](v234, v24))
        {
          if (v13)
          {
            goto LABEL_24;
          }

          v40 = MEMORY[0x1E696AEC0];
          v36 = _UIDataSourceUpdateActionDescription(aBlock);
          v37 = [v40 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu) (global item index %lu), but there are only %lu total items.", v36, v24, DWORD1(v245), v28, HIDWORD(v11)];
          goto LABEL_35;
        }

        if (v13)
        {
          goto LABEL_24;
        }

        v41 = MEMORY[0x1E696AEC0];
        v31 = _UIDataSourceUpdateActionDescription(aBlock);
        v32 = [v41 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu), but there are only %lu items in the section.", v31, v24, DWORD1(v245), v234[2](v234, v24)];
      }
    }

    v13 = v32;
    v34 = v32;

    goto LABEL_24;
  }

  v13 = 0;
LABEL_44:

  v42 = v13;
  v43 = *a1;
  MapWithCapacity = _allocateMapWithCapacity(*a1);
  v44 = v8;
  if (v43)
  {
    v45 = 0;
    v46 = vdupq_n_s64(v43 - 1);
    v47 = xmmword_18A67CB70;
    v48 = xmmword_18A64C520;
    v49 = MapWithCapacity + 8;
    v50 = vdupq_n_s64(4uLL);
    do
    {
      v51 = vmovn_s64(vcgeq_u64(v46, v48));
      if (vuzp1_s16(v51, *v46.i8).u8[0])
      {
        *(v49 - 2) = v45;
      }

      if (vuzp1_s16(v51, *&v46).i8[2])
      {
        *(v49 - 1) = v45 + 1;
      }

      if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v47))).i32[1])
      {
        *v49 = v45 + 2;
        v49[1] = v45 + 3;
      }

      v45 += 4;
      v47 = vaddq_s64(v47, v50);
      v48 = vaddq_s64(v48, v50);
      v49 += 4;
    }

    while (((v43 + 3) & 0x1FFFFFFFCLL) != v45);
  }

  v52 = a1[1];
  v203 = _allocateMapWithCapacity(a1[1]);
  if (v52)
  {
    v53 = 0;
    v54 = vdupq_n_s64(v52 - 1);
    v55 = xmmword_18A67CB70;
    v56 = xmmword_18A64C520;
    v57 = v203 + 8;
    v58 = vdupq_n_s64(4uLL);
    do
    {
      v59 = vmovn_s64(vcgeq_u64(v54, v56));
      if (vuzp1_s16(v59, *v54.i8).u8[0])
      {
        *(v57 - 2) = v53;
      }

      if (vuzp1_s16(v59, *&v54).i8[2])
      {
        *(v57 - 1) = v53 + 1;
      }

      if (vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, *&v55))).i32[1])
      {
        *v57 = v53 + 2;
        v57[1] = v53 + 3;
      }

      v53 += 4;
      v55 = vaddq_s64(v55, v58);
      v56 = vaddq_s64(v56, v58);
      v57 += 4;
    }

    while (((v52 + 3) & 0x1FFFFFFFCLL) != v53);
  }

  v60 = *a1;
  __b = _allocateMapWithCapacity(*a1);
  if (v60)
  {
    memset(__b, 255, 4 * v60);
  }

  v61 = a1[1];
  v62 = _allocateMapWithCapacity(a1[1]);
  v63 = v62;
  if (v61)
  {
    memset(v62, 255, 4 * v61);
  }

  v219 = v63;
  v210 = objc_alloc_init(_UIMutableFastIndexSet);
  v64 = objc_alloc_init(_UIMutableFastIndexSet);
  v233 = objc_alloc_init(_UIMutableFastIndexSet);
  v223 = objc_alloc_init(_UIMutableFastIndexSet);
  v211 = v64;
  if (a3)
  {
    v65 = 0;
    while (1)
    {
      aBlock = 0u;
      v245 = 0u;
      (*(a4 + 16))(&aBlock);
      v240 = 0uLL;
      *&v241 = 0;
      v66 = a2;
      if (aBlock == 2)
      {
        break;
      }

      v66 = a1;
      if ((aBlock & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        break;
      }

      v88 = 0;
      v89 = 0;
LABEL_162:

      if (++v65 == a3)
      {
        goto LABEL_194;
      }
    }

    v235 = v65;
    v67 = v42;
    __copy_assignment_8_8_t0w8_sb8_sb16(&v240, v66);
    if (BYTE8(v245) == 1)
    {
      v69 = *a1;
      v70 = *a2;
      v71 = aBlock;
      v72 = DWORD2(aBlock);
      v73 = v245;
      if (!__b)
      {
        v124 = [MEMORY[0x1E696AAA8] currentHandler];
        v125 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v124 handleFailureInFunction:v125 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"sectionMoveSourceToDestMap != NULL"}];
      }

      if (v210)
      {
        if (v64)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v128 = [MEMORY[0x1E696AAA8] currentHandler];
        v129 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v128 handleFailureInFunction:v129 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"deletedSectionsIncludingMoves != nil"}];

        if (v64)
        {
          goto LABEL_75;
        }
      }

      v130 = [MEMORY[0x1E696AAA8] currentHandler];
      v131 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v130 handleFailureInFunction:v131 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"insertedSectionsIncludingMoves != nil"}];

LABEL_75:
      if (!a5)
      {
        v136 = [MEMORY[0x1E696AAA8] currentHandler];
        v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v136 handleFailureInFunction:v137 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"callbacksPtr != NULL"}];
      }

      if (v71 == 2)
      {
        v74 = v70;
      }

      else
      {
        v74 = v69;
      }

      if (v72 >= v74)
      {
        v75 = v67;
        if (!v67)
        {
          v140 = MEMORY[0x1E696AEC0];
          v141 = _UIDataSourceUpdateActionDescription(v71);
          v75 = [v140 stringWithFormat:@"Invalid batch updates detected: attempt to %@ section %lu, but there are only %lu sections.", v141, v72, v74];
          v142 = v75;
        }
      }

      else if (v71 == 3)
      {
        if (v73 >= v70)
        {
          v75 = v67;
          if (!v67)
          {
            v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ to destination section %lu, but there are only %lu sections.", @"move", v73, v70];
            v161 = v75;
          }
        }

        else
        {
          [(_UIMutableFastIndexSet *)v210 addIndex:v72, v68];
          [(_UIMutableFastIndexSet *)v64 addIndex:v73, v90];
          *(__b + v72) = v73;
          v91 = a5[2];
          v75 = v67;
          if (v91)
          {
            (*(v91 + 16))(v91, v235, v72, v73);
            v75 = v67;
          }
        }
      }

      else
      {
        if (v71 == 2)
        {
          [(_UIMutableFastIndexSet *)v64 addIndex:v72, v68];
          v76 = a5[1];
        }

        else
        {
          v75 = v67;
          if (v71 != 1)
          {
            goto LABEL_107;
          }

          [(_UIMutableFastIndexSet *)v210 addIndex:v72, v68];
          v76 = *a5;
        }

        v75 = v67;
        if (v76)
        {
          (*(v76 + 16))(v76, v235, v72);
          v75 = v67;
        }
      }

LABEL_107:
      v92 = v75;

      v93 = v240;
      v221 = _Block_copy(*(&v240 + 1));
      v94 = _Block_copy(v241);
      v216 = *a2;
      v217 = v94;
      v229 = _Block_copy(*(a2 + 1));
      v95 = _Block_copy(*(a2 + 2));
      v96 = aBlock;
      v97 = DWORD2(aBlock);
      v213 = v245;
      v65 = v235;
      if (!v219)
      {
        v143 = [MEMORY[0x1E696AAA8] currentHandler];
        v144 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v143 handleFailureInFunction:v144 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"itemMoveSourceToDestMap != NULL"}];
      }

      if (!v233)
      {
        v145 = [MEMORY[0x1E696AAA8] currentHandler];
        v146 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v145 handleFailureInFunction:v146 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:288 description:{@"Invalid parameter not satisfying: %@", @"deletedItemsIncludingMoves != nil"}];
      }

      if (!v223)
      {
        v147 = [MEMORY[0x1E696AAA8] currentHandler];
        v148 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v147 handleFailureInFunction:v148 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"insertedItemsIncludingMoves != nil"}];
      }

      if (v230)
      {
        if (v44)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v149 = [MEMORY[0x1E696AAA8] currentHandler];
        v150 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v149 handleFailureInFunction:v150 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"deleteItemUpdatesIncludingMoves != nil"}];

        if (v44)
        {
          goto LABEL_115;
        }
      }

      v151 = [MEMORY[0x1E696AAA8] currentHandler];
      v152 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v151 handleFailureInFunction:v152 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"insertItemUpdatesIncludingMoves != nil"}];

LABEL_115:
      if (!a5)
      {
        v153 = [MEMORY[0x1E696AAA8] currentHandler];
        v154 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v153 handleFailureInFunction:v154 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"callbacksPtr != NULL"}];
      }

      if (v97 >= v93)
      {
        if (v92)
        {
          v67 = v92;
        }

        else
        {
          v158 = MEMORY[0x1E696AEC0];
          v159 = _UIDataSourceUpdateActionDescription(v96);
          v67 = [v158 stringWithFormat:@"Invalid batch updates detected: attempt to %@ section %lu, but there are only %lu sections.", v159, v97, v93];
          v160 = v67;

          v92 = 0;
        }
      }

      else
      {
        v98 = v217[2](v217, v97);
        v99 = v221[2](v221, v97);
        if (v98)
        {
          v101 = v99;
          v102 = v92;
          v103 = 0;
          v231 = 0;
          v104 = 0;
          v212 = v95;
          v202 = v97;
          v205 = v102;
          v206 = v102;
          v105 = v98;
          v106 = v223;
          while (1)
          {
            v107 = (v101 + v103);
            if (v107 >= DWORD1(v93))
            {
              if (!v206)
              {
                v207 = MEMORY[0x1E696AEC0];
                v114 = _UIDataSourceUpdateActionDescription(v96);
                v115 = _UIDataSourceUpdateActionDescription(v96);
                v206 = [v207 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu) (global item index %lu) as part of an update to %@ section %lu, but there are only %lu total items.", v114, v202, v103, (v101 + v103), v115, v202, DWORD1(v93)];
                v116 = v206;
              }

              goto LABEL_136;
            }

            switch(v96)
            {
              case 3:
                if ([(_UIFastIndexSet *)v230 containsIndex:?])
                {
                  ++v231;
                }

                else if (v213 >= v216)
                {
                  if (!v206)
                  {
                    v206 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination section %lu as part of a section %@ update, but there are only %lu sections.", @"move", v213, @"move", v216];
                    v117 = v206;
LABEL_147:
                  }
                }

                else
                {
                  v109 = (v103 - v231 + v104);
                  v110 = v229[2]() + v109;
                  if ([(_UIFastIndexSet *)v224 containsIndex:v110])
                  {
                    do
                    {
                      ++v104;
                      v110 = (v110 + 1);
                    }

                    while (([(_UIFastIndexSet *)v224 containsIndex:v110]& 1) != 0);
                  }

                  v106 = v223;
                  if (v110 < HIDWORD(v216))
                  {
                    [(_UIMutableFastIndexSet *)v233 addIndex:v111];
                    [(_UIMutableFastIndexSet *)v223 addIndex:v110, v112];
                    v219[v107] = v110;
                    v113 = a5[5];
                    if (v113)
                    {
                      (*(v113 + 16))(v113, v235, (v101 + v103), v110);
                    }

                    break;
                  }

                  if (v109 >= v212[2](v212, v213))
                  {
                    if (!v206)
                    {
                      v206 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu) as part of a section %@ update, but there are only %lu items in the section.", @"move", v213, v109, @"move", v212[2](v212, v213)];
                      v119 = v206;
                      goto LABEL_147;
                    }
                  }

                  else if (!v206)
                  {
                    v206 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu) (global item index %lu) as part of a section %@ update, but there are only %lu total items.", @"move", v213, v109, v110, @"move", HIDWORD(v216)];
                    v118 = v206;
                    goto LABEL_147;
                  }
                }

                break;
              case 2:
                [(_UIMutableFastIndexSet *)v106 addIndex:v100];
                v108 = a5[4];
                if (v108)
                {
                  goto LABEL_127;
                }

                break;
              case 1:
                [(_UIMutableFastIndexSet *)v233 addIndex:v100];
                v108 = a5[3];
                if (!v108)
                {
                  break;
                }

LABEL_127:
                (*(v108 + 16))(v108, v235, (v101 + v103));
                break;
              default:
                break;
            }

LABEL_136:
            if (++v103 == v105)
            {
              v44 = v224;
              v64 = v211;
              v92 = v205;
              v67 = v206;
              goto LABEL_160;
            }
          }
        }

        v67 = v92;
        v65 = v235;
      }

      goto LABEL_161;
    }

    v77 = v240;
    v221 = _Block_copy(*(&v240 + 1));
    v217 = _Block_copy(v241);
    v78 = *a2;
    v229 = _Block_copy(*(a2 + 1));
    v212 = _Block_copy(*(a2 + 2));
    v79 = aBlock;
    v81 = DWORD2(aBlock);
    v80 = HIDWORD(aBlock);
    v82 = v245;
    v83 = DWORD1(v245);
    if (!v219)
    {
      v126 = [MEMORY[0x1E696AAA8] currentHandler];
      v127 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v126 handleFailureInFunction:v127 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"itemMoveSourceToDestMap != NULL"}];
    }

    if (!v233)
    {
      v132 = [MEMORY[0x1E696AAA8] currentHandler];
      v133 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v132 handleFailureInFunction:v133 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:390 description:{@"Invalid parameter not satisfying: %@", @"deletedItemsIncludingMoves != nil"}];
    }

    if (!v223)
    {
      v134 = [MEMORY[0x1E696AAA8] currentHandler];
      v135 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v134 handleFailureInFunction:v135 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"insertedItemsIncludingMoves != nil"}];
    }

    if (!a5)
    {
      v138 = [MEMORY[0x1E696AAA8] currentHandler];
      v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v138 handleFailureInFunction:v139 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"callbacksPtr != NULL"}];
    }

    if (v81 >= v77)
    {
      v44 = v224;
      if (v67)
      {
        v92 = v67;
      }

      else
      {
        v155 = MEMORY[0x1E696AEC0];
        v156 = _UIDataSourceUpdateActionDescription(v79);
        v67 = [v155 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu), but there are only %lu sections.", v156, v81, v80, v77];
        v157 = v67;

        v92 = 0;
      }

      goto LABEL_153;
    }

    v84 = HIDWORD(v77);
    v85 = v221[2](v221, v81) + v80;
    if (v85 >= HIDWORD(v77))
    {
      if (v80 >= v217[2](v217, v81))
      {
        v44 = v224;
        v64 = v211;
        if (v67)
        {
          v92 = v67;
          goto LABEL_160;
        }

        v167 = MEMORY[0x1E696AEC0];
        v165 = _UIDataSourceUpdateActionDescription(v79);
        v166 = [v167 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu), but there are only %lu items in the section.", v165, v81, v80, v217[2](v217, v81)];
      }

      else
      {
        v64 = v211;
        if (v67)
        {
          v92 = v67;
          v65 = v235;
          v95 = v212;
          v44 = v224;
          goto LABEL_161;
        }

        v164 = MEMORY[0x1E696AEC0];
        v165 = _UIDataSourceUpdateActionDescription(v79);
        v166 = [v164 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu) (global item index %lu), but there are only %lu total items.", v165, v81, v80, v85, v84];
      }

      v67 = v166;
      v168 = v166;

      v92 = 0;
      goto LABEL_152;
    }

    if (v79 != 3)
    {
      v64 = v211;
      if (v79 == 2)
      {
        [(_UIMutableFastIndexSet *)v223 addIndex:v85, v86];
        v87 = a5[4];
        if (!v87)
        {
LABEL_151:
          v92 = v67;
LABEL_152:
          v44 = v224;
LABEL_153:
          v64 = v211;
LABEL_160:
          v65 = v235;
          v95 = v212;
LABEL_161:

          v42 = v67;
          v89 = *(&v240 + 1);
          v88 = v241;
          goto LABEL_162;
        }

LABEL_150:
        (*(v87 + 16))(v87, v235, v85);
        goto LABEL_151;
      }

      if (v79 == 1)
      {
        [(_UIMutableFastIndexSet *)v233 addIndex:v85, v86];
        v87 = a5[3];
        if (!v87)
        {
          goto LABEL_151;
        }

        goto LABEL_150;
      }

      goto LABEL_158;
    }

    v64 = v211;
    if (v82 >= v78)
    {
      if (!v67)
      {
        v199 = v83;
        v95 = v212;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu), but there are only %lu sections.", @"move", v82, v199, v78];
        v67 = v65 = v235;
        v162 = v67;
        v92 = 0;
        v44 = v224;
        goto LABEL_161;
      }

      goto LABEL_158;
    }

    v120 = (v229[2])(v229, v82) + v83;
    if (v120 < HIDWORD(v78))
    {
      [(_UIMutableFastIndexSet *)v233 addIndex:v85, v121];
      [(_UIMutableFastIndexSet *)v223 addIndex:v120, v122];
      v219[v85] = v120;
      v123 = a5[5];
      if (v123)
      {
        (*(v123 + 16))(v123, v235, v85, v120);
      }

      goto LABEL_158;
    }

    if (v83 >= v212[2](v212, v82))
    {
      if (!v67)
      {
        v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu), but there are only %lu items in the section.", @"move", v82, v83, v212[2](v212, v82)];
        goto LABEL_193;
      }
    }

    else if (!v67)
    {
      v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu) (global item index %lu), but there are only %lu total items.", @"move", v82, v83, v120, HIDWORD(v78)];
LABEL_193:
      v67 = v163;
      v169 = v163;

      v92 = 0;
      goto LABEL_159;
    }

LABEL_158:
    v92 = v67;
LABEL_159:
    v44 = v224;
    goto LABEL_160;
  }

LABEL_194:
  v170 = _allocateMapWithCapacity(*a2);
  v171 = _allocateMapWithCapacity(a2[1]);
  v172 = v42 != 0;
  if ([(_UIFastIndexSet *)v210 count])
  {
    _processDeletedIndexes(*a1, v210, MapWithCapacity);
  }

  if ([(_UIFastIndexSet *)v64 count])
  {
    v173 = _processInsertedIndexes(*a1, *a2, v64, __b, MapWithCapacity, v170);
    if (v42)
    {
      v172 = 1;
    }

    else
    {
      v172 = v173;
    }
  }

  if ([(_UIFastIndexSet *)v233 count])
  {
    _processDeletedIndexes(a1[1], v233, v203);
  }

  if ([(_UIFastIndexSet *)v223 count])
  {
    v172 |= _processInsertedIndexes(a1[1], a2[1], v223, v219, v203, v171);
  }

  if (__b)
  {
    free(__b);
  }

  if (v219)
  {
    free(v219);
  }

  v174 = _populateNewIndexMap(*a1, *a2, MapWithCapacity, v170);
  v175 = v172 | v174 | _populateNewIndexMap(a1[1], a2[1], v203, v171);
  if (v175 == 1)
  {
    if (!v42)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: the number of sections and/or items returned by the data source before and after performing the batch updates are inconsistent with the updates."];
    }

    v178 = *a1;
    v179 = _Block_copy(*(a1 + 1));
    v180 = _Block_copy(*(a1 + 2));
    v181 = *a2;
    v236 = _Block_copy(*(a2 + 1));
    v232 = _Block_copy(*(a2 + 2));
    v182 = [MEMORY[0x1E696AD60] string];
    v218 = v171;
    v220 = v170;
    v208 = v42;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 3221225472;
    *&v245 = ___UIDataSourceBatchUpdateDescription_block_invoke;
    *(&v245 + 1) = &unk_1E710C178;
    v183 = v182;
    v246 = v183;
    v184 = _Block_copy(&aBlock);
    v243[0] = v178;
    v243[1] = _Block_copy(v179);
    v243[2] = _Block_copy(v180);
    v184[2](v184, @"before", v243);
    v242[0] = v181;
    v242[1] = _Block_copy(v236);
    v242[2] = _Block_copy(v232);
    v184[2](v184, @"after", v242);
    [v183 appendString:@"Updates = [\n"];
    if (a3)
    {
      v185 = 0;
      do
      {
        v240 = 0u;
        v241 = 0u;
        (*(a4 + 16))(&v240);
        if (v240)
        {
          if (BYTE8(v241) == 1)
          {
            v186 = _UIDataSourceUpdateActionDescription(v240);
            v187 = [v186 capitalizedString];
            [v183 appendFormat:@"\t%@ section %lu", v187, DWORD2(v240)];
          }

          else
          {
            v186 = _UIDataSourceUpdateActionDescription(v240);
            v187 = [v186 capitalizedString];
            [v183 appendFormat:@"\t%@ item (%lu - %lu)", v187, DWORD2(v240), HIDWORD(v240)];
          }

          if (v240 == 3)
          {
            if (BYTE8(v241) == 1)
            {
              [v183 appendFormat:@" to %lu", v241];
            }

            else
            {
              [v183 appendFormat:@" to (%lu - %lu)", v241, DWORD1(v241)];
            }
          }

          if (v185 < a3 - 1)
          {
            [v183 appendString:{@", \n"}];
          }
        }

        ++v185;
      }

      while (a3 != v185);
    }

    [v183 appendString:@"\n]"];
    v188 = v183;

    [v42 stringByAppendingFormat:@"\n%@", v188];
    v44 = v224;
    v64 = v211;
    v171 = v218;
    v170 = v220;
    v42 = LOBYTE(v175) = 1;
  }

  if (v200)
  {
    v189 = v42;
    *v200 = v42;
  }

  v176.i64[0] = *a1;
  v177.i64[0] = *a2;
  *a7 = vzip1q_s32(v176, v177);
  a7[1].i64[0] = MapWithCapacity;
  a7[1].i64[1] = v170;
  a7[2].i64[0] = v203;
  a7[2].i64[1] = v171;
  a7[3].i8[0] = v175;

  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(a5);
}

void sub_188C7676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(a50);
  __destructor_8_sb8_sb16(a42);
  __destructor_8_sb8_sb16(a35);
  _Unwind_Resume(a1);
}

void *_allocateMapWithCapacity(unsigned int a1)
{
  v2 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  if (!v2)
  {
    v4 = a1;
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex *_allocateMapWithCapacity(const _UIMapIndex)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:189 description:{@"Failed to allocate index map with capacity: %lu", v4}];
  }

  return v2;
}

uint64_t _populateNewIndexMap(int a1, unsigned int a2, uint64_t a3, void *__b)
{
  if (a3)
  {
    if (__b)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _populateNewIndexMap(const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMapIndex *)"}];
    [v12 handleFailureInFunction:v13 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:553 description:{@"Invalid parameter not satisfying: %@", @"oldIndexMap != NULL"}];

    if (__b)
    {
LABEL_3:
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _populateNewIndexMap(const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMapIndex *)"}];
  [v14 handleFailureInFunction:v15 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:554 description:{@"Invalid parameter not satisfying: %@", @"newIndexMap != NULL"}];

  if (a2)
  {
LABEL_4:
    memset(__b, 255, 4 * a2);
  }

LABEL_5:
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a3 + 4 * v8);
      if (v10 != -1)
      {
        if (v10 >= a2)
        {
          v9 = 1;
        }

        else
        {
          *(__b + v10) = v8;
        }
      }

      ++v8;
    }

    while (a1 != v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_188C76BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __destructor_8_sb0_AB8s24n1_S_sb8_sb16_AE(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void UIHostingViewBase.isHiddenForReuse.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong window];
    if (v6)
    {
    }

    if (*(v1 + v3) == 1)
    {
      sub_18A4A4738();
    }

    sub_18A4A47E8();
  }
}

uint64_t sub_188C7819C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188C781E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL _UISizeEqualToSizeWithPrecision(double a1, double a2, double a3, double a4, double a5)
{
  if (a5 < 0.0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UISizeEqualToSizeWithPrecision(CGSize, CGSize, CGFloat)"}];
    [v12 handleFailureInFunction:v13 file:@"_UICollectionLayoutHelpers.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"precision >= 0.0"}];
  }

  v10 = vabdd_f64(a1, a3) <= a5;
  return vabdd_f64(a2, a4) <= a5 && v10;
}

uint64_t _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(void *a1, float64x2_t *a2, _BYTE *a3, uint64_t a4)
{
  v21 = a2[1];
  v22 = *a2;
  result = _UIRTreeContainerNode<unsigned long>::boundingFrame(v24, a1);
  v20 = vaddq_f64(v22, v21);
  v8 = vorrq_s8(vandq_s8(vcgeq_f64(v22, vaddq_f64(v24[0], v24[1])), vcgtq_f64(v22, v24[0])), vandq_s8(vcgtq_f64(v24[0], v22), vcgeq_f64(v24[0], v20)));
  if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) == 0)
  {
    v9 = a1[12] - a1[11];
    if (v9)
    {
      v10 = 0;
      v11 = v9 >> 5;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      while (1)
      {
        v13 = (a1[11] + 32 * v10);
        v14 = vorrq_s8(vandq_s8(vcgeq_f64(v22, vaddq_f64(*v13, v13[1])), vcgtq_f64(v22, *v13)), vandq_s8(vcgtq_f64(*v13, v22), vcgeq_f64(*v13, v20)));
        if ((vorrq_s8(vdupq_laneq_s64(v14, 1), v14).u64[0] & 0x8000000000000000) == 0)
        {
          result = (*(a4 + 16))(a4, *(a1[8] + 8 * v10), a3);
          if (*a3)
          {
            break;
          }
        }

        if (v12 == ++v10)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = a1[5];
      v16 = a1[6];
      if (v15 != v16)
      {
        v17 = v15 + 16;
        do
        {
          v18 = *(v17 - 16);
          v23[0] = v22;
          v23[1] = v21;
          result = _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(v18, v23, a3, a4);
          if (*a3)
          {
            break;
          }

          v19 = v17 == v16;
          v17 += 16;
        }

        while (!v19);
      }
    }
  }

  return result;
}

void _UICollectionReusableViewCommonInit(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    [v1 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v1 _setHostsLayoutEngine:1];
  }
}

double sub_188C78D28()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090, &qword_18A669D10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  if ([(UIView *)v1 _isDeallocInitiated])
  {

    [(UICollectionViewCell *)v1 _executeConfigurationUpdate];
  }

  else
  {
    v46 = v12;
    v47 = v9;
    v48 = v5;
    v49 = v3;
    v50 = v2;
    v20 = [(UIView *)v1 _typedStorage];
    v21 = sub_188A4CEC4();

    if (v21)
    {
      sub_18913E3AC(14);
    }

    v51 = v21;
    v45 = *(v7 + 56);
    v45(v18, 1, 1, v6);
    v52 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = *(StatusReg + 848);
    *(StatusReg + 848) = v52;
    v24 = v7;
    v25 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [(UICollectionViewCell *)v1 _executeConfigurationUpdate];
    *(StatusReg + 848) = v23;
    v26 = v6;
    v27 = v52;
    byte_1ED4A3680 = v25;
    v28 = v24;
    sub_188A3F29C(v52, v15, &qword_1EA93E090, &qword_18A669D10);
    if ((*(v24 + 48))(v15, 1, v6) == 1)
    {
      sub_188A3F5FC(v27, &qword_1EA93E090, &qword_18A669D10);
      sub_188A3F5FC(v15, &qword_1EA93E090, &qword_18A669D10);
    }

    else
    {
      v29 = v47;
      (*(v24 + 32))(v47, v15, v6);
      v30 = sub_188ACEB88(v1, 14, &block_descriptor_52_1);
      v31 = v51;
      if (!v51)
      {
        v32 = v30;
        v33 = [(UIView *)v1 _typedStorage];
        v31 = sub_188A4CEC4();

        v30 = v32;
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = 14;
      *(v35 + 25) = v30;
      *(v35 + 32) = [UITableViewCell _invalidateConfiguration]_0;
      *(v35 + 40) = 0;
      v36 = v46;
      (*(v24 + 16))(v46, v29, v26);
      v45(v36, 0, 1, v26);

      v37 = v48;
      sub_18A4A2BE8();
      if (!v31)
      {
        type metadata accessor for TrackingDictionary();
        v38 = swift_allocObject();
        *(v38 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v39 = [(UIView *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098, &qword_18A669D18);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        v51 = v34;
        v41 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(&v39->super.isa + v41);
        *(&v39->super.isa + v41) = 0x8000000000000000;
        sub_188A40430(v40, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v39->super.isa + v41) = v53;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v37, 14);

      v43 = swift_allocObject();
      *(v43 + 16) = sub_188B57AD4;
      *(v43 + 24) = v35;

      MEMORY[0x18CFDDAE0](v37, 0, 0, sub_188B57248, v43);

      (*(v49 + 8))(v37, v50);
      (*(v28 + 8))(v29, v26);
      sub_188A3F5FC(v52, &qword_1EA93E090, &qword_18A669D10);
    }
  }

  return result;
}

uint64_t UIHostingViewBase.isHiddenForReuse.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t _UICollectionViewCompositionalLayoutShouldRespectPreferredSizeOnEstimatedAxisOnly()
{
  if (qword_1ED49CC90 != -1)
  {
    dispatch_once(&qword_1ED49CC90, &__block_literal_global_564);
  }

  if (_MergedGlobals_1032)
  {
    return 0;
  }

  return dyld_program_sdk_at_least();
}

id sub_188C79ACC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = *(v4 + *a3);
  v8 = sub_18A4A2B08();
  v9 = [v7 *a4];

  return v9;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t _UIRTreeContainerNode<_UICollectionViewRTreeElement>::enumerateElementsIntersectingWithConstRef(void *a1, float64x2_t *a2, _BYTE *a3, uint64_t a4)
{
  v22 = a2[1];
  v23 = *a2;
  result = _UIRTreeContainerNode<unsigned long>::boundingFrame(v25, a1);
  v21 = vaddq_f64(v23, v22);
  v8 = vorrq_s8(vandq_s8(vcgeq_f64(v23, vaddq_f64(v25[0], v25[1])), vcgtq_f64(v23, v25[0])), vandq_s8(vcgtq_f64(v25[0], v23), vcgeq_f64(v25[0], v21)));
  if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) == 0)
  {
    v9 = a1[12] - a1[11];
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = v9 >> 5;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      while (1)
      {
        v14 = (a1[11] + 32 * v11);
        v15 = vorrq_s8(vandq_s8(vcgeq_f64(v23, vaddq_f64(*v14, v14[1])), vcgtq_f64(v23, *v14)), vandq_s8(vcgtq_f64(*v14, v23), vcgeq_f64(*v14, v21)));
        if ((vorrq_s8(vdupq_laneq_s64(v15, 1), v15).u64[0] & 0x8000000000000000) == 0)
        {
          result = (*(a4 + 16))(a4, a1[8] + v10, a3);
          if (*a3)
          {
            break;
          }
        }

        ++v11;
        v10 += 40;
        if (v13 == v11)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v16 = a1[5];
      v17 = a1[6];
      if (v16 != v17)
      {
        v18 = v16 + 16;
        do
        {
          v19 = *(v18 - 16);
          v24[0] = v23;
          v24[1] = v22;
          result = _UIRTreeContainerNode<_UICollectionViewRTreeElement>::enumerateElementsIntersectingWithConstRef(v19, v24, a3, a4);
          if (*a3)
          {
            break;
          }

          v20 = v18 == v17;
          v18 += 16;
        }

        while (!v20);
      }
    }
  }

  return result;
}

float64x2_t *_UIRTreeContainerNode<unsigned long>::boundingFrame(float64x2_t *result, uint64_t a2)
{
  v2 = result;
  v4 = *(a2 + 112);
  v3 = *(a2 + 128);
  v5 = vornq_s8(vmvnq_s8(vceqq_f64(v4, v4)), vceqq_f64(v3, v3));
  if ((vorrq_s8(v5, vdupq_laneq_s64(v5, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    v7 = *(a2 + 88);
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    v3 = 0uLL;
    while (v7 != *(a2 + 96))
    {
      v9 = *v7;
      v8 = v7[1];
      v7 += 2;
      v10 = vaddq_f64(v4, v3);
      v4 = vminnmq_f64(v4, v9);
      v3 = vsubq_f64(vmaxnmq_f64(v10, vaddq_f64(v9, v8)), v4);
    }

    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    while (v11 != v12)
    {
      v14 = v3;
      v15 = v4;
      v13 = *v11;
      v11 += 2;
      result = _UIRTreeContainerNode<unsigned long>::boundingFrame(v16, v13);
      v4 = vminnmq_f64(v15, v16[0]);
      v3 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v15, v14), vaddq_f64(v16[0], v16[1])), v4);
    }

    *(a2 + 112) = v4;
    *(a2 + 128) = v3;
  }

  *v2 = v4;
  v2[1] = v3;
  return result;
}

BOOL _s5UIKit24UICellConfigurationStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  if (((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && ((*(a1 + 10) ^ *(a2 + 10)) & 1) == 0 && ((*(a1 + 11) ^ *(a2 + 11)) & 1) == 0 && ((*(a1 + 12) ^ *(a2 + 12)) & 1) == 0 && ((*(a1 + 13) ^ *(a2 + 13)) & 1) == 0 && ((*(a1 + 14) ^ *(a2 + 14)) & 1) == 0 && ((*(a1 + 15) ^ *(a2 + 15)) & 1) == 0 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && ((*(a1 + 19) ^ *(a2 + 19)) & 1) == 0 && ((*(a1 + 20) ^ *(a2 + 20)) & 1) == 0 && *(a1 + 17) == *(a2 + 17) && *(a1 + 18) == *(a2 + 18))
  {
    v4 = a1[3];
    v5 = a2[3];
    sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
    return (sub_18A4A7C88() & 1) != 0 && (sub_188C7A41C(v4, v5) & 1) != 0;
  }

  return result;
}

uint64_t sub_188C7A41C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    sub_188BBA230(*(v3 + 56) + 40 * v12, &v24);
    v21 = v25;
    v22 = v24;
    v14 = v26;
    v15 = v13;
    if (!v13)
    {
      return 1;
    }

    v16 = v15;
    v24 = v22;
    v25 = v21;
    v26 = v14;
    v17 = sub_188B00858(v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_188BBA15C(&v24);
      return 0;
    }

    sub_188BBA230(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x18CFE2F70](v23, &v24);
    sub_188BBA15C(v23);
    result = sub_188BBA15C(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_188C7A5A0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_188C7A5F8(v6, a4);

  return v8;
}

void sub_188C7ADA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = v12[5].__vftable;
  if (v14)
  {
    v12[5].__shared_owners_ = v14;
    operator delete(v14);
  }

  v15 = v12[4].__vftable;
  if (v15)
  {
    v12[4].__shared_owners_ = v15;
    operator delete(v15);
  }

  std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](va);
  shared_weak_owners = v12[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v17 = v12[2].__vftable;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v18);

  _Unwind_Resume(a1);
}

void _UIRTreeContainerNode<unsigned long>::commonInit(int64x2_t *a1)
{
  a1[8] = 0uLL;
  a1[7] = vdupq_n_s64(0x7FF8000000000000uLL);
  v2 = a1[5].i64[1];
  v3 = a1[6].i64[0];
  if ((v3 - v2) >> 5 != (a1[4].i64[1] - a1[4].i64[0]) >> 3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIRTreeContainerNode<>::commonInit() [T = unsigned long]"];
    [v12 handleFailureInFunction:v13 file:@"_UIRTree.mm" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"_childFrames.size() == _childElements.size()"}];

    v2 = a1[5].i64[1];
    v3 = a1[6].i64[0];
  }

  if (v2 == v3)
  {
    v9 = a1[3].i64[0];
    v10 = a1[2].i64[1];
    if (v10 == v9)
    {
      return;
    }

    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    v5 = 0uLL;
    do
    {
      v14 = v5;
      v15 = v4;
      v11 = *v10;
      v10 += 2;
      _UIRTreeContainerNode<unsigned long>::boundingFrame(v16, v11);
      v4 = vminnmq_f64(v15, v16[0]);
      v5 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v15, v14), vaddq_f64(v16[0], v16[1])), v4);
    }

    while (v10 != v9);
  }

  else
  {
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    v5 = 0uLL;
    do
    {
      v7 = *v2;
      v6 = v2[1];
      v2 += 2;
      v8 = vaddq_f64(v4, v5);
      v4 = vminnmq_f64(v4, v7);
      v5 = vsubq_f64(vmaxnmq_f64(v8, vaddq_f64(v7, v6)), v4);
    }

    while (v2 != v3);
  }

  a1[7] = v4;
  a1[8] = v5;
}

double _UISizeValueForAxis(uint64_t a1, double a2, double a3)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return a3;
    }

    else
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UISizeValueForAxis(CGSize, UIAxis)"}];
      [v3 handleFailureInFunction:v4 file:@"_UICollectionLayoutHelpers.m" lineNumber:200 description:@"Unknown layout axis."];

      return 0.0;
    }
  }

  return a2;
}

uint64_t _UIDirectionalEdgeForPreEdgeOnLayoutAxis(uint64_t a1)
{
  if ((a1 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDirectionalRectEdge _UIDirectionalEdgeForPreEdgeOnLayoutAxis(UIAxis)"];
    [v3 handleFailureInFunction:v4 file:@"_UICollectionLayoutHelpers.m" lineNumber:1046 description:@"Invalid layout axis."];
  }

  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t _UIDirectionalEdgeForPostEdgeOnLayoutAxis(uint64_t a1)
{
  if ((a1 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDirectionalRectEdge _UIDirectionalEdgeForPostEdgeOnLayoutAxis(UIAxis)"];
    [v3 handleFailureInFunction:v4 file:@"_UICollectionLayoutHelpers.m" lineNumber:1052 description:@"Invalid layout axis."];
  }

  if (a1 == 2)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

void sub_188C7B888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = v3[5].__vftable;
  if (v6)
  {
    v3[5].__shared_owners_ = v6;
    operator delete(v6);
  }

  v7 = v3[4].__vftable;
  if (v7)
  {
    v3[4].__shared_owners_ = v7;
    operator delete(v7);
  }

  std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](va);
  shared_weak_owners = v3[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v9 = v3[2].__vftable;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v10);
  _Unwind_Resume(a1);
}