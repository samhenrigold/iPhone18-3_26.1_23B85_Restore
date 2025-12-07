void sub_21B661E6C()
{
  sub_21B65AEF4();
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView);
  if (v1)
  {
    v2 = v1;
    v3 = sub_21B661D3C();
    v4 = 1.0;
    if (v3)
    {
      v4 = 0.0;
    }

    [v2 setAlpha_];

    v5 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton);
    if (v5)
    {
      v6 = v5;
      if (sub_21B661D3C())
      {
        CGAffineTransformMakeScale(&v10, *(v0 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode), *(v0 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode));
        v8 = *&v10.a;
        v7 = *&v10.c;
        v9 = *&v10.tx;
      }

      else
      {
        v7 = xmmword_21B6D8390;
        v8 = xmmword_21B6D8380;
        v9 = 0uLL;
      }

      *&v10.a = v8;
      *&v10.c = v7;
      *&v10.tx = v9;
      [v6 setTransform_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21B661F58()
{
  sub_21B63E41C();
  [v0 bounds];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v6 = [v5 layer];
  v7 = [objc_opt_self() blackColor];
  v8 = [v7 CGColor];

  [v6 setShadowColor_];
  [v6 setShadowRadius_];
  [v6 setShadowPathIsBounds_];
  v9 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shadowView];
  *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shadowView] = v5;
  v10 = v5;

  [v0 bounds];
  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v16 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView;
  v17 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
  *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView] = v15;
  v18 = v15;

  [v18 setClipsToBounds_];
  v19 = *&v0[v16];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = [v19 layer];
  [v20 setCornerCurve_];

  [v0 bounds];
  v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v26 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
  *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView] = v25;
  v27 = v25;

  [v0 bounds];
  v32 = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  [v32 setDecelerationRate_];
  v33 = v32;
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v33 setContentInsetAdjustmentBehavior_];
  [v33 setShowsVerticalScrollIndicator_];
  [v33 setAlwaysBounceVertical_];
  [v33 setClipsToBounds_];
  [v33 setScrollsToTop_];
  [v33 setDelegate_];
  [v33 setHidden_];
  v34 = [v33 panGestureRecognizer];
  [v0 addGestureRecognizer_];

  v35 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView];
  *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView] = v33;
  v60 = v33;

  sub_21B663074();
  v36 = v10;
  v37 = [v0 contentView];
  [v37 insertSubview:v36 atIndex:0];

  v38 = v18;
  v39 = [v0 contentView];
  [v39 addSubview_];

  v40 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView;
  if (!*&v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = *&v0[v16];
  if (!v41)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v41 insertSubview_atIndex_];
  v42 = *&v0[v16];
  if (!v42)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!*&v0[v40])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v42 insertSubview:v27 aboveSubview:?];
  if (!*&v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v59 = v27;
  v43 = *&v0[v16];
  if (!v43)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v43 addSubview_];
  [v0 addSubview_];
  v44 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10, &unk_21B6D8340);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_21B6D7FF0;
  v46 = [v0 leadingAnchor];
  v47 = [v60 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v45 + 32) = v48;
  v49 = [v0 trailingAnchor];
  v50 = [v60 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v45 + 40) = v51;
  v52 = [v0 topAnchor];
  v53 = [v60 topAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v45 + 48) = v54;
  v55 = [v0 bottomAnchor];
  v56 = [v60 bottomAnchor];

  v57 = [v55 constraintEqualToAnchor_];
  *(v45 + 56) = v57;
  sub_21B61785C(0, &qword_28120B2D0, 0x277CCAAD0);
  v58 = sub_21B6C8E74();

  [v44 activateConstraints_];

  sub_21B6662A0();
}

void *sub_21B66264C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton);
  v2 = v1;
  return v1;
}

void sub_21B66267C()
{
  v1 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair;
  v2 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR___PBFPosterPair_configuredProperties];
    v4 = v2;
    v5 = [v3 titleStyleConfiguration];
    if (!v5)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D3EE30]) init];
    }

    v6 = v5;

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_21B66323C(v7);
  v8 = *(v0 + v1);
  if (v8)
  {
    v9 = [*(v8 + OBJC_IVAR___PBFPosterPair_configuredProperties) complicationLayout];
  }

  else
  {
    v9 = 0;
  }

  sub_21B66499C(v9);
  v10 = *(v0 + v1);
  if (v10 && (v11 = [*(v10 + OBJC_IVAR___PBFPosterPair_configuredProperties) complicationLayout]) != 0 && (v12 = v11, v13 = objc_msgSend(v11, sel_complicationsUseBottomLayout), v12, (v13 & 1) != 0))
  {
    v14 = -9;
  }

  else
  {
    v14 = -33;
  }

  v15 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
  if (v15)
  {
    [v15 setElements_];
  }

  v16 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
  if (v16)
  {
    [v16 setElements_];
  }

  sub_21B6662A0();
}

void sub_21B6627E8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_isReloadingLockPosterSnapshot);
  *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_isReloadingLockPosterSnapshot) = a1;
  if (v2 == 1 && (a1 & 1) == 0)
  {
    sub_21B66122C();
  }
}

uint64_t sub_21B662810(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView);
  if (v3)
  {
    [v3 alpha];
    if (v4 != 0.0)
    {
      return 0;
    }
  }

  if (a1 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      return 0;
    }
  }

  return 1;
}

void sub_21B662884(void *a1, char a2, char a3)
{
  sub_21B63F6D8(a1, a3);
  v7 = [a1 floatingSnapshot];
  v8 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotImage;
  v9 = *&v3[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotImage];
  *&v3[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotImage] = v7;
  v10 = v7;

  BSDispatchQueueAssertMain();
  v11 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView;
  v12 = *&v3[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v12 setImage_];

  v13 = *&v3[v11];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  sub_21B63ED44(v14, a3);

  if (a2 == 1)
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_21B6687C0;
    *(v17 + 24) = v16;
    v21[4] = sub_21B637134;
    v21[5] = v17;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_21B647820;
    v21[3] = &block_descriptor_152;
    v18 = _Block_copy(v21);
    v19 = v3;

    [v15 performWithoutAnimation_];
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_10;
  }

  sub_21B663CE0();
}

void sub_21B662AAC()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for LockScreenPosterCollectionViewCell(0);
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  sub_21B663074();
  [v0 bounds];
  v5 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  [v5 contentOffset];
  v11 = -v10;
  v38.origin.x = v6;
  v38.origin.y = v7;
  v38.size.width = v8;
  v38.size.height = v9;
  v39 = CGRectOffset(v38, 0.0, v11);
  v12 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  [v12 setFrame_];
  v17 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shadowView];
  if (!v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v17 setFrame_];
  [v0 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController];
  if (v26)
  {
    v27 = [v26 view];
    if (!v27)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v28 = v27;
    [v27 setFrame_];
  }

  v29 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController];
  if (v29)
  {
    v30 = [v29 view];
    if (!v30)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v31 = v30;
    [v30 setFrame_];
  }

  v32 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
  if (!v32)
  {
    goto LABEL_18;
  }

  [v32 setFrame_];
  [*&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView] setFrame_];
  [*&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView] setFrame_];
  [*&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView] setFrame_];
  v33 = *&v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v33 setFrame_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong viewIfLoaded];

    [v36 setFrame_];
  }
}

void sub_21B662DD4()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for LockScreenPosterCollectionViewCell(0);
  objc_msgSendSuper2(&v20, sel_prepareForReuse);
  v1 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView];
  *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView] = 0;
  sub_21B65F6E4(v1);

  v2 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView];
  *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView] = 0;
  sub_21B65FC2C(v2);

  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotImage;
  v4 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotImage];
  *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotImage] = 0;

  BSDispatchQueueAssertMain();
  v5 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
  if (!v5)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v5 setImage_];
  v6 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_lockVibrancyConfiguration];
  *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_lockVibrancyConfiguration] = 0;
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController];
    v8 = v7;
    sub_21B6644F4(v7);

    v9 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController];
    v10 = v9;
    sub_21B6644F4(v9);
  }

  v11 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView];
  if (!v11)
  {
    goto LABEL_16;
  }

  [v11 setContentOffset_];
  v12 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v12 setUserInteractionEnabled_];
  v13 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing;
  v14 = v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing];
  v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing] = 0;
  if (v14 == 1)
  {
    sub_21B666B28();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong removeObserver_];
    v17 = [v16 parentViewController];
    if (v17)
    {
      v18 = v17;
      [v17 bs:v16 removeChildViewController:?];
    }

    [v16 invalidate];
    v19 = v0[v13];
    v0[v13] = 0;
    if (v19 == 1)
    {
      sub_21B666B28();
    }
  }
}

id sub_21B663074()
{
  v1 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView;
  result = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  [result contentSize];
  v4 = v3;
  v6 = v5;
  [v0 bounds];
  v8 = v7 * (*&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction] + 1.0);
  result = [v0 bounds];
  if (v4 != v9 || v6 != v8)
  {
    [v0 bounds];
    result = *&v0[v1];
    if (result)
    {

      return [result setContentSize_];
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

id sub_21B663160(char a1)
{
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView;
  result = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView);
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [result isScrollEnabled];
  if (result == (a1 & 1))
  {
    return result;
  }

  result = *(v1 + v3);
  if (!result)
  {
    goto LABEL_14;
  }

  result = [result setScrollEnabled_];
  if (a1)
  {
    return result;
  }

  result = *(v1 + v3);
  if (!result)
  {
    goto LABEL_15;
  }

  result = [result contentOffset];
  if (v6 == 0.0 && v5 == 0.0)
  {
    return result;
  }

  result = *(v1 + v3);
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return [result setContentOffset:1 animated:{0.0, 0.0}];
}

id sub_21B66326C()
{
  v1 = sub_21B6C8794();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_titleStyleConfiguration);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair;
    v11 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
    if (v11)
    {
      v33 = v6;
      v12 = *(v11 + OBJC_IVAR___PBFPosterPair_configuration);
      v13 = v9;
      v14 = [v12 _path];
      v15 = [v14 serverIdentity];

      if (v15)
      {
        v16 = [v15 provider];

        v17 = sub_21B6C8DA4();
        v19 = v18;

        v20 = *(v0 + v10);
        if (v20)
        {
          v32 = v0;
          v21 = [*(v20 + OBJC_IVAR___PBFPosterPair_configuration) role];
          v22 = objc_allocWithZone(MEMORY[0x277CC1E50]);
          v23 = sub_21B667EDC(v17, v19);
          v24 = [v23 URL];

          sub_21B6C8784();
          v25 = v33;
          (*(v2 + 32))(v8, v4, v33);
          v26 = sub_21B6C8774();
          v27 = [v13 vibrancyConfigurationWithExtensionBundleURL:v26 forRole:v21];

          v35 = 0;
          v36 = 0xE000000000000000;
          v28 = v27;
          sub_21B6C9524();
          MEMORY[0x21CEF5FA0](0xD000000000000015, 0x800000021B6F0E90);
          v34 = v32;
          sub_21B6C95C4();
          v29 = sub_21B6C8D74();

          v30 = [v28 copyWithGroupName_];

          (*(v2 + 8))(v8, v25);
          return v30;
        }
      }
    }
  }

  return 0;
}

double sub_21B6635BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_titleStyleConfiguration);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair;
    v3 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR___PBFPosterPair_configuredProperties);
      v5 = v1;
      v6 = [v4 complicationLayout];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 complications];

        if (v8)
        {
          sub_21B61785C(0, &qword_28120B0F0, 0x277D3EA28);
          v9 = sub_21B6C8E84();

          v10 = v9 >> 62 ? sub_21B6C9454() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v10 >= 1)
          {
            v11 = *(v0 + v2);
            if (v11)
            {
              v12 = [*(v11 + OBJC_IVAR___PBFPosterPair_configuredProperties) complicationLayout];
              if (v12)
              {
                v13 = v12;
                v14 = [v12 complicationsUseBottomLayout];

                v15 = 0.0;
                if (!v14)
                {
                  goto LABEL_21;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v16 = v1;
    }

    v17 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotBundle);
    if (v17)
    {
      [v17 salientContentRectangle];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v19 = *MEMORY[0x277CBF390];
      v21 = *(MEMORY[0x277CBF390] + 8);
      v23 = *(MEMORY[0x277CBF390] + 16);
      v25 = *(MEMORY[0x277CBF390] + 24);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = [Strong interfaceOrientation];
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 1;
    }

    [objc_opt_self() pr:v27 calculateAdaptiveTimeHeightForInterfaceOrientation:v1 titleStyleConfiguration:v19 salientContentRect:{v21, v23, v25}];
    v15 = v28;
LABEL_21:

    return v15;
  }

  return 0.0;
}

uint64_t sub_21B6637E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  if (v3 && (v4 = [*(v3 + OBJC_IVAR___PBFPosterPair_configuration) _path], v5 = objc_msgSend(v4, sel_serverIdentity), v4, v5))
  {
    v6 = [v5 provider];

    v7 = sub_21B6C8DA4();
    v9 = v8;

    v10 = objc_allocWithZone(MEMORY[0x277CC1E50]);

    v11 = sub_21B667EDC(v7, v9);

    v12 = [v11 URL];
    sub_21B6C8784();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_21B6C8794();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v13, 1, v14);
}

id sub_21B663AA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B58, qword_21B6D9310);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_21B6C8794();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_titleStyleConfiguration);
  if (v10)
  {
    sub_21B63D2BC(a1, v5, &qword_27CD93B58, qword_21B6D9310);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      v13 = v10;
      v14 = sub_21B6C8774();
      v15 = [v13 effectiveTimeFontWithExtensionBundleURL:v14 forRole:*MEMORY[0x277D3EEF0]];

      (*(v7 + 8))(v9, v6);
      return v15;
    }

    sub_21B62AA8C(v5, &qword_27CD93B58, qword_21B6D9310);
  }

  v11 = [objc_opt_self() defaultTitleFontForRole_];

  return v11;
}

void sub_21B663CE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190, qword_21B6D8840);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B58, qword_21B6D9310);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v64 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_titleStyleConfiguration);
  if (!v11)
  {
    return;
  }

  v70 = v11;
  v12 = sub_21B66326C();
  if (v12)
  {
    v13 = v12;
    sub_21B6637E8(v10);
    v14 = sub_21B663AA8(v10);
    v15 = [v70 timeNumberingSystem];
    v16 = v15;
    v17 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController;
    v18 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
    v69 = v18 == 0;
    if (v18)
    {
      v19 = v18;
      [v19 setBaseFont_];
LABEL_18:
      [v19 setTitleContentStyle_];
      swift_unknownObjectRelease();
      [v19 setNumberingSystem_];
      [v19 pr:objc_msgSend(v70 setAlternateDateEnabled:sel_isAlternateDateEnabled)];
      v38 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController;
      v39 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
      if (v39)
      {
        v40 = v39;
        [v40 setBaseFont_];
      }

      else
      {
        v68 = v17;
        v66 = v16;
        v41 = v13;
        v42 = sub_21B6C8854();
        v43 = *(v42 - 8);
        (*(v43 + 56))(v4, 1, 1, v42);
        v67 = v14;
        v44 = v14;
        v65 = v41;
        v45 = [v41 color];
        v46 = 0;
        if ((*(v43 + 48))(v4, 1, v42) != 1)
        {
          v46 = sub_21B6C87F4();
          (*(v43 + 8))(v4, v42);
        }

        v47 = [objc_allocWithZone(MEMORY[0x277D02CE0]) initWithElements:-1 baseFont:v44 date:v46 textColor:v45];

        v40 = v47;
        [v40 setShouldApplyVibrancyToComplications_];
        v48 = *(v1 + v38);
        *(v1 + v38) = v40;

        v49 = [v40 view];
        if (v49)
        {
          v50 = v49;
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          v13 = v65;
          v16 = v66;
          if (v51)
          {
            v52 = v51;
            v53 = v50;
            sub_21B65F8F0(v52, 8u, v54, v55);
          }

          else
          {
          }

          v69 = 1;
        }

        else
        {
          v69 = 1;
          v13 = v65;
          v16 = v66;
        }

        v14 = v67;
        v17 = v68;
      }

      [v40 setTitleContentStyle_];
      swift_unknownObjectRelease();
      [v40 setNumberingSystem_];
      [v40 pr:objc_msgSend(v70 setAlternateDateEnabled:sel_isAlternateDateEnabled)];
      if (PUIFeatureEnabled())
      {
        v56 = sub_21B6635BC();
        if (v56 <= 0.0)
        {
          [v19 setAdaptsTimeTextHeight_];
        }

        else
        {
          v57 = v56;
          [v19 setAdaptsTimeTextHeight_];
          [v19 setAdaptiveTimeTextHeight_];
        }
      }

      if (PUIFeatureEnabled())
      {
        v58 = sub_21B6635BC();
        if (v58 <= 0.0)
        {
          [v40 setAdaptsTimeTextHeight_];
        }

        else
        {
          v59 = v58;
          [v40 setAdaptsTimeTextHeight_];
          [v40 setAdaptiveTimeTextHeight_];
        }
      }

      if (v69)
      {
        sub_21B666B28();
      }

      v60 = *(v1 + v17);
      v61 = v60;
      sub_21B6644F4(v60);

      v62 = *(v1 + v38);
      v63 = v62;
      sub_21B6644F4(v62);

      sub_21B62AA8C(v10, &qword_27CD93B58, qword_21B6D9310);
      return;
    }

    v68 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController;
    v66 = v15;
    v21 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayDate;
    swift_beginAccess();
    sub_21B63D2BC(v1 + v21, v7, &qword_27CD93190, qword_21B6D8840);
    v67 = v14;
    v22 = v14;
    v23 = v13;
    v24 = [v13 color];
    v25 = sub_21B6C8854();
    v26 = *(v25 - 8);
    v27 = 0;
    if ((*(v26 + 48))(v7, 1, v25) != 1)
    {
      v27 = sub_21B6C87F4();
      (*(v26 + 8))(v7, v25);
    }

    v28 = [objc_allocWithZone(MEMORY[0x277D02CE0]) initWithElements:-1 baseFont:v22 date:v27 textColor:v24];

    v19 = v28;
    [v19 setShouldApplyVibrancyToComplications_];
    v17 = v68;
    v29 = *(v1 + v68);
    *(v1 + v68) = v19;

    v30 = [v19 view];
    if (!v30)
    {
      v13 = v23;
      v16 = v66;
      v14 = v67;
      goto LABEL_18;
    }

    v31 = v30;
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    v16 = v66;
    v14 = v67;
    if (v32)
    {
      v33 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView);
      if (v33)
      {
        v34 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView);
        if (v34)
        {
          v35 = v32;
          v36 = v33;
          v37 = v34;
          [v36 insertSubview:v35 belowSubview:v37];

          v13 = v23;
          v16 = v66;
          v14 = v67;
LABEL_17:
          v17 = v68;
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v13 = v23;

    goto LABEL_17;
  }

  v20 = v70;
}

