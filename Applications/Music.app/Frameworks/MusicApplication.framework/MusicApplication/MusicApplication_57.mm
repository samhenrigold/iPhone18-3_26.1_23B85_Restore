id sub_4D8834(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 willMoveToParentViewController:0];
  v7 = *(a2 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState);
  v8 = v7 >> 6;
  if (v7 >> 6 && (v8 != 2 || v7 != 129))
  {
    return result;
  }

  v9 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext;
  v10 = *(a3 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext);
  if (v10)
  {
    v11 = 65;
  }

  else
  {
    v11 = 64;
  }

  *(a2 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (v8)
    {
      if (v8 == 1 || v7 == 128)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [Strong endAppearanceTransition];
    }

    [v13 beginAppearanceTransition:0 animated:v10 != 0];
LABEL_15:
  }

  v14 = *(a3 + v9) != 0;

  return [a1 setEditing:0 animated:v14];
}

void sub_4D8968(uint64_t a1, id a2)
{
  if ((*(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) & 0xC0) == 0x40)
  {
    v2 = [a2 view];
    if (v2)
    {
      v3 = v2;
      [v2 setAlpha:0.0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4D89F4(void *a1, uint64_t a2)
{
  v4 = [a1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  [v4 removeFromSuperview];

  v6 = [a1 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  [v6 setAlpha:1.0];

  v8 = [a1 view];
  if (!v8)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 _setIgnoreBackdropViewsWhenHiding:0];

  v10 = *(a2 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState);
  *(a2 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) = 0x80;
  if (v10 != 128)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      if (v10 >> 6)
      {
        if (v10 >> 6 == 1)
        {
LABEL_11:
          [v12 endAppearanceTransition];

          goto LABEL_12;
        }
      }

      else
      {
        [Strong endAppearanceTransition];
      }

      [v12 beginAppearanceTransition:0 animated:0];
      goto LABEL_11;
    }
  }

LABEL_12:
  [a1 removeFromParentViewController];
  v13 = [a1 contentScrollView];
  if (v13)
  {
    v15 = v13;
    [v13 setContentInsetAdjustmentBehavior:0];
    v14 = [v15 panGestureRecognizer];
    [v14 _setCanPanVertically:1];

    [v15 _setAutomaticContentOffsetAdjustmentEnabled:1];
    [v15 setScrollsToTop:1];
  }
}

void sub_4D8C00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  v8 = a2;
  v7[2] = &v8;

  v5 = sub_1B3840(sub_4DFD8C, v7, v4);

  if ((v5 & 1) == 0)
  {
    a3(v6);
  }
}

double sub_4D8C90(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 16) & 1) == 0)
  {
    v6 = *(a3 + 48);
    *(a3 + 48) = 3;
    sub_4DB5DC(v6);
  }

  v8 = *(a4 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext);
  if (v8)
  {
    v9 = v8 == a3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *(a4 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext) = 0;
    sub_4DB3B8(v8);
  }

  return result;
}

double sub_4D8D20(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_4D8E0C(uint64_t a1, char *a2, id a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext;
  v17 = *&a2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext];
  v18 = v17 != 0;
  v19 = *(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState);
  *(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) = v18;
  if (v19 > 0x3F || ((v18 ^ v19) & 1) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      if (v19 >> 6)
      {
        if (v19 >> 6 == 1)
        {
          [Strong endAppearanceTransition];
LABEL_8:
          [v21 beginAppearanceTransition:1 animated:v17 != 0];
          goto LABEL_9;
        }

        if (v19 == 128)
        {
          goto LABEL_8;
        }
      }

LABEL_9:
    }
  }

  v22 = [a3 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [v22 superview];

  v25 = sub_4D3DD0();
  v26 = v25;
  if (v24)
  {

    if (v24 == v26)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v27 = *&a2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView];
  v28 = [a3 view];
  [v27 _addContentSubview:v28 atBack:0];

  v29 = [a3 view];
  if (!v29)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 setAlpha:0.0];

LABEL_17:
  v31 = [a3 view];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  if (*(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame + 24) <= 0.0)
  {
    v33 = 1;
  }

  else
  {
    swift_beginAccess();
    v33 = *(a4 + 16);
  }

  [v32 setHidden:v33];

  [a3 setEditing:objc_msgSend(a2 animated:{"isEditing"), *&a2[v16] != 0}];
  sub_4DC608(a5, a6, a7, a8);
}

void sub_4D90A8(uint64_t a1, id a2)
{
  v4 = *(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState);
  *(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) = -127;
  if (v4 != 129)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if (v4 >> 6)
      {
        if (v4 >> 6 == 1)
        {
          [Strong endAppearanceTransition];
        }

        [v6 beginAppearanceTransition:1 animated:0];
      }

      [v6 endAppearanceTransition];
    }
  }

  v7 = [a2 view];
  if (v7)
  {
    v8 = v7;
    [v7 setHidden:*(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame + 24) <= 0.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_4D91B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 superview];

  v11 = sub_4D3DD0();
  v12 = v11;
  if (!v10)
  {

    goto LABEL_6;
  }

  if (v10 != v12)
  {
LABEL_6:
    v13 = *(a2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView);
    v14 = [a1 view];
    [v13 _addContentSubview:v14 atBack:0];
  }

  v15 = [a1 view];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  if (*(a3 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame + 24) <= 0.0)
  {
    v17 = 1;
  }

  else
  {
    swift_beginAccess();
    v17 = *(a4 + 16);
  }

  [v16 setHidden:v17];

  v18 = [a1 view];
  if (v18)
  {
    v19 = v18;
    [v18 setAlpha:1.0];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_4D934C(uint64_t a1, uint64_t a2, id a3)
{
  v5 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext;
  v6 = *(a2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext);
  if (v6)
  {
    v7 = 65;
  }

  else
  {
    v7 = 64;
  }

  v8 = *(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState);
  *(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) = v7;
  v9 = v8 >> 6;
  if (v8 >> 6 == 1 && (((v6 != 0) ^ v8) & 1) == 0)
  {
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v11 = Strong;
  if (v9)
  {
    if (v9 == 1 || v8 == 128)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [Strong endAppearanceTransition];
  }

  [v11 beginAppearanceTransition:0 animated:v6 != 0];
LABEL_13:

LABEL_14:
  v12 = *(a2 + v5) != 0;

  return [a3 setEditing:0 animated:v12];
}

void sub_4D9454(void *a1, double a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_4D94C0(uint64_t a1, id a2)
{
  v3 = *(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState);
  *(a1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) = 0x80;
  if (v3 != 128)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if (v3 >> 6)
      {
        if (v3 >> 6 == 1)
        {
LABEL_8:
          [v5 endAppearanceTransition];

          goto LABEL_9;
        }
      }

      else
      {
        [Strong endAppearanceTransition];
      }

      [v5 beginAppearanceTransition:0 animated:0];
      goto LABEL_8;
    }
  }

LABEL_9:
  v6 = [a2 view];
  if (v6)
  {
    v7 = v6;
    [v6 setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

double sub_4D95B8(uint64_t a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    v7 = v6;
    v8 = swift_getObjectType();
    (*(v7 + 96))(v8, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_4D9818(uint64_t a1)
{
  v2 = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VerticalStackViewController();
  objc_msgSendSuper2(&v5, "viewDidDisappear:", v2 & 1);
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState);
  *(v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState) = 0x80;
  sub_4D9A30(v3);
  (*&stru_158.segname[swift_isaMask & *v1])(0);
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_artworkVideoPlaybackCoordinator))
  {

    sub_222C30();
  }

  return result;
}

void sub_4D9A30(int a1)
{
  v2 = v1;
  v83 = sub_AB7C10();
  v4 = *(v83 - 8);
  __chkstk_darwin();
  v82 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_AB7C50();
  v6 = *(v81 - 8);
  __chkstk_darwin();
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState;
  v9 = v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState];
  if (!(v9 >> 6))
  {
    if (a1 > 0x3Fu)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (((v9 ^ a1) & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v9 >> 6 == 1)
  {
    if ((a1 & 0xC0) != 0x40)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (v9 == 128)
  {
    if (a1 == 128)
    {
      return;
    }
  }

  else if (a1 == 129)
  {
    return;
  }

LABEL_12:
  v10 = sub_4D3DD0();
  [v10 contentOffset];
  v12 = v11;
  v14 = v13;

  v15 = [v2 view];
  if (!v15)
  {
    goto LABEL_87;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;

  v91 = v2[v8];
  v21 = *&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
  if (v21 >> 62)
  {
LABEL_84:
    v22 = sub_ABB060();
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_80:
    sub_4D62B0();
    return;
  }

  v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  if (!v22)
  {
    goto LABEL_80;
  }

LABEL_15:
  v85 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
  v84 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsLayout;
  v90 = v21 & 0xC000000000000001;
  v86 = v21 & 0xFFFFFFFFFFFFFF8;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v87 = v91 >> 6;
  v77 = &v93;
  v76 = (v4 + 8);
  v75 = v6 + 1;

  v26 = 0;
  v74 = 1107296256;
  v89 = v21;
  v88 = v22;
  while (1)
  {
    if (v90)
    {
      v28 = sub_35F8D4(v26, v21);
    }

    else
    {
      if (v26 >= *(v86 + 16))
      {
        goto LABEL_83;
      }

      v28 = *(v21 + 8 * v26 + 32);
    }

    v6 = v28;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (qword_DE6D80 != -1)
    {
      swift_once();
    }

    v4 = qword_E0BF40;
    if (objc_getAssociatedObject(v6, qword_E0BF40))
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
    }

    v93 = v101;
    aBlock = v100;
    if (*(&v101 + 1))
    {
      type metadata accessor for VerticalStackViewController.Item();
      if (swift_dynamicCast())
      {
        v30 = v97;
        goto LABEL_33;
      }
    }

    else
    {
      sub_9BC10(&aBlock);
    }

    v31 = type metadata accessor for VerticalStackViewController.Item();
    v32 = objc_allocWithZone(v31);
    v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
    v33 = &v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
    *v33 = UIEdgeInsetsZero.top;
    v33[1] = left;
    v33[2] = bottom;
    v33[3] = right;
    v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
    v34 = &v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
    *v34 = 0;
    *(v34 + 4) = 0;
    v34[10] = 1;
    *&v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
    *&v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v35 = &v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
    *v35 = 0u;
    v35[1] = 0u;
    v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
    v36 = &v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
    *v36 = 0;
    *(v36 + 1) = 0;
    v36[16] = 1;
    swift_unknownObjectWeakAssign();
    v99.receiver = v32;
    v99.super_class = v31;
    v30 = objc_msgSendSuper2(&v99, "init");
    objc_setAssociatedObject(v6, v4, v30, &dword_0 + 1);
LABEL_33:
    v37 = sub_4DC264(v12, v14, v18, v20);

    if (v37)
    {
      break;
    }

    if (objc_getAssociatedObject(v6, v4))
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
    }

    v93 = v101;
    aBlock = v100;
    if (*(&v101 + 1))
    {
      type metadata accessor for VerticalStackViewController.Item();
      if (swift_dynamicCast())
      {
        v51 = v97;
        v21 = v89;
        v27 = v88;
        v52 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
        goto LABEL_50;
      }
    }

    else
    {
      sub_9BC10(&aBlock);
    }

    v53 = type metadata accessor for VerticalStackViewController.Item();
    v54 = objc_allocWithZone(v53);
    v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
    v55 = &v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
    *v55 = UIEdgeInsetsZero.top;
    v55[1] = left;
    v55[2] = bottom;
    v55[3] = right;
    v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
    v56 = &v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
    *v56 = 0;
    *(v56 + 4) = 0;
    v56[10] = 1;
    *&v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
    *&v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v57 = &v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
    *v57 = 0u;
    v57[1] = 0u;
    v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
    v58 = &v54[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
    *v58 = 0;
    *(v58 + 1) = 0;
    v58[16] = 1;
    v52 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
    swift_unknownObjectWeakAssign();
    v98.receiver = v54;
    v98.super_class = v53;
    v51 = objc_msgSendSuper2(&v98, "init");
    objc_setAssociatedObject(v6, v4, v51, &dword_0 + 1);
    v21 = v89;
    v27 = v88;
LABEL_50:
    cache = v52[8].cache;
    v4 = cache[v51];
    cache[v51] = 0x80;
    if (v4 != 128)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (v4 >> 6)
        {
          if (v4 >> 6 == 1)
          {
            v4 = Strong;
            [Strong endAppearanceTransition];
LABEL_78:

            v6 = v4;
            goto LABEL_17;
          }

          v4 = Strong;
          [Strong beginAppearanceTransition:0 animated:0];
        }

        else
        {
          v4 = Strong;
          [Strong endAppearanceTransition];
          [v4 beginAppearanceTransition:0 animated:0];
        }

        [v4 endAppearanceTransition];
        goto LABEL_78;
      }
    }

    v6 = v51;
LABEL_17:

    ++v26;
    if (v29 == v27)
    {

      goto LABEL_80;
    }
  }

  if (v91 < 0x81)
  {
    goto LABEL_40;
  }

  v38 = [v6 view];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 superview];

    if (!v40 || (v41 = *&v2[v85], v40, v40 != v41))
    {
      v42 = *&v2[v85];
      v43 = [v6 view];
      [v42 _addContentSubview:v43 atBack:0];

      if ((v2[v84] & 1) == 0)
      {
        v2[v84] = 1;
        sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
        v79 = sub_ABA150();
        v44 = swift_allocObject();
        *(v44 + 16) = v2;
        v94 = sub_4DF774;
        v95 = v44;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = v74;
        *&v93 = sub_1B5EB4;
        *(&v93 + 1) = &block_descriptor_141_0;
        v78 = _Block_copy(&aBlock);
        v45 = v2;

        v46 = v80;
        sub_AB7C30();
        *&aBlock = _swiftEmptyArrayStorage;
        sub_8FFF0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
        sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
        v47 = v82;
        v48 = v83;
        sub_ABABB0();
        v49 = v78;
        v50 = v79;
        sub_ABA160();
        (*v76)(v47, v48);
        (*v75)(v46, v81);
        _Block_release(v49);
      }
    }

LABEL_40:
    if (objc_getAssociatedObject(v6, v4))
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
    }

    v93 = v101;
    aBlock = v100;
    if (*(&v101 + 1))
    {
      type metadata accessor for VerticalStackViewController.Item();
      if (swift_dynamicCast())
      {
        v61 = v97;
        v21 = v89;
        v62 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
        goto LABEL_62;
      }
    }

    else
    {
      sub_9BC10(&aBlock);
    }

    v63 = type metadata accessor for VerticalStackViewController.Item();
    v64 = objc_allocWithZone(v63);
    v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
    v65 = &v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
    *v65 = UIEdgeInsetsZero.top;
    v65[1] = left;
    v65[2] = bottom;
    v65[3] = right;
    v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
    v66 = &v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
    *v66 = 0;
    *(v66 + 4) = 0;
    v66[10] = 1;
    *&v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
    *&v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v67 = &v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
    *v67 = 0u;
    v67[1] = 0u;
    v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
    v68 = &v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
    *v68 = 0;
    *(v68 + 1) = 0;
    v68[16] = 1;
    v62 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
    swift_unknownObjectWeakAssign();
    v96.receiver = v64;
    v96.super_class = v63;
    v61 = objc_msgSendSuper2(&v96, "init");
    objc_setAssociatedObject(v6, v4, v61, &dword_0 + 1);
    v21 = v89;
LABEL_62:
    v69 = v62[8].cache;
    v70 = v69[v61];
    v69[v61] = v91;
    if (v87)
    {
      if (v87 == 1)
      {
        if ((v70 & 0xC0) != 0x40)
        {
          goto LABEL_73;
        }

LABEL_67:
        if ((v70 ^ v91))
        {
          goto LABEL_73;
        }

LABEL_16:

        [v6 setEditing:objc_msgSend(v2 animated:{"isEditing"), 0}];
        v27 = v88;
        goto LABEL_17;
      }

      if (v91 == 128)
      {
        if (v70 != 128)
        {
          goto LABEL_73;
        }

        goto LABEL_16;
      }

      if (v70 == 129)
      {
        goto LABEL_16;
      }
    }

    else if (v70 <= 0x3F)
    {
      goto LABEL_67;
    }

LABEL_73:
    v71 = swift_unknownObjectWeakLoadStrong();
    if (v71)
    {
      v4 = v71;
      sub_69014(v70, v91, v72, v73);

      v61 = v4;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_87:
  __break(1u);
}

void sub_4DA7BC(uint64_t a1)
{
  v22.receiver = v1;
  v22.super_class = type metadata accessor for VerticalStackViewController();
  objc_msgSendSuper2(&v22, "viewDidLoad");
  v2 = [v1 view];
  if (!v2)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  v4 = qword_E71898;
  [v3 setBackgroundColor:qword_E71898];

  v5 = sub_4D3DD0();
  v6 = [v1 view];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  [v6 bounds];
  [v5 setFrame:?];

  v8 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] setAutoresizingMask:18];
  [*&v1[v8] setShowsVerticalScrollIndicator:1];
  [*&v1[v8] setShowsHorizontalScrollIndicator:0];
  [*&v1[v8] setAlwaysBounceVertical:1];
  [*&v1[v8] setBackgroundColor:v4];
  [*&v1[v8] setDelegate:v1];
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 addSubview:*&v1[v8]];

    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
    if (v11 >> 62)
    {
      v12 = sub_ABB060();
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      if (v12)
      {
LABEL_8:
        if (v12 >= 1)
        {

          for (i = 0; i != v12; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v14 = sub_35F8D4(i, v11);
            }

            else
            {
              v14 = *(v11 + 8 * i + 32);
            }

            v15 = v14;
            [v14 loadViewIfNeeded];
          }

          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

LABEL_15:
    sub_4D55B0();
    v16 = *&v1[v8];
    type metadata accessor for VerticalStackArtworkVideoPlaybackCoordinator();
    v17 = swift_allocObject();
    v17[3] = 0;
    v17[4] = 0;
    swift_unknownObjectWeakInit();
    v17[2] = v16;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v17[3];
    v20 = v17[4];
    v17[3] = sub_4DF76C;
    v17[4] = v18;
    v21 = v16;

    sub_17654(v19, v20);

    *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_artworkVideoPlaybackCoordinator] = v17;

    return;
  }

LABEL_21:
  __break(1u);
}

void *sub_4DAAC8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  swift_beginAccess();

  v5 = sub_130EE8(v4, v3);

  return v5;
}

