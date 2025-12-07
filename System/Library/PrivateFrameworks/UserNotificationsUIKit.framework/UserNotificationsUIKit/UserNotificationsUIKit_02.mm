unint64_t sub_21E8B906C()
{
  result = qword_27CED71B8;
  if (!qword_27CED71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED71B8);
  }

  return result;
}

char *sub_21E8B90C4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_image] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_label] = v9;
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageView] = v10;
  [v10 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_contentView] = v11;
  v66.receiver = v4;
  v66.super_class = type metadata accessor for HighlightsTitleView();
  v12 = objc_msgSendSuper2(&v66, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_contentView;
  v14 = *&v12[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_contentView];
  v15 = v12;
  [v15 addSubview_];
  v16 = OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_label;
  [*&v12[v13] addSubview_];
  v17 = OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageView;
  [*&v12[v13] addSubview_];
  [*&v15[v16] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v15[v17] setContentMode_];
  [*&v15[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  v65 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21E947650;
  v19 = [*&v12[v13] leadingAnchor];
  v20 = [v15 &selRef_isViewVisibleForNotificationGroupList_ + 1];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [*&v12[v13] trailingAnchor];
  v23 = [v15 &selRef_userNotificationDigest + 4];

  v24 = [v22 constraintEqualToAnchor_];
  *(v18 + 40) = v24;
  v25 = [*&v12[v13] topAnchor];
  v26 = [v15 &selRef_useRegularMaterial];

  v27 = [v25 constraintEqualToAnchor_];
  *(v18 + 48) = v27;
  v28 = [*&v12[v13] bottomAnchor];
  v29 = [v15 bottomAnchor];

  v30 = [v28 constraintEqualToAnchor_];
  *(v18 + 56) = v30;
  v31 = [*&v15[v16] centerYAnchor];
  v32 = [*&v15[v17] centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v18 + 64) = v33;
  v34 = [*&v15[v16] centerYAnchor];
  v35 = [v15 centerYAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v18 + 72) = v36;
  v37 = [*&v15[v16] topAnchor];
  v38 = [v15 topAnchor];

  v39 = [v37 constraintLessThanOrEqualToAnchor_];
  *(v18 + 80) = v39;
  v40 = [*&v15[v17] leadingAnchor];
  v41 = [v15 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor:v41 constant:16.0];
  *(v18 + 88) = v42;
  v43 = [*&v15[v17] widthAnchor];
  v44 = [*&v15[v17] heightAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 multiplier:1.0];

  *(v18 + 96) = v45;
  v46 = [*&v15[v16] leadingAnchor];
  v47 = [*&v15[v17] trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:8.0];

  *(v18 + 104) = v48;
  v49 = [v15 trailingAnchor];

  v50 = [*&v15[v16] trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:16.0];

  *(v18 + 112) = v51;
  sub_21E8BA1B8();
  v52 = sub_21E92A518();

  [v65 activateConstraints_];

  v53 = *&v15[v16];
  v54 = [objc_opt_self() labelColor];
  [v53 setTextColor_];

  v55 = *&v15[v16];
  v56 = objc_opt_self();
  v57 = [v56 sharedApplication];
  v58 = [v57 preferredContentSizeCategory];

  LODWORD(v57) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v59 = MEMORY[0x277D76988];
  if (v57)
  {
    v59 = MEMORY[0x277D76918];
  }

  v60 = *MEMORY[0x277D74420];
  v61 = *v59;
  v62 = [v56 sharedApplication];
  v63 = [v62 preferredContentSizeCategory];

  LODWORD(v62) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  [v15 _updateTextAttributesForLabel_withTextStyle_fontWeight_additionalTraits_maximumNumberOfLines_];

  return v15;
}

double sub_21E8B9930()
{
  v1 = [*&v0[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageView] image];
  if (v1)
  {
    v2 = v1;
    [v1 size];
    v4 = v3;

    v5 = v4 + 24.0;
  }

  else
  {
    v5 = 24.0;
  }

  v6 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_label];
  [v0 bounds];
  [v6 sizeThatFits_];
  return v7;
}

void sub_21E8B99E0()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for HighlightsTitleView();
  objc_msgSendSuper2(&v28, sel__updateTextAttributes);
  v1 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_label];
  v27 = objc_opt_self();
  v2 = [v27 labelColor];
  [v1 setTextColor_];

  v3 = objc_opt_self();
  v4 = [v3 sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v6 = *MEMORY[0x277D76988];
  v7 = *MEMORY[0x277D76918];
  if (v4)
  {
    v8 = *MEMORY[0x277D76918];
  }

  else
  {
    v8 = *MEMORY[0x277D76988];
  }

  v9 = *MEMORY[0x277D74420];
  v10 = v8;
  v11 = [v3 sharedApplication];
  v12 = [v11 preferredContentSizeCategory];

  LODWORD(v11) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  [v0 _updateTextAttributesForLabel_withTextStyle_fontWeight_additionalTraits_maximumNumberOfLines_];

  v13 = [v3 sharedApplication];
  v14 = [v13 preferredContentSizeCategory];

  LODWORD(v13) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (v13)
  {
    v15 = v7;
  }

  else
  {
    v15 = v6;
  }

  v16 = v15;
  v17 = [v0 _preferredFont_textStyle_weight_additionalTraits_];

  v18 = objc_opt_self();
  v19 = [v18 configurationWithFont_];
  v20 = [v27 labelColor];
  v21 = [v18 configurationWithHierarchicalColor_];

  v22 = [v19 configurationByApplyingConfiguration_];
  v23 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_image];
  if (v23 && (v24 = [v23 imageByApplyingSymbolConfiguration_]) != 0)
  {
    v25 = v24;
    v26 = [v24 imageWithRenderingMode_];
  }

  else
  {
    v26 = 0;
  }

  [*&v0[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageView] setImage_];
}

uint64_t sub_21E8B9D6C()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for HighlightsTitleView();
  objc_msgSendSuper2(&v29, sel_adjustForContentSizeCategoryChange);
  v1 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_label];
  v28 = objc_opt_self();
  v2 = [v28 labelColor];
  [v1 setTextColor_];

  v3 = objc_opt_self();
  v4 = [v3 sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v6 = *MEMORY[0x277D76988];
  v7 = *MEMORY[0x277D76918];
  if (v4)
  {
    v8 = *MEMORY[0x277D76918];
  }

  else
  {
    v8 = *MEMORY[0x277D76988];
  }

  v9 = *MEMORY[0x277D74420];
  v10 = v8;
  v11 = [v3 sharedApplication];
  v12 = [v11 preferredContentSizeCategory];

  LODWORD(v11) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  [v0 _updateTextAttributesForLabel_withTextStyle_fontWeight_additionalTraits_maximumNumberOfLines_];

  v13 = [v3 sharedApplication];
  v14 = [v13 preferredContentSizeCategory];

  LODWORD(v13) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (v13)
  {
    v15 = v7;
  }

  else
  {
    v15 = v6;
  }

  v16 = v15;
  v17 = [v0 _preferredFont_textStyle_weight_additionalTraits_];

  v18 = objc_opt_self();
  v19 = [v18 configurationWithFont_];
  v20 = [v28 labelColor];
  v21 = [v18 configurationWithHierarchicalColor_];

  v22 = [v19 configurationByApplyingConfiguration_];
  v23 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_image];
  if (v23 && (v24 = [v23 imageByApplyingSymbolConfiguration_]) != 0)
  {
    v25 = v24;
    v26 = [v24 imageWithRenderingMode_];
  }

  else
  {
    v26 = 0;
  }

  [*&v0[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageView] setImage_];

  return 1;
}

id sub_21E8BA0E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21E8BA1B8()
{
  result = qword_280D03E38;
  if (!qword_280D03E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D03E38);
  }

  return result;
}

void sub_21E8BA204(uint64_t a1)
{
  *(a1 + qword_27CED71E8) = 0;
  sub_21E92A988();
  __break(1u);
}

void sub_21E8BA26C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SwiftUIHostingController(0);
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v2 = qword_27CED71E8;
  if ((*(v0 + qword_27CED71E8) & 1) == 0)
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 superview];

      if (!v5)
      {
        return;
      }

      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 setTranslatesAutoresizingMaskIntoConstraints_];

        v8 = [v1 view];
        if (v8)
        {
          v9 = v8;
          [v5 bounds];
          [v9 setFrame_];

          v10 = [v1 view];
          if (v10)
          {
            v11 = v10;
            sub_21E8BA470(v5);

            v12 = [v1 view];
            if (v12)
            {
              v13 = v12;
              [v12 invalidateIntrinsicContentSize];

              v14 = [v1 view];
              if (v14)
              {
                v15 = v14;
                [v14 setNeedsUpdateConstraints];

                *(v1 + v2) = 1;
                return;
              }

LABEL_16:
              __break(1u);
              return;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t type metadata accessor for SwiftUIHostingController(uint64_t a1)
{
  result = qword_27CED71F0;
  if (!qword_27CED71F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E8BA470(void *a1)
{
  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21E947680;
  v6 = [a1 leadingAnchor];
  v7 = [v2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [a1 trailingAnchor];
  v10 = [v2 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [a1 topAnchor];
  v13 = [v2 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v5 + 56) = v17;
  sub_21E8BA1B8();
  v18 = sub_21E92A518();

  [v4 activateConstraints_];
}

void sub_21E8BA6C4(void *a1)
{
  v1 = a1;
  sub_21E8BA26C();
}

id SwiftUIHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21E8BA810(void *a1)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_21E8BA848(uint64_t a1, void *a2)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id sub_21E8BA8A8()
{
  result = [objc_opt_self() weakObjectsHashTable];
  qword_280D03E90 = result;
  return result;
}

id sub_21E8BA908(uint64_t a1, char a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0, &qword_21E947530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v3[OBJC_IVAR___NCPlatterView__isBackgroundHidden] = 0;
  v10 = OBJC_IVAR___NCPlatterView_supportsGlass;
  v3[OBJC_IVAR___NCPlatterView_supportsGlass] = 1;
  v3[OBJC_IVAR___NCPlatterView_supportsMitosis] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_glassTintColor] = 0;
  v3[OBJC_IVAR___NCPlatterView_unmanagedBackdropContrast] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_lastApparentZDistanceToUser] = 0x7FFFFFFFFFFFFFFFLL;
  *&v3[OBJC_IVAR___NCPlatterView_apparentZDistanceToUser] = 0x7FFFFFFFFFFFFFFFLL;
  *&v3[OBJC_IVAR___NCPlatterView_animatedGlassTransitionVelocityThreshold] = 0x4075E00000000000;
  *&v3[OBJC_IVAR___NCPlatterView_instantGlassTransitionVelocityThreshold] = 0x408F400000000000;
  *&v3[OBJC_IVAR___NCPlatterView_rootListScrollVelocity] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_glassMode] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_breakthroughLightHandle] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_glassTransitionAnimator] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_opacityTransitionAnimator] = 0;
  v3[OBJC_IVAR___NCPlatterView_glassState] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_glassId] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_glassLuminanceValueTraitChangeRegistration] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_debugBorderView] = 0;
  *&v3[OBJC_IVAR___NCPlatterView_debugLabel] = 0;
  swift_beginAccess();
  v3[v10] = a2;
  *&v3[OBJC_IVAR___NCPlatterView_glassSmoothness] = a3;
  v18.receiver = v3;
  v18.super_class = NCPlatterView;
  result = objc_msgSendSuper2(&v18, sel_initWithRecipe_, a1);
  if (result)
  {
    v12 = result;
    sub_21E8BFA34();
    [v12 addOrRemoveZDepthDebugViewsIfNeeded];
    sub_21E8BF7BC(v12);
    v13 = sub_21E92A5B8();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_21E92A598();
    v14 = sub_21E92A588();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    sub_21E8E8A7C(0, 0, v9, &unk_21E947718, v15);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E8BABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_21E92A598();
  *(v4 + 56) = sub_21E92A588();
  v6 = sub_21E92A578();

  return MEMORY[0x2822009F8](sub_21E8BAC54, v6, v5);
}

uint64_t sub_21E8BAC54()
{
  v1 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75B0, &qword_21E948810);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21E947520;
  v3 = sub_21E8C065C();
  *(v2 + 32) = &type metadata for NCGlassLuminanceValueTraits;
  *(v2 + 40) = v3;
  v0[5] = type metadata accessor for NCPlatterView(v3);
  v0[2] = v1;
  v4 = v1;
  v5 = MEMORY[0x223D648C0](v2, v0 + 2, sel_glassLuminanceChanged);

  [v4 setGlassLuminanceValueTraitChangeRegistration_];
  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

void NCPlatterView._continuousCornerRadius.setter()
{
  v3.super_class = NCPlatterView;
  objc_msgSendSuper2(&v3, sel__setContinuousCornerRadius_);
  v1 = [v0 customContentView];
  if (v1)
  {
    v2 = v1;
    [v0 _continuousCornerRadius];
    [v2 _setContinuousCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

void NCPlatterView.materialRecipe.setter(uint64_t a1)
{
  v1.super_class = NCPlatterView;
  objc_msgSendSuper2(&v1, sel_setMaterialRecipe_, a1);
  sub_21E8BFA34();
}

id NCPlatterView.tintColor.getter()
{
  v2.super_class = NCPlatterView;
  v0 = objc_msgSendSuper2(&v2, sel_tintColor);

  return v0;
}

void NCPlatterView.tintColor.setter(void *a1)
{
  v6.super_class = NCPlatterView;
  objc_msgSendSuper2(&v6, sel_setTintColor_, a1);
  v3 = [v1 customContentView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    [v4 setTintColor_];
  }

  else
  {
    __break(1u);
  }
}

void NCPlatterView.isBackgroundHidden.setter(char a1)
{
  v2 = a1 & 1;
  if ([v1 _isBackgroundHidden] != v2)
  {
    [v1 set:v2 isBackgroundHidden:?];

    sub_21E8BFA34();
  }
}

uint64_t NCPlatterView.supportsGlass.getter()
{
  v1 = OBJC_IVAR___NCPlatterView_supportsGlass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NCPlatterView.supportsMitosis.getter()
{
  v1 = OBJC_IVAR___NCPlatterView_supportsMitosis;
  swift_beginAccess();
  return *(v0 + v1);
}

double NCPlatterView.glassSmoothness.getter()
{
  v1 = OBJC_IVAR___NCPlatterView_glassSmoothness;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NCPlatterView.glassSmoothness.setter(double a1)
{
  v3 = OBJC_IVAR___NCPlatterView_glassSmoothness;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *NCPlatterView.glassTintColor.getter()
{
  v1 = OBJC_IVAR___NCPlatterView_glassTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void NCPlatterView.glassTintColor.setter(void *a1)
{
  v3 = OBJC_IVAR___NCPlatterView_glassTintColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_21E8BFA34();
}

uint64_t NCPlatterView.unmanagedBackdropContrast.getter()
{
  v1 = OBJC_IVAR___NCPlatterView_unmanagedBackdropContrast;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21E8BB910(_BYTE *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = a1[v6];
  a1[v6] = a3;
  if (v7 != a3)
  {
    v8 = a1;
    sub_21E8BFA34();
  }
}

void sub_21E8BB988(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v6 != v4)
  {
    sub_21E8BFA34();
  }
}

id sub_21E8BBC34(double a1)
{
  v2 = *&v1[OBJC_IVAR___NCPlatterView_rootListScrollVelocity];
  *&v1[OBJC_IVAR___NCPlatterView_rootListScrollVelocity] = a1;
  v3 = fabs(a1);
  result = [v1 instantGlassTransitionVelocityThreshold];
  if (v5 < v3)
  {
    result = [v1 instantGlassTransitionVelocityThreshold];
    if (fabs(v2) < v6)
    {

      return [v1 immediatelyEndGlassTransitionAnimators];
    }
  }

  return result;
}

void sub_21E8BBD38(uint64_t a1)
{
  v2 = OBJC_IVAR___NCPlatterView_glassMode;
  v3 = *&v1[OBJC_IVAR___NCPlatterView_glassMode];
  switch(v3)
  {
    case 2:
LABEL_4:

      sub_21E8BFA34();
      return;
    case 1:
      v4 = [v1 glassTransitionAnimator];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 state];

        if (v6 == 1)
        {
          v7 = [v1 glassTransitionAnimator];
          if (v7)
          {
            v8 = v7;
            [v7 stopAnimation_];
          }

          [v1 setGlassTransitionAnimator_];
        }
      }

      v9 = [v1 opacityTransitionAnimator];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 state];

        if (v11 == 1)
        {
          v12 = [v1 opacityTransitionAnimator];
          if (v12)
          {
            v13 = v12;
            [v12 stopAnimation_];
          }

          v14 = [v1 opacityTransitionAnimator];
          if (v14)
          {
            v15 = v14;
            [v14 finishAnimationAtPosition_];
          }

          [v1 setOpacityTransitionAnimator_];
        }
      }

      v16 = [v1 customContentView];
      if (v16)
      {
        v17 = v16;
        v30 = 0;
        memset(v29, 0, sizeof(v29));
        sub_21E92A718();
      }

      break;
    case 0:
      goto LABEL_4;
    default:
      if (qword_27CED6AE8 != -1)
      {
        swift_once();
      }

      v18 = sub_21E929A78();
      __swift_project_value_buffer(v18, qword_27CED9EC0);
      v19 = v1;
      v20 = v1;
      oslog = sub_21E929A58();
      v21 = sub_21E92A628();

      if (os_log_type_enabled(oslog, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v29[0] = v23;
        *v22 = 136446210;
        v31 = *&v19[v2];
        type metadata accessor for NCNotificationListZPositionableGlassMode(0);
        v24 = sub_21E92A478();
        v26 = sub_21E79841C(v24, v25, v29);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_21E77E000, oslog, v21, "Platter received invalid glass mode %{public}s", v22, 0xCu);
        v27 = __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D65FB0](v23, -1, -1, v27);
        MEMORY[0x223D65FB0](v22, -1, -1);
      }

      else
      {
      }

      break;
  }
}

double sub_21E8BC0EC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___NCPlatterView_breakthroughLightHandle);
  *(v1 + OBJC_IVAR___NCPlatterView_breakthroughLightHandle) = a1;
  if (a1)
  {
    if (v2)
    {
      sub_21E929C58();
      sub_21E8C0488(&qword_27CED7170, MEMORY[0x277D74E10], MEMORY[0x277D74E18]);
      swift_retain_n();
      v3 = sub_21E92A418();

      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_21E8BFA34();
LABEL_9:

    return result;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_21E8BC1EC(char a1, int a2, double a3, double a4)
{
  v20 = a2;
  v6 = sub_21E92A2F8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_21E92A348();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v19[-v12];
  sub_21E796644(0, &qword_280D03E40, 0x277D85C78);
  v21 = sub_21E92A6C8();
  sub_21E92A328();
  sub_21E92A398();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 25) = v20;
  *(v16 + 32) = a3;
  aBlock[4] = sub_21E8C04D0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E792C28;
  aBlock[3] = &block_descriptor_1;
  _Block_copy(aBlock);
  v22 = MEMORY[0x277D84F90];
  sub_21E8C0488(&qword_280D03F00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0, qword_21E948860);
  sub_21E8C04E4();
  sub_21E92A7E8();
  sub_21E92A368();
  swift_allocObject();
  sub_21E92A358();

  v17 = v21;
  sub_21E92A688();

  return (v14)(v13, v7);
}

void sub_21E8BC528(uint64_t a1, int a2, int a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR___NCPlatterView_breakthroughLightHandle;
    if (*(Strong + OBJC_IVAR___NCPlatterView_breakthroughLightHandle))
    {

      v10 = sub_21E929C38();

      if (*&v8[v9])
      {

        v11 = sub_21E929C18();

        if (((v10 ^ a2) & 1) == 0 && ((v11 ^ a3) & 1) == 0)
        {
          goto LABEL_13;
        }

        if (*&v8[v9])
        {
LABEL_12:
          v13 = objc_opt_self();
          v14 = swift_allocObject();
          *(v14 + 16) = v8;
          *(v14 + 24) = a2 & 1;
          *(v14 + 25) = a3 & 1;
          v24 = sub_21E8C0590;
          v25 = v14;
          aBlock = MEMORY[0x277D85DD0];
          v21 = 1107296256;
          v22 = sub_21E792C28;
          v23 = &block_descriptor_19;
          v15 = _Block_copy(&aBlock);
          v16 = v8;

          v17 = swift_allocObject();
          *(v17 + 16) = v16;
          v24 = sub_21E8C05A0;
          v25 = v17;
          aBlock = MEMORY[0x277D85DD0];
          v21 = 1107296256;
          v22 = sub_21E8BC90C;
          v23 = &block_descriptor_25;
          v18 = _Block_copy(&aBlock);
          v19 = v16;

          [v13 animateWithDuration:0x10000000 delay:v15 options:v18 animations:a4 completion:0.0];
          _Block_release(v18);
          _Block_release(v15);
LABEL_13:

          return;
        }

LABEL_11:
        sub_21E929C58();
        swift_allocObject();
        v12 = sub_21E929C08();
        sub_21E8BC0EC(v12);
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
    }

    if (((v10 ^ a2) & 1) == 0 && (a3 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }
}

double sub_21E8BC7A4(uint64_t a1, char a2, char a3)
{
  v3 = OBJC_IVAR___NCPlatterView_breakthroughLightHandle;
  if (*(a1 + OBJC_IVAR___NCPlatterView_breakthroughLightHandle))
  {

    sub_21E929C48();

    if (*(a1 + v3))
    {

      sub_21E929C28();
    }
  }

  return result;
}

void sub_21E8BC844(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return;
  }

  v3 = OBJC_IVAR___NCPlatterView_breakthroughLightHandle;
  if (!*(a2 + OBJC_IVAR___NCPlatterView_breakthroughLightHandle))
  {
LABEL_10:
    *(a2 + v3) = 0;
    return;
  }

  v4 = sub_21E929C38();

  if (!*(a2 + v3))
  {
    if (v4)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = sub_21E929C18();

  if (((v4 | v5) & 1) == 0)
  {
    v6 = *(a2 + v3);
    *(a2 + v3) = 0;
    if (v6)
    {
      sub_21E8BFA34();
    }
  }
}

double sub_21E8BC90C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_21E8BCAE4()
{
  v1 = [v0 glassTransitionAnimator];
  v2 = 1.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 state];

    if (v4 == 1)
    {
      v5 = [v0 glassTransitionAnimator];
      if (v5)
      {
        v6 = v5;
        [v5 fractionComplete];
        v2 = v7;
      }

      v8 = [v0 glassTransitionAnimator];
      if (v8)
      {
        v9 = v8;
        [v8 stopAnimation_];
      }

      [v0 setGlassTransitionAnimator_];
    }
  }

  v10 = [v0 opacityTransitionAnimator];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 state];

    if (v12 == 1)
    {
      v13 = [v0 opacityTransitionAnimator];
      if (v13)
      {
        v14 = v13;
        [v13 fractionComplete];
      }

      v15 = [v0 opacityTransitionAnimator];
      if (v15)
      {
        v16 = v15;
        [v15 stopAnimation_];
      }

      [v0 setOpacityTransitionAnimator_];
    }
  }

  return v2;
}