void sub_21B6644F4(void *a1)
{
  v3 = sub_21B6C8794();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B58, qword_21B6D9310);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35[-v8];
  if ((*(v1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8) & 1) != 0 || *(v1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode) || (v21 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_lockVibrancyConfiguration)) == 0)
  {
    v10 = sub_21B66326C();
    if (!v10)
    {
      return;
    }

    v11 = v10;
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_5:
    v37 = v10;
    v12 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
    if (v12)
    {
      v13 = v12 == a1;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v36 = v14;
    v15 = a1;
    v16 = [v11 color];
    [v15 setTextColor_];

    [v15 setBackgroundType_];
    [v15 setEffectType_];
    v17 = [v11 alternativeVibrancyEffectLUT];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 lutIdentifier];

      sub_21B6C8DA4();
      v20 = sub_21B6C8D74();
    }

    else
    {
      v20 = 0;
    }

    v22 = [v11 alternativeVibrancyEffectLUT];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 bundleURL];

      sub_21B6C8784();
      (*(v4 + 32))(v9, v6, v3);
      (*(v4 + 56))(v9, 0, 1, v3);
    }

    else
    {
      (*(v4 + 56))(v9, 1, 1, v3);
    }

    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_21B6C8774();
      (*(v4 + 8))(v9, v3);
    }

    [v15 setAlternativeVibrancyEffectLUTIdentifier:v20 alternativeVibrancyEffectLUTBundleURL:v25];

    v26 = [v11 groupName];
    if (v26)
    {
      v27 = v26;
      v28 = sub_21B6C8DA4();
      v30 = v29;

      v31 = 0x6E6974616F6C662DLL;
      if (v36)
      {
        v32 = 0xE900000000000067;
      }

      else
      {
        v31 = 0;
        v32 = 0xE000000000000000;
      }

      v40 = v31;
      v41 = v32;
      v38 = v28;
      v39 = v30;
      v38 = sub_21B6C8E44();
      v39 = v33;
      sub_21B6C8DF4();

      v34 = sub_21B6C8D74();
    }

    else
    {
      v34 = 0;
    }

    [v15 setGroupName_];

    return;
  }

  v37 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_lockVibrancyConfiguration);
  v11 = v21;
  v10 = v37;
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_15:
}

void sub_21B6649CC(id a1, void *a2, unint64_t *a3, void *a4, void (*a5)(void))
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
  if (!a1 || (sub_21B61785C(0, a3, a4), a1 = a1, v9 = v12, v10 = sub_21B6C91A4(), v9, (v10 & 1) == 0))
  {
LABEL_7:
    a5();

    v11 = v12;
    goto LABEL_8;
  }

  v11 = v9;
LABEL_8:
}

void sub_21B664ABC(id a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
  if (v2)
  {
    v4 = v2;
    v5 = [v4 subtitleComplicationViewController];
    if (v5)
    {
      v6 = v5;
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        [v7 invalidate];
      }
    }

    [v4 setSubtitleComplicationViewController_];
    v8 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
    if (v8)
    {
      if (a1)
      {
        v9 = objc_allocWithZone(MEMORY[0x277D75D28]);
        v10 = v8;
        v11 = a1;
        a1 = [v9 initWithNibName:0 bundle:0];
        v12 = [v11 view];
        if (!v12)
        {
          __break(1u);
          return;
        }

        v13 = v12;
        v14 = [objc_allocWithZone(MEMORY[0x277D76180]) initWithSourceView_];

        [v14 setAllowsHitTesting_];
        [a1 setView_];
      }

      else
      {
        v10 = v8;
      }

      [v10 setSubtitleComplicationViewController_];
    }
  }
}

void sub_21B664C64()
{
  v1 = sub_21B664D6C(v0);
  v2 = sub_21B665000(v0);
  v3 = sub_21B66592C(v0);
  if ((v1 & 1) != 0 && *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController))
  {
    v4 = v3;
    v5 = [*(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController) view];
    if (!v5)
    {
      __break(1u);
      goto LABEL_13;
    }

    v6 = v5;
    [v5 layoutIfNeeded];

    v3 = v4;
  }

  if (((v2 | v3) & 1) == 0)
  {
    return;
  }

  v7 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
  if (!v7)
  {
    return;
  }

  v8 = [v7 view];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 layoutIfNeeded];
}

uint64_t sub_21B664D6C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_complicationLayout);
  if (v2 && (v3 = [v2 inlineComplication]) != 0)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D3EC78]) initWithPRSWidget_];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_15;
  }

  v8 = v6;
  if (![v5 hasMatchingDescriptor])
  {

LABEL_15:
    sub_21B664ABC(0);
    v12 = 0;
    v8 = v5;
    goto LABEL_16;
  }

  v9 = [v5 widgetDescriptor];
  v10 = [v9 effectiveContainerBundleIdentifier];

  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = [objc_opt_self() applicationWithBundleIdentifier_];

  if (([v11 isHidden] & 1) == 0 && !objc_msgSend(v11, sel_isLocked))
  {

LABEL_18:
    v14 = [v8 subtitleComplicationViewController];
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = [v16 complicationDescriptor];

        if (v17)
        {
          sub_21B61785C(0, &qword_27CD93B48, 0x277D3EC78);
          v18 = v5;
          v19 = sub_21B6C91A4();

          if (v19)
          {

            v12 = 0;
            goto LABEL_16;
          }
        }
      }

      else
      {
      }
    }

    v20 = [objc_allocWithZone(MEMORY[0x277D3ECE8]) initWithComplicationDescriptor_];
    [v20 setComplicationUserInteractionEnabled_];
    v21 = v20;
    sub_21B664ABC(v20);

    v12 = 1;
    goto LABEL_16;
  }

  sub_21B664ABC(0);

  v12 = 0;
LABEL_16:

  return v12;
}

uint64_t sub_21B665000(char **a1)
{
  v4 = a1;
  v5 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_complicationLayout;
  v6 = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_complicationLayout);
  if (!v6 || (v7 = [v6 complications]) == 0)
  {
    v15 = 0;
    goto LABEL_34;
  }

  v8 = v7;
  sub_21B61785C(0, &qword_28120B0F0, 0x277D3EA28);
  v9 = sub_21B6C8E84();

  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21B6C9454())
  {
    v11 = MEMORY[0x277D84F90];
    v58 = v5;
    if (i)
    {
      v59 = MEMORY[0x277D84F90];
      sub_21B6C9594();
      if (i < 0)
      {
        __break(1u);
        goto LABEL_86;
      }

      v12 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CEF66E0](v12, v9);
        }

        else
        {
          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        v1 = [objc_allocWithZone(MEMORY[0x277D3EC78]) initWithPRSWidget_];

        sub_21B6C9574();
        v2 = *(v59 + 16);
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
      }

      while (i != v12);

      v9 = v59;
      v11 = MEMORY[0x277D84F90];
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    if (v9 >> 62)
    {
      break;
    }

    v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_32;
    }