void sub_4DABAC(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for VerticalStackViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  v2 = sub_4D3DD0();
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;

    v13 = &v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
    v15 = *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 8];
    v16 = *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 16];
    v17 = *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 24];
    *v13 = v4;
    *(v13 + 1) = v6;
    *(v13 + 2) = v10;
    *(v13 + 3) = v12;
    sub_4DB494(v14, v15, v16, v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_4DACC4(uint64_t a1, char a2)
{
  v4 = a1;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for VerticalStackViewController();
  v19 = v4;
  objc_msgSendSuper2(&v27, "setEditing:animated:", v4 & 1, a2 & 1);
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
  if (!(v5 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return;
    }

    goto LABEL_3;
  }

  v6 = sub_ABB060();
  if (v6)
  {
LABEL_3:
    if (v6 < 1)
    {
      __break(1u);
      return;
    }

    v20 = *&UIEdgeInsetsZero.top;
    v21 = *&UIEdgeInsetsZero.bottom;

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_35F8D4(v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      if (qword_DE6D80 != -1)
      {
        swift_once();
      }

      v10 = qword_E0BF40;
      if (objc_getAssociatedObject(v9, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
      }

      v26[0] = v24;
      v26[1] = v25;
      if (*(&v25 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v11 = v22;
          goto LABEL_20;
        }
      }

      else
      {
        sub_9BC10(v26);
      }

      v12 = type metadata accessor for VerticalStackViewController.Item();
      v13 = objc_allocWithZone(v12);
      v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
      v14 = &v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
      *v14 = v20;
      v14[1] = v21;
      v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
      v15 = &v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      *v15 = 0;
      *(v15 + 4) = 0;
      v15[10] = 1;
      *&v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
      *&v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v16 = &v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
      *v16 = 0u;
      v16[1] = 0u;
      v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
      v17 = &v13[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
      *v17 = 0;
      *(v17 + 1) = 0;
      v17[16] = 1;
      swift_unknownObjectWeakAssign();
      v23.receiver = v13;
      v23.super_class = v12;
      v11 = objc_msgSendSuper2(&v23, "init");
      objc_setAssociatedObject(v9, v10, v11, &dword_0 + 1);
LABEL_20:
      v18 = v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState];

      if (!(v18 >> 6) || v18 >> 6 == 2 && v18 == 129)
      {
        [v9 setEditing:v19 & 1 animated:a2 & 1];
      }

      ++v7;

      if (v6 == v7)
      {

        return;
      }
    }
  }
}

double sub_4DB044(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for VerticalStackViewController();
  objc_msgSendSuper2(&v16, "preferredContentSizeDidChangeForChildContentContainer:", a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
    v15 = v3;
    __chkstk_darwin();
    v14[2] = &v15;
    swift_unknownObjectRetain();

    v6 = sub_1B3840(sub_4DF750, v14, v5);

    if (v6)
    {
      v7 = sub_4D3C64();
      v8 = v7;
      if (v7[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        [Strong loadViewIfNeeded];

        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          v12 = [v10 contentScrollView];

          if (v12)
          {
            swift_unknownObjectRelease();

            return result;
          }
        }
      }

      else
      {
        v13 = *&v7[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];

        if ((v13 & 0x100) == 0)
        {
          goto LABEL_11;
        }
      }

      sub_4D55B0();
    }

LABEL_11:
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_4DB3B8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext);
  if (v2)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 || v2 == a1;
  if (!v4 && *(a1 + 48) != 3)
  {
    *(a1 + 16) = 1;
    swift_beginAccess();
    v6 = *(a1 + 40);
    swift_beginAccess();

    sub_1AF05C(0, 0, v6);
    swift_endAccess();
  }

  return result;
}

void sub_4DB494(double a1, double a2, double a3, double a4)
{
  type metadata accessor for CGPoint(0);
  if (sub_AB38D0() & 1) != 0 || (type metadata accessor for CGSize(0), (sub_AB38D0()))
  {
    type metadata accessor for CGSize(0);
    if (sub_AB38D0())
    {
      sub_4D55B0();
      (*(&stru_108.reloff + (swift_isaMask & *v4)))(v5, v6, v7, v8);
    }

    sub_4D5FB4();
    sub_4D62B0();
  }
}

void sub_4DB5DC(unsigned __int8 a1)
{
  v2 = *(v1 + 48);
  if (v2 != a1)
  {
    if (a1 > 1u)
    {
      if (a1 == 2 && v2 == 3)
      {
        v3 = (v1 + 40);
        swift_beginAccess();
        v9 = *(v1 + 40);
        v10 = *(v9 + 16);
        if (v10)
        {

          v11 = v9 + 40;
          do
          {
            v12 = *(v11 - 8);

            v12(v13);

            v11 += 16;
            --v10;
          }

          while (v10);
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    else if (a1)
    {
      if (v2 == 2)
      {
        v3 = (v1 + 32);
        swift_beginAccess();
        v14 = *(v1 + 32);
        v15 = *(v14 + 16);
        if (v15)
        {

          v16 = v14 + 40;
          do
          {
            v17 = *(v16 - 8);

            v17(v18);

            v16 += 16;
            --v15;
          }

          while (v15);
          goto LABEL_19;
        }

LABEL_20:
        *v3 = _swiftEmptyArrayStorage;

        return;
      }
    }

    else if (v2 == 1)
    {
      v3 = (v1 + 24);
      swift_beginAccess();
      v4 = *(v1 + 24);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = v4 + 40;
        do
        {
          v7 = *(v6 - 8);

          v7(v8);

          v6 += 16;
          --v5;
        }

        while (v5);
LABEL_19:

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    sub_ABAD90(73);
    v19._object = 0x8000000000B68220;
    v19._countAndFlagsBits = 0xD000000000000041;
    sub_AB94A0(v19);
    sub_ABAF70();
    v20._countAndFlagsBits = 544175136;
    v20._object = 0xE400000000000000;
    sub_AB94A0(v20);
    sub_ABAF70();
    sub_ABAFD0();
    __break(1u);
  }
}

uint64_t sub_4DB85C()
{

  return swift_deallocClassInstance();
}

void sub_4DB9F0(char a1)
{
  v2 = a1 & 1;
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay) != v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsLayout) == 1)
      {
      }

      else
      {
        *(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsLayout) = 1;
        v18 = Strong;
        sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
        v17 = sub_ABA150();
        v12 = swift_allocObject();
        *(v12 + 16) = v18;
        aBlock[4] = sub_4DFD48;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B5EB4;
        aBlock[3] = &block_descriptor_158_1;
        v16 = _Block_copy(aBlock);
        v18 = v18;

        sub_AB7C30();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_8FFF0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
        sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
        sub_ABABB0();
        v14 = v16;
        v13 = v17;
        sub_ABA160();
        (*(v4 + 8))(v6, v3);
        (*(v8 + 8))(v10, v7);
        _Block_release(v14);
      }
    }
  }
}

void sub_4DBD3C(uint64_t a1, int a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod);
  if (*(v2 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong loadViewIfNeeded];

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 contentScrollView];

      if (v9)
      {

        if ((a2 & 0x10100) == 0)
        {
LABEL_14:
          if (a2)
          {
            return;
          }

          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    v10 = 0;
    LOBYTE(v11) = 0;
    LOBYTE(v12) = 1;
    if ((a2 & 0x10000) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = *v5;
    v11 = *(v5 + 4);
    v12 = (v11 >> 8) & 1;
    if ((a2 & 0x10000) != 0)
    {
      goto LABEL_15;
    }
  }

  if (v12)
  {
    if ((a2 & 0x100) != 0)
    {
      return;
    }

    goto LABEL_15;
  }

  if ((a2 & 0x100) == 0)
  {
    if ((v11 & 1) == 0)
    {
      if ((a2 & 1) == 0 && v10 == a1)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_4D55B0();
  }

  sub_4DD2E8();
}

void sub_4DBE88(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      if (a1)
      {
        type metadata accessor for VerticalStackViewController();
        v6 = a1;
        v7 = sub_ABA790();

        if (v7)
        {
          return;
        }
      }

      else
      {
      }
    }

    else if (!a1)
    {
      return;
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    [v8 loadViewIfNeeded];

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 contentScrollView];

      if (v11)
      {
        v12 = [v11 panGestureRecognizer];
        [v12 _setCanPanVertically:0];

        [v11 setContentInsetAdjustmentBehavior:2];
        [v11 _setAutomaticContentOffsetAdjustmentEnabled:0];
        [v11 setScrollsToTop:0];
        [v11 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
        v13 = v1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod;
        if (*(v1 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10))
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          [v14 loadViewIfNeeded];

          v15 = swift_unknownObjectWeakLoadStrong();
          if (v15)
          {
            v16 = v15;
            v17 = [v15 contentScrollView];

            if (v17)
            {
            }
          }
        }

        else
        {
          v18 = *(v13 + 8);
          if ((v18 & 0x100) == 0 && (v18 & 1) == 0 && *v13 == 2)
          {
            [v11 setScrollEnabled:0];
          }
        }
      }
    }

    sub_4DD2E8();
  }
}

double sub_4DC0BC(double a1, double a2, double a3, double a4, uint64_t a5, int a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ((a6 & 0x10000) != 0)
    {
      if (*(v6 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10))
      {
        v15 = swift_unknownObjectWeakLoadStrong();
        [v15 loadViewIfNeeded];

        v16 = swift_unknownObjectWeakLoadStrong();
        if (!v16)
        {
          goto LABEL_13;
        }

        v17 = v16;
        v18 = [v16 contentScrollView];

        if (!v18)
        {
          goto LABEL_13;
        }
      }

      else if ((*(v6 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8) & 0x100) != 0)
      {
LABEL_13:
        [v13 preferredContentSize];
        goto LABEL_14;
      }
    }

    else if ((a6 & 0x100) != 0)
    {
      goto LABEL_13;
    }

    v19 = [v13 contentScrollView];
    if (!v19)
    {
      Width = sub_4DC0BC(a1, a2, a3, a4, 0, 256);
      goto LABEL_15;
    }

    v20 = v19;
    [v19 contentSize];

LABEL_14:
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    Width = CGRectGetWidth(v22);
LABEL_15:

    return Width;
  }

  return 0.0;
}

char *sub_4DC264(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10 = (v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame);
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  if (CGRectIntersectsRect(*(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame), v31))
  {
    return (&dword_0 + 1);
  }

  if (*(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong loadViewIfNeeded];

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v13 = result;
    v14 = [result contentScrollView];

    if (v14)
    {

      goto LABEL_8;
    }

    return 0;
  }

  if ((*(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8) & 0x100) != 0)
  {
    return 0;
  }

LABEL_8:
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  v16 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers;
  v17 = *&result[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
  if (!(v17 >> 62))
  {
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_11;
    }

LABEL_21:
    v19 = swift_unknownObjectWeakLoadStrong();
    goto LABEL_22;
  }

  if (!sub_ABB060())
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((v17 & 0xC000000000000001) != 0)
  {

    v18 = sub_35F8D4(0, v17);
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_45;
    }

    v18 = *(v17 + 32);
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    if (v19)
    {
      v20 = v19;
      sub_13C80(0, &qword_DE7500, UIViewController_ptr);
      v21 = sub_ABA790();

      if ((v21 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_23:

    goto LABEL_25;
  }

LABEL_22:
  v18 = v19;
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_24:
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  MinY = CGRectGetMinY(v29);
  if (MinY <= CGRectGetMinY(*v10))
  {

    return (&dword_0 + 1);
  }

LABEL_25:
  v4 = *&v15[v16];
  if (!(v4 >> 62))
  {
    result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_27;
    }

LABEL_39:
    v25 = swift_unknownObjectWeakLoadStrong();
    goto LABEL_40;
  }

  result = sub_ABB060();
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_27:
  v5 = (result - 1);
  if (__OFSUB__(result, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_46:

    v23 = sub_35F8D4(v5, v4);

LABEL_32:
    v24 = swift_unknownObjectWeakLoadStrong();
    v25 = v24;
    if (v23)
    {
      if (!v24)
      {

        return 0;
      }

      sub_13C80(0, &qword_DE7500, UIViewController_ptr);
      v26 = sub_ABA790();

      if ((v26 & 1) == 0)
      {

        return 0;
      }

LABEL_42:
      v30.origin.x = a1;
      v30.origin.y = a2;
      v30.size.width = a3;
      v30.size.height = a4;
      v27 = CGRectGetMinY(v30);
      MaxY = CGRectGetMaxY(*v10);

      return (MaxY <= v27);
    }

LABEL_40:
    if (v25)
    {

      return 0;
    }

    goto LABEL_42;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    v23 = *(v4 + 8 * v5 + 32);
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_4DC608(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = (v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame);
  v10 = *(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame + 24);
  if (v10 > 0.0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = *v9;
      v14 = v9[1];
      v15 = v9[2];
      v45.origin.x = *v9;
      v45.origin.y = v14;
      v45.size.width = v15;
      v45.size.height = v10;
      v16 = swift_unknownObjectWeakLoadStrong();
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = v16;
      v18 = [v16 contentScrollView];

      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod;
      if (*(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10))
      {
        v20 = swift_unknownObjectWeakLoadStrong();
        [v20 loadViewIfNeeded];

        v21 = swift_unknownObjectWeakLoadStrong();
        if (v21)
        {
          v22 = v21;
          v23 = [v21 contentScrollView];

          if (v23)
          {

            v24 = 0;
            LOBYTE(v25) = 1;
LABEL_16:
            v28 = OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset;
            v29 = *(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset);
            v30 = 1;
            *(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset) = 1;
            sub_4DC978(v24, v25 & 1, v4, v12, &v45, v18, v13, v14, v15, v10, a1, a2, a3, a4);
            v31 = swift_unknownObjectWeakLoadStrong();
            v32 = 0uLL;
            if (v31)
            {
              v33 = v31;
              v34 = [v31 contentScrollView];

              if (v34)
              {
                [v34 contentOffset];
                v42 = v35;
                v44 = v36;

                *&v32 = v42;
                v30 = 0;
                *(&v32 + 1) = v44;
              }

              else
              {
                v30 = 1;
                v32 = 0uLL;
              }
            }

            v37 = v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset;
            *v37 = v32;
            *(v37 + 16) = v30;
            *(v4 + v28) = v29;
          }
        }
      }

      else
      {
        v25 = *(v19 + 8);
        if ((v25 & 0x100) == 0)
        {
          v24 = *v19;
          goto LABEL_16;
        }
      }

      [v18 setShowsVerticalScrollIndicator:{0, v42}];

LABEL_22:
      v48.origin.x = a1;
      v48.origin.y = a2;
      v48.size.width = a3;
      v48.size.height = a4;
      Width = CGRectGetWidth(v48);
      v39 = swift_unknownObjectWeakLoadStrong();
      if (!v39)
      {
LABEL_25:

        return;
      }

      v40 = v39;
      v41 = [v39 view];

      if (v41)
      {
        [v41 setFrame:{v45.origin.x, v45.origin.y, Width, v45.size.height}];

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
      return;
    }
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v43 = [v26 view];

  if (!v43)
  {
    __break(1u);
    goto LABEL_28;
  }

  v47.origin.x = a1;
  v47.origin.y = a2;
  v47.size.width = a3;
  v47.size.height = a4;
  CGRectGetWidth(v47);
  [v43 frame];
  [v43 setFrame:?];
}

uint64_t sub_4DC978(uint64_t a1, char a2, uint64_t a3, uint64_t a4, CGRect *a5, void *a6, CGFloat a7, CGFloat a8, CGFloat a9, double bottom, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14)
{
  v20 = a3;
  top = a7;
  v28 = &off_E0B000;
  v29 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
  if ((a2 & 1) == 0 && a1 == 2)
  {
    goto LABEL_32;
  }

  v16 = OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset;
  v96 = *(a3 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset);
  *(a3 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset) = 1;
  rect = a7;
  MinY = CGRectGetMinY(*&a7);
  v103.origin.x = a11;
  v103.origin.y = a12;
  v103.size.width = a13;
  v103.size.height = a14;
  v99 = a12;
  v100 = a11;
  v97 = a8;
  v98 = a13;
  if (MinY >= CGRectGetMinY(v103))
  {
    v38 = *(a4 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
    if (v38 >> 62)
    {
      result = sub_ABB060();
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_9:
        if ((v38 & 0xC000000000000001) != 0)
        {
          goto LABEL_99;
        }

        if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
        {
          v15 = *(v38 + 32);
          goto LABEL_12;
        }

        __break(1u);
        return result;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    goto LABEL_18;
  }

LABEL_4:
  v104.origin.x = a11;
  v104.origin.y = a12;
  v104.size.width = a13;
  v104.size.height = a14;
  a5->origin.y = CGRectGetMinY(v104);
  v105.origin.x = a11;
  v105.origin.y = a12;
  v105.size.width = a13;
  v105.size.height = a14;
  v94 = CGRectGetMinY(v105);
  v31 = bottom;
  v106.origin.x = rect;
  v106.origin.y = a8;
  v106.size.width = a9;
  v106.size.height = bottom;
  v32 = v94 - CGRectGetMinY(v106);
  v107.origin.x = a11;
  v107.origin.y = a12;
  v33 = v32;
  v107.size.width = a13;
  v107.size.height = a14;
  Height = CGRectGetHeight(v107);
  v108.origin.x = rect;
  v108.origin.y = a8;
  v35 = a9;
  v108.size.width = a9;
  v36 = v31;
  v108.size.height = v31;
  v37 = CGRectGetHeight(v108) - v33;
  if (v37 >= Height)
  {
    v37 = Height;
  }

LABEL_24:
  a5->size.height = v37;
  while (1)
  {
    v14 = &selRef__authenticateReturningError_;
    [a6 contentOffset];
    [a6 setContentOffset:?];
    v47 = swift_unknownObjectWeakLoadStrong();
    v48 = 0uLL;
    bottom = v36;
    if (v47)
    {
      v15 = v47;
      v49 = [v47 contentScrollView];

      a9 = v35;
      top = rect;
      if (!v49)
      {
        v52 = 1;
        a8 = v97;
        v53 = v96;
        v48 = 0uLL;
        goto LABEL_31;
      }

      [v49 contentOffset];
      v93 = v50;
      v95 = v51;

      *&v48 = v93;
      v52 = 0;
      *(&v48 + 1) = v95;
      a8 = v97;
    }

    else
    {
      v52 = 1;
      a9 = v35;
      a8 = v97;
      top = rect;
    }

    v53 = v96;
LABEL_31:
    v54 = v20 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset;
    *v54 = v48;
    *(v54 + 16) = v52;
    *(v16 + v20) = v53;
    a13 = v98;
    a12 = v99;
    a11 = v100;
LABEL_32:
    v28 = v28[494];
    v38 = *(v28 + a4);
    if (v38 >> 62)
    {
      v55 = sub_ABB060();
      if (!v55)
      {
LABEL_45:
        v20 += *&v29[11].bottom;
        v56 = swift_unknownObjectWeakLoadStrong();
        goto LABEL_46;
      }
    }

    else
    {
      v55 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
      if (!v55)
      {
        goto LABEL_45;
      }
    }

    v15 = v55 - 1;
    if (__OFSUB__(v55, 1))
    {
      __break(1u);
LABEL_61:

      v15 = sub_35F8D4(v15, v38);

      goto LABEL_39;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v15 >= *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_63;
    }

    v15 = *(v38 + 8 * v15 + 32);
LABEL_39:
    v20 += *&v29[11].bottom;
    v56 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      if (!v56)
      {

        goto LABEL_50;
      }

      v57 = a6;
      v58 = v56;
      sub_13C80(0, &qword_DE7500, UIViewController_ptr);
      v59 = sub_ABA790();

      a6 = v57;
      if ((v59 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

LABEL_46:
    if (v56)
    {

      goto LABEL_50;
    }

LABEL_48:
    v115.origin.x = top;
    v115.origin.y = a8;
    v115.size.width = a9;
    v115.size.height = bottom;
    v60 = bottom;
    v61 = top;
    MaxY = CGRectGetMaxY(v115);
    v116.origin.x = a11;
    v116.origin.y = a12;
    v116.size.width = a13;
    v116.size.height = a14;
    if (MaxY < CGRectGetMaxY(v116))
    {
      v117.origin.x = a11;
      v117.origin.y = a12;
      v117.size.width = a13;
      v117.size.height = a14;
      v63 = CGRectGetMaxY(v117);
      v118.origin.x = v61;
      v118.origin.y = a8;
      v118.size.width = a9;
      v118.size.height = v60;
      a5->size.height = a5->size.height + v63 - CGRectGetMaxY(v118);
    }

LABEL_50:
    v29 = &UIEdgeInsetsZero;
    top = UIEdgeInsetsZero.top;
    bottom = CGRectGetMinY(*a5);
    v119.origin.x = a11;
    v119.origin.y = a12;
    v119.size.width = a13;
    v119.size.height = a14;
    v64 = CGRectGetMinY(v119);
    v65 = sub_4D3DD0();
    v16 = &selRef_setSubtitleText_;
    [v65 adjustedContentInset];
    v67 = v66;

    v14 = &off_E0B000;
    if (bottom >= v64 + v67)
    {
      goto LABEL_71;
    }

    v38 = *(v28 + a4);
    if (!(v38 >> 62))
    {
      if (!*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_65;
      }

      goto LABEL_53;
    }

LABEL_64:
    if (!sub_ABB060())
    {
LABEL_65:
      v69 = swift_unknownObjectWeakLoadStrong();
LABEL_66:
      v68 = v69;
      if (!v69)
      {
        goto LABEL_70;
      }

LABEL_67:

      goto LABEL_68;
    }

LABEL_53:
    if ((v38 & 0xC000000000000001) != 0)
    {

      v68 = sub_35F8D4(0, v38);
    }

    else
    {
      if (!*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_95;
      }

      v68 = *(v38 + 32);
    }

    v69 = swift_unknownObjectWeakLoadStrong();
    if (!v68)
    {
      goto LABEL_66;
    }

    if (!v69)
    {
      goto LABEL_67;
    }

    v70 = a6;
    v71 = v69;
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v72 = sub_ABA790();

    a6 = v70;
    v16 = &selRef_setSubtitleText_;

    if (v72)
    {
      goto LABEL_70;
    }

LABEL_68:
    v73 = swift_unknownObjectWeakLoadStrong();
    if (v73)
    {
      v74 = v73;
      v75 = [v73 isEditing];

      if (v75)
      {
LABEL_70:
        v120.origin.x = a11;
        v120.origin.y = a12;
        v120.size.width = a13;
        v120.size.height = a14;
        v76 = CGRectGetMinY(v120);
        [*&v14[490][a4] v16[29]];
        top = v76 + v77 - CGRectGetMinY(*a5);
      }
    }

LABEL_71:
    bottom = v29->bottom;
    a9 = CGRectGetMaxY(*a5);
    v121.origin.x = a11;
    v121.origin.y = a12;
    v121.size.width = a13;
    v121.size.height = a14;
    a8 = CGRectGetMaxY(v121);
    v14 = v14[490];
    [*(v14 + a4) v16[29]];
    if (a8 - v78 >= a9)
    {
      goto LABEL_90;
    }

    v38 = *(v28 + a4);
    if (v38 >> 62)
    {
      v79 = sub_ABB060();
      if (!v79)
      {
LABEL_84:
        v81 = swift_unknownObjectWeakLoadStrong();
LABEL_85:
        v80 = v81;
        if (v81)
        {
LABEL_86:

          goto LABEL_87;
        }

LABEL_89:
        v88 = CGRectGetMaxY(*a5);
        v122.origin.x = a11;
        v122.origin.y = a12;
        v122.size.width = a13;
        v122.size.height = a14;
        v89 = CGRectGetMaxY(v122);
        [*(v14 + a4) v16[29]];
        bottom = v88 - (v89 - v90);
        goto LABEL_90;
      }
    }

    else
    {
      v79 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
      if (!v79)
      {
        goto LABEL_84;
      }
    }

    v15 = v79 - 1;
    if (__OFSUB__(v79, 1))
    {
      break;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      goto LABEL_96;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      v80 = *(v38 + 8 * v15 + 32);
      goto LABEL_79;
    }

    __break(1u);
LABEL_99:

    v15 = sub_35F8D4(0, v38);

LABEL_12:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
LABEL_18:
      v15 = Strong;
      if (!Strong)
      {
LABEL_20:
        v109.origin.x = rect;
        v109.origin.y = a8;
        v109.size.width = a9;
        v109.size.height = bottom;
        v44 = CGRectGetMinY(v109);
        v110.origin.x = a11;
        v110.origin.y = a12;
        v110.size.width = a13;
        v110.size.height = a14;
        if (CGRectGetMinY(v110) < v44)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }

LABEL_19:

      goto LABEL_21;
    }

    if (!Strong)
    {
      goto LABEL_19;
    }

    v41 = a6;
    v42 = Strong;
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v43 = sub_ABA790();

    a6 = v41;
    if (v43)
    {
      goto LABEL_20;
    }

LABEL_21:
    v111.origin.x = rect;
    v111.origin.y = a8;
    v35 = a9;
    v111.size.width = a9;
    v36 = bottom;
    v111.size.height = bottom;
    v45 = CGRectGetMaxY(v111);
    v112.origin.x = a11;
    v112.origin.y = a12;
    v112.size.width = a13;
    v112.size.height = a14;
    if (CGRectGetMaxY(v112) < v45)
    {
      v113.origin.y = v99;
      v113.origin.x = v100;
      v113.size.width = v98;
      v113.size.height = a14;
      v46 = CGRectGetMaxY(v113);
      v114.origin.x = rect;
      v114.origin.y = v97;
      v114.size.width = v35;
      v114.size.height = v36;
      v37 = v46 - CGRectGetMinY(v114);
      if (v37 < 0.0)
      {
        v37 = 0.0;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:

  v80 = sub_35F8D4(v15, v38);

LABEL_79:
  v81 = swift_unknownObjectWeakLoadStrong();
  if (!v80)
  {
    goto LABEL_85;
  }

  if (!v81)
  {
    goto LABEL_86;
  }

  v82 = a6;
  v83 = v81;
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v84 = sub_ABA790();

  a6 = v82;
  if (v84)
  {
    goto LABEL_89;
  }

LABEL_87:
  v85 = swift_unknownObjectWeakLoadStrong();
  if (v85)
  {
    v86 = v85;
    v87 = [v85 isEditing];

    if (v87)
    {
      goto LABEL_89;
    }
  }

LABEL_90:
  left = v29->left;
  right = v29->right;
  type metadata accessor for UIEdgeInsets(0);
  [a6 contentInset];
  result = sub_AB38D0();
  if (result)
  {
    return [a6 setContentInset:{top, left, bottom, right}];
  }

  return result;
}

void sub_4DD2E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong contentScrollView], v2, v3))
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = objc_allocWithZone(ScrollViewContentOffsetObserver);
    v15[4] = sub_D1074;
    v15[5] = v4;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_2DDCF4;
    v15[3] = &block_descriptor_131_0;
    v6 = _Block_copy(v15);
    v7 = v3;

    v8 = [v5 initWithScrollView:v7 changeHandler:v6];
    _Block_release(v6);

    v9 = *(v0 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver);
    *(v0 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver) = v8;

    v15[0] = v7;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = v0;
    v11 = sub_AB3080();

    v12 = *(v10 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver);
    *(v10 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver) = v11;
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver);
    *(v0 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver) = 0;

    v14 = *(v0 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver);
    *(v0 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver) = 0;
  }
}

void sub_4DD530(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset;
      if ((v4[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] & 1) == 0)
      {
        v8 = &v4[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
        if (v4[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset + 16])
        {
          sub_4D5FB4();
        }

        else
        {
          v9 = v8[1];
          v10 = 1;
          v4[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 1;
          sub_4DF5E4(a1, v5, v9);
          v11 = swift_unknownObjectWeakLoadStrong();
          v12 = 0uLL;
          if (v11)
          {
            v13 = v11;
            v14 = [v11 contentScrollView];

            if (v14)
            {
              [v14 contentOffset];
              v17 = v15;
              v18 = v16;

              *&v12 = v17;
              v10 = 0;
              *(&v12 + 1) = v18;
            }

            else
            {
              v10 = 1;
              v12 = 0uLL;
            }
          }

          *v8 = v12;
          *(v8 + 16) = v10;
          v4[v7] = 0;
        }
      }
    }

    else
    {
      v6 = v4;
    }
  }
}

void sub_4DD674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      v6 = v4;
LABEL_13:

      return;
    }

    v6 = v5;
    if (*(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10))
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      [v7 loadViewIfNeeded];

      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = [v8 contentScrollView];

        if (v10)
        {

LABEL_9:
          v11 = [v6 view];
          if (!v11)
          {
            __break(1u);
            return;
          }

          v12 = v11;
          type metadata accessor for CGSize(0);
          [v12 bounds];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          sub_4DC0BC(v14, v16, v18, v20, v21, 0x10000);
          if (sub_AB38D0())
          {
            sub_4D55B0();
          }
        }
      }
    }

    else if ((*(v4 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8) & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }
}

uint64_t sub_4DD890()
{
  sub_ABAD90(62);
  v1._object = 0x8000000000B68150;
  v1._countAndFlagsBits = 0xD000000000000011;
  sub_AB94A0(v1);
  swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDF28, &unk_AFC508);
  v2._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B68170;
  sub_AB94A0(v3);
  type metadata accessor for CGRect(0);
  sub_ABAF70();
  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x8000000000B68190;
  sub_AB94A0(v4);
  sub_ABAF70();
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  sub_AB94A0(v5);
  return 0;
}

void sub_4DDAE8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for VerticalStackViewController.ScrollView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_4DE330;
  *(v3 + 24) = v2;
  v7[4] = sub_2D4D0;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_158;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = *&v5[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
    if (v6)
    {
      [v5 _moveContentSubview:v6 toBack:0];
    }
  }
}