void sub_21E8BCC84()
{
  v1 = [v0 glassTransitionAnimator];
  if (v1 || (v1 = [v0 opacityTransitionAnimator]) != 0)
  {

    v2 = [v0 glassTransitionAnimator];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 state];

      if (v4 == 1)
      {
        v5 = [v0 glassTransitionAnimator];
        if (v5)
        {
          v6 = v5;
          [v5 stopAnimation_];
        }

        v7 = [v0 glassTransitionAnimator];
        if (v7)
        {
          v8 = v7;
          [v7 finishAnimationAtPosition_];
        }

        [v0 setGlassTransitionAnimator_];
      }
    }

    v9 = [v0 opacityTransitionAnimator];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 state];

      if (v11 == 1)
      {
        v12 = [v0 opacityTransitionAnimator];
        if (v12)
        {
          v13 = v12;
          [v12 stopAnimation_];
        }

        v14 = [v0 opacityTransitionAnimator];
        if (v14)
        {
          v15 = v14;
          [v14 finishAnimationAtPosition_];
        }

        [v0 setOpacityTransitionAnimator_];
      }
    }
  }
}

uint64_t sub_21E8BCEA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  swift_getObjectType();
  v3 = sub_21E929B78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E929BC8();
  v8 = *(v7 - 8);
  v116 = v7;
  v117 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v106 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v106 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v106 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v106 - v21;
  MEMORY[0x28223BE20](v23);
  v115 = &v106 - v24;
  v25 = sub_21E929C88();
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v35 = MEMORY[0x28223BE20](v28);
  v36 = v2[OBJC_IVAR___NCPlatterView_glassState];
  if (v2[OBJC_IVAR___NCPlatterView_glassState])
  {
    v110 = v34;
    v111 = v33;
    v112 = v32;
    v113 = &v106 - v31;
    v118 = v30;
    v114 = v29;
    if (v36 == 1)
    {
      [v2 setGlassSmoothness_];
      if ([v2 unmanagedBackdropContrast])
      {
        [v2 setGlassSmoothness_];
        if (!*&v2[OBJC_IVAR___NCPlatterView_breakthroughLightHandle])
        {
          sub_21E929BA8();
          (*(v4 + 104))(v6, *MEMORY[0x277D74DF8], v3);
          sub_21E929B88();
          (*(v4 + 8))(v6, v3);
          v73 = v116;
          v74 = *(v117 + 8);
          v74(v19, v116);
          sub_21E929B48();
          v74(v22, v73);
          v75 = v112;
          sub_21E929C98();
          v76 = v113;
          sub_21E929BE8();
          v77 = *(v118 + 8);
          v78 = v114;
          v77(v75, v114);
          v79 = v119;
          sub_21E929BF8();
          v77(v76, v78);
          return (*(v118 + 56))(v79, 0, 1, v78);
        }

        sub_21E929BA8();
        (*(v4 + 104))(v6, *MEMORY[0x277D74DF8], v3);
        sub_21E929B88();
        (*(v4 + 8))(v6, v3);
        v37 = v116;
        v38 = *(v117 + 8);
        v38(v16, v116);
        sub_21E929B48();
        v38(v19, v37);
        sub_21E929B68();
        v38(v22, v37);
        v39 = v112;
        sub_21E929C98();
        v40 = v113;
        sub_21E929BE8();
        v41 = *(v118 + 8);
        v42 = v114;
        v41(v39, v114);
        v43 = v119;
        sub_21E929BF8();

        goto LABEL_24;
      }

      v56 = [swift_getObjCClassFromMetadata() useRegularMaterial];
      v57 = *&v2[OBJC_IVAR___NCPlatterView_breakthroughLightHandle];
      if (v56)
      {
        v58 = v116;
        if (v57)
        {

          sub_21E929BA8();
          sub_21E929BB8();
          v59 = v58;
          v60 = *(v117 + 8);
          v108 = ((v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v60(v19, v59);
          v61 = v115;
          sub_21E929B38();
          v60(v22, v59);
          sub_21E929B68();

          v109 = v60;
          v60(v61, v59);
          v58 = v59;
          v62 = v117;
        }

        else
        {
          sub_21E929BA8();
          v61 = v115;
          sub_21E929BB8();
          v62 = v117;
          v81 = *(v117 + 8);
          v108 = ((v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v81(v22, v58);
          sub_21E929B38();
          v109 = v81;
          v81(v61, v58);
        }
      }

      else
      {
        v58 = v116;
        if (v57)
        {

          sub_21E929B98();
          (*(v4 + 104))(v6, *MEMORY[0x277D74DE8], v3);
          sub_21E929B88();
          (*(v4 + 8))(v6, v3);
          v69 = *(v117 + 8);
          v108 = ((v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v69(v16, v58);
          v70 = [v2 traitCollection];
          [v70 glassLuminanceValue];

          sub_21E929B58();
          v69(v19, v58);
          v61 = v115;
          sub_21E929B38();
          v69(v22, v58);
          sub_21E929B68();

          v109 = v69;
          v69(v61, v58);
          v62 = v117;
        }

        else
        {
          sub_21E929B98();
          (*(v4 + 104))(v6, *MEMORY[0x277D74DE8], v3);
          sub_21E929B88();
          (*(v4 + 8))(v6, v3);
          v62 = v117;
          v82 = *(v117 + 8);
          v108 = ((v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v82(v19, v58);
          v83 = [v2 traitCollection];
          [v83 glassLuminanceValue];

          v61 = v115;
          sub_21E929B58();
          v82(v22, v58);
          sub_21E929B38();
          v109 = v82;
          v82(v61, v58);
        }
      }

      (*(v62 + 16))(v61, v13, v58);
      [v2 glassSmoothness];
      v84 = v110;
      sub_21E929C98();
      v85 = v111;
      sub_21E929BD8();

      v86 = *(v118 + 8);
      v87 = v114;
      v86(v84, v114);
      v88 = v112;
      sub_21E929BE8();
      v86(v85, v87);
      v89 = v58;
      v90 = v113;
      sub_21E929BF8();
      v86(v88, v87);
      v91 = [v2 glassTintColor];
      v92 = v119;
      sub_21E929C78();

      v86(v90, v87);
      v109(v13, v89);
      return (*(v118 + 56))(v92, 0, 1, v87);
    }

    else
    {
      v47 = [v2 supportsMitosis];
      if ([v2 unmanagedBackdropContrast])
      {
        [v2 setGlassSmoothness_];
        if (*&v2[OBJC_IVAR___NCPlatterView_breakthroughLightHandle])
        {

          sub_21E929BA8();
          (*(v4 + 104))(v6, *MEMORY[0x277D74DF8], v3);
          sub_21E929B88();
          (*(v4 + 8))(v6, v3);
          v48 = *(v117 + 8);
          v49 = v19;
          v50 = v116;
          v48(v49, v116);
          sub_21E929B68();
          v48(v22, v50);
          v51 = v112;
          sub_21E929C98();
          v52 = v113;
          sub_21E929BE8();
          v53 = *(v118 + 8);
          v54 = v114;
          v53(v51, v114);
          v55 = v119;
          sub_21E929BF8();

          v53(v52, v54);
          return (*(v118 + 56))(v55, 0, 1, v54);
        }

        sub_21E929BA8();
        (*(v4 + 104))(v6, *MEMORY[0x277D74DF8], v3);
        sub_21E929B88();
        (*(v4 + 8))(v6, v3);
        (*(v117 + 8))(v22, v116);
        v80 = v112;
        sub_21E929C98();
        v40 = v113;
        sub_21E929BE8();
        v41 = *(v118 + 8);
        v42 = v114;
        v41(v80, v114);
        v43 = v119;
        sub_21E929BF8();
LABEL_24:
        v41(v40, v42);
        return (*(v118 + 56))(v43, 0, 1, v42);
      }

      [v2 setGlassSmoothness_];
      v63 = [swift_getObjCClassFromMetadata() useRegularMaterial];
      v64 = *&v2[OBJC_IVAR___NCPlatterView_breakthroughLightHandle];
      LODWORD(v109) = v47;
      if (v63)
      {
        if (v64)
        {

          sub_21E929BA8();
          v65 = v115;
          sub_21E929BB8();
          v66 = v116;
          v67 = v117;
          v68 = *(v117 + 8);
          v107 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v68(v22, v116);
          sub_21E929B68();

          v108 = v68;
          v68(v65, v66);
        }

        else
        {
          v65 = v115;
          sub_21E929BA8();
          sub_21E929BB8();
          v66 = v116;
          v67 = v117;
          v93 = *(v117 + 8);
          v107 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v108 = v93;
          v93(v65, v116);
        }
      }

      else if (v64)
      {

        sub_21E929B98();
        (*(v4 + 104))(v6, *MEMORY[0x277D74DE8], v3);
        sub_21E929B88();
        (*(v4 + 8))(v6, v3);
        v66 = v116;
        v71 = *(v117 + 8);
        v107 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v71(v19, v116);
        v72 = [v2 traitCollection];
        [v72 glassLuminanceValue];

        v65 = v115;
        sub_21E929B58();
        v71(v22, v66);
        sub_21E929B68();

        v108 = v71;
        v71(v65, v66);
        v67 = v117;
      }

      else
      {
        sub_21E929B98();
        (*(v4 + 104))(v6, *MEMORY[0x277D74DE8], v3);
        v94 = v115;
        sub_21E929B88();
        (*(v4 + 8))(v6, v3);
        v65 = v94;
        v66 = v116;
        v67 = v117;
        v95 = *(v117 + 8);
        v107 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v95(v22, v116);
        v96 = [v2 traitCollection];
        [v96 glassLuminanceValue];

        sub_21E929B58();
        v108 = v95;
        v95(v94, v66);
      }

      (*(v67 + 16))(v65, v10, v66);
      [v2 glassSmoothness];
      v97 = v110;
      sub_21E929C98();
      v98 = v111;
      sub_21E929BD8();

      v99 = *(v118 + 8);
      v100 = v66;
      v101 = v114;
      v99(v97, v114);
      v102 = v112;
      sub_21E929BE8();
      v99(v98, v101);
      v103 = v113;
      sub_21E929BF8();
      v99(v102, v101);
      v104 = [v2 glassTintColor];
      v105 = v119;
      sub_21E929C78();

      v99(v103, v101);
      v108(v10, v100);
      return (*(v118 + 56))(v105, 0, 1, v101);
    }
  }

  else
  {
    v44 = *(v30 + 56);
    v45 = v119;

    return v44(v45, 1, 1, v35);
  }
}

void sub_21E8BE0F8(char a1, uint64_t a2, char a3)
{
  if (a1 != 2)
  {
    v7 = [v3 backgroundView];
    [v7 setHidden_];
  }

  if ((a3 & 1) == 0)
  {
    v8 = *&a2;
    v9 = [v3 backgroundView];
    [v9 setAlpha_];
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21E8C07B4;
  *(v12 + 24) = v11;
  v16[4] = sub_21E8C07E8;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_21E799D8C;
  v16[3] = &block_descriptor_51;
  v13 = _Block_copy(v16);
  v14 = v3;

  [v10 performWithoutAnimation_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_21E8BE2DC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED72B8, &unk_21E947720);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &aBlock - v6;
  v8 = [v1 customContentView];
  if (v8)
  {
    v9 = v8;
    sub_21E8C0744(a1, v7);
    v10 = sub_21E929C88();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      sub_21E8C06B0(v7);
      aBlock = 0u;
      v20 = 0u;
      v21 = 0;
    }

    else
    {
      *(&v20 + 1) = v10;
      v21 = MEMORY[0x277D74E20];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(v11 + 32))(boxed_opaque_existential_1, v7, v10);
    }

    sub_21E92A718();
  }

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21E8C0718;
  *(v15 + 24) = v14;
  v21 = sub_21E8C073C;
  v22 = v15;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_21E799D8C;
  *(&v20 + 1) = &block_descriptor_41;
  v16 = _Block_copy(&aBlock);
  v17 = v2;

  [v13 performWithoutAnimation_];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_21E8BE568(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (v3)
  {
    v4 = v3;
    [a1 _continuousCornerRadius];
    [v4 _setContinuousCornerRadius_];
  }
}

uint64_t sub_21E8BE6B0()
{
  result = sub_21E8BE6D0();
  qword_27CED7200 = result;
  return result;
}

uint64_t sub_21E8BE6D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21E9476D0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.75 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.666666667 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.583333333 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.5 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.416666667 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.333333333 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.25 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.166666667 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.0833333333 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.0 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.916666667 saturation:1.0 brightness:1.0 alpha:1.0];
  *(v0 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.833333333 saturation:1.0 brightness:1.0 alpha:1.0];
  return v0;
}

void sub_21E8BE9A4()
{
  v1 = [objc_opt_self() standardDefaults];
  v2 = [v1 showZDepthDebugUI];

  v3 = [v0 debugBorderView];
  if (v3)
  {

    v4 = [v0 debugLabel];
    if (v4)
    {

      if (v2)
      {
        return;
      }

      v5 = [v0 debugBorderView];
      if (v5)
      {
        v6 = v5;
        [v5 removeFromSuperview];

        [v0 setDebugBorderView_];
        v7 = [v0 debugLabel];
        if (v7)
        {
          v8 = v7;
          [v7 removeFromSuperview];

          [v0 setDebugLabel_];
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

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v9 setUserInteractionEnabled_];
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = [objc_opt_self() systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
  [v10 setFont_];

  [v10 setUserInteractionEnabled_];
  v12 = [objc_opt_self() whiteColor];
  [v10 setTextColor_];

  v25 = v10;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v0 customContentView];
  [v13 addSubview_];

  v14 = [v0 customContentView];
  [v14 addSubview_];

  v15 = [v0 customContentView];
  v16 = v25;
  if (v15)
  {
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21E9473D0;
    v19 = [v17 bottomAnchor];
    v20 = [v25 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    *(v18 + 32) = v21;
    v22 = [v17 centerXAnchor];
    v23 = [v25 centerXAnchor];

    v24 = [v22 constraintEqualToAnchor_];
    *(v18 + 40) = v24;
    sub_21E796644(0, &qword_280D03E38, 0x277CCAAD0);
    v16 = sub_21E92A518();

    [v17 addConstraints_];
  }

  [v0 setNeedsLayout];
  [v0 setNeedsDisplay];
  [v0 setDebugBorderView_];
  [v0 setDebugLabel_];
}

void sub_21E8BEEA0()
{
  v1 = v0;
  v2 = [v0 debugBorderView];
  if (v2)
  {
    v3 = v2;
    if (qword_27CED6AC0 != -1)
    {
      swift_once();
    }

    v4 = qword_27CED7200;
    if (qword_27CED7200 >> 62)
    {
      v6 = sub_21E92A828();
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      __break(1u);
LABEL_41:
      v7 = MEMORY[0x223D64A50]();
    }

    else
    {
      for (i = *((qword_27CED7200 & 0xFFFFFFFFFFFFFF8) + 0x10); [v1 apparentZDistanceToUser] < i; i = v6)
      {
        v6 = [v1 apparentZDistanceToUser];
        if ((v4 & 0xC000000000000001) != 0)
        {
          goto LABEL_41;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v4 + 8 * v6 + 32);
          goto LABEL_12;
        }

        __break(1u);
LABEL_44:
        ;
      }

      v7 = [objc_opt_self() systemBlackColor];
    }

LABEL_12:
    v8 = v7;
    v9 = [v3 layer];
    v10 = [v8 CGColor];
    [v9 setBorderColor_];

    v11 = [v3 layer];
    [v11 setBorderWidth_];
  }

  v12 = [v1 debugLabel];
  if (v12)
  {
    v13 = v12;
    sub_21E92A8A8();
    [v1 apparentZDistanceToUser];
    sub_21E92AA28();

    MEMORY[0x223D64660](2108704, 0xE300000000000000);
    v14 = [v1 supportsGlass];
    v15 = v14 == 0;
    if (v14)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    v17 = 0xE400000000000000;
    if (v15)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    MEMORY[0x223D64660](v16, v18);

    MEMORY[0x223D64660](2108704, 0xE300000000000000);
    v19 = [v1 isBackgroundHidden];
    v20 = v19 == 0;
    if (v19)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v20)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    MEMORY[0x223D64660](v21, v22);

    MEMORY[0x223D64660](2108704, 0xE300000000000000);
    v23 = vdupq_n_s64([v1 materialRecipe]);
    v24 = vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_282FE37E8, v23), vceqq_s64(unk_282FE37F8, v23)), xmmword_21E9476E0));
    if (v24)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v24)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    MEMORY[0x223D64660](v25, v26);

    MEMORY[0x223D64660](2108704, 0xE300000000000000);
    [v1 glassMode];
    v27 = sub_21E92AA28();
    MEMORY[0x223D64660](v27);

    MEMORY[0x223D64660](2108704, 0xE300000000000000);
    if (*(v1 + OBJC_IVAR___NCPlatterView_glassState))
    {
      if (*(v1 + OBJC_IVAR___NCPlatterView_glassState) == 1)
      {
        v17 = 0xE700000000000000;
        v28 = 0x44455544425553;
      }

      else
      {
        v28 = 1280070982;
      }
    }

    else
    {
      v28 = 1162760014;
    }

    MEMORY[0x223D64660](v28, v17);

    MEMORY[0x223D64660](2108704, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670, &qword_21E9477E0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21E947520;
    v30 = [v1 traitCollection];
    [v30 glassLuminanceValue];
    v32 = v31;

    v33 = v32;
    v34 = MEMORY[0x277D83B08];
    *(v29 + 56) = MEMORY[0x277D83A90];
    *(v29 + 64) = v34;
    *(v29 + 32) = v33;
    v35 = sub_21E92A468();
    MEMORY[0x223D64660](v35);

    MEMORY[0x223D64660](2108704, 0xE300000000000000);
    v36 = sub_21E92A478();
    v38 = sub_21E8C03CC(5, v36, v37);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = MEMORY[0x223D64630](v38, v40, v42, v44);
    v47 = v46;

    MEMORY[0x223D64660](v45, v47);

    v48 = sub_21E92A428();

    [v13 setText_];

    [v1 setNeedsLayout];
  }
}

void __swiftcall NCPlatterView.init(frame:)(NCPlatterView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

void __swiftcall NCPlatterView.init(recipeNamesByTraitCollection:in:)(NCPlatterView_optional *__return_ptr retstr, Swift::OpaquePointer_optional recipeNamesByTraitCollection, NSBundle_optional in)
{
  v3 = *&recipeNamesByTraitCollection.is_nil;
  if (recipeNamesByTraitCollection.value._rawValue)
  {
    sub_21E796644(0, &qword_27CED7230, 0x277D75C80);
    sub_21E8C0308();
    v4 = sub_21E92A3D8();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipeNamesByTraitCollection:v4 inBundle:v3];
}

void sub_21E8BF678()
{
  if (qword_280D03E88 != -1)
  {
    swift_once();
  }

  v0 = [qword_280D03E90 allObjects];
  type metadata accessor for NCPlatterView(v0);
  v1 = sub_21E92A528();

  if (v1 >> 62)
  {
    v2 = sub_21E92A828();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223D64A50](v3, v1);
    }

    else
    {
      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    ++v3;
    [v4 addOrRemoveZDepthDebugViewsIfNeeded];
    [v5 updateZDepthDebugViewsIfNeeded];
  }

  while (v2 != v3);
LABEL_12:
}

uint64_t sub_21E8BF7BC(uint64_t a1)
{
  if (qword_280D03E88 != -1)
  {
    swift_once();
  }

  [qword_280D03E90 addObject_];
  result = [qword_280D03E90 count];
  if (result >= 1 && qword_280D03E98 == 0)
  {
    v4 = [objc_opt_self() standardDefaults];
    v5 = sub_21E92A428();
    sub_21E796644(0, &qword_280D03E40, 0x277D85C78);
    v6 = sub_21E92A6C8();
    v9[4] = sub_21E8BF678;
    v9[5] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21E792C28;
    v9[3] = &block_descriptor_32;
    v7 = _Block_copy(v9);

    v8 = [v4 observeDefault:v5 onQueue:v6 withBlock:v7];
    _Block_release(v7);

    qword_280D03E98 = v8;
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21E8BF97C(uint64_t a1)
{
  if (qword_280D03E88 != -1)
  {
    swift_once();
  }

  [qword_280D03E90 removeObject_];
  result = [qword_280D03E90 count];
  if (!result)
  {
    result = qword_280D03E98;
    if (qword_280D03E98)
    {
      [qword_280D03E98 invalidate];
      qword_280D03E98 = 0;

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21E8BFA34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED72B8, &unk_21E947720);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v64 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v64 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v64 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v64 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = v64 - v19;
  v21 = OBJC_IVAR___NCPlatterView_glassState;
  v22 = v0[OBJC_IVAR___NCPlatterView_glassState];
  v23 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
  if (([v1 isBackgroundHidden] & 1) != 0 || !objc_msgSend(v1, sel_supportsGlass))
  {
LABEL_11:
    v25 = 0;
    goto LABEL_12;
  }

  v24 = [v1 materialRecipe];
  v25 = 0;
  if (v24 <= 0x16 && ((1 << v24) & 0x40000E) != 0)
  {
    if (![v1 glassMode] && !objc_msgSend(v1, sel_apparentZDistanceToUser) || objc_msgSend(v1, sel_glassMode) == 2)
    {
      v25 = 2;
      v23 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
      goto LABEL_12;
    }

    v23 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
    if ([v1 apparentZDistanceToUser] < -11 || objc_msgSend(v1, sel_glassMode) == 1)
    {
      goto LABEL_11;
    }

    v25 = 1;
  }

LABEL_12:
  v1[v21] = v25;
  [v1 updateZDepthDebugViewsIfNeeded];
  if (v1[v21])
  {
    if (v1[v21] == 1)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          goto LABEL_16;
        }

        goto LABEL_36;
      }
    }

    else if (v22)
    {
      if (v22 != 1)
      {
LABEL_16:
        v26 = [v1 apparentZDistanceToUser];
        if (!__OFSUB__(0, v26))
        {
          v27 = -v26 & (-v26 >> 63);
          if (v27 <= -11)
          {
            v27 = -11;
          }

          *&v1[OBJC_IVAR___NCPlatterView_glassId] = v27;
          v28 = [v1 opacityTransitionAnimator];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 state];

            if (v30 == 1)
            {
              v31 = [v1 opacityTransitionAnimator];
              if (v31)
              {
                v32 = v31;
                [v31 stopAnimation_];
              }

              [v1 setOpacityTransitionAnimator_];
            }
          }

          sub_21E8BE0F8(1, 0, 0);
          v33 = [v1 glassTransitionAnimator];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 state];

            if (v35 == 1)
            {
              v36 = [v1 glassTransitionAnimator];
              [v36 stopAnimation_];

              [v1 setGlassTransitionAnimator_];
            }
          }

          sub_21E8BCEA8(v10);
          v37 = sub_21E929C88();
          v38 = *(v37 - 8);
          if ((*(v38 + 48))(v10, 1, v37) == 1)
          {
            sub_21E8C06B0(v10);
            v39 = 1;
          }

          else
          {
            sub_21E929C68();
            (*(v38 + 8))(v10, v37);
            v39 = 0;
          }

          (*(v38 + 56))(v13, v39, 1, v37);
          sub_21E8BE2DC(v13);
          v63 = v13;
LABEL_60:
          sub_21E8C06B0(v63);
          return;
        }

        goto LABEL_63;
      }

LABEL_36:
      v43 = [v1 apparentZDistanceToUser];
      if (!__OFSUB__(0, v43))
      {
        v44 = -v43 & (-v43 >> 63);
        if (v44 <= -11)
        {
          v44 = -11;
        }

        *&v1[OBJC_IVAR___NCPlatterView_glassId] = v44;
        v45 = [v1 opacityTransitionAnimator];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 state];

          if (v47 == 1)
          {
            v48 = [v1 opacityTransitionAnimator];
            if (v48)
            {
              v49 = v48;
              [v48 stopAnimation_];
            }

            [v1 setOpacityTransitionAnimator_];
          }
        }

        sub_21E8BE0F8(1, 0, 0);
        v50 = [v1 glassTransitionAnimator];
        if (v50)
        {
          v51 = v50;
          v52 = [v50 state];

          if (v52 == 1)
          {
            v53 = [v1 glassTransitionAnimator];
            [v53 fractionComplete];

            v54 = [v1 glassTransitionAnimator];
            [v54 stopAnimation_];

            [v1 setGlassTransitionAnimator_];
          }
        }

        [v1 rootListScrollVelocity];
        [v1 instantGlassTransitionVelocityThreshold];
        sub_21E8BCEA8(v4);
        v55 = sub_21E929C88();
        v56 = *(v55 - 8);
        if ((*(v56 + 48))(v4, 1, v55) == 1)
        {
          sub_21E8C06B0(v4);
          v57 = 1;
        }

        else
        {
          sub_21E929C68();
          (*(v56 + 8))(v4, v55);
          v57 = 0;
        }

        (*(v56 + 56))(v7, v57, 1, v55);
        sub_21E8BE2DC(v7);
        v63 = v7;
        goto LABEL_60;
      }

      goto LABEL_64;
    }

    v58 = [v1 apparentZDistanceToUser];
    if (__OFSUB__(0, v58))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v59 = -v58 & (-v58 >> 63);
    if (v59 <= -11)
    {
      v59 = -11;
    }

    *&v1[OBJC_IVAR___NCPlatterView_glassId] = v59;
    [v1 rootListScrollVelocity];
    [v1 instantGlassTransitionVelocityThreshold];
    sub_21E8BCEA8(v16);
    v60 = sub_21E929C88();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v16, 1, v60) == 1)
    {
      sub_21E8C06B0(v16);
      v62 = 1;
    }

    else
    {
      sub_21E929C68();
      (*(v61 + 8))(v16, v60);
      v62 = 0;
    }

    (*(v61 + 56))(v20, v62, 1, v60);
    sub_21E8BE2DC(v20);
    sub_21E8C06B0(v20);
    sub_21E8BE0F8(1, 0, 0);
  }

  else
  {
    [v1 rootListScrollVelocity];
    [v1 instantGlassTransitionVelocityThreshold];
    v40 = [v1 customContentView];
    if (v40)
    {
      v41 = v40;
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      sub_21E92A718();
    }

    v42 = [v1 v23[253]];

    sub_21E8BE0F8(v42, 0x3FF0000000000000, 0);
  }
}