LABEL_17:
    v57 = v4;
    v17 = 0;
    v3 = (v9 & 0xC000000000000001);
    v5 = v9 & 0xFFFFFFFFFFFFFF8;
    v4 = &selRef_displayNameSystemSymbolName;
    while (1)
    {
      if (v3)
      {
        v18 = MEMORY[0x21CEF66E0](v17, v9);
      }

      else
      {
        if (v17 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v18 = *(v9 + 8 * v17 + 32);
      }

      v1 = v18;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v18 hasMatchingDescriptor])
      {
        sub_21B6C9574();
        v2 = *(v11 + 16);
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
      }

      else
      {
      }

      ++v17;
      if (v19 == v16)
      {
        v15 = v11;
        v4 = v57;
        v5 = v58;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v16 = sub_21B6C9454();
  if (v16)
  {
    goto LABEL_17;
  }

LABEL_32:
  v15 = MEMORY[0x277D84F90];
LABEL_33:

LABEL_34:
  v9 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController;
  v20 = *(v4 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
  if (!v20)
  {
    goto LABEL_77;
  }

  if (!v15)
  {
LABEL_78:
    v24 = v20;
    v54 = [v24 complicationContainerViewController];
    if (v54)
    {
      v55 = v54;
      v56 = swift_dynamicCastObjCProtocolConditional();
      if (v56)
      {
        [v56 invalidate];
      }
    }

    [v24 setComplicationContainerViewController_];
    goto LABEL_83;
  }

  if (v15 >> 62)
  {
    if (!sub_21B6C9454())
    {
      goto LABEL_77;
    }

LABEL_38:
    v57 = v20;
    v21 = [v57 complicationContainerViewController];
    if (v21)
    {
      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      v24 = v23;
      if (v23)
      {
        v25 = [v23 model];
        v26 = [v25 complicationDescriptors];

        sub_21B61785C(0, &qword_27CD93B48, 0x277D3EC78);
        v27 = sub_21B6C8E84();

        LOBYTE(v25) = sub_21B667FBC(v27, v15, &qword_27CD93B48, 0x277D3EC78);

        v28 = v25 ^ 1;
        v29 = *(v4 + v5);
        if (!v29)
        {
          goto LABEL_48;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v24 = 0;
    }

    v28 = 1;
    v29 = *(v4 + v5);
    if (!v29)
    {
      goto LABEL_48;
    }

LABEL_45:
    v30 = [v29 complicationIconLayout];
    if (v30)
    {
      v31 = v30;
      sub_21B6C8D24();

      v32 = sub_21B6C8D14();

      if (v24)
      {
        goto LABEL_49;
      }

      goto LABEL_54;
    }

LABEL_48:
    v32 = 0;
    if (v24)
    {
LABEL_49:
      v33 = [v24 model];
      v34 = [v33 iconLayout];

      if (v34)
      {
        sub_21B6C8D24();

        v2 = sub_21B6C8D14();

        if (v32)
        {
          sub_21B61785C(0, &qword_27CD93B50, 0x277CBEAC0);
          v2 = v2;
          v35 = v32;
          v36 = sub_21B6C91A4();

          if (!(v28 & 1 | ((v36 & 1) == 0)))
          {

            return 0;
          }

          v37 = *(v4 + v5);
          if (!v37)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v37 = *(v4 + v5);
          if (!v37)
          {
            goto LABEL_61;
          }
        }

LABEL_59:
        v38 = [v37 complicationIconLayout];
        if (v38)
        {
          v39 = v38;
          v40 = sub_21B6C8D24();

LABEL_62:
          v1 = v32;
          sub_21B61785C(0, &qword_27CD93B48, 0x277D3EC78);
          v41 = sub_21B6C8E74();
          i = v24;
          if (v40)
          {
            v42 = sub_21B6C8D14();
          }

          else
          {
            v42 = 0;
          }

          v43 = [objc_allocWithZone(MEMORY[0x277D3EE70]) initWithComplicationDescriptors:v41 iconLayout:v42 type:0];

          v44 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_models;
          swift_beginAccess();
          v3 = v43;
          MEMORY[0x21CEF6000]();
          if (*((*(v4 + v44) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v44) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_86:
            sub_21B6C8E94();
          }

          sub_21B6C8EA4();
          swift_endAccess();
          v45 = [objc_allocWithZone(MEMORY[0x277D3EE80]) initWithModel:v3 iconViewProvider:0 contentType:0 presentationMode:1];
          result = [v45 view];
          if (result)
          {
            v47 = result;

            [objc_opt_self() frameForElements_];
            [v47 bounds];
            [v47 setBounds_];

            v48 = *(v4 + v9);
            if (v48)
            {
              v49 = v45;
              v50 = v48;
              v51 = [v50 complicationContainerViewController];
              if (v51)
              {
                v52 = v51;
                v53 = swift_dynamicCastObjCProtocolConditional();
                if (v53)
                {
                  [v53 invalidate];
                }
              }

              [v50 setComplicationContainerViewController_];
            }

            else
            {
            }

            return 1;
          }

          else
          {
            __break(1u);
          }

          return result;
        }

LABEL_61:
        v40 = 0;
        goto LABEL_62;
      }
    }

LABEL_54:
    if ((v32 != 0) | v28 & 1)
    {
      v2 = 0;
      v37 = *(v4 + v5);
      if (!v37)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

LABEL_83:
    return 0;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_77:

  v20 = *(v4 + v9);
  if (v20)
  {
    goto LABEL_78;
  }

  return 0;
}

uint64_t sub_21B66592C(char **a1)
{
  v4 = a1;
  v5 = [a1 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
    return 0;
  }

  v7 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_complicationLayout;
  v8 = *(v4 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_complicationLayout);
  if (!v8 || (v9 = [v8 sidebarComplications]) == 0)
  {
    v17 = 0;
    goto LABEL_35;
  }

  v10 = v9;
  sub_21B61785C(0, &qword_28120B0F0, 0x277D3EA28);
  v11 = sub_21B6C8E84();

  if (v11 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21B6C9454())
  {
    v13 = MEMORY[0x277D84F90];
    v60 = v7;
    if (i)
    {
      v61 = MEMORY[0x277D84F90];
      sub_21B6C9594();
      if (i < 0)
      {
        __break(1u);
        goto LABEL_87;
      }

      v14 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x21CEF66E0](v14, v11);
        }

        else
        {
          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        ++v14;
        v1 = [objc_allocWithZone(MEMORY[0x277D3EC78]) initWithPRSWidget_];

        sub_21B6C9574();
        v2 = *(v61 + 16);
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
      }

      while (i != v14);

      v11 = v61;
      v13 = MEMORY[0x277D84F90];
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    if (v11 >> 62)
    {
      break;
    }

    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_33;
    }

LABEL_18:
    v59 = v4;
    v19 = 0;
    v3 = (v11 & 0xC000000000000001);
    v7 = v11 & 0xFFFFFFFFFFFFFF8;
    v4 = &selRef_displayNameSystemSymbolName;
    while (1)
    {
      if (v3)
      {
        v20 = MEMORY[0x21CEF66E0](v19, v11);
      }

      else
      {
        if (v19 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v20 = *(v11 + 8 * v19 + 32);
      }

      v1 = v20;
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ([v20 hasMatchingDescriptor])
      {
        sub_21B6C9574();
        v2 = *(v13 + 16);
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
      }

      else
      {
      }

      ++v19;
      if (v21 == v18)
      {
        v17 = v13;
        v4 = v59;
        v7 = v60;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v18 = sub_21B6C9454();
  if (v18)
  {
    goto LABEL_18;
  }

LABEL_33:
  v17 = MEMORY[0x277D84F90];
LABEL_34:

LABEL_35:
  v11 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController;
  v22 = *(v4 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
  if (!v22)
  {
    goto LABEL_78;
  }

  if (!v17)
  {
LABEL_79:
    v26 = v22;
    v56 = [v26 complicationSidebarViewController];
    if (v56)
    {
      v57 = v56;
      v58 = swift_dynamicCastObjCProtocolConditional();
      if (v58)
      {
        [v58 invalidate];
      }
    }

    [v26 setComplicationSidebarViewController_];
    goto LABEL_84;
  }

  if (v17 >> 62)
  {
    if (!sub_21B6C9454())
    {
      goto LABEL_78;
    }

LABEL_39:
    v59 = v22;
    v23 = [v59 complicationSidebarViewController];
    if (v23)
    {
      v24 = v23;
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      v26 = v25;
      if (v25)
      {
        v27 = [v25 model];
        v28 = [v27 complicationDescriptors];

        sub_21B61785C(0, &qword_27CD93B48, 0x277D3EC78);
        v29 = sub_21B6C8E84();

        LOBYTE(v27) = sub_21B667FBC(v29, v17, &qword_27CD93B48, 0x277D3EC78);

        v30 = v27 ^ 1;
        v31 = *(v4 + v7);
        if (!v31)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v26 = 0;
    }

    v30 = 1;
    v31 = *(v4 + v7);
    if (!v31)
    {
      goto LABEL_49;
    }

LABEL_46:
    v32 = [v31 sidebarComplicationIconLayout];
    if (v32)
    {
      v33 = v32;
      sub_21B6C8D24();

      v34 = sub_21B6C8D14();

      if (v26)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }

LABEL_49:
    v34 = 0;
    if (v26)
    {
LABEL_50:
      v35 = [v26 model];
      v36 = [v35 iconLayout];

      if (v36)
      {
        sub_21B6C8D24();

        v2 = sub_21B6C8D14();

        if (v34)
        {
          sub_21B61785C(0, &qword_27CD93B50, 0x277CBEAC0);
          v2 = v2;
          v37 = v34;
          v38 = sub_21B6C91A4();

          if (!(v30 & 1 | ((v38 & 1) == 0)))
          {

            return 0;
          }

          v39 = *(v4 + v7);
          if (!v39)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v39 = *(v4 + v7);
          if (!v39)
          {
            goto LABEL_62;
          }
        }

LABEL_60:
        v40 = [v39 sidebarComplicationIconLayout];
        if (v40)
        {
          v41 = v40;
          v42 = sub_21B6C8D24();

LABEL_63:
          v1 = v34;
          sub_21B61785C(0, &qword_27CD93B48, 0x277D3EC78);
          v43 = sub_21B6C8E74();
          i = v26;
          if (v42)
          {
            v44 = sub_21B6C8D14();
          }

          else
          {
            v44 = 0;
          }

          v45 = [objc_allocWithZone(MEMORY[0x277D3EE70]) initWithComplicationDescriptors:v43 iconLayout:v44 type:1];

          v46 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_models;
          swift_beginAccess();
          v3 = v45;
          MEMORY[0x21CEF6000]();
          if (*((*(v4 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_87:
            sub_21B6C8E94();
          }

          sub_21B6C8EA4();
          swift_endAccess();
          v47 = [objc_allocWithZone(MEMORY[0x277D3EE80]) initWithModel:v3 iconViewProvider:0 contentType:0 presentationMode:1];
          [v47 setWidgetInteractionDisabled_];
          result = [v47 view];
          if (result)
          {
            v49 = result;

            [objc_opt_self() frameForElements_];
            [v49 bounds];
            [v49 setBounds_];

            v50 = *(v4 + v11);
            if (v50)
            {
              v51 = v47;
              v52 = v50;
              v53 = [v52 complicationSidebarViewController];
              if (v53)
              {
                v54 = v53;
                v55 = swift_dynamicCastObjCProtocolConditional();
                if (v55)
                {
                  [v55 invalidate];
                }
              }

              [v52 setComplicationSidebarViewController_];
            }

            else
            {
            }

            return 1;
          }

          else
          {
            __break(1u);
          }

          return result;
        }

LABEL_62:
        v42 = 0;
        goto LABEL_63;
      }
    }

LABEL_55:
    if ((v34 != 0) | v30 & 1)
    {
      v2 = 0;
      v39 = *(v4 + v7);
      if (!v39)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

LABEL_84:
    return 0;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_78:

  v22 = *(v4 + v11);
  if (v22)
  {
    goto LABEL_79;
  }

  return 0;
}

void sub_21B6662A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B30, qword_21B6D90F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B38, &qword_21B6D9308);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v30 - v10;
  if (v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shouldShowFocusButton] == 1)
  {
    v13 = *(v9 + 48);
    sub_21B666670(&v30 - v10);
    v15 = v14;
    v12[v13] = v14 & 1;
    v16 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton;
    v17 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton];
    if (v17)
    {
      sub_21B63D2BC(v12, v7, &unk_27CD93B38, &qword_21B6D9308);
      v18 = sub_21B6C9364();
      v19 = *(v18 - 8);
      (*(v19 + 32))(v4, v7, v18);
      (*(v19 + 56))(v4, 0, 1, v18);
      v20 = v17;
      sub_21B6C9394();
      v21 = v20;
      if ((v15 & 1) != 0 && !PUIFeatureEnabled())
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      [v21 setOverrideUserInterfaceStyle_];
      [v21 setHidden_];

      [v1 setNeedsLayout];
      sub_21B62AA8C(v12, &unk_27CD93B38, &qword_21B6D9308);
    }

    else
    {
      sub_21B61785C(0, &unk_28120B100, 0x277D75220);
      sub_21B63D2BC(v12, v7, &unk_27CD93B38, &qword_21B6D9308);
      v24 = sub_21B6C9374();
      [v24 addTarget:v1 action:sel_presentFocusSelector forControlEvents:0x2000];
      v25 = v24;
      v26 = sub_21B6C8D74();
      [v25 setAccessibilityIdentifier_];

      if ((v15 & 1) != 0 && !PUIFeatureEnabled())
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      [v25 setOverrideUserInterfaceStyle_];
      [v25 setTintAdjustmentMode_];

      v28 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
      if (v28)
      {
        [v28 addSubview_];
        sub_21B62AA8C(v12, &unk_27CD93B38, &qword_21B6D9308);
        v29 = *&v1[v16];
        *&v1[v16] = v25;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v23 = *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton];
    if (v23)
    {

      [v23 setHidden_];
    }
  }
}

void sub_21B666670(uint64_t a1)
{
  v42 = sub_21B6C88C4();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v35 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  if (v10)
  {
    v11 = [*(v10 + OBJC_IVAR___PBFPosterPair_configuredProperties) focusConfiguration];
    if (v11)
    {
      v12 = v11;
      v37 = a1;
      v13 = [v11 activityUUID];
      sub_21B6C88A4();

      v14 = sub_21B6C8874();
      v41 = v15;
      v39 = *(v3 + 8);
      v40 = v3 + 8;
      v39(v9, v42);
      v16 = [objc_opt_self() sharedActivityManager];
      v17 = [v16 availableActivities];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B28, &unk_21B6D92F8);
      v18 = sub_21B6C8E84();

      v36 = v12;
      if (v18 >> 62)
      {
        goto LABEL_21;
      }

      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        while (1)
        {
          v20 = 0;
          v38 = v18 & 0xC000000000000001;
          while (v38)
          {
            v21 = MEMORY[0x21CEF66E0](v20, v18);
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:

LABEL_19:
              v28 = [v21 activityDisplayName];
              sub_21B6C8DA4();

              v29 = [v21 activitySymbolImageName];
              sub_21B6C8DA4();

              a1 = v37;
              goto LABEL_24;
            }

LABEL_9:
            v23 = [v21 activityUniqueIdentifier];
            sub_21B6C88A4();

            v24 = sub_21B6C8874();
            v26 = v25;
            v39(v5, v42);
            if (v24 == v14 && v26 == v41)
            {
              goto LABEL_17;
            }

            v27 = sub_21B6C96E4();

            if (v27)
            {

              goto LABEL_19;
            }

            swift_unknownObjectRelease();
            ++v20;
            if (v22 == v19)
            {
              goto LABEL_22;
            }
          }

          if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_21:
          v19 = sub_21B6C9454();
          if (!v19)
          {
            goto LABEL_22;
          }
        }

        v21 = *(v18 + 8 * v20 + 32);
        swift_unknownObjectRetain();
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }

LABEL_22:

      a1 = v37;
    }
  }

  v30 = sub_21B6C8D74();
  v31 = PBFLocalizedString(v30);

  sub_21B6C8DA4();
LABEL_24:
  v32 = sub_21B6C8D74();
  v33 = [objc_opt_self() _systemImageNamed_];

  if (v33)
  {
    v34 = v33;

    sub_21B65D73C(1, 1, a1);
    sub_21B6C9334();
    sub_21B6C9304();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_21B666B28()
{
  v1 = (*(v0 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8) & 1) == 0 && *(v0 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode) == 0;
  v2 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFloatingLayerInlined) & v1;
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController;
  v4 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
  if (v4)
  {
    v5 = 0.0;
    if (*(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFloatingLayerInlined) & v1)
    {
      v5 = 1.0;
    }

    [v4 setContentAlpha:-57 forElements:v5];
  }

  v6 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController;
  v7 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
  if (v7)
  {
    v8 = 1.0;
    if (v2)
    {
      v8 = 0.0;
    }

    [v7 setContentAlpha:-57 forElements:v8];
  }

  v9 = *(v0 + v3);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isComplicationContainerHiddenInFullscreenLayout) & v1;
    v11 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation);
    if (v11)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    if (v10)
    {
      v12 = 0.0;
    }

    [v9 setContentAlpha:40 forElements:v12];
    v13 = *(v0 + v3);
    if (v13)
    {
      if (v11 == 1)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      if (v10)
      {
        v14 = 0.0;
      }

      [v13 setContentAlpha:16 forElements:v14];
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_29;
  }

  if (*(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing) != 1)
  {

LABEL_29:
    v18 = 0;
    goto LABEL_30;
  }

  v16 = Strong;
  v17 = [Strong isContentHidden];

  v18 = v17 ^ 1;
LABEL_30:
  v19 = *(v0 + v6);
  if (v19)
  {
    v20 = [v19 view];
    if (v20)
    {
      v21 = v20;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        [v22 setHidden_];
      }
    }
  }

  v23 = *(v0 + v3);
  if (v23)
  {
    v24 = [v23 view];
    if (v24)
    {
      v26 = v24;
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        [v25 setHidden_];
      }
    }
  }
}

void sub_21B666E00(uint64_t a1)
{
  sub_21B638490(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21B666F2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayDate;
  swift_beginAccess();
  sub_21B6385CC(a1, v1 + v3);
  swift_endAccess();
  sub_21B6615D0();
  return sub_21B62AA8C(a1, &qword_27CD93190, qword_21B6D8840);
}

id sub_21B666FD8(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView);
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  [result setAlpha_];
  result = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView);
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  [result setAlpha_];
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView;
  v4 = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView);
  if (v4)
  {
    v5 = [v4 layer];
    v6 = sub_21B6C8E74();
    [v5 setFilters_];
  }

  v7 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView;
  v8 = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView);
  if (v8)
  {
    v9 = [v8 layer];
    v10 = sub_21B6C8E74();
    [v9 setFilters_];
  }

  v11 = *(a1 + v3);
  if (v11)
  {
    [v11 setAlpha_];
  }

  result = *(a1 + v7);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

id sub_21B667160(uint64_t a1)
{
  p_info = (&OBJC_METACLASS___PBFSilhouetteHelpers + 32);
  if (_AXSInvertColorsEnabled())
  {
    v3 = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView);
    v4 = MEMORY[0x277CDA2B0];
    if (v3)
    {
      v5 = [v3 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B20, qword_21B6D92E0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21B6D7FE0;
      v7 = v4;
      v8 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      *(v6 + 56) = sub_21B61785C(0, &qword_28120B140, 0x277CD9EA0);
      *(v6 + 32) = v8;
      v9 = sub_21B6C8E74();

      [v5 setFilters_];

      v4 = v7;
      p_info = &OBJC_METACLASS___PBFSilhouetteHelpers.info;
    }

    v10 = *(&p_info[353]->flags + a1);
    if (v10)
    {
      v11 = [v10 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B20, qword_21B6D92E0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21B6D7FE0;
      v13 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      *(v12 + 56) = sub_21B61785C(0, &qword_28120B140, 0x277CD9EA0);
      *(v12 + 32) = v13;
      v14 = sub_21B6C8E74();

      [v11 setFilters_];
    }
  }

  v15 = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView);
  if (v15)
  {
    [v15 setAlpha_];
  }

  v16 = p_info[353];
  v17 = *(&v16->flags + a1);
  if (v17)
  {
    [v17 setAlpha_];
  }

  result = *(a1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView);
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  [result setAlpha_];
  result = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView);
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = 0.0;
  if (!*(&v16->flags + a1))
  {
    v19 = 1.0;
  }

  return [result setAlpha_];
}

void sub_21B667400(void *a1)
{
  [v1 bounds];
  v7 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView;
  v8 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  [v8 contentOffset];
  v14 = -v13;
  v44.origin.x = v9;
  v44.origin.y = v10;
  v44.size.width = v11;
  v44.size.height = v12;
  v45 = CGRectOffset(v44, 0.0, v14);
  v15 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView;
  v16 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
  if (!v16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  [v16 setFrame_];
  v21 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shadowView];
  if (!v21)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v21 setFrame_];
  v22 = *&v1[v7];
  if (!v22)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v22 bounds];
  v24 = v23 * *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction];
  v25 = 0.0;
  if (v24 > 0.0)
  {
    v26 = *&v1[v7];
    if (!v26)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    [v26 contentOffset];
    v28 = v27 / v24;
    if (v27 / v24 <= 0.0)
    {
      v28 = 0.0;
    }

    v25 = 1.0;
    if (v28 <= 1.0)
    {
      v25 = v28;
    }
  }

  v29 = *&v1[v15];
  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = v29;
  [v30 setUserInteractionEnabled_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (v25 > 0.25)
  {
    v32 = *(Strong + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
    v33 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v34 = *(v32 + v33);
    if (v34 >> 62)
    {
      if (sub_21B6C9454() <= 1)
      {
LABEL_16:
        if ([a1 isTracking])
        {
          v35 = objc_opt_self();
          v36 = swift_allocObject();
          *(v36 + 16) = v1;
          *(v36 + 24) = a1;
          aBlock[4] = sub_21B668770;
          aBlock[5] = v36;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21B63863C;
          aBlock[3] = &block_descriptor_143;
          v37 = _Block_copy(aBlock);
          v38 = v1;
          v39 = a1;

          [v35 animateWithDuration:v37 animations:0.3];
          _Block_release(v37);
          v40 = *&v1[v7];
          if (v40)
          {
            if ([v40 isScrollEnabled])
            {
LABEL_21:
              v42 = sub_21B67ABF0();
              [v42 notificationOccurred_];
              swift_unknownObjectRelease();

              return;
            }

            v41 = *&v1[v7];
            if (v41)
            {
              [v41 setScrollEnabled_];
              goto LABEL_21;
            }

            goto LABEL_33;
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        goto LABEL_24;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
    {
      goto LABEL_16;
    }
  }

  sub_21B69ADE0(v1);
LABEL_24:
  swift_unknownObjectRelease();
}

uint64_t sub_21B6677DC(void *a1, uint64_t a2, double a3, double a4)
{
  [a1 bounds];
  v8 = v7;
  v9 = *(v4 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction);
  result = swift_unknownObjectWeakLoadStrong();
  v11 = 0.0;
  if (result)
  {
    v12 = *(result + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
    v13 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v14 = *(v12 + v13);
    if (v14 >> 62)
    {
      v15 = sub_21B6C9454();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = swift_unknownObjectRelease();
    if (v15 >= 2)
    {
      if (fabs(a4) <= 0.05)
      {
        if (vabdd_f64(*(a2 + 8), v8 * v9) >= fabs(*(a2 + 8)))
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v8 * v9;
        }
      }

      else if (a4 >= 0.0)
      {
        v11 = v8 * v9;
      }

      else
      {
        v11 = 0.0;
      }
    }
  }

  *(a2 + 8) = v11;
  return result;
}

uint64_t sub_21B667A08()
{
  result = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
  if (v2)
  {
    v3 = v2;
    MEMORY[0x21CEF6000]();
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();

    result = v6;
  }

  v4 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
  if (v4)
  {
    v5 = v4;
    MEMORY[0x21CEF6000]();
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();

    return v6;
  }

  return result;
}

unint64_t sub_21B667B2C()
{
  sub_21B65F5C0();
  result = sub_21B667A08();
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_24:
  }

  result = sub_21B6C9454();
  v2 = result;
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CEF66E0](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      v7 = [v5 subtitleComplicationViewController];
      if (v7)
      {
        v8 = v7;
        v9 = swift_dynamicCastObjCProtocolConditional();
        if (v9)
        {
          [v9 complicationsWillDisplay];
        }
      }

      v10 = [v6 complicationContainerViewController];
      if (v10)
      {
        v11 = v10;
        v12 = swift_dynamicCastObjCProtocolConditional();
        if (v12)
        {
          [v12 complicationsWillDisplay];
        }
      }

      v13 = [v6 complicationSidebarViewController];
      if (v13)
      {
        v4 = v13;
        v14 = swift_dynamicCastObjCProtocolConditional();
        if (v14)
        {
          [v14 complicationsWillDisplay];
        }
      }

      else
      {
        v4 = v6;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_21B667D08(char a1)
{
  v2 = sub_21B667A08();
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_21B6C9454();
    if (v4)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CEF66E0](i, v3);
        }

        else
        {
          v7 = *(v3 + 8 * i + 32);
        }

        v8 = v7;
        v9 = [v7 subtitleComplicationViewController];
        if (v9)
        {
          v10 = v9;
          v11 = swift_dynamicCastObjCProtocolConditional();
          if (v11)
          {
            [v11 complicationsDidEndDisplaying];
          }
        }

        v12 = [v8 complicationContainerViewController];
        if (v12)
        {
          v13 = v12;
          v14 = swift_dynamicCastObjCProtocolConditional();
          if (v14)
          {
            [v14 complicationsDidEndDisplaying];
          }
        }

        v15 = [v8 complicationSidebarViewController];
        if (v15)
        {
          v6 = v15;
          v16 = swift_dynamicCastObjCProtocolConditional();
          if (v16)
          {
            [v16 complicationsDidEndDisplaying];
          }
        }

        else
        {
          v6 = v8;
        }
      }

      if (a1)
      {
        goto LABEL_23;
      }

      return;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if (a1)
  {
LABEL_23:
    sub_21B65F374(1);
  }
}

id sub_21B667EDC(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21B6C8D74();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_21B6C8764();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_21B667FBC(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_21B61785C(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CEF66E0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x21CEF66E0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_21B6C91A4();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_21B6C91A4();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_21B6C9454();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_21B6C9454();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

void sub_21B668224()
{
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isSetup) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFloatingLayerInlined) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isComplicationContainerHiddenInFullscreenLayout) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_lockVibrancyConfiguration) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_activePosterSalientContentRect);
  v3 = *(MEMORY[0x277CBF398] + 16);
  *v2 = *MEMORY[0x277CBF398];
  v2[1] = v3;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayDate;
  v5 = sub_21B6C8854();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shouldShowFocusButton) = 1;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_defaultScrollAnimationDuration) = 0x3FD3333333333333;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumRevealProgressWhenRevealingDisallowed) = 0x3FD0000000000000;
  v6 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_descriptorProvider;
  *(v0 + v6) = PRSharedWidgetExtensionProvider();
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_apSubjectMonitorSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_titleStyleConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_complicationLayout) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_models) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotImage) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing) = 0;
  sub_21B6C95D4();
  __break(1u);
}

uint64_t sub_21B668478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_21B6C8C94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21B6C8CC4();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B61785C(0, &unk_28120B2F0, 0x277D85C78);
  v12 = sub_21B6C9074();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B63863C;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_21B6C8CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21B668718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B10, &unk_21B6D8D50);
  sub_21B64CCC8();
  sub_21B6C9404();
  MEMORY[0x21CEF6220](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21B668718()
{
  result = qword_28120B380;
  if (!qword_28120B380)
  {
    sub_21B6C8C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B380);
  }

  return result;
}

id sub_21B668770()
{
  v1 = *(v0 + 24);
  sub_21B663160(0);

  return [v1 setContentOffset_];
}

uint64_t sub_21B66887C(uint64_t a1, uint64_t a2)
{
  sub_21B668D30();
  sub_21B668D7C();
  v4 = sub_21B6C8F84();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PosterRackCollectionView();
  objc_msgSendSuper2(&v10, sel_touchesBegan_withEvent_, v4, a2);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR___PBFPosterRackCollectionViewController_numberOfTrackingTouchesBegunWhileTransitioningToInitialLayoutModeFromFullscreen;
    if (*(result + OBJC_IVAR___PBFPosterRackCollectionViewController_isTransitioningToInitialLayoutModeFromFullscreen) == 1)
    {
      v7 = *(result + OBJC_IVAR___PBFPosterRackCollectionViewController_numberOfTrackingTouchesBegunWhileTransitioningToInitialLayoutModeFromFullscreen);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    v9 = 0;
LABEL_7:
    *(result + v6) = v9;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21B6689F0(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_21B668D30();
  sub_21B668D7C();
  v8 = sub_21B6C8F94();
  v9 = a4;
  v10 = a1;
  sub_21B668A9C(v8, a4, a5);
}

uint64_t sub_21B668A9C(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_21B668D30();
  sub_21B668D7C();
  v6 = sub_21B6C8F84();
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PosterRackCollectionView();
  objc_msgSendSuper2(&v9, *a3, v6, a2);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (([v3 isTracking] & 1) == 0)
    {
      if (*(v8 + OBJC_IVAR___PBFPosterRackCollectionViewController_isTransitioningToInitialLayoutModeFromFullscreen) == 1)
      {
        sub_21B67D12C();
      }

      if (*(v8 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode) == 2)
      {
        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(0, 1, 0, 0, 0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21B668CC8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PosterRackCollectionView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_21B668D30()
{
  result = qword_28120B160;
  if (!qword_28120B160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B160);
  }

  return result;
}

unint64_t sub_21B668D7C()
{
  result = qword_28120B158;
  if (!qword_28120B158)
  {
    sub_21B668D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B158);
  }

  return result;
}

uint64_t property wrapper backing initializer of PBFCircleView.strokeWidth(double a1)
{
  v1 = sub_21B6C9164();
  MEMORY[0x28223BE20](v1);
  sub_21B6C9154();
  sub_21B668E94();
  return sub_21B6C9104();
}

unint64_t sub_21B668E94()
{
  result = qword_27CD93BC8;
  if (!qword_27CD93BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93BC8);
  }

  return result;
}

double PBFCircleView.strokeWidth.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21B6C9124();

  return v1;
}

uint64_t PBFCircleView.strokeWidth.setter(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21B6C9134();
}

double sub_21B6690C8@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21B6C9124();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21B669148(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_21B6C9134();
}

uint64_t (*PBFCircleView.strokeWidth.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21B6C9114();
  return sub_21B66A758;
}

unint64_t sub_21B669268()
{
  result = qword_27CD93BD8;
  if (!qword_27CD93BD8)
  {
    sub_21B61785C(255, &qword_28120B168, 0x277D75348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93BD8);
  }

  return result;
}

uint64_t (*PBFCircleView.strokeColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21B6C9114();
  return sub_21B6693C4;
}

void _s11PosterBoard13PBFCircleViewC11strokeColorSo7UIColorCvpfP_0(void *a1)
{
  v2 = sub_21B6C9164();
  MEMORY[0x28223BE20](v2);
  v3 = a1;
  sub_21B6C9154();
  sub_21B61785C(0, &qword_28120B168, 0x277D75348);
  sub_21B669268();
  sub_21B6C9104();
}

id sub_21B6694C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_21B6C9124();

  return v7;
}

uint64_t sub_21B669560(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21B6C9124();

  return v3;
}

uint64_t sub_21B6695E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a3;
  v8 = a1;
  return sub_21B6C9134();
}