void sub_4DDC88(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_backgroundView];
  if (v2)
  {
    v3 = v2;
    [a1 bounds];
    [v3 setFrame:?];
  }

  v4 = *&a1[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
  if (v4)
  {
    v5 = v4;
    [a1 bounds];
    [v5 setFrame:?];
  }
}

void sub_4DDD94(void *a1)
{
  v2 = OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView;
  v3 = *&v1[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    v4 = a1;
    if ([v4 isDescendantOfView:v1])
    {
      [v4 removeFromSuperview];
    }

    v3 = *&v1[v2];
  }

  if (v3)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_4DF7D8;
    *(v7 + 24) = v6;
    v12[4] = sub_36C08;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1822E0;
    v12[3] = &block_descriptor_151_1;
    v8 = _Block_copy(v12);
    v9 = v3;
    v10 = v1;

    [v5 performWithoutAnimation:v8];

    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id sub_4DE074(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_4DE180(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4DE19C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_4DE1E4()
{
  result = qword_E0C1F8;
  if (!qword_E0C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C1F8);
  }

  return result;
}

uint64_t sub_4DE238()
{
  result = swift_slowAlloc();
  qword_E0BF40 = result;
  return result;
}

BOOL sub_4DE2C4(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && a1 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a4 & 0x100) != 0;
}

uint64_t sub_4DE2F8()
{

  return swift_deallocObject();
}

double block_copy_helper_158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4DE360()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_4DE398@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_4DE3E0()
{
  v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
  v1 = &v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
  v2 = *&UIEdgeInsetsZero.bottom;
  *v1 = *&UIEdgeInsetsZero.top;
  v1[1] = v2;
  v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
  v3 = &v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  *v3 = 0;
  *(v3 + 4) = 0;
  v3[10] = 1;
  *&v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
  *&v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
  *v4 = 0u;
  v4[1] = 0u;
  v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
  v5 = &v0[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  swift_unknownObjectWeakAssign();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for VerticalStackViewController.Item();
  return objc_msgSendSuper2(&v7, "init");
}

void *sub_4DE4FC(unint64_t a1, id a2, uint64_t a3)
{
  v5 = &_swiftEmptySetSingleton;
  if ([a2 isViewLoaded])
  {
    sub_4D62B0();
    v123 = &_swiftEmptySetSingleton;
    if (a1 >> 62)
    {
      v82 = sub_ABB060();
      if (v82 < 0)
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
      }

      v6 = v82;
      if (v82)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v111 = a1 & 0xC000000000000001;
        v108 = a1 + 32;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v106 = a3;
        v109 = v6;
        v110 = a1;
        while (1)
        {
          v11 = v111 ? sub_35F8D4(v7, a1) : *(v108 + 8 * v7);
          v12 = v11;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            break;
          }

LABEL_6:
          if (++v7 == v6)
          {
            return v123;
          }
        }

        v14 = Strong;
        v15 = sub_17D54();
        if (*(v15 + 16))
        {
          v16 = sub_2EC3D0(v12);
          if (v17)
          {
            v18 = *(*(v15 + 56) + 16 * v16);

            v19 = qword_DE6D80;
            v20 = v14;
            v21 = v18;
            if (v19 != -1)
            {
              swift_once();
            }

            v22 = qword_E0BF40;
            if (objc_getAssociatedObject(v21, qword_E0BF40))
            {
              sub_ABAB50();
              swift_unknownObjectRelease();
            }

            else
            {
              v119 = 0u;
              v120 = 0u;
            }

            v121 = v119;
            v122 = v120;
            if (*(&v120 + 1))
            {
              type metadata accessor for VerticalStackViewController.Item();
              if (swift_dynamicCast())
              {
                v44 = v115;
                v45 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
                goto LABEL_45;
              }
            }

            else
            {
              sub_9BC10(&v121);
            }

            v46 = type metadata accessor for VerticalStackViewController.Item();
            v47 = objc_allocWithZone(v46);
            v5 = 1;
            v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
            v48 = &v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
            *v48 = UIEdgeInsetsZero.top;
            v48[1] = left;
            v48[2] = bottom;
            v48[3] = right;
            v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
            v49 = &v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
            *v49 = 0;
            *(v49 + 4) = 0;
            v49[10] = 1;
            *&v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
            *&v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakInit();
            v50 = &v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
            *v50 = 0u;
            v50[1] = 0u;
            v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
            v51 = &v47[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
            *v51 = 0;
            *(v51 + 1) = 0;
            v51[16] = 1;
            v45 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
            swift_unknownObjectWeakAssign();
            v114.receiver = v47;
            v114.super_class = v46;
            v44 = objc_msgSendSuper2(&v114, "init");
            objc_setAssociatedObject(v21, v22, v44, &dword_0 + 1);
            a1 = v110;
LABEL_45:
            v52 = *&v44[v45[9].vtable + 24];

            if (v52 <= 0.0)
            {
            }

            else
            {
              if (objc_getAssociatedObject(v21, v22))
              {
                sub_ABAB50();
                swift_unknownObjectRelease();
              }

              else
              {
                v119 = 0u;
                v120 = 0u;
              }

              v121 = v119;
              v122 = v120;
              v107 = v20;
              if (*(&v120 + 1))
              {
                type metadata accessor for VerticalStackViewController.Item();
                if (swift_dynamicCast())
                {
                  v61 = v115;
                  v62 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
                  goto LABEL_65;
                }
              }

              else
              {
                sub_9BC10(&v121);
              }

              v63 = type metadata accessor for VerticalStackViewController.Item();
              v64 = objc_allocWithZone(v63);
              v5 = 1;
              v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
              v65 = &v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
              *v65 = UIEdgeInsetsZero.top;
              v65[1] = left;
              v65[2] = bottom;
              v65[3] = right;
              v62 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
              v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
              v66 = &v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
              *v66 = 0;
              *(v66 + 4) = 0;
              v66[10] = 1;
              *&v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
              *&v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakInit();
              v67 = &v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
              *v67 = 0u;
              v67[1] = 0u;
              v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
              v68 = &v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
              *v68 = 0;
              *(v68 + 1) = 0;
              v68[16] = 1;
              swift_unknownObjectWeakAssign();
              v113.receiver = v64;
              v113.super_class = v63;
              v61 = objc_msgSendSuper2(&v113, "init");
              objc_setAssociatedObject(v21, v22, v61, &dword_0 + 1);
              a1 = v110;
LABEL_65:
              v69 = v61[v62[8].cache];

              if (v69 == 129)
              {
                if (objc_getAssociatedObject(v21, v22))
                {
                  sub_ABAB50();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v119 = 0u;
                  v120 = 0u;
                }

                v121 = v119;
                v122 = v120;
                if (*(&v120 + 1))
                {
                  type metadata accessor for VerticalStackViewController.Item();
                  if (swift_dynamicCast())
                  {
                    v70 = v115;
                    goto LABEL_85;
                  }
                }

                else
                {
                  sub_9BC10(&v121);
                }

                v89 = type metadata accessor for VerticalStackViewController.Item();
                v90 = objc_allocWithZone(v89);
                v5 = 1;
                v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
                v91 = &v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
                *v91 = UIEdgeInsetsZero.top;
                v91[1] = left;
                v91[2] = bottom;
                v91[3] = right;
                v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
                v92 = &v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
                *v92 = 0;
                *(v92 + 4) = 0;
                v92[10] = 1;
                *&v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
                *&v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
                swift_unknownObjectWeakInit();
                swift_unknownObjectWeakInit();
                v93 = &v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
                *v93 = 0u;
                v93[1] = 0u;
                v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
                v94 = &v90[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
                *v94 = 0;
                *(v94 + 1) = 0;
                v94[16] = 1;
                swift_unknownObjectWeakAssign();
                v112.receiver = v90;
                v112.super_class = v89;
                v70 = objc_msgSendSuper2(&v112, "init");
                objc_setAssociatedObject(v21, v22, v70, &dword_0 + 1);
                a1 = v110;
LABEL_85:
                v95 = sub_4D3DD0();
                [v95 contentOffset];
                v97 = v96;
                v99 = v98;

                v82 = [v107 view];
                if (!v82)
                {
                  goto LABEL_95;
                }

                v100 = v82;
                [v82 bounds];
                v102 = v101;
                v104 = v103;

                v88 = sub_4DC264(v97, v99, v102, v104);
LABEL_87:

                if (v88)
                {
                  goto LABEL_88;
                }

                goto LABEL_89;
              }
            }

            v6 = v109;
            goto LABEL_6;
          }
        }

        v23 = sub_17DB8();
        v24 = v23;
        if ((v23 & 0xC000000000000001) != 0)
        {
          v25 = v12;
          v26 = sub_ABACA0();

          if (v26)
          {

            goto LABEL_88;
          }
        }

        else
        {
          if (*(v23 + 16))
          {
            sub_13C80(0, &qword_DE7500, UIViewController_ptr);
            v27 = sub_ABA780(*(v24 + 40));
            v28 = -1 << *(v24 + 32);
            v5 = v27 & ~v28;
            if ((*(v24 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
            {
              v29 = ~v28;
              while (1)
              {
                v30 = *(*(v24 + 48) + 8 * v5);
                v31 = sub_ABA790();

                if (v31)
                {
                  break;
                }

                v5 = (v5 + 1) & v29;
                if (((*(v24 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
                {
                  goto LABEL_25;
                }
              }

              a3 = v106;
              a1 = v110;
LABEL_88:
              sub_1A5B0(&v121, v7);
LABEL_89:

              v6 = v109;
              goto LABEL_6;
            }
          }

LABEL_25:

          a3 = v106;
          a1 = v110;
        }

        v32 = qword_DE6D80;
        v33 = v14;
        if (v32 != -1)
        {
          swift_once();
        }

        v34 = qword_E0BF40;
        if (objc_getAssociatedObject(v12, qword_E0BF40))
        {
          sub_ABAB50();
          swift_unknownObjectRelease();
        }

        else
        {
          v119 = 0u;
          v120 = 0u;
        }

        v121 = v119;
        v122 = v120;
        if (*(&v120 + 1))
        {
          type metadata accessor for VerticalStackViewController.Item();
          if (swift_dynamicCast())
          {
            v35 = v115;
            v36 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
            goto LABEL_36;
          }
        }

        else
        {
          sub_9BC10(&v121);
        }

        v37 = type metadata accessor for VerticalStackViewController.Item();
        v38 = objc_allocWithZone(v37);
        v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
        v39 = &v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
        *v39 = UIEdgeInsetsZero.top;
        v39[1] = left;
        v39[2] = bottom;
        v39[3] = right;
        v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
        v40 = &v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
        *v40 = 0;
        *(v40 + 4) = 0;
        v40[10] = 1;
        *&v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
        *&v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v41 = &v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
        *v41 = 0u;
        v41[1] = 0u;
        v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
        v42 = &v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
        *v42 = 0;
        *(v42 + 1) = 0;
        v42[16] = 1;
        v36 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
        swift_unknownObjectWeakAssign();
        v118.receiver = v38;
        v118.super_class = v37;
        v35 = objc_msgSendSuper2(&v118, "init");
        objc_setAssociatedObject(v12, v34, v35, &dword_0 + 1);
        a1 = v110;
LABEL_36:
        v43 = *&v35[v36[9].vtable + 24];

        if (v43 <= 0.0)
        {
LABEL_58:

          v6 = v109;
          goto LABEL_6;
        }

        if (objc_getAssociatedObject(v12, v34))
        {
          sub_ABAB50();
          swift_unknownObjectRelease();
        }

        else
        {
          v119 = 0u;
          v120 = 0u;
        }

        v121 = v119;
        v122 = v120;
        if (*(&v120 + 1))
        {
          type metadata accessor for VerticalStackViewController.Item();
          if (swift_dynamicCast())
          {
            v53 = v115;
            v5 = 14729216;
            goto LABEL_55;
          }
        }

        else
        {
          sub_9BC10(&v121);
        }

        v54 = type metadata accessor for VerticalStackViewController.Item();
        v55 = objc_allocWithZone(v54);
        v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
        v56 = &v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
        *v56 = UIEdgeInsetsZero.top;
        v56[1] = left;
        v56[2] = bottom;
        v56[3] = right;
        v5 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
        v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
        v57 = &v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
        *v57 = 0;
        *(v57 + 4) = 0;
        v57[10] = 1;
        *&v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
        *&v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v58 = &v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
        *v58 = 0u;
        v58[1] = 0u;
        v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
        v59 = &v55[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
        *v59 = 0;
        *(v59 + 1) = 0;
        v59[16] = 1;
        swift_unknownObjectWeakAssign();
        v117.receiver = v55;
        v117.super_class = v54;
        v53 = objc_msgSendSuper2(&v117, "init");
        objc_setAssociatedObject(v12, v34, v53, &dword_0 + 1);
        a1 = v110;
LABEL_55:
        v60 = v53[*(v5 + 336)];

        if (v60 == 129)
        {
          if (objc_getAssociatedObject(v12, v34))
          {
            sub_ABAB50();
            swift_unknownObjectRelease();
          }

          else
          {
            v119 = 0u;
            v120 = 0u;
          }

          v121 = v119;
          v122 = v120;
          if (*(&v120 + 1))
          {
            type metadata accessor for VerticalStackViewController.Item();
            if (swift_dynamicCast())
            {
              v70 = v115;
LABEL_77:
              v77 = sub_4D3DD0();
              [v77 contentOffset];
              v79 = v78;
              v81 = v80;

              v82 = [v33 view];
              if (!v82)
              {
                goto LABEL_94;
              }

              v83 = v82;
              [v82 bounds];
              v85 = v84;
              v87 = v86;

              v88 = sub_4DC264(v79, v81, v85, v87);
              goto LABEL_87;
            }
          }

          else
          {
            sub_9BC10(&v121);
          }

          v71 = type metadata accessor for VerticalStackViewController.Item();
          v72 = objc_allocWithZone(v71);
          v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
          v73 = &v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
          *v73 = UIEdgeInsetsZero.top;
          v73[1] = left;
          v73[2] = bottom;
          v73[3] = right;
          v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
          v74 = &v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
          *v74 = 0;
          *(v74 + 4) = 0;
          v74[10] = 1;
          *&v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
          *&v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          v75 = &v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
          *v75 = 0u;
          v75[1] = 0u;
          v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
          v76 = &v72[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
          *v76 = 0;
          *(v76 + 1) = 0;
          v76[16] = 1;
          swift_unknownObjectWeakAssign();
          v116.receiver = v72;
          v116.super_class = v71;
          v70 = objc_msgSendSuper2(&v116, "init");
          objc_setAssociatedObject(v12, v34, v70, &dword_0 + 1);
          a1 = v110;
          goto LABEL_77;
        }

        goto LABEL_58;
      }
    }
  }

  return v5;
}

void sub_4DF37C()
{
  v1 = sub_4D3DD0();
  [v1 contentOffset];
  v3 = v2;
  v5 = v4;

  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;

    v12 = &v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
    v13 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
    v14 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 8];
    v15 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 16];
    v16 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 24];
    *v12 = v3;
    *(v12 + 1) = v5;
    *(v12 + 2) = v9;
    *(v12 + 3) = v11;
    sub_4DB494(v13, v14, v15, v16);

    sub_4D7AA8();
  }

  else
  {
    __break(1u);
  }
}

void sub_4DF434()
{
  v1 = sub_4D3DD0();
  [v1 contentOffset];
  v3 = v2;
  v5 = v4;

  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;

    v12 = &v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
    v13 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
    v14 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 8];
    v15 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 16];
    v16 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 24];
    *v12 = v3;
    *(v12 + 1) = v5;
    *(v12 + 2) = v9;
    *(v12 + 3) = v11;

    sub_4DB494(v13, v14, v15, v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_4DF4E8()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_visibleViewControllers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_artworkVideoPlaybackCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState) = 0x80;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsLayout) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds);
  *v1 = 0u;
  v1[1] = 0u;
  sub_ABAFD0();
  __break(1u);
}

void sub_4DF5E4(void *a1, void *a2, double a3)
{
  [a1 contentSize];
  v7 = v6;
  v8 = [a2 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    if (v7 <= CGRectGetWidth(v25))
    {
      [a1 contentOffset];
      v19 = v18 - a3;
      [a1 contentOffset];
      v21 = v20;
      [a1 adjustedContentInset];
      v23 = v22;
      if ((sub_AB38D0() & 1) != 0 && v21 != -v23)
      {
        v24 = sub_4D3DD0();
        [v24 contentOffset];
        [v24 setContentOffset:?];
      }
    }

    else
    {
      sub_4D5FB4();
      sub_4D62B0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4DF798()
{

  return swift_deallocObject();
}

id sub_4DF7D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v2 bounds];
  [v1 setFrame:?];

  return [v2 _addContentSubview:v1 atBack:0];
}

uint64_t sub_4DF88C()
{

  return swift_deallocObject();
}

uint64_t sub_4DF8D8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_192Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_4DF9E0()
{

  return swift_deallocObject();
}

void sub_4DFA18()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_4D3DD0();
  [v3 setContentSize:{v1, v2}];
}

unint64_t sub_4DFADC()
{
  result = qword_E0C208;
  if (!qword_E0C208)
  {
    sub_13C80(255, &qword_DE7500, UIViewController_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C208);
  }

  return result;
}

void sub_4DFB4C()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(v0 + 48);
    *(v0 + 48) = 2;
    sub_4DB5DC(v1);
  }
}