unint64_t sub_21E8C0308()
{
  result = qword_27CED7238;
  if (!qword_27CED7238)
  {
    sub_21E796644(255, &qword_27CED7230, 0x277D75C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7238);
  }

  return result;
}

uint64_t sub_21E8C03CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = sub_21E92A4B8();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_21E8C0488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21E8C04E4()
{
  result = qword_280D03EE0;
  if (!qword_280D03EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CED78A0, qword_21E948860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D03EE0);
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

uint64_t sub_21E8C05A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E8B8A0C;

  return sub_21E8BABBC(a1, v4, v5, v6);
}

unint64_t sub_21E8C065C()
{
  result = qword_280D04340;
  if (!qword_280D04340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D04340);
  }

  return result;
}

uint64_t sub_21E8C06B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED72B8, &unk_21E947720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E8C0744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED72B8, &unk_21E947720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E8C0838()
{
  v0 = sub_21E929A78();
  __swift_allocate_value_buffer(v0, qword_27CED9EA8);
  __swift_project_value_buffer(v0, qword_27CED9EA8);
  return sub_21E929A68();
}

uint64_t sub_21E8C0904(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21E929A78();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_21E929A68();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_21E8C09E0()
{
  result = 0.0;
  qword_27CED72C0 = 0;
  return result;
}

double static NCGlassLuminanceValueTraits.defaultValue.getter()
{
  if (qword_27CED6AF0 != -1)
  {
    swift_once();
  }

  return *&qword_27CED72C0;
}

double sub_21E8C0A68@<D0>(void *a1@<X8>)
{
  if (qword_27CED6AF0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_27CED72C0;
  *a1 = qword_27CED72C0;
  return result;
}

uint64_t getEnumTagSinglePayload for NCGlassLuminanceValueTraits(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NCGlassLuminanceValueTraits(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

NCListDebugHUDModelBridge __swiftcall NCListDebugHUDModelBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for NCListDebugHUDModelBridge()
{
  result = qword_27CED72C8;
  if (!qword_27CED72C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CED72C8);
  }

  return result;
}

double sub_21E8C0E98(uint64_t a1)
{
  if (qword_280D047F8 != -1)
  {
    swift_once();
  }

  v2 = qword_280D04800;
  if (qword_280D04800)
  {
    v3 = qword_280D04800 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount;
    if ((*(qword_280D04800 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount + 8) & 1) != 0 || *v3 != a1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21E8C1000();
      v5 = v2;
      sub_21E929798();
    }

    else
    {
      *(v3 + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_21E8C1000()
{
  result = qword_280D04750[0];
  if (!qword_280D04750[0])
  {
    type metadata accessor for ListDebugHUDModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D04750);
  }

  return result;
}

unint64_t sub_21E8C1058@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21E8C16D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21E8C1114(char a1, __n128 a2, __n128 a3)
{
  v3 = qword_21E947A60[a1];
  v4 = BSFloatApproximatelyEqualToFloat();
  if (v4)
  {
    v5 = 0x65736C6166;
  }

  else
  {
    v5 = 1702195828;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x223D64660](v5, v6);

  return v3;
}

uint64_t sub_21E8C11B8(char a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670, &qword_21E9477E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21E947520;
  v7 = MEMORY[0x277D85048];
  *(v6 + 56) = MEMORY[0x277D85048];
  v8 = sub_21E79668C();
  *(v6 + 64) = v8;
  *(v6 + 32) = a2;
  v13 = sub_21E92A468();
  v14 = v9;
  if (a2 != a3)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21E947520;
    *(v10 + 56) = v7;
    *(v10 + 64) = v8;
    *(v10 + 32) = a3;
    v11 = sub_21E92A468();
    MEMORY[0x223D64660](v11);
  }

  MEMORY[0x223D64660](qword_21E947A60[a1], 0xE100000000000000);

  MEMORY[0x223D64660](v13, v14);

  return 0;
}

uint64_t sub_21E8C1354@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a2.n128_u64[0] = *(v3 + 8);
  a3.n128_u64[0] = *(v3 + 16);
  result = sub_21E8C1114(*v3, a2, a3);
  *a1 = result;
  a1[1] = v6;
  return result;
}

BOOL sub_21E8C1384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = sub_21E787444(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationModernListPaginator.PageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationModernListPaginator.PageType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NotificationModernListPaginator.Page(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationModernListPaginator.Page(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_21E8C15DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21E8C1624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E8C1680()
{
  result = qword_27CED72D0;
  if (!qword_27CED72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED72D0);
  }

  return result;
}

unint64_t sub_21E8C16D4(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

void sub_21E8C16E8()
{
  v0 = sub_21E7871A0();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 listView];

    [v2 setPreferredBottomTransitionTransformer_];
  }

  v3 = sub_21E786808(0xC);
  if (!v3)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v4 = v3;
  v5 = [v3 count];

  if (v5 < 1)
  {
    goto LABEL_19;
  }

  v6 = sub_21E786808(0xC);
  if (!v6)
  {
    goto LABEL_70;
  }

  v7 = v6;
  v8 = [v6 listView];

  if (!v8)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  [v8 setPreferredBottomTransitionTransformer_];

  v9 = sub_21E786808(0xB);
  if (!v9)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v10 = v9;
  v11 = [v9 listView];

  if (!v11)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  [v11 setPreferredBottomTransitionTransformer_];

  v12 = sub_21E786808(0xA);
  if (v12)
  {
    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 listView];

      if (!v15)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      [v15 setPreferredBottomTransitionTransformer_];
      v13 = v15;
    }
  }

  v16 = sub_21E786808(1);
  if (!v16)
  {
    goto LABEL_74;
  }

  v17 = v16;
  v18 = [v16 listView];

  if (!v18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  [v18 setPreferredBottomTransitionTransformer_];

  v19 = sub_21E786808(2);
  if (!v19)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v20 = v19;
  v74 = [v19 listView];

  v21 = v74;
  if (v74)
  {
    goto LABEL_50;
  }

  __break(1u);
LABEL_19:
  v22 = sub_21E786808(0xB);
  if (!v22)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v23 = v22;
  v24 = [v22 count];

  if (v24 < 1)
  {
    goto LABEL_35;
  }

  v25 = sub_21E786808(0xC);
  if (!v25)
  {
    goto LABEL_79;
  }

  v26 = v25;
  v27 = [v25 listView];

  if (!v27)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  [v27 setPreferredBottomTransitionTransformer_];

  v28 = sub_21E786808(0xB);
  if (!v28)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v29 = v28;
  v30 = [v28 listView];

  if (!v30)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v30 setPreferredBottomTransitionTransformer_];

  v31 = sub_21E786808(0xA);
  if (v31)
  {
    v32 = v31;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = [v33 listView];

      if (!v34)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      [v34 setPreferredBottomTransitionTransformer_];
      v32 = v34;
    }
  }

  v35 = sub_21E786808(1);
  if (!v35)
  {
    goto LABEL_83;
  }

  v36 = v35;
  v37 = [v35 listView];

  if (!v37)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v37 setPreferredBottomTransitionTransformer_];

  v38 = sub_21E786808(2);
  if (!v38)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v39 = v38;
  v74 = [v38 listView];

  v21 = v74;
  if (!v74)
  {
    __break(1u);
LABEL_35:
    v40 = sub_21E786808(1);
    if (v40)
    {
      v41 = v40;
      v42 = [v40 count];

      v43 = sub_21E786808(0xC);
      v44 = v43;
      if (v42 < 1)
      {
        if (v43)
        {
          v58 = [v43 listView];

          if (v58)
          {
            [v58 setPreferredBottomTransitionTransformer_];

            v59 = sub_21E786808(0xB);
            if (v59)
            {
              v60 = v59;
              v61 = [v59 listView];

              if (v61)
              {
                [v61 setPreferredBottomTransitionTransformer_];

                v62 = sub_21E786808(0xA);
                if (v62)
                {
                  v63 = v62;
                  objc_opt_self();
                  v64 = swift_dynamicCastObjCClass();
                  if (v64)
                  {
                    v65 = [v64 listView];

                    if (!v65)
                    {
LABEL_106:
                      __break(1u);
                      return;
                    }

                    [v65 setPreferredBottomTransitionTransformer_];
                    v63 = v65;
                  }
                }

                v66 = sub_21E786808(1);
                if (v66)
                {
                  v67 = v66;
                  v68 = [v66 listView];

                  if (v68)
                  {
                    [v68 setPreferredBottomTransitionTransformer_];

                    v69 = sub_21E786808(2);
                    if (v69)
                    {
                      v70 = v69;
                      v74 = [v69 listView];

                      if (v74)
                      {
                        v71 = sub_21E786808(2);
                        if (v71)
                        {
                          v72 = v71;
                          v73 = [v71 count];

                          [v74 setPreferredBottomTransitionTransformer_];
                          goto LABEL_51;
                        }

                        goto LABEL_104;
                      }

LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
                      goto LABEL_105;
                    }

LABEL_102:
                    __break(1u);
                    goto LABEL_103;
                  }

LABEL_101:
                  __break(1u);
                  goto LABEL_102;
                }

LABEL_100:
                __break(1u);
                goto LABEL_101;
              }

LABEL_99:
              __break(1u);
              goto LABEL_100;
            }

LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (v43)
      {
        v45 = [v43 listView];

        if (v45)
        {
          [v45 setPreferredBottomTransitionTransformer_];

          v46 = sub_21E786808(0xB);
          if (v46)
          {
            v47 = v46;
            v48 = [v46 listView];

            if (v48)
            {
              [v48 setPreferredBottomTransitionTransformer_];

              v49 = sub_21E786808(0xA);
              if (v49)
              {
                v50 = v49;
                objc_opt_self();
                v51 = swift_dynamicCastObjCClass();
                if (v51)
                {
                  v52 = [v51 listView];

                  if (!v52)
                  {
LABEL_105:
                    __break(1u);
                    goto LABEL_106;
                  }

                  [v52 setPreferredBottomTransitionTransformer_];
                  v50 = v52;
                }
              }

              v53 = sub_21E786808(1);
              if (v53)
              {
                v54 = v53;
                v55 = [v53 listView];

                if (v55)
                {
                  [v55 setPreferredBottomTransitionTransformer_];

                  v56 = sub_21E786808(2);
                  if (v56)
                  {
                    v57 = v56;
                    v74 = [v56 listView];

                    v21 = v74;
                    if (v74)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_95;
                  }

LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                  goto LABEL_96;
                }

LABEL_93:
                __break(1u);
                goto LABEL_94;
              }

LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    goto LABEL_86;
  }

LABEL_50:
  [v21 setPreferredBottomTransitionTransformer_];
LABEL_51:
}

uint64_t sub_21E8C1E08(uint64_t result)
{
  v2 = OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport;
  if (v1[OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport] != (result & 1))
  {
    v3 = v1;
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v4 = sub_21E929A78();
    __swift_project_value_buffer(v4, qword_280D05F58);
    v5 = v1;
    v6 = sub_21E929A58();
    v7 = sub_21E92A648();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 67240450;
      *(v8 + 4) = v3[v2];

      *(v8 + 8) = 2082;
      v10 = v5[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0xE100000000000000;
          v12 = 80;
        }

        else if (v10 == 4)
        {
          v11 = 0xE100000000000000;
          v12 = 76;
        }

        else
        {
          v11 = 0xE300000000000000;
          v12 = 7104878;
        }
      }

      else
      {
        v11 = 0xE100000000000000;
        if (v5[OBJC_IVAR___NCNotificationRootModernList_currentPageType])
        {
          if (v10 == 1)
          {
            v12 = 83;
          }

          else
          {
            v12 = 69;
          }
        }

        else
        {
          v12 = 67;
        }
      }

      v13 = sub_21E79841C(v12, v11, &v15);

      *(v8 + 10) = v13;
      _os_log_impl(&dword_21E77E000, v6, v7, "hasNotificationsInViewport %{BOOL,public}d; currentPageType: %{public}s", v8, 0x12u);
      v14 = __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x223D65FB0](v9, -1, -1, v14);
      MEMORY[0x223D65FB0](v8, -1, -1);
    }

    else
    {
    }

    result = [v5 delegate];
    if (result)
    {
      [result notificationRootList:v5 didUpdateNotificationsVisibilityInViewport:v3[v2]];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21E8C206C(unsigned __int8 a1)
{
  sub_21E92AB28();
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      a1 ^= 0x80u;
      goto LABEL_7;
    }

    a1 &= 0x3Fu;
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  MEMORY[0x223D64CD0](v2);
LABEL_7:
  MEMORY[0x223D64CD0](a1);
  return sub_21E92AB48();
}

uint64_t sub_21E8C20F8()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      LOBYTE(v1) = v1 ^ 0x80;
      return MEMORY[0x223D64CD0](v1);
    }

    LOBYTE(v1) = v1 & 0x3F;
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  MEMORY[0x223D64CD0](v2);
  return MEMORY[0x223D64CD0](v1);
}

uint64_t sub_21E8C2154(uint64_t a1)
{
  v2 = *v1;
  sub_21E92AB28();
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      LOBYTE(v2) = v2 ^ 0x80;
      goto LABEL_7;
    }

    LOBYTE(v2) = v2 & 0x3F;
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  MEMORY[0x223D64CD0](v3);
LABEL_7:
  MEMORY[0x223D64CD0](v2);
  return sub_21E92AB48();
}

void sub_21E8C21D8(void *a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR___NCNotificationRootModernList_revealIndex] = 0;
  v6 = OBJC_IVAR___NCNotificationRootModernList_cacheNoAnimationAnimator;
  *&v3[v6] = [objc_allocWithZone(NCNoAnimationAnimator) init];
  v3[OBJC_IVAR___NCNotificationRootModernList_updatingSectionSettings] = 0;
  v3[OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange] = 0;
  *&v3[OBJC_IVAR___NCNotificationRootModernList_contentChangeCount] = 0;
  *&v3[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = 0;
  v3[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter] = 1;
  v3[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed] = 0;
  v3[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = 0;
  v3[OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport] = 0;
  *&v3[OBJC_IVAR___NCNotificationRootModernList_scrollDownToHideNewIncomingTask] = 0;
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___NCNotificationRootModernList_previousPages] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___NCNotificationRootModernList_setScrollPositions] = v7;
  v8 = &v3[OBJC_IVAR___NCNotificationRootModernList_currentListMinY];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v3[OBJC_IVAR___NCNotificationRootModernList_contentHeight];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR___NCNotificationRootModernList_debugSettings];
  *(v10 + 89) = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  *v10 = 0u;
  v10[1] = 0u;
  v11 = &v3[OBJC_IVAR___NCNotificationRootModernList__scrollState];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0x8000000000000000;
  *(v11 + 5) = 0;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  v3[OBJC_IVAR___NCNotificationRootModernList_currentPageType] = 5;
  v3[OBJC_IVAR___NCNotificationRootModernList__feedbackHapticsState] = 0;
  v12 = &v3[OBJC_IVAR___NCNotificationRootModernList_currentUserInterfaceSizeClass];
  *v12 = 0;
  v12[8] = 1;
  v13 = objc_allocWithZone(type metadata accessor for ScrollViewExclusionManager());
  v14 = a1;
  *&v3[OBJC_IVAR___NCNotificationRootModernList_exclusionManager] = sub_21E91AAC0(v14);
  v15 = &v3[OBJC_IVAR___NCNotificationRootModernList_layout];
  v16 = *(MEMORY[0x277D768C8] + 16);
  *(v15 + 24) = *MEMORY[0x277D768C8];
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = v7;
  *(v15 + 40) = v16;
  *(v15 + 8) = 0;
  *(v15 + 9) = 0;
  *(v15 + 7) = 0;
  v15[80] = 1;
  *(v15 + 11) = 0;
  *(v15 + 12) = 0;
  v17 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v14];
  *&v3[OBJC_IVAR___NCNotificationRootModernList_feedbackGenerator] = v17;
  [v17 prepare];
  v40.receiver = v3;
  v40.super_class = NCNotificationRootModernList;
  v39.receiver = objc_msgSendSuper2(&v40, sel_initWithListView_delegate_, v14, a2);
  v39.super_class = NCNotificationRootModernList;
  v18 = v39.receiver;
  v19 = objc_msgSendSuper2(&v39, sel_rootListView);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClassUnconditional();
  v21 = OBJC_IVAR___NCNotificationRootModernList_exclusionManager;
  v22 = *&v18[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
  v23 = *(v20 + OBJC_IVAR___NCNotificationModernListView_exclusionManager);
  *(v20 + OBJC_IVAR___NCNotificationModernListView_exclusionManager) = v22;
  v24 = v22;

  sub_21E8C26F8();
  sub_21E8C28F4();
  v38.receiver = v18;
  v38.super_class = NCNotificationRootModernList;
  v25 = objc_msgSendSuper2(&v38, sel_rootListView);
  v26 = [v18 delegate];

  if (v26)
  {
    v27 = 0.0;
    if ([v26 respondsToSelector_])
    {
      [v26 insetHorizontalMarginForNotificationListComponent_];
      v27 = v28;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0.0;
  }

  [v25 setHorizontalInsetMargin_];

  *(*&v18[v21] + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_delegate + 8) = &off_282FE4E88;
  swift_unknownObjectWeakAssign();
  v37.receiver = v18;
  v37.super_class = NCNotificationRootModernList;
  v29 = v18;
  v30 = objc_msgSendSuper2(&v37, sel_rootListView);
  [v30 setReactiveLayout_];

  [v14 setDelegate_];
  v31 = sub_21E786808(0);
  if (!v31)
  {
    __break(1u);
    goto LABEL_13;
  }

  v32 = v31;
  v33 = [v31 listView];

  if (!v33)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v33 setRevealed_];

  v34 = sub_21E786808(2);
  if (!v34)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v35 = v34;
  [v34 setSectionListViewGroupedWithContentShown_];

  v36 = [v29 rootListView];
  [v36 setFooterViewVerticalMargin_];

  if (qword_280D049B8 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectUnownedAssign();
}

void sub_21E8C26F8()
{
  v17 = *MEMORY[0x277D85DE8];
  out_token = 0;
  sub_21E796644(0, &qword_280D03E40, 0x277D85C78);
  v1 = sub_21E92A6C8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v14 = sub_21E8D8D34;
  v15 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_21E8D0EF0;
  v13 = &block_descriptor_116;
  v3 = _Block_copy(&aBlock);
  v4 = v0;

  notify_register_dispatch("ValidateScrollPosition", &out_token, v1, v3);
  _Block_release(v3);

  v9 = 0;
  v5 = sub_21E92A6C8();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v14 = sub_21E8D8D58;
  v15 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_21E8D0EF0;
  v13 = &block_descriptor_122;
  v7 = _Block_copy(&aBlock);
  v8 = v4;

  notify_register_dispatch("ScrollToNearestPage", &v9, v5, v7);
  _Block_release(v7);
}

uint64_t sub_21E8C28F4()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v40 = sub_21E8D9944();
    v39 = v2 & 1;
    v38 = sub_21E8D9C64();
    v37 = v3 & 1;
    v36 = sub_21E8D9F7C();
    v35 = v4 & 1;
    v5 = sub_21E8DA388();
    v7 = v6 & 1;
    v8 = sub_21E8DA794();
    v10 = v9 & 1;
    v11 = sub_21E8DABA0();
    v13 = v12 & 1;
    v14 = sub_21E8DAFAC();
    v16 = v0 + OBJC_IVAR___NCNotificationRootModernList_debugSettings;
    v17 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_debugSettings + 80);
    v44[4] = *(v0 + OBJC_IVAR___NCNotificationRootModernList_debugSettings + 64);
    v45[0] = v17;
    *(v45 + 9) = *(v0 + OBJC_IVAR___NCNotificationRootModernList_debugSettings + 89);
    v18 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_debugSettings + 16);
    v44[0] = *(v0 + OBJC_IVAR___NCNotificationRootModernList_debugSettings);
    v44[1] = v18;
    v19 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_debugSettings + 48);
    v44[2] = *(v0 + OBJC_IVAR___NCNotificationRootModernList_debugSettings + 32);
    v44[3] = v19;
    *v16 = v40;
    *(v16 + 8) = v39;
    *(v16 + 16) = v38;
    *(v16 + 24) = v37;
    *(v16 + 32) = v36;
    *(v16 + 40) = v35;
    *(v16 + 48) = v5;
    *(v16 + 56) = v7;
    *(v16 + 64) = v8;
    *(v16 + 72) = v10;
    *(v16 + 80) = v11;
    *(v16 + 88) = v13;
    *(v16 + 96) = v14;
    *(v16 + 104) = v15 & 1;
    v20 = sub_21E8B4CAC(v44, &unk_27CED7430, &qword_21E947CE8);
    v21 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_exclusionManager);
    if (*v16)
    {
      v22 = *(v16 + 64);
      v23 = *(v16 + 80);
      v24 = *(v16 + 32);
      v42[3] = *(v16 + 48);
      v42[4] = v22;
      v43[0] = v23;
      *(v43 + 9) = *(v16 + 89);
      v25 = *(v16 + 16);
      v42[0] = *v16;
      v42[1] = v25;
      v42[2] = v24;
      v26 = v25;
      v27 = BYTE8(v25);
      MEMORY[0x28223BE20](v20);
      swift_getKeyPath();
      v28 = MEMORY[0x277D85000];
      v41[14] = v26;
      v29 = v21;
      sub_21E8B4BF0(v42, v41, &unk_27CED7430, &qword_21E947CE8);
      sub_21E8D919C(qword_280D049E0, &qword_27CED7440, &unk_21E94A360, &unk_21E949FE8);
      sub_21E9297A8();

      v30 = *((*v28 & *v26) + 0x70);
      swift_beginAccess();
      v31 = *(v26 + v30);
      sub_21E8B4CAC(v42, &unk_27CED7430, &qword_21E947CE8);
      if (v31 == 2)
      {
        LOBYTE(v31) = v27;
      }
    }

    else
    {
      v32 = v21;
      LOBYTE(v31) = 0;
    }

    *(v21 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_showsDebugView) = v31 & 1;
    sub_21E91B9F4();

    MEMORY[0x28223BE20](v33);
    MEMORY[0x28223BE20](v34);
    return sub_21E929788();
  }

  return result;
}