uint64_t sub_21B669664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_21B6C9134();
}

void sub_21B6696CC(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21B6C9124();

  *a3 = v4;
}

uint64_t sub_21B669748(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  v9 = v6;
  return sub_21B6C9134();
}

uint64_t (*PBFCircleView.fillColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21B6C9114();
  return sub_21B66A758;
}

void sub_21B669860(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall PBFCircleView.layoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PBFCircleView(0);
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  [v0 bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (!CGRectIsEmpty(v14))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21B6C9124();

    v5 = [v0 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    [v6 setLineWidth_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21B6C9124();

    v7 = [v12 CGColor];

    [v6 setStrokeColor_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21B6C9124();

    v8 = [v12 CGColor];

    [v6 setFillColor_];
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v16 = CGRectInset(v15, *&v12 * 0.5, *&v12 * 0.5);
    v9 = CGPathCreateWithEllipseInRect(v16, 0);
    [v6 setPath_];

    v10 = v5;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v11 = CGPathCreateWithEllipseInRect(v17, 0);
    [v6 setShadowPath_];
  }
}

uint64_t type metadata accessor for PBFCircleView(uint64_t a1)
{
  result = qword_27CD93C08;
  if (!qword_27CD93C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PBFCircleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PBFCircleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93BF8, &qword_21B6D9488);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_21B6C9164();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93C00, &qword_21B6D9490);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC11PosterBoard13PBFCircleView__strokeWidth;
  v31 = 0x4000000000000000;
  sub_21B6C9154();
  sub_21B668E94();
  v27 = v12;
  sub_21B6C9104();
  (*(v14 + 32))(&v4[v17], v16, v13);
  v18 = OBJC_IVAR____TtC11PosterBoard13PBFCircleView__strokeColor;
  v19 = objc_opt_self();
  v31 = [v19 blackColor];
  v20 = v31;
  sub_21B6C9154();
  sub_21B61785C(0, &qword_28120B168, 0x277D75348);
  sub_21B669268();
  sub_21B6C9104();

  v21 = v29;
  v22 = *(v28 + 32);
  v22(&v4[v18], v11, v29);
  v23 = OBJC_IVAR____TtC11PosterBoard13PBFCircleView__fillColor;
  v31 = [v19 clearColor];
  v24 = v31;
  sub_21B6C9154();
  sub_21B6C9104();

  v22(&v4[v23], v11, v21);
  v25 = type metadata accessor for PBFCircleView(0);
  v30.receiver = v4;
  v30.super_class = v25;
  return objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
}

id PBFCircleView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PBFCircleView.init(coder:)(void *a1)
{
  v2 = v1;
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93BF8, &qword_21B6D9488);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = v22 - v3;
  v5 = sub_21B6C9164();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93C00, &qword_21B6D9490);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = OBJC_IVAR____TtC11PosterBoard13PBFCircleView__strokeWidth;
  v27 = 0x4000000000000000;
  sub_21B6C9154();
  sub_21B668E94();
  v22[1] = v5;
  sub_21B6C9104();
  (*(v7 + 32))(&v2[v10], v9, v6);
  v11 = OBJC_IVAR____TtC11PosterBoard13PBFCircleView__strokeColor;
  v12 = objc_opt_self();
  v27 = [v12 blackColor];
  v13 = v27;
  sub_21B6C9154();
  sub_21B61785C(0, &qword_28120B168, 0x277D75348);
  sub_21B669268();
  sub_21B6C9104();

  v14 = *(v25 + 32);
  v25 += 32;
  v15 = v23;
  v14(&v2[v11], v4, v23);
  v16 = OBJC_IVAR____TtC11PosterBoard13PBFCircleView__fillColor;
  v27 = [v12 clearColor];
  v17 = v27;
  sub_21B6C9154();
  sub_21B6C9104();

  v14(&v2[v16], v4, v15);
  v18 = type metadata accessor for PBFCircleView(0);
  v26.receiver = v2;
  v26.super_class = v18;
  v19 = v24;
  v20 = objc_msgSendSuper2(&v26, sel_initWithCoder_, v24);

  if (v20)
  {
  }

  return v20;
}

id PBFCircleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PBFCircleView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B66A570(uint64_t a1)
{
  sub_21B66A63C(319);
  if (v1 <= 0x3F)
  {
    sub_21B66A6BC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B66A63C(uint64_t a1)
{
  if (!qword_27CD93C18)
  {
    sub_21B6C9164();
    sub_21B668E94();
    v1 = sub_21B6C9144();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD93C18);
    }
  }
}

void sub_21B66A6BC(uint64_t a1)
{
  if (!qword_27CD93C20)
  {
    sub_21B61785C(255, &qword_28120B168, 0x277D75348);
    sub_21B6C9164();
    sub_21B669268();
    v1 = sub_21B6C9144();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD93C20);
    }
  }
}

uint64_t PRUISSwitcherLayoutMode.description.getter(uint64_t a1)
{
  v1 = NSStringFromPRUISSwitcherLayoutMode();
  v2 = sub_21B6C8DA4();

  return v2;
}

uint64_t sub_21B66A7AC()
{
  v0 = NSStringFromPRUISSwitcherLayoutMode();
  v1 = sub_21B6C8DA4();

  return v1;
}

uint64_t sub_21B66A7FC(unint64_t a1)
{
  if (a1 < 7)
  {
    return (0x73u >> a1) & 1;
  }

  sub_21B6C9524();

  v2 = sub_21B6C9654();
  MEMORY[0x21CEF5FA0](v2);

  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

uint64_t sub_21B66A8CC(unint64_t a1)
{
  if (a1 < 7)
  {
    return (7u >> a1) & 1;
  }

  sub_21B6C9524();

  v2 = sub_21B6C9654();
  MEMORY[0x21CEF5FA0](v2);

  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

uint64_t sub_21B66A99C(unint64_t a1)
{
  if (a1 < 7)
  {
    return (0x3Eu >> a1) & 1;
  }

  sub_21B6C9524();

  v2 = sub_21B6C9654();
  MEMORY[0x21CEF5FA0](v2);

  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

uint64_t sub_21B66AA6C(unint64_t a1)
{
  if (a1 < 7)
  {
    return qword_21B6D94F8[a1];
  }

  sub_21B6C9524();

  v2 = sub_21B6C9654();
  MEMORY[0x21CEF5FA0](v2);

  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

id sub_21B66ACD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComplicationsSnapshotSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B66AD38(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v6 = a1;
    v7 = [v5 initWithWindowScene_];
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 dataStore];

    v10 = [v9 currentGalleryConfiguration];
    type metadata accessor for SnapshotComplicationLayoutProvider();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = v10;
    v13 = [v4 _FBSScene];
    v14 = [objc_allocWithZone(MEMORY[0x277D3EE78]) initWithScene:v13 complicationLayoutProvider:v11 gridType:0];

    [v7 setRootViewController_];
    [v7 makeKeyAndVisible];

    v15 = *(v1 + OBJC_IVAR____TtC11PosterBoard34ComplicationsSnapshotSceneDelegate_window);
    *(v1 + OBJC_IVAR____TtC11PosterBoard34ComplicationsSnapshotSceneDelegate_window) = v7;
  }
}

void sub_21B66AEFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard34ComplicationsSnapshotSceneDelegate_window);
  if (v1)
  {
    v2 = [v1 rootViewController];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      v5 = v4;
      if (!v4)
      {

        v4 = 0;
      }

      [v4 invalidate];
    }
  }
}

uint64_t sub_21B66AFA4()
{
  [*(v0 + 16) invalidate];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id LegacyMigrationEditingSceneViewController.__allocating_init(provider:contents:exnihiloPathAssertion:replacing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  type metadata accessor for ExnihiloPathAssertion();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *&v9[OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_exnihiloPathAssertion] = v10;
  *&v9[OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_posterPairToReplace] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithProvider_contents_configurableOptions_configuredProperties_additionalInfo_, a1, a2, 0, 0, 0);

  return v11;
}

id LegacyMigrationEditingSceneViewController.init(provider:contents:exnihiloPathAssertion:replacing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ExnihiloPathAssertion();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *&v4[OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_exnihiloPathAssertion] = v9;
  *&v4[OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_posterPairToReplace] = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for LegacyMigrationEditingSceneViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithProvider_contents_configurableOptions_configuredProperties_additionalInfo_, a1, a2, 0, 0, 0);

  return v10;
}

id LegacyMigrationEditingSceneViewController.__allocating_init(provider:contents:configurableOptions:configuredProperties:additionalInfo:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a5)
  {
    v11 = sub_21B6C8D14();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v6) initWithProvider:a1 contents:a2 configurableOptions:a3 configuredProperties:a4 additionalInfo:v11];

  return v12;
}

id LegacyMigrationEditingSceneViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyMigrationEditingSceneViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21B66B3F0()
{
  v0 = sub_21B6C8AB4();
  __swift_allocate_value_buffer(v0, qword_27CD94D60);
  v1 = __swift_project_value_buffer(v0, qword_27CD94D60);
  result = PBFLogCommon(v1);
  if (result)
  {
    return sub_21B6C8AC4();
  }

  __break(1u);
  return result;
}

const char *sub_21B66B508()
{
  v0 = sub_21B6C8AB4();
  __swift_allocate_value_buffer(v0, qword_27CD94DC0);
  __swift_project_value_buffer(v0, qword_27CD94DC0);
  result = "com.apple.PosterBoard";
  if ("com.apple.PosterBoard")
  {
    sub_21B6C8E14();
    sub_21B66B84C(1, 0xD000000000000015, 0x800000021B6F1190, v2);
    sub_21B66B8E8();
    sub_21B6C93C4();

    sub_21B66B93C(1uLL, 0xD000000000000015, 0x800000021B6F1190, v3);
    sub_21B66B9EC();
    sub_21B6C8DF4();

    sub_21B6C8E44();
    return sub_21B6C8AA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

const char *sub_21B66B68C(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_21B6C8AB4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  result = "com.apple.PosterBoard";
  if ("com.apple.PosterBoard")
  {
    sub_21B6C8E14();
    sub_21B66B84C(1, a3, a4, v9);
    sub_21B66B8E8();
    sub_21B6C93C4();

    sub_21B66B93C(1uLL, a3, a4, v10);
    sub_21B66B9EC();
    sub_21B6C8DF4();

    sub_21B6C8E44();
    return sub_21B6C8AA4();
  }

  else
  {
    __break(1u);
  }

  return result;
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

uint64_t sub_21B66B84C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_21B6C8DE4();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_21B66B8E8()
{
  result = qword_28120B368;
  if (!qword_28120B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B368);
  }

  return result;
}

uint64_t sub_21B66B93C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_21B6C8DE4();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_21B66B9EC()
{
  result = qword_28120B370;
  if (!qword_28120B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterRackFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterRackFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B66BBB0()
{
  result = qword_27CD93C50;
  if (!qword_27CD93C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93C50);
  }

  return result;
}

uint64_t sub_21B66BC18()
{
  v1 = *v0;
  sub_21B6C97A4();
  MEMORY[0x21CEF6950](v1);
  return sub_21B6C97C4();
}

uint64_t sub_21B66BC8C(uint64_t a1)
{
  v2 = *v1;
  sub_21B6C97A4();
  MEMORY[0x21CEF6950](v2);
  return sub_21B6C97C4();
}

const char *sub_21B66BCE4()
{
  v1 = *v0;
  v2 = "AutobahnQuickSwitchTransition";
  v3 = "Maglev";
  v4 = "SlipSwitch";
  if (v1 != 4)
  {
    v4 = "HomeScreenWallpaperEditor";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "AutobahnLegacyMigration";
  if (v1 != 1)
  {
    v5 = "AutobahnLegacyMigrationSupportingDistinctHome";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id sub_21B66BD78(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_opt_self() pbf_iconView];
  MEMORY[0x21CEF5FA0](a1, a2);
  v7 = sub_21B6C8D74();

  [v6 setGroupNameBase_];

  [v6 pbf:a3 scaleBlurRadiusByAmount:?];
  return v6;
}

id sub_21B66BE50(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_opt_self() pbf_dockView];
  MEMORY[0x21CEF5FA0](a1, a2);
  v7 = sub_21B6C8D74();

  [v6 setGroupNameBase_];

  [v6 pbf:a3 scaleBlurRadiusByAmount:?];
  return v6;
}

id SilhouetteHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SilhouetteHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SilhouetteHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SilhouetteHelpers.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SilhouetteHelpers();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s11PosterBoard17SilhouetteHelpersC014makeHomeScreenC4View6layout11includeDock14displayContext04viewG9SizeScaleSo6UIViewCSgSo07SBSHomegC6LayoutC_SbSo010PBFDisplayM0_pSg12CoreGraphics7CGFloatVtFZ_0(uint64_t a1, char a2, void *a3, double a4)
{
  v8 = sub_21B6C88C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  [swift_unknownObjectRetain() pbf_frame];
  [a3 pbf_scale];
  BSSizeRoundForScale();
  v13 = v12;
  v15 = v14;
  sub_21B6C88B4();
  v16 = sub_21B6C8874();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  v19 = [objc_allocWithZone(MEMORY[0x277D67B80]) initWithSilhouetteLayout:a1 viewSize:{v13, v15}];
  [v19 setIncludesDock_];
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v18;
  *(v20 + 32) = a4;
  v30 = sub_21B66C3B0;
  v31 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21B69FA6C;
  v29 = &block_descriptor_10;
  v21 = _Block_copy(&aBlock);

  [v19 setIconViewBuilder_];
  _Block_release(v21);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = a4;
  v30 = sub_21B66C3D4;
  v31 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21B69FA6C;
  v29 = &block_descriptor_7;
  v23 = _Block_copy(&aBlock);

  [v19 setDockViewBuilder_];
  _Block_release(v23);
  v24 = [v19 buildView];
  [v24 setClipsToBounds_];
  swift_unknownObjectRelease();

  return v24;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id SinglePosterConfigurationFilter.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PBFSinglePosterConfigurationFilter_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SinglePosterConfigurationFilter.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PBFSinglePosterConfigurationFilter_configuration] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SinglePosterConfigurationFilter();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SinglePosterConfigurationFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SinglePosterConfigurationFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SinglePosterConfigurationFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11PosterBoard06SingleA19ConfigurationFilterC13shouldInclude06posterD02inSbSo08PRPosterD0C_So010PRSwitcherD0CtF_0(void *a1)
{
  v2 = v1;
  v4 = sub_21B6C88C4();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 _path];
  v10 = [v9 serverIdentity];

  if (v10)
  {
    v11 = [v10 posterUUID];

    sub_21B6C88A4();
    v12 = sub_21B6C8874();
    v10 = v13;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v12 = 0;
  }

  v14 = [*(v2 + OBJC_IVAR___PBFSinglePosterConfigurationFilter_configuration) _path];
  v15 = [v14 serverIdentity];

  if (v15)
  {
    v16 = [v15 posterUUID];

    sub_21B6C88A4();
    v17 = sub_21B6C8874();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      if (v19)
      {
        if (v12 == v17 && v10 == v19)
        {

          v20 = 1;
        }

        else
        {
          v20 = sub_21B6C96E4();
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v19)
    {
      v20 = 0;
      goto LABEL_16;
    }
  }

  else if (v10)
  {
LABEL_11:
    v20 = 0;
LABEL_16:

    return v20 & 1;
  }

  v20 = 1;
  return v20 & 1;
}

void sub_21B66C8C0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (Strong)
    {
      v4 = Strong;
      swift_unknownObjectRelease();
      if (v4 == a1)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }

    swift_unknownObjectRelease();
  }

  BSDispatchQueueAssertMain();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
    v7 = v5;
    swift_beginAccess();
    v8 = *(v7 + v6);
    v9 = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v1 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView);
  *(v1 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView) = v8;
  v11 = v8;
  sub_21B66D8A8(v10, v12);
}

void sub_21B66C998(void *a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView];
  if (a1)
  {
    if (v4 == a1)
    {
      return;
    }

    BSDispatchQueueAssertMain();
    v5 = [a1 superview];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    BSDispatchQueueAssertMain();
    v5 = 0;
  }

  v6 = [v2 contentView];

  if (v5)
  {
    swift_unknownObjectRelease();
    if (v6 == v5)
    {
      [a1 removeFromSuperview];
    }
  }

  if (!*&v2[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView])
  {

    sub_21B66D980();
  }
}

void sub_21B66CA7C(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode;
  v4 = *(v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode);
  v5 = *(v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  if (v5)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v4 == a1)
  {
    return;
  }

  sub_21B65AEF4();
  v6 = *(v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView);
  if (v6)
  {
    v9 = v6;
    v7 = sub_21B65ADC4();
    v8 = 1.0;
    if (v7)
    {
      v8 = 0.0;
    }

    [v9 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21B66CB3C()
{
  sub_21B63E41C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10, &unk_21B6D8340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D7FF0;
  *(inited + 32) = sub_21B66D67C();
  v2 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_gradientPreviewView];
  *(inited + 40) = v2;
  v3 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_solidColorPreviewView];
  *(inited + 48) = v3;
  v4 = v2;
  v5 = v3;
  *(inited + 56) = sub_21B66D798();
  v6 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x21CEF66E0](0, inited))
  {
    v8 = i;
    v9 = [v0 contentView];
    [v9 addSubview_];

    [v8 setAccessibilityIgnoresInvertColors_];
    if (v6)
    {
      v10 = MEMORY[0x21CEF66E0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_15;
      }

      v10 = *(inited + 40);
    }

    v11 = v10;
    v12 = [v0 contentView];
    [v12 addSubview_];

    [v11 setAccessibilityIgnoresInvertColors_];
    if (v6)
    {
      v13 = MEMORY[0x21CEF66E0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_15;
      }

      v13 = *(inited + 48);
    }

    v14 = v13;
    v15 = [v0 contentView];
    [v15 addSubview_];

    [v14 setAccessibilityIgnoresInvertColors_];
    if (v6)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v16 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v16 = MEMORY[0x21CEF66E0](3, inited);
LABEL_13:
  v17 = v16;
  v18 = [v0 contentView];
  [v18 addSubview_];

  [v17 setAccessibilityIgnoresInvertColors_];
  swift_setDeallocating();
  swift_arrayDestroy();
  v19 = [v0 contentView];
  if (*&v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView])
  {
    v20 = v19;
    [v19 bringSubviewToFront_];
  }

  else
  {
    __break(1u);
  }
}

