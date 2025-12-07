double sub_1A3EF2DEC()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionPercentage;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EF2E3C(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a2;
  if (v5 != a2)
  {
    v6 = [v2 viewIfLoaded];
    [v6 setNeedsLayout];
  }
}

void (*sub_1A3EF2EC0(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionPercentage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EF2F54;
}

void sub_1A3EF2F54(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    v6 = [v1[4] viewIfLoaded];
    [v6 setNeedsLayout];
  }

  free(v1);
}

double sub_1A3EF2FD0()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EF3014(double a1)
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (v5)
    {
      [v5 setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }
}

void (*sub_1A3EF3098(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EF312C;
}

void sub_1A3EF312C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (a2)
  {
    if (v3 == v6)
    {
      goto LABEL_8;
    }

    v7 = v2;
    v2 = *(*(v2 + 32) + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (v2)
    {
LABEL_7:
      [v2 setNeedsUpdateOf_];
      v2 = v7;
      goto LABEL_8;
    }

    __break(1u);
  }

  if (v3 != v6)
  {
    v7 = v2;
    v2 = *(*(v2 + 32) + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (!v2)
    {
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

LABEL_8:

  free(v2);
}

double sub_1A3EF31D0(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  v11 = sub_1A46E0BEC();
  v12 = [v11 viewProviderIfLoaded];

  if (v12)
  {
    v13 = [v12 gridView];

    if (v13)
    {
      if ([v13 isPerformingUpdate])
      {
        sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
        v20 = sub_1A524D474();
        v14 = swift_allocObject();
        *(v14 + 16) = sub_1A3EF73B0;
        *(v14 + 24) = v10;
        aBlock[4] = sub_1A3DDBE10;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_159;
        v19 = _Block_copy(aBlock);

        sub_1A524BF14();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1A3C29AEC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1A3C38394(0);
        sub_1A3C29AEC(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
        sub_1A524E224();
        v16 = v19;
        v15 = v20;
        MEMORY[0x1A5908800](0, v8, v5, v19);
        _Block_release(v16);

        (*(v3 + 8))(v5, v2);
        (*(v21 + 8))(v8, v6);

        return result;
      }
    }
  }

  sub_1A3EF35E4(v9, a1);

  return result;
}

void sub_1A3EF35E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PXCuratedLibraryViewModelChanged(0);
    sub_1A3C29AEC(&qword_1EB126780, type metadata accessor for PXCuratedLibraryViewModelChanged, &unk_1A53061DC);
    sub_1A524EE54();
  }
}

void sub_1A3EF3878(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v3);
  aBlock = a1;
  v5 = 0x2000000;
  type metadata accessor for PXZoomablePhotosViewModelChanged(0);
  sub_1A3C29AEC(&qword_1EB120660, type metadata accessor for PXZoomablePhotosViewModelChanged, &unk_1A5306214);
  sub_1A524EE54();
}

void sub_1A3EF3D2C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A46E0BEC();
  v4 = [v3 parentViewController];

  if (!v4 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v5 = v4, v6 = v2, v7 = sub_1A524DBF4(), v6, v5, v5, (v7 & 1) != 0))
  {
    v8 = sub_1A46E0BEC();
    v9 = [v8 viewProvider];

    v10 = [v9 gridView];
    v11 = [v10 scrollViewController];

    [v11 setIsScrollEnabled_];
  }
}

void sub_1A3EF3F6C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A46E0BEC();
  v4 = [v3 parentViewController];

  if (!v4 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v5 = v4, v6 = v2, v7 = sub_1A524DBF4(), v6, v5, v5, (v7 & 1) != 0))
  {
    sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
    v8 = [swift_getObjCClassFromMetadata() sharedInstance];
    v9 = v8;
    if ((v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) == 0)
    {
      v35 = v8;
      v10 = [v8 resetAllPhotosOnDismiss];
      v9 = v35;
      if (v10)
      {
        v11 = sub_1A46E0BEC();
        v12 = [v11 viewProvider];

        v13 = [v12 gridView];
        v14 = [v13 scrollViewController];

        v15 = sub_1A46E0BEC();
        v16 = [v15 isResetToInitialState];

        if (v16 && (v17 = sub_1A46E0BEC(), v18 = [v17 viewProvider], v17, v19 = objc_msgSend(v18, sel_gridView), v18, objc_msgSend(v19, sel_safeAreaInsets), v21 = v20, v19, (objc_msgSend(v14, sel_isScrolledAtEdge_tolerance_, 3, v21) & 1) != 0))
        {
          if (([v14 isAnimatingScrollTowardsEdge] & 1) == 0 && (objc_msgSend(v14, sel_isScrolledAtEdge_tolerance_, 3, 0.0) & 1) == 0)
          {
            v22 = sub_1A46E0BEC();
            v23 = [v22 viewProvider];

            v24 = [v23 gridView];
            v25 = [v24 scrollViewController];

            [v25 scrollToEdge:3 animated:1];
          }
        }

        else
        {
          [v14 stopScrollingAndZoomingAnimations];
          v26 = sub_1A46E0BEC();
          v27 = [v26 canResetToInitialState];

          if (v27)
          {
            v28 = sub_1A46E0BEC();
            v29 = UIViewController.pxView.getter();

            v30 = [v29 snapshotViewAfterScreenUpdates_];
            if (v30)
            {
              [v29 addSubview_];
            }

            [*&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel] saveCurrentZoomLevelAsUserPreferredIfPossible];
            v31 = sub_1A46E0BEC();
            v32 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v33 = swift_allocObject();
            *(v33 + 16) = v32;
            *(v33 + 24) = v30;

            v34 = v30;
            sub_1A46E5D44(sub_1A3EF7058, v33);
          }
        }

        v9 = v35;
      }
    }
  }
}

void sub_1A3EF43F4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A46E0BEC();
  v4 = [v3 parentViewController];

  if (!v4 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v5 = v4, v6 = v2, v7 = sub_1A524DBF4(), v6, v5, v5, (v7 & 1) != 0))
  {
    v8 = sub_1A46E0BEC();
    v9 = [v8 viewProvider];

    v11 = [v9 gridView];
    if ((v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] == 1 && sub_1A46DF490() > 0.0 || v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] != 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
    }

    [v11 setCanBlockMainThreadIfNeeded_];
  }
}

void sub_1A3EF4594(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A46E0BEC();
  v4 = [v3 parentViewController];

  if (!v4 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v5 = v4, v6 = v2, v7 = sub_1A524DBF4(), v6, v5, v5, (v7 & 1) != 0))
  {
    v8 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel);
    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded);
      v10 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating);
      v11 = v8;
      v13 = sub_1A46E2430(v12);
      if ((sub_1A46E2D80(v13) & 1) == 0)
      {
        v21 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x428))();
        v16 = xmmword_1A5303A10;
        sub_1A3EF6938();
        sub_1A524C524();
      }

      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = v9;
      *(v14 + 25) = v10;
      v19 = sub_1A3EF6FE4;
      v20 = v14;
      *&v16 = MEMORY[0x1E69E9820];
      *(&v16 + 1) = 1107296256;
      v17 = sub_1A3D59380;
      v18 = &block_descriptor_119;
      v15 = _Block_copy(&v16);

      [v11 performChanges_];
      _Block_release(v15);
    }
  }
}

double sub_1A3EF481C(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_viewModel];
  v4 = sub_1A46E0BEC();
  v5 = [v4 parentViewController];

  if (v5)
  {
    sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
    v6 = v5;
    v7 = v2;
    v8 = sub_1A524DBF4();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel];
  if (v12 && [v12 zoomLevel] == 4)
  {
    *(v10 + 16) = 0;
    v13 = *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel];
    if (v13 && ([v13 isDisplayingIndividualItems] & 1) == 0)
    {
      v17 = 0;
      v19 = 0;
      v20 = 0;
      *(v11 + 16) = 1;
    }

    else
    {
      if (v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom] != 1)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v14 = sub_1A3EF0560();
      v15 = [v14 status];

      if (v15)
      {
        v16 = [v15 stateDescription];

        if (v16)
        {
          v17 = sub_1A524C674();
          v19 = v18;

LABEL_18:
          v20 = 0;
          goto LABEL_19;
        }
      }

      v22 = sub_1A46E0BEC();
      v23 = [v22 viewProvider];

      v24 = [v23 itemCountsController];
      [v24 counts];

      v17 = 0;
      if (v33[0] == 0x7FFFFFFFFFFFFFFFLL || v33[1] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = 0;
        v20 = 0;
        goto LABEL_19;
      }

      v19 = 0;
      v20 = 0;
      if (v33[2] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = PXLocalizedStringForDetailedCountsWithUsage(v33, 3);
        v17 = sub_1A524C674();
        v19 = v26;

        goto LABEL_18;
      }
    }
  }

  else
  {
    v20 = 1;
    *(v10 + 16) = 1;
    v17 = sub_1A3CA7CB0();
    v19 = v21;
  }

LABEL_19:
  v27 = sub_1A3CA7B04();
  if (v28)
  {
    if (!v19)
    {

      goto LABEL_32;
    }

    if (v27 == v17 && v28 == v19)
    {
    }

    else
    {
      v31 = sub_1A524EAB4();

      if ((v31 & 1) == 0)
      {
LABEL_32:
        v32 = swift_allocObject();
        v32[2] = v3;
        v32[3] = v17;
        v32[4] = v19;
        v32[5] = v10;
        v32[6] = v11;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  else if (v19)
  {
    goto LABEL_32;
  }

  if (v20 != (sub_1A46E0AB8(v29) & 1))
  {
    goto LABEL_32;
  }

  return result;
}

CGFloat sub_1A3EF4E4C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_1A5246F24();
  v33[2] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v33[1] = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BEE4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v5 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isUpdatingScrollViewForExpansion) & 1) != 0 || (*(v5 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) & 1) != 0 || *(v5 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating) == 1)
  {
    v33[0] = v11;
    v34 = v19;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    v23 = [v22 canHandleVisibleRectRejection];
    [v22 setCanHandleVisibleRectRejection_];
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v33[3] = v5;
    v24 = sub_1A524D474();
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v23;
    aBlock[4] = sub_1A3EF6CF0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_13;
    v26 = _Block_copy(aBlock);
    v27 = a1;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29AEC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A3C29AEC(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v21, v16, v26);
    _Block_release(v26);

    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v21, v34);
    v28 = sub_1A46E0BEC();
    v29 = [v28 viewProvider];

    v30 = [v29 gridView];
    v31 = [v30 scrollViewController];

    [v31 contentBounds];
    CGRectGetHeight(v36);
    [v31 visibleRect];
    CGRectGetMaxY(v37);
    [v22 contentSize];
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    CGRectGetMaxY(v38);
    sub_1A52416D4();
  }

  return a2;
}

double sub_1A3EF54DC(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom) != v2)
  {
    v23 = v9;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = sub_1A46E0BEC();
    v15 = [v14 viewProviderIfLoaded];

    if (v15)
    {
      v16 = [v15 gridView];

      if (v16)
      {
        if ([v16 isPerformingUpdate])
        {
          sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
          v22 = sub_1A524D474();
          v17 = swift_allocObject();
          *(v17 + 16) = sub_1A3EF7654;
          *(v17 + 24) = v13;
          aBlock[4] = sub_1A3DDBE10;
          aBlock[5] = v17;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3C2E0D0;
          aBlock[3] = &block_descriptor_167;
          v18 = _Block_copy(aBlock);

          sub_1A524BF14();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1A3C29AEC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          sub_1A3C38394(0);
          sub_1A3C29AEC(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
          sub_1A524E224();
          v19 = v22;
          MEMORY[0x1A5908800](0, v12, v6, v18);
          _Block_release(v18);

          (*(v4 + 8))(v6, v3);
          (*(v8 + 8))(v12, v23);
LABEL_10:

          return result;
        }
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      sub_1A3EF481C(Strong);
    }

    goto LABEL_10;
  }

  return result;
}

void sub_1A3EF58D4(uint64_t a1)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1A46E0BEC();
    v6 = [v5 parentViewController];

    if (!v6 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v7 = v6, v8 = v4, v9 = sub_1A524DBF4(), v8, v7, v7, (v9 & 1) != 0))
    {
      v10 = sub_1A46E0BEC();
      v11 = [v10 viewProvider];

      v13 = [v11 gridView];
      if ((v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || (v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] & 1) != 0 && sub_1A46DF490() > 0.0 || v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] != 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v4[v2];
      }

      [v13 setCanBlockMainThreadIfNeeded_];
    }
  }
}

double sub_1A3EF5A90(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  if (*(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) == 1)
  {
    v4 = [a1 isAnimatingScroll];
    if ((v4 & 1) == 0)
    {
      v6 = *(v1 + v3);
      *(v1 + v3) = 0;
      if (v6 == 1)
      {
        v7 = sub_1A3EF04D4(v4, v5);
        (*(*v7 + 184))(*(v1 + v3));
      }
    }
  }

  v8 = sub_1A46E0BEC();
  v9 = [v8 viewProvider];

  v10 = [v9 gridView];
  v11 = [v10 scrollViewController];

  LOBYTE(v10) = [v11 isScrolledAtEdge:3 tolerance:2.0];
  v12 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom);
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom) = v10;

  return sub_1A3EF54DC(v12);
}

void sub_1A3EF5C44(void *a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];

    [a1 contentInset];
    sub_1A46E42D0(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A3EF5DCC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  v4 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation);
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  if (v4 == 1)
  {
    v5 = sub_1A3EF04D4(a1, a2);
    (*(*v5 + 184))(*(v2 + v3));
  }

  sub_1A3EF58D4(0);
}

double sub_1A3EF5F10(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  v4 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation);
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  if (v4 == 1)
  {
    v5 = sub_1A3EF04D4(a1, a2);
    (*(*v5 + 184))(*(v2 + v3));
  }

  return result;
}

double sub_1A3EF6150(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_title);
  v5 = *(v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_title);
  v6 = *(v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_title + 8);
  *v4 = a1;
  v4[1] = a2;
  if (v6)
  {
    if (a2)
    {
      v7 = v5 == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v8 = *(v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange);
  if (!v8)
  {
LABEL_14:

    return result;
  }

  v9 = *(v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange + 8);

  v8(v10);

  sub_1A3C784D4(v8, v9);
  return result;
}

id sub_1A3EF634C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A3EF6570(void *a1)
{
  v1 = [a1 topViewController];
  v4 = v1;
  if (v1)
  {
    type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController(v1, v2);
    swift_dynamicCastClassUnconditional();
    sub_1A3EF01D0(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A3EF65F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3EF73B8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3EF6654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3EF73B8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3EF66B8(uint64_t a1)
{
  sub_1A3EF73B8();
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A3EF6704(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater) = 0;
  v3 = (v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_searchObservation);
  *v3 = 0;
  v3[1] = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel) = 0;
  v4 = (v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModelObservation);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModelObservation);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_assetCountsObservation);
  *v6 = 0;
  v6[1] = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel) = 0;
  v7 = (v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableObservation);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_miniModeAnimator) = 0;
  v8 = (v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_miniModeAnimatorObservation);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_librarySummaryPresenter;
  *(v2 + v9) = [objc_allocWithZone(type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController.LibrarySummaryOutputPresenter(a1 a2))];
  v10 = v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_cplStatusObservation);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider) = 0;
  v12 = v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_previousExpansionState;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = -1;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isUpdatingScrollViewForExpansion) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionPercentage) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom) = 0;
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge) = 0;
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A3EF68E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3EF2C30(0);
  }
}

unint64_t sub_1A3EF6938()
{
  result = qword_1EB125FF0;
  if (!qword_1EB125FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125FF0);
  }

  return result;
}

id sub_1A3EF698C()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater;
  result = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if ([result hasAlreadyUpdatedSelector_])
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v12 = sub_1A524D474();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A3EF740C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_171;
    v14 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29AEC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A3C29AEC(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v9, v4, v14);
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v9, v5);
  }

  result = *(v0 + v10);
  if (!result)
  {
    goto LABEL_9;
  }

  return [result setNeedsUpdateOf_];
}

void sub_1A3EF6D04(uint64_t a1)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge] = 1;
  if ((v3 & 1) == 0)
  {
    v4 = v1;
    v5 = sub_1A46E0BEC();
    v6 = [v5 parentViewController];

    if (!v6 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v7 = v6, v8 = v4, v9 = sub_1A524DBF4(), v8, v7, v7, (v9 & 1) != 0))
    {
      v10 = sub_1A46E0BEC();
      v11 = [v10 viewProvider];

      v13 = [v11 gridView];
      if ((v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || (v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] & 1) != 0 && sub_1A46DF490() > 0.0 || v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] != 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v4[v2];
      }

      [v13 setCanBlockMainThreadIfNeeded_];
    }
  }
}

unint64_t sub_1A3EF6EC0()
{
  result = qword_1EB129C90;
  if (!qword_1EB129C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129C90);
  }

  return result;
}

id sub_1A3EF6FE4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  [a1 setSecondaryToolbarVisibility_];
  [a1 setIsExpanded_];

  return [a1 setIsExpandedAnimating_];
}

void sub_1A3EF7058(char a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = sub_1A46E0BEC();
      v7 = [v6 viewProvider];

      v8 = [v7 gridView];
      v9 = [v8 scrollViewController];

      [v9 scrollToEdge:3 animated:0];
    }

    if (v3)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      aBlock[4] = sub_1A3EF71F8;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_129_0;
      _Block_copy(aBlock);
      v11 = v3;

      px_perform_on_main_runloop();
    }
  }
}

void sub_1A3EF71F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v15 = sub_1A3EF7388;
  v16 = v5;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1A3C2E0D0;
  v14 = &block_descriptor_135_1;
  v6 = _Block_copy(&v11);
  v7 = v3;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v15 = sub_1A3EF739C;
  v16 = v8;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1A3E01E70;
  v14 = &block_descriptor_141;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v4 animateWithDuration:0 delay:v6 options:v9 animations:0.25 completion:0.0];
  _Block_release(v9);
  _Block_release(v6);
}

unint64_t sub_1A3EF73B8()
{
  result = qword_1EB129C88;
  if (!qword_1EB129C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129C88);
  }

  return result;
}

void sub_1A3EF740C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (v2)
    {
      [v2 setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A3EF7480()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3EF481C(Strong);
  }
}

void sub_1A3EF7500(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a2);
  }
}

void sub_1A3EF756C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PXCPLUIStatusChanged(0);
    sub_1A3C29AEC(&unk_1EB12E710, type metadata accessor for PXCPLUIStatusChanged, &unk_1A52F86B0);
    sub_1A524EE54();
  }
}

uint64_t (*sub_1A3EF7684(void *a1))()
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_1A3EF76AC;
}

id sub_1A3EF76AC(void *a1)
{
  v1 = a1[1];
  v2 = v1[2];
  v1[2] = *a1;
  result = (*(*v1 + 144))();
  if (result != v2)
  {
    v4 = v1[4];

    return [v4 signalChange_];
  }

  return result;
}

uint64_t sub_1A3EF772C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3EF77C0()
{
  swift_getKeyPath();
  (*(*v0 + 208))();

  return v0[2];
}

double sub_1A3EF781C(uint64_t a1)
{
  if (v1[2] == a1)
  {
    if ((*(*v1 + 144))() != a1)
    {
      v3 = v1[4];

      [v3 signalChange_];
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 216))(v5);
  }

  return result;
}

uint64_t (*sub_1A3EF7950(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryFilterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EF869C(&qword_1EB1298F0, type metadata accessor for SharedLibraryFilterViewModel, &protocol conformance descriptor for SharedLibraryFilterViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3EF7684(v4);
  return sub_1A3EF7A8C;
}

void sub_1A3EF7A8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t SharedLibraryFilterViewModel.__allocating_init(sharedLibraryStatusProvider:)(void *a1)
{
  v3 = (*(v1 + 168))([objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_]);

  return v3;
}

void SharedLibraryFilterViewModel.init(libraryFilterState:)(void *a1)
{
  v2 = v1;
  v2[2] = 0;
  v4 = [objc_allocWithZone(off_1E77217D8) init];
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = v4;
  sub_1A5241604();
  v2[3] = a1;
  v5 = *(*v2 + 176);
  a1;
  v5();
  swift_allocObject();
  swift_weakInit();

  sub_1A524D1A4();
}

void sub_1A3EF7CD4()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_1A3EF8210;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3DC72D4;
  v4[3] = &block_descriptor_44;
  v3 = _Block_copy(v4);

  [v1 performChanges_];
  _Block_release(v3);
}

uint64_t SharedLibraryFilterViewModel.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryFilterViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedLibraryFilterViewModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryFilterViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A3EF8034@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = v2;
  return v2;
}

void sub_1A3EF8044(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SharedLibraryFilterViewModel(0);
  sub_1A3EF869C(&qword_1EB1298F8, type metadata accessor for SharedLibraryFilterViewModel, &protocol conformance descriptor for SharedLibraryFilterViewModel);

  sub_1A5245C54();
}

id sub_1A3EF80D0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  *(v2 + 16) = *(v1 + 24);
  result = (*(*v2 + 144))();
  if (result != v3)
  {
    return [*(v2 + 32) signalChange_];
  }

  return result;
}

uint64_t type metadata accessor for SharedLibraryFilterViewModel(uint64_t a1)
{
  result = qword_1EB17E6F0;
  if (!qword_1EB17E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A3EF819C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 176))(Strong);
  }

  return result;
}

double sub_1A3EF8210()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 19))([Strong[3] viewMode]);
  }

  return result;
}

unint64_t sub_1A3EF8298()
{
  result = qword_1EB12E738;
  if (!qword_1EB12E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E738);
  }

  return result;
}

unint64_t sub_1A3EF82F0()
{
  result = qword_1EB12E740;
  if (!qword_1EB12E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E740);
  }

  return result;
}

unint64_t sub_1A3EF8348()
{
  result = qword_1EB12E748;
  if (!qword_1EB12E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E748);
  }

  return result;
}

unint64_t sub_1A3EF83A0()
{
  result = qword_1EB12E750;
  if (!qword_1EB12E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E750);
  }

  return result;
}

unint64_t sub_1A3EF83F8()
{
  result = qword_1EB12E758;
  if (!qword_1EB12E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E758);
  }

  return result;
}

unint64_t sub_1A3EF84E0()
{
  result = qword_1EB12E760;
  if (!qword_1EB12E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E760);
  }

  return result;
}