void sub_21E8C2CD4()
{
  v1 = v0;
  v25 = sub_21E786808(0xA);
  if (v25)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 expandedPercentage];

      if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        v3 = OBJC_IVAR___NCNotificationRootModernList_layout;
        v4 = *&v0[OBJC_IVAR___NCNotificationRootModernList_layout];
        v5 = *(v4 + 16);
        v6 = MEMORY[0x277D84F90];
        if (v5)
        {
          *&v26 = MEMORY[0x277D84F90];

          sub_21E8D52D8(0, v5, 0);
          v6 = v26;
          v7 = *(v26 + 16);
          v8 = 32;
          do
          {
            v9 = *(v4 + v8);
            *&v26 = v6;
            v10 = *(v6 + 24);
            if (v7 >= v10 >> 1)
            {
              sub_21E8D52D8((v10 > 1), v7 + 1, 1);
              v6 = v26;
            }

            *(v6 + 16) = v7 + 1;
            *(v6 + v7 + 32) = v9;
            v8 += 24;
            ++v7;
            --v5;
          }

          while (v5);
        }

        v11 = 0;
        v12 = *(v6 + 16);
        while (v12 != v11)
        {
          v13 = v6 + v11++;
          if (*(v13 + 32) == 4)
          {
            goto LABEL_19;
          }
        }

        if (v12)
        {
          v14 = *(v6 + 32);

          goto LABEL_20;
        }

LABEL_19:

        v14 = 4;
LABEL_20:
        v15 = *&v1[v3];
        v16 = (v15 + 32);
        v17 = *(v15 + 16) + 1;
        while (--v17)
        {
          v18 = v16 + 24;
          v19 = *v16;
          v16 += 24;
          if (v14 == v19)
          {
            v20 = *(v18 - 2);
            v21 = *(v18 - 1);
            v22 = swift_allocObject();
            *(v22 + 16) = v1;
            _s23ScrollCompletionHandlerCMa();
            v23 = swift_allocObject();
            *(v23 + 32) = 0;
            *(v23 + 16) = sub_21E8D976C;
            *(v23 + 24) = v22;
            *&v26 = 1;
            *(&v26 + 1) = v14;
            v27 = v20;
            v28 = v21;
            v29 = 0x4000000000000080;
            v30 = v23;
            v24 = v1;
            sub_21E8C2F48(&v26);
            return;
          }
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21E8C2F48(_OWORD *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___NCNotificationRootModernList__scrollState];
  v5 = *&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState + 16];
  v83[0] = *&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState];
  v83[1] = v5;
  v6 = *&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState + 48];
  v83[2] = *&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32];
  v83[3] = v6;
  sub_21E799278(v83, &v79);
  v7 = sub_21E8C4EE0(v83);
  sub_21E799568(v83);
  if (v7)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v8 = sub_21E929A78();
    __swift_project_value_buffer(v8, qword_280D05F58);
    sub_21E799278(a1, &v79);
    v9 = v2;
    v10 = sub_21E929A58();
    v11 = sub_21E92A648();
    sub_21E799568(a1);

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v74[0] = v13;
      *v12 = 136446466;
      sub_21E799278(a1, &v79);
      v14 = sub_21E7992D4();
      v16 = v15;
      sub_21E799568(a1);
      v17 = sub_21E79841C(v14, v16, v74);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      v18 = *(v4 + 1);
      v79 = *v4;
      v80 = v18;
      v19 = *(v4 + 3);
      v81 = *(v4 + 2);
      v82 = v19;
      sub_21E799278(&v79, &v75);
      v20 = sub_21E7992D4();
      v22 = v21;
      sub_21E799568(&v79);
      v23 = sub_21E79841C(v20, v22, v74);

      *(v12 + 14) = v23;
      _os_log_impl(&dword_21E77E000, v10, v11, "Combing new scrollState %{public}s with same scroll position request, previous scrollState: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v13, -1, -1);
      MEMORY[0x223D65FB0](v12, -1, -1);
    }

    v24 = *(v4 + 1);
    v74[0] = *v4;
    v74[1] = v24;
    v25 = *(v4 + 3);
    v74[2] = *(v4 + 2);
    v74[3] = v25;
    v27 = *a1;
    v26 = *(a1 + 1);
    v28 = *(a1 + 3);
    v29 = *(a1 + 4);
    v30 = *(a1 + 2);
    if (v29 >> 62)
    {
      if (v29 >> 62 != 1)
      {
        v69 = a1[1];
        *v4 = *a1;
        *(v4 + 1) = v69;
        v70 = a1[3];
        *(v4 + 2) = a1[2];
        *(v4 + 3) = v70;
        v39 = v74;
        sub_21E799278(v74, &v75);
        sub_21E8C3BA0(v74);
        a1 = v74;
        goto LABEL_17;
      }

      v31 = swift_allocObject();
      v32 = *(v4 + 1);
      v31[1] = *v4;
      v31[2] = v32;
      v33 = *(v4 + 3);
      v31[3] = *(v4 + 2);
      v31[4] = v33;
      v34 = a1[1];
      v31[5] = *a1;
      v31[6] = v34;
      v35 = a1[3];
      v31[7] = a1[2];
      v31[8] = v35;
      _s23ScrollCompletionHandlerCMa();
      v36 = swift_allocObject();
      *(v36 + 32) = 0;
      *(v36 + 16) = sub_21E8D8F30;
      *(v36 + 24) = v31;
      v37 = *(v4 + 1);
      v75 = *v4;
      v76 = v37;
      v38 = *(v4 + 3);
      v77 = *(v4 + 2);
      v78 = v38;
      *v4 = v27 & 3;
      *(v4 + 1) = v26;
      *(v4 + 2) = v30;
      *(v4 + 3) = v28;
      *(v4 + 4) = v29 & 0x81 | 0x4000000000000000;
      *(v4 + 5) = v36;
      v39 = v74;
      sub_21E799278(v74, v73);
      sub_21E799278(a1, v73);
      sub_21E799278(v74, v73);
    }

    else
    {
      v72 = *(a1 + 6);
      v60 = *(a1 + 5);
      v61 = swift_allocObject();
      v62 = *(v4 + 1);
      v61[1] = *v4;
      v61[2] = v62;
      v63 = *(v4 + 3);
      v61[3] = *(v4 + 2);
      v61[4] = v63;
      v64 = a1[1];
      v61[5] = *a1;
      v61[6] = v64;
      v65 = a1[3];
      v61[7] = a1[2];
      v61[8] = v65;
      _s23ScrollCompletionHandlerCMa();
      v66 = swift_allocObject();
      *(v66 + 32) = 0;
      *(v66 + 16) = sub_21E8D9720;
      *(v66 + 24) = v61;
      v67 = *(v4 + 1);
      v75 = *v4;
      v76 = v67;
      v68 = *(v4 + 3);
      v77 = *(v4 + 2);
      v78 = v68;
      *v4 = v27 & 3;
      *(v4 + 1) = v26;
      *(v4 + 2) = v30;
      *(v4 + 3) = v28;
      *(v4 + 4) = v29 & 0x81;
      *(v4 + 5) = v60;
      *(v4 + 6) = v72;
      *(v4 + 7) = v66;
      v39 = v74;
      sub_21E799278(v74, v73);
      sub_21E799278(a1, v73);
      sub_21E799278(v74, v73);
    }

    sub_21E8C3BA0(&v75);
    sub_21E799568(&v75);
  }

  else
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v40 = sub_21E929A78();
    __swift_project_value_buffer(v40, qword_280D05F58);
    sub_21E799278(a1, &v79);
    v41 = v2;
    v42 = sub_21E929A58();
    v43 = sub_21E92A648();
    sub_21E799568(a1);

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v74[0] = v45;
      *v44 = 136446466;
      sub_21E799278(a1, &v79);
      v46 = sub_21E7992D4();
      v48 = v47;
      sub_21E799568(a1);
      v49 = sub_21E79841C(v46, v48, v74);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2082;
      v50 = *(v4 + 1);
      v79 = *v4;
      v80 = v50;
      v51 = *(v4 + 3);
      v81 = *(v4 + 2);
      v82 = v51;
      sub_21E799278(&v79, &v75);
      v52 = sub_21E7992D4();
      v54 = v53;
      sub_21E799568(&v79);
      v55 = sub_21E79841C(v52, v54, v74);

      *(v44 + 14) = v55;
      _os_log_impl(&dword_21E77E000, v42, v43, "Updating scrollState with new scroll position request %{public}s, previous scrollState: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v45, -1, -1);
      MEMORY[0x223D65FB0](v44, -1, -1);
    }

    v56 = *(v4 + 1);
    v75 = *v4;
    v76 = v56;
    v57 = *(v4 + 3);
    v77 = *(v4 + 2);
    v78 = v57;
    v58 = a1[1];
    *v4 = *a1;
    *(v4 + 1) = v58;
    v59 = a1[3];
    *(v4 + 2) = a1[2];
    *(v4 + 3) = v59;
    sub_21E799278(a1, v74);
    v39 = &v75;
    sub_21E8C3BA0(&v75);
  }

LABEL_17:
  sub_21E799568(v39);
  return sub_21E799568(a1);
}

uint64_t sub_21E8C35AC(uint64_t result)
{
  v1 = (result + OBJC_IVAR___NCNotificationRootModernList_debugSettings);
  if (*(result + OBJC_IVAR___NCNotificationRootModernList_debugSettings))
  {
    v2 = v1[5];
    v16 = v1[4];
    *v17 = v2;
    *&v17[9] = *(v1 + 89);
    v3 = v1[1];
    v12 = *v1;
    v13 = v3;
    v4 = v1[3];
    v14 = v1[2];
    v15 = v4;
    MEMORY[0x28223BE20](result);
    swift_getKeyPath();
    sub_21E8D919C(qword_280D049E0, &qword_27CED7440, &unk_21E94A360, &unk_21E949FE8);
    v5 = v12;
    v6 = v13;
    v7 = v14;
    v8 = v15;
    v9 = v16;
    v10 = *v17;
    v11 = *&v17[16];
    sub_21E9297A8();

    return sub_21E8B4CAC(&v12, &unk_27CED7430, &qword_21E947CE8);
  }

  return result;
}

double sub_21E8C373C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0, &qword_21E947530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_21E92A5B8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21E92A598();
  v6 = a1;
  v7 = sub_21E92A588();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21E8E8A7C(0, 0, v4, &unk_21E947D30, v8);

  return result;
}

uint64_t sub_21E8C3864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a4;
  sub_21E92A598();
  *(v4 + 256) = sub_21E92A588();
  v6 = sub_21E92A578();

  return MEMORY[0x2822009F8](sub_21E8C38FC, v6, v5);
}

uint64_t sub_21E8C38FC()
{
  v1 = *(v0 + 248);

  v2 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_exclusionManager);
  v3 = (v1 + OBJC_IVAR___NCNotificationRootModernList_debugSettings);
  if (*(v1 + OBJC_IVAR___NCNotificationRootModernList_debugSettings))
  {
    v4 = v3[2];
    v5 = *v3;
    *(v0 + 32) = v3[1];
    *(v0 + 48) = v4;
    *(v0 + 16) = v5;
    v6 = v3[3];
    v7 = v3[4];
    v8 = v3[5];
    *(v0 + 105) = *(v3 + 89);
    *(v0 + 80) = v7;
    *(v0 + 96) = v8;
    *(v0 + 64) = v6;
    v9 = *(v0 + 32);
    v21 = *(v0 + 40);
    v10 = swift_task_alloc();
    v11 = MEMORY[0x277D839C8];
    *v10 = MEMORY[0x277D839B0];
    v10[1] = v11;
    swift_getKeyPath();

    *(v0 + 240) = v9;
    v12 = MEMORY[0x277D85000];
    v13 = v2;
    sub_21E8B4BF0(v0 + 16, v0 + 128, &unk_27CED7430, &qword_21E947CE8);
    sub_21E8D919C(qword_280D049E0, &qword_27CED7440, &unk_21E94A360, &unk_21E949FE8);
    sub_21E9297A8();

    v14 = *((*v12 & *v9) + 0x70);
    swift_beginAccess();
    v15 = *(v9 + v14);
    sub_21E8B4CAC(v0 + 16, &unk_27CED7430, &qword_21E947CE8);
    v16 = v21;
    if (v15 != 2)
    {
      v16 = v15;
    }
  }

  else
  {
    v17 = v2;
    v16 = 0;
  }

  v18 = *(v0 + 248);
  *(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_showsDebugView) = v16 & 1;
  sub_21E91B9F4();

  *(swift_task_alloc() + 16) = v18;
  *(swift_task_alloc() + 16) = v18;
  sub_21E929788();

  v19 = *(v0 + 8);

  return v19();
}

void sub_21E8C3BA0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0, &qword_21E947530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v6 = &v1[OBJC_IVAR___NCNotificationRootModernList__scrollState];
  v7 = *&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState + 16];
  v69[0] = *&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState];
  v69[1] = v7;
  v8 = *&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState + 48];
  v69[2] = *&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32];
  v69[3] = v8;
  sub_21E799278(v69, v68);
  v11 = sub_21E8D5CCC(a1, v69, v9, v10);
  sub_21E799568(v69);
  if (v11)
  {
    return;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v12 = sub_21E929A78();
  __swift_project_value_buffer(v12, qword_280D05F58);
  v13 = v1;
  v14 = sub_21E929A58();
  v15 = sub_21E92A648();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v61[0] = v57;
    *v16 = 136446210;
    v17 = *(v6 + 1);
    v68[0] = *v6;
    v68[1] = v17;
    v18 = *(v6 + 3);
    v68[2] = *(v6 + 2);
    v68[3] = v18;
    sub_21E799278(v68, &v64);
    v19 = sub_21E7992D4();
    v20 = v5;
    v21 = v13;
    v22 = a1;
    v24 = v23;
    sub_21E799568(v68);
    v25 = sub_21E79841C(v19, v24, v61);
    a1 = v22;
    v13 = v21;
    v5 = v20;

    *(v16 + 4) = v25;
    _os_log_impl(&dword_21E77E000, v14, v15, "_scrollState update to: %{public}s", v16, 0xCu);
    v26 = v57;
    v27 = __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x223D65FB0](v26, -1, -1, v27);
    MEMORY[0x223D65FB0](v16, -1, -1);
  }

  v28 = *(v6 + 1);
  v64 = *v6;
  v65 = v28;
  v29 = *(v6 + 3);
  v66 = *(v6 + 2);
  v67 = v29;
  v30 = *(&v64 + 1);
  v32 = v65;
  v31 = v66;
  if (!(v66 >> 62))
  {
    v55 = v67;
    v37 = *(&v66 + 1);
    v56 = v64;
    v57 = *(&v67 + 1);
    v38 = sub_21E92A5B8();
    (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21E92A598();
    sub_21E799278(&v64, v61);
    sub_21E799278(&v64, v61);

    v40 = sub_21E92A588();
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    *(v41 + 16) = v40;
    *(v41 + 24) = v42;
    v43 = v55;
    *(v41 + 32) = v37;
    *(v41 + 40) = v43;
    LOBYTE(v43) = v56;
    v44 = v57;
    *(v41 + 48) = v39;
    *(v41 + 56) = v44;
    *(v41 + 64) = v43;
    *(v41 + 72) = v30;
    *(v41 + 80) = v32;
    *(v41 + 96) = v31;

    sub_21E8C4C34(0, 0, v5, &unk_21E947D60, v41);
    sub_21E799568(&v64);

    return;
  }

  if (v66 >> 62 != 1)
  {
    v45 = a1[4] >> 62;
    if (v45)
    {
      if (v45 != 1)
      {
        goto LABEL_25;
      }

      v46 = a1[5];
      if (!v46)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v46 = a1[7];
      if (!v46)
      {
        goto LABEL_25;
      }
    }

    if ((*(v46 + 32) & 1) == 0)
    {
      *(v46 + 32) = 1;
      v48 = *(v46 + 16);
      if (v48)
      {
        sub_21E799278(a1, v61);
        v48(1, 0);
        sub_21E799568(a1);
      }
    }

LABEL_25:
    v49 = *(v6 + 1);
    v61[0] = *v6;
    v61[1] = v49;
    v50 = *(v6 + 3);
    v62 = *(v6 + 2);
    v63 = v50;
    if (v62 >> 62)
    {
      if (v62 >> 62 != 1)
      {
        goto LABEL_33;
      }

      v51 = *(&v62 + 1);
      if (!*(&v62 + 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v51 = *(&v63 + 1);
      if (!*(&v63 + 1))
      {
LABEL_33:
        v59.receiver = v13;
        v59.super_class = NCNotificationRootModernList;
        v53 = objc_msgSendSuper2(&v59, sel_rootListView);
        [v53 setPerformingScrollingAnimation_];

        return;
      }
    }

    if ((*(v51 + 32) & 1) == 0)
    {
      *(v51 + 32) = 1;
      v52 = *(v51 + 16);
      if (v52)
      {
        sub_21E799278(v61, &v58);
        v52(1, 0);
        sub_21E799568(v61);
      }
    }

    goto LABEL_33;
  }

  v60.receiver = v13;
  v60.super_class = NCNotificationRootModernList;
  v33 = objc_msgSendSuper2(&v60, sel_rootListView);
  [v33 setPerformingScrollingAnimation_];

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21E8C4294(v30, v32, *(&v32 + 1), v31, 1, sub_21E8D90B4, v34);

  v35 = a1[4] >> 62;
  if (v35)
  {
    if (v35 != 1)
    {
      return;
    }

    v36 = a1[5];
    if (!v36)
    {
      return;
    }
  }

  else
  {
    v36 = a1[7];
    if (!v36)
    {
      return;
    }
  }

  if ((*(v36 + 32) & 1) == 0)
  {
    *(v36 + 32) = 1;
    v47 = *(v36 + 16);
    if (v47)
    {
      sub_21E799278(a1, v61);
      v47(0, 1);
      sub_21E799568(a1);
    }
  }
}

void sub_21E8C4190(char a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR___NCNotificationRootModernList__scrollState + 48);
    v8 = *(Strong + OBJC_IVAR___NCNotificationRootModernList__scrollState);
    v7 = *(Strong + OBJC_IVAR___NCNotificationRootModernList__scrollState + 16);
    v14 = *(Strong + OBJC_IVAR___NCNotificationRootModernList__scrollState + 32);
    v15 = v6;
    v13[0] = v8;
    v13[1] = v7;
    v9 = Strong;
    sub_21E799278(v13, v12);

    if (v14 >> 62)
    {
      if (v14 >> 62 != 1)
      {
        return;
      }

      v10 = *(&v14 + 1);
      if (!*(&v14 + 1))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *(&v15 + 1);
      if (!*(&v15 + 1))
      {
LABEL_10:
        sub_21E799568(v13);
        return;
      }
    }

    if ((*(v10 + 32) & 1) == 0)
    {
      *(v10 + 32) = 1;
      v11 = *(v10 + 16);
      if (v11)
      {
        sub_21E799278(v13, v12);
        v11(a1 & 1, a2 & 1);
        sub_21E799568(v13);
      }
    }

    goto LABEL_10;
  }
}