uint64_t sub_4DFB68()
{

  return swift_deallocObject();
}

uint64_t sub_4DFC44()
{

  return swift_deallocObject();
}

unint64_t sub_4DFDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_ABB5C0();
  sub_AB93F0();
  v6 = sub_ABB610();
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
    if (v11 || (sub_ABB3C0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return v8;
}

void sub_4DFEA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = v3 + OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_initializedProperties;
  if (*(v3 + OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_initializedProperties) == 2)
  {
    v123 = a1;
    v124 = a2;
    v120 = OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_requestedProperties;
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_requestedProperties);
    v8 = [v7 properties];
    v9 = sub_AB9B40();

    v10 = sub_AB92A0();
    v12 = sub_4DFDA8(v10, v11, v9);
    v14 = v13;
    v16 = v15;

    v122 = v16;
    sub_F01A0(v12, v14, v16);
    v17 = sub_AB92A0();
    v19 = sub_4DFDA8(v17, v18, v9);
    v21 = v20;
    v23 = v22;

    v121 = v23;
    sub_F01A0(v19, v21, v23);
    v24 = sub_AB92A0();
    v26 = sub_4DFDA8(v24, v25, v9);
    v28 = v27;
    v30 = v29;

    v119 = v30;
    sub_F01A0(v26, v28, v30);
    v31 = sub_AB92A0();
    v33 = sub_4DFDA8(v31, v32, v9);
    v35 = v34;
    v37 = v36;

    v118 = v37;
    sub_F01A0(v33, v35, v37);
    v38 = sub_AB92A0();
    v40 = sub_4DFDA8(v38, v39, v9);
    v42 = v41;
    v44 = v43;

    v117 = v44;
    sub_F01A0(v40, v42, v44);
    v45 = sub_AB92A0();
    v47 = sub_4DFDA8(v45, v46, v9);
    v49 = v48;
    v51 = v50;

    v116 = v51;
    sub_F01A0(v47, v49, v51);
    v52 = sub_AB92A0();
    v54 = sub_4DFDA8(v52, v53, v9);
    v56 = v55;
    LODWORD(v49) = v57;

    v115 = v49;
    sub_F01A0(v54, v56, v49);
    v58 = sub_AB92A0();
    v60 = sub_4DFDA8(v58, v59, v9);
    v62 = v61;
    v64 = v63;

    v65 = v64 != -1;
    sub_F01A0(v60, v62, v64);
    v66 = sub_AB92A0();
    v68 = sub_4DFDA8(v66, v67, v9);
    v70 = v69;
    v72 = v71;
    v73 = ~v71 != 0;

    sub_F01A0(v68, v70, v72);
    v74 = v65 | (v73 << 8);
    v75 = sub_AB92A0();
    v77 = sub_4DFDA8(v75, v76, v9);
    v79 = v78;
    v81 = v80;
    v82 = ~v80 != 0;

    sub_F01A0(v77, v79, v81);
    v83 = v74 | (v82 << 16);
    v84 = sub_AB92A0();
    v86 = sub_4DFDA8(v84, v85, v9);
    v88 = v87;
    v90 = v89;
    v91 = ~v89 != 0;

    sub_F01A0(v86, v88, v90);
    v92 = v83 | (v91 << 24);
    v93 = sub_AB92A0();
    v95 = sub_4DFDA8(v93, v94, v9);
    v97 = v96;
    v99 = v98;
    v100 = ~v98 != 0;

    sub_F01A0(v95, v97, v99);
    v101 = *(v3 + v120);
    v102 = [v101 relationships];
    sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
    v103 = sub_AB8FF0();

    v104 = sub_AB92A0();
    if (*(v103 + 16))
    {
      sub_2EBF88(v104, v105);
      v107 = v106;

      v108 = v107 & 1;
    }

    else
    {

      v108 = 0;
    }

    *v6 = ((~v122 != 0) << 8) | ((~v121 != 0) << 16) | ((~v119 != 0) << 24) | ((~v118 != 0) << 32) | ((~v117 != 0) << 40) | ((~v116 != 0) << 48) | ((v115 != 0xFF) << 56) | v108;
    *(v6 + 8) = v92;
    *(v6 + 12) = (v92 | (v100 << 32)) >> 32;

    v5 = v123;
    v4 = v124;
  }

  v126 = 1;
  v109 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin();
  v114[2] = v3;
  v114[3] = v5;
  v114[4] = v4;
  v114[5] = &v126;
  v110 = objc_allocWithZone(MusicModelGridItem);
  v111 = swift_allocObject();
  *(v111 + 16) = sub_4E1B20;
  *(v111 + 24) = v114;
  aBlock[4] = sub_3F328C;
  aBlock[5] = v111;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_159;
  v112 = _Block_copy(aBlock);

  v113 = [v110 initWithIdentifiers:v109 block:v112];
  _Block_release(v112);

  LOBYTE(v112) = swift_isEscapingClosureAtFileLocation();

  if (v112)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v113 personalizationStyle:v126];
  }
}