uint64_t sub_1A3EF853C(uint64_t a1)
{
  result = sub_1A5241614();
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

uint64_t sub_1A3EF869C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LemonadeCurationKind.storyOverallDurationKind.getter()
{
  v1 = *v0;
  v2 = 3;
  v3 = 2;
  if ((v1 - 4) < 2)
  {
    v3 = 0;
  }

  v4 = 4;
  if (v1 != 1)
  {
    v4 = 5;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t LemonadeCurationKind.assetCollectionCurationLength.getter()
{
  v1 = *v0;
  v2 = 2;
  v3 = 1;
  v4 = 5;
  if (v1 != 4)
  {
    v4 = 0;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 3;
  if (v1 != 1)
  {
    v5 = 4;
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

unint64_t PFStoryOverallDurationKind.lemonadeCurationKind.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    v8 = v3;
    v9 = v2;
    v10 = v4;
    v11 = v5;
    sub_1A524E404();

    strcpy(v7, "unknown value ");
    v7[15] = -18;
    type metadata accessor for PFStoryOverallDurationKind(0);
    v6 = sub_1A524C714();
    MEMORY[0x1A5907B60](v6);

    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    *a2 = 0x20100030606uLL >> (8 * result);
  }

  return result;
}

unint64_t PXDisplayAssetCollectionCurationLength.lemonadeCurationKind.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    type metadata accessor for PXDisplayAssetCollectionCurationLength(0);
    result = sub_1A524EB44();
    __break(1u);
  }

  else
  {
    *a2 = 0x40201000306uLL >> (8 * result);
  }

  return result;
}

uint64_t LemonadeCurationKind.memoryCurationLength.getter()
{
  v1 = 1;
  v2 = 2;
  if (*v0 != 1)
  {
    v2 = 4;
  }

  if (*v0)
  {
    v1 = v2;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t PHMemoryCurationLength.lemonadeCurationKind.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result < 5 && ((0x17u >> result) & 1) != 0)
  {
    *a2 = 0x200010003uLL >> (8 * result);
  }

  else
  {
    v8 = v3;
    v9 = v2;
    v10 = v4;
    v11 = v5;
    sub_1A524E404();

    strcpy(v7, "unknown value ");
    v7[15] = -18;
    type metadata accessor for PHMemoryCurationLength(0);
    v6 = sub_1A524C714();
    MEMORY[0x1A5907B60](v6);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.memoryCurationLengths.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = a1 + 32;
  while (2)
  {
    for (i = v3; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      v7 = *(v5 + i);
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        if ((result & 4) == 0)
        {
          v8 = 4;
          goto LABEL_18;
        }
      }

      else if (v7 != 3)
      {
        return 0;
      }

LABEL_5:
      if (v3 == v1)
      {
        return result;
      }
    }

    if (!*(v5 + i))
    {
      if ((result & 1) == 0)
      {
        v8 = 1;
        goto LABEL_18;
      }

      goto LABEL_5;
    }

    if ((result & 2) != 0)
    {
      goto LABEL_5;
    }

    v8 = 2;
LABEL_18:
    result |= v8;
    if (v3 != v1)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1A3EF8B6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PHMemoryCurationLength(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3EF8C18(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246914();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524C344();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  sub_1A524D614();

  if (sub_1A524C324())
  {
    v14 = a1;
    sub_1A5246924();
    sub_1A3EF8E34();
    sub_1A524C334();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v15 = [v2 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 pushViewController:a1 animated:1];
    }

    else
    {
      [v2 presentViewController:a1 animated:1 completion:0];
    }
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1A3EF8E34()
{
  result = qword_1EB12E7A0;
  if (!qword_1EB12E7A0)
  {
    sub_1A5246914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E7A0);
  }

  return result;
}

void sub_1A3EF8E8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A3EF8C18(v4);
}

uint64_t type metadata accessor for TimelineEngine3DGeometry(uint64_t a1)
{
  result = qword_1EB1682E0;
  if (!qword_1EB1682E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3EF8F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EF8FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineCell(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A3EF9008()
{
  v1 = *v0;
  (*(*v1 + 864))();
  type metadata accessor for TimelineEngine3DGeometry(0);
  (*(*v1 + 672))();
  v2 = *(*v1 + 816);
  v2();
  v3 = *(*v1 + 624);
  v3();
  v2();
  v3();
}

void sub_1A3EF91A4()
{
  v1 = (v0 + *(type metadata accessor for TimelineEngine3DGeometry(0) + 20));
  if ((*(v1 + *(type metadata accessor for TimelineEngineCell(0) + 28)) & 1) == 0 && __OFADD__(*v1, 3))
  {
    __break(1u);
  }

  else
  {
    v2 = *v0;
    (*(**v0 + 1008))();
    v3 = (*v2 + 960);
    v4 = *v3;
    (*v3)();
    sub_1A3EF9008();
    v4();
    sub_1A3EF9008();
    v4();
  }
}

uint64_t sub_1A3EF9390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a1;
  v9 = type metadata accessor for TimelineEngine3DGeometry(0);
  result = sub_1A3EF93FC(a2, a3 + v9[5]);
  *(a3 + v9[6]) = a4;
  *(a3 + v9[7]) = a5;
  return result;
}

uint64_t sub_1A3EF93FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A3EF956C()
{
  v1 = (*(**v0 + 912))();
  sub_1A3EF9008();
  return v1 / v2;
}

double sub_1A3EF95D8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = *v1;
  v4 = (*(*v3 + 1056))();
  v5 = (fabs(v2 + -0.5) + v4 + -0.5) / v4 * 20.0;
  v6 = (*(*v3 + 912))();
  sub_1A3EF9008();
  return v5 * (v6 / v7);
}

double sub_1A3EF96A4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = (*(**v1 + 1104))();
  return 1.0 - (fabs(v2 + -0.5) + v3 + -0.5) / v3;
}

uint64_t sub_1A3EF9768(uint64_t a1)
{
  result = type metadata accessor for TimelineEngineSpec(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimelineEngineCell(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3EF97FC()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  if (*(v0 + 17) != 1)
  {
    v8 = *v0;
    v9 = v6;

    v10 = sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4(v10, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v12 = sub_1A3EF9960(v8, v9, v7, 0);
    (*(v2 + 8))(v4, v1, v12);
    return v13[1];
  }

  return result;
}

double sub_1A3EF9960(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A3EF996C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lemonadeSheetSizeOverride.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

id LemonadeCollectionCustomizationPhotosPickerModifier.body(content:)@<X0>(void (*a1)(char *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a1;
  v143 = a3;
  v150 = sub_1A523FBA4();
  v157 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v141 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1A523FBD4();
  v156 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EFBFFC(0, &qword_1EB120E58, MEMORY[0x1E6979018], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v155 = &v110 - v9;
  v10 = *(a2 + 16);
  v161 = sub_1A524B974();
  v154 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v125 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v146 = &v110 - v13;
  swift_getWitnessTable();
  v14 = sub_1A52499C4();
  WitnessTable = swift_getWitnessTable();
  v162 = v14;
  v163 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v129 = *(OpaqueTypeMetadata2 - 1);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v147 = &v110 - v17;
  v115 = v14;
  v162 = v14;
  v163 = WitnessTable;
  v116 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v162 = OpaqueTypeMetadata2;
  v163 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v126 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v110 - v20;
  v133 = OpaqueTypeMetadata2;
  v162 = OpaqueTypeMetadata2;
  v163 = OpaqueTypeConformance2;
  v117 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v162 = v19;
  v163 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v123 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v121 = &v110 - v23;
  v127 = v19;
  v162 = v19;
  v163 = v21;
  v119 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v162 = v22;
  v163 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v139 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v136 = &v110 - v26;
  v124 = v22;
  v162 = v22;
  v163 = v24;
  v118 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v162 = v25;
  v163 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v134 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v131 = &v110 - v29;
  v140 = v25;
  v162 = v25;
  v163 = v27;
  v128 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v138 = v28;
  v162 = v28;
  v163 = v30;
  v130 = v30;
  v137 = swift_getOpaqueTypeMetadata2();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v132 = &v110 - v31;
  v32 = sub_1A5240E64();
  v152 = *(v32 - 8);
  v153 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v113 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v114 = (&v110 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v151 = &v110 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v110 - v43;
  v45 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = sub_1A524DF24();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v110 - v50;
  v160 = a2;
  v52 = v10;
  MEMORY[0x1A5906C60](v161, v49);
  v53 = *(v45 + 56);
  v159 = v45;
  v53(v10, v45);
  v54 = *(v35 + 8);
  v145 = v35 + 8;
  v54(v44, v52);
  v55 = (*(*(AssociatedTypeWitness - 8) + 48))(v51, 1, AssociatedTypeWitness);
  v158 = v54;
  if (v55 == 1)
  {
    (*(v48 + 8))(v51, v47);
LABEL_6:
    v58 = v151;
    v59 = v159;
    v61 = [objc_opt_self() systemPhotoLibraryURL];
    sub_1A5240DE4();

    v62 = objc_allocWithZone(MEMORY[0x1E69789A8]);
    v63 = sub_1A5240D44();
    v60 = [v62 initWithPhotoLibraryURL_];

    v152[1](v34, v153);
    goto LABEL_7;
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v56 = v162;
  result = [v162 photoLibrary];
  v58 = v151;
  v59 = v159;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v60 = result;

LABEL_7:
  v64 = v161;
  v152 = v60;
  MEMORY[0x1A5906C60](v64);
  v65 = *(v59 + 448);
  v66 = v65(v52, v59);
  v158(v58, v52);
  v67 = 20;
  if (v66)
  {
    v67 = 16;
  }

  v144 = v67;
  if (PHSensitiveContentAnalysisAvailable())
  {
    v153 = v59 + 448;
    MEMORY[0x1A5906C60](v64);
    sub_1A3EFBA3C(0, &qword_1EB12BF00, type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel);
    if (swift_dynamicCast() || (MEMORY[0x1A5906C60](v64), sub_1A3EFBA3C(0, &qword_1EB12E7A8, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel), swift_dynamicCast()))
    {

      MEMORY[0x1A5906C60](v64);
      v68 = v65(v52, v59);
      v158(v58, v52);
      v69 = 20;
      if (v68)
      {
        v69 = 0;
      }

      v144 = v69;
    }
  }

  v70 = v146;
  v71 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v71);
  swift_getKeyPath();
  sub_1A524B914();

  v72 = v154 + 8;
  v73 = *(v154 + 8);
  v73(v70, v64);
  v154 = v72;
  v112 = v73;
  LODWORD(v111) = v166;
  v74 = v125;
  v75 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v75);
  swift_getKeyPath();
  sub_1A524B914();

  v73(v74, v161);
  v153 = v52;
  v113 = sub_1A524C1F4();
  v114 = *(v113 - 1);
  v76 = v155;
  v114[7](v155, 1, 1, v113);
  swift_checkMetadataState();
  v77 = v148;
  sub_1A523FBC4();
  v78 = v141;
  sub_1A523FB94();
  sub_1A524A794();

  v79 = *(v157 + 8);
  v157 += 8;
  v120 = v79;
  (v79)(v78, v150);
  v80 = *(v156 + 8);
  v156 += 8;
  v116 = v80;
  v81 = v80(v77, v149);
  sub_1A3EFB9B0(v76, v81);
  v82 = v146;
  v83 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v83);
  swift_getKeyPath();
  sub_1A524B914();

  v84 = v112;
  v112(v82, v161);
  v115 = v164;
  v111 = v165;
  LODWORD(v146) = v166;
  v85 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v85);
  swift_getKeyPath();
  sub_1A524B914();

  v84(v74, v161);
  sub_1A3EFB1A8(v160, v155);
  sub_1A523FBC4();
  sub_1A523FB94();
  v86 = v133;
  v87 = v152;
  v88 = v122;
  v89 = v147;
  sub_1A524A794();

  v90 = v153;

  v91 = v160;

  (v120)(v78, v150);
  v92 = v116(v148, v149);
  sub_1A3EFB9B0(v155, v92);
  (*(v129 + 8))(v89, v86);
  v93 = v121;
  v94 = v127;
  sub_1A524A804();
  v95 = v88;
  v96 = v159;
  (*(v126 + 8))(v95, v94);
  v97 = v151;
  MEMORY[0x1A5906C60](v161);
  (*(v96 + 568))(v90, v96);
  v158(v97, v90);
  v98 = v136;
  v99 = v124;
  sub_1A524A7B4();
  (*(v123 + 8))(v93, v99);
  v100 = v142;
  sub_1A3EFB1A8(v91, v142);
  LODWORD(v89) = (v114[6])(v100, 1, v113);
  sub_1A3EFB9B0(v100, v101);
  if (v89 == 1)
  {
    v102 = v161;
    MEMORY[0x1A5906C60](v161);
    v103 = (*(v96 + 472))(v90, v96);
    v158(v97, v90);
    if (v103)
    {
      MEMORY[0x1A5906C60](v102);
      (*(v96 + 80))(v90, v96);
      v158(v97, v90);
    }
  }

  v104 = v131;
  v105 = v140;
  sub_1A524A7E4();

  (*(v139 + 8))(v98, v105);
  sub_1A3EF97FC();
  v106 = v132;
  v107 = v138;
  v108 = v130;
  sub_1A524A814();
  (*(v134 + 8))(v104, v107);
  sub_1A3EF97FC();
  v162 = v107;
  v163 = v108;
  swift_getOpaqueTypeConformance2();
  v109 = v137;
  sub_1A524A7D4();

  return (*(v135 + 8))(v106, v109);
}

uint64_t sub_1A3EFAF40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 448))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A3EFAFD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 520))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A3EFB074@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 472))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A3EFB104@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 544))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A3EFB1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1A523FBB4();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_1A524B974();
  v42 = v2;
  v39 = v15;
  MEMORY[0x1A5906C60]();
  v41 = a1;
  v16 = *(a1 + 24);
  v17 = *(v16 + 520);
  v38 = v16 + 520;
  v18 = v17(v7, v16);
  v19 = *(v8 + 8);
  v19(v14, v7);
  v20 = *(v18 + 16);

  if (v20)
  {
    MEMORY[0x1A5906C60](v39);
    v21 = v17(v7, v16);
    v19(v11, v7);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v43 + 16);
      v24 = *(v43 + 80);
      v39 = v21;
      v25 = v21 + ((v24 + 32) & ~v24);
      v41 = *(v43 + 72);
      v42 = v23;
      v43 += 16;
      v26 = (v43 - 8);
      v27 = MEMORY[0x1E69E7CC0];
      v23(v6, v25, v4);
      while (1)
      {
        v29 = sub_1A523FB64();
        v31 = v30;
        (*v26)(v6, v4);
        if (v31)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1A3D3D914(0, *(v27 + 2) + 1, 1, v27);
          }

          v33 = *(v27 + 2);
          v32 = *(v27 + 3);
          if (v33 >= v32 >> 1)
          {
            v27 = sub_1A3D3D914((v32 > 1), v33 + 1, 1, v27);
          }

          *(v27 + 2) = v33 + 1;
          v28 = &v27[16 * v33];
          *(v28 + 4) = v29;
          *(v28 + 5) = v31;
        }

        v25 += v41;
        if (!--v22)
        {
          break;
        }

        v42(v6, v25, v4);
      }
    }

    v35 = v40;
    sub_1A524C1E4();

    v34 = 0;
  }

  else
  {
    v34 = 1;
    v35 = v40;
  }

  v36 = sub_1A524C1F4();
  return (*(*(v36 - 8) + 56))(v35, v34, 1, v36);
}

uint64_t sub_1A3EFB57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 17) = HIBYTE(a3) & 1;
  v9 = *(type metadata accessor for LemonadeCollectionCustomizationPhotosPickerModifier(0, a5, a6, a4) + 36);
  v10 = sub_1A524B974();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a4, v10);
}

uint64_t sub_1A3EFB620@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a6;
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v37 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  v40 = sub_1A5249754();
  v24 = *(v40 - 8);
  v25 = MEMORY[0x1EEE9AC00](v40);
  v27 = &v35 - v26;
  if (v38)
  {
    v36(v39, v25);
    v28 = *(v17 + 16);
    v28(v23, v20, a5);
    v39 = a8;
    v29 = *(v17 + 8);
    v29(v20, a5);
    v28(v20, v23, a5);
    sub_1A3DF4798(v20, a5, a4, v41, v42);
    v29(v20, a5);
    v29(v23, a5);
    a8 = v39;
  }

  else
  {
    v30 = v37;
    v31 = *(v37 + 16);
    v31(v15, v39, a4, v25);
    (v31)(v12, v15, a4);
    sub_1A3DF4890(v12, a5, a4, v41, v42);
    v32 = *(v30 + 8);
    v32(v12, a4);
    v32(v15, a4);
  }

  v43 = v41;
  v44 = v42;
  v33 = v40;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v27, v33);
  return (*(v24 + 8))(v27, v33);
}

uint64_t sub_1A3EFB9B0(uint64_t a1, double a2)
{
  sub_1A3EFBFFC(0, &qword_1EB120E58, MEMORY[0x1E6979018], MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3EFBA3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3EFBB08(uint64_t a1, double a2)
{
  sub_1A3EFBFFC(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1A524B974();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A3EFBBC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 16) - 8) + 64) - ((-17 - v6) | v6) - ((-19 - v8) | v8) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((((a1 + v8 + 18) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1A3EFBD78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) - ((-17 - v9) | v9) - ((-19 - (v9 | 7)) | v9 | 7) - 2;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) - ((-17 - v9) | v9) - ((-19 - (v9 | 7)) | v9 | 7) != 2)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = (((&a1[(v9 | 7) + 18] & ~(v9 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_1A3EFBFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EFC060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v52 = a7;
  LODWORD(v46) = a4;
  LODWORD(v45) = a3;
  sub_1A3EFC5C8(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a6 - 8);
  v16 = v57;
  v56 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = v19;
  v21 = type metadata accessor for LemonadeShelf(0, a6, a7, v20);
  v49 = v21[16];
  sub_1A3E792C4(0, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);
  v48 = v22;
  sub_1A5247C74();
  v23 = v21[17];
  *(a8 + v23) = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v24 = a8 + v21[18];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a8 + v21[19];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v16 + 16;
  v27 = *(v16 + 16);
  v27(a8, a1, a6);
  *(a8 + v21[9]) = a2;
  *(a8 + v21[10]) = v45;
  *(a8 + v21[11]) = v46;
  *(a8 + v21[12]) = a5;
  v55 = a8;
  v53 = a1;
  v27(v19, a1, a6);
  v51 = v26;
  v54 = v27;
  v47 = a2;
  v28 = *(a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v29 = v52;
  v45 = *(v52 + 8);
  v30 = v45;

  v31 = v44[0];
  sub_1A439777C(v44[0], v28, a6, v30);
  v27(v31, a1, a6);
  v32 = v57;
  v33 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = a6;
  *(v34 + 24) = v29;
  v35 = v29;
  v36 = *(v32 + 32);
  v44[1] = v32 + 32;
  v36(v34 + v33, v31, a6);
  v46 = v36;
  sub_1A52434D4();
  sub_1A5247C74();
  v54(v31, v53, a6);
  v37 = swift_allocObject();
  *(v37 + 16) = a6;
  *(v37 + 24) = v35;
  v36(v37 + v33, v31, a6);
  v44[2] = v21[15];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v38 = v55;
  sub_1A5247C74();
  v39 = v53;
  v54(v31, v53, a6);
  v40 = swift_allocObject();
  v41 = v52;
  *(v40 + 16) = a6;
  *(v40 + 24) = v41;
  v46(v40 + v33, v31, a6);
  v42 = v50;
  sub_1A5247C74();

  (*(v57 + 8))(v39, a6);
  return sub_1A3EFCAF4(v42, v38 + v49);
}

void sub_1A3EFC5C8(uint64_t a1)
{
  if (!qword_1EB124950)
  {
    sub_1A3E792C4(255, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);
    v1 = sub_1A5247CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124950);
    }
  }
}

uint64_t sub_1A3EFC650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3EFDB80(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3C41990(a2, a3);
  LemonadeShelfIdentifier.rawValue.getter();
  (*(a3 + 272))(a2, a3);
  return sub_1A52434C4();
}

double sub_1A3EFC768@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1A3EFC778()
{
  sub_1A3EFCB58();
  sub_1A5249244();
  return v1;
}

void *sub_1A3EFC7B4@<X0>(_BYTE *a1@<X8>)
{
  sub_1A3EFCB58();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3EFC88C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v6 = sub_1A5242834();
  if (((*(v5 + 248))(v3, v5) & 1) == 0)
  {
    (*(v4 + 88))(v3, v4);
  }

  result = sub_1A52427F4();
  *a1 = v6;
  return result;
}

uint64_t objectdestroyTm_11()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3EFCAF4(uint64_t a1, uint64_t a2)
{
  sub_1A3EFC5C8(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3EFCB58()
{
  result = qword_1EB17BE58[0];
  if (!qword_1EB17BE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17BE58);
  }

  return result;
}

uint64_t sub_1A3EFCBAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v89 = a2;
  v83 = sub_1A52434D4();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v94 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v91 = v9;
  v90 = v8;
  v11 = type metadata accessor for LemonadeShelfContents(0, v9, v8, v10);
  v86 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  sub_1A3F1C93C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v88 = sub_1A5248804();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v72 - v16;
  v17 = sub_1A5246E54();
  v79 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  sub_1A3EFDB80(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v72 - v26;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1);
  v28 = sub_1A5246E94();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1A3F1B5F4(v27, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720], sub_1A3EFDB80);
  }

  else
  {
    v76 = v28;
    v77 = v17;
    v30 = *(v19 + 16);
    v30(v24, v3, a1);
    v30(v80, v3, a1);
    sub_1A5246E44();
    v31 = sub_1A5246E84();
    v75 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v32 = swift_slowAlloc();
      v74 = v32;
      v73 = swift_slowAlloc();
      v102 = v73;
      *v32 = 136446466;
      sub_1A3C41990(v91, v90);
      v72 = *(v19 + 8);
      v72(v24, a1);
      sub_1A3C66768();
      v33 = sub_1A524EA44();
      sub_1A3C2EF94(v33, v34, &v102);
    }

    v35 = *(v19 + 8);
    v35(v24, a1);

    (*(v79 + 8))(v81, v77);
    v35(v80, a1);
    (*(v29 + 8))(v27, v76);
  }

  v36 = v91;
  (*(v93 + 16))(v92, v3, v91);
  v37 = *(a1 + 40);
  v80 = *(v3 + *(a1 + 36));
  LODWORD(v81) = *(v3 + v37);
  sub_1A3EFDB80(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);

  sub_1A5247C84();
  v39 = type metadata accessor for LemonadeModelFactory(0, v36, *(v90 + 8), v38);
  v90 = sub_1A43979D0(v39);
  LODWORD(v79) = sub_1A3EFDBE4(a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  sub_1A5247CB4();
  sub_1A5247C84();
  WitnessTable = v102;
  sub_1A3EFC5C8(0);
  sub_1A5247C84();
  v40 = *(a1 + 48);
  LODWORD(v76) = *(v3 + *(a1 + 44));
  LODWORD(v77) = *(v3 + v40);
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  v41 = MEMORY[0x1E69C2550];
  sub_1A3F1B4DC(v100, &v102, &qword_1EB129088, &qword_1EB129090, MEMORY[0x1E69C2550]);
  sub_1A3E792C4(0, &qword_1EB129088, &qword_1EB129090, v41);
  sub_1A524B694();
  sub_1A3C2C598(v100, &qword_1EB129088, &qword_1EB129090, v41, sub_1A3E792C4);
  v42 = v11[19];
  *&v13[v42] = swift_getKeyPath();
  v43 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v44 = &v13[v11[20]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = &v13[v11[21]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  v46 = &v13[v11[22]];
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v47 = &v13[v11[23]];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = &v13[v11[24]];
  *v48 = swift_getKeyPath();
  *(v48 + 1) = 0;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  v48[32] = 0;
  v49 = v11[25];
  *&v13[v49] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], v43);
  swift_storeEnumTagMultiPayload();
  v50 = v11[26];
  *&v13[v50] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], v43);
  swift_storeEnumTagMultiPayload();
  v51 = &v13[v11[27]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = &v13[v11[28]];
  *v52 = swift_getKeyPath();
  *(v52 + 1) = 0;
  *(v52 + 2) = 0;
  *(v52 + 3) = 0;
  v52[32] = 0;
  v53 = &v13[v11[29]];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  (*(v93 + 32))(v13, v92, v36);
  *&v13[v11[9]] = v80;
  v13[v11[10]] = v81;
  (*(v82 + 32))(&v13[v11[16]], v94, v83);
  *&v13[v11[17]] = v90;
  v13[v11[11]] = v79 & 1;
  *&v13[v11[12]] = WitnessTable;
  v54 = &v13[v11[13]];
  v55 = v98;
  *v54 = v97;
  *(v54 + 1) = v55;
  *(v54 + 4) = v99;
  v13[v11[14]] = v76;
  v13[v11[15]] = v77;
  sub_1A5247C84();
  v56 = v103;
  if (v103)
  {
    v57 = v104;
    v58 = __swift_project_boxed_opaque_existential_1(&v102, v103);
    v59 = *(v56 - 8);
    v60 = MEMORY[0x1EEE9AC00](v58);
    v62 = &v72 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v59 + 16))(v62, v60);
    sub_1A3C2C598(&v102, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
    (*(v57 + 24))(v56, v57);
    (*(v59 + 8))(v62, v56);
  }

  else
  {
    sub_1A3C2C598(&v102, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
  }

  v63 = swift_getWitnessTable();
  v64 = v84;
  sub_1A524B114();
  (*(v86 + 8))(v13, v11);
  v65 = sub_1A3F17CC4(&qword_1EB127700, &qword_1EB1276F0, MEMORY[0x1E6980B20], MEMORY[0x1E6980B30]);
  v95 = v63;
  v96 = v65;
  v66 = v88;
  swift_getWitnessTable();
  v67 = v87;
  v68 = *(v87 + 16);
  v69 = v85;
  v68(v85, v64, v66);
  v70 = *(v67 + 8);
  v70(v64, v66);
  v68(v89, v69, v66);
  return (v70)(v69, v66);
}