void sub_21E8C4294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  v50.super_class = NCNotificationRootModernList;
  v12 = objc_msgSendSuper2(&v50, sel_rootListView);
  v13 = [v12 traitCollection];

  v14 = [v13 _backlightLuminance];
  if (v14 == 2)
  {
    v49.receiver = v7;
    v49.super_class = NCNotificationRootModernList;
    v15 = objc_msgSendSuper2(&v49, sel_rootListView);
    [v15 contentOffset];
    v17 = v16;
    v19 = v18;

    sub_21E8D02C8(a1, a2, a3, v8);
    v20 = [v7 rootListView];
    UIRoundToViewScale();
    v22 = v21;

    v23 = [v7 rootListView];
    v24 = [v23 traitCollection];

    [v24 displayScale];
    v26 = v25;

    if (1.0 / v26 >= vabdd_f64(v19, v22))
    {
      memset(v51, 0, sizeof(v51));
      v52 = 0x8000000000000000;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      sub_21E8C2F48(v51);
    }

    else
    {
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v27 = sub_21E929A78();
      __swift_project_value_buffer(v27, qword_280D05F58);
      v28 = v7;
      v29 = sub_21E929A58();
      v30 = sub_21E92A648();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134349568;
        *(v31 + 4) = v22;
        *(v31 + 12) = 1026;
        v46.receiver = v28;
        v46.super_class = NCNotificationRootModernList;
        v32 = objc_msgSendSuper2(&v46, sel_rootListView);
        objc_opt_self();
        v33 = [swift_dynamicCastObjCClassUnconditional() performingContentOffsetAnimation];

        *(v31 + 14) = v33;
        *(v31 + 18) = 1026;
        v34 = a5;
        *(v31 + 20) = a5 & 1;
        _os_log_impl(&dword_21E77E000, v29, v30, "Perform scrollTo %{public}f, regtarget: %{BOOL,public}d, animated: %{BOOL,public}d", v31, 0x18u);
        MEMORY[0x223D65FB0](v31, -1, -1);
      }

      else
      {

        v29 = v28;
        v34 = a5;
      }

      v48.receiver = v28;
      v48.super_class = NCNotificationRootModernList;
      v35 = objc_msgSendSuper2(&v48, sel_rootListView);
      objc_opt_self();
      v36 = [swift_dynamicCastObjCClassUnconditional() performingContentOffsetAnimation];

      v37 = swift_allocObject();
      v37[2] = v28;
      v37[3] = a6;
      v37[4] = a7;
      v38 = v28;
      sub_21E792C14(a6, a7);
      v47.receiver = v38;
      v47.super_class = NCNotificationRootModernList;
      v39 = objc_msgSendSuper2(&v47, sel_rootListView);
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      v40 = swift_allocObject();
      v41 = v34 & 1;
      *(v40 + 16) = v41;
      *(v40 + 24) = v38;
      *(v40 + 32) = sub_21E8D8E70;
      *(v40 + 40) = v37;
      v42 = v38;

      sub_21E8DB624(v41, v36, sub_21E8D9770, v40, v17, v22);
    }
  }

  else
  {
    sub_21E8C752C(0, 0);
  }
}

uint64_t sub_21E8C4720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 225) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 224) = a8;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  v9 = sub_21E92A8F8();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  sub_21E92A598();
  *(v8 + 184) = sub_21E92A588();
  v11 = sub_21E92A578();
  *(v8 + 192) = v11;
  *(v8 + 200) = v10;

  return MEMORY[0x2822009F8](sub_21E8C4838, v11, v10);
}

uint64_t sub_21E8C4838()
{
  sub_21E92AAC8();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_21E8C48F8;
  v3 = v0[13];
  v2 = v0[14];

  return sub_21E8D4D0C(v3, v2, 0, 0, 1);
}

uint64_t sub_21E8C48F8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  *(*v1 + 216) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 200);
  v7 = *(v2 + 192);
  if (v0)
  {
    v8 = sub_21E8C4BC8;
  }

  else
  {
    v8 = sub_21E8C4A90;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21E8C4A90()
{
  v1 = *(v0 + 216);

  sub_21E92A5D8();
  if (!v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(v0 + 152);
      v5 = *(v0 + 128);
      v6 = *(v0 + 225) & 0x81;
      *(v0 + 16) = *(v0 + 224) & 3;
      *(v0 + 24) = *(v0 + 136);
      *(v0 + 40) = v4;
      *(v0 + 48) = v6 | 0x4000000000000000;
      *(v0 + 56) = v5;

      sub_21E8C2F48((v0 + 16));
    }

    else
    {
      v9 = *(v0 + 128);
      if (v9)
      {
        if ((*(v9 + 32) & 1) == 0)
        {
          *(v9 + 32) = 1;
          v10 = *(v9 + 16);
          if (v10)
          {
            v10(0, 0);
          }
        }
      }
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21E8C4BC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E8C4C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0, &qword_21E947530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21E8B4BF0(a3, v22 - v9, &unk_27CED75A0, &qword_21E947530);
  v11 = sub_21E92A5B8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21E8B4CAC(v10, &unk_27CED75A0, &qword_21E947530);
  }

  else
  {
    sub_21E92A5A8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21E92A578();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21E92A488() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21E8B4CAC(a3, &unk_27CED75A0, &qword_21E947530);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21E8B4CAC(a3, &unk_27CED75A0, &qword_21E947530);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21E8C4EE0(int8x16_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7458, &qword_21E947D70);
  v3 = v1[2].u64[0];
  if (v3 >> 62 == 2)
  {
    v4 = vorrq_s8(*v1, v1[1]);
    v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v1[3].i64[0] | v1[3].i64[1] | v1[2].i64[1];
    if (v3 == 0x8000000000000000 && v5 == 0)
    {
      v8 = a1[2].u64[0];
      if (v8 >> 62 == 2 && v8 == 0x8000000000000000)
      {
        v9 = vorrq_s8(*a1, a1[1]);
        if (!(*&vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL)) | a1[3].i64[0] | a1[3].i64[1] | a1[2].i64[1]))
        {
          return 1;
        }
      }

      return 0;
    }
  }

  if ((a1[2].i64[0] >> 62) > 1)
  {
    return 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return BSFloatApproximatelyEqualToFloat();
  }

  result = sub_21E92AA48();
  __break(1u);
  return result;
}

uint64_t sub_21E8C501C(uint64_t result, char a2, void *a3, void *a4)
{
  v5 = result;
  v6 = a3[4] >> 62;
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_9;
    }

    v7 = a3[5];
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = a3[7];
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if ((*(v7 + 32) & 1) == 0)
  {
    *(v7 + 32) = 1;
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = a4;
      sub_21E799278(a3, v15);
      v8(v5 & 1, a2 & 1);
      result = sub_21E799568(a3);
      a4 = v9;
    }
  }

LABEL_9:
  v11 = a4[4] >> 62;
  if (v11)
  {
    if (v11 != 1)
    {
      return result;
    }

    v12 = a4[5];
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    v12 = a4[7];
    if (!v12)
    {
      return result;
    }
  }

  if ((*(v12 + 32) & 1) == 0)
  {
    *(v12 + 32) = 1;
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = a4;
      sub_21E799278(a4, v15);
      v13(v5 & 1, a2 & 1);
      return sub_21E799568(v14);
    }
  }

  return result;
}

uint64_t sub_21E8C5148()
{
  result = sub_21E92AB78();
  qword_280D05F20 = result;
  *algn_280D05F28 = v1;
  return result;
}

id NCNotificationRootModernList.init(forTesting:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 initForTesting];
}

void sub_21E8C5308(void *a1)
{
  if (([a1 isExpanded] & 1) == 0)
  {

    sub_21E798E1C(130);
  }
}

void NCNotificationRootModernList.update(_:previousSystemSettings:)(uint64_t a1, uint64_t a2)
{
  v16.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v16, sel_updateNotificationSystemSettings_previousSystemSettings_, a1, a2);
  if (!a2)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v4 = sub_21E929A78();
    __swift_project_value_buffer(v4, qword_280D05F58);
    v5 = v2;
    v6 = sub_21E929A58();
    v7 = sub_21E92A648();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      v10 = sub_21E788090();
      v11 = sub_21E79841C(qword_21E948050[v10], 0xE100000000000000, &v15);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_21E77E000, v6, v7, "Previous systemSettings is nil; force updating scroll position and pageType to %{public}s", v8, 0xCu);
      v12 = __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x223D65FB0](v9, -1, -1, v12);
      MEMORY[0x223D65FB0](v8, -1, -1);
    }

    v13 = sub_21E788090();
    sub_21E8C54F8(v13);
    v14 = sub_21E788090();
    sub_21E8C6068(0, v14, 0, 0);
  }
}

void sub_21E8C54F8(signed __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  v5 = v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v5 == 5 || v5 != a1)
  {
    if (qword_280D03F38 != -1)
    {
      swift_once();
    }

    osloga = sub_21E929A78();
    __swift_project_value_buffer(osloga, qword_280D05F40);
    v17 = v1;
    v18 = sub_21E929A58();
    v19 = sub_21E92A648();
    if (os_log_type_enabled(v18, v19))
    {
      v79 = v3;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v83 = v21;
      *v20 = 136446722;
      v22 = [v17 logDescription];

      if (!v22)
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v23 = sub_21E92A458();
      v25 = v24;

      v26 = sub_21E79841C(v23, v25, &v83);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2082;
      v27 = v2[v4];
      if (v27 > 2)
      {
        v3 = v79;
        if (v27 == 3)
        {
          v28 = 0xE100000000000000;
          v29 = 80;
        }

        else if (v27 == 4)
        {
          v28 = 0xE100000000000000;
          v29 = 76;
        }

        else
        {
          v28 = 0xE500000000000000;
          v29 = 0x3E6C696E3CLL;
        }
      }

      else
      {
        v3 = v79;
        v28 = 0xE100000000000000;
        if (v2[v4])
        {
          if (v27 == 1)
          {
            v29 = 83;
          }

          else
          {
            v29 = 69;
          }
        }

        else
        {
          v29 = 67;
        }
      }

      v30 = sub_21E79841C(v29, v28, &v83);

      *(v20 + 14) = v30;
      *(v20 + 22) = 2082;
      v31 = sub_21E79841C(qword_21E948050[v3], 0xE100000000000000, &v83);

      *(v20 + 24) = v31;
      _os_log_impl(&dword_21E77E000, v18, v19, "%{public}s changing pageType from %{public}s to %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v21, -1, -1);
      MEMORY[0x223D65FB0](v20, -1, -1);
    }

    else
    {
    }

    v32 = v2[v4];
    v33 = v32 == 5 || v32 == 0;
    v34 = &selRef_appendString_withName_;
    if (!v33)
    {
      if (v3 - 2 < 3)
      {
LABEL_88:
        [v17 _updateIndexForReveal];
        v75 = qword_21E947FC0[v3];
LABEL_89:
        v76 = [v17 v34[417]];
        if (v76)
        {
          [v76 notificationRootList:v17 displayStyleSettingChanged:v75];
          swift_unknownObjectRelease();
        }

        v2[v4] = v3;
        return;
      }

      if (v3)
      {
        if (qword_280D03F40 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(osloga, qword_280D05F58);
        v49 = v17;
        v50 = sub_21E929A58();
        v51 = sub_21E92A648();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v83 = v53;
          *v52 = 136446466;
          v54 = v2[v4];
          v80 = v3;
          if (v54 > 2)
          {
            if (v54 == 3)
            {
              v55 = 0xE100000000000000;
              v56 = 80;
            }

            else if (v54 == 4)
            {
              v55 = 0xE100000000000000;
              v56 = 76;
            }

            else
            {
              v55 = 0xE500000000000000;
              v56 = 0x3E6C696E3CLL;
            }
          }

          else
          {
            v55 = 0xE100000000000000;
            if (v2[v4])
            {
              if (v54 == 1)
              {
                v56 = 83;
              }

              else
              {
                v56 = 69;
              }
            }

            else
            {
              v56 = 67;
            }
          }

          v77 = sub_21E79841C(v56, v55, &v83);

          *(v52 + 4) = v77;
          *(v52 + 12) = 2082;
          *(v52 + 14) = sub_21E79841C(83, 0xE100000000000000, &v83);
          _os_log_impl(&dword_21E77E000, v50, v51, "Regrouping all sections with pageType changing from %{public}s to %{public}s", v52, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D65FB0](v53, -1, -1);
          MEMORY[0x223D65FB0](v52, -1, -1);

          v3 = v80;
          v34 = &selRef_appendString_withName_;
        }

        else
        {
        }

        v75 = 1;
        sub_21E8C7910(1);
        [v49 _updateIndexForReveal];
        goto LABEL_89;
      }

LABEL_61:
      if ([v17 _isCurrentDigestListAboveHistorySectionList])
      {
        v57 = sub_21E786808(4);
        if (v57)
        {
          v58 = v57;
          objc_opt_self();
          v59 = swift_dynamicCastObjCClass();
          if (!v59)
          {
          }
        }

        else
        {
          v59 = 0;
        }

        [v59 collapseSummarizedSectionList];

        v60 = [v17 isNotificationHistoryRevealed];
        v61 = sub_21E786808(4);
        if (v61)
        {
          v62 = v61;
          objc_opt_self();
          v63 = swift_dynamicCastObjCClass();
          if (!v63)
          {
          }
        }

        else
        {
          v63 = 0;
        }

        [v17 _setRevealed_forSection_];
        swift_unknownObjectRelease();
      }

      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(osloga, qword_280D05F58);
      v64 = v17;
      v65 = sub_21E929A58();
      v66 = sub_21E92A648();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v83 = v68;
        *v67 = 136446466;
        v69 = v2[v4];
        v78 = v4;
        v70 = v3;
        if (v69 > 2)
        {
          if (v69 == 3)
          {
            v71 = 0xE100000000000000;
            v72 = 80;
          }

          else if (v69 == 4)
          {
            v71 = 0xE100000000000000;
            v72 = 76;
          }

          else
          {
            v71 = 0xE500000000000000;
            v72 = 0x3E6C696E3CLL;
          }
        }

        else
        {
          v71 = 0xE100000000000000;
          if (v69)
          {
            if (v69 == 1)
            {
              v72 = 83;
            }

            else
            {
              v72 = 69;
            }
          }

          else
          {
            v72 = 67;
          }
        }

        v73 = sub_21E79841C(v72, v71, &v83);

        *(v67 + 4) = v73;
        *(v67 + 12) = 2082;
        v3 = v70;
        v74 = sub_21E79841C(qword_21E948050[v70], 0xE100000000000000, &v83);

        *(v67 + 14) = v74;
        _os_log_impl(&dword_21E77E000, v65, v66, "Regrouping all sections with pageType changing from %{public}s to %{public}s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D65FB0](v68, -1, -1);
        MEMORY[0x223D65FB0](v67, -1, -1);

        v4 = v78;
        v34 = &selRef_appendString_withName_;
      }

      else
      {
      }

      sub_21E8C7910(0);
      goto LABEL_88;
    }

    v35 = [v17 currentListDisplayStyleSettingReason];
    v36 = sub_21E92A458();
    v38 = v37;

    if (v36 == sub_21E92A458() && v38 == v39)
    {

      if ([v17 visibleNotificationCount] <= 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v40 = sub_21E92AA58();

      if ([v17 visibleNotificationCount] <= 0)
      {
        goto LABEL_61;
      }

      if ((v40 & 1) == 0)
      {
        v41 = [v17 delegate];
        if (v41)
        {
          [v41 notificationRootListWillExpandNotificationListCount_];
          swift_unknownObjectRelease();
        }
      }
    }

    if ([v17 _isCurrentDigestListAboveHistorySectionList])
    {
      v42 = sub_21E786808(4);
      if (v42)
      {
        v43 = v42;
        objc_opt_self();
        v44 = swift_dynamicCastObjCClass();
        if (v44)
        {
          v45 = [v44 listView];

          if (!v45)
          {
LABEL_104:
            __break(1u);
            return;
          }

          [v45 setRevealed_];
          v43 = v45;
        }
      }

      v46 = sub_21E786808(4);
      if (v46)
      {
        v47 = v46;
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (!v48)
        {
        }
      }

      else
      {
        v48 = 0;
      }

      [v17 _setRevealed_forSection_];
      swift_unknownObjectRelease();
    }

    goto LABEL_61;
  }

  if (qword_280D03F38 != -1)
  {
    swift_once();
  }

  v6 = sub_21E929A78();
  __swift_project_value_buffer(v6, qword_280D05F40);
  v7 = v1;
  oslog = sub_21E929A58();
  v8 = sub_21E92A648();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v83 = v10;
    *v9 = 136446466;
    v11 = [v7 logDescription];

    if (v11)
    {
      v12 = sub_21E92A458();
      v14 = v13;

      v15 = sub_21E79841C(v12, v14, &v83);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2082;
      v16 = sub_21E79841C(qword_21E948050[v3], 0xE100000000000000, &v83);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_21E77E000, oslog, v8, "%{public}s pageType %{public}s doesn't change", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v10, -1, -1);
      MEMORY[0x223D65FB0](v9, -1, -1);

      return;
    }

    goto LABEL_103;
  }
}

void sub_21E8C6068(char a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v10 = a2;
  v65.super_class = NCNotificationRootModernList;
  v11 = objc_msgSendSuper2(&v65, sel_rootListView);
  sub_21E799598();

  if (v10 == 5)
  {
    v8 = sub_21E788090();
    v12 = v8;
    if (v8 < 4u)
    {
      goto LABEL_6;
    }

    goto LABEL_3;
  }

  if (v10 >= 4)
  {
    v38 = *&v4[OBJC_IVAR___NCNotificationRootModernList_layout];
    v39 = (v38 + 32);
    v40 = *(v38 + 16) + 1;
    while (--v40)
    {
      v41 = v39 + 24;
      v42 = *v39;
      v39 += 24;
      if (v42 == 4)
      {
        v33 = *(v41 - 2);
        v34 = *(v41 - 1);
        v15 = 4;
        goto LABEL_23;
      }
    }

LABEL_3:
    v12 = v8;
    v8 = 2;
    goto LABEL_6;
  }

  v12 = v8;
LABEL_6:
  v15 = sub_21E8CC3AC(v8, v4);
  if (v15 != 5)
  {
    v33 = v13;
    v34 = v14;
LABEL_23:
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v43 = sub_21E929A78();
    __swift_project_value_buffer(v43, qword_280D05F58);
    v44 = sub_21E929A58();
    v45 = sub_21E92A648();
    if (os_log_type_enabled(v44, v45))
    {
      v61 = a4;
      v63 = a3;
      v46 = swift_slowAlloc();
      v47 = a1;
      v48 = swift_slowAlloc();
      *&v66 = v48;
      *v46 = 136446722;
      v49 = sub_21E8C11B8(v15, v33, v34);
      v51 = sub_21E79841C(v49, v50, &v66);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      if (v47)
      {
        v52 = 0x6574616D696E6120;
      }

      else
      {
        v52 = 0;
      }

      if (v47)
      {
        v53 = 0xE900000000000064;
      }

      else
      {
        v53 = 0xE000000000000000;
      }

      v54 = sub_21E79841C(v52, v53, &v66);

      *(v46 + 14) = v54;
      *(v46 + 22) = 2050;
      *(v46 + 24) = v33;
      _os_log_impl(&dword_21E77E000, v44, v45, "Scrolling to page: %{public}s %{public}s: %{public}f", v46, 0x20u);
      swift_arrayDestroy();
      v55 = v48;
      a1 = v47;
      MEMORY[0x223D65FB0](v55, -1, -1);
      v56 = v46;
      a4 = v61;
      a3 = v63;
      MEMORY[0x223D65FB0](v56, -1, -1);
    }

    v32 = 0;
    v31 = xmmword_21E947B10;
    v30 = 1;
    *&v35 = v15;
    if ((a1 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_34:
    v64 = v31;
    v57 = swift_allocObject();
    v57[2] = v5;
    v57[3] = a3;
    v57[4] = a4;
    _s23ScrollCompletionHandlerCMa();
    v58 = swift_allocObject();
    *(v58 + 32) = 0;
    *(v58 + 16) = sub_21E8D92C0;
    *(v58 + 24) = v57;
    *&v66 = 1;
    *(&v66 + 1) = v35;
    *&v67 = v33;
    *(&v67 + 1) = v34;
    if (v30)
    {
      *&v68 = v64 | 0x4000000000000000;
      *(&v68 + 1) = v58;
    }

    else
    {
      v68 = v64;
      v69 = 0;
      v70 = v58;
    }

    v59 = v5;
    sub_21E792C14(a3, a4);

    sub_21E8C2F48(&v66);

    return;
  }

  v60 = a1;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v16 = sub_21E929A78();
  __swift_project_value_buffer(v16, qword_280D05F58);
  v17 = v4;
  v18 = sub_21E929A58();
  v19 = sub_21E92A648();

  if (os_log_type_enabled(v18, v19))
  {
    v62 = a3;
    v20 = a4;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v66 = v22;
    *v21 = 134349314;
    *(v21 + 4) = v12;
    *(v21 + 12) = 2082;

    v24 = MEMORY[0x223D646D0](v23, &type metadata for NotificationModernListPaginator.Page);
    v26 = v25;

    v27 = sub_21E79841C(v24, v26, &v66);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_21E77E000, v18, v19, "No page for display style - %{public}ld; currentPages - %{public}s; scroll to 0.0", v21, 0x16u);
    v28 = __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223D65FB0](v22, -1, -1, v28);
    v29 = v21;
    a4 = v20;
    a3 = v62;
    MEMORY[0x223D65FB0](v29, -1, -1);
  }

  v30 = 0;
  v31 = xmmword_21E947B20;
  v32 = 1;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  if (v60)
  {
    goto LABEL_34;
  }

LABEL_12:
  v36 = v35;
  if (!v32)
  {
    v36 = v33;
  }

  sub_21E8CC644(0, v36);
  v66 = 0u;
  v67 = 0u;
  v68 = 0x8000000000000000;
  v69 = 0;
  v70 = 0;
  sub_21E8C2F48(&v66);
  if (v15 != 5)
  {
    sub_21E8C54F8(v15);
    v37 = *&v5[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
    sub_21E91AFCC();
  }

  if (a3)
  {
    a3(1, 0);
  }
}

unint64_t sub_21E8C668C(id a1)
{
  v10.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v10, sel_notificationListSections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450, &qword_21E947D50);
  v3 = sub_21E92A528();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D64A50](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        break;
      }

      swift_unknownObjectRelease();
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }

LABEL_14:
      ++v5;
      if (v8 == i)
      {
        goto LABEL_15;
      }
    }

    v7 = [v6 sectionType];
    swift_unknownObjectRelease();
    if (v7 == a1)
    {
      goto LABEL_16;
    }

    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_15:
  v5 = 0;
LABEL_16:

  return v5;
}