void sub_4E0590(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = (a2 + OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_initializedProperties);
  v10 = *(a2 + OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_initializedProperties);
  if (v10 == 2)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v11 = v8;
  if (v10)
  {

    sub_4D3314(a3, a4);
    v13 = v12;
    v15 = v14;

    [v11 setContentItem:v13];
    if (v13)
    {

      *a5 = v15;
    }
  }

  v16 = *v9;
  if (*v9 == 2)
  {
    goto LABEL_118;
  }

  if ((v16 & 0x100) != 0)
  {
    (*(&stru_338.offset + (swift_isaMask & *a3)))();
    if (v17)
    {
      v18 = sub_AB9260();
    }

    else
    {
      v18 = 0;
    }

    [v11 setTitleText:v18];

    v16 = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_119;
  }

  if ((v16 & 0x10000) != 0)
  {
    (*(&stru_338.reserved2 + (swift_isaMask & *a3)))();
    if (v19)
    {
      v20 = sub_AB9260();
    }

    else
    {
      v20 = 0;
    }

    [v11 setSubtitleText:v20];

    v16 = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_120;
  }

  if ((v16 & 0x1000000) != 0)
  {
    (*&stru_388.segname[swift_isaMask & *a3])();
    if (v21)
    {
      v22 = sub_AB9260();
    }

    else
    {
      v22 = 0;
    }

    [v11 setOverlayTitleText:v22];

    v16 = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_121;
  }

  if ((v16 & 0x100000000) != 0)
  {
    (*(&stru_388.size + (swift_isaMask & *a3)))();
    if (v23)
    {
      v24 = sub_AB9260();
    }

    else
    {
      v24 = 0;
    }

    [v11 setOverlaySubtitleText:v24];

    v16 = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_122;
  }

  if ((v16 & 0x10000000000) != 0)
  {
    (*(&stru_388.flags + (swift_isaMask & *a3)))();
    if (v25)
    {
      v26 = sub_AB9260();
    }

    else
    {
      v26 = 0;
    }

    [v11 setDescriptionText:v26];

    v16 = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_123;
  }

  if ((v16 & 0x1000000000000) != 0)
  {
    (*&stru_3D8.segname[(swift_isaMask & *a3) - 8])();
    if (v27)
    {
      v28 = sub_AB9260();
    }

    else
    {
      v28 = 0;
    }

    [v11 setHeadlineText:v28];

    v16 = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_124;
  }

  if ((v16 & 0x100000000000000) != 0)
  {
    v29 = (*&stru_3D8.segname[(swift_isaMask & *a3) + 16])();
    v30 = v29 != 2 && (v29 & 1) != 0;
    [v11 setHeadlineColor:v30];
    LOBYTE(v16) = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_125;
  }

  if (*(v9 + 2))
  {
    (*(&stru_3D8.reloff + (swift_isaMask & *a3)))();
    if (v31)
    {
      v32 = sub_AB9260();
    }

    else
    {
      v32 = 0;
    }

    [v11 setButtonText:v32];

    LOBYTE(v16) = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_126;
  }

  if ((*(v9 + 2) & 0x100) != 0)
  {
    v114 = v9;
    v33 = *(a2 + OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_requestedProperties);
    v34 = [v33 relationships];
    sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
    v35 = sub_AB8FF0();

    v36 = sub_AB92A0();
    if (*(v35 + 16) && (v38 = sub_2EBF88(v36, v37), (v39 & 1) != 0))
    {
      v40 = *(*(v35 + 56) + 8 * v38);
    }

    else
    {

      v40 = [objc_opt_self() emptyPropertySet];
    }

    v41 = [v40 relationships];
    v42 = sub_AB8FF0();
    v43 = sub_AB92A0();
    v45 = v40;
    if (*(v42 + 16) && (v46 = sub_2EBF88(v43, v44), (v47 & 1) != 0))
    {
      v115 = *(*(v42 + 56) + 8 * v46);
    }

    else
    {

      v115 = [objc_opt_self() emptyPropertySet];
    }

    v48 = OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_socialPersonBuilder;
    v49 = *(a2 + OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_socialPersonBuilder);
    v113 = v45;
    if (v49)
    {
      v50 = *(a2 + OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_socialPersonBuilder);
    }

    else
    {
      v51 = type metadata accessor for JSModelSocialPersonProfileBuilder();
      v52 = objc_allocWithZone(v51);
      v52[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
      *&v52[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v115;
      v53 = [objc_allocWithZone(MPStoreModelSocialPersonBuilder) initWithRequestedPropertySet:v115];
      if (!v53)
      {
LABEL_130:
        __break(1u);
        return;
      }

      *&v52[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v53;
      v133.receiver = v52;
      v133.super_class = v51;
      v54 = objc_msgSendSuper2(&v133, "init");
      v55 = *(a2 + v48);
      *(a2 + v48) = v54;
      v50 = v54;

      v49 = 0;
    }

    v132 = _swiftEmptyArrayStorage;
    v56 = (*&stru_298.segname[(swift_isaMask & *a3) + 16])(v49);
    v58 = v56;
    if (v56 >> 62)
    {
LABEL_104:
      v59 = sub_ABB060();
      v111 = a3;
      v112 = v11;
      if (v59)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v59 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
      v111 = a3;
      v112 = v11;
      if (v59)
      {
LABEL_70:
        a3 = 0;
        v60 = OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties;
        v61 = v58 & 0xC000000000000001;
        v120 = v58 + 32;
        v121 = v58 & 0xFFFFFFFFFFFFFF8;
        v125 = OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder;
        v122 = OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
        v11 = a4;
        v123 = v58 & 0xC000000000000001;
        v124 = v59;
        v117 = v58;
        v118 = v50;
        do
        {
          while (1)
          {
            if (v61)
            {
              v63 = sub_36105C(a3, v58, v57);
            }

            else
            {
              if (a3 >= *(v121 + 16))
              {
                goto LABEL_103;
              }

              v63 = *(v120 + 8 * a3);
            }

            v64 = v63;
            if (__OFADD__(a3++, 1))
            {
              __break(1u);
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            if (v50[v60] == 2)
            {
              v66 = v60;
              v67 = *&v50[v122];
              v68 = [v67 properties];
              v69 = sub_AB9B40();

              v70 = sub_AB92A0();
              v72 = v71;
              if (*(v69 + 16))
              {
                v73 = v70;
                sub_ABB5C0();
                sub_AB93F0();
                v74 = sub_ABB610();
                v75 = -1 << *(v69 + 32);
                v76 = v74 & ~v75;
                if ((*(v69 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
                {
                  v77 = ~v75;
                  while (1)
                  {
                    v78 = (*(v69 + 48) + 16 * v76);
                    v79 = *v78 == v73 && v78[1] == v72;
                    if (v79 || (sub_ABB3C0() & 1) != 0)
                    {
                      break;
                    }

                    v76 = (v76 + 1) & v77;
                    if (((*(v69 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
                    {
                      v80 = 0;
                      v11 = a4;
                      goto LABEL_92;
                    }
                  }

                  v80 = 1;
                  v11 = a4;
                }

                else
                {
                  v80 = 0;
                }

LABEL_92:
                v58 = v117;
                v50 = v118;
              }

              else
              {
                v80 = 0;
              }

              v60 = v66;
              v50[v66] = v80;

              v61 = v123;
              v59 = v124;
            }

            v81 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
            swift_beginAccess();
            v82 = *&v64[v81];
            if (v82)
            {
              break;
            }

            v62 = v64;
LABEL_72:

            if (a3 == v59)
            {
              goto LABEL_105;
            }
          }

          v83 = *&v50[v125];
          v62 = v82;
          v84 = [v83 modelObjectWithStoreItemMetadata:v62 userIdentity:v11];
          if (!v84)
          {

            goto LABEL_72;
          }

          v109 = v60;
          v110 = v84;
          v116 = [v84 identifiers];
          v85 = swift_allocObject();
          *(v85 + 16) = v50;
          *(v85 + 24) = v64;
          v86 = v85;
          v87 = swift_allocObject();
          *(v87 + 16) = sub_F01B8;
          *(v87 + 24) = v86;
          v130 = sub_445458;
          v131 = v87;
          aBlock = _NSConcreteStackBlock;
          v127 = 1107296256;
          v128 = sub_41A314;
          v129 = &block_descriptor_48;
          v88 = _Block_copy(&aBlock);
          v89 = v50;
          v108 = v64;

          v90 = [v110 copyWithIdentifiers:v116 block:v88];

          _Block_release(v88);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            goto LABEL_117;
          }

          v92 = v90;
          sub_AB9730();
          if (*(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v132 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();

          v59 = v124;
          v60 = v109;
        }

        while (a3 != v124);
      }
    }

LABEL_105:

    sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);
    isa = sub_AB9740().super.isa;

    v11 = v112;
    [v112 setAccessorySocialPersons:isa];

    v9 = v114;
    LOBYTE(v16) = *v114;
    a3 = v111;
  }

  if (v16 == 2)
  {
    goto LABEL_127;
  }

  if ((*(v9 + 2) & 0x10000) != 0)
  {
    v94 = (*(&stru_108.flags + (swift_isaMask & *a3)))();
    v95 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96 = swift_allocObject();
    *(v96 + 16) = v94;
    *(v96 + 24) = v95;
    v130 = sub_4E1C4C;
    v131 = v96;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v128 = sub_119878;
    v129 = &block_descriptor_38;
    v97 = _Block_copy(&aBlock);
    v98 = v94;

    [v11 setBackgroundArtworkCatalogBlock:v97];
    _Block_release(v97);

    LOBYTE(v16) = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_128;
  }

  if ((*(v9 + 2) & 0x1000000) != 0)
  {
    v99 = (*&stru_158.segname[(swift_isaMask & *a3) - 8])();
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = a3;
    v130 = sub_4E1BCC;
    v131 = v100;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v128 = sub_119878;
    v129 = &block_descriptor_29_1;
    v101 = _Block_copy(&aBlock);
    v102 = v99;
    v103 = a3;

    [v11 setEditorialArtworkCatalogBlock:v101];
    _Block_release(v101);

    LOBYTE(v16) = *v9;
  }

  if (v16 == 2)
  {
    goto LABEL_129;
  }

  if (((*(v9 + 2) | (v9[12] << 32)) & 0x100000000) != 0)
  {
    v104 = (*&stru_1A8.sectname[swift_isaMask & *a3])();
    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    v130 = sub_119C14;
    v131 = v105;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v128 = sub_119878;
    v129 = &block_descriptor_23_1;
    v106 = _Block_copy(&aBlock);
    v107 = v104;

    [v11 setVideoBackgroundArtworkCatalogBlock:v106];
    _Block_release(v106);
  }
}

id sub_4E1670(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = ICStoreArtworkInfoCropStyleBoundedBox;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = a2;
    v7 = v4;
    if (!Strong)
    {
      goto LABEL_15;
    }

    v8 = [Strong contentItem];

    if (!v8)
    {
      goto LABEL_15;
    }

    if ([v8 itemType] == &dword_0 + 3)
    {
      if (qword_DE6CC8 != -1)
      {
        swift_once();
      }

      v9 = &qword_E71900;
    }

    else
    {
      if ([v8 itemType] != &dword_4 + 2)
      {
LABEL_14:

LABEL_15:
        v10 = JSArtwork.artworkCatalog(defaultCropStyle:)(v7);

        return v10;
      }

      if (qword_DE6CD0 != -1)
      {
        swift_once();
      }

      v9 = &qword_E71908;
    }

    v11 = *v9;

    v8 = v7;
    v7 = v11;
    goto LABEL_14;
  }

  return 0;
}

char *sub_4E17E8(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  if (a2)
  {
    v5 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6)
    {
      v7 = *&v4[v5];
    }

    else
    {
      v7 = ICStoreArtworkInfoCropStyleBoundedBox;
    }

    v8 = v4;
    v9 = v6;
    v4 = JSArtwork.artworkCatalog(defaultCropStyle:)(v7);
  }

  v10 = (*(&stru_B8.reserved2 + (swift_isaMask & *a3)))(a1);
  if (!v10)
  {
    return v4;
  }

  v11 = v10;
  v12 = [v10 tvShowArtworkRequestToken];

  if (!v12)
  {
    return v4;
  }

  if (v4)
  {
LABEL_11:

    return v4;
  }

  v13 = objc_opt_self();
  v14 = v12;
  result = [v13 sharedStoreArtworkDataSource];
  if (result)
  {
    v12 = result;
    v16 = objc_allocWithZone(MPArtworkCatalog);
    v17 = v14;
    v4 = [v16 initWithToken:v17 dataSource:v12];

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_4E19AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSModelGridItemBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *__swift_memcpy13_1(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSModelGridItemBuilder.InitializedProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[13])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for JSModelGridItemBuilder.InitializedProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double block_copy_helper_159(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4E1B54()
{

  return swift_deallocObject();
}

uint64_t sub_4E1B8C()
{

  return swift_deallocObject();
}

uint64_t sub_4E1BD4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4E1C0C()
{

  return swift_deallocObject();
}

id sub_4E1C54(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_initializedProperties];
  *v3 = 2;
  v3[12] = 0;
  *(v3 + 2) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_socialPersonBuilder] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication22JSModelGridItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelGridItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_4E1E34(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_validationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_textInputDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_propertyChangedObservingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_hasChanges] = 0;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_selectedPhotoIdentifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_greenTeaLogger;
  *&v1[v4] = [objc_allocWithZone(MusicAnalyticsGreenTeaLogger) init];
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardWillShowNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardDidHideNotificationObserver] = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController__appliedContentInsetHeight];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate] = 1;
  v7 = &v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = &v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_maximumMeasuredDescriptionTextWidth] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profileEditor] = a1;
  v9 = objc_allocWithZone(UICollectionViewTableLayout);
  v40 = a1;
  v10 = [v9 init];
  isa = sub_AB9740().super.isa;
  [v10 _setFloatingElementKinds:isa];

  v46.receiver = v1;
  v46.super_class = type metadata accessor for JSSocialProfileEditorViewController();
  v12 = objc_msgSendSuper2(&v46, "initWithCollectionViewLayout:", v10);
  v13 = qword_DE67A8;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_E70D38;
  if (qword_DE6D88 != -1)
  {
    swift_once();
  }

  v16 = qword_E0C260;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  __chkstk_darwin();
  v18 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0C3A8, &qword_B135A8);
  UnfairLock.locked<A>(_:)(sub_4E9C4C);
  v19 = *&v47[0];
  if (!*&v47[0])
  {
    v23 = swift_allocObject();
    *(v23 + 16) = sub_4E9C44;
    *(v23 + 24) = v17;
    v24 = *(v15 + 264);
    if (v24)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = sub_4E9CA0;
      *(v25 + 24) = v23;

      v26 = v24;

      sub_C3548(v26, v16, sub_57B84, v25);
    }

    else
    {
      v27 = *(v15 + 224);
      v42[6] = *(v15 + 208);
      v42[7] = v27;
      v42[8] = *(v15 + 240);
      v43 = *(v15 + 256);
      v28 = *(v15 + 160);
      v42[2] = *(v15 + 144);
      v42[3] = v28;
      v29 = *(v15 + 192);
      v42[4] = *(v15 + 176);
      v42[5] = v29;
      v30 = *(v15 + 128);
      v42[0] = *(v15 + 112);
      v42[1] = v30;
      memmove(v44, (v15 + 112), 0x98uLL);
      if (sub_90064(v44) == 1)
      {
        v31 = *&v18[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson];
        *&v18[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson] = 0;

        sub_4E7858(v31, v32);

        goto LABEL_13;
      }

      v47[6] = v44[6];
      v47[7] = v44[7];
      v47[8] = v44[8];
      v48 = v45;
      v47[2] = v44[2];
      v47[3] = v44[3];
      v47[4] = v44[4];
      v47[5] = v44[5];
      v47[0] = v44[0];
      v47[1] = v44[1];
      type metadata accessor for SocialLegacyProfileBuilder();
      swift_allocObject();

      sub_15F84(v42, &v41, &unk_E05300, &unk_AFA030);
      v33 = v16;
      sub_C3714(v33);

      sub_C2754(v47);
      v35 = v34;

      v36 = *&v18[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson];
      *&v18[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson] = v35;
      v37 = v35;
      sub_4E7858(v36, v38);

      sub_12E1C(v42, &unk_E05300, &unk_AFA030);
    }

    goto LABEL_13;
  }

  v20 = *&v18[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson];
  *&v18[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson] = *&v47[0];
  v21 = v19;
  sub_4E7858(v20, v22);

LABEL_13:

  return v18;
}

void sub_4E23B8(void *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson);
  *(a2 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson) = a1;
  v2 = a1;
  sub_4E7858(v4, v3);
}

void sub_4E243C(uint64_t a1)
{
  v2 = v1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for JSSocialProfileEditorViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for SocialProfileArtworkEditorLockupView();
    v6 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
    v7 = *v6;
    v8 = v6[1];

    v9 = static UICollectionReusableView.reuseIdentifier.getter();
    UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v5, v7, v8, v9, v10);

    v11 = type metadata accessor for SocialProfileEditorCell();
    v12 = static UICollectionReusableView.reuseIdentifier.getter();
    UICollectionView.register<A>(_:reuseIdentifier:)(v11, v12, v13);

    [v4 setBounces:0];
    v14 = qword_DE6C58;
    v15 = v4;
    if (v14 != -1)
    {
      swift_once();
    }

    [v15 setBackgroundColor:qword_E71898];

    [v15 setAllowsFocus:1];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardWillShowNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIKeyboardWillShowNotification, 0, 1, 1, sub_4E9BF4, v16);

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    v18 = UIKeyboardDidHideNotification;

    v19 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v18, 0, 1, 1, sub_4E9BFC, v17);

    *&v2[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardDidHideNotificationObserver] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_4E26F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_AB2BC0();
    if (v4)
    {
      v5 = v4;
      v19 = sub_AB92A0();
      v20 = v6;
      sub_ABAD10();
      if (*(v5 + 16) && (v7 = sub_2EC004(v21), (v8 & 1) != 0))
      {
        sub_808B0(*(v5 + 56) + 32 * v7, &v24);
        sub_8085C(v21);
      }

      else
      {
        sub_8085C(v21);
        v24 = 0u;
        v25 = 0u;
      }

      if (*(&v25 + 1))
      {
        sub_13C80(0, &qword_E05358, NSValue_ptr);
        if (swift_dynamicCast())
        {
          v9 = v21[0];
          [v21[0] CGRectValue];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;

          v18 = &v3[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame];
          *v21 = *&v3[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame];
          v22 = *&v3[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame + 16];
          v23 = v3[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame + 32];
          *v18 = v11;
          *(v18 + 1) = v13;
          *(v18 + 2) = v15;
          *(v18 + 3) = v17;
          v18[32] = 0;
          sub_4E73A0(v21);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    sub_12E1C(&v24, &unk_DE8E40, &unk_AF8050);
LABEL_12:
  }
}

void sub_4E28AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame + 16);
    v6[0] = *(Strong + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame);
    v6[1] = v5;
    v7 = *(Strong + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame + 32);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 1;
    sub_4E73A0(v6);
  }
}

void sub_4E2978(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson];
  if (v3)
  {
    v4 = v2;
    v5 = &v2[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName];
    v6 = *&v2[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName + 8];
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName] & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    if (v7)
    {
      v8 = &v2[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle];
      v9 = *&v4[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle + 8];
      v10 = *&v4[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle] & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v9) & 0xF;
      }

      if (v10)
      {
        v32 = v3;
        v13 = [v32 name];
        if (v13)
        {
          v14 = v13;
          v15 = sub_AB92A0();
          v17 = v16;
        }

        else
        {

          v15 = 0;
          v17 = 0;
        }

        v18 = v5[1];
        v19 = *v5 & 0xFFFFFFFFFFFFLL;
        if ((v18 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v18) & 0xF;
        }

        if (v19)
        {

          v15 = *v5;
          v17 = v5[1];
        }

        v20 = [v32 handle];
        if (v20)
        {
          v21 = v20;
          v22 = sub_AB92A0();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = v8[1];
        v26 = *v8 & 0xFFFFFFFFFFFFLL;
        if ((v25 & 0x2000000000000000) != 0)
        {
          v26 = HIBYTE(v25) & 0xF;
        }

        if (v26)
        {

          v22 = *v8;
          v24 = v8[1];
        }

        v27 = [v4 collectionView];
        if (v27)
        {
          v28 = v27;
          [v27 setUserInteractionEnabled:0];
        }

        a1(2);
        if (qword_DE67A8 != -1)
        {
          swift_once();
        }

        v29 = *&v4[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate];
        *&v33 = v15;
        *(&v33 + 1) = v17;
        v34 = v22;
        v35 = v24;
        v36 = 1;
        v37 = v29;
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = a1;
        v31[4] = a2;
        sub_137F98(v29);

        sub_3821A0(&v33, sub_4E99F4, v31);

        sub_D3144(v29);
      }
    }
  }
}

void sub_4E2C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB7C10();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_AB7C50();
  v11 = *(v22 - 8);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v21 = sub_ABA150();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a3;
    v16[5] = a4;
    aBlock[4] = sub_4E9A48;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_165_1;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    swift_errorRetain();

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_4E9BAC(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_D1010();
    sub_ABABB0();
    v19 = v21;
    sub_ABA160();

    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v22);
    _Block_release(v17);
  }
}

uint64_t sub_4E2F94(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  sub_AB9230();
  __chkstk_darwin();
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  *&v8 = __chkstk_darwin().n128_u64[0];
  if (a1)
  {
    v39 = a2;
    v38 = a3;
    swift_errorRetain();
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v46[0] = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    if (swift_dynamicCast())
    {
      v9 = v42;
      if (v42)
      {
        v10 = aBlock;
        v11 = v41;
      }

      else
      {

        if (aBlock[2])
        {
          v12 = aBlock[4];
          v36 = aBlock[5];

          sub_AB91E0();
          sub_AB3550();
          sub_AB9320();
          v13 = v36;
          sub_4E99D8(aBlock, v41, 0);
          goto LABEL_7;
        }

        sub_AB91E0();
        sub_AB3550();
        sub_AB9320();
        v10 = aBlock;
        v11 = v41;
        v9 = 0;
      }

      sub_4E99D8(v10, v11, v9);
    }

    v12 = 0;
    v13 = 0;
LABEL_7:
    v14 = sub_AB9260();

    v15 = [objc_opt_self() alertControllerWithTitle:v14 message:0 preferredStyle:1];

    if (v13)
    {
      aBlock = (&stru_20 + 32);
      v41 = 0xE100000000000000;
      v47._countAndFlagsBits = v12;
      v47._object = v13;
      sub_AB94A0(v47);
      v16 = aBlock;
      v17 = v41;
      sub_AB9220();
      v48._object = 0x8000000000B68540;
      v48._countAndFlagsBits = 0xD000000000000013;
      sub_AB9210(v48);
      v49._countAndFlagsBits = v16;
      v49._object = v17;
      sub_AB9200(v49);
      v50._countAndFlagsBits = 0xD000000000000024;
      v50._object = 0x8000000000B68560;
      sub_AB9210(v50);
      sub_AB9240();
      sub_AB3550();
      sub_AB9320();
      v18 = sub_AB9260();

      [v15 setMessage:v18];

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v37 = v13;
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = v39;
      v20[4] = a3;

      v21 = sub_AB9260();

      v44 = sub_4E9974;
      v45 = v20;
      aBlock = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_1546C;
      v43 = &block_descriptor_148_0;
      v22 = _Block_copy(&aBlock);

      v23 = objc_opt_self();
      v24 = [v23 actionWithTitle:v21 style:0 handler:v22];
      _Block_release(v22);

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = v12;
      v26[4] = v37;
      v26[5] = v39;
      v26[6] = v38;

      v27 = sub_AB9260();

      v44 = sub_4E99C8;
      v45 = v26;
      aBlock = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_1546C;
      v43 = &block_descriptor_155_1;
      v28 = _Block_copy(&aBlock);

      v29 = [v23 actionWithTitle:v27 style:0 handler:v28];
      _Block_release(v28);

      [v15 addAction:v24];
      [v15 addAction:v29];
      [v15 setPreferredAction:v29];
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v33 = sub_AB9260();

      v29 = [objc_opt_self() actionWithTitle:v33 style:1 handler:0];

      [v15 addAction:v29];
      v34 = [v4 collectionView];
      if (v34)
      {
        v35 = v34;
        [v34 setUserInteractionEnabled:1];
      }

      v39(0);
    }

    [v4 presentViewController:v15 animated:1 completion:0];
  }

  v30 = [v4 collectionView];
  if (v30)
  {
    v31 = v30;
    [v30 setUserInteractionEnabled:1];
  }

  return (a2)(1);
}

void sub_4E384C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 collectionView];

    if (v6)
    {
      [v6 setUserInteractionEnabled:1];
    }

    a3(0);
  }
}

void sub_4E38F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = (Strong + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle);
    *v11 = a3;
    v11[1] = a4;
    v12 = Strong;

    v13 = [v12 collectionView];
    [v13 reloadData];

    sub_4E2978(a5, a6);
  }
}

char *sub_4E3B34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v5 = type metadata accessor for SocialProfileEditorCell();
  v6 = static UICollectionReusableView.reuseIdentifier.getter();
  v8 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v5, a2, v6, v7, v5);

  *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate + 8] = &off_D18E90;
  swift_unknownObjectWeakAssign();
  v9 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_textAlignment];
  *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_textAlignment] = 2;
  if (v9 == 2)
  {
    v10 = v8;
  }

  else
  {
    v11 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField];
    v12 = v8;
    [v11 setTextAlignment:2];
  }

  v13 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocorrectionType];
  *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocorrectionType] = 1;
  if (v13 != 1)
  {
    [*&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField] setAutocorrectionType:1];
  }

  v14 = sub_AB37E0();
  if (v14 == 1)
  {
    v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_identifier] = 1;
    v22 = &v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText];
    v23 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText];
    v24 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText + 8];
    *v22 = 64;
    *(v22 + 1) = 0xE100000000000000;
    sub_71558(v23, v24);

    v25 = (v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle);
    v26 = *(v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle);
    v27 = *(v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle + 8);
    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {

      sub_72758(v26, v27);
    }

    else
    {
      v53 = sub_4E7D10();
      v55 = v54;

      sub_72758(v53, v55);

      *v25 = v53;
      v25[1] = v55;
    }

    sub_AB91E0();
    sub_AB3550();
    v56 = sub_AB9320();
    v57 = &v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionText];
    *v57 = v56;
    v57[1] = v58;

    v59 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel];

    v60 = sub_AB9260();

    [v59 setText:v60];

    [v8 setNeedsLayout];
    v61 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_isDisabled;
    v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_isDisabled] = 0;
    v62 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField;
    [*&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField] setTextFieldEnabled:1];
    v63 = 1.0;
    if (v8[v61])
    {
      v63 = 0.5;
    }

    [*&v8[v62] setAlpha:v63];
    v64 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocapitilizationType];
    *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocapitilizationType] = 0;
    if (v64)
    {
      [*&v8[v62] setAutocapitalizationType:0];
    }

    v65 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isTopSeparatorHidden;
    v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isTopSeparatorHidden] = 0;
    v66 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customTopSeparatorView;
    v67 = *&v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customTopSeparatorView];
    v68 = [v8 contentView];
    v69 = [v67 isDescendantOfView:v68];

    if ((v69 & 1) == 0)
    {
      v70 = [v8 contentView];
      [v70 addSubview:*&v8[v66]];
    }

    [*&v8[v66] setHidden:v8[v65]];
    v49 = &v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isBottomSeparatorHidden];
    v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isBottomSeparatorHidden] = 0;
    v50 = &v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customBottomSeparatorView];
    v51 = *&v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customBottomSeparatorView];
    v52 = [v8 contentView];
  }

  else
  {
    if (v14)
    {
      goto LABEL_35;
    }

    v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_identifier] = 0;
    v15 = &v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText];
    v16 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText];
    v17 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText + 8];
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    sub_71558(v16, v17);

    v18 = (v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName);
    v19 = *(v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName);
    v20 = *(v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName + 8);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      sub_72758(v19, v20);
    }

    else
    {
      v29 = sub_4E7ABC();
      v31 = v30;

      sub_72758(v29, v31);

      *v18 = v29;
      v18[1] = v31;
    }

    sub_AB91E0();
    sub_AB3550();
    v32 = sub_AB9320();
    v33 = &v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionText];
    *v33 = v32;
    v33[1] = v34;

    v35 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel];

    v36 = sub_AB9260();

    [v35 setText:v36];

    v37 = [v8 setNeedsLayout];
    v38 = (*(&stru_B8.offset + (swift_isaMask & **(v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profileEditor))))(v37);
    v39 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_isDisabled;
    v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_isDisabled] = (v38 & 1) == 0;
    v40 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField;
    [*&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField] setTextFieldEnabled:v38 & 1];
    v41 = 1.0;
    if (v8[v39])
    {
      v41 = 0.5;
    }

    [*&v8[v40] setAlpha:v41];
    v42 = *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocapitilizationType];
    *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocapitilizationType] = 1;
    if (v42 != 1)
    {
      [*&v8[v40] setAutocapitalizationType:1];
    }

    v43 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isTopSeparatorHidden;
    v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isTopSeparatorHidden] = 0;
    v44 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customTopSeparatorView;
    v45 = *&v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customTopSeparatorView];
    v46 = [v8 contentView];
    v47 = [v45 isDescendantOfView:v46];

    if ((v47 & 1) == 0)
    {
      v48 = [v8 contentView];
      [v48 addSubview:*&v8[v44]];
    }

    [*&v8[v44] setHidden:v8[v43]];
    v49 = &v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isBottomSeparatorHidden];
    v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isBottomSeparatorHidden] = 1;
    v50 = &v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customBottomSeparatorView];
    v51 = *&v8[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customBottomSeparatorView];
    v52 = [v8 contentView];
  }

  v71 = v52;
  v72 = [v51 isDescendantOfView:v71];

  if ((v72 & 1) == 0)
  {
    v73 = [v8 contentView];
    [v73 addSubview:*v50];
  }

  [*v50 setHidden:*v49];