void sub_1A3EFDB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EFDBE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(v9 + 8);
  if (((*(v11 + 256))(v10, v11, v6) & 1) == 0)
  {
    v13 = v1 + *(a1 + 76);
    v14 = *v13;
    if (*(v13 + 8) == 1)
    {
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v15 = sub_1A524D254();
      v20 = v10;
      v16 = v15;
      v17 = sub_1A524A014();
      v18 = v16;
      v10 = v20;
      sub_1A5246DF4(v18, &dword_1A3C1C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v14, 0);
      (*(v5 + 8))(v8, v4);
      if (v23)
      {
LABEL_10:
        v12 = 1;
        return v12 & 1;
      }
    }

    v22 = *(v2 + *(a1 + 40));
    v21 = 0;
    sub_1A3E760D0();
    if ((sub_1A524C594() & 1) != 0 && (!shouldUseNewCollectionsLayout()() || ((*(v9 + 88))(v10, v9) & 1) == 0))
    {
      v12 = (*(v11 + 248))(v10, v11);
      return v12 & 1;
    }

    goto LABEL_10;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1A3EFDE54(SEL *a1, SEL *a2, SEL *a3)
{
  sub_1A3C52C70(0, &unk_1EB120978, off_1E771FA50);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 *a1];
  v8 = [v6 *a2];
  if (v7 <= 1)
  {
    if (!v7)
    {
      sub_1A524BCE4();
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 == 2)
    {
      sub_1A524BD44();
      goto LABEL_11;
    }

    if (v7 == 3 || v7 == 4)
    {
      MEMORY[0x1A5907080](v8);
      goto LABEL_11;
    }
  }

  sub_1A524BD34();
LABEL_11:
  [v6 *a3];
  v9 = sub_1A524BCD4();

  return v9;
}

uint64_t sub_1A3EFDF90@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.pickerConfiguration.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A3EFDFBC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return EnvironmentValues.pickerConfiguration.setter(v1);
}

uint64_t sub_1A3EFE030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697E7E0];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1A3F1C850(v2 + *(a1 + 104), &v17 - v11, &qword_1EB1248A0, v8, v9, sub_1A3EFDB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5248714();
    return (*(*(v13 - 8) + 32))(v18, v12, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A3EFE2C8(double (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  *a2 = a1();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1A3EFE2FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v301 = a1;
  v280 = a2;
  v225 = sub_1A5248714();
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v223 = &v219 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v222 = &v219 - v5;
  v298 = sub_1A5242D14();
  v286 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v279 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v243 = &v219 - v8;
  v9 = *(a1 + 16);
  v284 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v283 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v14 = type metadata accessor for LemonadeShelfContents.bottomPadding(0, v9, v12, v13);
  v245 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v244 = &v219 - v15;
  v302 = v9;
  v300 = v12;
  type metadata accessor for LemonadeShelfHeader(255, v9, v12, v16);
  sub_1A5248804();
  sub_1A3F17A98();
  sub_1A5249754();
  sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  sub_1A5249754();
  v17 = sub_1A5249754();
  type metadata accessor for LemonadeShelfBody(255, v9, v12, v18);
  sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C, MEMORY[0x1E697E048]);
  swift_getTupleTypeMetadata2();
  v19 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v329 = MEMORY[0x1E697E5D8];
  v20 = MEMORY[0x1E697E858];
  v21 = swift_getWitnessTable();
  v22 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
  v326 = v21;
  v327 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1A3F17BF8();
  v324 = v23;
  v325 = v24;
  v322 = swift_getWitnessTable();
  v323 = v21;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v232 = v17;
  v318 = v17;
  v319 = v19;
  v231 = v19;
  v229 = v25;
  v320 = v25;
  v321 = v26;
  v228 = v26;
  v27 = sub_1A5243DD4();
  v234 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v281 = &v219 - v28;
  v29 = sub_1A5248804();
  v239 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v282 = &v219 - v30;
  v31 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v32 = sub_1A5248804();
  v256 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v248 = &v219 - v33;
  sub_1A3F1C93C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v31);
  v34 = sub_1A5248804();
  v252 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v247 = &v219 - v35;
  v36 = MEMORY[0x1E69C24E0];
  sub_1A3EFDB80(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  v37 = sub_1A5248804();
  v258 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v249 = &v219 - v38;
  v39 = sub_1A5248804();
  v269 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v267 = &v219 - v40;
  v235 = v27;
  v41 = swift_getWitnessTable();
  v246 = v14;
  v42 = swift_getWitnessTable();
  v230 = v41;
  v316 = v41;
  v317 = v42;
  v240 = v29;
  v43 = swift_getWitnessTable();
  v44 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v31, MEMORY[0x1E6980A18]);
  v233 = v43;
  v314 = v43;
  v315 = v44;
  v259 = v32;
  v45 = swift_getWitnessTable();
  v46 = sub_1A3F1B380(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v236 = v45;
  v312 = v45;
  v313 = v46;
  v255 = v34;
  v47 = swift_getWitnessTable();
  v48 = sub_1A3F1B31C(&qword_1EB1279F8, &qword_1EB1279F0, v36);
  v237 = v47;
  v310 = v47;
  v311 = v48;
  v297 = v20;
  v260 = v37;
  v238 = swift_getWitnessTable();
  v308 = v238;
  v309 = MEMORY[0x1E69805D0];
  v49 = swift_getWitnessTable();
  v50 = sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v51 = v298;
  v318 = v39;
  v319 = v298;
  v320 = v49;
  v321 = v50;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v266 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v285 = &v219 - v53;
  v272 = v39;
  v318 = v39;
  v319 = v51;
  v242 = v49;
  v320 = v49;
  v321 = v50;
  v241 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = sub_1A3F17D14();
  v318 = OpaqueTypeMetadata2;
  v319 = &type metadata for LemonadeHorizontalSizeClass;
  v320 = OpaqueTypeConformance2;
  v321 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v277 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v276 = &v219 - v57;
  v58 = v302;
  v59 = v300;
  type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler(255, v302, v300, v60);
  v61 = sub_1A5248804();
  v268 = OpaqueTypeMetadata2;
  v318 = OpaqueTypeMetadata2;
  v319 = &type metadata for LemonadeHorizontalSizeClass;
  v253 = OpaqueTypeConformance2;
  v320 = OpaqueTypeConformance2;
  v321 = v55;
  v250 = v55;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = swift_getWitnessTable();
  v306 = v62;
  v307 = v63;
  v64 = swift_getWitnessTable();
  v318 = v56;
  v319 = v61;
  v320 = v62;
  v321 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  v274 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v273 = &v219 - v66;
  type metadata accessor for LemonadeShelfContents.VisibilityTracker(255, v58, v59, v67);
  v68 = sub_1A5248804();
  v278 = v56;
  v318 = v56;
  v319 = v61;
  v270 = v61;
  v271 = v62;
  v320 = v62;
  v321 = v64;
  v265 = v64;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = swift_getWitnessTable();
  v304 = v69;
  v305 = v70;
  v71 = swift_getWitnessTable();
  v275 = v65;
  v318 = v65;
  v319 = v68;
  v262 = v68;
  v263 = v69;
  v320 = v69;
  v321 = v71;
  v257 = v71;
  v264 = swift_getOpaqueTypeMetadata2();
  v261 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v251 = &v219 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v254 = &v219 - v74;
  v296 = sub_1A5249234();
  v295 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v293 = &v219 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1A5246E54();
  v291 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v290 = &v219 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v301;
  v79 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v294 = &v219 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v219 - v83;
  v292 = v85;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v219 - v87;
  sub_1A3EFDB80(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v89 - 8);
  v91 = &v219 - v90;
  v92 = swift_getWitnessTable();
  v93 = v78;
  v94 = v299;
  MEMORY[0x1A5905890](v78, v92);
  v95 = sub_1A5246E94();
  v96 = *(v95 - 8);
  v97 = *(v96 + 48);
  v289 = v95;
  v98 = v97(v91, 1);
  v297 = v79;
  if (v98 == 1)
  {
    sub_1A3F1B5F4(v91, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720], sub_1A3EFDB80);
  }

  else
  {
    v287 = v96;
    v288 = v76;
    v99 = *(v79 + 16);
    v99(v88, v94, v78);
    v99(v84, v94, v78);
    v100 = v290;
    sub_1A5246E44();
    v101 = sub_1A5246E84();
    v102 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v103 = swift_slowAlloc();
      v226 = v102;
      v104 = v103;
      v227 = swift_slowAlloc();
      v318 = v227;
      *v104 = 136446466;
      sub_1A3C41990(v302, v300);
      v105 = *(v79 + 8);
      v221 = v101;
      v105(v88, v93);
      sub_1A3C66768();
      v106 = sub_1A524EA44();
      sub_1A3C2EF94(v106, v107, &v318);
    }

    v108 = *(v79 + 8);
    v108(v88, v78);

    (*(v291 + 8))(v100, v288);
    v108(v84, v78);
    v287[1](v91, v289);
  }

  v109 = v301;
  v110 = v299 + *(v301 + 96);
  v111 = *v110;
  v112 = *(v110 + 8);
  v113 = *(v110 + 16);
  v114 = *(v110 + 24);
  v226 = *(v110 + 32);
  v221 = v111;
  v227 = v113;
  v220 = v112;
  v219 = v114;
  if (v226 != 1)
  {

    v115 = sub_1A524D254();
    v116 = sub_1A524A014();
    sub_1A5246DF4(v115, &dword_1A3C1C000, v116, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0], v219, v220);

    v109 = v301;
    v117 = v293;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v111, v112, v113, v114, 0);
    (*(v295 + 8))(v117, v296);
  }

  v118 = v299;
  sub_1A43F25A0();
  v119 = v302;
  LODWORD(v288) = sub_1A3F00950(v118, v302, v300);
  v120 = v297;
  v122 = v297 + 16;
  v121 = *(v297 + 16);
  v123 = v294;
  v121(v294, v118, v109);
  v124 = *(v120 + 80);
  v125 = (v124 + 32) & ~v124;
  v126 = v125 + v292;
  v127 = swift_allocObject();
  v128 = v300;
  *(v127 + 16) = v119;
  *(v127 + 24) = v128;
  v129 = *(v120 + 32);
  (v129)(v127 + v125, v123, v301);
  v291 = v122;
  v290 = v121;
  v121(v123, v118, v301);
  v289 = v124;
  v130 = swift_allocObject();
  v131 = v302;
  v132 = v300;
  *(v130 + 16) = v302;
  *(v130 + 24) = v132;
  v292 = v125;
  v297 = v120 + 32;
  v287 = v129;
  (v129)(v130 + v125, v123, v301);
  v133 = v288 & 1;
  v288 = v126;
  *(v130 + v126) = v133;
  sub_1A5249584();
  v218 = v228;
  v134 = v301;
  sub_1A5243DC4();
  (*(v284 + 16))(v283, v118, v131);
  v135 = *(v118 + v134[14]);
  v136 = *(v118 + v134[15]);
  if (v226)
  {
    v137 = v227;
  }

  else
  {
    v138 = v221;

    v139 = sub_1A524D254();
    v140 = sub_1A524A014();
    sub_1A5246DF4(v139, &dword_1A3C1C000, v140, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v134 = v301;
    v141 = v293;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v138, v220, v227, v219, 0);
    (*(v295 + 8))(v141, v296);
    v137 = v320;
  }

  v142 = v299;
  v143 = v243;
  v231 = v299 + v134[19];
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v243);
  v144 = v142 + v134[20];
  v145 = *v144;
  v232 = v144;
  if (*(v144 + 8) == 1)
  {
    v303 = v145;
  }

  else
  {

    v146 = sub_1A524D254();
    v147 = sub_1A524A014();
    sub_1A5246DF4(v146, &dword_1A3C1C000, v147, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v148 = v293;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v145, 0);
    (*(v295 + 8))(v148, v296);
    LOBYTE(v145) = v303;
  }

  v149 = v244;
  (*(v284 + 32))(v244, v283, v302);
  v150 = v246;
  v149[v246[9]] = v135;
  v149[v150[10]] = v136;
  *&v149[v150[11]] = v137;
  (*(v286 + 32))(&v149[v150[12]], v143, v298);
  v149[v150[13]] = v145;
  v151 = v150[14];
  *&v149[v151] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v318 = 0x3FF0000000000000;
  sub_1A3F185D4();
  sub_1A52480C4();
  v152 = v235;
  v153 = v281;
  MEMORY[0x1A5906490](v149, v235, v150, v230);
  (*(v245 + 8))(v149, v150);
  (*(v234 + 8))(v153, v152);
  swift_getKeyPath();
  v154 = v142 + v134[21];
  v155 = *v154;
  v156 = *(v154 + 8);
  if (v156 == 1)
  {
    v157 = v155;
    v158 = v155;
  }

  else
  {

    v159 = sub_1A524D254();
    v160 = sub_1A524A014();
    sub_1A5246DF4(v159, &dword_1A3C1C000, v160, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v161 = v293;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v155, 0);
    v157 = (*(v295 + 8))(v161, v296);
    v158 = v318;
  }

  v162 = v248;
  v163 = MEMORY[0x1E69E7D40];
  if (v158)
  {
    v164 = (*((*MEMORY[0x1E69E7D40] & *v158) + 0x2A0))(v157);
  }

  else
  {
    v164 = 0;
  }

  LOBYTE(v318) = v164 & 1;
  v165 = v240;
  v166 = v282;
  sub_1A524A964();

  (*(v239 + 8))(v166, v165);
  swift_getKeyPath();
  if (v156)
  {
    v167 = v155;
  }

  else
  {

    v168 = sub_1A524D254();
    v169 = sub_1A524A014();
    sub_1A5246DF4(v168, &dword_1A3C1C000, v169, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v170 = v293;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v155, 0);
    v167 = (*(v295 + 8))(v170, v296);
    v155 = v318;
  }

  v171 = v301;
  v172 = v300;
  if (v155)
  {
    v173 = (*((*v163 & *v155) + 0x2B8))(v167);
  }

  else
  {
    v173 = *sub_1A41D5618();
  }

  v318 = v173;
  v174 = v247;
  v175 = v259;
  sub_1A524A964();

  (*(v256 + 8))(v162, v175);
  swift_getKeyPath();
  v176 = v249;
  v177 = v255;
  sub_1A524A964();

  (*(v252 + 8))(v174, v177);
  v178 = v294;
  (v290)(v294, v142, v171);
  v179 = swift_allocObject();
  *(v179 + 16) = v302;
  *(v179 + 24) = v172;
  (v287)(v179 + v292, v178, v171);
  v180 = v267;
  v181 = v260;
  sub_1A524B134();

  (*(v258 + 8))(v176, v181);
  v182 = v279;
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v279);
  v183 = v142;
  v184 = v171;
  (v290)(v178, v183, v171);
  v185 = v172;
  v186 = swift_allocObject();
  *(v186 + 16) = v302;
  *(v186 + 24) = v172;
  (v287)(v186 + v292, v178, v184);
  v187 = v272;
  v188 = v298;
  sub_1A524B144();

  (*(v286 + 8))(v182, v188);
  (*(v269 + 8))(v180, v187);
  v189 = *v232;
  if (*(v232 + 8) == 1)
  {
    LOBYTE(v318) = *v232;
  }

  else
  {

    v190 = sub_1A524D254();
    v191 = sub_1A524A014();
    sub_1A5246DF4(v190, &dword_1A3C1C000, v191, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v192 = v293;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v189, 0);
    (*(v295 + 8))(v192, v296);
    LOBYTE(v189) = v318;
  }

  v193 = v276;
  v303 = v189;
  v194 = v294;
  v195 = v299;
  (v290)(v294, v299, v184);
  v196 = swift_allocObject();
  v197 = v302;
  *(v196 + 16) = v302;
  *(v196 + 24) = v185;
  (v287)(v196 + v292, v194, v184);
  v198 = v268;
  v199 = v285;
  sub_1A524B144();

  (*(v266 + 8))(v199, v198);
  v200 = (*(v185 + 328))(v197, v185);
  if (v200)
  {
    v201 = v222;
    sub_1A3EFE030(v184, v222);
    v202 = v224;
    v203 = v223;
    v204 = v225;
    (*(v224 + 104))(v223, *MEMORY[0x1E697E7D8], v225);
    sub_1A3F1D360(&qword_1EB124378, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7F8]);
    sub_1A524C594();
    v205 = *(v202 + 8);
    v205(v203, v204);
    v200 = (v205)(v201, v204);
  }

  MEMORY[0x1EEE9AC00](v200);
  v206 = v302;
  *(&v219 - 4) = v302;
  *(&v219 - 3) = v185;
  v218 = v195;
  swift_checkMetadataState();
  v207 = v273;
  v208 = v278;
  sub_1A524A584();
  (*(v277 + 8))(v193, v208);
  v209 = (*(v185 + 256))(v206, v185);
  MEMORY[0x1EEE9AC00](v209);
  *(&v219 - 4) = v206;
  *(&v219 - 3) = v185;
  v218 = v195;
  swift_checkMetadataState();
  v210 = v251;
  v211 = v275;
  sub_1A524A584();
  (*(v274 + 8))(v207, v211);
  v212 = v261;
  v213 = *(v261 + 16);
  v214 = v254;
  v215 = v264;
  v213(v254, v210, v264);
  v216 = *(v212 + 8);
  v216(v210, v215);
  v213(v280, v214, v215);
  return (v216)(v214, v215);
}

uint64_t sub_1A3F00950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeShelfContents(0, a2, a3, v10);
  v12 = a1 + *(v11 + 108);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v29 = v13 & 1;
  }

  else
  {

    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v13, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v13) = v29;
  }

  v28 = v13 & 1;
  v27 = 0;
  v16 = static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v28, &v27);
  v17 = 0;
  if (v16)
  {
    v18 = (a1 + *(v11 + 116));
    v19 = *v18;
    v20 = *(v18 + 8);

    if ((v20 & 1) == 0)
    {
      v22 = sub_1A524D254();
      v23 = sub_1A524A014();
      sub_1A5246DF4(v22, &dword_1A3C1C000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();

      v21 = (*(v7 + 8))(v9, v6);
      v19 = v26;
    }

    v24 = (*(*v19 + 136))(v21);

    v17 = v24 ^ 1;
  }

  return v17 & 1;
}