Swift::Void __swiftcall NCNotificationRootModernList._updateIndexForReveal()()
{
  v1 = sub_21E8C668C(0xB);
  if ((v2 & 1) == 0)
  {
    v3 = v1;
    v4 = sub_21E8C668C(2);
    if ((v5 & 1) == 0)
    {
      if (v0[OBJC_IVAR___NCNotificationRootModernList_currentPageType] - 1 < 4)
      {
        v17 = (v4 + 1);
        if (!__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }

        __break(1u);
      }

      v18 = [v0 _isCurrentDigestListAboveHistorySectionList];
      if (!v18 || (v18 = sub_21E8C668C(4), (v19 & 1) != 0))
      {
        v17 = (v3 + 1);
        if (!__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }

        __break(1u);
      }

      v17 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  if (qword_280D03F38 != -1)
  {
LABEL_27:
    swift_once();
  }

  v6 = sub_21E929A78();
  __swift_project_value_buffer(v6, qword_280D05F40);
  v7 = v0;
  v8 = sub_21E929A58();
  v9 = sub_21E92A628();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349312;
    v11 = sub_21E8C668C(0xB);
    if (v12)
    {
      v13 = -1;
    }

    else
    {
      v13 = v11;
    }

    *(v10 + 4) = v13;
    *(v10 + 12) = 2050;
    v14 = sub_21E8C668C(2);
    if (v15)
    {
      v16 = -1;
    }

    else
    {
      v16 = v14;
    }

    *(v10 + 14) = v16;

    _os_log_impl(&dword_21E77E000, v8, v9, "Persistent and Incoming section not found! persistentIndex: %{public}ld); incomingIndex: %{public}ld", v10, 0x16u);
    MEMORY[0x223D65FB0](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  v17 = 0;
LABEL_14:
  *&v0[OBJC_IVAR___NCNotificationRootModernList_revealIndex] = v17;
}

void NCNotificationRootModernList._setRevealed(_:forSection:)(int a1, id a2)
{
  if (a2)
  {
    v3 = [a2 listView];
    [v3 setRevealed_];

    v4 = [a2 listView];
    [v4 setRevealPercentage_];
  }
}

void NCNotificationRootModernList.toggleMissedSectionActive(_:for:hideVisibleNotifications:)(char a1, void *a2, char a3)
{
  v19.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v19, sel_toggleMissedSectionActive_forDNDMode_hideVisibleNotifications_, a1 & 1, a2, a3 & 1);
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v6 = sub_21E929A78();
  __swift_project_value_buffer(v6, qword_280D05F58);
  v7 = a2;
  v8 = sub_21E929A58();
  v9 = sub_21E92A648();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446722;
    if (a2)
    {
      v12 = [v7 name];
      v13 = sub_21E92A458();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    v16 = sub_21E79841C(v13, v15, &v18);

    *(v10 + 4) = v16;
    *(v10 + 12) = 1026;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 1026;
    *(v10 + 20) = a3 & 1;
    _os_log_impl(&dword_21E77E000, v8, v9, "DND mode %{public}s toggled; missedSectionActive: %{BOOL,public}d; hideVisibleNotifications: %{BOOL,public}d", v10, 0x18u);
    v17 = __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223D65FB0](v11, -1, -1, v17);
    MEMORY[0x223D65FB0](v10, -1, -1);
  }

  if (a1 & 1) == 0 || (a3)
  {
    sub_21E798E1C(130);
  }
}

void sub_21E8C6D6C(uint64_t a1)
{
  v25 = sub_21E92A2F8();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E92A318();
  v26 = *(v5 - 8);
  v27 = v5;
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36.receiver = v1;
  v36.super_class = NCNotificationRootModernList;
  v9 = objc_msgSendSuper2(&v36, sel_rootListView, v6);
  v10 = [v9 window];

  if (v10 && (v11 = [v10 windowScene], v10, v11))
  {
    v12 = [v11 _FBSScene];
  }

  else
  {
    v12 = 0;
  }

  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = v13;
  sub_21E8C752C(sub_21E8D918C, v14);

  dispatch_group_enter(v15);
  v16 = [objc_opt_self() sharedManager];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v34 = sub_21E8D918C;
  v35 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_21E8E8FA4;
  v33 = &block_descriptor_199;
  v18 = _Block_copy(&aBlock);
  v19 = v15;

  [v16 queue:a1 acquireAssertionWithReason:v12 onScene:v18 completion:?];
  _Block_release(v18);

  sub_21E796644(0, &qword_280D03E40, 0x277D85C78);
  v20 = sub_21E92A6C8();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v34 = sub_21E8D9194;
  v35 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_21E792C28;
  v33 = &block_descriptor_205;
  v22 = _Block_copy(&aBlock);
  sub_21E92A308();
  v29 = MEMORY[0x277D84F90];
  sub_21E786CC4(&qword_280D03F00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0, qword_21E948860);
  sub_21E8D919C(&qword_280D03EE0, &unk_27CED78A0, qword_21E948860, MEMORY[0x277D83970]);
  v23 = v25;
  sub_21E92A7E8();
  sub_21E92A668();
  _Block_release(v22);

  (*(v28 + 8))(v4, v23);
  (*(v26 + 8))(v8, v27);
}

Swift::Void __swiftcall NCNotificationRootModernList.layoutForRootListSizeChange()()
{
  v1 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_currentPageType);
  if (v1 == 5)
  {
    v1 = sub_21E788090();
  }

  if (v1 > 3u)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v9 = sub_21E929A78();
    __swift_project_value_buffer(v9, qword_280D05F58);
    oslog = sub_21E929A58();
    v10 = sub_21E92A648();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      v13 = sub_21E79841C(76, 0xE100000000000000, &v16);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_21E77E000, oslog, v10, "Currently at .list, skip scrolling to top of %{public}s for layoutForRootListSizeChange", v11, 0xCu);
      v14 = __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x223D65FB0](v12, -1, -1, v14);
      MEMORY[0x223D65FB0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v2 = sub_21E929A78();
    __swift_project_value_buffer(v2, qword_280D05F58);
    v3 = sub_21E929A58();
    v4 = sub_21E92A648();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136446210;
      v7 = sub_21E79841C(qword_21E947FE8[v1], 0xE100000000000000, &v16);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_21E77E000, v3, v4, "Scroll to top of %{public}s for layoutForRootListSizeChange", v5, 0xCu);
      v8 = __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x223D65FB0](v6, -1, -1, v8);
      MEMORY[0x223D65FB0](v5, -1, -1);
    }

    sub_21E798E1C(v1 | 0x40u);
  }
}

double sub_21E8C752C(uint64_t a1, uint64_t a2)
{
  sub_21E8C7910(5);
  sub_21E8C7CA4();
  v2[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = 0;
  sub_21E790FD8();
  v28.receiver = v2;
  v28.super_class = NCNotificationRootModernList;
  v5 = objc_msgSendSuper2(&v28, sel_rootListView);
  sub_21E799598();

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v6 = sub_21E929A78();
  __swift_project_value_buffer(v6, qword_280D05F58);
  v7 = v2;
  v8 = sub_21E929A58();
  v9 = sub_21E92A648();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136446466;
    v12 = sub_21E788090();
    v13 = sub_21E79841C(qword_21E948050[v12], 0xE100000000000000, v25);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v14 = [v7 currentListDisplayStyleSettingReason];
    v15 = sub_21E92A458();
    v17 = v16;

    v18 = sub_21E79841C(v15, v17, v25);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_21E77E000, v8, v9, "Scroll to SystemPreferred %{public}s (reason: %{public}s) in AOD;", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v11, -1, -1);
    MEMORY[0x223D65FB0](v10, -1, -1);
  }

  v27.receiver = v7;
  v27.super_class = NCNotificationRootModernList;
  v19 = objc_msgSendSuper2(&v27, sel_rootListView);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() cancelTouchTracking];

  v26.receiver = v7;
  v26.super_class = NCNotificationRootModernList;
  v20 = objc_msgSendSuper2(&v26, sel_rootListView);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() stopScrollingAndZooming];

  v21 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  *&v7[v21] = MEMORY[0x277D84F90];

  v22 = sub_21E788090();
  v23 = swift_allocObject();
  v23[2] = v7;
  v23[3] = a1;
  v23[4] = a2;
  v7;
  sub_21E792C14(a1, a2);
  sub_21E8C6068(0, v22, sub_21E8D9180, v23);

  return result;
}

void sub_21E8C78A0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedManager];
  [v2 queue:a1 releaseAssertionWithReason:?];
}

void sub_21E8C7910(int a1)
{
  LODWORD(v1) = a1;
  v28.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v28, sel_notificationListSections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450, &qword_21E947D50);
  v3 = sub_21E92A528();

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = v1;
  if (v4)
  {
    while (1)
    {
      v5 = 0;
      v6 = 0;
      if ((v3 & 0xC000000000000001) != 0)
      {
        break;
      }

      while (1)
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        swift_unknownObjectRetain();
        v1 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

LABEL_9:
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7 && (v8 = v7, [v7 sectionType] != 10))
        {
          v9 = [v8 regroupNotificationGroups];
          swift_unknownObjectRelease();
          if (v6)
          {
            v6 = 1;
          }

          else
          {
            v6 = v9;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        if (v1 == v4)
        {
          goto LABEL_22;
        }

        ++v5;
        if ((v3 & 0xC000000000000001) != 0)
        {
          goto LABEL_4;
        }
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v4 = sub_21E92A828();
      v26 = v1;
      if (!v4)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    MEMORY[0x223D64A50](v5, v3);
    v1 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

LABEL_21:
  v6 = 0;
LABEL_22:

  v10 = sub_21E786808(0xA);
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = v26;
    if (swift_dynamicCastObjCClass())
    {
      sub_21E8E901C();
      v14 = v13;

      v6 |= v14;
    }

    else
    {
    }
  }

  else
  {
    v12 = v26;
  }

  v15 = sub_21E786808(4);
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = [v17 collapseSummarizedSectionList];

      v6 |= v18;
    }

    else
    {
    }
  }

  if (v12 != 5 && (v6 & 1) != 0)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v19 = sub_21E929A78();
    __swift_project_value_buffer(v19, qword_280D05F58);
    v20 = sub_21E929A58();
    v21 = sub_21E92A648();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136446210;
      v24 = sub_21E79841C(qword_21E948050[v12], 0xE100000000000000, &v27);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_21E77E000, v20, v21, "Regrouping all sections and hold to page %{public}s", v22, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x223D65FB0](v23, -1, -1, v25);
      MEMORY[0x223D65FB0](v22, -1, -1);
    }

    sub_21E798E1C(v12 | 0x40u);
  }
}

uint64_t sub_21E8C7CA4()
{
  v1 = sub_21E929748();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 supplementaryViewsSections];
  sub_21E92A768();

  sub_21E929738();
  while (v13)
  {
    sub_21E8D9170(v12, &v11);
    sub_21E796644(0, &unk_280D03CB8, off_27836DFA8);
    if (swift_dynamicCast())
    {
      v7 = v10;
      [v10 collapseAllExpandedSupplementaryViewsGroups];
    }

    sub_21E929738();
  }

  return (*(v2 + 8))(v5, v1);
}

double sub_21E8C7E30(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0x8000000000000000;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_21E8C2F48(v12);
  v11.receiver = a3;
  v11.super_class = NCNotificationRootModernList;
  v8 = objc_msgSendSuper2(&v11, sel_rootListView);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() _removeAllRetargetableAnimations_];

  if (a4)
  {

    a4(v10);
    return sub_21E792694(a4, a5);
  }

  return result;
}

void NCNotificationRootModernList._didUpdate(_:previousSectionSettings:)()
{
  *(v0 + OBJC_IVAR___NCNotificationRootModernList_updatingSectionSettings) = 0;
  v1 = OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange;
  if (*(v0 + OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange) == 1)
  {
    sub_21E784AD0(0);
    *(v0 + v1) = 0;
  }
}

void sub_21E8C800C(uint64_t *a1)
{
  v3 = sub_21E786808(0xC);
  if (!v3)
  {
    __break(1u);
    goto LABEL_46;
  }

  v4 = v3;
  v5 = [v3 count];

  if (v5 <= 0)
  {
    v7 = sub_21E786808(0xB);
    if (!v7)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v8 = v7;
    v9 = [v7 count];

    v6 = v9 > 0;
  }

  else
  {
    v6 = 1;
  }

  v10 = sub_21E786808(0xA);
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 count];

      if (v13 > 0)
      {
LABEL_15:
        v20 = 1;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v14 = sub_21E786808(1);
  if (!v14)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v15 = v14;
  v16 = [v14 count];

  if (v16 > 0)
  {
    goto LABEL_15;
  }

  v17 = sub_21E786808(2);
  if (!v17)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 count];

  if (v19 > 0)
  {
    goto LABEL_15;
  }

  v39 = sub_21E786808(4);
  if (v39)
  {
    v40 = v39;
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      v42 = [v41 count];

      v20 = v42 > 0;
    }

    else
    {

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_16:
  v21 = sub_21E786808(0);
  if (!v21)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v22 = v21;
  v23 = [v21 count];

  if (v23 >= 1)
  {
    v24 = sub_21E786808(0);
    if (v24)
    {
      v25 = v24;
      v26 = [v24 listView];

      if (v26)
      {
        v27 = [v26 isHidden];

        v28 = v27 ^ 1;
        goto LABEL_22;
      }

      goto LABEL_49;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v28 = 0;
LABEL_22:
  v29 = *a1;
  v30 = *(a1 + 56);
  if (!(v30 >> 6))
  {
    goto LABEL_25;
  }

  v31 = a1[3];
  if (v30 >> 6 == 1)
  {
    v29 = a1[3];
LABEL_25:
    if (v29 - 1 < 3)
    {
      v32 = v6 || v20;
LABEL_36:
      v38 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport);
      *(v1 + OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport) = v32 & 1;
      goto LABEL_37;
    }

    if (!v29)
    {
      v38 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport);
      *(v1 + OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport) = v6;
      goto LABEL_37;
    }

LABEL_35:
    v32 = (v6 || v20) | v28;
    goto LABEL_36;
  }

  v34 = a1[5];
  v33 = a1[6];
  v35 = a1[4];
  v37 = a1[1];
  v36 = a1[2];
  if ((v30 != 128 || v31 | v29 | v33 | v34 | v35 | v36 | v37) && (v30 != 128 || v29 != 1 || v33 | v31 | v34 | v35 | v36 | v37))
  {
    goto LABEL_35;
  }

  v38 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport);
  *(v1 + OBJC_IVAR___NCNotificationRootModernList_hasNotificationsInViewport) = 0;
LABEL_37:

  sub_21E8C1E08(v38);
}

void sub_21E8C8354(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  a5();
  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall NCNotificationRootModernList.adjustForContentSizeCategoryChange()()
{
  v14.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v14, sel_adjustForContentSizeCategoryChange);
  sub_21E784AD0(0);
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v1 = sub_21E929A78();
  __swift_project_value_buffer(v1, qword_280D05F58);
  v2 = v0;
  v3 = sub_21E929A58();
  v4 = sub_21E92A648();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = sub_21E788090();
    v8 = sub_21E79841C(qword_21E948050[v7], 0xE100000000000000, &v13);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_21E77E000, v3, v4, "ContentSizeCategory changed, scroll to systemPreferredPageType %{public}s", v5, 0xCu);
    v9 = __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223D65FB0](v6, -1, -1, v9);
    MEMORY[0x223D65FB0](v5, -1, -1);
  }

  v10 = sub_21E788090();
  sub_21E8C54F8(v10);
  v11 = sub_21E788090();
  sub_21E8C6068(0, v11, 0, 0);
  return 1;
}

Swift::Void __swiftcall NCNotificationRootModernList._scrollToSystemPreferredPageTypeIfPossible()()
{
  if (sub_21E787D70())
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v1 = sub_21E929A78();
    __swift_project_value_buffer(v1, qword_280D05F58);
    v2 = v0;
    oslog = sub_21E929A58();
    v3 = sub_21E92A648();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v25 = v5;
      *v4 = 136446210;
      v6 = sub_21E788090();
      v7 = sub_21E79841C(qword_21E948050[v6], 0xE100000000000000, &v25);

      *(v4 + 4) = v7;
      _os_log_impl(&dword_21E77E000, oslog, v3, "User is engaging, skip scrolling to systemPreferred %{public}s", v4, 0xCu);
      v8 = __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x223D65FB0](v5, -1, -1, v8);
      MEMORY[0x223D65FB0](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v26.receiver = v0;
    v26.super_class = NCNotificationRootModernList;
    v9 = objc_msgSendSuper2(&v26, sel_rootListView);
    v10 = [v9 traitCollection];

    v11 = [v10 _backlightLuminance];
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v12 = sub_21E929A78();
    __swift_project_value_buffer(v12, qword_280D05F58);
    v13 = v0;
    v14 = sub_21E929A58();
    v15 = sub_21E92A648();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136446466;
      v18 = sub_21E788090();
      v19 = sub_21E79841C(qword_21E948050[v18], 0xE100000000000000, &v25);

      *(v16 + 4) = v19;
      *(v16 + 12) = 1026;
      *(v16 + 14) = v11 == 2;
      _os_log_impl(&dword_21E77E000, v14, v15, "Scroll to systemPreferred %{public}s, animated %{BOOL,public}d", v16, 0x12u);
      v20 = __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x223D65FB0](v17, -1, -1, v20);
      MEMORY[0x223D65FB0](v16, -1, -1);
    }

    v21 = sub_21E788090();
    v22 = swift_allocObject();
    *(v22 + 16) = v13;
    v23 = v13;
    sub_21E8C6068(v11 == 2, v21, sub_21E8D7A30, v22);
  }
}

Swift::Void __swiftcall NCNotificationRootModernList._updateVisibilityOfHistorySection()()
{
  v1 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout);
  v2 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 8);
  v3 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 16);

  v4.n128_u64[0] = v3;
  sub_21E783428(v1, v5, v2, v4);

  sub_21E8C8A88(v5);
}

void sub_21E8C8A88(uint64_t *a1)
{
  v3 = sub_21E786808(0);
  if (!v3)
  {
    __break(1u);
    goto LABEL_39;
  }

  v4 = v3;
  v5 = [v3 count];

  if (v5 >= 1)
  {
    v6 = sub_21E786808(0);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 listView];

      if (v8)
      {
        v9 = [v8 isHidden];

        v10 = v9 ^ 1;
        goto LABEL_7;
      }

LABEL_40:
      __break(1u);
      return;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = 0;
LABEL_7:
  v11 = *a1;
  v12 = *(a1 + 56);
  if (!(v12 >> 6))
  {
    goto LABEL_10;
  }

  v13 = a1[3];
  if (v12 >> 6 == 1)
  {
    v11 = a1[3];
LABEL_10:
    if (v11 - 1 >= 3)
    {
      if (v11)
      {
        v14 = &v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
        v25 = v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
        v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed] = v10;
        if (v10 == v25)
        {
          return;
        }

        v16 = [v1 delegate];
        if (!v16)
        {
          return;
        }
      }

      else
      {
        v14 = &v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
        v23 = v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
        v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed] = 0;
        if (v23 != 1)
        {
          return;
        }

        v16 = [v1 delegate];
        if (!v16)
        {
          return;
        }
      }
    }

    else
    {
      v14 = &v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
      v15 = v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
      v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed] = 0;
      if (v15 != 1)
      {
        return;
      }

      v16 = [v1 delegate];
      if (!v16)
      {
        return;
      }
    }

    goto LABEL_34;
  }

  v18 = a1[5];
  v17 = a1[6];
  v19 = a1[4];
  v21 = a1[1];
  v20 = a1[2];
  if (v12 != 128 || v13 | v11 | v17 | v18 | v19 | v20 | v21)
  {
    if (v12 == 128 && v11 == 1 && !(v17 | v13 | v18 | v19 | v20 | v21))
    {
      v14 = &v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
      v24 = v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
      v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed] = 0;
      if (v24 != 1)
      {
        return;
      }

      v16 = [v1 delegate];
      if (!v16)
      {
        return;
      }
    }

    else
    {
      v14 = &v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
      v26 = v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
      v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed] = v10;
      if (v10 == v26)
      {
        return;
      }

      v16 = [v1 delegate];
      if (!v16)
      {
        return;
      }
    }
  }

  else
  {
    v14 = &v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
    v22 = v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed];
    v1[OBJC_IVAR___NCNotificationRootModernList__isNotificationHistoryRevealed] = 0;
    if (v22 != 1)
    {
      return;
    }

    v16 = [v1 delegate];
    if (!v16)
    {
      return;
    }
  }

LABEL_34:
  [v16 notificationRootList:v1 isNotificationsHistoryRevealed:*v14];

  swift_unknownObjectRelease();
}

double NCNotificationRootModernList.scrollViewVisibleContentLayoutOffsetY.getter()
{
  result = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 56);
  v2 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 96);
  if ((*(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 80) & 1) == 0)
  {
    v2 = v2 - *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 72);
  }

  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  if (v2 >= result)
  {
    v2 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 56);
  }

  if (result >= v2)
  {
    return v2;
  }

  return result;
}

Swift::Void __swiftcall NCNotificationRootModernList._notificationSectionsDidAdd(_:)(NCNotificationStructuredSectionList_optional *a1)
{
  if (!a1)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v13 = sub_21E929A78();
    __swift_project_value_buffer(v13, qword_280D05F58);
    v32 = sub_21E929A58();
    v14 = sub_21E92A628();
    if (os_log_type_enabled(v32, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21E77E000, v32, v14, "sectionList is nil when _notificationSectionsDidAdd called", v15, 2u);
      MEMORY[0x223D65FB0](v15, -1, -1);
    }

    goto LABEL_20;
  }

  v2 = a1;
  if ((sub_21E787D70() & 1) == 0)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v16 = sub_21E929A78();
    __swift_project_value_buffer(v16, qword_280D05F58);
    v32 = v2;
    v17 = v1;
    v18 = sub_21E929A58();
    v19 = sub_21E92A648();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136446466;
      v22 = [v32 logDescription];

      if (!v22)
      {
        goto LABEL_25;
      }

      v23 = sub_21E92A458();
      v25 = v24;

      v26 = sub_21E79841C(v23, v25, &v33);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2082;
      v27 = sub_21E788090();
      v28 = sub_21E79841C(qword_21E948050[v27], 0xE100000000000000, &v33);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_21E77E000, v18, v19, "%{public}s added, scroll to systemPreferred %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v21, -1, -1);
      MEMORY[0x223D65FB0](v20, -1, -1);
    }

    else
    {
    }

    v30 = sub_21E788090();
    sub_21E8C6068(1, v30, 0, 0);
    goto LABEL_20;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v3 = sub_21E929A78();
  __swift_project_value_buffer(v3, qword_280D05F58);
  v32 = v2;
  oslog = sub_21E929A58();
  v4 = sub_21E92A648();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136446210;
    v7 = [v32 logDescription];

    if (v7)
    {
      v8 = sub_21E92A458();
      v10 = v9;

      v11 = sub_21E79841C(v8, v10, &v33);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_21E77E000, oslog, v4, "User is engaging, skip update scroll position for %{public}s added", v5, 0xCu);
      v12 = __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x223D65FB0](v6, -1, -1, v12);
      MEMORY[0x223D65FB0](v5, -1, -1);

LABEL_20:
      v29 = v32;
      goto LABEL_21;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v29 = oslog;
LABEL_21:
}