LABEL_35:
  *&v8[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth] = *(v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_maximumMeasuredDescriptionTextWidth);
  if (sub_AB38D0())
  {
    [v8 setNeedsLayout];
  }

  return v8;
}

uint64_t sub_4E44E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v67 = a1;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v13 = *v12 == a2 && v12[1] == a3;
  if (v13 || (sub_ABB3C0() & 1) != 0)
  {
    v14 = type metadata accessor for SocialProfileArtworkEditorLockupView();
    v15 = static UICollectionReusableView.reuseIdentifier.getter();
    v17 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v14, a2, a3, a4, v15, v16, v14);

    v18 = *(v5 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate);
    v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = a4;
    v68 = v5;
    if (v18)
    {
      if (v18 != &dword_0 + 1)
      {
        v64 = v9;
        v27 = [objc_opt_self() staticArtworkCatalogWithImage:v18];
        v28 = v27;
        v29 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog;
        v30 = *(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog);
        *(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog) = v27;
        if (v30)
        {
          if (v27)
          {
            sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
            v31 = v28;
            v32 = v30;
            v33 = sub_ABA790();

            if (v33)
            {

              sub_D3144(v18);
              v9 = v64;
              goto LABEL_29;
            }

            v37 = *(v17 + v29);
          }

          else
          {
            v37 = 0;
          }

          v9 = v64;
        }

        else
        {
          v9 = v64;
          if (!v27)
          {
            sub_D3144(v18);
            goto LABEL_29;
          }

          v36 = v27;
          v37 = v28;
        }

        v39 = v37;
        sub_74EA4(v37);

        sub_D3144(v18);
        goto LABEL_29;
      }

      v19 = [*(v5 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson) artworkCatalog];
      v20 = v19;
      v21 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog;
      v22 = *(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog);
      *(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog) = v19;
      if (v22)
      {
        if (v19)
        {
          sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
          v23 = v20;
          v24 = v22;
          v25 = sub_ABA790();

          if (v25)
          {

            goto LABEL_29;
          }

          v35 = *(v17 + v21);
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        if (!v19)
        {
          goto LABEL_29;
        }

        v34 = v19;
        v35 = v20;
      }

      v38 = v35;
      sub_74EA4(v35);

      goto LABEL_29;
    }

    v26 = *(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog);
    *(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog) = 0;
    if (v26)
    {
      sub_74EA4(0);
    }

LABEL_29:
    v40 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog;
    if (*(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog))
    {
      goto LABEL_30;
    }

    v49 = *(v68 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson);
    if (!v49)
    {
      goto LABEL_30;
    }

    v50 = v49;
    v51 = [v50 name];
    if (v51)
    {
      v52 = v51;
      v53 = sub_AB92A0();
      v55 = v54;

      v56 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v56 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (!v56)
      {

        goto LABEL_30;
      }

      sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
      v57 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v53, v55, [v67 effectiveUserInterfaceLayoutDirection], 0);

      v58 = *(v17 + v40);
      *(v17 + v40) = v57;
      if (v58)
      {
        if (v57)
        {
          v59 = v57;
          v60 = v58;
          v61 = sub_ABA790();

          if (v61)
          {

LABEL_30:
            v41 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v42 = v65;
            (*(v10 + 16))(v65, v66, v9);
            v43 = (*(v10 + 80) + 24) & ~*(v10 + 80);
            v44 = swift_allocObject();
            *(v44 + 16) = v41;
            (*(v10 + 32))(v44 + v43, v42, v9);
            v45 = (v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkEditButtonHandler);
            v46 = *(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkEditButtonHandler);
            v47 = *(v17 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkEditButtonHandler + 8);
            *v45 = sub_4E9B38;
            v45[1] = v44;

            sub_3FC30(v46, v47);

            return v17;
          }

          v57 = *(v17 + v40);
        }

        else
        {
          v59 = 0;
        }
      }

      else
      {
        if (!v57)
        {
          goto LABEL_30;
        }

        v59 = v57;
      }

      v62 = v57;
      sub_74EA4(v57);

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  sub_ABAD90(23);

  v69._countAndFlagsBits = a2;
  v69._object = a3;
  sub_AB94A0(v69);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

double sub_4E4AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_4E6710(a1);
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15 && (v16 = v15, v36 = v6, v17 = a3, sub_12B2FC(), v19 = v18, v21 = v20, v16, v19))
  {
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(ObjectType, v21);
    v24 = v23;
    swift_unknownObjectRelease();
    v25 = swift_getObjectType();
    (*(v10 + 16))(v12, v17, v9);
    sub_4E9BAC(&qword_DFAA90, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
    sub_3B8F68(v25);
    v26 = sub_21CCAC(1, v8, v37, v25, v24);
    (*(v36 + 8))(v8, v5);
    sub_12E1C(v37, &qword_DF2BD0, &unk_AFDC00);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    v29 = *(v27 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profileEditor);

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      sub_12AFE8();
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    (*&stru_108.segname[(swift_isaMask & *v29) + 8])(v26, v33);
  }

  return result;
}

double sub_4E5300(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_4E7FC8();
  type metadata accessor for SocialProfileEditorCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_identifier);
    if (v9 != 2)
    {
      if (v9)
      {
        v10 = &OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle;
      }

      else
      {
        v10 = &OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName;
      }

      v11 = (v3 + *v10);
      *v11 = a2;
      v11[1] = a3;
      v12 = a1;
    }
  }

  *(v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_hasChanges) = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_42FC20();
    swift_unknownObjectRelease();
  }

  v13 = sub_4E7FC8();
  if (v7 != v13)
  {
    v15 = v13;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_17FE5C(v15);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_4E5444(uint64_t a1)
{
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SocialProfileEditorCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_identifier);
    if (v7 != 2)
    {
      if (v7)
      {
        v8 = 0x656D616E72657375;
      }

      else
      {
        v8 = 1701667182;
      }

      if (v7)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0xE400000000000000;
      }

      v10 = sub_4D39CC();
      if (v10)
      {
        v18 = v10;
        type metadata accessor for JSVerticalStackViewController(0);
        if (swift_dynamicCastClass())
        {
          sub_A0BB4();
          v23 = 0;
          memset(v22, 0, sizeof(v22));
          sub_AB3420();
          sub_15F84(v22, v21, &qword_DF2BD0, &unk_AFDC00);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
          v11 = swift_dynamicCast();
          if (v11)
          {
            v12 = v19;
          }

          else
          {
            v12 = 0;
            v19 = 0;
          }

          v20 = v11 ^ 1;
          v14 = sub_2CD29C(1u, v5, v12, v11 ^ 1u);
          (*(v3 + 8))(v5, v2);
          sub_12E1C(v22, &qword_DF2BD0, &unk_AFDC00);

          if (v14)
          {
            v15 = *(v1 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profileEditor);
            sub_12AFE8();
            v17 = v16;
            (*&stru_108.segname[swift_isaMask & *v15])(v8, v9, v14, v16);
          }

          else
          {
          }
        }

        else
        {

          v13 = v18;
        }
      }

      else
      {
      }
    }
  }
}

void sub_4E5770(void *a1, uint64_t a2)
{
  v3 = v2;
  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_2F5AD8();
  if (v7)
  {
    sub_808B0(*(a2 + 56) + 32 * v6, v39);
    sub_9ACFC(v39, &v41);
    goto LABEL_9;
  }

  v8 = *(a2 + 16);
  *v39 = 0u;
  v40 = 0u;
  if (v8 && (v9 = sub_2F5AD8(), (v10 & 1) != 0))
  {
    sub_808B0(*(a2 + 56) + 32 * v9, &v41);
    if (*(&v40 + 1))
    {
      sub_12E1C(v39, &unk_DE8E40, &unk_AF8050);
    }
  }

  else
  {
LABEL_8:
    v41 = 0u;
    v42 = 0u;
  }

LABEL_9:
  if (*(&v42 + 1))
  {
    sub_13C80(0, &qword_DE8700, UIImage_ptr);
    if (swift_dynamicCast())
    {
      v11 = v39[0];
      if (*(a2 + 16) && (v12 = sub_2F5AD8(), (v13 & 1) != 0) && (sub_808B0(*(a2 + 56) + 32 * v12, &v41), sub_13C80(0, &qword_DE8170, NSString_ptr), (swift_dynamicCast() & 1) != 0) && (v14 = v39[0], v15 = kUTTypeImage, v16 = sub_ABA790(), v15, v14, (v16 & 1) != 0))
      {
        if (*(a2 + 16) && (v17 = sub_2F5AD8(), (v18 & 1) != 0) && (sub_808B0(*(a2 + 56) + 32 * v17, &v41), sub_13C80(0, &qword_E05358, NSValue_ptr), (swift_dynamicCast() & 1) != 0))
        {
          v19 = v39[0];
          [v39[0] CGRectValue];
          v36 = v20;
          v37 = v21;
          v35 = v22;
          v38 = v23;

          *&v26 = v35;
          *&v25 = v36;
          v24 = 0;
          *(&v25 + 1) = v37;
          *(&v26 + 1) = v38;
        }

        else
        {
          v25 = 0uLL;
          v24 = 1;
          v26 = 0uLL;
        }

        v41 = v25;
        v42 = v26;
        v43 = v24;
        v33 = UIImage.centerCropIfNeeded(imageRect:)(&v41);

        v34 = v33;
        sub_4E79C4(v33);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_12E1C(&v41, &unk_DE8E40, &unk_AF8050);
  }

  v27 = [a1 presentingViewController];
  if (!v27)
  {
    goto LABEL_27;
  }

  v28 = v27;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {

LABEL_27:
    [a1 dismissViewControllerAnimated:1 completion:0];
    return;
  }

  v30 = [v29 presentingViewController];
  if (v30)
  {
    v31 = v30;
    [v30 dismissViewControllerAnimated:1 completion:0];
  }

  v32 = (v3 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_selectedPhotoIdentifier);
  *v32 = 0;
  v32[1] = 0;
}

id sub_4E5BCC(void *a1)
{
  v3 = [a1 presentingViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = (v1 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_selectedPhotoIdentifier);
      v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_selectedPhotoIdentifier + 8);
      if (v7)
      {
        v8 = *v6;
        v9 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_AF4EC0;
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;

        isa = sub_AB9740().super.isa;

        [v9 deselectAssetsWithIdentifiers:isa];

        *v6 = 0;
        v6[1] = 0;

        [v9 setModalInPresentation:0];
      }
    }
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_4E5D7C(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_AB8EA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = *(sub_AB4A70() - 8);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v25 = v7;
    v26 = a1;
    v14 = *(v8 + 80);
    v28 = ObjectType;
    v29 = v11;
    v15 = (v14 + 32) & ~v14;
    v27 = sub_AB8E80();
    sub_AB4A60();
    v16 = v25;
    (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + v15, v25);
    v17 = swift_allocObject();
    v18 = v26;
    *(v17 + 16) = v3;
    *(v17 + 24) = v18;
    (*(v8 + 32))(v17 + v15, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    *(v17 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    v19 = v3;
    v20 = v18;
    v21 = v27;
    v22 = sub_AB9F70();
    (*(v10 + 8))(v13, v29);
  }

  else
  {
    v23 = &v3[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_selectedPhotoIdentifier];
    *v23 = 0;
    *(v23 + 1) = 0;

    [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

double sub_4E601C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v32 = a5;
  v33 = a7;
  v29 = a2;
  v12 = sub_AB8EA0();
  v30 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v31 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v16 = &v28 - v15;
  v17 = sub_AB9990();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v13 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  sub_AB9940();
  v18 = a1;
  sub_9007C(a1, a2);
  v19 = a3;
  swift_errorRetain();
  v20 = a4;
  v21 = v32;
  v22 = sub_AB9930();
  v23 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v22;
  *(v24 + 3) = &protocol witness table for MainActor;
  v26 = v29;
  v25 = v30;
  *(v24 + 4) = v18;
  *(v24 + 5) = v26;
  *(v24 + 6) = v19;
  *(v24 + 7) = v20;
  *(v24 + 8) = v21;
  (*(v13 + 32))(&v24[v23], v31, v25);
  *&v24[(v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = v33;
  sub_DBDC8(0, 0, v16, &unk_B135A0, v24);

  return result;
}

uint64_t sub_4E6288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_AB9940();
  v8[9] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_4E6330, v10, v9);
}

uint64_t sub_4E6330()
{
  v36 = v0;
  v1 = v0[4];
  if (v1 >> 60 != 15)
  {
    v2 = v0[3];
    v3 = objc_allocWithZone(UIImage);
    sub_90090(v2, v1);
    sub_90090(v2, v1);
    isa = sub_AB3250().super.isa;
    v5 = [v3 initWithData:isa];

    sub_466A4(v2, v1);
    if (v5)
    {
      v6 = v0[6];
      v7 = sub_AB8E90();
      v8 = (v6 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_selectedPhotoIdentifier);
      *v8 = v7;
      v8[1] = v9;

      v10 = UIImagePNGRepresentation(v5);
      if (v10)
      {
        v11 = v10;
        v12 = sub_AB3260();
        v14 = v13;

        type metadata accessor for ImageEditingViewController();
        v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v16 = sub_AB3250().super.isa;
        v17 = [v15 _initWithSourceImageData:v16 cropRect:UIImage.centeredSquareCropRect.getter()];

        if (v17)
        {
          v18 = v0[7];
          v20 = v0[3];
          v19 = v0[4];
          [v17 setDelegate:v0[6]];
          [v17 setModalInPresentation:1];
          UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

          UIImagePickerController.setProperties(_:)(v21);

          [v18 presentViewController:v17 animated:1 completion:0];
          [v17 becomeFirstResponder];
          sub_466A4(v20, v19);
        }

        else
        {
          sub_466A4(v0[3], v0[4]);
        }

        sub_466B8(v12, v14);
      }

      else
      {
        sub_466A4(v0[3], v0[4]);
      }

      goto LABEL_16;
    }

    sub_466A4(v0[3], v0[4]);
  }

  if (qword_DE6D90 != -1)
  {
    swift_once();
  }

  v22 = sub_AB4BC0();
  __swift_project_value_buffer(v22, qword_E0C268);
  swift_errorRetain();
  v23 = sub_AB4BA0();
  v24 = sub_AB9F30();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315138;
    v0[2] = v25;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0, &qword_B0EB40);
    v28 = sub_AB9350();
    v30 = sub_425E68(v28, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "Failed to load UIImage in photo picker, error: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v31 = v0[7];
  v32 = (v0[6] + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_selectedPhotoIdentifier);
  *v32 = 0;
  v32[1] = 0;

  [v31 dismissViewControllerAnimated:1 completion:0];
LABEL_16:

  v33 = v0[1];

  return v33();
}

void sub_4E6710(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v3 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = objc_opt_self();
  v5 = &selRef__authenticateReturningError_;
  if ([v4 isSourceTypeAvailable:1])
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = sub_AB9260();

    v37 = sub_4E9584;
    v38 = v6;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1546C;
    v36 = &block_descriptor_134_1;
    v8 = _Block_copy(&aBlock);

    v9 = v1;
    v10 = a1;
    v11 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];
    _Block_release(v8);

    [v3 addAction:v11];
    a1 = v10;
    v1 = v9;
    v5 = &selRef__authenticateReturningError_;
  }

  if ([v4 isSourceTypeAvailable:0])
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v13 = sub_AB9260();

    v37 = sub_4E957C;
    v38 = v12;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1546C;
    v36 = &block_descriptor_130_0;
    v14 = _Block_copy(&aBlock);

    v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    [v3 v5[29]];
  }

  v16 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate];
  if (v16)
  {
    if (v16 != 1 || (v17 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson]) != 0 && (v18 = [v17 artworkCatalog], v18, v18))
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v19 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v20 = sub_AB9260();

      v37 = sub_4E9524;
      v38 = v19;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1546C;
      v36 = &block_descriptor_160;
      v21 = _Block_copy(&aBlock);

      v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];
      _Block_release(v21);

      [v3 v5[29]];
    }
  }

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v23 = sub_AB9260();

  v24 = [objc_opt_self() actionWithTitle:v23 style:1 handler:0];

  [v3 v5[29]];
  v25 = v3;
  [v1 presentViewController:v25 animated:1 completion:0];
  v26 = [v25 popoverPresentationController];
  if (v26)
  {
    v27 = v26;
    [v26 setSourceView:a1];
  }

  v28 = [v25 popoverPresentationController];

  if (v28)
  {
    if (a1)
    {
      [*(*(a1 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkComponent) + 112) frame];
    }

    else
    {
      v29 = 0.0;
      v30 = 0.0;
      v31 = 0.0;
      v32 = 0.0;
    }

    [v28 setSourceRect:{v29, v30, v31, v32}];
  }

  else
  {
    v28 = v24;
  }
}

void sub_4E6E3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_greenTeaLogger);

    [v4 logCameraAccess];
  }

  v5 = [objc_allocWithZone(UIImagePickerController) init];
  [v5 setSourceType:1];
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  [v5 setDelegate:v6];

  [v5 _setImagePickerSavingOptions:3];
  [v5 setAllowsEditing:1];
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  UIImagePickerController.setProperties(_:)(v7);

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 presentViewController:v5 animated:1 completion:0];

    v5 = v9;
  }
}

void sub_4E6FAC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05320, &unk_B0DAE8);
  __chkstk_darwin();
  v3 = &v19 - v2;
  v4 = sub_AB8EF0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_greenTeaLogger);

    [v12 logPhotoAccess];
  }

  v13 = [objc_opt_self() sharedPhotoLibrary];
  sub_AB8EB0();
  sub_AB8E60();
  v14 = sub_AB8E70();
  (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
  sub_AB8EE0();
  sub_13C80(0, &qword_E0C390, PHPickerViewController_ptr);
  (*(v5 + 16))(v7, v9, v4);
  v15 = sub_ABA380();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_4E9BAC(&unk_E0C398, v16, type metadata accessor for JSSocialProfileEditorViewController, &unk_B13558);
  }

  sub_ABA390();
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    [v17 presentViewController:v15 animated:1 completion:0];
    (*(v5 + 8))(v9, v4);

    v15 = v18;
  }

  else
  {
    (*(v5 + 8))(v9, v4);
  }
}

void sub_4E72D0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate;
  v4 = Strong;
  v8 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate);
  *(v4 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate) = 0;
  sub_D3144(v5);
  v6 = v8;
  if (*&v8[v3] != 1)
  {
    v8[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_hasChanges] = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_42FC20();
      swift_unknownObjectRelease();
    }

    v7 = [v8 collectionView];
    [v7 reloadData];

    v6 = v7;
  }
}