uint64_t sub_1A3F00BC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v210 = a3;
  v211 = a1;
  v207 = a4;
  sub_1A3F18928(0, &qword_1EB122BA0, MEMORY[0x1E697F948]);
  v188 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v191 = &v178 - v7;
  sub_1A3F18928(0, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v193 = &v178 - v10;
  v11 = sub_1A5243334();
  v186 = *(v11 - 8);
  v187 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v192 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F17A98();
  v14 = v13;
  v197 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v190 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v189 = &v178 - v17;
  v19 = type metadata accessor for LemonadeShelfHeader(255, a2, a3, v18);
  v20 = sub_1A5248804();
  v208 = v14;
  v21 = sub_1A5249754();
  v196 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v178 - v22;
  v206 = v23;
  v199 = v9;
  v24 = sub_1A5249754();
  v200 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v178 - v25;
  v183 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v182 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v184 = &v178 - v29;
  v209 = v19;
  v185 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v178 - v34;
  v194 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v178 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v178 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v178 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v178 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v178 - v49;
  v204 = v20;
  v205 = v51;
  v52 = sub_1A5249754();
  v201 = *(v52 - 8);
  v202 = v52;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v203 = &v178 - v54;
  v56 = (*(v210 + 40))(a2, v53);
  v57 = MEMORY[0x1E697E5D8];
  if (v56 <= 1)
  {
    v192 = v47;
    v193 = v32;
    v197 = v38;
    v178 = v41;
    v179 = v50;
    v180 = a2;
    v181 = v44;
    if (v56)
    {
      v95 = v182;
      v96 = v211;
      (*(v183 + 16))(v182, v211, a2);
      v98 = type metadata accessor for LemonadeShelfContents(0, a2, v210, v97);
      v99 = v98[9];
      LODWORD(v208) = v96[v98[10]];
      v100 = *&v96[v99];
      sub_1A3F1B4DC(&v96[v98[13]], v250, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);
      v101 = v251;
      if (v251)
      {
        v102 = v252;
        __swift_project_boxed_opaque_existential_1(v250, v251);
        v103 = *(v102 + 16);
        v104 = v100;

        v105 = v103(v101, v102);
        v95 = v182;
        v106 = v105;
        v101 = v107;
        __swift_destroy_boxed_opaque_existential_0(v250);
      }

      else
      {
        v104 = v100;

        sub_1A3C2C598(v250, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
        v106 = 0;
      }

      v152 = v178;
      v153 = v193;
      v154 = *&v211[v98[17]];

      sub_1A3E66D44(v95, v208, v104, v106, v101, v154, 0, v180, v153, v210);
      sub_1A524A054();
      v155 = v209;
      WitnessTable = swift_getWitnessTable();
      v157 = v197;
      sub_1A524B0D4();
      (*(v185 + 8))(v153, v155);
      v248 = WitnessTable;
      v249 = MEMORY[0x1E697E5D8];
      v158 = v204;
      v159 = swift_getWitnessTable();
      v160 = v194;
      v161 = *(v194 + 16);
      v161(v152, v157, v158);
      v162 = *(v160 + 8);
      v162(v157, v158);
      v163 = v181;
      v161(v181, v152, v158);
      v164 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
      v246 = v159;
      v247 = v164;
      v165 = swift_getWitnessTable();
      v166 = sub_1A3F17BF8();
      v244 = v165;
      v245 = v166;
      v167 = v205;
      v168 = swift_getWitnessTable();
      v169 = v203;
      sub_1A3DF4890(v163, v167, v158, v168, v159);
      v162(v163, v158);
      v162(v178, v158);
      v83 = MEMORY[0x1E697E5D8];
      v94 = v169;
    }

    else
    {
      v65 = v211;
      (*(v183 + 16))(v184, v211, a2);
      v67 = type metadata accessor for LemonadeShelfContents(0, a2, v210, v66);
      v68 = v67[9];
      LODWORD(v197) = v65[v67[10]];
      v69 = *&v65[v68];
      sub_1A3F1B4DC(&v65[v67[13]], v250, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);
      v70 = v251;
      v193 = v69;
      if (v251)
      {
        v71 = v252;
        __swift_project_boxed_opaque_existential_1(v250, v251);
        v72 = *(v71 + 16);

        v73 = v72(v70, v71);
        v70 = v74;
        __swift_destroy_boxed_opaque_existential_0(v250);
      }

      else
      {

        sub_1A3C2C598(v250, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
        v73 = 0;
      }

      v128 = v181;
      v129 = v35;
      v130 = *&v211[v67[17]];

      v131 = v180;
      v132 = v210;
      v133 = sub_1A3C30368();
      sub_1A3E66D44(v184, v197, v193, v73, v70, v130, v133 & 1, v131, v129, v132);
      sub_1A524A054();
      v134 = v209;
      v135 = swift_getWitnessTable();
      v136 = v192;
      sub_1A524B0D4();
      (*(v185 + 8))(v129, v134);
      v216 = v135;
      v217 = MEMORY[0x1E697E5D8];
      v137 = v204;
      v138 = swift_getWitnessTable();
      v139 = v194;
      v140 = *(v194 + 16);
      v141 = v179;
      v140(v179, v136, v137);
      v211 = *(v139 + 8);
      (v211)(v136, v137);
      v140(v128, v141, v137);
      v142 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
      v143 = v195;
      sub_1A3DF4798(v128, v137, v208, v138, v142);
      v214 = v138;
      v215 = v142;
      v144 = v206;
      v145 = swift_getWitnessTable();
      v146 = sub_1A3F17BF8();
      v147 = v198;
      sub_1A3DF4798(v143, v144, v199, v145, v146);
      (*(v196 + 8))(v143, v144);
      v212 = v145;
      v213 = v146;
      v148 = v205;
      v149 = swift_getWitnessTable();
      v94 = v203;
      sub_1A3DF4798(v147, v148, v137, v149, v138);
      v150 = v147;
      v83 = MEMORY[0x1E697E5D8];
      (*(v200 + 8))(v150, v148);
      v151 = v211;
      (v211)(v181, v137);
      (v151)(v179, v137);
    }

    goto LABEL_26;
  }

  if (v56 == 2)
  {
    v75 = MEMORY[0x1E697E5D8];
    v76 = type metadata accessor for LemonadeShelfContents(0, a2, v210, v55);
    sub_1A3F1B4DC(&v211[*(v76 + 52)], v250, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);
    v77 = v251;
    if (v251)
    {
      v78 = v252;
      __swift_project_boxed_opaque_existential_1(v250, v251);
      (*(v78 + 16))(v77, v78);
      v80 = v79;
      __swift_destroy_boxed_opaque_existential_0(v250);
      v82 = v204;
      v81 = v205;
      if (v80)
      {
LABEL_18:
        (*(v186 + 104))(v192, *MEMORY[0x1E69C2408], v187);
        sub_1A5247BA4();
        v108 = v189;
        sub_1A52423E4();
        v222 = swift_getWitnessTable();
        v223 = v75;
        v109 = swift_getWitnessTable();
        v110 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
        v111 = v195;
        sub_1A3DF4890(v108, v82, v208, v109, v110);
        v220 = v109;
        v221 = v110;
        v112 = v206;
        v113 = swift_getWitnessTable();
        v114 = sub_1A3F17BF8();
        v115 = v198;
        sub_1A3DF4798(v111, v112, v199, v113, v114);
        (*(v196 + 8))(v111, v112);
        v218 = v113;
        v219 = v114;
        v116 = swift_getWitnessTable();
        v94 = v203;
        sub_1A3DF4798(v115, v81, v82, v116, v109);
        v117 = v115;
        v83 = MEMORY[0x1E697E5D8];
        (*(v200 + 8))(v117, v81);
        v197[1](v189, v208);
        goto LABEL_26;
      }
    }

    else
    {
      sub_1A3C2C598(v250, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
      v82 = v204;
      v81 = v205;
    }

    (*(v210 + 24))(a2);

    goto LABEL_18;
  }

  if (v56 == 3)
  {
    v58 = type metadata accessor for LemonadeShelfContents(0, a2, v210, v55);
    sub_1A3F1B4DC(&v211[*(v58 + 52)], v250, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);
    v59 = v251;
    v61 = v204;
    v60 = v205;
    if (v251)
    {
      v62 = v252;
      __swift_project_boxed_opaque_existential_1(v250, v251);
      (*(v62 + 16))(v59, v62);
      v64 = v63;
      __swift_destroy_boxed_opaque_existential_0(v250);
      if (v64)
      {
LABEL_21:
        (*(v186 + 104))(v192, *MEMORY[0x1E69C2410], v187);
        sub_1A5247BA4();
        v118 = v190;
        sub_1A52423E4();
        (v197[2])(v191, v118, v208);
        swift_storeEnumTagMultiPayload();
        v119 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
        v120 = v193;
        sub_1A5249744();
        v234 = swift_getWitnessTable();
        v235 = MEMORY[0x1E697E5D8];
        v121 = swift_getWitnessTable();
        v232 = v121;
        v233 = v119;
        v122 = v206;
        v123 = swift_getWitnessTable();
        v124 = sub_1A3F17BF8();
        v125 = v198;
        sub_1A3DF4890(v120, v122, v199, v123, v124);
        sub_1A3F18990(v120);
        v230 = v123;
        v231 = v124;
        v126 = swift_getWitnessTable();
        v94 = v203;
        sub_1A3DF4798(v125, v60, v61, v126, v121);
        v127 = v125;
        v83 = MEMORY[0x1E697E5D8];
        (*(v200 + 8))(v127, v60);
        v197[1](v190, v208);
        goto LABEL_26;
      }
    }

    else
    {
      sub_1A3C2C598(v250, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
    }

    (*(v210 + 24))(a2);

    goto LABEL_21;
  }

  swift_storeEnumTagMultiPayload();
  v83 = v57;
  v84 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
  v85 = v193;
  sub_1A5249744();
  v228 = swift_getWitnessTable();
  v229 = v83;
  v86 = v204;
  v87 = swift_getWitnessTable();
  v226 = v87;
  v227 = v84;
  v88 = v206;
  v89 = swift_getWitnessTable();
  v90 = sub_1A3F17BF8();
  v91 = v198;
  sub_1A3DF4890(v85, v88, v199, v89, v90);
  sub_1A3F18990(v85);
  v224 = v89;
  v225 = v90;
  v92 = v205;
  v93 = swift_getWitnessTable();
  v94 = v203;
  sub_1A3DF4798(v91, v92, v86, v93, v87);
  (*(v200 + 8))(v91, v92);
LABEL_26:
  v170 = v207;
  v242 = swift_getWitnessTable();
  v243 = v83;
  v171 = swift_getWitnessTable();
  v172 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
  v240 = v171;
  v241 = v172;
  v173 = swift_getWitnessTable();
  v174 = sub_1A3F17BF8();
  v238 = v173;
  v239 = v174;
  v236 = swift_getWitnessTable();
  v237 = v171;
  v175 = v202;
  swift_getWitnessTable();
  v176 = v201;
  (*(v201 + 16))(v170, v94, v175);
  return (*(v176 + 8))(v94, v175);
}

uint64_t sub_1A3F02228@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(_BYTE *, int *)@<X3>, uint64_t a5@<X8>)
{
  v121 = a2;
  v123 = a5;
  v114 = sub_1A5249234();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v103[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F17BA8(0);
  v116 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v103[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F17B1C(0);
  v117 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v103[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F17B44(0, &qword_1EB123108, sub_1A3F17B1C, MEMORY[0x1E697E048]);
  v119 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v103[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v103[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v103[-v18];
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v103[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = a4;
  v24 = type metadata accessor for LemonadeShelfBody(0, a3, a4, v23);
  v126 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v103[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x1EEE9AC00](v27);
  v124 = &v103[-v29];
  (*(v19 + 16))(v22, a1, a3, v28);
  WitnessTable = a3;
  v108 = type metadata accessor for LemonadeShelfContents(0, a3, a4, v30);
  v31 = v108[14];
  v32 = a1;
  v110 = a1;
  v33 = *(a1 + v31);
  v34 = *(a1 + v108[9]);
  v35 = *(a1 + v108[10]);
  v36 = *(a1 + v108[12]);
  v37 = *(a1 + v108[17]);
  sub_1A3F1B4DC(v32 + v108[13], &v130, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);

  (*(v19 + 32))(v26, v22, a3);
  v26[v24[9]] = v33;
  *&v26[v24[10]] = v34;
  v26[v24[11]] = v35;
  *&v26[v24[12]] = v36;
  *&v26[v24[13]] = v37;
  v38 = &v26[v24[14]];
  v39 = v131;
  *v38 = v130;
  *(v38 + 1) = v39;
  *(v38 + 4) = v132;
  v40 = &v26[v24[15]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = &v26[v24[16]];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  v42 = &v26[v24[17]];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  v43 = v24[18];
  *&v26[v43] = swift_getKeyPath();
  v58 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v44 = &v26[v24[19]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = &v26[v24[20]];
  *v45 = swift_getKeyPath();
  *(v45 + 1) = 0;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  v45[32] = 0;
  v46 = &v26[v24[21]];
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v47 = &v26[v24[22]];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = v24[23];
  *&v26[v48] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v58);
  swift_storeEnumTagMultiPayload();
  v49 = &v26[v24[24]];
  *v49 = swift_getKeyPath();
  *(v49 + 4) = 0;
  v50 = v24[25];
  *&v26[v50] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], v58);
  swift_storeEnumTagMultiPayload();
  v51 = v24[26];
  *&v26[v51] = swift_getKeyPath();
  sub_1A3EFDB80(0, &unk_1EB128A40, sub_1A3DC7D88, v58);
  swift_storeEnumTagMultiPayload();
  v52 = &v26[v24[27]];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = &v26[v24[28]];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  v54 = &v26[v24[29]];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = v24[30];
  v129[0] = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B694();
  *&v26[v55] = v133;
  WitnessTable = swift_getWitnessTable();
  v56 = v126;
  v107 = *(v126 + 16);
  v106 = v126 + 16;
  v107(v124, v26, v24);
  v57 = *(v56 + 8);
  v126 = v56 + 8;
  v111 = v57;
  v57(v26, v24);
  sub_1A524B994();
  LODWORD(v58) = sub_1A524A094();
  v59 = v110 + v108[28];
  v61 = *v59;
  v60 = *(v59 + 8);
  v63 = *(v59 + 16);
  v62 = *(v59 + 24);
  v64 = *(v59 + 32);
  v108 = v60;
  v110 = v62;
  v105 = v63;
  if (v64 == 1)
  {
    v65 = v114;
    v66 = v113;
    v67 = v112;
  }

  else
  {
    v104 = v58;
    v58 = v60;

    v68 = sub_1A524D254();
    v69 = sub_1A524A014();
    sub_1A5246DF4(v68, &dword_1A3C1C000, v69, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v67 = v112;
    sub_1A5249224();
    swift_getAtKeyPath();
    v70 = v58;
    LOBYTE(v58) = v104;
    sub_1A3D35A84(v61, v70, v63, v62, 0);
    v66 = v113;
    v65 = v114;
    (*(v113 + 8))(v67, v114);
  }

  sub_1A5247BC4();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  sub_1A3F17BD0(0);
  v80 = &v125[*(v79 + 36)];
  *v80 = v58;
  *(v80 + 1) = v72;
  *(v80 + 2) = v74;
  *(v80 + 3) = v76;
  *(v80 + 4) = v78;
  v80[40] = 0;
  v81 = sub_1A524A0B4();
  if (!v64)
  {

    v82 = v65;
    v83 = sub_1A524D254();
    v84 = sub_1A524A014();
    sub_1A5246DF4(v83, &dword_1A3C1C000, v84, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v61, v108, v105, v110, 0);
    (*(v66 + 8))(v67, v82);
  }

  sub_1A5247BC4();
  v85 = v125;
  v86 = &v125[*(v116 + 36)];
  *v86 = v81;
  *(v86 + 1) = v87;
  *(v86 + 2) = v88;
  *(v86 + 3) = v89;
  *(v86 + 4) = v90;
  v86[40] = 0;
  if (v121)
  {
    v91 = 0.0;
  }

  else
  {
    v91 = 1.0;
  }

  v92 = v118;
  sub_1A3F1C8C4(v85, v118, sub_1A3F17BA8);
  *&v92[*(v117 + 36)] = v91;
  sub_1A524BC74();
  sub_1A52481F4();
  v93 = v115;
  sub_1A3F1C8C4(v92, v115, sub_1A3F17B1C);
  v94 = v119;
  v95 = &v93[*(v119 + 36)];
  v96 = v131;
  *v95 = v130;
  v95[1] = v96;
  v95[2] = v132;
  v97 = v120;
  sub_1A3F18628(v93, v120);
  v98 = v124;
  v107(v26, v124, v24);
  *&v133 = v26;
  v99 = MEMORY[0x1E697E048];
  v100 = v122;
  sub_1A3F1C850(v97, v122, &qword_1EB123108, sub_1A3F17B1C, MEMORY[0x1E697E048], sub_1A3F17B44);
  *(&v133 + 1) = v100;
  v129[0] = v24;
  v129[1] = v94;
  v127 = WitnessTable;
  v128 = sub_1A3F186B0();
  sub_1A3DF4988(&v133, 2uLL, v129);
  sub_1A3F1B5F4(v97, &qword_1EB123108, sub_1A3F17B1C, v99, sub_1A3F17B44);
  v101 = v111;
  v111(v98, v24);
  sub_1A3F1B5F4(v100, &qword_1EB123108, sub_1A3F17B1C, v99, sub_1A3F17B44);
  return v101(v26, v24);
}

uint64_t sub_1A3F02E9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248D94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3F02EF4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.selectionLimit.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F02F48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeShelfStyleOptions(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v12);
  v16 = v1 + *(a1 + 80);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v34 = *v16;
  }

  else
  {

    v18 = v6;
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    v21 = v19;
    v6 = v18;
    sub_1A5246DF4(v21, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v17, 0);
    (*(v7 + 8))(v9, v18);
    LOBYTE(v17) = v34;
  }

  v33 = v17;
  v22 = v2 + *(a1 + 92);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v32 = *v22;
  }

  else
  {

    v24 = v6;
    v25 = sub_1A524D254();
    v26 = sub_1A524A014();
    sub_1A5246DF4(v25, &dword_1A3C1C000, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v23, 0);
    (*(v7 + 8))(v9, v24);
    LOBYTE(v23) = v32;
  }

  v31 = v23;
  v27 = v30;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v30);
  sub_1A42E6EC8(v12, &v33, &v31, v27, v15);
  v28 = (*(*(a1 + 24) + 112))(v15, *(a1 + 16));
  sub_1A3F1C4BC(v15, type metadata accessor for LemonadeShelfStyleOptions);
  return v28;
}

uint64_t sub_1A3F03334(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20[-v12];
  v14 = *a2;
  v20[15] = *a1;
  v20[14] = v14;
  sub_1A3F17D14();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    v17 = type metadata accessor for LemonadeShelfContents(0, a4, a5, v16);
    v18 = sub_1A52427E4();
    v19 = *(a3 + *(v17 + 44));
    if ((v18 & 1) != v19)
    {
      sub_1A52427F4();
      if (v19)
      {
        (*(*(AssociatedTypeWitness - 8) + 56))(v13, 1, 1, AssociatedTypeWitness);
        sub_1A5242814();
      }
    }

    sub_1A3F02F48(v17);
    return sub_1A5242824();
  }

  return result;
}

uint64_t sub_1A3F0350C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a1;
  v59 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Handler = type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler(0, v11, v12, v12);
  v58 = *(Handler - 8);
  v14 = MEMORY[0x1EEE9AC00](Handler);
  v16 = &v55 - v15;
  (*(v8 + 16))(v10, a2, a3, v14);
  type metadata accessor for LemonadeShelfContents(0, a3, a4, v17);
  v18 = sub_1A5243194();
  v19 = *(v8 + 32);
  v56 = v16;
  v19(v16, v10, a3);
  v57 = Handler;
  *&v16[*(Handler + 36)] = v18;
  v20 = &v16[*(Handler + 40)];
  v83[0] = 0;
  sub_1A524B694();
  v21 = v72;
  *v20 = v71;
  *(v20 + 1) = v21;
  type metadata accessor for LemonadeShelfHeader(255, a3, a4, v22);
  sub_1A5248804();
  sub_1A3F17A98();
  sub_1A5249754();
  sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  sub_1A5249754();
  v23 = sub_1A5249754();
  type metadata accessor for LemonadeShelfBody(255, a3, a4, v24);
  sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C, MEMORY[0x1E697E048]);
  swift_getTupleTypeMetadata2();
  v25 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v82 = MEMORY[0x1E697E5D8];
  v26 = swift_getWitnessTable();
  v27 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
  v79 = v26;
  v80 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_1A3F17BF8();
  v77 = v28;
  v78 = v29;
  v75 = swift_getWitnessTable();
  v76 = v26;
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v71 = v23;
  v72 = v25;
  v73 = v30;
  v74 = v31;
  sub_1A5243DD4();
  type metadata accessor for LemonadeShelfContents.bottomPadding(255, a3, a4, v32);
  sub_1A5248804();
  v33 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1C93C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v33);
  sub_1A5248804();
  v34 = MEMORY[0x1E69C24E0];
  sub_1A3EFDB80(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  v35 = sub_1A5248804();
  v55 = sub_1A5242D14();
  v36 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v69 = v36;
  v70 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v33, MEMORY[0x1E6980A18]);
  v67 = v38;
  v68 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_1A3F1B380(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v65 = v40;
  v66 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1A3F1B31C(&qword_1EB1279F8, &qword_1EB1279F0, v34);
  v63 = v42;
  v64 = v43;
  v61 = swift_getWitnessTable();
  v62 = MEMORY[0x1E69805D0];
  v44 = swift_getWitnessTable();
  v45 = sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v46 = v55;
  v71 = v35;
  v72 = v55;
  v73 = v44;
  v74 = v45;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = v35;
  v72 = v46;
  v73 = v44;
  v74 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_1A3F17D14();
  v71 = OpaqueTypeMetadata2;
  v72 = &type metadata for LemonadeHorizontalSizeClass;
  v73 = OpaqueTypeConformance2;
  v74 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v71 = OpaqueTypeMetadata2;
  v72 = &type metadata for LemonadeHorizontalSizeClass;
  v73 = OpaqueTypeConformance2;
  v74 = v49;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v56;
  v53 = v57;
  MEMORY[0x1A5906490](v56, v50, v57, v51);
  return (*(v58 + 8))(v52, v53);
}

uint64_t sub_1A3F03C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a1;
  v71 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeShelfContents.VisibilityTracker(0, v11, v12, v12);
  v70 = *(v13 - 1);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - v15;
  (*(v8 + 16))(v10, a2, a3, v14);
  v17 = a4;
  v19 = type metadata accessor for LemonadeShelfContents(0, a3, a4, v18);
  v20 = sub_1A5243194();
  v21 = *(*(a2 + *(v19 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  (*(v8 + 32))(v16, v10, a3);
  v69 = v13;
  v22 = v13[9];
  v68 = v16;
  *&v16[v22] = v20;
  *&v16[v13[10]] = v21;
  v23 = &v16[v13[11]];
  v97 = 0;
  sub_1A524B694();
  v24 = v86;
  *v23 = v85;
  *(v23 + 1) = v24;
  v25 = v17;
  type metadata accessor for LemonadeShelfHeader(255, a3, v17, v26);
  sub_1A5248804();
  sub_1A3F17A98();
  sub_1A5249754();
  sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  sub_1A5249754();
  v27 = sub_1A5249754();
  v66 = a3;
  v67 = v25;
  type metadata accessor for LemonadeShelfBody(255, a3, v25, v28);
  sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C, MEMORY[0x1E697E048]);
  swift_getTupleTypeMetadata2();
  v29 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v96 = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  v31 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98, MEMORY[0x1E69C1E20]);
  v93 = v30;
  v94 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_1A3F17BF8();
  v91 = v32;
  v92 = v33;
  v89 = swift_getWitnessTable();
  v90 = v30;
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v85 = v27;
  v86 = v29;
  v87 = v34;
  v88 = v35;
  sub_1A5243DD4();
  type metadata accessor for LemonadeShelfContents.bottomPadding(255, a3, v25, v36);
  sub_1A5248804();
  v37 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1C93C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v37);
  sub_1A5248804();
  v38 = MEMORY[0x1E69C24E0];
  sub_1A3EFDB80(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  v39 = sub_1A5248804();
  v65 = sub_1A5242D14();
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v83 = v40;
  v84 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v37, MEMORY[0x1E6980A18]);
  v81 = v42;
  v82 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_1A3F1B380(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v79 = v44;
  v80 = v45;
  v46 = swift_getWitnessTable();
  v47 = sub_1A3F1B31C(&qword_1EB1279F8, &qword_1EB1279F0, v38);
  v77 = v46;
  v78 = v47;
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x1E69805D0];
  v48 = swift_getWitnessTable();
  v49 = sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v50 = v65;
  v85 = v39;
  v86 = v65;
  v87 = v48;
  v88 = v49;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = v39;
  v86 = v50;
  v87 = v48;
  v88 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = sub_1A3F17D14();
  v85 = OpaqueTypeMetadata2;
  v86 = &type metadata for LemonadeHorizontalSizeClass;
  v87 = OpaqueTypeConformance2;
  v88 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler(255, v66, v67, v55);
  v56 = sub_1A5248804();
  v85 = OpaqueTypeMetadata2;
  v86 = &type metadata for LemonadeHorizontalSizeClass;
  v87 = OpaqueTypeConformance2;
  v88 = v53;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = swift_getWitnessTable();
  v73 = v57;
  v74 = v58;
  v59 = swift_getWitnessTable();
  v85 = v54;
  v86 = v56;
  v87 = v57;
  v88 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v85 = v54;
  v86 = v56;
  v87 = v57;
  v88 = v59;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v68;
  v63 = v69;
  MEMORY[0x1A5906490](v68, v60, v69, v61);
  return (*(v70 + 8))(v62, v63);
}

uint64_t sub_1A3F044D8(uint64_t a1)
{
  sub_1A3F1C93C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v2;
}

uint64_t sub_1A3F04550(char a1, uint64_t a2)
{
  sub_1A3F1C93C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524B6B4();
  result = sub_1A3F044D8(a2);
  if (v6 != (result & 1))
  {
    v5 = sub_1A3F044D8(a2);
    return (*(*(a2 + 24) + 264))(v5 & 1, *(v2 + *(a2 + 36)), *(v2 + *(a2 + 40)), *(a2 + 16));
  }

  return result;
}

uint64_t sub_1A3F04658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v48 = a1;
  v49 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = v7;
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_1A52499C4();
  WitnessTable = swift_getWitnessTable();
  v53 = v9;
  v54 = WitnessTable;
  v44 = MEMORY[0x1E697D3A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v50 = &v34 - v10;
  v11 = sub_1A5248804();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v34 - v15;
  v38 = *(v6 + 16);
  v34 = v8;
  v38(v8, v4, a2, v14);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = *(a2 + 24);
  v36 = *(a2 + 16);
  *(v17 + 16) = v36;
  *(v17 + 24) = v18;
  v35 = *(v6 + 32);
  v35(v17 + v16, v8, a2);
  v19 = swift_checkMetadataState();
  v20 = WitnessTable;
  sub_1A524AEE4();

  v21 = v34;
  (v38)(v34, v39, a2);
  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 16) = v36;
  *(v22 + 24) = v18;
  v23(v22 + v16, v21, a2);
  v53 = v19;
  v54 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v40;
  v26 = OpaqueTypeMetadata2;
  v27 = v50;
  sub_1A524A994();

  (*(v47 + 8))(v27, v26);
  v51 = OpaqueTypeConformance2;
  v52 = MEMORY[0x1E69805D0];
  v28 = v46;
  swift_getWitnessTable();
  v29 = v45;
  v30 = *(v45 + 16);
  v31 = v43;
  v30(v43, v25, v28);
  v32 = *(v29 + 8);
  v32(v25, v28);
  v30(v49, v31, v28);
  return (v32)(v31, v28);
}

uint64_t sub_1A3F04ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[2] = a1;
  v21 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable();
  v6 = sub_1A52499C4();
  v20[0] = swift_getWitnessTable();
  v22 = v6;
  v23 = v20[0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  (*(v4 + 16))(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20[1], a2, v12);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a2 + 16);
  (*(v4 + 32))(v16 + v15, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_checkMetadataState();
  sub_1A524AD84();

  v17 = *(v8 + 16);
  v17(v14, v10, OpaqueTypeMetadata2);
  v18 = *(v8 + 8);
  v18(v10, OpaqueTypeMetadata2);
  v17(v21, v14, OpaqueTypeMetadata2);
  return (v18)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1A3F04DAC@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  swift_getWitnessTable();
  sub_1A52499C4();
  v4 = sub_1A5248804();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  sub_1A524A084();
  sub_1A3F04FB0(a1);
  WitnessTable = swift_getWitnessTable();
  sub_1A524B0D4();
  v15[0] = WitnessTable;
  v15[1] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v12 = *(v5 + 16);
  v12(v10, v7, v4);
  v13 = *(v5 + 8);
  v13(v7, v4);
  v12(a2, v10, v4);
  return (v13)(v10, v4);
}