void NCNotificationRootModernList.insert(_:)(id a1)
{
  v2 = v1;
  v4 = sub_21E786808(0xA);
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 count];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  [v2 _checkAndReloadSuggestionForNotificationRequest_withHighlightsListCount_];
  v8 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
  if (([v2 _isAlertingNotificationRequest_] & 1) == 0)
  {
    v9 = v2[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter];
    v2[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter] = 0;
    if (v9 == 1)
    {
      sub_21E8C16E8();
    }
  }

  v10 = [v2 _insertNotificationRequest_];
  v11 = [v10 section];
  if (!v11)
  {

    v32 = v2[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter];
    v2[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter] = 1;
    if (v32)
    {
      return;
    }

    goto LABEL_61;
  }

  v12 = v11;
  v13 = [v10 update];
  v14 = v13;
  v126 = v10;
  if (v13 != 2)
  {
    if (v13)
    {
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v33 = sub_21E929A78();
      __swift_project_value_buffer(v33, qword_280D05F58);
      v34 = a1;
      a1 = v12;
      v35 = sub_21E929A58();
      v36 = sub_21E92A648();
      if (!os_log_type_enabled(v35, v36))
      {

        goto LABEL_60;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v127[0] = v38;
      *v37 = 136446722;
      v39 = [v34 notificationIdentifier];
      if (!v39)
      {
        sub_21E92A458();
        v39 = sub_21E92A428();
      }

      v40 = [v39 un_logDigest];

      if (v40)
      {
        v41 = sub_21E92A458();
        v43 = v42;

        v44 = sub_21E79841C(v41, v43, v127);

        *(v37 + 4) = v44;
        *(v37 + 12) = 2082;
        v45 = [a1 logDescription];

        if (v45)
        {
          v46 = sub_21E92A458();
          v48 = v47;

          v49 = sub_21E79841C(v46, v48, v127);

          *(v37 + 14) = v49;
          *(v37 + 22) = 2050;
          *(v37 + 24) = v14;
          _os_log_impl(&dword_21E77E000, v35, v36, "Did not insert %{public}s to %{public}s, update: %{public}ld.", v37, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223D65FB0](v38, -1, -1);
          MEMORY[0x223D65FB0](v37, -1, -1);

LABEL_59:
LABEL_60:
          v82 = v2[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter];
          v2[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter] = 1;
          if (v82)
          {
            return;
          }

          goto LABEL_61;
        }

        goto LABEL_84;
      }

      goto LABEL_82;
    }

    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v15 = sub_21E929A78();
    __swift_project_value_buffer(v15, qword_280D05F58);
    v16 = a1;
    v17 = v12;
    v18 = sub_21E929A58();
    v19 = sub_21E92A628();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v127[0] = v124;
      *v20 = 136446466;
      v21 = [v16 notificationIdentifier];
      if (!v21)
      {
        sub_21E92A458();
        v21 = sub_21E92A428();
      }

      v22 = [v21 un_logDigest];

      if (!v22)
      {
        goto LABEL_81;
      }

      v23 = sub_21E92A458();
      v25 = v24;

      v26 = sub_21E79841C(v23, v25, v127);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2082;
      v27 = [v17 logDescription];

      if (!v27)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        return;
      }

      v28 = sub_21E92A458();
      v30 = v29;

      v31 = sub_21E79841C(v28, v30, v127);

      *(v20 + 14) = v31;
      _os_log_impl(&dword_21E77E000, v18, v19, "Inserting %{public}s to %{public}s, however update is unknown!", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v124, -1, -1);
      MEMORY[0x223D65FB0](v20, -1, -1);

      v10 = v126;
      v8 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
    }

    else
    {
    }
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v50 = sub_21E929A78();
  __swift_project_value_buffer(v50, qword_280D05F58);
  v51 = a1;
  a1 = v12;
  v52 = sub_21E929A58();
  v53 = sub_21E92A648();
  if (!os_log_type_enabled(v52, v53))
  {

    goto LABEL_41;
  }

  v54 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v127[0] = v17;
  *v54 = 136315394;
  v55 = [v51 notificationIdentifier];
  if (!v55)
  {
    sub_21E92A458();
    v55 = sub_21E92A428();
  }

  v56 = a1;
  v57 = [v55 un_logDigest];

  if (!v57)
  {

    __break(1u);
    goto LABEL_80;
  }

  v58 = sub_21E92A458();
  a1 = v59;

  v60 = sub_21E79841C(v58, a1, v127);

  *(v54 + 4) = v60;
  *(v54 + 12) = 2082;
  v61 = [v56 logDescription];

  if (!v61)
  {
LABEL_80:
    __break(1u);
LABEL_81:

    __break(1u);
LABEL_82:

    __break(1u);
    goto LABEL_83;
  }

  v62 = sub_21E92A458();
  v64 = v63;

  v65 = sub_21E79841C(v62, v64, v127);

  *(v54 + 14) = v65;
  _os_log_impl(&dword_21E77E000, v52, v53, "Insert %s to %{public}s", v54, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D65FB0](v17, -1, -1);
  MEMORY[0x223D65FB0](v54, -1, -1);

  v10 = v126;
  a1 = v56;
  v8 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
LABEL_41:
  if ([a1 sectionType] != 12 && objc_msgSend(a1, sel_sectionType) != 11 && objc_msgSend(a1, sel_sectionType) != 1 && objc_msgSend(a1, sel_sectionType) != 2 && objc_msgSend(a1, sel_sectionType) != 10 && objc_msgSend(a1, sel_sectionType) != 4 && objc_msgSend(a1, sel_sectionType) != 6)
  {
    if (*(*&v2[OBJC_IVAR___NCNotificationRootModernList_layout] + 16))
    {
      goto LABEL_58;
    }

    v105 = v51;
    v106 = v2;
    v107 = sub_21E929A58();
    v108 = sub_21E92A648();

    if (os_log_type_enabled(v107, v108))
    {
      v125 = a1;
      v109 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v127[0] = v122;
      *v109 = 136446466;
      v110 = sub_21E788090();
      v111 = sub_21E79841C(qword_21E948050[v110], 0xE100000000000000, v127);

      *(v109 + 4) = v111;
      *(v109 + 12) = 2082;
      v112 = [v105 notificationIdentifier];
      if (!v112)
      {
        sub_21E92A458();
        v112 = sub_21E92A428();
      }

      v113 = v10;
      v114 = [v112 un_logDigest];

      if (!v114)
      {
        goto LABEL_87;
      }

      v115 = sub_21E92A458();
      v117 = v116;

      v118 = sub_21E79841C(v115, v117, v127);

      *(v109 + 14) = v118;
      _os_log_impl(&dword_21E77E000, v107, v108, "Page was empty before insert below the fold, scroll to %{public}s for %{public}s insertion", v109, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v123, -1, -1);
      MEMORY[0x223D65FB0](v109, -1, -1);

      v10 = v113;
      a1 = v125;
    }

    else
    {
    }

    v119 = sub_21E788090();
    sub_21E8C6068(1, v119, 0, 0);
    goto LABEL_58;
  }

  if (sub_21E787D70())
  {
    v66 = v51;
    v67 = sub_21E929A58();
    v68 = sub_21E92A648();
    if (!os_log_type_enabled(v67, v68))
    {

      goto LABEL_58;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v127[0] = v70;
    *v69 = 136446210;
    v71 = [v66 notificationIdentifier];
    if (!v71)
    {
      sub_21E92A458();
      v71 = sub_21E92A428();
    }

    v72 = [v71 un_logDigest];

    if (v72)
    {
      v73 = sub_21E92A458();
      v75 = v74;

      v76 = sub_21E79841C(v73, v75, v127);

      *(v69 + 4) = v76;
      _os_log_impl(&dword_21E77E000, v67, v68, "User is engaging, skip scrolling for %{public}s insertion", v69, 0xCu);
      v77 = __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x223D65FB0](v70, -1, -1, v77);
      MEMORY[0x223D65FB0](v69, -1, -1);

      v10 = v126;
LABEL_58:
      [v2 _notificationListDidChangeContent];

      goto LABEL_59;
    }

    goto LABEL_85;
  }

  if ([v2 v8[283]])
  {
    sub_21E798E1C(130);
    sub_21E8CA26C();
    v78 = *&v2[OBJC_IVAR___NCNotificationRootModernList_layout];
    v79 = *&v2[OBJC_IVAR___NCNotificationRootModernList_layout + 8];
    v80 = *&v2[OBJC_IVAR___NCNotificationRootModernList_layout + 16];

    v81.n128_u64[0] = v80;
    sub_21E783428(v78, v127, v79, v81);

    sub_21E8C800C(v127);
    goto LABEL_58;
  }

  v83 = v51;
  v84 = v2;
  v85 = sub_21E929A58();
  v86 = sub_21E92A648();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v127[0] = v120;
    *v87 = 136446722;
    v88 = sub_21E788090();
    v89 = sub_21E79841C(qword_21E948050[v88], 0xE100000000000000, v127);

    *(v87 + 4) = v89;
    *(v87 + 12) = 2082;
    v90 = [v84 currentListDisplayStyleSettingReason];
    v91 = sub_21E92A458();
    v93 = v92;

    v94 = sub_21E79841C(v91, v93, v127);

    *(v87 + 14) = v94;
    *(v87 + 22) = 2082;
    v95 = [v83 notificationIdentifier];
    if (!v95)
    {
      sub_21E92A458();
      v95 = sub_21E92A428();
    }

    v96 = [v95 un_logDigest];

    if (!v96)
    {
      goto LABEL_86;
    }

    v97 = sub_21E92A458();
    v99 = v98;

    v100 = sub_21E79841C(v97, v99, v127);

    *(v87 + 24) = v100;
    _os_log_impl(&dword_21E77E000, v85, v86, "It's not alerting request; scroll to systemPreferred %{public}s (reason: %{public}s) for %{public}s insertion", v87, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v121, -1, -1);
    MEMORY[0x223D65FB0](v87, -1, -1);
  }

  else
  {
  }

  v101 = sub_21E788090();
  v102 = swift_allocObject();
  *(v102 + 16) = v84;
  v103 = v84;
  sub_21E8C6068(0, v101, sub_21E8D9728, v102);

  [v103 _notificationListDidChangeContent];

  v104 = v103[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter];
  v103[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter] = 1;
  if ((v104 & 1) == 0)
  {
LABEL_61:
    sub_21E8C16E8();
  }
}

double sub_21E8CA26C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0, &qword_21E947530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR___NCNotificationRootModernList_scrollDownToHideNewIncomingTask;
  if (*(v0 + OBJC_IVAR___NCNotificationRootModernList_scrollDownToHideNewIncomingTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7300, &qword_21E947B40);
    sub_21E92A5C8();
  }

  *(v0 + v5) = 0;

  v6 = sub_21E92A5B8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21E92A598();

  v8 = sub_21E92A588();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  *(v1 + v5) = sub_21E8C4C34(0, 0, v4, &unk_21E947D80, v9);

  return result;
}

void sub_21E8CA48C(char a1, char a2, void *a3)
{
  if ((a1 & 1) != 0 && (a2 & 1) == 0)
  {
    v4.receiver = a3;
    v4.super_class = NCNotificationRootModernList;
    v3 = objc_msgSendSuper2(&v4, sel_rootListView);
    [v3 layoutIfNeeded];
  }
}

void NCNotificationRootModernList.modifyNotificationRequest(_:)(void *a1)
{
  v2 = v1;
  v21.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v21, sel_modifyNotificationRequest_, a1);
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F58);
  v5 = a1;
  v6 = sub_21E929A58();
  v7 = sub_21E92A648();
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_10;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v19 = v9;
  *v8 = 136446210;
  if (a1)
  {
    v10 = v9;
    v11 = [v5 notificationIdentifier];
    if (!v11)
    {
      sub_21E92A458();
      v11 = sub_21E92A428();
    }

    v12 = [v11 un_logDigest];

    if (v12)
    {
      v13 = sub_21E92A458();
      v15 = v14;

      v16 = sub_21E79841C(v13, v15, &v19);

      *(v8 + 4) = v16;
      _os_log_impl(&dword_21E77E000, v6, v7, "Modify %{public}s", v8, 0xCu);
      v17 = __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x223D65FB0](v10, -1, -1, v17);
      MEMORY[0x223D65FB0](v8, -1, -1);
LABEL_10:

      sub_21E798E1C(129);
      v20.receiver = v2;
      v20.super_class = NCNotificationRootModernList;
      v18 = objc_msgSendSuper2(&v20, sel_rootListView);
      [v18 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void NCNotificationRootModernList.reload(_:)(void *a1)
{
  v2 = v1;
  v4 = v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  v45.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v45, sel_reloadNotificationRequest_, a1);
  v5 = sub_21E786808(0);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 containsNotificationRequest_];

    v44.receiver = v2;
    v44.super_class = NCNotificationRootModernList;
    v8 = &selRef_revealHintingAnimationTension;
    v9 = objc_msgSendSuper2(&v44, sel_rootListView);
    objc_opt_self();
    v10 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

    if (v4 <= 2 && (v7 & 1) == 0 && (v10 & 1) == 0)
    {
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v11 = sub_21E929A78();
      __swift_project_value_buffer(v11, qword_280D05F58);
      v12 = a1;
      v13 = sub_21E929A58();
      v14 = sub_21E92A648();
      if (!os_log_type_enabled(v13, v14))
      {

        goto LABEL_26;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = v16;
      *v15 = 136446466;
      if (a1)
      {
        v17 = v16;
        v18 = [v12 notificationIdentifier];
        if (!v18)
        {
          sub_21E92A458();
          v18 = sub_21E92A428();
        }

        v19 = [v18 un_logDigest];

        if (v19)
        {
          v20 = sub_21E92A458();
          v22 = v21;

          v23 = sub_21E79841C(v20, v22, &v43);

          *(v15 + 4) = v23;
          *(v15 + 12) = 2082;
          v24 = sub_21E79841C(qword_21E948008[v4], 0xE100000000000000, &v43);

          *(v15 + 14) = v24;
          _os_log_impl(&dword_21E77E000, v13, v14, "Reload request %{public}s: setting needs scroll for current page type: %{public}s", v15, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D65FB0](v17, -1, -1);
          MEMORY[0x223D65FB0](v15, -1, -1);

          v8 = &selRef_revealHintingAnimationTension;
LABEL_26:
          sub_21E798E1C(v4);
          v42.receiver = v2;
          v42.super_class = NCNotificationRootModernList;
          v40 = objc_msgSendSuper2(&v42, v8[20]);
          [v40 layoutIfNeeded];

          return;
        }

        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v25 = sub_21E929A78();
    __swift_project_value_buffer(v25, qword_280D05F58);
    v26 = a1;
    v27 = sub_21E929A58();
    v28 = sub_21E92A648();
    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_35;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43 = v30;
    *v29 = 136446978;
    if (a1)
    {
      v31 = v30;
      v32 = [v26 notificationIdentifier];
      if (!v32)
      {
        sub_21E92A458();
        v32 = sub_21E92A428();
      }

      v33 = [v32 un_logDigest];

      if (!v33)
      {
        goto LABEL_39;
      }

      v34 = sub_21E92A458();
      v36 = v35;

      v37 = sub_21E79841C(v34, v36, &v43);

      *(v29 + 4) = v37;
      *(v29 + 12) = 2082;
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v38 = 0xE100000000000000;
          v39 = 80;
        }

        else if (v4 == 4)
        {
          v38 = 0xE100000000000000;
          v39 = 76;
        }

        else
        {
          v38 = 0xE90000000000003ELL;
          v39 = 0x6E776F6E6B6E753CLL;
        }
      }

      else if (v4)
      {
        if (v4 == 1)
        {
          v38 = 0xE100000000000000;
          v39 = 83;
        }

        else
        {
          v38 = 0xE100000000000000;
          v39 = 69;
        }
      }

      else
      {
        v38 = 0xE100000000000000;
        v39 = 67;
      }

      v41 = sub_21E79841C(v39, v38, &v43);

      *(v29 + 14) = v41;
      *(v29 + 22) = 1026;
      *(v29 + 24) = v7;
      *(v29 + 28) = 1026;
      *(v29 + 30) = v10;
      _os_log_impl(&dword_21E77E000, v27, v28, "Reload request %{public}s: skipping updating scroll position. Current page type: %{public}s, inHistory: %{BOOL,public}d, tracking: %{BOOL,public}d", v29, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v31, -1, -1);
      MEMORY[0x223D65FB0](v29, -1, -1);
LABEL_35:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

Swift::Void __swiftcall NCNotificationRootModernList.notificationsLoaded(forSectionIdentifier:)(Swift::String forSectionIdentifier)
{
  object = forSectionIdentifier._object;
  countAndFlagsBits = forSectionIdentifier._countAndFlagsBits;
  v4 = [v1 loadedNotificationSections];
  v5 = sub_21E92A428();
  v6 = [v4 containsObject_];

  v7 = sub_21E92A428();
  v31.receiver = v1;
  v31.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v31, sel_notificationsLoadedForSectionIdentifier_, v7);

  if (v6)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v8 = sub_21E929A78();
    __swift_project_value_buffer(v8, qword_280D05F58);
    v9 = v1;

    v10 = sub_21E929A58();
    v11 = sub_21E92A648();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136446466;
    v14 = sub_21E788090();
    v15 = sub_21E79841C(qword_21E948050[v14], 0xE100000000000000, &v30);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_21E79841C(countAndFlagsBits, object, &v30);
    v16 = "Section is loaded, skip scrolling to systemPreferred %{public}s for notificationsLoaded on section %{public}s";
LABEL_11:
    _os_log_impl(&dword_21E77E000, v10, v11, v16, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v13, -1, -1);
    MEMORY[0x223D65FB0](v12, -1, -1);
LABEL_12:

    return;
  }

  if (sub_21E787D70())
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v17 = sub_21E929A78();
    __swift_project_value_buffer(v17, qword_280D05F58);
    v18 = v1;

    v10 = sub_21E929A58();
    v11 = sub_21E92A648();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136446466;
    v19 = sub_21E788090();
    v20 = sub_21E79841C(qword_21E948050[v19], 0xE100000000000000, &v30);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_21E79841C(countAndFlagsBits, object, &v30);
    v16 = "User is engaging, skip scrolling to systemPreferred %{public}s for notificationsLoaded on section %{public}s";
    goto LABEL_11;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v21 = sub_21E929A78();
  __swift_project_value_buffer(v21, qword_280D05F58);
  v22 = v1;

  v23 = sub_21E929A58();
  v24 = sub_21E92A648();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v25 = 136446466;
    v27 = sub_21E788090();
    v28 = sub_21E79841C(qword_21E948050[v27], 0xE100000000000000, &v30);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_21E79841C(countAndFlagsBits, object, &v30);
    _os_log_impl(&dword_21E77E000, v23, v24, "Scrolling to systemPreferred %{public}s for notificationsLoaded on section %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v26, -1, -1);
    MEMORY[0x223D65FB0](v25, -1, -1);
  }

  v29 = sub_21E788090();
  sub_21E798E1C(v29);
  [v22 _notificationListDidChangeContent];
}

void NCNotificationRootModernList.expandGroup(for:withCompletion:)(void *a1, uint64_t a2, uint64_t a3)
{
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E792C28;
  aBlock[3] = &block_descriptor_2;
  v5 = _Block_copy(aBlock);

  v30.receiver = v3;
  v30.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v30, sel_expandGroupForNotificationRequest_withCompletion_, a1, v5);
  _Block_release(v5);
  v6 = *&v3[OBJC_IVAR___NCNotificationRootModernList_layout];
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v7, 0);
    v8 = aBlock[0];
    v9 = *(aBlock[0] + 16);
    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      aBlock[0] = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_21E8D52D8((v12 > 1), v9 + 1, 1);
        v8 = aBlock[0];
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v7;
    }

    while (v7);
  }

  v13 = 0;
  v14 = *(v8 + 16);
  while (v14 != v13)
  {
    v15 = v8 + v13++;
    if (*(v15 + 32) == 4)
    {
      goto LABEL_13;
    }
  }

  if (v14)
  {
    v16 = *(v8 + 32);
    goto LABEL_14;
  }

LABEL_13:
  v16 = 4;
LABEL_14:

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v17 = sub_21E929A78();
  __swift_project_value_buffer(v17, qword_280D05F58);
  v18 = a1;
  v19 = sub_21E929A58();
  v20 = sub_21E92A618();
  if (!os_log_type_enabled(v19, v20))
  {

    goto LABEL_22;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  aBlock[0] = v22;
  *v21 = 136446466;
  v23 = [v18 notificationIdentifier];
  if (!v23)
  {
    sub_21E92A458();
    v23 = sub_21E92A428();
  }

  v24 = [v23 un_logDigest];

  if (v24)
  {
    v25 = sub_21E92A458();
    v27 = v26;

    v28 = sub_21E79841C(v25, v27, aBlock);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2082;
    v29 = sub_21E79841C(qword_21E948050[v16], 0xE100000000000000, aBlock);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_21E77E000, v19, v20, "Expand ground %{public}s to target %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v22, -1, -1);
    MEMORY[0x223D65FB0](v21, -1, -1);
LABEL_22:

    sub_21E798E1C(v16 | 0x40u);
    return;
  }

  __break(1u);
}

void sub_21E8CB760(void *a1)
{
  v15.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v15, sel_rootListView);
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

  if (v4)
  {
    v14.receiver = v1;
    v14.super_class = NCNotificationRootModernList;
    v5 = objc_msgSendSuper2(&v14, sel_rootListView);
    [v5 _removeAllRetargetableAnimations_];

    v13.receiver = v1;
    v13.super_class = NCNotificationRootModernList;
    v6 = objc_msgSendSuper2(&v13, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() syncScrollPosition];
  }

  sub_21E799598();
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v7 = sub_21E929A78();
  __swift_project_value_buffer(v7, qword_280D05F58);
  v8 = a1;
  v9 = sub_21E929A58();
  v10 = sub_21E92A618();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    [v8 contentOffset];
    *(v11 + 4) = v12;
    _os_log_impl(&dword_21E77E000, v9, v10, "ScrollView did scroll %{public}f", v11, 0xCu);
    MEMORY[0x223D65FB0](v11, -1, -1);
  }
}

void sub_21E8CB974()
{
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v1 = sub_21E929A78();
  __swift_project_value_buffer(v1, qword_280D05F58);
  v2 = v0;
  v3 = sub_21E929A58();
  v4 = sub_21E92A648();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240704;
    *(v5 + 4) = sub_21E788490();
    *(v5 + 8) = 2050;
    v19.receiver = v2;
    v19.super_class = NCNotificationRootModernList;
    v6 = objc_msgSendSuper2(&v19, sel_rootListView);
    v7 = [v6 traitCollection];

    v8 = [v7 _backlightLuminance];
    *(v5 + 10) = v8;

    *(v5 + 18) = 1026;
    *(v5 + 20) = [objc_opt_self() _isInRetargetableAnimationBlock];
    _os_log_impl(&dword_21E77E000, v3, v4, "Performing scrollValidation animation check. shouldAllowScrollValidation: %{BOOL,public}d, _backlightLuminance %{public}ld, _isInRetargetableAnimationBlock %{BOOL,public}d", v5, 0x18u);
    MEMORY[0x223D65FB0](v5, -1, -1);
  }

  else
  {
  }

  if (sub_21E788490())
  {
    v21.receiver = v2;
    v21.super_class = NCNotificationRootModernList;
    v9 = objc_msgSendSuper2(&v21, sel_rootListView);
    v10 = [v9 traitCollection];

    v11 = [v10 _backlightLuminance];
    if (v11 == 2)
    {
      v20.receiver = v2;
      v20.super_class = NCNotificationRootModernList;
      v12 = objc_msgSendSuper2(&v20, sel_rootListView);
      [v12 contentOffset];
      v14 = v13;

      v15 = sub_21E8D03B8(v2, v14);
      v16 = swift_allocObject();
      *(v16 + 16) = v2;
      _s23ScrollCompletionHandlerCMa();
      v17 = swift_allocObject();
      *(v17 + 32) = 0;
      *(v17 + 16) = sub_21E8D976C;
      *(v17 + 24) = v16;
      *&v22 = 2;
      *(&v22 + 1) = v15;
      v23 = 0;
      v24 = 0;
      v25 = 0x4000000000000000;
      v26 = v17;
      v18 = v2;
      sub_21E8C2F48(&v22);
    }
  }
}