id sub_21B66CE00(double a1)
{
  v2 = OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius;
  *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius] = a1;
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  result = *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  [result _setContinuousCornerRadius_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10, &unk_21B6D8340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D7FF0;
  *(inited + 32) = sub_21B66D67C();
  v6 = *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_gradientPreviewView];
  *(inited + 40) = v6;
  v7 = *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_solidColorPreviewView];
  *(inited + 48) = v7;
  v8 = v6;
  v9 = v7;
  *(inited + 56) = sub_21B66D798();
  v10 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x21CEF66E0](0, inited))
  {
    v12 = i;
    [i _setContinuousCornerRadius_];

    if (v10)
    {
      v13 = MEMORY[0x21CEF66E0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_17;
      }

      v13 = *(inited + 40);
    }

    v14 = v13;
    [v13 _setContinuousCornerRadius_];

    if (v10)
    {
      v15 = MEMORY[0x21CEF66E0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_17;
      }

      v15 = *(inited + 48);
    }

    v16 = v15;
    [v15 _setContinuousCornerRadius_];

    if (v10)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v17 = *(inited + 56);
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v17 = MEMORY[0x21CEF66E0](3, inited);
LABEL_14:
  v18 = v17;
  [v17 _setContinuousCornerRadius_];

  swift_setDeallocating();
  swift_arrayDestroy();
  result = *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView];
  if (result)
  {
    return [result _setContinuousCornerRadius_];
  }

  return result;
}

void sub_21B66D040()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  if (!v1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenConfiguration);
    *(v0 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenConfiguration) = 0;
    v11 = v4;
    if (!v4)
    {
      return;
    }

    v3 = 0;
    goto LABEL_16;
  }

  v2 = *&v1[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
  }

  else
  {
    v5 = *&v1[OBJC_IVAR___PBFPosterPair_configuredProperties];
    v6 = v1;
    v7 = [v5 homeScreenConfiguration];
    if (!v7)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D3EDB0]) init];
    }

    v3 = v7;
  }

  v11 = *(v0 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenConfiguration);
  *(v0 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenConfiguration) = v3;
  v8 = v2;
  if (!v11)
  {
    if (!v3)
    {
      return;
    }

    v3 = v3;
    v11 = 0;
    goto LABEL_16;
  }

  if (!v3 || (sub_21B61785C(0, &unk_28120B1D0, 0x277D3EDB0), v3 = v3, v9 = v11, v10 = sub_21B6C91A4(), v9, (v10 & 1) == 0))
  {
LABEL_16:
    sub_21B66DA90();

    goto LABEL_17;
  }

  v11 = v9;
LABEL_17:
}

void sub_21B66D230()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10, &unk_21B6D8340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D7FF0;
  *(inited + 32) = sub_21B66D67C();
  v2 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_gradientPreviewView];
  *(inited + 40) = v2;
  v3 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_solidColorPreviewView];
  *(inited + 48) = v3;
  v4 = v2;
  v5 = v3;
  *(inited + 56) = sub_21B66D798();
  v6 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x21CEF66E0](0, inited))
  {
    v8 = i;
    [v0 bounds];
    [v8 setFrame_];

    if (v6)
    {
      v9 = MEMORY[0x21CEF66E0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_21;
      }

      v9 = *(inited + 40);
    }

    v10 = v9;
    [v0 bounds];
    [v10 setFrame_];

    if (v6)
    {
      v11 = MEMORY[0x21CEF66E0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_21;
      }

      v11 = *(inited + 48);
    }

    v12 = v11;
    [v0 bounds];
    [v12 setFrame_];

    if (v6)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v13 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v13 = MEMORY[0x21CEF66E0](3, inited);
LABEL_13:
  v14 = v13;
  [v0 bounds];
  [v14 setFrame_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView];
  if (v15)
  {
    v16 = v15;
    [v0 bounds];
    [v16 setFrame_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
    v19 = Strong;
    swift_beginAccess();
    v20 = *(v19 + v18);
    v21 = v20;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
  }

  v22 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView;
  v23 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView];
  *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView] = v20;
  v24 = v20;
  sub_21B66D8A8(v23, v25);

  v26 = *&v0[v22];
  if (v26)
  {
    v27 = v26;
    [v0 bounds];
    [v27 setFrame_];
  }
}

id sub_21B66D55C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell();
  objc_msgSendSuper2(&v8, sel_prepareForReuse);
  v2 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView;
  v3 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;
  sub_21B66D8A8(v4, v1);

  v5 = &v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v5 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_21B66C8C0(Strong);
  swift_unknownObjectRelease();
  return [*&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterSnapshotView] setImage_];
}

id sub_21B66D67C()
{
  v1 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___lockPosterPreviewView;
  v2 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___lockPosterPreviewView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___lockPosterPreviewView];
LABEL_5:
    v12 = v2;
    return v3;
  }

  [v0 bounds];
  result = [objc_allocWithZone(type metadata accessor for HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView()) initWithFrame_];
  v9 = *&v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView];
  if (v9)
  {
    v10 = result;
    [v10 addSubview_];
    [v10 addSubview_];
    [v10 setClipsToBounds_];

    v11 = *&v0[v1];
    *&v0[v1] = v10;
    v3 = v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_21B66D798()
{
  v1 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___homePosterPreviewView;
  v2 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___homePosterPreviewView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___homePosterPreviewView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(type metadata accessor for HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView()) initWithFrame_];
    v9 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterSnapshotView];
    v10 = v8;
    [v10 addSubview_];
    [v10 addSubview_];
    [v10 setClipsToBounds_];

    v11 = *&v0[v1];
    *&v0[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_21B66D8A8(void *result, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView];
  if (result)
  {
    if (v4 == result)
    {
      return;
    }

    BSDispatchQueueAssertMain();
    v5 = [result superview];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    BSDispatchQueueAssertMain();
    v5 = 0;
  }

  v6 = [v2 contentView];

  if (v5)
  {
    swift_unknownObjectRelease();
    if (result)
    {
      if (v6 == v5)
      {
        [result removeFromSuperview];
      }
    }
  }

  sub_21B66D980();
}

void sub_21B66D980()
{
  v1 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView];
  if (v1)
  {
    v5 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView];
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView];
    if (!v2)
    {
      return;
    }

    v5 = v2;
    v1 = 0;
  }

  v3 = v1;
  v4 = [v0 contentView];
  [v4 addSubview_];

  [v0 bounds];
  [v5 setFrame_];
  [v5 _setContinuousCornerRadius_];
  UIView.fade(withDuration:timingFunctionName:)(0.15, *MEMORY[0x277CDA7A8]);
}

void sub_21B66DA90()
{
  v1 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenConfiguration];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_solidColorPreviewView];
    v3 = v1;
    v4 = [v3 solidColorAppearance];
    v5 = [v4 effectiveColor];

    v6 = [v5 color];
    [v2 setBackgroundColor_];

    v7 = [v3 gradientAppearance];
    v8 = [v7 gradientColors];

    if (!v8)
    {
      sub_21B61785C(0, &qword_28120B168, 0x277D75348);
      sub_21B6C8E84();
      v8 = sub_21B6C8E74();
    }

    v9 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_gradientPreviewView];
    [v9 setColors_];

    v10 = [v3 selectedAppearanceType];
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v9;
        goto LABEL_13;
      }

      if (v10 == 3)
      {
        v12 = sub_21B66D798();
        v13 = *&v0[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterSnapshotView];
        v14 = v12;
        v15 = [v13 image];
        if (v15)
        {
        }

        else
        {
          sub_21B66E1E4(0);
        }

        goto LABEL_15;
      }
    }

    else if (v10 == 1)
    {
      v11 = v2;
LABEL_13:
      v16 = v11;
      goto LABEL_14;
    }

    v16 = sub_21B66D67C();
LABEL_14:
    v14 = v16;
LABEL_15:
    v17 = [v3 lockPosterAppearance];
    v32 = [v17 isLegibilityBlurEnabled];

    v18 = [v3 homePosterAppearance];
    v19 = [v18 isLegibilityBlurEnabled];

    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    v37 = sub_21B642D94;
    v38 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_21B63863C;
    v36 = &block_descriptor_11;
    v22 = _Block_copy(&aBlock);
    v23 = v14;

    [v20 animateWithDuration:131078 delay:v22 options:0 animations:0.2 completion:0.0];
    _Block_release(v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v0;
    *(v24 + 24) = v23;
    v37 = sub_21B66F278;
    v38 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_21B63863C;
    v36 = &block_descriptor_69;
    v25 = _Block_copy(&aBlock);
    v26 = v0;

    [v20 animateWithDuration:65542 delay:v25 options:0 animations:0.2 completion:0.0];
    _Block_release(v25);
    v27 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v32;
    *(v28 + 25) = v19;
    v37 = sub_21B66F280;
    v38 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_21B63863C;
    v36 = &block_descriptor_75;
    v29 = _Block_copy(&aBlock);
    v30 = v26;
    v31 = v27;

    [v20 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v29);
  }
}

uint64_t sub_21B66DF90(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10, &unk_21B6D8340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D7FF0;
  *(inited + 32) = sub_21B66D67C();
  v4 = *(a1 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_gradientPreviewView);
  *(inited + 40) = v4;
  v5 = *(a1 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_solidColorPreviewView);
  *(inited + 48) = v5;
  v6 = v4;
  v7 = v5;
  *(inited + 56) = sub_21B66D798();
  v8 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x21CEF66E0](0, inited))
  {
    v10 = i;
    sub_21B61785C(0, &qword_28120B120, 0x277D82BB8);
    v11 = sub_21B6C91A4();
    v12 = 0.0;
    if (v11)
    {
      v12 = 1.0;
    }

    [v10 setAlpha_];

    if (v8)
    {
      v13 = MEMORY[0x21CEF66E0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_22;
      }

      v13 = *(inited + 40);
    }

    v14 = v13;
    v15 = sub_21B6C91A4();
    v16 = 0.0;
    if (v15)
    {
      v16 = 1.0;
    }

    [v14 setAlpha_];

    if (v8)
    {
      v17 = MEMORY[0x21CEF66E0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_22;
      }

      v17 = *(inited + 48);
    }

    v18 = v17;
    v19 = sub_21B6C91A4();
    v20 = 0.0;
    if (v19)
    {
      v20 = 1.0;
    }

    [v18 setAlpha_];

    if (v8)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v21 = *(inited + 56);
      goto LABEL_19;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v21 = MEMORY[0x21CEF66E0](3, inited);
LABEL_19:
  v22 = v21;
  v23 = sub_21B6C91A4();
  v24 = 0.0;
  if (v23)
  {
    v24 = 1.0;
  }

  [v22 setAlpha_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

double sub_21B66E1E4(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair];
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR___PBFPosterPair_associatedConfiguration);
    if (v3)
    {
      v5 = &v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotProvider];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v5 + 1);
        v8 = v3;
        v9 = [v1 pbf_displayContext];
        v10 = PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400, qword_21B6D8B60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21B6D7FE0;
        *(inited + 32) = v10;
        v12 = v10;
        v18 = sub_21B645CE0(inited);
        swift_setDeallocating();
        sub_21B636E24(inited + 32);
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = v12;
        *(v14 + 32) = v8;
        *(v14 + 40) = v9;
        *(v14 + 48) = a1;
        v15 = *(v7 + 8);
        v16 = v8;
        v17 = v12;

        swift_unknownObjectRetain();
        v15(v16, v18, v9, 0, sub_21B66F318, v14, ObjectType, v7);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_21B66E3E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v11 = sub_21B6C88C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (*(a1 + 16))
    {
      v17 = sub_21B695E60(a3);
      if (v18)
      {
        v19 = *(*(a1 + 56) + 8 * v17);
        v20 = *&v16[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair];
        v45 = v19;
        if (v20 && (v21 = *(v20 + OBJC_IVAR___PBFPosterPair_associatedConfiguration)) != 0)
        {
          v22 = v19;
          v23 = v21;
          v24 = [v23 &selRef__synchronizeDrawing + 3];
          v25 = [v24 serverIdentity];

          if (v25)
          {
            v26 = [v25 posterUUID];

            sub_21B6C88A4();
            v44 = sub_21B6C8874();
            v28 = v27;

            (*(v12 + 8))(v14, v11);
          }

          else
          {

            v44 = 0;
            v28 = 0;
          }
        }

        else
        {
          v29 = v19;
          v44 = 0;
          v28 = 0;
        }

        v30 = [a4 _path];
        v31 = [v30 serverIdentity];

        if (v31)
        {
          v32 = [v31 posterUUID];

          sub_21B6C88A4();
          v33 = sub_21B6C8874();
          v35 = v34;
          (*(v12 + 8))(v14, v11);
          if (!v28)
          {
            if (!v35)
            {
              goto LABEL_23;
            }

            goto LABEL_25;
          }

          if (v35)
          {
            if (v44 == v33 && v28 == v35)
            {

              goto LABEL_23;
            }

            v36 = sub_21B6C96E4();

            if (v36)
            {
LABEL_23:
              v37 = [objc_msgSend(v16 pbf_displayContext)];
              swift_unknownObjectRelease();
              if (v37)
              {
                v38 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterSnapshotView;
                v39 = *&v16[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterSnapshotView];
                v40 = v45;
                v41 = [v45 compositeSnapshot];
                [v39 setImage_];

                v42 = *&v16[v38];
                sub_21B63ED44(v42, a6);

                return;
              }
            }

LABEL_25:

            return;
          }
        }

        else if (!v28)
        {
          goto LABEL_23;
        }

        return;
      }
    }
  }
}

double sub_21B66E7D4()
{
  result = sub_21B63EF0C(2, 0);
  v2 = *&v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair];
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR___PBFPosterPair_associatedConfiguration);
    if (v3)
    {
      v4 = &v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotProvider];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        v6 = v3;
        v7 = [v0 pbf_displayContext];
        v8 = PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400, qword_21B6D8B60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21B6D7FE0;
        *(inited + 32) = v8;
        v10 = v8;
        v16 = sub_21B645CE0(inited);
        swift_setDeallocating();
        sub_21B636E24(inited + 32);
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = v10;
        *(v12 + 32) = v6;
        *(v12 + 40) = v7;
        *(v12 + 48) = 0;
        v13 = *(v5 + 8);
        v14 = v6;
        v15 = v10;

        swift_unknownObjectRetain();
        v13(v14, v16, v7, 0, sub_21B66F1FC, v12, ObjectType, v5);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_21B66E9DC()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = [v0 subviews];
  sub_21B61785C(0, &unk_28120B170, 0x277D75D18);
  v2 = sub_21B6C8E84();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = sub_21B6C9454();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CEF66E0](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      [v0 bounds];
      [v6 setFrame_];
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

id sub_21B66EC70(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___lockPosterPreviewView] = 0;
  v9 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_lockPosterBlurView;
  v10 = objc_opt_self();
  *&v4[v9] = [v10 pui_homeScreenLegibilityMaterialView];
  v11 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_gradientPreviewView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D3EF50]) init];
  v12 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_solidColorPreviewView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v4[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___homePosterPreviewView] = 0;
  v13 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterSnapshotView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v14 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterBlurView;
  *&v4[v14] = [v10 pui_homeScreenLegibilityMaterialView];
  *&v4[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenConfiguration] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell();
  return objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_21B66EE18(void *a1)
{
  *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___lockPosterPreviewView] = 0;
  v3 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_lockPosterBlurView;
  v4 = objc_opt_self();
  *&v1[v3] = [v4 pui_homeScreenLegibilityMaterialView];
  v5 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_gradientPreviewView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D3EF50]) init];
  v6 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_solidColorPreviewView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell____lazy_storage___homePosterPreviewView] = 0;
  v7 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterSnapshotView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterBlurView;
  *&v1[v8] = [v4 pui_homeScreenLegibilityMaterialView];
  *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenConfiguration] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

void sub_21B66EFB8()
{
  sub_21B6178E4(v0 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenConfiguration);
}

id sub_21B66F0A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t objectdestroy_54Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21B66F280()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  if (v2)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [*(v1 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_lockPosterBlurView) setWeighting_];
  v5 = *(v1 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homePosterBlurView);
  if (v3)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  return [v5 setWeighting_];
}

id sub_21B66F450(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PosterRackOffsetMenuButton();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *PosterRackCollectionViewController.__allocating_init(posterFilter:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = objc_allocWithZone(type metadata accessor for PosterStore());
  swift_getObjectType();
  v4 = swift_unknownObjectRetain();
  v5 = sub_21B629420(v4, v3);
  v6 = objc_allocWithZone(type metadata accessor for PosterRackCollectionViewController(0));
  v7 = sub_21B698344(v5, v6);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id PosterRackCollectionViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_21B66F5E4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

char *sub_21B66F650(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21B6C9454();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_21B69644C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x21CEF66E0](i, a1);
        sub_21B61785C(0, &unk_27CD941E0, 0x277D3ED40);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_21B69644C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_21B69C828(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_21B61785C(0, &unk_27CD941E0, 0x277D3ED40);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21B69644C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_21B69C828(v12, (v3 + 32 * v11 + 32));
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

uint64_t sub_21B66F84C(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_21B6C9454();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    result = sub_21B6C9594();
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        do
        {
          v9 = v8 + 1;
          MEMORY[0x21CEF66E0]();
          sub_21B61785C(0, a2, a3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93CC8, &qword_21B6D98C8);
          swift_dynamicCast();
          sub_21B6C9574();
          sub_21B6C95A4();
          sub_21B6C95B4();
          sub_21B6C9584();
          v8 = v9;
        }

        while (v6 != v9);
      }

      else
      {
        v10 = (a1 + 32);
        sub_21B61785C(0, a2, a3);
        do
        {
          v11 = *v10++;
          v12 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93CC8, &qword_21B6D98C8);
          swift_dynamicCast();
          sub_21B6C9574();
          sub_21B6C95A4();
          sub_21B6C95B4();
          sub_21B6C9584();
          --v6;
        }

        while (v6);
      }

      return v13;
    }
  }

  return result;
}