double sub_1A3F04FB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5242D14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LemonadeShelfStyleOptions(0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0.0;
  if ((*(v1 + *(a1 + 40)) & 1) == 0)
  {
    v16 = *(v1 + *(a1 + 44));
    sub_1A3F1B044(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
    sub_1A52480D4();
    v12.n128_f64[0] = v26;
    v15 = v16 * v26;
  }

  (*(v8 + 16))(v10, v1 + *(a1 + 48), v7, v12);
  v25 = *(v1 + *(a1 + 52));
  v24 = 2;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v6);
  sub_1A42E6EC8(v10, &v25, &v24, v6, v14);
  v17 = COERCE_DOUBLE((*(*(a1 + 24) + 296))(v14, *(a1 + 16)));
  v19 = v18;
  sub_1A3F1C4BC(v14, type metadata accessor for LemonadeShelfStyleOptions);
  v20 = v17;
  if (v15 < v17)
  {
    v20 = v15;
  }

  v21 = v15 - v20;
  if ((v19 & 1) == 0)
  {
    v15 = v21;
  }

  if (shouldUseNewCollectionsLayout()() && !*(v2 + *(a1 + 36)))
  {
    return 0.0;
  }

  return v15;
}

uint64_t sub_1A3F05278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeShelfStyleOptions(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v13);
  v17 = v2 + *(a1 + 68);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v35 = *v17;
  }

  else
  {

    v19 = sub_1A524D254();
    v20 = v7;
    v21 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v7 = v20;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v18, 0);
    (*(v8 + 8))(v10, v20);
    LOBYTE(v18) = v35;
  }

  v34 = v18;
  v22 = v3 + *(a1 + 64);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v33 = *v22;
  }

  else
  {

    v24 = v7;
    v25 = sub_1A524D254();
    v26 = sub_1A524A014();
    sub_1A5246DF4(v25, &dword_1A3C1C000, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v23, 0);
    (*(v8 + 8))(v10, v24);
    LOBYTE(v23) = v33;
  }

  v32 = v23;
  v27 = v30;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v30);
  sub_1A42E6EC8(v13, &v34, &v32, v27, v16);
  (*(*(a1 + 24) + 104))(v16, *(a1 + 16));
  return sub_1A3F1C4BC(v16, type metadata accessor for LemonadeShelfStyleOptions);
}

uint64_t sub_1A3F05654(int *a1)
{
  v2 = v1;
  v4 = sub_1A5242D14();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52486A4();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F16188(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v21);
  sub_1A3F05278(a1, v18);
  v43 = v15;
  sub_1A3F1B45C(v18, v15, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v18, type metadata accessor for LemonadeShelfBodyStyle);
  v22 = v1 + a1[17];
  v23 = *v22;
  LODWORD(v22) = *(v22 + 8);
  v44 = v10;
  v45 = v9;
  if (v22 == 1)
  {
    v56 = v23;
  }

  else
  {

    v24 = sub_1A524D254();
    v25 = sub_1A524A014();
    sub_1A5246DF4(v24, &dword_1A3C1C000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v23, 0);
    (*(v10 + 8))(v12, v9);
    LOBYTE(v23) = v56;
  }

  v55 = v23;
  v26 = *(v2 + a1[11]);
  v46 = v8;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v8);
  sub_1A5243164();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v27 = sub_1A524CAF4();

  v28 = v49;
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v49);
  v29 = v2 + a1[19];
  v30 = *v29;
  if (*(v29 + 8) == 1)
  {
    v54 = *v29;
    v31 = v45;
  }

  else
  {

    v32 = sub_1A524D254();
    v33 = sub_1A524A014();
    sub_1A5246DF4(v32, &dword_1A3C1C000, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v30, 0);
    v31 = v45;
    (*(v44 + 8))(v12, v45);
    LOBYTE(v30) = v54;
  }

  v53 = v30;
  v34 = v2 + a1[28];
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    v36 = sub_1A524D254();
    v37 = v31;
    v38 = sub_1A524A014();
    sub_1A5246DF4(v36, &dword_1A3C1C000, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v35, 0);
    (*(v44 + 8))(v12, v37);
    LOBYTE(v35) = v52;
  }

  v39 = v46;
  v40 = v43;
  v41 = sub_1A43A2588(v43, &v55, v26, v46, v27, v28, &v53, v35 & 1);
  (*(v50 + 8))(v28, v51);
  (*(v47 + 8))(v39, v48);
  sub_1A3F1C4BC(v40, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v21, type metadata accessor for LemonadeItemsLayoutSpec);
  return v41;
}

uint64_t sub_1A3F05D30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v49 = sub_1A52486A4();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F16188(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v18);
  sub_1A3F05278(a1, v15);
  v45 = v12;
  sub_1A3F1B45C(v15, v12, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v15, type metadata accessor for LemonadeShelfBodyStyle);
  v19 = v2 + a1[17];
  v20 = *v19;
  v21 = v6;
  if (*(v19 + 8) == 1)
  {
    v22 = v7;
    v56 = *v19;
  }

  else
  {

    v23 = sub_1A524D254();
    v24 = sub_1A524A014();
    sub_1A5246DF4(v23, &dword_1A3C1C000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v6 = v21;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v20, 0);
    v22 = v7;
    (*(v7 + 8))(v9, v21);
    LOBYTE(v20) = v56;
  }

  v44 = *(v3 + a1[11]);
  v55 = v20;
  v25 = v3 + a1[16];
  v26 = *v25;
  v27 = v46;
  if (*(v25 + 8) == 1)
  {
    v54 = *v25;
  }

  else
  {

    v28 = sub_1A524D254();
    v29 = sub_1A524A014();
    v30 = v28;
    v6 = v21;
    sub_1A5246DF4(v30, &dword_1A3C1C000, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v26, 0);
    (*(v22 + 8))(v9, v21);
    LOBYTE(v26) = v54;
  }

  v53 = v26;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v27);
  v31 = v3 + a1[19];
  v32 = *v31;
  if (*(v31 + 8) == 1)
  {
    v52 = *v31;
  }

  else
  {

    v33 = sub_1A524D254();
    v34 = sub_1A524A014();
    v35 = v33;
    v6 = v21;
    sub_1A5246DF4(v35, &dword_1A3C1C000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v32, 0);
    (*(v22 + 8))(v9, v21);
    LOBYTE(v32) = v52;
  }

  v51 = v32;
  v36 = v3 + a1[28];
  v37 = *v36;
  if (*(v36 + 8) != 1)
  {

    v38 = v6;
    v39 = sub_1A524D254();
    v40 = sub_1A524A014();
    sub_1A5246DF4(v39, &dword_1A3C1C000, v40, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v37, 0);
    (*(v22 + 8))(v9, v38);
    LOBYTE(v37) = v50;
  }

  v41 = v45;
  sub_1A43A22CC(v45, &v55, v44, &v53, v27, &v51, v37 & 1, v48);
  (*(v47 + 8))(v27, v49);
  sub_1A3F1C4BC(v41, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  return sub_1A3F1C4BC(v18, type metadata accessor for LemonadeItemsLayoutSpec);
}

uint64_t sub_1A3F06368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1A3EFDB80(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeShelfBodyStyle(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F05278(a1, v14);
  v15 = v14[*(v12 + 28)];
  sub_1A3F1C4BC(v14, type metadata accessor for LemonadeShelfBodyStyle);
  v16 = shouldUseNewCollectionsLayout()();
  v31 = v7;
  if (v16)
  {
    v17 = v2 + *(a1 + 112);
    v18 = *v17;
    if (*(v17 + 8) != 1)
    {

      v19 = sub_1A524D254();
      v20 = sub_1A524A014();
      sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v18, 0);
      (*(v8 + 8))(v10, v7);
      LOBYTE(v18) = v33;
    }

    v21 = v8;
    v15 = sub_1A40B1BC0(v18 & 1, v15);
  }

  else
  {
    v21 = v8;
  }

  (*(*(a1 + 24) + 80))(*(a1 + 16));
  v22 = sub_1A5244084();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v6, 1, v22) != 1)
  {
    return (*(v23 + 32))(v32, v6, v22);
  }

  v25 = v2 + *(a1 + 60);
  v26 = *v25;
  if (*(v25 + 8) == 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v28 = sub_1A524D254();
  v29 = sub_1A524A014();
  sub_1A5246DF4(v28, &dword_1A3C1C000, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();
  v30 = sub_1A3F1B54C(v26, 0);
  (*(v21 + 8))(v10, v31, v30);
  sub_1A40B1C00(v15, v34, v32);

  result = (v24)(v6, 1, v22);
  if (result != 1)
  {
    return sub_1A3F1B5F4(v6, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720], sub_1A3EFDB80);
  }

  return result;
}

uint64_t sub_1A3F067A4(uint64_t a1)
{
  sub_1A3C41990(*(a1 + 16), *(a1 + 24));
  sub_1A3C66768();
  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](0x566C6C6F7263732DLL, 0xEB00000000776569);
  return v2;
}

uint64_t static LemonadeShelfUtilities.scrollViewAccessibilityIdentifier(shelfIdentifier:)()
{
  sub_1A3C66768();
  v1 = sub_1A524EA44();
  MEMORY[0x1A5907B60](0x566C6C6F7263732DLL, 0xEB00000000776569);
  return v1;
}

uint64_t sub_1A3F0688C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v315 = a2;
  v314 = sub_1A5249234();
  v317 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v316 = v252 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v328 = v252 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v326 = v252 - v7;
  v8 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v313 = v252 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v312 = v252 - v11;
  v12 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v327 = v252 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v325 = v252 - v15;
  v16 = sub_1A5244084();
  v310 = *(v16 - 8);
  v311 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v308 = v252 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v309 = v252 - v19;
  v329 = a1;
  v20 = *(a1 + 16);
  v307 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v305 = v22;
  v306 = v252 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = MEMORY[0x1E69E6720];
  sub_1A3EFDB80(0, &qword_1EB1292C0, MEMORY[0x1E69C1DE0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v304 = v252 - v24;
  sub_1A3F1AFEC();
  v331 = *(a1 + 24);
  v25 = *(v331 + 8);
  v333 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v321 = v27;
  v28 = sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = sub_1A3F1B0E0();
  v352 = AssociatedConformanceWitness;
  v353 = v30;
  v31 = v30;
  v323 = v30;
  v332 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  *&v336 = AssociatedTypeWitness;
  *(&v336 + 1) = v28;
  v337 = AssociatedConformanceWitness;
  v338 = WitnessTable;
  v319 = MEMORY[0x1E69C3078];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v33 = sub_1A524B784();
  v34 = sub_1A5248804();
  v295 = MEMORY[0x1E69817F8];
  v299 = v33;
  v350 = swift_getWitnessTable();
  v351 = v31;
  v35 = v350;
  v298 = v350;
  v303 = v34;
  v297 = swift_getWitnessTable();
  *&v336 = v33;
  *(&v336 + 1) = v34;
  v337 = v35;
  v338 = v297;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = v25;
  v37 = v333;
  v320 = swift_getAssociatedTypeWitness();
  v293 = swift_getAssociatedConformanceWitness();
  v302 = *(v293 + 16);
  v292 = swift_getAssociatedTypeWitness();
  v318 = sub_1A524CB74();
  v38 = swift_getAssociatedTypeWitness();
  v39 = swift_getAssociatedConformanceWitness();
  *&v336 = v38;
  *(&v336 + 1) = v37;
  v337 = v39;
  v338 = v36;
  v40 = swift_getOpaqueTypeMetadata2();
  *&v336 = v38;
  *(&v336 + 1) = v37;
  v41 = v37;
  v337 = v39;
  v338 = v36;
  v301 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v336 = v40;
  *(&v336 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeMetadata2();
  v44 = sub_1A52497A4();
  *&v336 = v40;
  *(&v336 + 1) = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  *&v336 = v43;
  *(&v336 + 1) = v44;
  v337 = v45;
  v338 = v46;
  swift_getOpaqueTypeMetadata2();
  v47 = sub_1A5249754();
  *&v336 = v43;
  *(&v336 + 1) = v44;
  v337 = v45;
  v338 = v46;
  v348 = swift_getOpaqueTypeConformance2();
  v349 = v45;
  v322 = MEMORY[0x1E697F968];
  v48 = swift_getWitnessTable();
  *&v336 = v47;
  *(&v336 + 1) = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  *&v336 = v47;
  *(&v336 + 1) = v48;
  v50 = swift_getOpaqueTypeConformance2();
  *&v336 = v41;
  *(&v336 + 1) = v49;
  v337 = v36;
  v338 = v50;
  type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v336);
  v51 = sub_1A5249754();
  v52 = swift_getWitnessTable();
  v53 = sub_1A3F18B84();
  v346 = v52;
  v347 = v53;
  v54 = swift_getWitnessTable();
  *&v336 = v51;
  *(&v336 + 1) = v54;
  v55 = v51;
  v290 = v51;
  v291 = v54;
  v56 = v54;
  v57 = swift_getOpaqueTypeMetadata2();
  v300 = v57;
  v58 = sub_1A5248804();
  *&v336 = v55;
  *(&v336 + 1) = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v344 = v59;
  v345 = v323;
  v288 = swift_getWitnessTable();
  *&v336 = v57;
  *(&v336 + 1) = v58;
  v337 = v59;
  v338 = v288;
  swift_getOpaqueTypeMetadata2();
  v60 = MEMORY[0x1E6980A08];
  v294 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v287 = sub_1A5248804();
  v61 = v318;
  v62 = swift_getWitnessTable();
  v63 = v292;
  v64 = swift_getAssociatedConformanceWitness();
  v289 = v64;
  *&v336 = v300;
  *(&v336 + 1) = v58;
  v337 = v59;
  v338 = v288;
  v65 = swift_getOpaqueTypeConformance2();
  v302 = MEMORY[0x1E6980A18];
  v66 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v60, MEMORY[0x1E6980A18]);
  v342 = v65;
  v343 = v66;
  v67 = v287;
  v68 = swift_getWitnessTable();
  *&v336 = v61;
  *(&v336 + 1) = v63;
  v337 = v63;
  v338 = v67;
  v69 = v63;
  v339 = v62;
  v340 = v64;
  v341 = v68;
  sub_1A5243E24();
  v70 = swift_getAssociatedTypeWitness();
  v300 = swift_getAssociatedConformanceWitness();
  v301 = v70;
  *&v336 = v70;
  *(&v336 + 1) = v320;
  v337 = v300;
  v338 = v293;
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier(255, &v336);
  v71 = sub_1A5248804();
  v72 = sub_1A5248804();
  v73 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v335[28] = v73;
  v335[29] = v74;
  v320 = v71;
  v75 = swift_getWitnessTable();
  v76 = v323;
  v335[26] = v75;
  v335[27] = v323;
  v293 = v72;
  v288 = swift_getWitnessTable();
  *&v336 = v71;
  *(&v336 + 1) = v72;
  v337 = v75;
  v338 = v288;
  v287 = swift_getOpaqueTypeMetadata2();
  *&v336 = v318;
  *(&v336 + 1) = v69;
  v337 = v69;
  v338 = v290;
  v339 = v62;
  v340 = v289;
  v341 = v291;
  v77 = sub_1A52420C4();
  v78 = sub_1A5248804();
  v79 = swift_getWitnessTable();
  v335[24] = v79;
  v335[25] = v76;
  v80 = swift_getWitnessTable();
  *&v336 = v77;
  *(&v336 + 1) = v78;
  v337 = v79;
  v338 = v80;
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  *&v336 = v320;
  *(&v336 + 1) = v293;
  v337 = v75;
  v338 = v288;
  v81 = swift_getOpaqueTypeConformance2();
  *&v336 = v77;
  *(&v336 + 1) = v78;
  v337 = v79;
  v338 = v80;
  v82 = swift_getOpaqueTypeConformance2();
  v335[22] = v81;
  v335[23] = v82;
  swift_getWitnessTable();
  sub_1A524B784();
  v83 = sub_1A5248804();
  v335[20] = swift_getWitnessTable();
  v335[21] = MEMORY[0x1E697E5D8];
  v84 = swift_getWitnessTable();
  *&v336 = v83;
  *(&v336 + 1) = v84;
  v85 = swift_getOpaqueTypeMetadata2();
  sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, v324);
  v87 = v86;
  *&v336 = v83;
  *(&v336 + 1) = v84;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = sub_1A3F1B1BC();
  *&v336 = v85;
  *(&v336 + 1) = v87;
  v337 = v88;
  v338 = v89;
  swift_getOpaqueTypeMetadata2();
  v90 = sub_1A5249754();
  *&v336 = v299;
  *(&v336 + 1) = v303;
  v337 = v298;
  v338 = v297;
  v91 = swift_getOpaqueTypeConformance2();
  *&v336 = v85;
  *(&v336 + 1) = v87;
  v337 = v88;
  v338 = v89;
  v92 = swift_getOpaqueTypeConformance2();
  v335[18] = v91;
  v335[19] = v92;
  v93 = swift_getWitnessTable();
  v268 = v90;
  v265 = v93;
  v94 = sub_1A524B8B4();
  v266 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v264 = v252 - v95;
  v97 = type metadata accessor for LemonadeShelfBody.ContentBackground(255, v333, v331, v96);
  v98 = sub_1A5248804();
  v273 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v270 = v252 - v99;
  v267 = v94;
  v100 = swift_getWitnessTable();
  v262 = v97;
  v101 = swift_getWitnessTable();
  v261 = v100;
  v335[16] = v100;
  v335[17] = v101;
  v102 = swift_getWitnessTable();
  *&v336 = v98;
  *(&v336 + 1) = v102;
  v103 = swift_getOpaqueTypeMetadata2();
  v272 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v269 = v252 - v104;
  v276 = v98;
  *&v336 = v98;
  *(&v336 + 1) = v102;
  v263 = v102;
  v320 = swift_getOpaqueTypeConformance2();
  *&v336 = v103;
  *(&v336 + 1) = v320;
  v319 = MEMORY[0x1E69C3110];
  v105 = swift_getOpaqueTypeMetadata2();
  v274 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v271 = v252 - v106;
  v299 = MEMORY[0x1E69C2948];
  sub_1A3EFDB80(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  v277 = v105;
  v107 = sub_1A5248804();
  v279 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v321 = v252 - v108;
  sub_1A3F1B2AC(255);
  v109 = sub_1A5248804();
  v282 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v322 = v252 - v110;
  sub_1A3F1C93C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v294);
  v111 = sub_1A5248804();
  v286 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v323 = v252 - v112;
  v113 = sub_1A5248804();
  v294 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v291 = v252 - v114;
  v115 = sub_1A5248804();
  v295 = *(v115 - 1);
  MEMORY[0x1EEE9AC00](v115);
  v292 = v252 - v116;
  v117 = sub_1A5248804();
  v318 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v303 = v252 - v118;
  v297 = sub_1A5249A34();
  v119 = sub_1A5248804();
  v275 = v103;
  *&v336 = v103;
  *(&v336 + 1) = v320;
  v120 = swift_getOpaqueTypeConformance2();
  v121 = sub_1A3F1B31C(&qword_1EB1279C8, &qword_1EB1279C0, v299);
  v259 = v120;
  v335[14] = v120;
  v335[15] = v121;
  v280 = v107;
  v122 = swift_getWitnessTable();
  v123 = sub_1A3F1D360(&qword_1EB1279E8, sub_1A3F1B2AC, v302);
  v260 = v122;
  v335[12] = v122;
  v335[13] = v123;
  v283 = v109;
  v124 = swift_getWitnessTable();
  v125 = v330;
  v126 = sub_1A3F1B380(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  v278 = v124;
  v335[10] = v124;
  v335[11] = v126;
  v287 = v111;
  v281 = swift_getWitnessTable();
  v335[8] = v281;
  v335[9] = v126;
  v298 = v113;
  v127 = swift_getWitnessTable();
  v128 = MEMORY[0x1E697E040];
  v284 = v127;
  v335[6] = v127;
  v335[7] = MEMORY[0x1E697E040];
  v299 = v115;
  v285 = swift_getWitnessTable();
  v335[4] = v285;
  v335[5] = v128;
  v129 = swift_getWitnessTable();
  v335[2] = swift_getWitnessTable();
  v335[3] = MEMORY[0x1E697E5C0];
  v130 = swift_getWitnessTable();
  v319 = v117;
  *&v336 = v117;
  *(&v336 + 1) = v119;
  v302 = v119;
  v297 = v129;
  v337 = v129;
  v338 = v130;
  v290 = v130;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v293 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v288 = v252 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v132);
  v289 = v252 - v133;
  v134 = sub_1A5246E54();
  v332 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v258 = v252 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v329;
  v137 = *(v329 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v140 = v252 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v141);
  v143 = v252 - v142;
  sub_1A3EFDB80(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], v324);
  MEMORY[0x1EEE9AC00](v144 - 8);
  v146 = v252 - v145;
  v256 = swift_getWitnessTable();
  MEMORY[0x1A5905890](v136);
  v147 = sub_1A5246E94();
  v257 = *(v147 - 1);
  v148 = *(v257 + 48);
  v324 = v147;
  if (v148(v146, 1) == 1)
  {
    sub_1A3F1B5F4(v146, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720], sub_1A3EFDB80);
    v149 = v125;
  }

  else
  {
    v255 = v134;
    v150 = *(v137 + 16);
    v150(v143, v125, v136);
    v150(v140, v125, v136);
    v151 = v258;
    sub_1A5246E44();
    v152 = sub_1A5246E84();
    v153 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v154 = swift_slowAlloc();
      v253 = v152;
      v155 = v154;
      v254 = swift_slowAlloc();
      *&v336 = v254;
      *v155 = 136446466;
      sub_1A3C41990(v333, v331);
      v156 = *(v137 + 8);
      v252[3] = v153;
      v156(v143, v136);
      sub_1A3C66768();
      v157 = sub_1A524EA44();
      sub_1A3C2EF94(v157, v158, &v336);
    }

    v159 = *(v137 + 8);
    v159(v143, v136);

    (*(v332 + 8))(v151, v255);
    v159(v140, v136);
    (*(v257 + 8))(v146, v324);
    v149 = v330;
  }

  v160 = v333;
  v161 = v331;
  v162 = sub_1A3F090AC(v149, v333, v331);
  LODWORD(v332) = v162;
  MEMORY[0x1EEE9AC00](v162);
  *&v252[-8] = v160;
  *&v252[-6] = v161;
  *&v252[-4] = v149;
  sub_1A524BC74();
  v163 = v264;
  sub_1A524B8A4();
  v164 = v329;
  LOBYTE(v336) = *(v149 + *(v329 + 36));
  v165 = v270;
  v166 = v267;
  MEMORY[0x1A5906490](&v336, v267, v262, v261);
  (*(v266 + 8))(v163, v166);
  v335[0] = 0xD000000000000011;
  v335[1] = 0x80000001A5307050;
  sub_1A524E384();
  v324 = *(v149 + *(v164 + 52));
  v167 = v304;
  sub_1A5243154();
  v168 = sub_1A5242394();
  (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
  v169 = v269;
  v170 = v276;
  sub_1A524A614();
  sub_1A3F1B5F4(v167, &qword_1EB1292C0, MEMORY[0x1E69C1DE0], MEMORY[0x1E69E6720], sub_1A3EFDB80);
  sub_1A3D5FAFC(&v336);
  (*(v273 + 8))(v165, v170);
  v171 = *(v149 + *(v164 + 48));
  v173 = v306;
  v172 = v307;
  v174 = v333;
  (*(v307 + 16))(v306, v149, v333);
  v175 = (*(v172 + 80) + 40) & ~*(v172 + 80);
  v176 = (v305 + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
  v177 = swift_allocObject();
  v178 = v331;
  v177[2] = v174;
  v177[3] = v178;
  v177[4] = v171;
  v179 = v177 + v175;
  v180 = v330;
  (*(v172 + 32))(v179, v173, v174);
  *(v177 + v176) = v324;

  v181 = v271;
  v182 = v275;
  sub_1A524A6C4();

  (*(v272 + 8))(v169, v182);
  swift_getKeyPath();
  v183 = v308;
  sub_1A3F06368(v164, v308);
  v184 = v309;
  sub_1A5243F94();
  v185 = *(v310 + 8);
  v186 = v183;
  v187 = v311;
  v185(v186, v311);
  v188 = v277;
  sub_1A524A964();

  v185(v184, v187);
  v189 = v181;
  v190 = v329;
  (*(v274 + 8))(v189, v188);
  swift_getKeyPath();
  v336 = *(v180 + *(v190 + 120));
  v191 = sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  v192 = v335[0];
  v193 = v314;
  if (v335[0])
  {
    v338 = v191;
    v194 = swift_getWitnessTable();
  }

  else
  {
    v194 = 0;
    *(&v336 + 1) = 0;
    v337 = 0;
    v338 = 0;
  }

  v195 = v291;
  *&v336 = v192;
  v339 = v194;
  v196 = v280;
  v197 = v321;
  sub_1A524A964();

  (*(v279 + 8))(v197, v196);
  sub_1A3C2C598(&v336, &qword_1EB129078, &qword_1EB129080, MEMORY[0x1E69C2558], sub_1A3E792C4);
  swift_getKeyPath();
  sub_1A3F16188(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v325);
  v198 = v312;
  sub_1A3F05278(v190, v312);
  sub_1A3F1B45C(v198, v326, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v198, type metadata accessor for LemonadeShelfBodyStyle);
  v199 = v180 + *(v190 + 68);
  v200 = *v199;
  if (*(v199 + 8) == 1)
  {
    LOBYTE(v336) = *v199;
  }

  else
  {

    v201 = sub_1A524D254();
    v202 = sub_1A524A014();
    sub_1A5246DF4(v201, &dword_1A3C1C000, v202, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v180 = v330;
    v203 = v316;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v200, 0);
    (*(v317 + 8))(v203, v193);
    LOBYTE(v200) = v336;
  }

  LOBYTE(v335[0]) = v200;
  v204 = v326;
  v205 = v325;
  v206 = sub_1A43A27C4(v326, v335);
  sub_1A3F1C4BC(v204, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v205, type metadata accessor for LemonadeItemsLayoutSpec);
  *&v336 = v206;
  v207 = v283;
  v208 = v322;
  sub_1A524A964();

  (*(v282 + 8))(v208, v207);
  swift_getKeyPath();
  sub_1A3F16188(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v327);
  v209 = v313;
  v210 = v329;
  sub_1A3F05278(v329, v313);
  sub_1A3F1B45C(v209, v328, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v209, type metadata accessor for LemonadeShelfBodyStyle);
  v211 = *v199;
  if (*(v199 + 8) == 1)
  {
    LOBYTE(v336) = *v199;
  }

  else
  {

    v212 = sub_1A524D254();
    v213 = sub_1A524A014();
    sub_1A5246DF4(v212, &dword_1A3C1C000, v213, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v180 = v330;
    v214 = v316;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v211, 0);
    (*(v317 + 8))(v214, v193);
    LOBYTE(v211) = v336;
  }

  v215 = v303;
  LOBYTE(v335[0]) = v211;
  v216 = v328;
  v217 = v327;
  sub_1A43A2984(v328, v335);
  v219 = v218;
  sub_1A3F1C4BC(v216, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v217, type metadata accessor for LemonadeItemsLayoutSpec);
  *&v336 = v219;
  v220 = v287;
  v221 = v323;
  sub_1A524A964();

  (*(v286 + 8))(v221, v220);
  v222 = v180 + *(v210 + 96);
  v223 = *v222;
  v224 = *(v222 + 8);
  if (*(v222 + 9) != 1)
  {

    v225 = sub_1A524D254();
    v226 = sub_1A524A014();
    sub_1A5246DF4(v225, &dword_1A3C1C000, v226, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v180 = v330;
    v227 = v316;
    sub_1A5249224();
    swift_getAtKeyPath();
    v228 = sub_1A3F1B4C4(v223, v224, 0);
    (*(v317 + 8))(v227, v193, v228);
  }

  sub_1A524BC74();
  v229 = v292;
  v230 = v298;
  sub_1A524AFD4();
  v294[1](v195, v230);
  sub_1A524BC74();
  v231 = v332;
  v232 = v332 & 1;
  v233 = v299;
  sub_1A524AFD4();
  (*(v295 + 8))(v229, v233);
  if (v231)
  {
    v234 = &selRef_oneShelfExpandingOpacityAnimationType;
    v235 = &selRef_oneShelfExpandingOpacityAnimationDuration;
    v236 = &selRef_oneShelfExpandingOpacityAnimationDelay;
  }

  else
  {
    v237 = v180 + *(v210 + 116);
    v238 = *v237;
    if (*(v237 + 8) == 1)
    {
      LOBYTE(v336) = v238 & 1;
    }

    else
    {

      v239 = sub_1A524D254();
      v240 = sub_1A524A014();
      sub_1A5246DF4(v239, &dword_1A3C1C000, v240, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v241 = v316;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v238, 0);
      (*(v317 + 8))(v241, v193);
      LOBYTE(v238) = v336;
    }

    LOBYTE(v335[0]) = v238 & 1;
    v334 = 1;
    if (static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(v335, &v334))
    {
      v234 = &selRef_allShelvesCollapsingOpacityAnimationType;
      v235 = &selRef_allShelvesCollapsingOpacityAnimationDuration;
      v236 = &selRef_allShelvesCollapsingOpacityAnimationDelay;
    }

    else
    {
      v234 = &selRef_oneShelfCollapsingOpacityAnimationType;
      v235 = &selRef_oneShelfCollapsingOpacityAnimationDuration;
      v236 = &selRef_oneShelfCollapsingOpacityAnimationDelay;
    }
  }

  v242 = sub_1A3EFDE54(v234, v235, v236);
  MEMORY[0x1EEE9AC00](v242);
  v243 = v331;
  *&v252[-8] = v333;
  *&v252[-6] = v243;
  LOBYTE(v252[-4]) = v232;
  swift_checkMetadataState();
  v244 = v288;
  v245 = v319;
  sub_1A524B184();

  (*(v318 + 8))(v215, v245);
  v246 = v293;
  v247 = *(v293 + 16);
  v248 = v289;
  v249 = OpaqueTypeMetadata2;
  v247(v289, v244, OpaqueTypeMetadata2);
  v250 = *(v246 + 8);
  v250(v244, v249);
  v247(v315, v248, v249);
  return (v250)(v248, v249);
}

uint64_t sub_1A3F090AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LemonadeShelfBody(0, a2, a3, v10);
  v12 = (a1 + *(v11 + 108));
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    v16 = sub_1A524D254();
    v17 = sub_1A524A014();
    sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    v15 = (*(v7 + 8))(v9, v6);
    v13 = v27;
  }

  v18 = (*(*v13 + 136))(v15);

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v20 = a1 + *(v11 + 116);
    v21 = *v20;
    if (*(v20 + 8) == 1)
    {
      v26 = v21 & 1;
    }

    else
    {

      v22 = sub_1A524D254();
      v23 = sub_1A524A014();
      sub_1A5246DF4(v22, &dword_1A3C1C000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v21, 0);
      (*(v7 + 8))(v9, v6);
      LOBYTE(v21) = v26;
    }

    v25[6] = v21 & 1;
    v25[5] = 1;
    sub_1A3F1D008();
    v19 = sub_1A524C594() ^ 1;
  }

  return v19 & 1;
}