void sub_4E73A0(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame];
  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame + 24];
  if (*(a1 + 32))
  {
    if (v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame + 32])
    {
      return;
    }

    goto LABEL_3;
  }

  if ((v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame + 32] & 1) == 0)
  {
    v29.origin.x = *v11;
    v29.origin.y = v11[1];
    v29.size.width = v11[2];
    v28.origin.x = v3;
    v28.origin.y = v4;
    v28.size.width = v5;
    v28.size.height = v6;
    v29.size.height = *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame + 24];
    if (CGRectEqualToRect(v28, v29))
    {
      return;
    }

    if ((v11[4] & 1) == 0)
    {
      v12 = *(v11 + 3);
LABEL_3:
      v13 = &v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController__appliedContentInsetHeight];
      *v13 = v12;
      v13[8] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if ([Strong isViewLoaded])
        {
          v15 = sub_4D3DD0();
          [v15 contentInset];
          [v15 setContentInset:?];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v24 = [v1 collectionView];
      if (v24)
      {
        v25 = v24;
        sub_AB37C0();
        isa = sub_AB3770().super.isa;
        (*(v8 + 8))(v10, v7);
        [v25 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:1];
      }

      return;
    }
  }

  v16 = &v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController__appliedContentInsetHeight];
  if ((v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController__appliedContentInsetHeight + 8] & 1) == 0)
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      if ([v17 isViewLoaded])
      {
        v18 = objc_opt_self();
        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_4E9C04;
        aBlock[5] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B5EB4;
        aBlock[3] = &block_descriptor_177_0;
        v20 = _Block_copy(aBlock);

        [v18 animateWithDuration:v20 animations:0.3];
        _Block_release(v20);
      }

      swift_unknownObjectRelease();
    }

    v21 = [v1 collectionView];
    if (v21)
    {
      v22 = v21;
      sub_AB37C0();
      v23 = sub_AB3770().super.isa;
      (*(v8 + 8))(v10, v7);
      [v22 scrollToItemAtIndexPath:v23 atScrollPosition:2 animated:1];
    }

    *v16 = 0;
    v16[8] = 1;
  }
}

void sub_4E7764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E0C260 = v6;
}

void sub_4E7858(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = *&v3[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson];
  if (v5)
  {
    if (a1)
    {
      sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);
      v6 = v5;
      v7 = a1;
      v8 = sub_ABA790();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = sub_4E7ABC();
  v10 = &v3[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName];
  *v10 = v9;
  v10[1] = v11;

  v12 = sub_4E7D10();
  v13 = &v3[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle];
  *v13 = v12;
  *(v13 + 1) = v14;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = sub_4E7FC8();
    sub_17FE5C(v15);
    swift_unknownObjectRelease();
  }

  v16 = [v3 collectionView];
  [v16 reloadData];
}

void sub_4E79C4(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate];
  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate] = a1;
  sub_137F98(a1);
  sub_D3144(v4);
  if (*&v1[v3] == 1)
  {

    sub_D3144(a1);
  }

  else
  {
    v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_hasChanges] = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_42FC20();
      swift_unknownObjectRelease();
    }

    v5 = [v1 collectionView];
    [v5 reloadData];
    sub_D3144(a1);
  }
}

uint64_t sub_4E7ABC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson);
  if (!v1)
  {
LABEL_8:
    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8, qword_B0F8E0);
    UnfairLock.locked<A>(_:)(sub_49F834);
    if (*&v17[0])
    {
      v9 = JSSocialProfile.name.getter();
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v5 = JSSocialProfile.name.getter();

        return v5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
    UnfairLock.locked<A>(_:)(sub_31A7A4);
    v20 = v15[6];
    v21 = v15[7];
    v22 = v15[8];
    v23 = v16;
    v17[2] = v15[2];
    v17[3] = v15[3];
    v18 = v15[4];
    v19 = v15[5];
    v17[0] = v15[0];
    v17[1] = v15[1];
    if (sub_90064(v17) != 1)
    {
      v5 = v18;
      v13 = HIBYTE(*(&v18 + 1)) & 0xFLL;
      if ((*(&v18 + 1) & 0x2000000000000000) == 0)
      {
        v13 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {

        sub_12E1C(v15, &unk_E05300, &unk_AFA030);
        return v5;
      }

      sub_12E1C(v15, &unk_E05300, &unk_AFA030);
    }

    return 0;
  }

  v2 = v1;
  v3 = [v2 name];
  if (!v3)
  {

    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_AB92A0();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_8;
  }

  return v5;
}

id sub_4E7D10()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 handle];
    if (v4)
    {
      v5 = v4;
      v6 = sub_AB92A0();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        return v6;
      }
    }

    else
    {
    }
  }

  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8, qword_B0F8E0);
  UnfairLock.locked<A>(_:)(sub_199998);
  if (v21)
  {
    v11 = JSSocialProfile.handle.getter();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v15 = JSSocialProfile.handle.getter();

      return v15;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
  UnfairLock.locked<A>(_:)(sub_90048);
  v27 = v19[6];
  v28 = v19[7];
  v29 = v19[8];
  v30 = v20;
  v23 = v19[2];
  v24 = v19[3];
  v25 = v19[4];
  v26 = v19[5];
  v21 = v19[0];
  v22 = v19[1];
  v16 = sub_90064(&v21);
  if (v16 != 1)
  {
    v17 = BYTE7(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v17 = *(&v22 + 1) & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = *(&v22 + 1);

      sub_12E1C(v19, &unk_E05300, &unk_AFA030);
      return v18;
    }

    v16 = sub_12E1C(v19, &unk_E05300, &unk_AFA030);
  }

  return (*(&stru_B8.reserved2 + (swift_isaMask & **(v1 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profileEditor))))(v16);
}

BOOL sub_4E7FC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName) & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle + 8);
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle) & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

uint64_t sub_4E8020()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E0C268);
  __swift_project_value_buffer(v0, qword_E0C268);
  sub_13C80(0, &qword_DED8C0, OS_os_log_ptr);
  OS_os_log.init(musicCategory:)(0x6C6169636F53534ALL, 0xEF656C69666F7250);
  return sub_AB4BD0();
}

double sub_4E827C()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_hasChanges) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_42FC20();

    swift_unknownObjectRelease();
  }

  return result;
}

char *sub_4E82E0(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300, &qword_AFEFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v4[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isTopSeparatorHidden] = 0;
  v4[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isBottomSeparatorHidden] = 0;
  v4[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_identifier] = 2;
  v11 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customTopSeparatorView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customBottomSeparatorView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_validationRule] = 0;
  v13 = type metadata accessor for SocialProfileEditorCell();
  v22.receiver = v4;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  objc_allocWithZone(NSRegularExpression);
  v15 = v14;
  v16 = sub_3ED260(0x307A2D615A2D415BLL, 0xED00002B5D5F392DLL, 0);
  v17 = *&v15[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_validationRule];
  *&v15[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_validationRule] = v16;

  v18 = v15;
  sub_AB4ED0();
  v19 = sub_AB4F50();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  sub_ABA2D0();

  return v18;
}

void sub_4E8590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = [a1 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB92A0();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      goto LABEL_9;
    }
  }

  if ((a4 != 32 || a5 != 0xE100000000000000) && (sub_ABB3C0() & 1) == 0)
  {
LABEL_9:
    v17 = [a1 text];
    if (v17)
    {
      v18 = v17;
      v19 = sub_AB9260();
      v20 = a2;
      v21 = [v18 stringByReplacingCharactersInRange:a2 withString:{a3, v19}];

      v22 = sub_AB92A0();
      v24 = v23;
    }

    else
    {
      v20 = a2;
      swift_bridgeObjectRetain_n();
      v22 = a4;
      v24 = a5;
    }

    v26 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText);
    v25 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText + 8);

    v58 = v22;
    v27 = sub_AB9420();

    v28 = sub_AB9420();
    if (!__OFSUB__(v27, v28))
    {
      if (v27 == v28)
      {

        v29 = sub_AB9420();

        if (v29 >= 1)
        {

          sub_72758(0, 0xE000000000000000);
          v30 = v5 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v31 = *(v30 + 8);
            ObjectType = swift_getObjectType();
            (*(v31 + 16))(v5, 0, 0xE000000000000000, ObjectType, v31);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          return;
        }
      }

      v33 = *(v5 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_identifier);
      if (v33 != 2 && (v33 & 1) != 0)
      {
        if (sub_AB9420() >= 33)
        {

          return;
        }

        v34 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v34 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (!v34)
        {
          goto LABEL_34;
        }

        v35 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText + 8);
        if (!((v35 & 0x2000000000000000) != 0 ? HIBYTE(v35) & 0xF : *(v5 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText) & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_34;
        }

        v37 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v37 = v58 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {

          sub_AB93C0();
        }

        else
        {
LABEL_34:
        }

        v38 = *(v5 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_validationRule);
        if (v38)
        {
          v39 = v38;
          v40 = sub_AB9420();
          v41 = sub_AB9260();
          v57 = v39;
          v56 = v40;
          v42 = [v39 rangeOfFirstMatchInString:v41 options:0 range:{0, v40}];
          v44 = v43;

          if (!v42 && v56 == v44)
          {

            sub_72758(v58, v24);

            v45 = v5 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v46 = *(v45 + 8);
              v47 = swift_getObjectType();
              (*(v46 + 16))(v5, v58, v24, v47, v46);
              swift_unknownObjectRelease();
            }
          }

          v48 = sub_AB9420();
          v49 = v20 + v48;
          if (!__OFADD__(v20, v48))
          {
            sub_36A48();
            v50 = sub_ABAB20();

            v51 = (v50 & 1) == 0;
            v52 = v49 + v51;
            if (!__OFADD__(v49, v51))
            {
              v53 = [a1 beginningOfDocument];
              v54 = [a1 positionFromPosition:v53 offset:v52];

              if (v54)
              {
                v55 = [a1 textRangeFromPosition:v54 toPosition:v54];
                [a1 setSelectedTextRange:v55];
              }

              else
              {
              }

              return;
            }

LABEL_48:
            __break(1u);
            return;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      sub_71F4C(a1, v20, a3, a4, a5);

      return;
    }

    __break(1u);
    goto LABEL_47;
  }
}

void sub_4E8C24(__n128 a1)
{
  v27.receiver = v1;
  v27.super_class = type metadata accessor for SocialProfileEditorCell();
  objc_msgSendSuper2(&v27, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isTopSeparatorHidden] != 1 || (v1[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isBottomSeparatorHidden] & 1) == 0)
  {
    v2 = [v1 contentView];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v23 = v7;
    v9 = v8;
    [v1 music_inheritedLayoutInsets];
    v26 = v10;
    v12 = v11;
    [v1 effectiveUserInterfaceLayoutDirection];
    v13 = [v1 traitCollection];
    [v13 displayScale];

    v28.origin.x = UIEdgeInsetsInsetRect(v4, v6, v23, v9, v26, v12);
    x = v28.origin.x;
    width = v28.size.width;
    height = v28.size.height;
    y = v28.origin.y;
    CGRectGetMinY(v28);
    v16 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customTopSeparatorView;
    v17 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customTopSeparatorView];
    sub_ABA490();
    [v17 setFrame:?];

    v18 = qword_DE6C70;
    v19 = *&v1[v16];
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_E718B0;
    [v19 setBackgroundColor:qword_E718B0];

    v29.origin.x = x;
    v29.size.height = height;
    v29.origin.y = y;
    v29.size.width = width;
    CGRectGetMaxY(v29);
    v21 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customBottomSeparatorView;
    v22 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customBottomSeparatorView];
    sub_ABA490();
    [v22 setFrame:?];

    [*&v1[v21] setBackgroundColor:v20];
  }
}

void sub_4E8F14()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_validationRule);
}

id sub_4E8F80(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_4E904C()
{
  result = qword_E0C380;
  if (!qword_E0C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C380);
  }

  return result;
}

void sub_4E90A0(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_maximumMeasuredDescriptionTextWidth;
  if (*&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_maximumMeasuredDescriptionTextWidth] > a1)
  {
    a1 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_maximumMeasuredDescriptionTextWidth];
  }

  *&v1[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_maximumMeasuredDescriptionTextWidth] = a1;
  if (sub_AB38D0())
  {
    if ([v1 isViewLoaded])
    {
      v4 = [v1 collectionView];
      if (v4)
      {
        v13 = v4;
        v5 = [v4 visibleCells];
        sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
        v6 = sub_AB9760();

        if (v6 >> 62)
        {
          v7 = sub_ABB060();
          if (v7)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
          if (v7)
          {
LABEL_8:
            if (v7 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v7; ++i)
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v9 = sub_360438(i, v6);
              }

              else
              {
                v9 = *(v6 + 8 * i + 32);
              }

              v10 = v9;
              type metadata accessor for TextFieldCell();
              v11 = swift_dynamicCastClass();
              if (v11)
              {
                v12 = v11;
                *(v11 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth) = *&v2[v3];
                if (sub_AB38D0())
                {
                  [v12 setNeedsLayout];
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_4E929C()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_validationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_textInputDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_propertyChangedObservingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_hasChanges) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_selectedPhotoIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_greenTeaLogger;
  *(v0 + v2) = [objc_allocWithZone(MusicAnalyticsGreenTeaLogger) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardWillShowNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardDidHideNotificationObserver) = 0;
  v3 = v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController__appliedContentInsetHeight;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_keyboardFrame;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_profilePerson) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userPhotoUpdate) = 1;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_userSelectedHandle);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_maximumMeasuredDescriptionTextWidth) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_4E9414()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isTopSeparatorHidden) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_isBottomSeparatorHidden) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_identifier) = 2;
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customTopSeparatorView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_customBottomSeparatorView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_73B7D12FF9680D385DB95E0148B1EC6623SocialProfileEditorCell_validationRule) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_4E94EC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

double block_copy_helper_160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4E9544()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4E958C()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_4E9664(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_AB8EA0() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_4E601C(a1, a2, a3, v9, v10, v3 + v8, v11);
}

uint64_t sub_4E971C()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  if (v4 >> 60 != 15)
  {
    sub_466B8(*(v0 + 32), v4);
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_4E981C(uint64_t a1)
{
  sub_AB8EA0();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_4E6288(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_4E9980()
{

  return swift_deallocObject();
}

double sub_4E99D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_4E9A00()
{

  return swift_deallocObject();
}

uint64_t sub_4E9A74()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_4E9B38(uint64_t a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_4E4AF4(a1, v4, v5);
}

uint64_t sub_4E9BAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4E9C0C()
{

  return swift_deallocObject();
}

uint64_t sub_4E9C68()
{

  return swift_deallocObject();
}

id sub_4E9DB0(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
  v8 = &v7[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for JSTabViewController(0);

  v9 = objc_msgSendSuper2(&v12, "init");
  v10 = sub_AB9260();

  [v9 setTitle:{v10, v12.receiver, v12.super_class}];

  return v9;
}

uint64_t type metadata accessor for JSListenNowTabViewController(uint64_t a1)
{
  result = qword_E0C3F0;
  if (!qword_E0C3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4E9F70()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  result = sub_AB9320();
  byte_E0C3B0 = 0;
  qword_E0C3B8 = result;
  unk_E0C3C0 = v1;
  return result;
}

void *sub_4EA070(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0C400, &unk_B13630);
  result = sub_ABB090();
  v3 = 0;
  v26 = result;
  v27 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v25 = result + 8;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = v15[1];
      v29 = *v15;
      sub_E8BA0(*(v27 + 56) + 40 * v14, v30);
      v17 = v31;
      v18 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v19 = *(v18 + 8);

      v20 = v19(v17, v18);
      __swift_destroy_boxed_opaque_existential_0(v30);
      result = v26;
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = (v26[6] + 16 * v14);
      *v21 = v29;
      v21[1] = v16;
      *(v26[7] + 8 * v14) = v20;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v26[2] = v24;
      v9 = v28;
      if (!v28)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v28 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_4EA3CC()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v1 = (*&v0[OBJC_IVAR____TtC16MusicApplication23JSMessageViewController_messageViewModel] + OBJC_IVAR____TtC11MusicJSCore18JSMessageViewModel_headerTitle);
  swift_beginAccess();
  v2 = v1[1];
  v3 = *v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    v4 = sub_4EA580();

    v5 = sub_AB9260();

    [v4 setTitle:v5];
  }

  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_E71898];
    v8 = sub_4EA580();
    [v7 addSubview:v8];

    v9 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController];
    if (v9)
    {
      v10 = [v9 view];
      if (v10)
      {
        v11 = v10;
        [v7 addSubview:v10];

        v7 = v11;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_4EA580()
{
  v1 = OBJC_IVAR____TtC16MusicApplication23JSMessageViewController____lazy_storage___noContentView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication23JSMessageViewController____lazy_storage___noContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication23JSMessageViewController____lazy_storage___noContentView);
  }

  else
  {
    sub_4EA788();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_4EA628()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v1 = sub_4D3DD0();
  [v1 contentInset];
  v3 = v2;
  v5 = v4;

  [*&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] contentSize];
  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = sub_4EA580();
    [v18 setFrame:{v11, v3 + v7 + v13, v15, v17 - (v5 + v3 + v7)}];
  }

  else
  {
    __break(1u);
  }
}

void sub_4EA788()
{
  v1 = [v0 title];
  if (v1)
  {
    v2 = v1;
    sub_AB92A0();

    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(_UIContentUnavailableView) initWithFrame:v3 title:0 style:{0.0, 0.0, 0.0, 0.0}];

  if (v4)
  {
    v5 = qword_DE6C58;
    v6 = v4;
    if (v5 != -1)
    {
      v13 = v6;
      swift_once();
      v6 = v13;
    }

    v7 = v6;
    [v6 setBackgroundColor:qword_E71898];

    swift_beginAccess();

    v8 = sub_AB9260();

    [v7 setMessage:v8];

    swift_beginAccess();

    v9 = sub_AB9260();

    [v7 setButtonTitle:v9];

    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v14[4] = sub_4EB38C;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1B5EB4;
    v14[3] = &block_descriptor_161;
    v11 = _Block_copy(v14);
    v12 = v0;

    [v7 setButtonAction:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_4EAA20()
{
  v1 = sub_AB3430();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin();
  v52 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v9 = &v51 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v51 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v15 = &v51 - v14;
  v16 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v17 = *&v0[OBJC_IVAR____TtC16MusicApplication23JSMessageViewController_messageViewModel];
  v55 = v16;
  v56 = v17;
  v18 = sub_4EA580();
  [*&v0[OBJC_IVAR____TtC16MusicApplication23JSMessageViewController____lazy_storage___noContentView] bounds];
  v73[0] = v18;
  v73[1] = v19;
  v73[2] = v20;
  v73[3] = v21;
  v73[4] = v22;
  v74 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v73, 15, v65);
  v69[0] = v65[0];
  v69[1] = v65[1];
  v70 = v66;
  v71 = v67;
  v72 = v68;
  PresentationSource.init(viewController:position:)(v0, v69, v64);
  v23 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v24 = *(*(v23 - 8) + 56);
  v57 = v15;
  v24(v15, 1, 1, v23);
  sub_15F84(v62, &v59, &unk_DE8E30, "\b]\r");
  if (!*(&v60 + 1))
  {
    sub_12E1C(&v59, &unk_DE8E30, "\b]\r");
    v29 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
  v25 = _s30CollectionViewSelectionHandlerVMa(0);
  v26 = swift_dynamicCast();
  v27 = *(v25 - 8);
  (*(v27 + 56))(v9, v26 ^ 1u, 1, v25);
  if ((*(v27 + 48))(v9, 1, v25) == 1)
  {
LABEL_5:
    sub_12E1C(v9, &qword_E037A0, &unk_AF8B30);
    v28 = 1;
    goto LABEL_6;
  }

  (*(v4 + 16))(v13, &v9[*(v25 + 20)], v3);
  sub_2D6C0(v9, _s30CollectionViewSelectionHandlerVMa);
  v28 = 0;
LABEL_6:
  (*(v4 + 56))(v13, v28, 1, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v31 = Strong, sub_12B2FC(), v33 = v32, v35 = v34, v31, v33))
  {
    ObjectType = swift_getObjectType();
    (*(v35 + 8))(ObjectType, v35);
    v38 = v37;
    swift_unknownObjectRelease();
    sub_15F84(v13, v11, &unk_DE8E20, &qword_AF7990);
    if ((*(v4 + 48))(v11, 1, v3) == 1)
    {
      sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
    }

    else
    {
      (*(v4 + 32))(v51, v11, v3);
      sub_2D668();
      sub_ABAD10();
    }

    v40 = swift_getObjectType();
    v41 = v52;
    sub_3B8F68(v40);
    v39 = sub_21CCAC(1, v41, &v59, v40, v38);
    (*(v53 + 8))(v41, v54);
    sub_12E1C(&v59, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
    v39 = 0;
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    sub_12AFE8();
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  sub_15F28(v64, &v59);
  sub_15F84(v62, (v7 + 104), &unk_DE8E30, "\b]\r");
  v47 = v57;
  v46 = v58;
  sub_15F84(v57, &v7[*(v58 + 28)], &unk_DEA510, "\b]\r");
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 8) = 1;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  sub_2D594(&v59, v7);
  *(v7 + 12) = 0;
  v48 = *v55;
  *(&v60 + 1) = v46;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
  sub_2D604(v7, boxed_opaque_existential_0);
  v50 = v48;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v56, 1, v39, v45, &v59);
  sub_12E1C(v47, &unk_DEA510, "\b]\r");
  sub_12E1C(v62, &unk_DE8E30, "\b]\r");
  sub_1611C(v64);
  sub_2D6C0(v7, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v59, &unk_DE8E40, &unk_AF8050);
}

void sub_4EB224()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication23JSMessageViewController____lazy_storage___noContentView);
}

uint64_t type metadata accessor for JSMessageViewController(uint64_t a1)
{
  result = qword_E0C440;
  if (!qword_E0C440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4EB354()
{

  return swift_deallocObject();
}

double block_copy_helper_161(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_4EB468()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FixedSizeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4EB56C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v12);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile];
    v6 = *&v11[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile];
    *&v11[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse];
    v9 = *&v11[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse];
    *&v11[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse] = v8;
    v10 = v8;
  }
}