uint64_t sub_21B66FA30(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21B66FADC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x21CEF66E0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_21B6C9454();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_21B66FC04(uint64_t a1, uint64_t a2)
{
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21B69928C(&unk_27CD92DE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_21B6C8D34(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_21B69928C(&qword_27CD92F20, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_21B6C8D64();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21B66FE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21B6C97A4();
  sub_21B6C8DD4();
  v6 = sub_21B6C97C4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21B6C96E4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21B66FF38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_21B66FF98(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_21B6C8754();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_21B66FFFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *PosterRackCollectionViewController.init()()
{
  if (qword_28120B5D0 != -1)
  {
    swift_once();
  }

  v0 = qword_28120CDA8;
  v1 = objc_allocWithZone(type metadata accessor for PosterRackCollectionViewController(0));
  v2 = sub_21B698344(v0, v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

char *PosterRackCollectionViewController.init(posterFilter:)(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for PosterStore());
  swift_getObjectType();
  v2 = swift_unknownObjectRetain();
  v3 = sub_21B629420(v2, v1);
  v4 = objc_allocWithZone(type metadata accessor for PosterRackCollectionViewController(0));
  v5 = sub_21B698344(v3, v4);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

void PosterRackCollectionViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenLayoutObservationToken];
  if (v1)
  {
    [v1 invalidate];
  }

  if (*&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_focusUpdateSubscription])
  {

    sub_21B6C8F24();
  }

  v2 = OBJC_IVAR___PBFPosterRackCollectionViewController_finishTaskAssertions;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_14:
    *&v0[v2] = MEMORY[0x277D84F90];

    v8.receiver = v0;
    v8.super_class = type metadata accessor for PosterRackCollectionViewController(0);
    objc_msgSendSuper2(&v8, sel_dealloc);
    return;
  }

  v4 = sub_21B6C9454();
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CEF66E0](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 invalidate];
    }

    goto LABEL_14;
  }

  __break(1u);
}

Swift::Void __swiftcall PosterRackCollectionViewController.viewDidLoad()()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for PosterRackCollectionViewController(0);
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v2 = [*&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenService] addHomeScreenLayoutObserver_];
  *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenLayoutObservationToken] = v2;
  swift_unknownObjectRelease();
  sub_21B68872C();
  sub_21B688AB4();
  v3 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton];
  v31 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton];
  v32 = v3;
  v33 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton];
  v4 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v5 = v33;
  v6 = v31;
  v7 = v3;
  v8 = 0;
LABEL_2:
  if (v8 <= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  while (v8 != 3)
  {
    if (v9 == v8)
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = v30[v8++ + 4];
    if (v10)
    {
      v10;
      MEMORY[0x21CEF6000]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();
      v4 = v28;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93CC8, &qword_21B6D98C8);
  swift_arrayDestroy();
  v11 = sub_21B67AAE4();
  if (!(v11 >> 62))
  {

    sub_21B6C96F4();
    sub_21B61785C(0, &unk_28120B170, 0x277D75D18);
    v12 = v11;
    goto LABEL_13;
  }

LABEL_22:
  sub_21B61785C(0, &unk_28120B170, 0x277D75D18);
  v12 = sub_21B6C95E4();
LABEL_13:

  v29 = v4;
  sub_21B697E94(v12);
  v13 = v4;
  if (v4 >> 62)
  {
    v14 = sub_21B6C9454();
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x21CEF66E0](i, v13);
    }

    else
    {
      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    [v16 setOverrideUserInterfaceStyle_];
  }

LABEL_24:

  v18 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_didTapEmptyViewArea_];
  [v18 setCancelsTouchesInView_];
  [v18 setDelegate_];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = v19;
  [v19 addGestureRecognizer_];

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = v21;
  v23 = [v21 layer];

  [v23 setZPosition_];
  v24 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl];
  if (v24)
  {
    v25 = [v24 layer];
    [v25 setZPosition_];
  }

  v26 = OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode;
  *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] = 0;
  v27 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView];
  if (v27)
  {
    [v27 setAlpha_];
    sub_21B67C74C(*&v1[v26]);
    sub_21B67C8E0(2);
    sub_21B67D12C();
    [*(*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore] + OBJC_IVAR____TtC11PosterBoard11PosterStore_observers) addObject_];
    sub_21B68D878();

    return;
  }

LABEL_33:
  __break(1u);
}

Swift::Void __swiftcall PosterRackCollectionViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = sub_21B6C8A04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PosterRackCollectionViewController(0);
  v15.receiver = v1;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, sel_viewDidAppear_, a1);
  v8 = OBJC_IVAR___PBFPosterRackCollectionViewController_hasCompletedPushbackFromHomeScreen;
  if ((v1[OBJC_IVAR___PBFPosterRackCollectionViewController_hasCompletedPushbackFromHomeScreen] & 1) == 0)
  {
    v9 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
    swift_beginAccess();
    if (v1[v9] == 1 && *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] == 6)
    {
      v10 = v1;
      v11 = [v1 collectionView];
      if (v11)
      {
        v12 = v11;
        MEMORY[0x21CEF5B60](1, 0);
        v13 = sub_21B6C8974();
        (*(v4 + 8))(v6, v3);
        [v12 selectItemAtIndexPath:v13 animated:0 scrollPosition:0];

        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(4, 1, 0, 0, 0);
        v10[v8] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall PosterRackCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v3 = v2;
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21B6C8854();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for PosterRackCollectionViewController(0);
  v25.receiver = v3;
  v25.super_class = v14;
  [(UIWindow_optional *)&v25 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    v15 = sub_21B67EC90(0, 0, 0);
    v16 = *&v3[OBJC_IVAR___PBFPosterRackCollectionViewController_dateProvider];
    [v16 addMinuteUpdateObserver_];
    v17 = [v16 date];
    sub_21B6C8814();

    sub_21B68D5D8(v13);
    (*(v11 + 8))(v13, v10);
    v18 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
    swift_beginAccess();
    if (v3[v18] == 1)
    {
      v19 = [v3 collectionView];
      if (v19)
      {
        v20 = v19;
        MEMORY[0x21CEF5B60](1, 0);
        v21 = sub_21B6C8974();
        (*(v7 + 8))(v9, v6);
        [v20 selectItemAtIndexPath:v21 animated:0 scrollPosition:0];

        v22 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
        swift_beginAccess();
        if (v3[v22] == 1 && v3[OBJC_IVAR___PBFPosterRackCollectionViewController_hasCompletedPushbackFromHomeScreen] != 1)
        {
          v23 = 6;
        }

        else
        {
          v23 = 4;
        }

        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(v23, 0, 0, 0, 0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    [*&v3[OBJC_IVAR___PBFPosterRackCollectionViewController_dateProvider] removeMinuteUpdateObserver_];
  }
}

void PosterRackCollectionViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v45.receiver = v4;
  v45.super_class = type metadata accessor for PosterRackCollectionViewController(0);
  objc_msgSendSuper2(&v45, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v8 = [v4 collectionView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = Strong;
  if (Strong)
  {
    [Strong updatePreferredContentSizeForSize:a1 withTransitionCoordinator:{a2, a3}];
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v43 = sub_21B6989EC;
  v44 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_21B66FF38;
  v42 = &block_descriptor_12;
  v12 = _Block_copy(&aBlock);
  v13 = v8;

  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  v43 = sub_21B698A0C;
  v44 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_21B66FF38;
  v42 = &block_descriptor_6_0;
  v15 = _Block_copy(&aBlock);
  v16 = v4;

  [a1 animateAlongsideTransition:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);
  v17 = [v16 view];
  if (!v17)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v17;
  v19 = [v17 window];

  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = [v19 windowScene];

  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = [v20 _FBSScene];

  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = [v16 traitCollection];
  v23 = [v22 userInterfaceIdiom];

  if (v23 != 1 || (v24 = [v21 settings], objc_msgSend(v24, sel_interfaceOrientation), v24, v25 = BSInterfaceOrientationIsPortrait() ^ 1, v26 = OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells, v27 = *&v16[OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells], *&v16[OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells] = v25, v27 == v25))
  {
LABEL_24:

LABEL_25:
    return;
  }

  v28 = [v16 collectionView];
  if (!v28)
  {
    goto LABEL_28;
  }

  v29 = v28;
  v30 = [v28 preparedCells];

  if (v30)
  {
    sub_21B61785C(0, &unk_28120B2A8, 0x277D752A8);
    v31 = sub_21B6C8E84();

    if (v31 >> 62)
    {
      v32 = sub_21B6C9454();
      if (v32)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_13:
        if (v32 >= 1)
        {
          for (i = 0; i != v32; ++i)
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              v34 = MEMORY[0x21CEF66E0](i, v31);
            }

            else
            {
              v34 = *(v31 + 8 * i + 32);
            }

            v35 = v34;
            type metadata accessor for LockScreenPosterCollectionViewCell(0);
            v36 = swift_dynamicCastClass();
            if (v36)
            {
              v37 = *&v16[v26];
              v38 = *(v36 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation);
              *(v36 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation) = v37;
              if (v37 != v38)
              {
                sub_21B666B28();
              }
            }
          }

          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_27;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

void sub_21B6716E8(int a1, id a2)
{
  if (!a2)
  {
    return;
  }

  v2 = [a2 visibleCells];
  sub_21B61785C(0, &unk_28120B2A8, 0x277D752A8);
  v3 = sub_21B6C8E84();

  v18 = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v4 = sub_21B6C9454();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CEF66E0](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      type metadata accessor for PosterPairCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    MEMORY[0x21CEF6000]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
    v6 = v18;
  }

  while (v5 != v4);
LABEL_23:

  if (v6 >> 62)
  {
    v10 = sub_21B6C9454();
    if (v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_25:
      if (v10 < 1)
      {
        __break(1u);
        return;
      }

      v11 = 0;
      v12 = MEMORY[0x277D85000];
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CEF66E0](v11, v6);
        }

        else
        {
          v13 = *(v6 + 8 * v11 + 32);
        }

        v14 = v13;
        (*((*v12 & *v13) + 0x1B8))();
        type metadata accessor for HomeScreenPosterCollectionViewCell();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = *(v15 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView);
          if (v16)
          {
            v17 = v16;
            [v17 setAlpha_];
          }
        }

        ++v11;
      }

      while (v10 != v11);
    }
  }
}

Swift::Void __swiftcall PosterRackCollectionViewController.sceneWillEnterForeground()()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v3 = v2;
  v4 = [v2 visibleCells];

  sub_21B61785C(0, &unk_28120B2A8, 0x277D752A8);
  v5 = sub_21B6C8E84();

  v6 = sub_21B6990BC(v5);

  v7 = [*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_lockCellsWeakHashMap] allObjects];
  type metadata accessor for LockScreenPosterCollectionViewCell(0);
  v8 = sub_21B6C8E84();

  v48 = v8;
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B6C9454())
  {
    v10 = 0;
    v11 = v6 + 56;
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CEF66E0](v10, v48);
      }

      else
      {
        if (v10 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v48 + 32 + 8 * v10);
      }

      v13 = v12;
      if (__OFADD__(v10++, 1))
      {
        break;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        if ((sub_21B6C9484() & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!*(v6 + 16))
        {
          goto LABEL_6;
        }

        v15 = sub_21B6C9194();
        v16 = -1 << *(v6 + 32);
        v17 = v15 & ~v16;
        if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_6;
        }

        v18 = ~v16;
        while (1)
        {
          v19 = *(*(v6 + 48) + 8 * v17);
          v20 = sub_21B6C91A4();

          if (v20)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      sub_21B667B2C();
LABEL_6:

      if (v10 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  v21 = PBFMakeSBSWallpaperService();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  *(v22 + 24) = v21;
  aBlock[4] = sub_21B699214;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B681F4C;
  aBlock[3] = &block_descriptor_12_0;
  v23 = _Block_copy(aBlock);
  v24 = v1;
  v25 = v21;

  [v25 staging:v23 fetchPosterSignificantEventsCounterWithCompletionHandler:?];
  _Block_release(v23);

  v26 = [v24 view];
  if (!v26)
  {
    goto LABEL_49;
  }

  v27 = v26;
  v28 = [v26 window];

  if (!v28)
  {
    goto LABEL_46;
  }

  v29 = [v28 windowScene];

  if (!v29)
  {
    goto LABEL_46;
  }

  v30 = [v29 _FBSScene];

  if (!v30)
  {
    goto LABEL_46;
  }

  v31 = [v24 traitCollection];
  v32 = [v31 userInterfaceIdiom];

  if (v32 != 1 || (v33 = [v30 settings], objc_msgSend(v33, sel_interfaceOrientation), v33, v34 = BSInterfaceOrientationIsPortrait() ^ 1, v35 = OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells, v36 = *&v24[OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells], *&v24[OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells] = v34, v36 == v34))
  {
LABEL_45:

LABEL_46:
    sub_21B672440();
    sub_21B68D878();
    return;
  }

  v37 = [v24 collectionView];
  if (!v37)
  {
    goto LABEL_50;
  }

  v38 = v37;
  v39 = [v37 preparedCells];

  if (v39)
  {
    v40 = sub_21B6C8E84();

    if (v40 >> 62)
    {
      v41 = sub_21B6C9454();
      if (v41)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
LABEL_34:
        if (v41 >= 1)
        {
          for (j = 0; j != v41; ++j)
          {
            if ((v40 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x21CEF66E0](j, v40);
            }

            else
            {
              v43 = *(v40 + 8 * j + 32);
            }

            v44 = v43;
            v45 = swift_dynamicCastClass();
            if (v45)
            {
              v46 = *&v24[v35];
              v47 = *(v45 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation);
              *(v45 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation) = v46;
              if (v46 != v47)
              {
                sub_21B666B28();
              }
            }
          }

          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_48;
      }
    }

LABEL_44:

    goto LABEL_45;
  }

LABEL_51:
  __break(1u);
}

Swift::Void __swiftcall PosterRackCollectionViewController.sceneDidEnterBackground()()
{
  v1 = [*(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockCellsWeakHashMap) allObjects];
  type metadata accessor for LockScreenPosterCollectionViewCell(0);
  v2 = sub_21B6C8E84();

  if (v2 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B6C9454())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    v35 = i;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CEF66E0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v6 = *(v2 + 32 + 8 * v4);
      }

      v7 = v6;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v37 = v5;
      v9 = *&v6[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController];
      if (v9)
      {
        v10 = v9;
        MEMORY[0x21CEF6000]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21B6C8E94();
        }

        sub_21B6C8EA4();

        v11 = v37;
      }

      else
      {
        v11 = v5;
      }

      v12 = *&v7[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController];
      if (v12)
      {
        v13 = v12;
        MEMORY[0x21CEF6000]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21B6C8E94();
        }

        sub_21B6C8EA4();

        v11 = v37;
      }

      v36 = v7;
      if (v11 >> 62)
      {
        v14 = sub_21B6C9454();
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      if (v14 < 1)
      {
        goto LABEL_44;
      }

      for (j = 0; j != v14; ++j)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CEF66E0](j, v11);
        }

        else
        {
          v17 = *(v11 + 8 * j + 32);
        }

        v18 = v17;
        v19 = [v17 subtitleComplicationViewController];
        if (v19)
        {
          v20 = v19;
          v21 = swift_dynamicCastObjCProtocolConditional();
          if (v21)
          {
            [v21 complicationsDidEndDisplaying];
          }
        }

        v22 = [v18 complicationContainerViewController];
        if (v22)
        {
          v23 = v22;
          v24 = swift_dynamicCastObjCProtocolConditional();
          if (v24)
          {
            [v24 complicationsDidEndDisplaying];
          }
        }

        v25 = [v18 complicationSidebarViewController];
        if (v25)
        {
          v16 = v25;
          v26 = swift_dynamicCastObjCProtocolConditional();
          if (v26)
          {
            [v26 complicationsDidEndDisplaying];
          }
        }

        else
        {
          v16 = v18;
        }
      }

LABEL_4:

      sub_21B65F374(1);

      v5 = MEMORY[0x277D84F90];
      if (v4 == v35)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_46:

  v27 = *(v34 + OBJC_IVAR___PBFPosterRackCollectionViewController_switcherApplicationStateNode);
  sub_21B61785C(0, &qword_28120B230, off_2782C4160);
  sub_21B61E3A8(&unk_28120B220, &qword_28120B230, off_2782C4160);
  v28 = sub_21B6C8F84();
  [v27 setComponents_];

  sub_21B68F4FC(v29, v30);
  v31 = (v34 + OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration);
  swift_beginAccess();
  v32 = *v31;
  v33 = *(v31 + 1);
  *v31 = 0;
  v31[1] = 0;
  sub_21B678F88(v32, v33);
}

id sub_21B672440()
{
  v1 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_switcherApplicationStateNode];
  sub_21B61785C(0, &qword_28120B230, off_2782C4160);
  sub_21B61E3A8(&unk_28120B220, &qword_28120B230, off_2782C4160);
  v2 = sub_21B6C8F84();
  v27 = v1;
  [v1 setComponents_];

  result = [v0 collectionView];
  if (result)
  {
    v4 = result;
    v5 = [result visibleCells];

    sub_21B61785C(0, &unk_28120B2A8, 0x277D752A8);
    v6 = sub_21B6C8E84();

    if (v6 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B6C9454())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CEF66E0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v13 = *(v6 + 8 * v8 + 32);
        }

        v14 = v13;
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        type metadata accessor for LockScreenPosterCollectionViewCell(0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          v17 = *(v16 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
          if (!v17)
          {
            goto LABEL_7;
          }

          v9 = *&v17[OBJC_IVAR___PBFPosterPair_configuration];
          v10 = objc_allocWithZone(PBFApplicationStateComponent);
          v11 = v17;
          v12 = [v10 initWithPRPosterConfiguration_];
          [v27 updateByAddingComponent_];
        }

        else
        {
          type metadata accessor for HomeScreenPosterCollectionViewCell();
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            v19 = *(v18 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
            if (!v19)
            {
              goto LABEL_7;
            }

            v20 = *&v19[OBJC_IVAR___PBFPosterPair_associatedConfiguration];
            if (!v20)
            {
              goto LABEL_7;
            }

            v21 = objc_allocWithZone(PBFApplicationStateComponent);
            v22 = v19;
            v23 = v20;
            v12 = [v21 initWithPRPosterConfiguration_];
            [v27 updateByAddingComponent_];
          }

          else
          {
            if (qword_28120B390 != -1)
            {
              swift_once();
            }

            v24 = sub_21B6C8AB4();
            __swift_project_value_buffer(v24, qword_28120CD78);
            v25 = sub_21B6C9014();
            v12 = sub_21B6C8A94();
            if (os_log_type_enabled(v12, v25))
            {
              v26 = swift_slowAlloc();
              *v26 = 0;
              _os_log_impl(&dword_21B526000, v12, v25, "Poster Switcher unhandled cell ", v26, 2u);
              MEMORY[0x21CEF8150](v26, -1, -1);
            }
          }
        }

LABEL_7:
        ++v8;
        if (v15 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_27:
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PosterRackCollectionViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

Swift::Void __swiftcall PosterRackCollectionViewController.viewWillLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PosterRackCollectionViewController(0);
  objc_msgSendSuper2(&v1, sel_viewWillLayoutSubviews);
  sub_21B68C888();
}

Swift::Void __swiftcall PosterRackCollectionViewController.viewDidLayoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterRackCollectionViewController(0);
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  if ((v0[OBJC_IVAR___PBFPosterRackCollectionViewController_hasScrolledToSelectionForInitialViewLayout] & 1) == 0)
  {
    v0[OBJC_IVAR___PBFPosterRackCollectionViewController_hasScrolledToSelectionForInitialViewLayout] = 1;
    v1 = *&v0[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore] + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex;
    if ((*(v1 + 8) & 1) == 0)
    {
      sub_21B690260(*v1, 0, 0);
    }
  }
}