uint64_t sub_1A3F0933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v202 = a1;
  v210 = a4;
  v208 = type metadata accessor for LemonadeShelfBody(0, a2, a3, a5);
  v201 = *(v208 - 8);
  v200 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v213 = &v172[-v7];
  v214 = a3;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v211 = *(AssociatedConformanceWitness + 16);
  v223 = swift_getAssociatedTypeWitness();
  v221 = sub_1A524CB74();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v241 = v9;
  v242 = a2;
  v11 = a2;
  v243 = v10;
  v244 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v241 = v9;
  v242 = v11;
  v13 = v11;
  v224 = v11;
  v243 = v10;
  v244 = v8;
  v219 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v241 = OpaqueTypeMetadata2;
  v242 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = sub_1A52497A4();
  v241 = OpaqueTypeMetadata2;
  v242 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  v241 = v15;
  v242 = v16;
  v243 = v17;
  v244 = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = sub_1A5249754();
  v241 = v15;
  v242 = v16;
  v243 = v17;
  v244 = v18;
  v254 = swift_getOpaqueTypeConformance2();
  v255 = v17;
  v212 = MEMORY[0x1E697F968];
  WitnessTable = swift_getWitnessTable();
  v241 = v19;
  v242 = WitnessTable;
  v21 = swift_getOpaqueTypeMetadata2();
  v241 = v19;
  v242 = WitnessTable;
  v22 = swift_getOpaqueTypeConformance2();
  v241 = v13;
  v242 = v21;
  v243 = v8;
  v244 = v22;
  type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v241);
  v23 = sub_1A5249754();
  v24 = swift_getWitnessTable();
  v25 = sub_1A3F18B84();
  v252 = v24;
  v253 = v25;
  v26 = swift_getWitnessTable();
  v241 = v23;
  v242 = v26;
  v207 = v23;
  v27 = v26;
  v209 = v26;
  v28 = swift_getOpaqueTypeMetadata2();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v217 = v29;
  v30 = v28;
  v206 = v28;
  v31 = sub_1A5248804();
  v241 = v23;
  v242 = v27;
  v32 = swift_getOpaqueTypeConformance2();
  v218 = sub_1A3F1B0E0();
  v250 = v32;
  v251 = v218;
  v215 = MEMORY[0x1E697E858];
  v33 = swift_getWitnessTable();
  v241 = v30;
  v242 = v31;
  v243 = v32;
  v244 = v33;
  v216 = MEMORY[0x1E69C3078];
  swift_getOpaqueTypeMetadata2();
  v34 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v35 = sub_1A5248804();
  v36 = v221;
  v37 = swift_getWitnessTable();
  v38 = v223;
  v39 = swift_getAssociatedConformanceWitness();
  v211 = v39;
  v241 = v206;
  v242 = v31;
  v243 = v32;
  v244 = v33;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v34, MEMORY[0x1E6980A18]);
  v248 = v40;
  v249 = v41;
  v42 = swift_getWitnessTable();
  v241 = v36;
  v242 = v38;
  v243 = v38;
  v244 = v35;
  v245 = v37;
  v246 = v39;
  v247 = v42;
  sub_1A5243E24();
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedConformanceWitness();
  v241 = v43;
  v242 = AssociatedTypeWitness;
  v243 = v44;
  v244 = AssociatedConformanceWitness;
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier(255, &v241);
  v45 = sub_1A5248804();
  v46 = sub_1A5248804();
  v47 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v239 = v47;
  v240 = v48;
  v49 = swift_getWitnessTable();
  v237 = v49;
  v50 = v218;
  v238 = v218;
  AssociatedTypeWitness = v46;
  v51 = swift_getWitnessTable();
  v241 = v45;
  v242 = v46;
  v243 = v49;
  v244 = v51;
  AssociatedConformanceWitness = swift_getOpaqueTypeMetadata2();
  v241 = v221;
  v242 = v223;
  v243 = v223;
  v244 = v207;
  v245 = v37;
  v246 = v211;
  v247 = v209;
  v52 = sub_1A52420C4();
  v53 = sub_1A5248804();
  v54 = swift_getWitnessTable();
  v235 = v54;
  v236 = v50;
  v55 = swift_getWitnessTable();
  v241 = v52;
  v242 = v53;
  v243 = v54;
  v244 = v55;
  swift_getOpaqueTypeMetadata2();
  v56 = sub_1A5249754();
  v241 = v45;
  v242 = AssociatedTypeWitness;
  v243 = v49;
  v244 = v51;
  v57 = swift_getOpaqueTypeConformance2();
  v241 = v52;
  v242 = v53;
  v243 = v54;
  v244 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v233 = v57;
  v234 = v58;
  v59 = swift_getWitnessTable();
  v190 = v56;
  v186 = v59;
  v60 = sub_1A524B784();
  v187 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v185 = &v172[-v61];
  v62 = sub_1A5248804();
  v191 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v189 = &v172[-v63];
  v188 = v60;
  v183 = swift_getWitnessTable();
  v231 = v183;
  v232 = MEMORY[0x1E697E5D8];
  v64 = swift_getWitnessTable();
  v241 = v62;
  v242 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  v198 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v212 = &v172[-v66];
  sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, MEMORY[0x1E69E6720]);
  v68 = v67;
  v192 = v62;
  v241 = v62;
  v242 = v64;
  v184 = v64;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_1A3F1B1BC();
  v209 = v65;
  v241 = v65;
  v242 = v68;
  AssociatedTypeWitness = v68;
  v221 = v69;
  v243 = v69;
  v244 = v70;
  AssociatedConformanceWitness = v70;
  v71 = swift_getOpaqueTypeMetadata2();
  v199 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v197 = &v172[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v73);
  v193 = &v172[-v74];
  MEMORY[0x1EEE9AC00](v75);
  v195 = &v172[-v76];
  v196 = sub_1A5243D54();
  v194 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v211 = &v172[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F1AFEC();
  v78 = swift_getAssociatedTypeWitness();
  v79 = sub_1A5248804();
  v80 = swift_getAssociatedConformanceWitness();
  v229 = v80;
  v81 = v218;
  v230 = v218;
  v82 = swift_getWitnessTable();
  v241 = v78;
  v242 = v79;
  v243 = v80;
  v244 = v82;
  swift_getOpaqueTypeMetadata2();
  v83 = v208;
  swift_getTupleTypeMetadata3();
  v84 = sub_1A524BE24();
  v85 = swift_getWitnessTable();
  v178 = v84;
  v177 = v85;
  v86 = sub_1A524B784();
  v180 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v179 = &v172[-v87];
  v88 = sub_1A5248804();
  v89 = swift_getWitnessTable();
  v227 = v89;
  v228 = v81;
  v90 = swift_getWitnessTable();
  v215 = v86;
  v241 = v86;
  v242 = v88;
  v217 = v88;
  v243 = v89;
  v244 = v90;
  v91 = swift_getOpaqueTypeMetadata2();
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v182 = &v172[-((v93 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v94);
  v181 = &v172[-v95];
  v203 = v96;
  v216 = v71;
  v207 = sub_1A5249754();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v204 = &v172[-v97];
  v98 = sub_1A5249234();
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v172[-((v100 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v218 = [swift_getObjCClassFromMetadata() sharedInstance];
  v102 = v202;
  v103 = *(v202 + v83[12]);
  v104 = sub_1A52427E4();
  if (!shouldUseNewCollectionsLayout()())
  {
    if (v104)
    {
      v205 = v92;
      v105 = v102 + v83[20];
      v107 = *v105;
      v106 = *(v105 + 8);
      v108 = *(v105 + 16);
      if (*(v105 + 32) != 1)
      {
        v176 = *(v105 + 24);
        v175 = v108;
        v174 = v106;

        v173 = sub_1A524D254();
        v109 = sub_1A524A014();
        sub_1A5246DF4(v173, &dword_1A3C1C000, v109, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3D35A84(v107, v174, v175, v176, 0);
        (*(v99 + 8))(v101, v98);
      }

      v92 = v205;
    }

    else
    {
      sub_1A5247BA4();
    }
  }

  v205 = v90;
  v219 = v89;
  v110 = sub_1A5243164();
  swift_checkMetadataState();
  if (sub_1A524CAF4() <= 0)
  {

    MEMORY[0x1EEE9AC00](v130);
    v131 = v224;
    v132 = v92;
    v133 = v214;
    *&v172[-32] = v224;
    *&v172[-24] = v133;
    v134 = v218;
    *&v172[-16] = v102;
    *&v172[-8] = v134;
    sub_1A5249314();
    v135 = v179;
    sub_1A524B774();
    v136 = [v134 enableShelfDrawBorders];
    MEMORY[0x1EEE9AC00](v136);
    *&v172[-16] = v131;
    *&v172[-8] = v133;
    v137 = swift_checkMetadataState();
    v138 = v182;
    v139 = v215;
    v140 = v219;
    v141 = v205;
    sub_1A524A584();
    (*(v180 + 8))(v135, v139);
    v241 = v139;
    v242 = v137;
    v243 = v140;
    v244 = v141;
    v224 = swift_getOpaqueTypeConformance2();
    v142 = *(v132 + 16);
    v143 = v181;
    v144 = v203;
    v142(v181, v138, v203);
    v145 = *(v132 + 8);
    v145(v138, v144);
    v142(v138, v143, v144);
    v146 = v209;
    v241 = v209;
    v242 = AssociatedTypeWitness;
    v243 = v221;
    v244 = AssociatedConformanceWitness;
    v147 = swift_getOpaqueTypeConformance2();
    v148 = v204;
    sub_1A3DF4798(v138, v144, v216, v224, v147);

    v149 = v138;
    v150 = v217;
    v151 = v139;
    v145(v149, v144);
    v145(v143, v144);
  }

  else
  {
    v111 = v211;
    sub_1A3F05D30(v83, v211);
    v112 = sub_1A3F05654(v83);
    MEMORY[0x1EEE9AC00](v112);
    v113 = v214;
    *&v172[-64] = v224;
    *&v172[-56] = v113;
    *&v172[-48] = v102;
    *&v172[-40] = v111;
    *&v172[-32] = v114;
    *&v172[-24] = v110;
    v115 = v218;
    *&v172[-16] = v103;
    *&v172[-8] = v115;
    sub_1A5249314();
    v116 = v185;
    sub_1A524B774();

    v117 = v189;
    v118 = v188;
    sub_1A524B0C4();
    (*(v187 + 8))(v116, v118);
    v119 = v201;
    v120 = v213;
    v190 = *(v201 + 16);
    v190(v213, v102, v83);
    v121 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v200 += v121;
    v122 = swift_allocObject();
    *(v122 + 16) = v224;
    *(v122 + 24) = v113;
    v123 = *(v119 + 32);
    v223 = v121;
    v123(v122 + v121, v120, v83);
    v124 = v192;
    sub_1A524A4D4();

    (*(v191 + 8))(v117, v124);
    sub_1A3F1B4DC(v102 + v83[14], &v241, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);
    v125 = v244;
    if (v244)
    {
      v126 = v245;
      __swift_project_boxed_opaque_existential_1(&v241, v244);
      v127 = (*(v126 + 32))(v125, v126);
      v128 = v127;
      v129 = HIDWORD(v127) & 1;
      __swift_destroy_boxed_opaque_existential_0(&v241);
    }

    else
    {
      sub_1A3C2C598(&v241, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
      v128 = 0;
      LOBYTE(v129) = 1;
    }

    LODWORD(v241) = v128;
    BYTE4(v241) = v129;
    v152 = v213;
    v190(v213, v102, v83);
    v153 = swift_allocObject();
    v154 = v214;
    *(v153 + 16) = v224;
    *(v153 + 24) = v154;
    v123(v153 + v223, v152, v83);
    v155 = swift_checkMetadataState();
    v156 = v193;
    v146 = v209;
    v157 = v221;
    v158 = AssociatedConformanceWitness;
    v159 = v212;
    sub_1A524B144();

    (*(v198 + 8))(v159, v146);
    v241 = v146;
    v242 = v155;
    v243 = v157;
    v244 = v158;
    v224 = swift_getOpaqueTypeConformance2();
    v160 = v199;
    v161 = *(v199 + 16);
    v162 = v195;
    v163 = v216;
    v161(v195, v156, v216);
    v164 = *(v160 + 8);
    v164(v156, v163);
    v165 = v197;
    v161(v197, v162, v163);
    v151 = v215;
    v150 = v217;
    v241 = v215;
    v242 = v217;
    v141 = v205;
    v243 = v219;
    v244 = v205;
    v166 = swift_getOpaqueTypeConformance2();
    v148 = v204;
    sub_1A3DF4890(v165, v203, v163, v166, v224);

    v164(v165, v163);
    v164(v162, v163);
    (*(v194 + 8))(v211, v196);
  }

  v241 = v151;
  v242 = v150;
  v243 = v219;
  v244 = v141;
  v167 = swift_getOpaqueTypeConformance2();
  v241 = v146;
  v242 = AssociatedTypeWitness;
  v243 = v221;
  v244 = AssociatedConformanceWitness;
  v168 = swift_getOpaqueTypeConformance2();
  v225 = v167;
  v226 = v168;
  v169 = v207;
  swift_getWitnessTable();
  v170 = v206;
  (*(v206 + 16))(v210, v148, v169);
  return (*(v170 + 8))(v148, v169);
}

uint64_t sub_1A3F0AF5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a2;
  v83 = a5;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v78 = &v61 - v10;
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v11 = sub_1A5248804();
  v79 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_1A3F1B0E0();
  v134 = AssociatedConformanceWitness;
  v135 = v13;
  WitnessTable = swift_getWitnessTable();
  v104 = AssociatedTypeWitness;
  v105 = v11;
  v72 = WitnessTable;
  v73 = v11;
  v77 = AssociatedConformanceWitness;
  v106 = AssociatedConformanceWitness;
  v107 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v87 = OpaqueTypeMetadata2;
  v88 = v16;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v86 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v61 - v19;
  v20 = sub_1A5249234();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a3;
  OpaqueTypeConformance2 = a4;
  v25 = type metadata accessor for LemonadeShelfBody(0, a3, a4, v24);
  v63 = v20;
  v64 = v25;
  v26 = *(v25 + 80);
  v76 = a1;
  v27 = a1 + v26;
  v28 = *v27;
  v29 = *(v27 + 8);
  v31 = *(v27 + 16);
  v30 = *(v27 + 24);
  v65 = *(v27 + 32);
  v61 = v23;
  v62 = v21;
  v75 = v30;
  v84 = v31;
  v70 = v28;
  v71 = v29;
  if (v65 == 1)
  {
    v130 = v28;
    v131 = v29;
    v132 = v31;
    v133 = v30;
  }

  else
  {
    v32 = v29;

    v33 = sub_1A524D254();
    v34 = sub_1A524A014();
    sub_1A5246DF4(v33, &dword_1A3C1C000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v28, v32, v84, v30, 0);
    (*(v21 + 8))(v23, v20);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v66 = v136;
  v67 = v138;
  v68 = v141;
  v69 = v140;
  v129 = 1;
  v127 = v137;
  v125 = v139;
  v35 = v78;
  v36 = v74;
  (*(v79 + 224))(*(v76 + *(v64 + 40)), v74);
  v37 = [v80 enableShelfDrawBorders];
  v38 = v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = OpaqueTypeConformance2;
  *(&v61 - 2) = v36;
  *(&v61 - 1) = v39;
  v40 = swift_checkMetadataState();
  v41 = v86;
  v42 = v77;
  v43 = v72;
  sub_1A524A584();
  (*(v82 + 1))(v38, AssociatedTypeWitness);
  v104 = AssociatedTypeWitness;
  v105 = v40;
  v106 = v42;
  v107 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v87;
  v45 = v88;
  v80 = *(v88 + 16);
  (v80)(v85, v41, v87);
  v46 = *(v45 + 8);
  v88 = v45 + 8;
  v82 = v46;
  v46(v41, v44);
  if (v65)
  {
    v120 = v70;
    v121 = v71;
    v122 = v84;
    v123 = v75;
  }

  else
  {
    v47 = v70;

    v48 = sub_1A524D254();
    v49 = sub_1A524A014();
    sub_1A5246DF4(v48, &dword_1A3C1C000, v49, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v50 = v61;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v47, v71, v84, v75, 0);
    (*(v62 + 8))(v50, v63);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v51 = v142;
  v52 = v144;
  v53 = v146;
  v54 = v147;
  v119 = 1;
  v117 = v143;
  v115 = v145;
  v104 = 0;
  LOBYTE(v105) = v129;
  *(&v105 + 1) = *v128;
  HIDWORD(v105) = *&v128[3];
  v106 = v66;
  LOBYTE(v107) = v127;
  *(&v107 + 1) = *v126;
  HIDWORD(v107) = *&v126[3];
  v108 = v67;
  v109 = v125;
  *&v110[3] = *&v124[3];
  *v110 = *v124;
  v111 = v69;
  v112 = v68;
  v113[0] = &v104;
  v55 = v85;
  v56 = v86;
  v57 = v87;
  (v80)(v86, v85, v87);
  v93 = 0;
  v94 = v119;
  *v95 = *v118;
  *&v95[3] = *&v118[3];
  v96 = v51;
  v97 = v117;
  *v98 = *v116;
  *&v98[3] = *&v116[3];
  v99 = v52;
  v100 = v115;
  *v101 = *v114;
  *&v101[3] = *&v114[3];
  v102 = v53;
  v103 = v54;
  v113[1] = v56;
  v113[2] = &v93;
  sub_1A3F1AFEC();
  v92[0] = v58;
  v92[1] = v57;
  v92[2] = v58;
  v89 = sub_1A3F1CF90();
  v90 = OpaqueTypeConformance2;
  v91 = v89;
  sub_1A3DF4988(v113, 3uLL, v92);
  v59 = v82;
  v82(v55, v57);
  return v59(v56, v57);
}

uint64_t sub_1A3F0B748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v175 = a8;
  v149 = a6;
  v159 = a4;
  v164 = a3;
  v158 = a2;
  v173 = a1;
  v151 = a9;
  v160 = a5;
  v11 = (*a5 + *MEMORY[0x1E69C1FC8]);
  v12 = *v11;
  v176 = sub_1A524CB74();
  v13 = *(a8 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v187 = swift_getOpaqueTypeConformance2();
  v188 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v178 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = a7;
  v172 = a7;
  v180 = v13;
  v181 = swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v178);
  v16 = sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  v174 = v11[1];
  v17 = swift_getWitnessTable();
  v18 = sub_1A3F18B84();
  v185 = v17;
  v186 = v18;
  v19 = swift_getWitnessTable();
  v178 = v176;
  OpaqueTypeMetadata2 = v12;
  v169 = v12;
  v180 = v12;
  v181 = v16;
  v182 = WitnessTable;
  v183 = v174;
  v184 = v19;
  v20 = sub_1A52420C4();
  v138 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v137 = v124 - v21;
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v167 = v22;
  v23 = sub_1A5248804();
  v24 = swift_getWitnessTable();
  v25 = sub_1A3F1B0E0();
  v177[9] = v24;
  v177[10] = v25;
  v26 = v25;
  v168 = v25;
  v27 = swift_getWitnessTable();
  v150 = v20;
  v178 = v20;
  OpaqueTypeMetadata2 = v23;
  v163 = v23;
  v162 = v24;
  v180 = v24;
  v181 = v27;
  v161 = v27;
  v165 = MEMORY[0x1E69C3078];
  v171 = swift_getOpaqueTypeMetadata2();
  v135 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v134 = v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v133 = v124 - v30;
  v156 = sub_1A5242C84();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v131 = v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v154 = v124 - v33;
  v153 = type metadata accessor for LemonadeShelfBody(0, v15, v175, v34);
  v157 = *(v153 - 1);
  v145 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v147 = v124 - v35;
  sub_1A3EFDB80(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v140 = v124 - v37;
  v38 = sub_1A5244094();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v139 = v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1A5243D54();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v166 = v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v16;
  OpaqueTypeMetadata2 = v19;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = sub_1A5248804();
  v136 = v16;
  v178 = v16;
  OpaqueTypeMetadata2 = v19;
  v132 = v19;
  v43 = swift_getOpaqueTypeConformance2();
  v177[7] = v43;
  v177[8] = v26;
  v44 = swift_getWitnessTable();
  v178 = v41;
  OpaqueTypeMetadata2 = v42;
  v180 = v43;
  v181 = v44;
  swift_getOpaqueTypeMetadata2();
  v45 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v46 = sub_1A5248804();
  v178 = v41;
  OpaqueTypeMetadata2 = v42;
  v180 = v43;
  v181 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v45, MEMORY[0x1E6980A18]);
  v177[5] = v47;
  v177[6] = v48;
  v49 = swift_getWitnessTable();
  v178 = v176;
  OpaqueTypeMetadata2 = v169;
  v180 = v169;
  v181 = v46;
  v124[10] = v46;
  v182 = WitnessTable;
  v183 = v174;
  v124[5] = v49;
  v184 = v49;
  v50 = sub_1A5243E24();
  v124[11] = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v124[9] = v124 - v51;
  v52 = v172;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v124[12] = v13;
  v56 = swift_getAssociatedConformanceWitness();
  v178 = AssociatedTypeWitness;
  OpaqueTypeMetadata2 = v54;
  v180 = AssociatedConformanceWitness;
  v181 = v56;
  v57 = type metadata accessor for LemonadeShelfItemLoadingStatusModifier(255, &v178);
  v58 = sub_1A5248804();
  v124[8] = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v124[7] = v124 - v59;
  v60 = sub_1A5248804();
  v61 = swift_getWitnessTable();
  v124[2] = v57;
  v62 = swift_getWitnessTable();
  v124[1] = v61;
  v177[3] = v61;
  v177[4] = v62;
  v63 = swift_getWitnessTable();
  v177[1] = v63;
  v177[2] = v168;
  v64 = swift_getWitnessTable();
  v169 = v58;
  v178 = v58;
  OpaqueTypeMetadata2 = v60;
  v168 = v60;
  v148 = v63;
  v180 = v63;
  v181 = v64;
  v167 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  v124[6] = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v124[4] = v124 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v124[3] = v124 - v68;
  v125 = swift_getAssociatedTypeWitness();
  v130 = sub_1A524DF24();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  KeyPath = v124 - v69;
  v128 = sub_1A5249234();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = v124 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v71);
  v73 = v124 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v74);
  v124[0] = v124 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v78 = v124 - v77;
  v146 = v65;
  v144 = sub_1A5249754();
  v143 = *(v144 - 8);
  v79 = MEMORY[0x1EEE9AC00](v144);
  v165 = v124 - v80;
  v174 = (*(v175 + 304))(v52, v79);
  v81 = v153;
  sub_1A3F05278(v153, v78);
  sub_1A3F1B45C(v78, v73, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v78, type metadata accessor for LemonadeShelfBodyStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v83 = *v73;
  v84 = *(v73 + 1);
  v85 = v73[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3D6D890(*v73, *(v73 + 1), v73[16]);
    sub_1A3C4208C(*(v73 + 3), *(v73 + 4), v73[40]);
    sub_1A3C47A98(0);
    v87 = v155;
    v88 = v154;
    v89 = v156;
    v90 = (*(v155 + 32))(v154, &v73[*(v86 + 64)], v156);
    v177[0] = v159;
    MEMORY[0x1EEE9AC00](v90);
    KeyPath = swift_getKeyPath();
    (*(v141 + 16))(v166, v158, v142);
    (*(v87 + 16))(v131, v88, v89);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v154 = v74;
  v155 = v50;
  v156 = *(v73 + 3);
  LODWORD(v136) = v73[32];
  v91 = *(v73 + 5);
  v92 = *(v73 + 6);
  v93 = *(v73 + 7);
  v94 = *(v73 + 8);
  v95 = *(v73 + 9);
  v96 = *(v73 + 10);
  LODWORD(v138) = v73[89];
  sub_1A3C4208C(v95, v96, v73[88]);
  sub_1A3F1BD68(v93, v94);
  sub_1A3F1BD68(v91, v92);
  sub_1A3D6D890(v83, v84, v85);
  v97 = v173;
  v98 = v173 + v81[24];
  v99 = *(v98 + 8);
  if (*(v98 + 9) != 1)
  {
    v100 = *v98;

    v101 = sub_1A524D254();
    v102 = sub_1A524A014();
    sub_1A5246DF4(v101, &dword_1A3C1C000, v102, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v103 = v126;
    sub_1A5249224();
    swift_getAtKeyPath();
    v104 = sub_1A3F1B4C4(v100, v99, 0);
    (*(v127 + 8))(v103, v128, v104);
    LODWORD(v99) = OpaqueTypeMetadata2;
  }

  v105 = v175;
  v106 = v172;
  v107 = v156;
  if ((v99 & 1) == 0)
  {
    v107 = 0;
  }

  v137 = v107;
  v108 = KeyPath;
  v156 = *(v97 + v81[13]);
  sub_1A52431B4();
  (*(*(v125 - 8) + 56))(v108, 0, 1);
  v109 = v97 + v81[17];
  v110 = *v109;
  if (*(v109 + 8) == 1)
  {
    LOBYTE(v178) = *v109;
  }

  else
  {

    v111 = sub_1A524D254();
    v112 = sub_1A524A014();
    sub_1A5246DF4(v111, &dword_1A3C1C000, v112, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v113 = v126;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v110, 0);
    (*(v127 + 8))(v113, v128);
    LOBYTE(v110) = v178;
  }

  v114 = v159;
  LOBYTE(v177[0]) = v110;
  v115 = KeyPath;
  v116 = (*(v105 + 280))(KeyPath, v177, *(v97 + v81[11]), v106, v105);
  (*(v129 + 8))(v115, v130);
  v117 = v158;
  result = sub_1A5243D24();
  v119 = result * v164;
  if ((result * v164) >> 64 != (result * v164) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v164 + 0x4000000000000000 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v120 = 2 * v164 * v116;
  if ((2 * v164 * v116) >> 64 != v120 >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v121 = __OFSUB__(v119, v120);
  v122 = v119 - v120;
  if (v121)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v121 = __OFADD__(v122, v116);
  v123 = v122 + v116;
  if (!v121)
  {
    LODWORD(v136) = v99 ^ 1 | v136;
    v159 = v123 & ~(v123 >> 63);
    v177[0] = v114;
    MEMORY[0x1EEE9AC00](result);
    v157 = v116;
    KeyPath = swift_getKeyPath();
    (*(v141 + 16))(v166, v117, v142);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A3F0D76C(uint64_t a1)
{
  v3 = sub_1A5249234();
  v14[0] = *(v3 - 8);
  v14[1] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = v1;
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v11);
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v7);
  v12 = sub_1A41875F0(sub_1A3F1CEB4, v15, v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_1A43A223C();
  }

  return 0;
}

uint64_t sub_1A3F0DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LemonadeShelfBody(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return v13;
}

double sub_1A3F0DC00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  sub_1A52431B4();
  v9 = (*(v4 + 232))(a1, v8, v3, v4);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_1A3F0DD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v103 = a7;
  v98 = a3;
  v99 = a5;
  v97 = a4;
  v93 = a1;
  v101 = a8;
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v96 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1A5249234();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1A5242D14();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v102 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v113 = AssociatedTypeWitness;
  v114 = a6;
  v115 = AssociatedConformanceWitness;
  v116 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v113 = AssociatedTypeWitness;
  v114 = a6;
  v115 = AssociatedConformanceWitness;
  v116 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = OpaqueTypeMetadata2;
  v114 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = sub_1A52497A4();
  v113 = OpaqueTypeMetadata2;
  v114 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  v113 = v20;
  v114 = v21;
  v115 = v22;
  v116 = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = sub_1A5249754();
  v113 = v20;
  v114 = v21;
  v115 = v22;
  v116 = v23;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v22;
  WitnessTable = swift_getWitnessTable();
  v113 = v24;
  v114 = WitnessTable;
  v26 = swift_getOpaqueTypeMetadata2();
  v113 = v24;
  v114 = WitnessTable;
  v27 = swift_getOpaqueTypeConformance2();
  v113 = a6;
  v114 = v26;
  v115 = v15;
  v116 = v27;
  type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v113);
  v28 = sub_1A5249754();
  v92 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - v29;
  v31 = swift_getWitnessTable();
  v32 = sub_1A3F18B84();
  v109 = v31;
  v110 = v32;
  v33 = swift_getWitnessTable();
  v113 = v28;
  v114 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v90 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v76 - v35;
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v37 = sub_1A5248804();
  v113 = v28;
  v114 = v33;
  v84 = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_1A3F1B0E0();
  v107 = v38;
  v108 = v39;
  v40 = swift_getWitnessTable();
  v81 = v34;
  v113 = v34;
  v114 = v37;
  v89 = v38;
  v115 = v38;
  v116 = v40;
  v80 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v86 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v76 - v42;
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v87 = v41;
  v82 = sub_1A5248804();
  v88 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v76 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v85 = &v76 - v46;
  v100 = a6;
  v48 = type metadata accessor for LemonadeShelfBody(0, a6, v103, v47);
  v91 = v30;
  sub_1A3F0E964(v93, v48, v30);
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v102);
  v49 = a2;
  v50 = a2 + v48[17];
  v51 = *v50;
  if (*(v50 + 8) == 1)
  {
    LOBYTE(v113) = *v50;
  }

  else
  {

    v52 = sub_1A524D254();
    v53 = sub_1A524A014();
    sub_1A5246DF4(v52, &dword_1A3C1C000, v53, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v54 = v76;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v51, 0);
    (*(v77 + 8))(v54, v78);
    LOBYTE(v51) = v113;
  }

  v106 = v51;
  v79 = v49;
  v55 = v96;
  sub_1A3F16188(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v96);
  v56 = v102;
  v57 = v91;
  sub_1A43A3C04(v98, v97 & 1, v102, &v106, v28, v84, v36);
  sub_1A3F1C4BC(v55, sub_1A3DC7D88);
  (*(v94 + 8))(v56, v95);
  (*(v92 + 8))(v57, v28);
  v58 = [v99 enableShelfDrawBorders];
  MEMORY[0x1EEE9AC00](v58);
  v59 = v103;
  *(&v76 - 2) = v100;
  *(&v76 - 1) = v59;
  v60 = swift_checkMetadataState();
  v61 = v43;
  v62 = v81;
  v63 = v89;
  v64 = v80;
  sub_1A524A584();
  (*(v90 + 8))(v36, v62);
  swift_getKeyPath();
  v106 = sub_1A3F0F1C4(v48, v65);
  v113 = v62;
  v114 = v60;
  v115 = v63;
  v116 = v64;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v83;
  v68 = v87;
  sub_1A524A964();

  (*(v86 + 8))(v61, v68);
  v69 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E6980A08], MEMORY[0x1E6980A18]);
  v104 = v66;
  v105 = v69;
  v70 = v82;
  swift_getWitnessTable();
  v71 = v88;
  v72 = *(v88 + 16);
  v73 = v85;
  v72(v85, v67, v70);
  v74 = *(v71 + 8);
  v74(v67, v70);
  v72(v101, v73, v70);
  return (v74)(v73, v70);
}

uint64_t sub_1A3F0E964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v74 = a3;
  v4 = *(a2 + 16);
  v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v69 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v6 + 24);
  v7 = *(v68 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = AssociatedTypeWitness;
  v82 = v4;
  v83 = AssociatedConformanceWitness;
  v84 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = AssociatedTypeWitness;
  v82 = v4;
  v83 = AssociatedConformanceWitness;
  v84 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = OpaqueTypeMetadata2;
  v82 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v13 = sub_1A52497A4();
  v81 = OpaqueTypeMetadata2;
  v82 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  v81 = v12;
  v82 = v13;
  v83 = v14;
  v84 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1A5249754();
  v81 = v12;
  v82 = v13;
  v17 = a2;
  v83 = v14;
  v84 = v15;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v14;
  WitnessTable = swift_getWitnessTable();
  v81 = v16;
  v82 = WitnessTable;
  v19 = swift_getOpaqueTypeMetadata2();
  v81 = v16;
  v82 = WitnessTable;
  v20 = swift_getOpaqueTypeConformance2();
  v81 = v4;
  v82 = v19;
  v64 = v19;
  v83 = v7;
  v84 = v20;
  v62 = v20;
  v21 = type metadata accessor for LemonadeItemDetailsNavigationButton(0, &v81);
  v63 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v58 - v24;
  swift_getAssociatedTypeWitness();
  v61 = v7;
  swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedTypeWitness();
  v75 = *(v25 - 8);
  v76 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  v31 = sub_1A5249754();
  v71 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v70 = &v58 - v32;
  v33 = v17;
  v34 = v17;
  v35 = v73;
  if (sub_1A3F11758(v72, v34))
  {
    swift_checkMetadataState();
    sub_1A5242604();
    v36 = *(v75 + 16);
    v60 = v30;
    v36(v27, v30, v76);
    v37 = v67[2];
    v38 = v63;
    v72 = v31;
    v39 = v69;
    v40 = v37(v69, v35, v4);
    v67 = &v58;
    v41 = *(v33 + 40);
    v59 = v27;
    v42 = *(v35 + v41);
    MEMORY[0x1EEE9AC00](v40);
    v43 = v68;
    *(&v58 - 6) = v4;
    *(&v58 - 5) = v43;

    swift_unknownObjectRetain();
    v44 = v66;
    v45 = v39;
    v31 = v72;
    sub_1A472B100(v59, v45, v42, sub_1A3F1C92C, v4, v66, v64, v61, v62);
    v46 = swift_getWitnessTable();
    v47 = *(v38 + 16);
    v48 = v65;
    v47(v65, v44, v21);
    v49 = *(v38 + 8);
    v49(v44, v21);
    v47(v44, v48, v21);
    v50 = sub_1A3F18B84();
    v51 = v70;
    sub_1A3DF4798(v44, v21, &type metadata for MissingModelPlaceholder, v46, v50);
    swift_unknownObjectRelease();
    v49(v44, v21);
    v49(v48, v21);
    (*(v75 + 8))(v60, v76);
  }

  else
  {
    v52 = swift_getWitnessTable();
    v53 = sub_1A3F18B84();
    v51 = v70;
    sub_1A3DF4890(v53, v21, &type metadata for MissingModelPlaceholder, v52, v53);
  }

  v54 = swift_getWitnessTable();
  v55 = sub_1A3F18B84();
  v77 = v54;
  v78 = v55;
  swift_getWitnessTable();
  v56 = v71;
  (*(v71 + 16))(v74, v51, v31);
  return (*(v56 + 8))(v51, v31);
}

uint64_t sub_1A3F0F16C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248ED4();
  *a1 = result & 1;
  return result;
}

BOOL sub_1A3F0F1C4(int *a1, double a2)
{
  v4 = sub_1A5243D54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2 + a1[17];
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v14 = *v12;
  }

  else
  {

    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    v22 = v2;
    v17 = a1;
    v18 = v5;
    v19 = v16;
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0], v22);

    v5 = v18;
    a1 = v17;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v13, 0);
    (*(v9 + 8))(v11, v8);
    v14 = v23;
  }

  if ((v14 & 0xFE) != 2)
  {
    return 0;
  }

  sub_1A3F05D30(a1, v7);
  v20 = sub_1A5243D24();
  (*(v5 + 8))(v7, v4);
  return v20 > 1;
}