double sub_4EB6B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a2;
  v13 = *(*a3 + 152);

  v14 = a1;
  swift_errorRetain();
  v13(a4, sub_AAED4, v12);

  return result;
}

void sub_4EB980(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MusicApplication36JSSocialProfileModelRequestOperation_request];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile];
  v4 = v3;
  v5 = [v2 itemProperties];
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for JSModelSocialPersonProfileBuilder();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
    *&v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v6;
    v9 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
    v10 = v6;
    v11 = [v9 initWithRequestedPropertySet:v10];
    if (!v11)
    {
      __break(1u);
      goto LABEL_15;
    }

    *&v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v11;
    v25.receiver = v8;
    v25.super_class = v7;
    v12 = objc_msgSendSuper2(&v25, "init");
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v14 = sub_AB9260();
  [v13 appendSection:v14];

  if (v3)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v16 = v4;
  v17 = [a1 userIdentity];
  if (v17)
  {
    v18 = v17;
    sub_21B8E0(v16, v17);
    v20 = v19;

    if (v20)
    {
      [v13 appendItem:v20];
    }

    else
    {
    }

LABEL_13:
    v21 = objc_allocWithZone(type metadata accessor for JSSocialProfileModelResponse());
    v22 = v2;
    v23 = v13;
    v24 = sub_4EBD10(v22, v23);
    (*&a1[OBJC_IVAR____TtC16MusicApplication36JSSocialProfileModelRequestOperation_responseHandler])(v24, 0);
    [a1 finish];

    return;
  }

LABEL_15:
  __break(1u);
}

char *sub_4EBD10(char *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_profileDidUpdateNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_pendingRequestStateUpdateNotificationObserver] = 0;
  v2[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_lastKnownHasRequestedToFollowCurrentUser] = 0;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  result = objc_msgSendSuper2(&v25, "initWithRequest:", a1);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  [v7 setResults:a2];
  v24 = a1;
  v8 = *&a1[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile];
  v9 = v8;
  if ([a2 firstItem])
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      if (qword_DE6BE8 != -1)
      {
        v23 = v10;
        swift_once();
        v10 = v23;
      }

      v7[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_lastKnownHasRequestedToFollowCurrentUser] = sub_43D968(v10) & 1;
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
  }

  if (v8)
  {
    v11 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_hasRequestedToFollowCurrentUser;
    swift_beginAccess();
    v12 = v9[v11];
  }

  else
  {
    v12 = 0;
  }

  v7[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_lastKnownHasRequestedToFollowCurrentUser] = v12;
LABEL_12:
  v13 = *JSSocialProfile.NotificationNames.didUpdate.unsafeMutableAddressor();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v15 = v7;
  v16 = v9;
  *&v15[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_profileDidUpdateNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v8, 1, 1, sub_B5984, v14);

  if (qword_DE6BF8 != -1)
  {
    swift_once();
  }

  v17 = qword_E71830;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = v17;

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = a2;
  swift_allocObject();

  v21 = a2;
  v22 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v19, 0, 1, 1, sub_4EC2D4, v20);

  *&v15[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_pendingRequestStateUpdateNotificationObserver] = v22;

  return v15;
}

void sub_4EC060(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([a3 firstItem])
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        if (qword_DE6BE8 != -1)
        {
          v8 = v6;
          swift_once();
          v6 = v8;
        }

        v7 = sub_43D968(v6) & 1;
        if (v7 != v5[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_lastKnownHasRequestedToFollowCurrentUser])
        {
          v5[OBJC_IVAR____TtC16MusicApplication28JSSocialProfileModelResponse_lastKnownHasRequestedToFollowCurrentUser] = v7;
          [v5 _invalidate];
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_4EC21C()
{

  return swift_deallocObject();
}

uint64_t sub_4EC25C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4EC294()
{

  return swift_deallocObject();
}

uint64_t sub_4EC2DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_4EC314()
{

  return swift_deallocObject();
}

uint64_t sub_4EC368()
{

  return swift_deallocObject();
}

char *sub_4EC3B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize] = 0;
  v11 = OBJC_IVAR____TtC16MusicApplication12SocialButton_cachedBackgroundImagesForAppearances;
  *&v5[v11] = sub_9A330(_swiftEmptyArrayStorage);
  v12 = OBJC_IVAR____TtC16MusicApplication12SocialButton_backgroundImageView;
  *&v5[v12] = [objc_allocWithZone(UIImageView) init];
  v13 = OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView;
  sub_4EC8FC(2u, v21);
  v14 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  *&v5[v13] = sub_38F7B8(v21);
  *&v5[OBJC_IVAR____TtC16MusicApplication12SocialButton_preferredCornerRadius] = 0;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for SocialButton();
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor:v18];

  [v17 addSubview:*&v17[OBJC_IVAR____TtC16MusicApplication12SocialButton_backgroundImageView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView]];
  sub_4ED6EC();

  return v17;
}

void sub_4EC5B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40, &qword_AFA040);
  __chkstk_darwin();
  v6 = v22 - v5;
  v8 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_title + 8];
  if ((v8 != a1 || v7 != a2) && (sub_ABB3C0() & 1) == 0)
  {
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView];
    v22[0] = v8;
    v22[1] = v7;

    sub_AB3550();
    v11 = sub_AB35C0();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    sub_36A48();
    v12 = v2;
    v13 = sub_ABAA50();
    v15 = v14;
    sub_72894(v6);

    v16 = (v10 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
    v17 = *(v10 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
    v18 = *(v10 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8);
    *v16 = v13;
    v16[1] = v15;
    sub_38FB24(v17, v18, v19);

    v20 = [v12 superview];
    if (v20)
    {
      v21 = v20;
      type metadata accessor for PromotionalParallaxContentStackView();
      if (swift_dynamicCastClass())
      {
        sub_34AEA0(0);
      }
    }
  }
}

unint64_t sub_4EC784(void *a1, unsigned __int8 a2, double a3)
{
  v6 = a2;
  v17 = sub_9769C(_swiftEmptyArrayStorage);
  if (v6 == 2)
  {
    v7 = a1;
    v8 = [v7 colorWithAlphaComponent:0.5];
    v9 = v7;
  }

  else
  {
    if (a2)
    {
      if (qword_DE6A18 != -1)
      {
        swift_once();
      }

      v10 = qword_E713C8;
    }

    else
    {
      v10 = [objc_opt_self() systemGray3Color];
    }

    v9 = v10;
    v8 = [v9 colorWithAlphaComponent:0.5];
  }

  v11 = v8;
  _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v9, a3);
  v13 = v12;

  if (v13)
  {
    sub_2E4FA4(v13, 0);
  }

  _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v11, a3);
  v15 = v14;

  if (v15)
  {
    sub_2E4FA4(v15, 1);
  }

  return v17;
}

double sub_4EC8FC@<D0>(unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [v6 whiteColor];
  sub_89F60();
  v8 = sub_ABA550();
  v9 = [v6 whiteColor];
  if (v5 != 2 && (a2 & 1) != 0)
  {
    v10 = v9;
    if (qword_DE6A20 != -1)
    {
      swift_once();
    }

    v11 = qword_E713D0;

    if (qword_DE6A28 != -1)
    {
      swift_once();
    }

    v12 = qword_E713D8;

    v7 = v11;
    v9 = v12;
  }

  LOBYTE(v17) = 0;
  *(&v17 + 1) = 1;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  v19 = 4uLL;
  *&v20 = 1;
  *(&v20 + 1) = v9;
  v21[0] = 0;
  v22 = 1;
  v23 = v7;
  v24 = v8;
  v25 = 4;
  v26 = 0;
  v27 = 1;
  v28 = v9;
  sub_390344(&v17, &v16);
  sub_3903A0(v21);
  v13 = v18;
  *a3 = v17;
  a3[1] = v13;
  result = *&v19;
  v15 = v20;
  a3[2] = v19;
  a3[3] = v15;
  return result;
}

Swift::Int sub_4ECAB8()
{
  v1 = *v0;
  sub_ABB5C0();
  if (v1 == 2)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    sub_ABB5E0(v1 & 1);
  }

  return sub_ABB610();
}

void sub_4ECB20()
{
  v1 = *v0;
  if (v1 == 2)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    sub_ABB5E0(v1 & 1);
  }
}

Swift::Int sub_4ECB6C(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  if (v2 == 2)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    sub_ABB5E0(v2 & 1);
  }

  return sub_ABB610();
}

id sub_4ECC94(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = [v2 isHighlighted];
  if (result != v3)
  {
    v5 = OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance;
    v6 = v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance];
    v7 = OBJC_IVAR____TtC16MusicApplication12SocialButton_cachedBackgroundImagesForAppearances;
    swift_beginAccess();
    v8 = *&v2[v7];
    if (*(v8 + 16))
    {
      v9 = sub_2EC514(v6);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        v12 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_backgroundImageView];

        v13 = [v2 isHighlighted];
        if (*(v11 + 16) && (v14 = sub_2F5A90(v13), (v15 & 1) != 0))
        {
          v16 = *(*(v11 + 56) + 8 * v14);
        }

        else
        {
          v16 = 0;
        }

        [v12 setImage:v16];
      }
    }

    v17 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView];
    if ([v2 isHighlighted])
    {
      sub_4EC8FC(v2[v5], &v39);
      v18 = *v40;
      v19 = [*v40 colorWithAlphaComponent:0.25];

      v35 = v39;
      *v36 = v19;
      *&v36[8] = *&v40[8];
      *&v36[24] = v41;
      *&v36[40] = v42;
      v37 = v39;
      *v38 = v19;
      *&v38[40] = v42;
      *&v38[24] = v41;
      *&v38[8] = *&v40[8];
      sub_390344(&v35, v34);
      sub_3903A0(&v37);
      v21 = *&v36[32];
      v20 = *&v36[40];
      v22 = *&v36[24];
      v23 = *&v36[16];
      v24 = *v36;
      v25 = *(&v35 + 1);
      v26 = v35;
    }

    else
    {
      sub_4EC8FC(v2[v5], &v39);
      v21 = *(&v41 + 1);
      v20 = v42;
      v22 = v41;
      v23 = *&v40[16];
      v24 = *v40;
      v25 = *(&v39 + 1);
      v26 = v39;
    }

    LOBYTE(v35) = v26;
    *(&v35 + 1) = v25;
    *v36 = v24;
    *&v36[16] = v23;
    *&v36[24] = v22;
    *&v36[32] = v21;
    *&v36[40] = v20;
    v27 = (v17 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties);
    v28 = *(v17 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 48);
    v30 = *(v17 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties);
    v29 = *(v17 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 16);
    *&v38[16] = *(v17 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 32);
    *&v38[32] = v28;
    v37 = v30;
    *v38 = v29;
    v31 = v35;
    v32 = *v36;
    v33 = *&v36[32];
    v27[2] = *&v36[16];
    v27[3] = v33;
    *v27 = v31;
    v27[1] = v32;
    sub_390344(&v35, v34);
    sub_3903A0(&v37);
    sub_38FDFC();
    return sub_3903A0(&v35);
  }

  return result;
}

uint64_t sub_4ECFBC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = type metadata accessor for SocialButton();
  v24.receiver = v6;
  v24.super_class = v11;
  objc_msgSendSuper2(&v24, "frame");
  v13 = v12;
  v15 = v14;
  v23.receiver = v6;
  v23.super_class = v11;
  objc_msgSendSuper2(&v23, "setFrame:", a2, a3, a4, a5);
  type metadata accessor for CGSize(0);
  [v6 frame];
  v21 = v16;
  v22 = v17;
  result = sub_AB38D0();
  if (result)
  {
    [v6 bounds];
    Height = CGRectGetHeight(v25);
    [v6 bounds];
    Width = CGRectGetWidth(v26);
    if (Width >= Height)
    {
      Width = Height;
    }

    *&v6[OBJC_IVAR____TtC16MusicApplication12SocialButton_preferredCornerRadius] = Width * 0.5;
    return sub_4ED644();
  }

  return result;
}

id sub_4ED0E8(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  sub_ABA320();

  return [*&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView] sizeThatFits:{a1, a2}];
}

uint64_t sub_4ED644()
{
  v1 = v0;
  result = sub_AB38D0();
  if (result)
  {
    v3 = sub_9A330(_swiftEmptyArrayStorage);
    v4 = OBJC_IVAR____TtC16MusicApplication12SocialButton_cachedBackgroundImagesForAppearances;
    swift_beginAccess();
    *(v1 + v4) = v3;

    return sub_4ED6EC();
  }

  return result;
}

id sub_4ED6EC()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance];
  v3 = v0[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize];
  v4 = OBJC_IVAR____TtC16MusicApplication12SocialButton_cachedBackgroundImagesForAppearances;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (*(v5 + 16) && (v6 = sub_2EC514(v2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    result = [v1 tintColor];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v8 = sub_4EC784(result, v2, *&v1[OBJC_IVAR____TtC16MusicApplication12SocialButton_preferredCornerRadius]);

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[0] = *&v1[v4];
    *&v1[v4] = 0x8000000000000000;
    sub_92B94(v8, v2, isUniquelyReferenced_nonNull_native);
    *&v1[v4] = *&v34[0];
    swift_endAccess();
  }

  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication12SocialButton_backgroundImageView];
  v13 = [v1 isHighlighted];
  if (*(v8 + 16) && (v14 = sub_2F5A90(v13), (v15 & 1) != 0))
  {
    v16 = *(*(v8 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  [v12 setImage:v16];

  v17 = [v12 layer];
  v18 = [v1 traitCollection];
  if (v2 == 2 || (v2 & 1) == 0)
  {

    v20 = 0;
    v21 = 1;
  }

  else
  {
    v19 = v18;
    [v18 userInterfaceStyle];
    sub_AB92A0();

    v20 = sub_AB9260();

    v21 = 0;
  }

  [v17 setCompositingFilter:v20];

  swift_unknownObjectRelease();
  v22 = *&v1[OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView];
  sub_4EC8FC(v2, v35);
  v23 = &v22[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties];
  v24 = *&v22[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 48];
  v26 = *&v22[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties];
  v25 = *&v22[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 16];
  v34[2] = *&v22[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 32];
  v34[3] = v24;
  v34[0] = v26;
  v34[1] = v25;
  v27 = v35[1];
  v28 = v35[2];
  v29 = v35[3];
  *v23 = v35[0];
  *(v23 + 1) = v27;
  *(v23 + 2) = v28;
  *(v23 + 3) = v29;
  sub_390344(v35, &v33);
  sub_3903A0(v34);
  sub_38FDFC();
  sub_3903A0(v35);
  [v22 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v30 = [v1 layer];
  [v30 setAllowsGroupBlending:v21];

  v31 = [v1 layer];
  [v31 setAllowsGroupOpacity:v21];

  v32 = 8.0;
  if (!v3)
  {
    v32 = 16.0;
  }

  return [v1 music_setLayoutInsets:{0.0, v32, 0.0, v32}];
}

id sub_4EDA6C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SocialButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_4EDB58()
{
  result = qword_E0C698;
  if (!qword_E0C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C698);
  }

  return result;
}

unint64_t sub_4EDBB0()
{
  result = qword_E0C6A0;
  if (!qword_E0C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C6A0);
  }

  return result;
}

void sub_4EDC04()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication12SocialButton_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication12SocialButton_cachedBackgroundImagesForAppearances;
  *(v1 + v3) = sub_9A330(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC16MusicApplication12SocialButton_backgroundImageView;
  *(v1 + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView;
  sub_4EC8FC(2u, v7);
  v6 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  *(v1 + v5) = sub_38F7B8(v7);
  *(v1 + OBJC_IVAR____TtC16MusicApplication12SocialButton_preferredCornerRadius) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_4EDD18()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView____lazy_storage___switchButton;
  v2 = *&v0[OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView____lazy_storage___switchButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView____lazy_storage___switchButton];
  }

  else
  {
    v4 = [objc_allocWithZone(UISwitch) init];
    [v0 addSubview:v4];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_4EDE0C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for MenuCell.SwitchContainerView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = v0[OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView_isTopAligned];
  v2 = sub_4EDD18();
  v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView____lazy_storage___switchButton];
  if (v1 == 1)
  {
    [v3 intrinsicContentSize];
    [v2 setFrame:{0.0, 0.0, v4, v5, v13}];
  }

  else
  {
    [v3 frame];
    v7 = v6;
    [v0 bounds];
    v8 = [v0 traitCollection];
    [v8 displayScale];

    sub_ABA470();
    [v2 setFrame:{v9, v10, v11, v12, v7}];
  }
}

char *sub_4EE0E8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue];
  *v12 = 0;
  v12[8] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessibilityIsDimmed] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
  sub_4F05D0(v33);
  v14 = v33[1];
  *v13 = v33[0];
  *(v13 + 1) = v14;
  *(v13 + 4) = v34;
  *&v4[OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___accessoryLabelView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___switchContainerView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView] = 0;
  v32.receiver = v4;
  v32.super_class = type metadata accessor for MenuCell(0);
  v15 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 layer];
  [v16 setAllowsGroupOpacity:0];

  v17 = [v15 layer];
  [v17 setAllowsGroupBlending:0];

  v18 = v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v18 & 1) == 0)
  {
    [v15 setNeedsLayout];
  }

  v19 = *&v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  v21 = &v15[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
  swift_beginAccess();
  v22 = *v21;
  *(inited + 32) = *v21;
  *(inited + 40) = *(v21 + 1);
  v23 = v19;

  if ((inited & 0xC000000000000001) != 0)
  {
    v22 = sub_36003C(0, inited, v24);
  }

  else
  {
  }

  TextStackView.add(_:)(v22);

  if ((inited & 0xC000000000000001) != 0)
  {
    v26 = sub_36003C(1uLL, inited, v25);
  }

  else
  {
    v26 = *(inited + 40);
  }

  TextStackView.add(_:)(v26);

  swift_setDeallocating();
  swift_arrayDestroy();

  v27 = vdupq_n_s64(0x4040000000000000uLL);
  *&v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v27;
  v28 = *&v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v29 = *(v28 + 80);
  v30 = *(v28 + 88);
  *(v28 + 80) = v27;
  sub_75614(v29, v30);

  return v15;
}