void PosterRackCollectionViewController.dismissPresentedViewControllers(animated:dismissHandler:completion:)(char a1, uint64_t a2, uint64_t a3, void (*a4)(void *a1), void *a5)
{
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = a2;
  v9[4] = a3;
  v20 = sub_21B69921C;
  v21 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_21B6388A0;
  v19 = &block_descriptor_18_0;
  v10 = _Block_copy(&aBlock);
  v11 = v5;

  sub_21B529CD0(a2, a3);

  if (a4)
  {
    v20 = a4;
    v21 = a5;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_21B63863C;
    v19 = &block_descriptor_21;
    v12 = _Block_copy(&aBlock);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v11;
  v15.super_class = type metadata accessor for PosterRackCollectionViewController(0);
  objc_msgSendSuper2(&v15, sel_dismissPresentedViewControllersAnimated_dismissHandler_completion_, a1 & 1, v10, v12);
  _Block_release(v12);
  _Block_release(v10);
}

void sub_21B672BCC(void *a1, uint64_t a2, void (*a3)(void *))
{
  sub_21B67F6DC(a1);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    sub_21B694118(v6);
  }

  if (a3)
  {
    a3(a1);
  }
}

uint64_t PosterRackCollectionViewController.posterRackDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PosterRackCollectionViewController.posterRackDelegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_posterRackDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21B643674;
}

uint64_t PosterRackCollectionViewController.managesLiveWidgetHosting.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_managesLiveWidgetHosting;
  swift_beginAccess();
  return *(v0 + v1);
}

void PosterRackCollectionViewController.managesLiveWidgetHosting.setter(char a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_managesLiveWidgetHosting;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PosterRackCollectionViewController.shouldDisplayGalleryAffordance.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  return *(v0 + v1);
}

void PosterRackCollectionViewController.shouldDisplayGalleryAffordance.setter(char a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PosterRackCollectionViewController.shouldDisplayAddButton.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void PosterRackCollectionViewController.shouldDisplayAddButton.setter(char a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PosterRackCollectionViewController.allowsLeavingHomeConfiguringLayout.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

void PosterRackCollectionViewController.allowsLeavingHomeConfiguringLayout.setter(char a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PosterRackCollectionViewController.allowsEnteringFullscreenLayout.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

void PosterRackCollectionViewController.allowsEnteringFullscreenLayout.setter(char a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PosterRackCollectionViewController.enteredPosterRackFromHomeScreen.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

void PosterRackCollectionViewController.enteredPosterRackFromHomeScreen.setter(char a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PosterRackCollectionViewController.lastKnownLayoutOrientation.getter()
{
  v1 = v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation;
  swift_beginAccess();
  return *v1;
}

void PosterRackCollectionViewController.lastKnownLayoutOrientation.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void *PosterRackCollectionViewController.homeScreenPortalView.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PosterRackCollectionViewController.homeScreenPortalView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PosterRackCollectionViewController.shouldTransitionLayoutToConfiguringHomeForFirstPoster.getter()
{
  v1 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
  swift_beginAccess();
  return *(v0 + v1);
}

void PosterRackCollectionViewController.shouldTransitionLayoutToConfiguringHomeForFirstPoster.setter(char a1)
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_21B673D6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21B673D98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_21B673E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21B699084(a1);

  *a2 = v3;
  return result;
}

void PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(uint64_t a1, int a2, uint64_t (**a3)(), void (*a4)(__n128), void *a5)
{
  v6 = v5;
  v315 = a5;
  v316 = a4;
  v308 = a3;
  v314 = a2;
  v318 = a1;
  v330 = *MEMORY[0x277D85DE8];
  v7 = sub_21B6C8C94();
  v306 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v305 = &v288 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = sub_21B6C8CC4();
  v304 = *(v311 - 8);
  MEMORY[0x28223BE20](v311);
  v310 = &v288 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_21B6C8CE4();
  v313 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v303 = &v288 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v309 = &v288 - v12;
  v298 = sub_21B6C8AE4();
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v296 = &v288 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500, &qword_21B6D8630);
  MEMORY[0x28223BE20](v14 - 8);
  v299 = (&v288 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v302 = &v288 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93D58, &unk_21B6D98D0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v288 - v19;
  v307 = 0;
  v21 = sub_21B6C8A04();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v301 = &v288 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v300 = (&v288 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v288 - v27;
  MEMORY[0x28223BE20](v29);
  v32 = &v288 - v31;
  v317 = OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode;
  v33 = *&v5[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode];
  if (v33 == 4 && v318 != 6)
  {
    v34 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
    v30 = swift_beginAccess();
    if ((*(v6 + v34) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v318)
  {
    if (v33 == v318)
    {
      if (v318 == 2 && (*(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldBeginAlongsideCompactDeflationWhenAppropriate) & 1) != 0)
      {
        v294 = v22;
        v35 = 1;
        goto LABEL_12;
      }

LABEL_18:
      if (v316)
      {
        (v316)(v30);
      }

      return;
    }
  }

  else
  {
    v36 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
    v30 = swift_beginAccess();
    if ((*(v6 + v36) & 1) == 0 || !v33)
    {
      goto LABEL_18;
    }
  }

  v294 = v22;
  v35 = 0;
LABEL_12:
  v293 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldBeginAlongsideCompactDeflationWhenAppropriate;
  *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldBeginAlongsideCompactDeflationWhenAppropriate) = 0;
  v37 = type metadata accessor for PosterRackCollectionViewController(0);
  v319.receiver = v6;
  v319.super_class = v37;
  v38 = objc_msgSendSuper2(&v319, sel_pbf_layoutOrientation);
  v39 = v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation;
  swift_beginAccess();
  *v39 = v38;
  v39[8] = 0;
  LODWORD(v295) = v35;
  if (v35)
  {
    v40 = sub_21B67ABF0();
    [v40 prepare];
  }

  if (v318 == 1)
  {
    if ((*&v317[v6] | 2) != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v318 == 4 && *&v317[v6] == 6)
  {
LABEL_21:
    v41 = sub_21B67ABF0();
    [v41 _privateNotificationOccurred_];
  }

LABEL_22:
  v42 = objc_allocWithZone(type metadata accessor for PosterRackStackedLayout(0));
  v43 = sub_21B62D4B4(v318);
  v44 = [v6 collectionView];
  if (!v44)
  {
    __break(1u);
    goto LABEL_174;
  }

  v45 = v44;
  v46 = [v44 indexPathsForSelectedItems];

  v292 = v7;
  if (!v46)
  {
    goto LABEL_41;
  }

  v47 = sub_21B6C8E84();

  if (!*(v47 + 16))
  {

LABEL_41:
    v75 = &v43[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex];
    *v75 = 0;
    v75[8] = 1;
    goto LABEL_42;
  }

  v291 = v43;
  v48 = v294;
  v49 = v47 + ((*(v294 + 80) + 32) & ~*(v294 + 80));
  v290 = *(v294 + 16);
  v290(v32, v49, v21);

  if (sub_21B6C89D4() != 1)
  {
    v74 = v48;
LABEL_40:
    (*(v74 + 8))(v32, v21);
    v43 = v291;
    goto LABEL_41;
  }

  if ((v318 | 2) != 6)
  {
    v74 = v294;
    goto LABEL_40;
  }

  v50 = *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView);
  if (!v50)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v51 = *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v52 = v50;
  v53 = sub_21B6C89F4();
  v54 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v55 = *(v51 + v54);
  if ((v55 & 0xC000000000000001) == 0)
  {
    if ((v53 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v53 < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = *(v55 + 8 * v53 + 32);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_172;
  }

  v287 = MEMORY[0x21CEF66E0](v53, v55);

  v56 = v287;
LABEL_32:
  v57 = *&v52[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair];
  *&v52[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair] = v56;
  v58 = v56;
  sub_21B633E70(v57);

  v59 = sub_21B6C89F4();
  v60 = v291 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex;
  *v60 = v59;
  *(v60 + 8) = 0;
  v61 = sub_21B6C89F4();
  MEMORY[0x21CEF5B60](0, v61);
  v62 = [v6 collectionView];
  if (!v62)
  {
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v63 = v62;
  v64 = sub_21B6C8974();
  v65 = [v63 cellForItemAtIndexPath_];

  if (!v65)
  {
    goto LABEL_136;
  }

  type metadata accessor for LockScreenPosterCollectionViewCell(0);
  v66 = swift_dynamicCastClass();
  if (!v66 || (v67 = *(v66 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotBundle)) == 0)
  {

LABEL_136:
    v230 = *(v294 + 8);
    v230(v28, v21);
    v230(v32, v21);
    goto LABEL_137;
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92650, &qword_21B6D7980);
  v289 = *(v68 + 48);
  v69 = *(v68 + 64);
  v290(v20, v28, v21);
  *&v20[v289] = v67;
  v70 = v67;
  v71 = [v6 pbf_displayContext];

  v72 = *(v294 + 8);
  v72(v28, v21);
  v72(v32, v21);
  *&v20[v69] = v71;
  (*(*(v68 - 8) + 56))(v20, 0, 1, v68);
  v73 = OBJC_IVAR___PBFPosterRackCollectionViewController_stashedLockscreenSnapshots;
  swift_beginAccess();
  sub_21B6992E0(v20, v6 + v73);
  swift_endAccess();
LABEL_137:
  v43 = v291;
LABEL_42:
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = &v43[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider];
  v78 = *&v43[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider];
  v79 = *&v43[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider + 8];
  *v77 = sub_21B699228;
  v77[1] = v76;

  sub_21B52B410(v78, v79);

  v80 = v295;
  v43[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] = v295;
  v43[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout] = 1;
  if (v318)
  {
    v81 = *&v317[v6];
    v82 = v316;
    if (v81)
    {
      goto LABEL_61;
    }

    v83 = *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
    if ((*(v83 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8) & 1) == 0)
    {
      sub_21B690260(*(v83 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex), 0, 0);
    }

    v84 = [*(v83 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
    [v84 checkForGalleryUpdates];

    v85 = sub_21B67C244() == v318;
    *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_isTransitioningToInitialLayoutModeFromFullscreen) = v85;
    v81 = *&v317[v6];
    if (v81)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (v308)
  {
    v98 = *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore) + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex;
    v82 = v316;
    if ((*(v98 + 8) & 1) == 0)
    {
      sub_21B690260(*v98, 0, 0);
    }

    goto LABEL_59;
  }

  v86 = v302;
  sub_21B68C3A0(v302);
  v87 = v86;
  v88 = v294;
  v89 = *(v294 + 48);
  if (v89(v86, 1, v21) != 1)
  {
    v99 = v300;
    (*(v88 + 32))(v300, v87, v21);
    v100 = sub_21B6C89F4();
    v101 = v99;
LABEL_56:
    (*(v88 + 8))(v101, v21);
    sub_21B6248D8(v100);
    goto LABEL_57;
  }

  v90 = v88;
  sub_21B62AA8C(v86, &qword_27CD93500, &qword_21B6D8630);
  v91 = [v6 collectionView];
  if (!v91)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v92 = v91;
  [v91 contentOffset];
  v94 = v93;
  v96 = v95;

  v97 = v299;
  sub_21B68BCC8(v299, v94, v96);
  if (v89(v97, 1, v21) != 1)
  {
    (*(v90 + 32))(v301, v97, v21);
    v231 = [v6 collectionView];
    v82 = v316;
    if (!v231)
    {
LABEL_186:
      __break(1u);
      return;
    }

    v232 = v231;
    v233 = [v231 numberOfSections];

    if (v233 < 2)
    {
      (*(v90 + 8))(v301, v21);
      goto LABEL_58;
    }

    v234 = sub_21B6C89F4();
    v100 = v234 - 1;
    if (!__OFSUB__(v234, 1))
    {
      sub_21B690260(v234 - 1, 0, 0);
      v88 = v90;
      v101 = v301;
      goto LABEL_56;
    }

LABEL_172:
    __break(1u);
  }

  sub_21B62AA8C(v97, &qword_27CD93500, &qword_21B6D8630);
LABEL_57:
  v82 = v316;
LABEL_58:
  v80 = v295;
LABEL_59:
  [v6 dismissPresentedViewControllersAnimated:v314 & 1 dismissHandler:0 completion:0];
  *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_numberOfTrackingTouchesBegunWhileTransitioningToInitialLayoutModeFromFullscreen) = 0;
LABEL_60:
  sub_21B67D538();
  sub_21B67D560();
  sub_21B67D588();
  sub_21B67DC7C();
  v81 = *&v317[v6];
LABEL_61:
  v103 = &qword_282CCEF60;
  v102 = qword_282CCEF50;
  v104 = qword_282CCEF50;
  while (v104)
  {
    v105 = *v103++;
    --v104;
    if (v105 == v81)
    {
      v106 = 1;
      goto LABEL_72;
    }
  }

  v107 = &qword_282CCEF60;
  do
  {
    v108 = v102-- != 0;
    v106 = v108;
    if (!v108)
    {
      break;
    }

    v109 = *v107++;
  }

  while (v109 != v318);
LABEL_72:
  v110 = v43;
  v111 = OBJC_IVAR___PBFPosterRackCollectionViewController_transitionPortalView;
  v112 = *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_transitionPortalView);
  if (v112)
  {
    [v112 removeFromSuperview];
    v113 = *(v6 + v111);
  }

  else
  {
    v113 = 0;
  }

  *(v6 + v111) = 0;

  if ((v106 & PUIFeatureEnabled()) == 1)
  {
    v114 = [v6 collectionView];
    if (!v114)
    {
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v115 = v114;
    v116 = [objc_allocWithZone(MEMORY[0x277D76180]) initWithSourceView_];

    [v116 setHidesSourceView_];
    [v116 setAllowsHitTesting_];
    [v116 setForwardsClientHitTestingToSourceView_];
    [v116 setMatchesAlpha_];
    [v116 setMatchesPosition_];
    [v116 setMatchesTransform_];
    v117 = v116;
    [v117 setAutoresizingMask_];
    v118 = [v117 layer];
    [v118 setZPosition_];

    v119 = v117;
    if (PBF_RDAR_159393603())
    {
      v119 = [v117 layer];

      v120 = [v6 view];
      if (!v120)
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v121 = v120;
      v122 = [v120 effectiveUserInterfaceLayoutDirection];

      [v119 setFlipsHorizontalAxis_];
      v82 = v316;
      v80 = v295;
    }

    v123 = [v6 view];
    if (!v123)
    {
      goto LABEL_177;
    }

    v124 = v123;
    [v123 addSubview_];

    v125 = *(v6 + v111);
    *(v6 + v111) = v117;
    v126 = v117;

    v127 = [v6 collectionView];
    if (!v127)
    {
      goto LABEL_178;
    }

    v128 = v127;
    v129 = [v127 layer];

    [v129 setZPosition_];
  }

  v130 = *&v317[v6];
  if (v130 == 4)
  {
    sub_21B67A6D8();
  }

  v326 = 0;
  v327 = 0;
  v328 = 0;
  v329 = 1;
  v131 = v110;
  if (v314)
  {
    if (v80)
    {
      v132 = PRUISSwitcherLayoutDeflationAnimationSettings();
    }

    else if (v318 == 1 && *&v317[v6] == 2)
    {
      v132 = PRUISSwitcherLayoutBouncingAnimationSettings();
    }

    else
    {
      v132 = PRUISSwitcherLayoutTransitionAnimationSettings();
    }

    v134 = v132;
    v133 = v134;
    if (v134)
    {
      v135 = v134;
    }
  }

  else
  {
    v133 = 0;
  }

  v136 = v318;
  v299 = sub_21B67E41C(v318, v133);
  v294 = v137;

  if (!v136)
  {
    v326 = sub_21B6763FC(v6);
    v327 = v138;
    v328 = v139;
    v329 = v140 & 1;
  }

  v301 = v130;
  v141 = swift_allocObject();
  *(v141 + 16) = v6;
  *(v141 + 24) = v131;
  v302 = v141;
  *(v141 + 32) = v318;
  v142 = objc_opt_self();
  v308 = v131;
  p_aBlock = v6;
  v144 = sub_21B6C8D74();
  v145 = [v142 pf:v144 finishTaskInterruptableWithExplanation:0 invalidationHandler:?];

  v295 = v133;
  v300 = p_aBlock;
  if (!v145)
  {
    v151 = 0;
    goto LABEL_107;
  }

  aBlock = 0;
  v146 = v145;
  v147 = v145;
  v148 = [v147 acquireWithError_];
  v149 = aBlock;
  if (!v148)
  {
    v152 = aBlock;
    v153 = sub_21B6C8764();

    swift_willThrow();
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v154 = sub_21B6C8AB4();
    __swift_project_value_buffer(v154, qword_28120CD78);
    v155 = sub_21B6C9044();
    v156 = v153;
    v157 = sub_21B6C8A94();

    if (os_log_type_enabled(v157, v155))
    {
      v158 = swift_slowAlloc();
      v159 = v82;
      v160 = swift_slowAlloc();
      *v158 = 138412290;
      v161 = v153;
      v162 = _swift_stdlib_bridgeErrorToNSError();
      *(v158 + 4) = v162;
      *v160 = v162;
      _os_log_impl(&dword_21B526000, v157, v155, "Poster failed to acquire finishTask assertion: %@", v158, 0xCu);
      sub_21B62AA8C(v160, &qword_27CD92EF0, &unk_21B6D8C20);
      v163 = v160;
      v82 = v159;
      v164 = v315;
      MEMORY[0x21CEF8150](v163, -1, -1);
      v165 = v158;
      p_aBlock = v300;
      MEMORY[0x21CEF8150](v165, -1, -1);

      v151 = 0;
      v307 = 0;
      v133 = v295;
      goto LABEL_108;
    }

    v151 = 0;
    v307 = 0;
    v133 = v295;
    goto LABEL_107;
  }

  v150 = OBJC_IVAR___PBFPosterRackCollectionViewController_finishTaskAssertions;
  swift_beginAccess();
  v82 = p_aBlock;
  p_aBlock = v147;
  MEMORY[0x21CEF6000](v149);
  if (*((*(v82 + v150) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v82 + v150) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_168;
  }

  while (1)
  {
    sub_21B6C8EA4();
    swift_endAccess();

    v151 = v146;
    p_aBlock = v82;
    v82 = v316;
LABEL_107:
    v164 = v315;
LABEL_108:
    v166 = v301 == 4;
    v146 = swift_allocObject();
    v167 = v318;
    *(v146 + 16) = p_aBlock;
    *(v146 + 24) = v167;
    *(v146 + 32) = v82;
    *(v146 + 40) = v164;
    *(v146 + 48) = v166;
    *(v146 + 56) = v151;
    if (!v133)
    {
      break;
    }

    v168 = v151;
    v169 = p_aBlock;
    sub_21B529CD0(v82, v164);
    v315 = v168;
    v170 = v168;
    [v133 duration];
    v172 = v171;
    [v133 initialVelocity];
    v174 = v173 / 1.41421356;
    [v133 mass];
    v176 = v175;
    [v133 stiffness];
    v178 = v177;
    [v133 damping];
    v180 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:v176 stiffness:v178 damping:v179 initialVelocity:{v174, v174}];
    v181 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v301 = v180;
    v82 = [v181 initWithDuration:v180 timingParameters:v172];
    v316 = v146;
    v324 = sub_21B699230;
    v325 = v302;
    p_aBlock = &aBlock;
    aBlock = MEMORY[0x277D85DD0];
    v321 = 1107296256;
    v133 = &v322;
    v322 = sub_21B63863C;
    v323 = &block_descriptor_48;
    v182 = _Block_copy(&aBlock);
    v146 = v316;

    [v82 addAnimations_];
    _Block_release(v182);
    v183 = swift_allocObject();
    *(v183 + 16) = sub_21B69923C;
    *(v183 + 24) = v146;
    v324 = sub_21B656728;
    v325 = v183;
    aBlock = MEMORY[0x277D85DD0];
    v321 = 1107296256;
    v322 = sub_21B676BAC;
    v323 = &block_descriptor_54;
    v184 = _Block_copy(&aBlock);

    [v82 addCompletion_];
    _Block_release(v184);
    if (!*&v317[v6] && sub_21B67C244() == v318)
    {
      v185 = [v169 collectionView];
      if (!v185)
      {
        goto LABEL_183;
      }

      v186 = v185;
      [v185 bounds];
      v188 = v187;
      v190 = v189;
      v192 = v191;
      v194 = v193;

      v331.origin.x = v188;
      v331.origin.y = v190;
      v331.size.width = v192;
      v331.size.height = v194;
      Width = CGRectGetWidth(v331);
      v196 = [v169 collectionView];
      if (!v196)
      {
        goto LABEL_184;
      }

      v197 = v196;
      [v196 _setVisibleRectEdgeInsets_];

      *(v6 + v293) = v318 == 2;
    }

    v198 = *(v169 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutTransitionAnimationCount);
    v108 = __CFADD__(v198, 1);
    v199 = (v198 + 1);
    if (!v108)
    {
      *(v169 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutTransitionAnimationCount) = v199;
      v200 = [v169 collectionView];
      if (!v200)
      {
        goto LABEL_175;
      }

      v201 = v200;
      [v200 setCollectionViewLayout:v308 withAnimator:v82];

      v203 = &qword_282CCEF98;
      v202 = qword_282CCEF88;
      v204 = qword_282CCEF88;
      while (v204)
      {
        v205 = *v203++;
        --v204;
        if (v205 == v81)
        {
          v206 = 0;
          goto LABEL_126;
        }
      }

      v220 = &qword_282CCEF98;
      do
      {
        v206 = v202 == 0;
        if (!v202)
        {
          break;
        }

        v221 = *v220++;
        --v202;
      }

      while (v221 != v318);
LABEL_126:
      if (PUIFeatureEnabled())
      {
        v222 = [v169 traitCollection];
        v223 = [v222 userInterfaceIdiom];

        v224 = v223 == 1 || v206;
        if ((v224 & 1) == 0)
        {
          v225 = *(v169 + OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton);
          if (v225)
          {
            v226 = *(v169 + OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton);
            if (v226)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10, &unk_21B6D8340);
              v227 = v82;
              if (v318)
              {
                v228 = swift_allocObject();
                *(v228 + 16) = xmmword_21B6D7FC0;
                *(v228 + 32) = v225;
                *(v228 + 40) = v226;
                v229 = v226;
              }

              else
              {
                v235 = swift_allocObject();
                *(v235 + 16) = xmmword_21B6D81D0;
                *(v235 + 32) = v225;
              }

              v236 = v225;
              v237 = v226;
              v238 = v236;
              v239 = sub_21B67A324();

              sub_21B6C96F4();

              v240 = v296;
              sub_21B6C8AD4();
              sub_21B6C8B04();

              (v297[1])(v240, v298);
              v146 = v316;
              v82 = v227;
            }
          }
        }
      }

      if (*(v6 + v293) == 1)
      {
        v298 = sub_21B61785C(0, &unk_28120B2F0, 0x277D85C78);
        v241 = sub_21B6C9074();
        v307 = v82;
        v242 = v241;
        v243 = v303;
        sub_21B6C8CD4();
        sub_21B6C8CF4();
        v244 = *(v313 + 8);
        v313 += 8;
        v317 = v244;
        (v244)(v243, v312);
        v245 = swift_allocObject();
        *(v245 + 16) = v169;
        v324 = sub_21B699284;
        v325 = v245;
        aBlock = MEMORY[0x277D85DD0];
        v321 = 1107296256;
        v322 = sub_21B63863C;
        v323 = &block_descriptor_61;
        v246 = _Block_copy(&aBlock);
        v297 = v169;

        v247 = v310;
        sub_21B6C8CB4();
        aBlock = MEMORY[0x277D84F90];
        v293 = sub_21B69928C(&qword_28120B380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B10, &unk_21B6D8D50);
        v296 = sub_21B62AA24(&qword_28120B360, &unk_27CD93B10, &unk_21B6D8D50, MEMORY[0x277D83970]);
        v248 = v305;
        v249 = v292;
        sub_21B6C9404();
        v250 = v309;
        MEMORY[0x21CEF6200](v309, v247, v248, v246);
        _Block_release(v246);

        v306 = *(v306 + 8);
        (v306)(v248, v249);
        v304 = *(v304 + 8);
        (v304)(v247, v311);
        v251 = v312;
        v252 = v317;
        (v317)(v250, v312);
        v298 = sub_21B6C9074();
        sub_21B6C8CD4();
        sub_21B6C8CF4();
        v252(v243, v251);
        v253 = swift_allocObject();
        v254 = v297;
        *(v253 + 16) = v297;
        *(v253 + 24) = v314 & 1;
        v324 = sub_21B6992D4;
        v325 = v253;
        aBlock = MEMORY[0x277D85DD0];
        v321 = 1107296256;
        v322 = sub_21B63863C;
        v323 = &block_descriptor_67;
        v255 = _Block_copy(&aBlock);
        v256 = v254;

        v257 = v310;
        sub_21B6C8CB4();
        aBlock = MEMORY[0x277D84F90];
        sub_21B6C9404();
        v258 = v298;
        MEMORY[0x21CEF6200](v250, v257, v248, v255);
        _Block_release(v255);
        v259 = v295;

        (v306)(v248, v249);
        v133 = v259;
        v146 = v316;
        (v304)(v257, v311);
        (v317)(v250, v312);
      }

      else
      {

        v133 = v295;
      }

      v219 = v299;
      v212 = v308;
      v151 = v315;
      v218 = v300;
      goto LABEL_149;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    sub_21B6C8E94();
  }

  v207 = *(p_aBlock + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutTransitionAnimationCount);
  v108 = __CFADD__(v207, 1);
  v208 = (v207 + 1);
  if (v108)
  {
    goto LABEL_167;
  }

  *(p_aBlock + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutTransitionAnimationCount) = v208;
  v209 = p_aBlock;
  v210 = v82;
  sub_21B529CD0(v82, v164);
  v211 = v151;
  v212 = v308;
  v213 = v318;
  sub_21B6766D0(v209, v308, v318);
  v214 = [v209 collectionView];
  if (!v214)
  {
    goto LABEL_179;
  }

  v215 = v164;
  v216 = v214;
  v217 = v301 == 4;
  [v214 setCollectionViewLayout_];

  sub_21B6767FC(v209, v213, v210, v215, v217, v151);
  v218 = v300;
  v219 = v299;
LABEL_149:
  if (v318)
  {
    v326 = sub_21B6763FC(v218);
    v327 = v260;
    v328 = v261;
    v329 = v262 & 1;
  }

  v263 = [v218 view];
  if (!v263)
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v264 = v263;
  v265 = [v263 window];

  if (!v265 || (v266 = [v265 windowScene], v265, !v266) || (v267 = objc_msgSend(v266, sel__FBSScene), v266, !v267))
  {
LABEL_162:

    sub_21B52B410(v219, v294);
LABEL_163:

    return;
  }

  if (!v219)
  {

    v212 = v133;
    goto LABEL_163;
  }

  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v316 = v146;
  v268 = sub_21B6C8AB4();
  __swift_project_value_buffer(v268, qword_28120CD78);
  v269 = sub_21B6C9014();
  v270 = sub_21B6C8A94();
  if (os_log_type_enabled(v270, v269))
  {
    v271 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    v315 = v151;
    v273 = v272;
    aBlock = v272;
    *v271 = 136315138;
    v274 = NSStringFromPRUISSwitcherLayoutMode();
    v275 = v133;
    v276 = sub_21B6C8DA4();
    v278 = v277;

    v279 = v276;
    v133 = v275;
    v280 = sub_21B656178(v279, v278, &aBlock);

    *(v271 + 4) = v280;
    _os_log_impl(&dword_21B526000, v270, v269, "Poster Switcher is updating client layout mode to: %s", v271, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v273);
    v281 = v273;
    v151 = v315;
    MEMORY[0x21CEF8150](v281, -1, -1);
    MEMORY[0x21CEF8150](v271, -1, -1);
  }

  v282 = swift_allocObject();
  v283 = v294;
  v282[2] = v219;
  v282[3] = v283;
  v282[4] = &v326;
  v284 = swift_allocObject();
  *(v284 + 16) = sub_21B699250;
  *(v284 + 24) = v282;
  v324 = sub_21B69925C;
  v325 = v284;
  aBlock = MEMORY[0x277D85DD0];
  v321 = 1107296256;
  v322 = sub_21B66F5E4;
  v323 = &block_descriptor_45_0;
  v285 = _Block_copy(&aBlock);
  v212 = v325;
  sub_21B529CD0(v219, v283);

  [v267 updateClientSettings_];

  sub_21B52B410(v219, v283);
  _Block_release(v285);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_162;
  }
}

unint64_t sub_21B676390(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_21B698B34(MEMORY[0x277D84F90]);
  }

  v2 = Strong;
  v3 = sub_21B68FE30();

  return v3;
}

id sub_21B6763FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500, &qword_21B6D8630);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_21B6C8A04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B68C3A0(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21B62AA8C(v4, &qword_27CD93500, &qword_21B6D8630);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  MEMORY[0x21CEF5B80](0);
  result = [a1 collectionView];
  if (result)
  {
    v10 = result;
    v11 = sub_21B6C8974();
    v12 = [v10 cellForItemAtIndexPath_];

    if (v12)
    {
      type metadata accessor for LockScreenPosterCollectionViewCell(0);
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        [v13 transform];
        result = *&v14[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
        if (result)
        {
          v15 = v22;
          v16 = v23;
          v17 = sqrt(v20[0] * v20[0] + v21 * v21);
          [result frame];
          v19 = v18;

          UIPointAdd(v15, v16, v19);
          (*(v6 + 8))(v8, v5);
          return *&v17;
        }

        goto LABEL_12;
      }
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_21B6766D0(char *a1, void *a2, uint64_t a3)
{
  v5 = *&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_layout];
  *&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_layout] = a2;
  v6 = a2;

  v7 = OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode;
  *&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] = a3;
  v8 = *&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = 0.0;
  if (a3 == 4)
  {
    v9 = 1.0;
  }

  [v8 setAlpha_];
  sub_21B67C74C(*&a1[v7]);
  sub_21B67C8E0(2);
  v10 = [a1 collectionView];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  [v10 setScrollEnabled_];

  v12 = [a1 collectionView];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v12 setUserInteractionEnabled_];
}

void sub_21B6767FC(_BYTE *a1, unint64_t a2, void (*a3)(void), uint64_t a4, char a5, void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93D58, &unk_21B6D98D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  sub_21B672440();
  sub_21B67D12C();
  a1[OBJC_IVAR___PBFPosterRackCollectionViewController_isTransitioningToInitialLayoutModeFromFullscreen] = 0;
  v14 = [a1 collectionView];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  v16 = OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode;
  [v14 setScrollEnabled_];

  v17 = [a1 collectionView];
  if (!v17)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v17;
  [v17 setUserInteractionEnabled_];

  if (PUIFeatureEnabled() && a2 <= 6 && ((1 << a2) & 0x61) != 0)
  {
    v19 = [a1 collectionView];
    if (!v19)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = [v19 layer];

    [v21 setZPosition_];
  }

  v22 = *&a1[v16];
  if (v22 != sub_21B67C244())
  {
    v23 = [a1 collectionView];
    if (!v23)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v24 = v23;
    [v23 _setVisibleRectEdgeInsets_];
  }

  v25 = *&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutTransitionAnimationCount];
  if (!v25 || (v26 = v25 - 1, (*&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutTransitionAnimationCount] = v26) == 0))
  {
    sub_21B67C2C8();
    if (a3)
    {
      a3();
    }

    v27 = OBJC_IVAR___PBFPosterRackCollectionViewController_transitionPortalView;
    v28 = *&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_transitionPortalView];
    if (v28)
    {
      [v28 removeFromSuperview];
      v29 = *&a1[v27];
      *&a1[v27] = 0;
    }
  }

  if (a5)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92650, &qword_21B6D7980);
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    v31 = OBJC_IVAR___PBFPosterRackCollectionViewController_stashedLockscreenSnapshots;
    swift_beginAccess();
    sub_21B6992E0(v13, &a1[v31]);
    swift_endAccess();
  }

  if (a6)
  {
    v32 = a6;
    [v32 invalidate];
    v33 = OBJC_IVAR___PBFPosterRackCollectionViewController_finishTaskAssertions;
    swift_beginAccess();
    v34 = v32;
    v35 = sub_21B699A40(&a1[v33], v34);

    v36 = *&a1[v33];
    if (v36 >> 62)
    {
      v37 = sub_21B6C9454();
      if (v37 >= v35)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37 >= v35)
      {
LABEL_22:
        sub_21B699DD8(v35, v37, &qword_28120B330, 0x277D46DB8);
        swift_endAccess();

        return;
      }
    }

    __break(1u);
    goto LABEL_26;
  }
}