void sub_21E8CBC48(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR___NCNotificationRootModernList_layout;
  v6 = *&v2[OBJC_IVAR___NCNotificationRootModernList_layout];
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    *&v69[0] = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v7, 0);
    v8 = *&v69[0];
    v9 = *(*&v69[0] + 16);
    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      *&v69[0] = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_21E8D52D8((v12 > 1), v9 + 1, 1);
        v8 = *&v69[0];
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v7;
    }

    while (v7);
  }

  v13 = 0;
  v14 = *(v8 + 16);
  while (v14 != v13)
  {
    v15 = v8 + v13++;
    if (*(v15 + 32) == a2)
    {

      v16 = a2;
      goto LABEL_24;
    }
  }

  LOBYTE(v16) = a2;
  while (1)
  {
    if (v16 > 2u)
    {
      if (v16 == 3)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      goto LABEL_20;
    }

    if (v16 == 1)
    {
      v16 = 0;
      goto LABEL_20;
    }

    if (v16 != 2)
    {
      break;
    }

    v16 = 1;
LABEL_20:
    v17 = *(v8 + 16);
    v18 = (v8 + 32);
    while (v17)
    {
      v19 = *v18++;
      --v17;
      if (v19 == v16)
      {
        goto LABEL_23;
      }
    }
  }

  if (v14)
  {
    v16 = *(v8 + 32);
LABEL_23:
  }

  else
  {

    v16 = 4;
  }

LABEL_24:
  v20 = *&v3[v5];
  v21 = (v20 + 32);
  v22 = *(v20 + 16) + 1;
  while (--v22)
  {
    v23 = v21 + 24;
    v24 = *v21 == v16;
    v21 += 24;
    if (v24)
    {
      v26 = *(v23 - 2);
      v25 = *(v23 - 1);
      v68.receiver = v3;
      v68.super_class = NCNotificationRootModernList;
      v27 = objc_msgSendSuper2(&v68, sel_rootListView);
      [v27 contentOffset];
      v29 = v28;

      v67.receiver = v3;
      v67.super_class = NCNotificationRootModernList;
      v30 = objc_msgSendSuper2(&v67, sel_rootListView);
      UIRoundToViewScale();
      v32 = v31;

      if (v25 >= v29 && v29 >= v26 || v32 <= 1.0)
      {
        if (qword_280D03F40 != -1)
        {
          swift_once();
        }

        v35 = sub_21E929A78();
        __swift_project_value_buffer(v35, qword_280D05F58);
        v36 = sub_21E929A58();
        v37 = sub_21E92A648();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *&v69[0] = v39;
          *v38 = 134349314;
          *(v38 + 4) = v29;
          *(v38 + 12) = 2082;
          v40 = sub_21E8C11B8(v16, v26, v25);
          v42 = sub_21E79841C(v40, v41, v69);

          *(v38 + 14) = v42;
          _os_log_impl(&dword_21E77E000, v36, v37, "CurrentOffset %{public}f is within targetPage %{public}s. Stop scrolling.", v38, 0x16u);
          v43 = __swift_destroy_boxed_opaque_existential_1Tm(v39);
          MEMORY[0x223D65FB0](v39, -1, -1, v43);
          MEMORY[0x223D65FB0](v38, -1, -1);
        }

        memset(v69, 0, sizeof(v69));
        v70 = 0x8000000000000000;
        v71 = 0;
        v72 = 0;
        v73 = 0;
        sub_21E8C2F48(v69);
        v66.receiver = v3;
        v66.super_class = NCNotificationRootModernList;
        v44 = objc_msgSendSuper2(&v66, sel_rootListView);
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() cancelTouchTracking];

        v65.receiver = v3;
        v65.super_class = NCNotificationRootModernList;
        v45 = objc_msgSendSuper2(&v65, sel_rootListView);
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() stopScrollingAndZooming];

        sub_21E8CCAD4(v3);
      }

      else
      {
        if (qword_280D03F40 != -1)
        {
          swift_once();
        }

        v53 = sub_21E929A78();
        __swift_project_value_buffer(v53, qword_280D05F58);
        v54 = sub_21E929A58();
        v55 = sub_21E92A648();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v69[0] = v57;
          *v56 = 136446722;
          v58 = sub_21E8C11B8(v16, v26, v25);
          v60 = sub_21E79841C(v58, v59, v69);

          *(v56 + 4) = v60;
          *(v56 + 12) = 2082;
          v61 = sub_21E79841C(qword_21E948050[a2], 0xE100000000000000, v69);

          *(v56 + 14) = v61;
          *(v56 + 22) = 2050;
          *(v56 + 24) = v29;
          _os_log_impl(&dword_21E77E000, v54, v55, "Scroll to to targetPage: %{public}s minY with holdToPage request %{public}s, currentOffset: %{public}f", v56, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223D65FB0](v57, -1, -1);
          MEMORY[0x223D65FB0](v56, -1, -1);
        }

        v62 = swift_allocObject();
        *(v62 + 16) = v3;
        v63 = v3;
        sub_21E8C6068(a1 & 1, v16, sub_21E8D976C, v62);
      }

      return;
    }
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v46 = sub_21E929A78();
  __swift_project_value_buffer(v46, qword_280D05F58);
  v47 = sub_21E929A58();
  v48 = sub_21E92A628();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v69[0] = v50;
    *v49 = 136446210;
    v51 = sub_21E79841C(qword_21E948050[v16], 0xE100000000000000, v69);

    *(v49 + 4) = v51;
    _os_log_impl(&dword_21E77E000, v47, v48, "Unable to find page for targetPageType %{public}s", v49, 0xCu);
    v52 = __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x223D65FB0](v50, -1, -1, v52);
    MEMORY[0x223D65FB0](v49, -1, -1);
  }

  sub_21E8CCAD4(v3);
}

uint64_t sub_21E8CC3AC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = OBJC_IVAR___NCNotificationRootModernList_layout;
  v5 = *(a2 + OBJC_IVAR___NCNotificationRootModernList_layout);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v23 = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v6, 0);
    v7 = v23;
    v8 = *(v23 + 16);
    v9 = 32;
    do
    {
      v10 = *(v5 + v9);
      v11 = *(v23 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_21E8D52D8((v11 > 1), v8 + 1, 1);
      }

      *(v23 + 16) = v8 + 1;
      *(v23 + v8 + 32) = v10;
      v9 += 24;
      ++v8;
      --v6;
    }

    while (v6);
  }

  v12 = 0;
  v13 = *(v7 + 16);
  while (v13 != v12)
  {
    v14 = v7 + v12++;
    if (*(v14 + 32) == v3)
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  while (1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }

      goto LABEL_19;
    }

    if (v3 == 1)
    {
      v3 = 0;
      goto LABEL_19;
    }

    if (v3 != 2)
    {
      break;
    }

    v3 = 1;
LABEL_19:
    v15 = *(v7 + 16);
    v16 = (v7 + 32);
    while (v15)
    {
      v17 = *v16++;
      --v15;
      if (v17 == v3)
      {
        goto LABEL_22;
      }
    }
  }

  if (v13)
  {
    v3 = *(v7 + 32);
    goto LABEL_22;
  }

  v3 = 4;
LABEL_23:
  v18 = *(a2 + v4);
  v19 = (v18 + 32);
  v20 = *(v18 + 16) + 1;
  result = 5;
  while (--v20)
  {
    v22 = *v19;
    v19 += 24;
    if (v22 == v3)
    {
      return v3;
    }
  }

  return result;
}

double sub_21E8CC588(char a1, char a2, uint64_t a3, void (*a4)(void, void, __n128), uint64_t a5)
{
  if ((a1 & 1) != 0 && (a2 & 1) == 0)
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0x8000000000000000;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_21E8C2F48(v10);
  }

  if (a4)
  {

    (a4)(a1 & 1, a2 & 1);

    return sub_21E792694(a4, a5);
  }

  return result;
}

void sub_21E8CC644(char a1, CGFloat a2)
{
  v3 = v2;
  v37.super_class = NCNotificationRootModernList;
  v6 = objc_msgSendSuper2(&v37, sel_rootListView);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() animatableContentOffset];

  v36.receiver = v3;
  v36.super_class = NCNotificationRootModernList;
  v7 = objc_msgSendSuper2(&v36, sel_rootListView);
  UIRoundToViewScale();
  v9 = v8;

  if (v9 > 0.0 || (v35.receiver = v3, v35.super_class = NCNotificationRootModernList, v10 = objc_msgSendSuper2(&v35, sel_rootListView), objc_opt_self(), [swift_dynamicCastObjCClassUnconditional() contentOffset], v10, v34.receiver = v3, v34.super_class = NCNotificationRootModernList, v11 = objc_msgSendSuper2(&v34, sel_rootListView), UIRoundToViewScale(), v13 = v12, v11, v13 > 0.0))
  {
    v33.receiver = v3;
    v33.super_class = NCNotificationRootModernList;
    v14 = objc_msgSendSuper2(&v33, sel_rootListView);
    [v14 contentOffset];
    v16 = v15;

    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v17 = sub_21E929A78();
    __swift_project_value_buffer(v17, qword_280D05F58);
    v18 = sub_21E929A58();
    v19 = sub_21E92A618();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = a2;
      _os_log_impl(&dword_21E77E000, v18, v19, "Setting content offset without animation: %{public}f", v20, 0xCu);
      MEMORY[0x223D65FB0](v20, -1, -1);
    }

    if (a1)
    {
      v30.receiver = v3;
      v30.super_class = NCNotificationRootModernList;
      v21 = objc_msgSendSuper2(&v30, sel_rootListView);
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setAnimatableContentOffset_];
    }

    else
    {
      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v3;
      v40 = sub_21E8D8D7C;
      v41 = v23;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_21E792C28;
      *(&v39 + 1) = &block_descriptor_128;
      v24 = _Block_copy(&aBlock);
      v25 = v3;

      [v22 _performWithoutRetargetingAnimations_];
      _Block_release(v24);
      v32.receiver = v25;
      v32.super_class = NCNotificationRootModernList;
      v26 = objc_msgSendSuper2(&v32, sel_rootListView);
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 32) = 0;
      *(v27 + 40) = 0;
      *(v27 + 24) = v25;
      v28 = v25;
      sub_21E8DB624(0, 0, sub_21E8D8D98, v27, v16, a2);
    }

    aBlock = 0u;
    v39 = 0u;
    v40 = 0x8000000000000000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    sub_21E8C2F48(&aBlock);
    v31.receiver = v3;
    v31.super_class = NCNotificationRootModernList;
    v29 = objc_msgSendSuper2(&v31, sel_rootListView);
    [v3 scrollViewDidScroll_];
  }
}

uint64_t sub_21E8CCAD4(uint64_t a1)
{
  v2 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3[i + 32] & 0xC0) == 0x40)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_23;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + v2) = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_24;
        }

        while (1)
        {
          *(a1 + v2) = v3;
          if (v7 == *(v3 + 2))
          {
            v6 = v7;
LABEL_10:
            v4 = i;
            if (v6 >= i)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v10 = i + 33;
            v11 = v3 + 32;
            v6 = *(v3 + 2);
            while (v10 - 32 < v6)
            {
              v14 = v3[v10];
              if ((v14 & 0xC0) != 0x40)
              {
                if (v10 - 32 != i)
                {
                  if (i >= v6)
                  {
                    __break(1u);
                    break;
                  }

                  v12 = v11[i];
                  v11[i] = v14;
                  v3[v10] = v12;
                  *(a1 + v2) = v3;
                  v6 = *(v3 + 2);
                }

                ++i;
              }

              v13 = v10 - 31;
              ++v10;
              if (v13 == v6)
              {
                goto LABEL_10;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v3 = sub_21E924E40(v3);
        }
      }
    }
  }

  v6 = *(v3 + 2);
LABEL_11:
  sub_21E791598(v4, v6);
  return swift_endAccess();
}

void sub_21E8CCC2C()
{
  v1 = v0;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v2 = sub_21E929A78();
  __swift_project_value_buffer(v2, qword_280D05F58);
  v3 = sub_21E929A58();
  v4 = sub_21E92A648();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21E77E000, v3, v4, "Verifing highlight scrollPosition", v5, 2u);
    MEMORY[0x223D65FB0](v5, -1, -1);
  }

  v6 = sub_21E786808(0xA);
  if (!v6)
  {
    return;
  }

  v77 = v6;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7 || (*&v1[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32] >> 62) < 2 || (v76 = v7, ([v7 forceExpanded] & 1) != 0) || objc_msgSend(v76, sel_count) < 1 || (objc_msgSend(v76, sel_expandedPercentage), v8 == 0.0) || (objc_msgSend(v76, sel_expandedPercentage), v9 == 1.0))
  {

    return;
  }

  v82.receiver = v1;
  v82.super_class = NCNotificationRootModernList;
  v10 = &selRef_revealHintingAnimationTension;
  v11 = objc_msgSendSuper2(&v82, sel_rootListView);
  v12 = [v11 traitCollection];

  v13 = [v12 _backlightLuminance];
  p_prots = &OBJC_PROTOCOL___UIContentSizeCategoryAdjusting.prots;
  if (v13 != 2)
  {
    LOBYTE(v23) = sub_21E788090();
    v24 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
    v25 = *(v24 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v25)
    {
      v81 = MEMORY[0x277D84F90];

      sub_21E8D52D8(0, v25, 0);
      v17 = v81;
      v26 = v81[2];
      v27 = 32;
      do
      {
        v28 = *(v24 + v27);
        v81 = v17;
        v29 = *(v17 + 24);
        if (v26 >= v29 >> 1)
        {
          sub_21E8D52D8((v29 > 1), v26 + 1, 1);
          v17 = v81;
        }

        *(v17 + 16) = v26 + 1;
        *(v17 + v26 + 32) = v28;
        v27 += 24;
        ++v26;
        --v25;
      }

      while (v25);

      v10 = &selRef_revealHintingAnimationTension;
      p_prots = &OBJC_PROTOCOL___UIContentSizeCategoryAdjusting.prots;
    }

    v30 = 0;
    v31 = *(v17 + 16);
    do
    {
      if (v31 == v30)
      {
        while (1)
        {
          if (v23 > 2u)
          {
            if (v23 == 3)
            {
              v23 = 2;
            }

            else
            {
              v23 = 3;
            }
          }

          else if (v23 == 1)
          {
            v23 = 0;
          }

          else
          {
            if (v23 != 2)
            {
              goto LABEL_67;
            }

            v23 = 1;
          }

          v33 = *(v17 + 16);
          v34 = (v17 + 32);
          while (v33)
          {
            v35 = *v34++;
            --v33;
            if (v35 == v23)
            {
              goto LABEL_69;
            }
          }
        }
      }

      v32 = v17 + v30++;
    }

    while (*(v32 + 32) != v23);
    goto LABEL_69;
  }

  [v76 expandedPercentage];
  v15 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v18 <= 0.5)
  {
    if (v16)
    {
      v81 = MEMORY[0x277D84F90];

      sub_21E8D52D8(0, v16, 0);
      v17 = v81;
      v36 = v81[2];
      v37 = 32;
      do
      {
        v38 = *(v15 + v37);
        v81 = v17;
        v39 = *(v17 + 24);
        if (v36 >= v39 >> 1)
        {
          sub_21E8D52D8((v39 > 1), v36 + 1, 1);
          v17 = v81;
        }

        *(v17 + 16) = v36 + 1;
        *(v17 + v36 + 32) = v38;
        v37 += 24;
        ++v36;
        --v16;
      }

      while (v16);

      v10 = &selRef_revealHintingAnimationTension;
      p_prots = (&OBJC_PROTOCOL___UIContentSizeCategoryAdjusting + 16);
    }

    v42 = 0;
    v31 = *(v17 + 16);
    while (v31 != v42)
    {
      v43 = v17 + v42++;
      if (*(v43 + 32) == 1)
      {

        LOBYTE(v23) = 1;
        goto LABEL_70;
      }
    }

    for (LOBYTE(v23) = 2; ; LOBYTE(v23) = 4)
    {
      do
      {
        v44 = 0;
        while (v31 != v44)
        {
          v45 = v17 + v44++;
          if (*(v45 + 32) == v23)
          {
            goto LABEL_69;
          }
        }

        v46 = v23;
        LOBYTE(v23) = 3;
      }

      while (v46 == 2);
      if (v46 != 3)
      {
        break;
      }
    }
  }

  else
  {
    if (v16)
    {
      v81 = MEMORY[0x277D84F90];

      sub_21E8D52D8(0, v16, 0);
      v17 = v81;
      v19 = v81[2];
      v20 = 32;
      do
      {
        v21 = *(v15 + v20);
        v81 = v17;
        v22 = *(v17 + 24);
        if (v19 >= v22 >> 1)
        {
          sub_21E8D52D8((v22 > 1), v19 + 1, 1);
          v17 = v81;
        }

        *(v17 + 16) = v19 + 1;
        *(v17 + v19 + 32) = v21;
        v20 += 24;
        ++v19;
        --v16;
      }

      while (v16);

      v10 = &selRef_revealHintingAnimationTension;
      p_prots = (&OBJC_PROTOCOL___UIContentSizeCategoryAdjusting + 16);
    }

    v40 = 0;
    v31 = *(v17 + 16);
    while (v31 != v40)
    {
      v41 = v17 + v40++;
      if (*(v41 + 32) == 4)
      {
        goto LABEL_82;
      }
    }
  }

LABEL_67:
  if (v31)
  {
    LOBYTE(v23) = *(v17 + 32);
LABEL_69:

    goto LABEL_70;
  }

LABEL_82:

  LOBYTE(v23) = 4;
LABEL_70:
  v47 = *(&p_prots[99]->count + v1);
  v48 = (v47 + 32);
  v49 = *(v47 + 16) + 1;
  while (--v49)
  {
    v50 = v48 + 24;
    v51 = *v48 == v23;
    v48 += 24;
    if (v51)
    {
      v52 = *(v50 - 2);
      v53 = *(v50 - 1);
      v54 = v1;
      v55 = v77;
      v56 = sub_21E929A58();
      v57 = sub_21E92A648();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v81 = v59;
        *v58 = 136446722;
        v60 = sub_21E8C11B8(v23, *&v52, *&v53);
        v78 = v55;
        v62 = v10;
        v63 = sub_21E79841C(v60, v61, &v81);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2050;
        [v76 expandedPercentage];
        *(v58 + 14) = v64;
        *(v58 + 22) = 2050;
        v79.receiver = v54;
        v79.super_class = NCNotificationRootModernList;
        v65 = objc_msgSendSuper2(&v79, v10 + 715);
        v66 = [v65 traitCollection];

        v67 = [v66 _backlightLuminance];
        *(v58 + 24) = v67;
        v10 = v62;
        v55 = v78;

        _os_log_impl(&dword_21E77E000, v56, v57, "highlights isn't settled enough; scroll to %{public}s; expandedPercentage %{public}f; _backlightLuminance %{public}ld", v58, 0x20u);
        v68 = __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x223D65FB0](v59, -1, -1, v68);
        MEMORY[0x223D65FB0](v58, -1, -1);
      }

      else
      {
      }

      v80.receiver = v54;
      v80.super_class = NCNotificationRootModernList;
      v75 = objc_msgSendSuper2(&v80, v10[20]);
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() syncScrollPosition];

      sub_21E8C4294(v23, v52, v53, 128, 0, 0, 0);
      return;
    }
  }

  v69 = sub_21E929A58();
  v70 = sub_21E92A628();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v81 = v72;
    *v71 = 136446210;
    v73 = sub_21E79841C(qword_21E948050[v23], 0xE100000000000000, &v81);

    *(v71 + 4) = v73;
    _os_log_impl(&dword_21E77E000, v69, v70, "Skip updating scrollPositon for highlight, target page for targetPageType %{public}s not found.", v71, 0xCu);
    v74 = __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x223D65FB0](v72, -1, -1, v74);
    MEMORY[0x223D65FB0](v71, -1, -1);
  }
}

uint64_t sub_21E8CD504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_21E92A8F8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_21E92A598();
  v4[11] = sub_21E92A588();
  v7 = sub_21E92A578();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x2822009F8](sub_21E8CD5F8, v7, v6);
}

uint64_t sub_21E8CD5F8()
{
  if (qword_280D03CD8 != -1)
  {
    swift_once();
  }

  v2 = qword_280D05F20;
  v1 = *algn_280D05F28;
  sub_21E92AAC8();
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_21E8CD6FC;

  return sub_21E8D4D0C(v2, v1, 0, 0, 1);
}

uint64_t sub_21E8CD6FC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_21E8CDC1C;
  }

  else
  {
    v8 = sub_21E8CD894;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21E8CD894()
{
  v30 = v0;
  v1 = *(v0 + 120);

  sub_21E92A5D8();
  if (v1)
  {

    v2 = *(v0 + 8);
    goto LABEL_16;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_21E788090();
    v6 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
    v7 = v4[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
    if (v7 == 5)
    {
      if (!v5)
      {
LABEL_8:
        *(v0 + 40) = v4;
        *(v0 + 48) = NCNotificationRootModernList;
        v8 = objc_msgSendSuper2((v0 + 40), sel_rootListView);
        v9 = [v8 traitCollection];

        v10 = [v9 _backlightLuminance];
        if (v10 != 2)
        {
          if (qword_280D03F40 != -1)
          {
            swift_once();
          }

          v11 = sub_21E929A78();
          __swift_project_value_buffer(v11, qword_280D05F58);
          v12 = v4;
          v13 = sub_21E929A58();
          v14 = sub_21E92A648();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v29[0] = v16;
            *v15 = 136446978;
            v17 = sub_21E788090();
            v18 = sub_21E79841C(qword_21E948050[v17], 0xE100000000000000, v29);

            *(v15 + 4) = v18;
            *(v15 + 12) = 2082;
            v19 = sub_21E79841C(qword_21E948020[v4[v6]], 0xE100000000000000, v29);

            *(v15 + 14) = v19;
            *(v15 + 22) = 2082;
            v20 = [v12 currentListDisplayStyleSettingReason];
            v21 = sub_21E92A458();
            v23 = v22;

            v24 = sub_21E79841C(v21, v23, v29);

            *(v15 + 24) = v24;
            *(v15 + 32) = 2082;
            v25 = sub_21E788090();
            v26 = sub_21E79841C(qword_21E948050[v25], 0xE100000000000000, v29);

            *(v15 + 34) = v26;
            _os_log_impl(&dword_21E77E000, v13, v14, "Scroll down after new incoming changed, system preferred %{public}s <= %{public}s with reason %{public}s, scroll to %{public}s", v15, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x223D65FB0](v16, -1, -1);
            MEMORY[0x223D65FB0](v15, -1, -1);
          }

          v27 = sub_21E788090();
          sub_21E8C6068(0, v27, 0, 0);
        }
      }
    }

    else if (v7 >= v5)
    {
      goto LABEL_8;
    }
  }

  v2 = *(v0 + 8);
LABEL_16:

  return v2();
}