uint64_t sub_1A3F0F408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v24 = a2;
  v25 = a5;
  v8 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v28 = swift_getOpaqueTypeConformance2();
  v29 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v30[0] = a3;
  v30[1] = swift_getOpaqueTypeMetadata2();
  v30[2] = v8;
  v30[3] = swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton(255, v30);
  v10 = sub_1A5249754();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v18 = type metadata accessor for LemonadeShelfBody(0, a3, a4, v17);
  sub_1A3F0E964(a1, v18, v13);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1A3F18B84();
  v26 = WitnessTable;
  v27 = v20;
  swift_getWitnessTable();
  v21 = *(v11 + 16);
  v21(v16, v13, v10);
  v22 = *(v11 + 8);
  v22(v13, v10);
  v21(v25, v16, v10);
  return (v22)(v16, v10);
}

uint64_t sub_1A3F0F7C8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v1 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v1 - 8);
  result = sub_1A52427E4();
  if ((result & 1) == 0)
  {
    sub_1A5243164();
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524D074();

    return sub_1A5242814();
  }

  return result;
}

uint64_t sub_1A3F0F934@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, void, uint64_t, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v69 = a7;
  v70 = a6;
  v63 = a3;
  v64 = a5;
  v8 = *a2;
  v61 = a2;
  v62 = a4;
  v9 = v8;
  v10 = *a4;
  v56 = sub_1A52423D4();
  v68 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v66 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1A5246F24();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[6] = *(*(v9 + *MEMORY[0x1E69C1FC8]) - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55[1] = v55 - v14;
  v55[7] = v15;
  v16 = sub_1A524DF24();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55[3] = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v55[5] = v55 - v17;
  v71 = v16;
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v55[4] = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v55[2] = v55 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v65 = v55 - v24;
  v25 = v10 + *MEMORY[0x1E69C23B8];
  v26 = *(v25 + 24);
  v27 = *(v25 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_1A524DF24();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v55 - v31;
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v55 - v35;
  sub_1A52423B4();
  sub_1A3F11B48(v72, v63, v62, v64, v70, v32);
  __swift_destroy_boxed_opaque_existential_0(v72);
  v37 = *(v33 + 48);
  v70 = AssociatedTypeWitness;
  if (v37(v32, 1, AssociatedTypeWitness) != 1)
  {
    v68 = v33;
    (*(v33 + 32))(v36, v32, v70);
    sub_1A5242804();
    v58 = v26;
    v60 = v27;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v66 = v36;
    v62 = AssociatedConformanceWitness;
    sub_1A5246224();
  }

  (*(v30 + 8))(v32, v29);
  v38 = sub_1A3C645A4();
  v40 = v57;
  v39 = v58;
  v41 = v60;
  (*(v58 + 16))(v57, v38, v60);
  v42 = v56;
  (*(v68 + 16))(v66, a1, v56);
  v43 = sub_1A5246F04();
  v44 = sub_1A524D244();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v45 = 136315394;
    sub_1A3F1D360(&qword_1EB12E7B8, MEMORY[0x1E69C1E10], MEMORY[0x1E69C1E18]);
    v46 = v66;
    v47 = sub_1A524EA44();
    v48 = v42;
    v50 = v49;
    (*(v68 + 8))(v46, v48);
    sub_1A3C2EF94(v47, v50, v72);
  }

  (*(v68 + 8))(v66, v42);
  (*(v39 + 8))(v40, v41);
  v52 = *MEMORY[0x1E69C1DF8];
  v53 = sub_1A52423C4();
  (*(*(v53 - 8) + 104))(v69, v52, v53);
  sub_1A3F1B558(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A3F1052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1A3F10718@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v77 = a4;
  v78 = a2;
  v79 = a1;
  v80 = a5;
  sub_1A3F1AFEC();
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v84 = v8;
  sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v121 = sub_1A3F1B0E0();
  v86 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v85 = MEMORY[0x1E69C3078];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v9 = sub_1A524B784();
  v10 = sub_1A5248804();
  v71 = MEMORY[0x1E69817F8];
  v75 = v9;
  WitnessTable = swift_getWitnessTable();
  v119 = v121;
  v74 = WitnessTable;
  v11 = v121;
  v62 = v121;
  v76 = v10;
  v73 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = swift_getAssociatedConformanceWitness();
  v66 = swift_getAssociatedTypeWitness();
  v81 = sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  v82 = a3;
  v63 = v7;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v116 = swift_getOpaqueTypeConformance2();
  v117 = OpaqueTypeConformance2;
  v68 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  v103 = a3;
  v104 = swift_getOpaqueTypeMetadata2();
  v105 = v7;
  v106 = swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton(255, &v103);
  v13 = sub_1A5249754();
  v14 = swift_getWitnessTable();
  v15 = sub_1A3F18B84();
  v114 = v14;
  v115 = v15;
  v16 = swift_getWitnessTable();
  v103 = v13;
  v104 = v16;
  v17 = v13;
  v64 = v13;
  v65 = v16;
  v18 = v16;
  v60 = swift_getOpaqueTypeMetadata2();
  v19 = sub_1A5248804();
  v103 = v17;
  v104 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v112 = v20;
  v113 = v11;
  v21 = swift_getWitnessTable();
  v103 = v60;
  v104 = v19;
  v105 = v20;
  v106 = v21;
  swift_getOpaqueTypeMetadata2();
  v22 = MEMORY[0x1E6980A08];
  v70 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v59 = sub_1A5248804();
  v61 = swift_getWitnessTable();
  v67 = swift_getAssociatedConformanceWitness();
  v103 = v60;
  v104 = v19;
  v105 = v20;
  v106 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v22, MEMORY[0x1E6980A18]);
  v110 = v23;
  v111 = v24;
  v25 = swift_getWitnessTable();
  v103 = v81;
  v104 = v66;
  v105 = v66;
  v106 = v59;
  v107 = v61;
  v108 = v67;
  v109 = v25;
  sub_1A5243E24();
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v103 = v26;
  v104 = AssociatedTypeWitness;
  v105 = v27;
  v106 = v69;
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier(255, &v103);
  v28 = sub_1A5248804();
  v29 = sub_1A5248804();
  v101 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v100 = v62;
  AssociatedTypeWitness = v29;
  v30 = swift_getWitnessTable();
  v103 = v28;
  v104 = v29;
  v105 = v99;
  v106 = v30;
  v69 = swift_getOpaqueTypeMetadata2();
  v103 = v81;
  v104 = v66;
  v105 = v66;
  v106 = v64;
  v107 = v61;
  v108 = v67;
  v109 = v65;
  v31 = sub_1A52420C4();
  v32 = sub_1A5248804();
  v97 = swift_getWitnessTable();
  v98 = v62;
  v33 = swift_getWitnessTable();
  v103 = v31;
  v104 = v32;
  v105 = v97;
  v106 = v33;
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v103 = v28;
  v104 = AssociatedTypeWitness;
  v105 = v99;
  v106 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v103 = v31;
  v104 = v32;
  v105 = v97;
  v106 = v33;
  v95 = v34;
  v96 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  v35 = sub_1A5248804();
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  v103 = v35;
  v104 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, MEMORY[0x1E69E6720]);
  v39 = v38;
  v103 = v35;
  v104 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_1A3F1B1BC();
  v103 = v37;
  v104 = v39;
  v105 = v40;
  v106 = v41;
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v103 = v75;
  v104 = v76;
  v105 = v74;
  v106 = v73;
  v42 = swift_getOpaqueTypeConformance2();
  v103 = v37;
  v104 = v39;
  v105 = v40;
  v106 = v41;
  v91 = v42;
  v92 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B8B4();
  type metadata accessor for LemonadeShelfBody.ContentBackground(255, v82, v77, v43);
  v44 = sub_1A5248804();
  v89 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v103 = v44;
  v104 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v103 = v44;
  v104 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v103 = v46;
  v104 = v47;
  swift_getOpaqueTypeMetadata2();
  sub_1A3EFDB80(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC(255);
  sub_1A5248804();
  sub_1A3F1C93C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v70);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5249A34();
  v48 = sub_1A5248804();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v59 - v53;
  v55 = swift_getWitnessTable();
  sub_1A524B094();
  v87 = v55;
  v88 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  v56 = *(v49 + 16);
  v56(v54, v51, v48);
  v57 = *(v49 + 8);
  v57(v51, v48);
  v56(v80, v54, v48);
  return (v57)(v54, v48);
}