void sub_21B676BB4(_BYTE *a1)
{
  if (*&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] != 2)
  {
    v8 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldBeginAlongsideCompactDeflationWhenAppropriate;
LABEL_7:
    a1[v8] = 0;
    return;
  }

  v2 = [a1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 panGestureRecognizer];

    v5 = [a1 collectionView];
    [v4 translationInView_];
    v7 = v6;

    v8 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldBeginAlongsideCompactDeflationWhenAppropriate;
    if (fabs(v7) <= 10.0 && (a1[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldBeginAlongsideCompactDeflationWhenAppropriate] & 1) != 0)
    {
      PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(2, 1, 0, 0, 0);
      return;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_21B676CB8(char *a1, char a2)
{
  if (*&a1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] == 2)
  {
    v4 = [a1 collectionView];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 panGestureRecognizer];

      v7 = [a1 collectionView];
      [v6 translationInView_];
      v9 = v8;

      if (fabs(v9) <= 10.0)
      {
        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(1, a2 & 1, 0, 0, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_21B676DA4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  result = a3(a1, a2);
  if ((*(a5 + 24) & 1) == 0)
  {
    v9 = *(a5 + 8);
    v8 = *(a5 + 16);
    [a1 pruis:*a5 setPrimaryPosterScale:?];

    return [a1 pruis:v9 setPrimaryPosterOffset:v8];
  }

  return result;
}

uint64_t PosterRackCollectionViewController.handle(_:)(void *a1)
{
  v3 = sub_21B6C8A04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500, &qword_21B6D8630);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v26 = result;
    v15 = a1;
    v27 = ([v26 shouldActivateCurrentPoster] ^ 1);
    v28 = 0;
    v29 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = a1;
  v16 = [v1 presentedViewController];
  v17 = [v16 bs_topPresentedViewController];

  if (!v17)
  {
    v30 = sub_21B66AA6C(*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode]);
    if (v30)
    {
      goto LABEL_22;
    }

    v51 = v1;
    sub_21B68C3A0(v12);
    v31 = v51;
    v50 = *(v4 + 48);
    v32 = v50(v12, 1, v3);
    v49 = v4;
    v33 = v32;
    sub_21B62AA8C(v12, &qword_27CD93500, &qword_21B6D8630);
    if (v33 != 1)
    {
      goto LABEL_22;
    }

    result = [v31 collectionView];
    if (result)
    {
      v34 = result;
      [result contentOffset];
      v36 = v35;
      v38 = v37;

      sub_21B68BCC8(v9, v36, v38);
      if (v50(v9, 1, v3) == 1)
      {
        sub_21B62AA8C(v9, &qword_27CD93500, &qword_21B6D8630);
LABEL_22:
        v29 = [v14 isAnimated];
        v28 = v30;
        v27 = 0;
LABEL_23:
        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(v28, v29, v27, 0, 0);
        goto LABEL_24;
      }

      (*(v49 + 32))(v6, v9, v3);
      result = [v51 collectionView];
      if (!result)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v43 = result;
      v44 = [result numberOfSections];

      if (v44 < 2)
      {
        (*(v49 + 8))(v6, v3);
        goto LABEL_22;
      }

      v45 = sub_21B6C89F4();
      v46 = __OFSUB__(v45, 1);
      result = v45 - 1;
      v47 = v49;
      if (!v46)
      {
        sub_21B690260(result, 1, 1);

        (*(v47 + 8))(v6, v3);
        return 1;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_16;
      }
    }
  }

  v18 = [v17 transitionCoordinator];
  if (!v18)
  {
    v39 = [v14 isAnimated];
    v40 = swift_allocObject();
    *(v40 + 16) = v17;
    *(v40 + 24) = v1;
    v56 = sub_21B69F938;
    v57 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_21B63863C;
    v55 = &block_descriptor_73;
    v41 = _Block_copy(&aBlock);
    v17 = v17;
    v42 = v1;

    [v17 dismissViewControllerAnimated:v39 completion:v41];
    _Block_release(v41);
    sub_21B67F6DC(v17);
LABEL_16:

LABEL_24:
    return 1;
  }

  v19 = v18;
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v14;
  v20[4] = v1;
  v56 = sub_21B699EBC;
  v57 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_21B66FF38;
  v55 = &block_descriptor_79;
  v21 = _Block_copy(&aBlock);
  v22 = v15;
  v23 = v17;
  v24 = v1;

  [v19 animateAlongsideTransition:0 completion:v21];

  _Block_release(v21);
  swift_unknownObjectRelease();
  return 1;
}