void sub_1A3F1152C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A52431B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v7[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  swift_getAssociatedConformanceWitness();
  sub_1A5246424();
}

uint64_t sub_1A3F11758(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_1A5246F24();
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  result = sub_1A52431A4();
  if (!result)
  {
    v27 = v4;
    v28 = v3;
    v30 = 0;
    v16 = sub_1A3C645A4();
    v17 = *(v32 + 16);
    v29 = v11;
    v17(v13, v16, v11);
    v18 = *(v31 + 16);
    v18(v10, v14, AssociatedTypeWitness);
    v19 = sub_1A5246F04();
    v20 = sub_1A524D254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v21 = 136446466;
      v18(v7, v10, AssociatedTypeWitness);
      v22 = sub_1A524C714();
      v24 = v23;
      (*(v31 + 8))(v10, AssociatedTypeWitness);
      sub_1A3C2EF94(v22, v24, &v33);
    }

    (*(v31 + 8))(v10, AssociatedTypeWitness);
    (*(v32 + 8))(v13, v29);
    return v30;
  }

  return result;
}

uint64_t sub_1A3F11B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v45 = a5;
  v44 = a4;
  v43 = a2;
  v50 = a6;
  v48 = a3;
  v7 = (*a3 + *MEMORY[0x1E69C23B8]);
  v8 = *v7;
  v47 = v7[2];
  v46 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = v39 - v9;
  sub_1A3EFDB80(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v39 - v11;
  v13 = sub_1A5243CC4();
  v49 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1A524DF24();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v39 - v21;
  v23 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v51 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v39 - v27;
  sub_1A3C2F0BC(a1, &v58);
  v29 = swift_dynamicCast();
  v30 = *(v23 + 56);
  if (v29)
  {
    v31 = *(v23 + 56);
    v30(v22, 0, 1, v18);
    v32 = *(v23 + 32);
    v32(v28, v22, v18);
    v33 = v50;
    v32(v50, v28, v18);
    return v31(v33, 0, 1, v18);
  }

  else
  {
    v39[3] = v23;
    v41 = v23 + 56;
    v40 = v30;
    v30(v22, 1, 1, v18);
    (*(v20 + 8))(v22, v19);
    sub_1A5243CA4();
    sub_1A5243CB4();
    v35 = v49;
    v36 = v49 + 8;
    v37 = *(v49 + 8);
    v37(v17, v13);
    v54 = sub_1A3C34400(0, &qword_1EB12B6A8, MEMORY[0x1E69E6A30]);
    if (swift_dynamicCast())
    {
      v39[1] = v37;
      v39[2] = v36;
      sub_1A3C34460(v56, &v58);
      (*(v45 + 272))(v44);
      v38 = *(v35 + 48);
      if (v38(v12, 1, v13) == 1)
      {
        sub_1A5243CA4();
        if (v38(v12, 1, v13) != 1)
        {
          sub_1A3F1B5F4(v12, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720], sub_1A3EFDB80);
        }
      }

      else
      {
        (*(v35 + 32))(v55, v12, v13);
      }

      sub_1A52431B4();
      swift_getAssociatedConformanceWitness();
      sub_1A5246344();
    }

    v57 = 0;
    memset(v56, 0, sizeof(v56));
    sub_1A3C2C598(v56, &unk_1EB132ED0, &qword_1EB12B6A8, MEMORY[0x1E69E6A30], sub_1A3E792C4);
    return v40(v50, 1, 1, v18);
  }
}

uint64_t sub_1A3F1274C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for LemonadeShelfBody(0, a2, a3, v12);
  v14 = a1 + *(result + 68);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    *a4 = v15;
  }

  else
  {

    v16 = sub_1A524D254();
    v17 = sub_1A524A014();
    sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v15, 0);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1A3F128C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v67 = a3;
  v68 = a5;
  v63 = a2;
  v69 = a6;
  v70 = a1;
  v7 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v50 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73 = AssociatedTypeWitness;
  v74 = a4;
  v12 = AssociatedTypeWitness;
  v57 = AssociatedTypeWitness;
  v58 = AssociatedConformanceWitness;
  v75 = AssociatedConformanceWitness;
  v76 = v7;
  v13 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v56 = &v50 - v15;
  v73 = v12;
  v74 = a4;
  v75 = v13;
  v76 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = OpaqueTypeMetadata2;
  v74 = OpaqueTypeConformance2;
  v17 = OpaqueTypeMetadata2;
  v59 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeConformance2;
  v18 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v65 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v50 - v20;
  v21 = sub_1A52497A4();
  v73 = v17;
  v74 = v18;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  v73 = v19;
  v74 = v21;
  v75 = v22;
  v76 = v23;
  swift_getOpaqueTypeMetadata2();
  v54 = v19;
  v24 = sub_1A5249754();
  v62 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v55 = &v50 - v25;
  v73 = v19;
  v74 = v21;
  v53 = v22;
  v75 = v22;
  v76 = v23;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v22;
  v51 = v24;
  WitnessTable = swift_getWitnessTable();
  v73 = v24;
  v74 = WitnessTable;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v50 - v32;
  v34 = v10;
  v35 = v63;
  (*(v7 + 104))(v63, a4, v7, v31);
  v36 = v56;
  v37 = v35;
  v38 = v57;
  sub_1A3D7194C(v37, a4, v57, a4, v58, v7);
  (*(v64 + 8))(v34, v38);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedTypeWitness();
  v76 = v39;
  v40 = __swift_allocate_boxed_opaque_existential_1(&v73);
  (*(*(v39 - 8) + 16))(v40, v67, v39);
  v41 = v61;
  v42 = v59;
  sub_1A524A534();
  (*(v66 + 8))(v36, v42);
  sub_1A3C2C598(&v73, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3F1C93C);
  v43 = (*(v68 + 152))(a4);
  v44 = v55;
  v45 = v54;
  sub_1A3F12FFC((v43 & 1) == 0, v54, v53, v55);
  (*(v65 + 8))(v41, v45);
  v46 = v51;
  sub_1A524A5F4();
  (*(v62 + 8))(v44, v46);
  v47 = *(v27 + 16);
  v47(v33, v29, v26);
  v48 = *(v27 + 8);
  v48(v29, v26);
  v47(v69, v33, v26);
  return (v48)(v33, v26);
}

uint64_t sub_1A3F12FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v46) = a1;
  v50 = a4;
  OpaqueTypeConformance2 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = sub_1A52497A4();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  v54 = a2;
  v55 = v10;
  v56 = a3;
  v57 = v13;
  v51 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v21 = sub_1A5249754();
  v48 = *(v21 - 8);
  v49 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  if (v46)
  {
    sub_1A5248B94();
    v46 = v24;
    v25 = a3;
    v26 = v51;
    sub_1A524A974();
    (*(v43 + 8))(v12, v10);
    v54 = a2;
    v55 = v10;
    v56 = v25;
    v57 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = *(v15 + 16);
    v27(v20, v17, OpaqueTypeMetadata2);
    v47 = v10;
    v28 = v25;
    v24 = v46;
    v29 = *(v15 + 8);
    v29(v17, OpaqueTypeMetadata2);
    v27(v17, v20, OpaqueTypeMetadata2);
    sub_1A3DF4798(v17, OpaqueTypeMetadata2, a2, OpaqueTypeConformance2, v28);
    v29(v17, OpaqueTypeMetadata2);
    v29(v20, OpaqueTypeMetadata2);
    v30 = v28;
    v31 = v47;
  }

  else
  {
    v32 = OpaqueTypeConformance2;
    v33 = v10;
    v34 = a3;
    v35 = *(OpaqueTypeConformance2 + 16);
    v35(v9, v47, a2, v22);
    v36 = v44;
    (v35)(v44, v9, a2);
    v30 = v34;
    v31 = v33;
    v54 = a2;
    v55 = v33;
    v56 = v30;
    v57 = v51;
    v37 = swift_getOpaqueTypeConformance2();
    sub_1A3DF4890(v36, OpaqueTypeMetadata2, a2, v37, v30);
    v38 = *(v32 + 8);
    v38(v36, a2);
    v38(v9, a2);
  }

  v54 = a2;
  v55 = v31;
  v56 = v30;
  v57 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v30;
  v39 = v49;
  swift_getWitnessTable();
  v40 = v48;
  (*(v48 + 16))(v50, v24, v39);
  return (*(v40 + 8))(v24, v39);
}

uint64_t sub_1A3F13550@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a1;
  v65 = a5;
  type metadata accessor for LemonadeShelfBody.ContentBackground(255, a3, a4, a4);
  swift_getWitnessTable();
  v6 = sub_1A52499C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v55 - v11;
  v13 = sub_1A5248804();
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v55 - v14;
  sub_1A3F1D1FC(255, &qword_1EB12E7C0, sub_1A3F1D27C, sub_1A3F1D32C, MEMORY[0x1E697F930]);
  v66 = v13;
  v16 = sub_1A5248804();
  v58 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v57 = v55 - v17;
  v18 = sub_1A5248804();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v59 = v55 - v23;
  v64 = sub_1A5249754();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v55 - v24;
  if (a2)
  {
    sub_1A524A074();
    v25 = v15;
    WitnessTable = swift_getWitnessTable();
    v56 = WitnessTable;
    sub_1A524B0D4();
    v55[1] = sub_1A524BC74();
    v55[0] = v27;
    sub_1A3F1D27C(0);
    v71 = WitnessTable;
    v72 = MEMORY[0x1E697E5D8];
    v28 = v19;
    v61 = v16;
    v29 = v66;
    v30 = swift_getWitnessTable();
    sub_1A3F1D32C();
    v31 = v57;
    sub_1A524A8C4();
    v32 = v29;
    v33 = v61;
    (*(v60 + 8))(v25, v32);
    sub_1A524A054();
    v34 = sub_1A3F1D3A8();
    v69 = v30;
    v70 = v34;
    v35 = swift_getWitnessTable();
    sub_1A524B0D4();
    (*(v58 + 8))(v31, v33);
    v67 = v35;
    v68 = MEMORY[0x1E697E5D8];
    v36 = swift_getWitnessTable();
    v37 = *(v28 + 16);
    v38 = v59;
    v37(v59, v21, v18);
    v39 = *(v28 + 8);
    v39(v21, v18);
    v37(v21, v38, v18);
    v40 = v62;
    sub_1A3DF4798(v21, v18, v6, v36, v56);
    v39(v21, v18);
    v39(v38, v18);
  }

  else
  {
    v41 = swift_getWitnessTable();
    v42 = *(v7 + 16);
    v42(v12, v61, v6);
    v42(v9, v12, v6);
    v85 = v41;
    v43 = MEMORY[0x1E697E5D8];
    v86 = MEMORY[0x1E697E5D8];
    v44 = swift_getWitnessTable();
    v45 = sub_1A3F1D3A8();
    v83 = v44;
    v84 = v45;
    v81 = swift_getWitnessTable();
    v82 = v43;
    v46 = swift_getWitnessTable();
    v40 = v62;
    sub_1A3DF4890(v9, v18, v6, v46, v41);
    v47 = *(v7 + 8);
    v47(v9, v6);
    v47(v12, v6);
  }

  v48 = swift_getWitnessTable();
  v79 = v48;
  v49 = MEMORY[0x1E697E5D8];
  v80 = MEMORY[0x1E697E5D8];
  v50 = swift_getWitnessTable();
  v51 = sub_1A3F1D3A8();
  v77 = v50;
  v78 = v51;
  v75 = swift_getWitnessTable();
  v76 = v49;
  v73 = swift_getWitnessTable();
  v74 = v48;
  v52 = v64;
  swift_getWitnessTable();
  v53 = v63;
  (*(v63 + 16))(v65, v40, v52);
  return (*(v53 + 8))(v40, v52);
}

void sub_1A3F13D84(char *a1@<X8>)
{
  v2 = *(sub_1A5248A14() + 20);
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_1A52494A4();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  __asm { FMOV            V0.2D, #25.0 }

  *a1 = _Q0;
  v10 = sub_1A524B364();
  sub_1A3F1D27C(0);
  *&a1[*(v11 + 52)] = v10;
  *&a1[*(v11 + 56)] = 256;
}

uint64_t sub_1A3F13E3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A40B23A0();
  *a1 = result;
  return result;
}

void *sub_1A3F13EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A46765A0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3F13F6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248DF4();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F13FC4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A5248D14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A3F14028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *, double), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  a6(a1, &v15 - v12, v11);
  return a7(v13);
}

uint64_t sub_1A3F140CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A467667C();
  *a1 = result & 1;
  return result;
}

void sub_1A3F14128(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3F1152C(a1);
}

void sub_1A3F142FC(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3F1152C(a1);
}

void sub_1A3F1449C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3F1152C(a1);
}

void sub_1A3F1466C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[6] = a2;
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v13[3] = v5;
  v13[4] = v6;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v7);
  v13[5] = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v3;
  sub_1A3F1152C(a1);
}

uint64_t sub_1A3F149B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (sub_1A3F11758(a1, a2))
  {
    (*(v4 + 104))();
    swift_getAssociatedConformanceWitness();
    v6 = sub_1A524B8E4();
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    sub_1A3F18B84();

    return sub_1A524B8E4();
  }
}

uint64_t sub_1A3F14B08(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v6)
  {
    v1 = sub_1A5243774();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v3 = sub_1A524CAB4();
    if (sub_1A524CAF4())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v1 = sub_1A3F163C0(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
    }

    else
    {

      return MEMORY[0x1E69E7CD0];
    }
  }

  return v1;
}

void sub_1A3F14CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5242334();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A3F1449C(a1, a2, sub_1A3F18B30);
}

void sub_1A3F14F64(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v3 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3F1152C(a1);
}

void sub_1A3F15148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(v4 + *(a4 + 40)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A40B3388(a1, v8, a2, a3);
}

void sub_1A3F151CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3F1152C(a2);
}

uint64_t static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)()
{
  sub_1A524E404();
  sub_1A3C66768();
  v0 = sub_1A524EA44();

  MEMORY[0x1A5907B60](0xD000000000000013, 0x80000001A53BCB00);
  return v0;
}

uint64_t static LemonadeShelfUtilities.detailsDisclosureButtonAccessibilityIdentifier(shelfIdentifier:)()
{
  sub_1A524E404();
  sub_1A3C66768();
  v0 = sub_1A524EA44();

  MEMORY[0x1A5907B60](0xD000000000000013, 0x80000001A53BCB20);
  return v0;
}

uint64_t static LemonadeShelfUtilities.navigationURL(shelfIdentifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3EFDB80(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = *a1;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1A524E404();

  v13 = 0xD000000000000012;
  v14 = 0x80000001A53BCB40;
  v12[15] = v7;
  v8 = LemonadeShelfIdentifier.slug.getter();
  MEMORY[0x1A5907B60](v8);

  sub_1A5240E34();

  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v6, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  __break(1u);
  return result;
}

uint64_t static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3EFDB80(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = *a1;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1A524E404();

  v13 = 0xD00000000000001ALL;
  v14 = 0x80000001A53BCB60;
  v12[15] = v7;
  v8 = LemonadeShelfIdentifier.slug.getter();
  MEMORY[0x1A5907B60](v8);

  sub_1A5240E34();

  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v6, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  __break(1u);
  return result;
}

id PXLemonadeShelfUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXLemonadeShelfUtilities.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXLemonadeShelfUtilities(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id PXLemonadeShelfUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXLemonadeShelfUtilities(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A3F15A00(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a7@<X8>)
{
  v11 = a7;
  v12 = a2;
  v10 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A5245EC4();
}

uint64_t sub_1A3F15F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B414();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F15F50@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v22 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A3F1C850(v8, &v21 - v15, a1, a2, v13, sub_1A3EFDB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v22, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1A3F16188@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A3F1C850(v8, &v20 - v15, a1, a2, v13, sub_1A3EFDB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A3F1C8C4(v16, v21, a3);
  }

  v18 = sub_1A524D254();
  v19 = sub_1A524A014();
  sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v10 + 8))(v12, v9);
}

_DWORD *sub_1A3F163A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1A3F163C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_1A524CAF4())
  {
    sub_1A524E3E4();
    v15 = sub_1A524E3D4();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1A524CAF4();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1A524CAD4();
    sub_1A524CA64();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1A524E474();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1A524C4A4();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1A524C594();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1A3F16888(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    type metadata accessor for LemonadeNavigationContext(319);
    if (v6 <= 0x3F)
    {
      type metadata accessor for LemonadeModelFactory(319, v4, *(*(a1 + 24) + 8), v5);
      if (v7 <= 0x3F)
      {
        sub_1A3EFDB80(319, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
        if (v8 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          sub_1A5242854();
          sub_1A5247CB4();
          if (v9 <= 0x3F)
          {
            sub_1A3EFC5C8(319);
            if (v10 <= 0x3F)
            {
              sub_1A3EFDB80(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
              if (v11 <= 0x3F)
              {
                sub_1A3F1C93C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
                if (v12 <= 0x3F)
                {
                  sub_1A3F1C93C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                  if (v13 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1A3F16B88(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1A5242854();
      if (v3 <= 0x3F)
      {
        sub_1A3E792C4(319, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel);
        if (v4 <= 0x3F)
        {
          sub_1A52434D4();
          if (v5 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            sub_1A52431C4();
            if (v6 <= 0x3F)
            {
              sub_1A3F178E0(319);
              if (v7 <= 0x3F)
              {
                sub_1A3EFDB80(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1A3F1C93C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A3EFDB80(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1A3F1C93C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                      if (v11 <= 0x3F)
                      {
                        sub_1A3F1C93C(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
                        if (v12 <= 0x3F)
                        {
                          sub_1A3F1C93C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
                          if (v13 <= 0x3F)
                          {
                            sub_1A3EFDB80(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                            if (v14 <= 0x3F)
                            {
                              sub_1A3EFDB80(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                              if (v15 <= 0x3F)
                              {
                                sub_1A3F1C93C(319, &qword_1EB124748, &type metadata for LemonadeShelvesViewModelDisplayState, MEMORY[0x1E697DCC0]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1A3F1C93C(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1A3EFDB80(319, &qword_1EB1247D8, type metadata accessor for LemonadeShelfViewModel, MEMORY[0x1E697DCC0]);
                                    if (v18 <= 0x3F)
                                    {
                                      swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_1A3F170A4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(a3 + 16);
  v4 = *(v38 - 8);
  v5 = *(v4 + 84);
  v37 = sub_1A52434D4();
  v6 = *(v37 - 8);
  v36 = *(v6 + 84);
  if (v5 <= v36)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v41 = *(sub_1A5242D14() - 8);
  v9 = *(v41 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v40 = v9;
  v10 = *(sub_1A52486A4() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v39 = v11;
  v12 = *(sub_1A5248714() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 64);
  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v16 = v15 + 42;
  v17 = a1;
  if (v8 >= a2)
  {
    goto LABEL_41;
  }

  v18 = *(v41 + 80) & 0xF8 | 7;
  v19 = (v40 + ((v18 + ((((*(v6 + 64) + ((v16 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & ~v18) + 72) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = *(v12 + 80) & 0xF8 | 7;
  v22 = ((v13 + ((v39 + v21 + ((v20 + v19 + 33) & ~v20) + 1) & ~v21) + 64) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v22 <= 3)
  {
    v23 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 <= 1)
  {
    if (!v25)
    {
      goto LABEL_41;
    }

    v26 = a1[v22];
    if (!a1[v22])
    {
      goto LABEL_41;
    }

LABEL_34:
    v28 = v22 > 3;
    if (v22 <= 3)
    {
      v29 = (v26 - 1) << (8 * v22);
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v35 = *a1;
    }

    else
    {
      v35 = *a1;
    }

    return v8 + (v35 | v29) + 1;
  }

  if (v25 == 2)
  {
    v26 = *&a1[v22];
    if (*&a1[v22])
    {
      goto LABEL_34;
    }
  }

  else
  {
    v26 = *&a1[v22];
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_41:
  if (v5 == v8)
  {
    v30 = v38;
    v31 = *(v4 + 48);
    v32 = v5;
LABEL_48:

    return v31(v17, v32, v30);
  }

  v33 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v31 = *(v6 + 48);
    v17 = ((v16 + ((((v33 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
    v32 = v36;
    v30 = v37;
    goto LABEL_48;
  }

  v34 = *v33;
  if (v34 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  return (v34 + 1);
}

void sub_1A3F174A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1A52434D4() - 8);
  v33 = v6;
  v32 = v5;
  if (v5 <= *(v6 + 84))
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = v5;
  }

  v31 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1A5242D14() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_1A52486A4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(sub_1A5248714() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = (v10 + ((v17 + ((((*(v6 + 64) + ((v16 + 42 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & ~v17) + 72) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v11 + 80) & 0xF8 | 7;
  v20 = *(v13 + 80) & 0xF8 | 7;
  v21 = ((v14 + ((v12 + v20 + ((v19 + v18 + 33) & ~v19) + 1) & ~v20) + 64) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v24 = 0;
  }

  else
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  if (v8 < a2)
  {
    v25 = ~v8 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v26 = (v25 >> 8) + 1;
    }

    else
    {
      v26 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v25;
      if (v24 > 1)
      {
LABEL_35:
        if (v24 == 2)
        {
          *&a1[v21] = v26;
        }

        else
        {
          *&a1[v21] = v26;
        }

        return;
      }
    }

    else
    {
      *a1 = v25;
      if (v24 > 1)
      {
        goto LABEL_35;
      }
    }

    if (v24)
    {
      a1[v21] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v21] = 0;
  }

  else if (v24)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v32 == v8)
  {
    v27 = *(v4 + 56);
    v28 = a1;
  }

  else
  {
    v29 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v31 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = a2 - 1;
      }

      *v29 = v30;
      return;
    }

    v27 = *(v33 + 56);
    v28 = ((v16 + 42 + ((((v29 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
  }

  v27(v28);
}