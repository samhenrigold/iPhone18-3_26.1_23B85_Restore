void closure #1 in PaperDocumentViewController.setupDefaultBannerUI(updateToolbar:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  swift_beginAccess();
  *(a2 + v5) = 1;
  v6 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (v7)
  {
    v11 = *(a2 + v5);
    v8 = v7;
    PaperDocumentView.editingMode.setter(&v11);
  }

  PaperDocumentViewController.updatePlusButton()();
  if (a3)
  {
    a3();
  }

  v9 = *(a2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
  if (v9)
  {
    [v9 removeFromSuperview];
  }

  PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
  v10 = *(a2 + v6);
  if (v10)
  {
    *(*(v10 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics) + 19) = 48;
  }
}

void closure #2 in PaperDocumentViewController.setupDefaultBannerUI(updateToolbar:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
      v8 = &v7[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 16);
        v12 = v7;
        v13 = v11(ObjectType, v9);

        v14 = swift_unknownObjectRelease();
        if (v13)
        {
          v15 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x440);
          v16 = (v15)(v14);
          v18 = v17;
          v19 = swift_getObjectType();
          (*(v18 + 232))(v19, v18);

          v20 = v15();
          v22 = v21;
          v23 = swift_getObjectType();
          v24 = (*(v22 + 168))(v23, v22);

          if (v24)
          {
            v25 = *&v24[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

            *(v25 + 17) = 1;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id key path getter for PaperDocumentViewController.bannerViewConfiguration : PaperDocumentViewController@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return outlined copy of BannerViewConfiguration?(v4, v5, v6, v7, v8, v9, v10);
}

void key path setter for PaperDocumentViewController.bannerViewConfiguration : PaperDocumentViewController(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 8);
  v15 = *(v9 + 24);
  v16 = *(v9 + 16);
  v13 = *(v9 + 40);
  v14 = *(v9 + 32);
  v12 = *(v9 + 48);
  *v9 = v2;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  outlined copy of BannerViewConfiguration?(v2, v3, v4, v5, v6, v7, v8);
  outlined consume of BannerViewConfiguration?(v11, v10, v16, v15, v14, v13, v12);
  PaperDocumentViewController.bannerViewConfiguration.didset();
}

void PaperDocumentViewController.bannerViewConfiguration.didset()
{
  v1 = &v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration];
  swift_beginAccess();
  if (*v1 != 1)
  {
    v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
    swift_beginAccess();
    v4 = *&v0[v3];
    if (!v4)
    {
      return;
    }

    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v6 = *&v0[v5];
    if (!v6)
    {
      return;
    }

    v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (!v8)
    {
      return;
    }

    v9 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = v8;
    v12 = v6;
    v13 = v4;
    v14 = [v10 superview];
    if (v14)
    {
      v15 = v14;

LABEL_13:
LABEL_14:

      return;
    }

    v16 = *v1;
    if (*v1 == 1)
    {

      goto LABEL_13;
    }

    v56 = v12;
    v61 = *(v1 + 1);
    v62 = v13;
    v17 = *(v1 + 2);
    v60 = *(v1 + 3);
    v18 = *(v1 + 4);
    v19 = *(v1 + 5);
    v54 = *(v1 + 6);
    v58 = v54;
    v57 = v16;

    v63 = v18;

    v55 = v19;
    v20 = v19;
    PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
    v21 = *&v6[v7];
    if (v21)
    {
      [v21 addSubview_];
      if (v17)
      {
        v22 = MEMORY[0x1DA6CCED0](v61, v17);
      }

      else
      {
        v22 = 0;
      }

      v53 = v16;
      if (v18)
      {
        v23 = MEMORY[0x1DA6CCED0](v60);
      }

      else
      {
        v23 = 0;
      }

      v24 = [objc_opt_self() configurationWithImage:v57 title:v22 subtitle:v23 primaryAction:v20 dismissAction:v58];

      [v10 populateWithConfiguration_];
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v25 = [v10 bottomAnchor];
      v26 = v11;
      v27 = [v26 safeAreaLayoutGuide];
      v28 = [v27 topAnchor];

      v29 = [v25 constraintEqualToAnchor_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D405B630;
      *(v30 + 32) = v29;
      v59 = v29;
      v31 = [v10 leadingAnchor];
      v32 = [v62 trailingAnchor];
      v33 = [v31 constraintEqualToAnchor:v32 constant:8.0];

      *(v30 + 40) = v33;
      v34 = [v10 leadingAnchor];
      v35 = [v0 view];
      if (v35)
      {
        v36 = v35;
        v37 = objc_opt_self();
        v38 = [v36 safeAreaLayoutGuide];

        v39 = [v38 leadingAnchor];
        v40 = [v34 constraintGreaterThanOrEqualToAnchor:v39 constant:8.0];

        *(v30 + 48) = v40;
        v41 = [v10 trailingAnchor];

        v42 = [v26 safeAreaLayoutGuide];
        v43 = [v42 trailingAnchor];

        v44 = [v41 constraintEqualToAnchor:v43 constant:-8.0];
        *(v30 + 56) = v44;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v37 activateConstraints_];

        v46 = [v0 view];
        if (v46)
        {
          v47 = v46;
          [v46 layoutIfNeeded];

          v48 = swift_allocObject();
          v48[2] = v59;
          v48[3] = v10;
          v48[4] = v26;
          v48[5] = v0;
          aBlock[4] = partial apply for closure #1 in PaperDocumentViewController.bannerViewConfiguration.didset;
          aBlock[5] = v48;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_261;
          v49 = _Block_copy(aBlock);
          v10 = v10;
          v50 = v26;
          v51 = v59;
          v52 = v0;

          [v10 showWithAnimations_];
          _Block_release(v49);

          outlined consume of BannerViewConfiguration?(v53, v61, v17, v60, v63, v55, v54);
          goto LABEL_14;
        }

LABEL_28:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
}

void closure #1 in PaperDocumentViewController.bannerViewConfiguration.didset(void *a1, void *a2, void *a3, void *a4)
{
  [a1 setActive_];
  v7 = [a2 topAnchor];
  v8 = [a3 safeAreaLayoutGuide];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  [v10 setActive_];

  v11 = [a4 view];
  if (v11)
  {
    v12 = v11;
    [v11 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id PaperDocumentViewController.bannerViewConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return outlined copy of BannerViewConfiguration?(v4, v5, v6, v7, v8, v9, v10);
}

void PaperDocumentViewController.bannerViewConfiguration.setter(uint64_t a1)
{
  v13 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v12;
  *(v4 + 32) = v13;
  *(v4 + 48) = v3;
  outlined consume of BannerViewConfiguration?(v5, v6, v7, v8, v9, v10, v11);
  PaperDocumentViewController.bannerViewConfiguration.didset();
}

void (*PaperDocumentViewController.bannerViewConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PaperDocumentViewController.bannerViewConfiguration.modify;
}

void PaperDocumentViewController.bannerViewConfiguration.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PaperDocumentViewController.bannerViewConfiguration.didset();
  }
}

id PaperDocumentViewController.__allocating_init(context:pdfURL:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v13) = 3;
  objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  v9 = a1;
  v10 = PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v6, v9, &v13);
  (*(v8 + 8))(a2, v7);

  return v10;
}

id PaperDocumentViewController.__allocating_init(context:data:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a2;
  v8[1] = a3;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v13) = 3;
  objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  outlined copy of Data._Representation(a2, a3);
  v9 = a1;
  v10 = PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v8, v9, &v13);
  outlined consume of Data._Representation(a2, a3);

  return v10;
}

id PaperDocumentViewController.__allocating_init(context:safelyWithPDFURL:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  swift_storeEnumTagMultiPayload();
  v13 = 3;
  v9 = objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  v10 = PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v6, a1, &v13);
  (*(v8 + 8))(a2, v7);
  return v10;
}

id PaperDocumentViewController.__allocating_init(context:safelyWithData:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a2;
  v8[1] = a3;
  swift_storeEnumTagMultiPayload();
  v12 = 3;
  v9 = objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  return PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v8, a1, &v12);
}

id PaperDocumentViewController.init(context:paperDocument:editingMode:)(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = specialized PaperDocumentViewController.init(context:paperDocument:editingMode:)(a1, a2, a3);

  return v4;
}

uint64_t closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:);

  return PaperDocumentViewController.setupDocumentView(context:)(a5);
}

uint64_t closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:), v1, v0);
}

id PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v69 - v9;
  v10 = type metadata accessor for URL();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v69 - v13;
  v81 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRAsset();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v69 - v18;
  v74 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v69 - v21;
  v22 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v69 - v25;
  v79 = *a3;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView] = 0;
  v27 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_scrollViewObserver;
  *&v4[v27] = [objc_allocWithZone(type metadata accessor for PaperDocumentViewController_ScrollViewObserver()) init];
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_screenEdgePanGestureRecognizer] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility] = 1;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth] = 1;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v88 = a1;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  v83 = a2;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_cancellables] = v28;
  v29 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  *&v4[v29] = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
  v30 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v78 = *(*(v31 - 8) + 56);
  v78(&v4[v30], 1, 1, v31);
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove] = xmmword_1D405C100;
  v32 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor;
  if (one-time initialization token for defaultBackgroundColor != -1)
  {
    swift_once();
  }

  v33 = static PaperDocumentViewController.defaultBackgroundColor;
  *&v4[v32] = static PaperDocumentViewController.defaultBackgroundColor;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_defaultBannerWasDisplayed] = 0;
  v34 = &v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration];
  *v34 = 1;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  *(v34 + 40) = 0u;
  v35 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView;
  v36 = objc_allocWithZone(PPKQuickLookBannerView);
  v37 = v33;
  *&v4[v35] = [v36 init];
  v38 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton;
  type metadata accessor for FormPlusButtonView();
  *&v4[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest] = 0;
  v39 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 56))(&v4[v39], 1, 1, v40);
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded] = 0;
  v41 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR);
  swift_allocObject();
  *&v4[v41] = PassthroughSubject.init()();
  v42 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_livePassThroughSubject;
  swift_allocObject();
  *&v4[v42] = PassthroughSubject.init()();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode] = v79;
  static CRKeyPath.unique.getter();
  type metadata accessor for PaperDocument(0);
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  Capsule.init(id:initClosure:)();
  v78(v26, 0, 1, v31);
  swift_beginAccess();
  outlined assign with take of UUID?(v26, &v4[v30], &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  swift_endAccess();
  v43 = type metadata accessor for PaperDocumentViewController(0);
  v87.receiver = v4;
  v87.super_class = v43;
  v44 = objc_msgSendSuper2(&v87, sel_initWithNibName_bundle_, 0, 0);
  v45 = v88;
  v46 = v82;
  outlined init with copy of PaperDocument(v88, v82, type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v50 = v83;
    CRContext.assetManager.getter();
    v53 = v86;
    CRAsset.init(data:assetManager:)();
LABEL_10:
    v54 = v84;
    static TaskPriority.userInitiated.getter();
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = v76;
    v58 = v44;
    v59 = v75;
    v60 = v53;
    v61 = v77;
    (*(v76 + 16))(v75, v60, v77);
    v62 = (*(v57 + 80) + 40) & ~*(v57 + 80);
    v63 = (v74 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 2) = 0;
    *(v64 + 3) = 0;
    *(v64 + 4) = v56;
    v65 = v59;
    v44 = v58;
    (*(v57 + 32))(&v64[v62], v65, v61);
    *&v64[v63] = v50;
    v66 = v50;
    v67 = v84;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v84, &async function pointer to partial apply for closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), v64);

    outlined destroy of PaperDocument(v88, type metadata accessor for DataOrURL);
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_sScPSgMd, &_sScPSgMR);
    (*(v57 + 8))(v86, v61);
    return v44;
  }

  v48 = v71;
  v47 = v72;
  v49 = v73;
  (*(v72 + 32))(v71, v46, v73);
  (*(v47 + 16))(v70, v48, v49);
  v50 = v83;
  CRContext.assetManager.getter();
  v51 = v69;
  v52 = v85;
  CRAsset.init(safelyFrom:coordinated:assetManager:)();
  v53 = v86;
  if (!v52)
  {
    v85 = 0;
    (*(v47 + 8))(v48, v49);
    (*(v76 + 32))(v53, v51, v77);
    goto LABEL_10;
  }

  outlined destroy of PaperDocument(v45, type metadata accessor for DataOrURL);
  (*(v47 + 8))(v48, v49);
  return v44;
}

uint64_t closure #1 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  CROrderedSet.init()();
  type metadata accessor for PaperDocument(0);
  v6 = type metadata accessor for CRAsset();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  outlined init with copy of Date?(v5, v2, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  return UnknownProperties.init()();
}

uint64_t closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
}

uint64_t closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd, _s8PaperKit0aB11PDFDocumentCSgMR);
    *v2 = v0;
    v2[1] = closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:);

    return MEMORY[0x1EEDF52A8](v0 + 9, 1, &async function pointer to closure #1 in closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{
  v1 = *(v0 + 72);
  *(v0 + 128) = v1;
  if (v1 >= 2)
  {
    v4 = [v1 isLocked];
    type metadata accessor for MainActor();
    *(v0 + 136) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 144) = v6;
    *(v0 + 152) = v5;
    if (v4)
    {
      v7 = closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:);
    }

    else
    {
      v7 = closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:);
    }

    return MEMORY[0x1EEE6DFA0](v7, v6, v5);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[11];

  PaperDocumentViewController.unlock(pdfDocument:asset:context:)(v1, v3, v2);

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
}

{
  v1 = *(v0 + 128);

  outlined consume of PaperKitPDFDocument??(v1);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[16];
  v2 = v0[11];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = PaperDocumentViewController.paperDocument.modify(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  Capsule.callAsFunction<A>(_:)();

  (v4)(v0 + 2, 0);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:);
  v6 = v0[12];

  return PaperDocumentViewController.setupDocumentView(context:)(v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), v3, v2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
}

void closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
  }
}

uint64_t closure #1 in closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
}

uint64_t closure #1 in closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(type metadata accessor for PaperKitPDFDocument());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL_];

  *v1 = v6;
  v7 = *(v0 + 8);

  return v7();
}

id PaperDocumentViewController.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove];
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove + 8];
  if (v2 >> 60 != 15)
  {
    v3 = *v1;
    v4 = outlined copy of Data._Representation(*v1, *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove + 8]);
    if (one-time initialization token for shared != -1)
    {
      v4 = swift_once();
    }

    v5 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock(v5 + 4);
    _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_SSSg_TG5TA_0(&v9);
    os_unfair_lock_unlock(v5 + 4);

    outlined consume of Data?(v3, v2);
  }

  LOBYTE(v9) = 1;

  PassthroughSubject.send(completion:)();

  LOBYTE(v9) = 1;

  PassthroughSubject.send(completion:)();

  v7 = type metadata accessor for PaperDocumentViewController(0);
  v10.receiver = v0;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void closure #1 in PaperDocumentViewController.open(pdfDocument:asset:context:)(char *a1, void *a2, char *a3)
{
  v61 = a2;
  v63 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - v7;
  v8 = type metadata accessor for CRAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v48 - v13;
  v14 = type metadata accessor for PaperDocument(0);
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v48 = &v48 - v21;
  v22 = *(v9 + 16);
  v62 = v11;
  v52 = v22;
  v53 = v9 + 16;
  (v22)(v11, a3, v8, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  CROrderedSet.init()();
  v23 = *(v14 + 20);
  v55 = v9;
  v24 = v9;
  v25 = v59;
  v26 = *(v24 + 56);
  v57 = v8;
  v50 = v26;
  v51 = v24 + 56;
  v26(v59, 1, 1, v8);
  outlined init with copy of Date?(v25, v5, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v54 = v5;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v60 = v14;
  v27 = v61;
  UnknownProperties.init()();
  v28 = [v27 isLocked];
  if (!v28)
  {
    v35 = v65;
    v30 = v62;
    goto LABEL_8;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v29 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v28);
    v30 = v62;
    *(&v48 - 2) = v31;
    *(&v48 - 1) = v30;
    MEMORY[0x1EEE9AC00](v32);
    *(&v48 - 2) = closure #1 in PasswordManager.password(for:)partial apply;
    *(&v48 - 1) = v33;
    os_unfair_lock_lock(v29 + 4);
    v34 = v65;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v64);
    if (v34)
    {
      os_unfair_lock_unlock(v29 + 4);
      __break(1u);
      return;
    }

    v35 = 0;
    os_unfair_lock_unlock(v29 + 4);
    if (!*(&v64 + 1) || (v36 = MEMORY[0x1DA6CCED0](v64, *(&v64 + 1)), , v37 = [v27 unlockWithPassword_], v36, (v37 & 1) == 0))
    {
      v65 = 0;
      (*(v55 + 8))(v30, v57);
      outlined destroy of PaperDocument(v18, type metadata accessor for PaperDocument);
      v38 = 1;
      v39 = v58;
      goto LABEL_10;
    }

LABEL_8:
    v40 = [v27 pageCount];
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    v28 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v40);
  *(&v48 - 6) = v18;
  *(&v48 - 5) = v27;
  v41 = v63;
  *(&v48 - 4) = v30;
  *(&v48 - 3) = v41;
  *(&v48 - 2) = 0;
  *(&v48 - 8) = 1;
  specialized Sequence.compactMap<A>(_:)(closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)specialized partial apply, (&v48 - 8), 0, v42);
  v65 = v35;
  *&v64 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd, &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMR);
  v62 = v23;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_3<TaggedPaperPage>] and conformance [A], &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd, &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMR, MEMORY[0x1E69E6328]);
  CROrderedSet.append<A>(contentsOf:)();

  v44 = v57;
  v52(v25, v30, v57);
  v50(v25, 0, 1, v44);
  outlined init with copy of Date?(v25, v54, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  (*(v55 + 8))(v30, v44);
  v39 = v58;
  outlined init with take of PaperDocument(v18, v58, type metadata accessor for PaperDocument);
  v38 = 0;
LABEL_10:
  v45 = v56;
  v46 = v60;
  (*(v56 + 56))(v39, v38, 1, v60);
  if ((*(v45 + 48))(v39, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  }

  else
  {
    v47 = v48;
    outlined init with take of PaperDocument(v39, v48, type metadata accessor for PaperDocument);
    outlined init with copy of PaperDocument(v47, v49, type metadata accessor for PaperDocument);
    Capsule.Ref.root.setter();
    outlined destroy of PaperDocument(v47, type metadata accessor for PaperDocument);
  }
}

void PaperDocumentViewController.unlock(pdfDocument:asset:context:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  *&v9 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v11 = &v29 - v10;
  v12 = [v3 view];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for PaperDocumentPasswordViewController(0);
    v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v14[OBJC_IVAR____TtC8PaperKit22PasswordViewController_delegate + 8] = &protocol witness table for PaperDocumentViewController;
    swift_unknownObjectWeakAssign();
    v30 = v14;
    v15 = [v30 view];
    if (v15)
    {
      v16 = v15;
      v17 = &v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        (*(v18 + 24))(v4, a1, ObjectType, v18);
        swift_unknownObjectRelease();
      }

      [v4 addChildViewController_];
      [v13 addSubview_];
      specialized static NSLayoutConstraint.constrain(_:to:)(v16, v13);
      [v30 didMoveToParentViewController_];

      v20 = *&v30[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock];
      *&v30[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock] = a1;
      v21 = a1;

      v22 = type metadata accessor for CRAsset();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v11, a2, v22);
      (*(v23 + 56))(v11, 0, 1, v22);
      v24 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_assetToUnlock;
      swift_beginAccess();
      outlined assign with take of UUID?(v11, &v30[v24], &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      swift_endAccess();
      v25 = *&v30[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument];
      *&v30[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument] = a3;
      v26 = a3;

      v27 = *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController];
      *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController] = v30;
    }

    else
    {

      v28 = v30;
    }
  }
}

void PaperDocumentViewController.updateThumbnailViewConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
    swift_beginAccess();
    [v1 setActive_];
  }

  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  swift_beginAccess();
  if (v0[v3] & 1) != 0 || (v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed, swift_beginAccess(), (v0[v4]))
  {
    v5 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint];
    if (v5)
    {
      v6 = v5;
      v7 = [v0 traitCollection];
      v8 = [v7 horizontalSizeClass];

      [v6 setActive_];
    }
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint];
    if (v9)
    {
      [v9 setActive_];
    }
  }
}

Swift::Void __swiftcall PaperDocumentViewController.updateBackgroundColor()()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor];
    v6 = v4;
    v7 = [v0 traitCollection];
    v8 = [v5 resolvedColorWithTraitCollection_];

    v9 = v8;
    [v6 setBackgroundColor_];
    v10 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v11 = *&v6[v10];
    if (v11)
    {
      [v11 setBackgroundColor_];
      v12 = [v0 view];
      if (v12)
      {
        v13 = v12;
        [v12 setBackgroundColor_];

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_5:
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 6)
  {
    v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
    swift_beginAccess();
    v17 = *&v0[v16];
    if (v17)
    {
      v18 = v17;
      if (_UISolariumEnabled())
      {
        v19 = v18;
        static _Glass._GlassVariant.regular.getter();
        v26[3] = type metadata accessor for _Glass();
        v26[4] = MEMORY[0x1E69DC388];
        __swift_allocate_boxed_opaque_existential_1(v26);
        _Glass.init(_:smoothness:)();
        UIView._background.setter();
        [v19 setBackgroundColor_];
      }

      else if (*&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor])
      {
        [v18 setBackgroundColor_];
      }

      else
      {
        v20 = objc_opt_self();
        v21 = v18;
        v22 = [v20 tertiarySystemGroupedBackgroundColor];
        [v21 setBackgroundColor_];
      }

      v23 = *&v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView];
      if (v23)
      {
        v24 = v23;
        v25 = [v18 backgroundColor];
        [v24 setBackgroundColor_];
      }
    }
  }
}

uint64_t PaperDocumentViewController.setupDocumentView(context:)(uint64_t a1)
{
  v2[77] = v1;
  v2[76] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2[81] = v3;
  v2[82] = *(v3 - 8);
  v2[83] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[84] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[85] = v5;
  v2[86] = v4;

  return MEMORY[0x1EEE6DFA0](PaperDocumentViewController.setupDocumentView(context:), v5, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *(*v1 + 608);
  *(*v1 + 736) = a1;

  v5 = *(v2 + 688);
  v6 = *(v2 + 680);

  return MEMORY[0x1EEE6DFA0](PaperDocumentViewController.setupDocumentView(context:), v6, v5);
}

uint64_t PaperDocumentViewController.setupDocumentView(context:)()
{
  v1 = *(v0 + 616);
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  *(v0 + 696) = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 664);
    v5 = *(v0 + 656);
    v6 = *(v0 + 648);
    v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    (*(v5 + 16))(v4, v3 + v7, v6);
  }

  else
  {
    v8 = *(v0 + 656);
    v9 = *(v0 + 648);
    v10 = *(v0 + 640);
    v11 = *(v0 + 616);
    v12 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
    swift_beginAccess();
    outlined init with copy of Date?(v11 + v12, v10, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    result = (*(v8 + 48))(v10, 1, v9);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(*(v0 + 656) + 32))(*(v0 + 664), *(v0 + 640), *(v0 + 648));
  }

  v14 = *(v0 + 616);
  v15 = *(v0 + 608);
  v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  *(v0 + 704) = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  swift_beginAccess();
  *(v0 + 768) = *(v14 + v16);
  v17 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  *(v0 + 712) = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  v18 = *(v14 + v17);
  *(v0 + 720) = v18;
  objc_allocWithZone(type metadata accessor for PaperDocumentView(0));
  v19 = v18;
  v20 = v15;
  v21 = swift_task_alloc();
  *(v0 + 728) = v21;
  *v21 = v0;
  v21[1] = PaperDocumentViewController.setupDocumentView(context:);
  v22 = *(v0 + 664);
  v23 = *(v0 + 608);

  return specialized PaperDocumentView.init(context:document:editingMode:toolPicker:)(v23, v22, (v0 + 768), v18);
}

void PaperDocumentViewController.setupDocumentView(context:)()
{
  v297 = v0;
  v1 = v0[92];
  v2 = v0[77] + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = Strong;
  v5[4] = v4;
  v0[74] = v1;
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  swift_unknownObjectRelease();

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v294 = v0;
  swift_beginAccess();
  v295 = v1;
  v280 = v6;
  v7 = *(v1 + v6);
  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v12 = (63 - v10) >> 6;
  v286 = v7;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v286[7] + ((v14 << 10) | (16 * v15));
      v18 = *v16;
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      v20 = swift_unknownObjectWeakLoadStrong();
      v21 = *(v17 + 224);
      v22 = v18;
      v21(v20, ObjectType, v17);

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_93;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  v23 = v294[77];

  v24 = [v23 view];
  if (!v24)
  {
    goto LABEL_95;
  }

  v25 = v24;
  v26 = v294[92];
  [v25 addSubview_];

  v27 = *&v26[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
  if (!v27)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v28 = v27;
  v29 = specialized TiledPaperKitView.mostVisibleAttachment()(specialized TiledPaperKitView.paperAttachments(includeStandInAttachment:));

  if (v29)
  {
    [v29 becomeFirstResponder];
  }

  v30 = v294[77];
  v31 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker;
  v32 = *&v30[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker];
  if (v32)
  {
    v33 = v32;
    PaperDocumentView.updateTiledViewInk(for:)(v33);

    v34 = *&v30[v31];
    *&v30[v31] = 0;

    v30 = v294[77];
  }

  v35 = [v30 view];
  if (!v35)
  {
    goto LABEL_97;
  }

  v36 = v35;
  [v35 frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView()) initWithFrame_];
  v46 = [objc_opt_self() currentDevice];
  v47 = [v46 userInterfaceIdiom];

  if (v47 == 6)
  {
    [v294[92] setOverrideUserInterfaceStyle_];
  }

  v48 = v294[77];

  v49 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
  swift_beginAccess();
  v272 = v48;
  if (*(v48 + v49))
  {
    v50 = 1;
  }

  else
  {
    v51 = v294[92];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v52 = v51;
    PaperDocumentThumbnailView.documentView.didset();

    v50 = *(v48 + v49);
  }

  v53 = v294[77];
  v54 = v45;
  [v54 setHidden_];
  v55 = [v53 view];
  if (!v55)
  {
    goto LABEL_98;
  }

  v56 = v55;
  v57 = v294[77];
  [v55 addSubview_];

  v58 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v59 = *(v57 + v58);
  *(v57 + v58) = v54;
  v60 = v54;

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v61 = v294[77];
    v62 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v62 setTranslatesAutoresizingMaskIntoConstraints_];
    v63 = [v61 view];
    if (!v63)
    {
      goto LABEL_110;
    }

    v64 = v63;
    v65 = v294[77];
    [v63 insertSubview:v62 belowSubview:v60];

    v66 = *(v65 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView);
    *(v65 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView) = v62;
  }

  v67 = [v294[77] view];
  if (!v67)
  {
    goto LABEL_99;
  }

  v68 = v67;
  v69 = v294[92];
  v284 = [v67 topAnchor];

  [v69 setTranslatesAutoresizingMaskIntoConstraints_];
  [v60 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    [v60 setClipsToBounds_];
  }

  v277 = v49;
  v70 = v294[77];
  if (_UISolariumEnabled())
  {
    v71 = 16.0;
  }

  else
  {
    v71 = 0.0;
  }

  v72 = [v60 leadingAnchor];
  v73 = [v70 &selRef_shouldHighlightTextAndDDAfterNextAnalysis];
  if (v73)
  {
    v74 = v73;
    v75 = v294[92];
    v76 = v294[77];
    v77 = [v73 safeAreaLayoutGuide];

    v78 = [v77 leadingAnchor];
    v79 = [v72 constraintEqualToAnchor:v78 constant:v71];

    v80 = *&v76[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint];
    *&v76[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint] = v79;
    v81 = v79;

    v82 = [v75 leadingAnchor];
    v83 = [v60 trailingAnchor];
    v84 = [v82 constraintEqualToAnchor_];

    v85 = [v76 traitCollection];
    v86 = [v85 horizontalSizeClass];

    [v84 setActive_];
    v87 = *&v76[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint];
    *&v76[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint] = v84;
    v287 = v84;

    v285 = v60;
    v88 = [v60 trailingAnchor];
    v89 = [v76 view];
    if (!v89)
    {
      goto LABEL_101;
    }

    v90 = v89;
    v91 = v294[92];
    v92 = v294[77];
    v93 = [v89 leadingAnchor];

    v94 = [v88 constraintEqualToAnchor_];
    type metadata accessor for UILayoutPriority(0);
    v281 = v81;
    [v81 priority];
    *(v294 + 186) = v95;
    *(v294 + 187) = 1065353216;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v96) = *(v294 + 191);
    [v94 setPriority_];
    v97 = [v91 leadingAnchor];

    v98 = [v92 view];
    if (!v98)
    {
      goto LABEL_102;
    }

    v99 = v98;
    v100 = v294[92];
    v101 = v294[77];
    v102 = [v98 leadingAnchor];

    v103 = [v97 constraintEqualToAnchor_];
    [v287 priority];
    *(v294 + 189) = v104;
    *(v294 + 190) = 1065353216;
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v105) = *(v294 + 188);
    [v103 setPriority_];
    v106 = [v101 traitCollection];
    v107 = PaperDocumentThumbnailView.defaultThumbnailWidth(for:)(v106);

    v108 = [v60 widthAnchor];
    v109 = [v108 constraintEqualToConstant_];

    v110 = *&v101[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint];
    *&v101[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint] = v109;
    v278 = v109;

    v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_1D40617C0;
    *(v111 + 32) = v103;
    *(v111 + 40) = v287;
    v112 = v287;
    v276 = v103;
    v113 = [v100 trailingAnchor];

    v114 = [v101 view];
    if (!v114)
    {
      goto LABEL_103;
    }

    v115 = v114;
    v275 = v112;
    v116 = v294[92];
    v117 = v294[77];
    v118 = [v114 trailingAnchor];

    v119 = [v113 constraintEqualToAnchor_];
    *(v111 + 48) = v119;
    v120 = [v116 topAnchor];

    v121 = [v120 constraintEqualToAnchor_];
    *(v111 + 56) = v121;
    v122 = [v116 bottomAnchor];

    v123 = [v117 view];
    if (!v123)
    {
      goto LABEL_104;
    }

    v124 = v123;
    v125 = v294[77];
    v126 = [v123 bottomAnchor];

    v127 = [v122 &selRef:v126 setFindInteractionEnabled:? + 5];
    *(v111 + 64) = v127;
    *(v111 + 72) = v281;
    *(v111 + 80) = v94;
    v274 = v281;
    v273 = v94;
    v128 = [v60 topAnchor];
    v129 = [v125 view];
    if (!v129)
    {
      goto LABEL_105;
    }

    v130 = v129;
    v131 = v294[77];
    v132 = [v129 safeAreaLayoutGuide];

    v133 = [v132 topAnchor];
    v134 = [v128 constraintEqualToAnchor:v133 constant:v71];

    *(v111 + 88) = v134;
    v135 = [v60 bottomAnchor];
    v136 = [v131 view];
    if (!v136)
    {
      goto LABEL_106;
    }

    v137 = v136;
    v138 = objc_opt_self();
    v139 = [v137 safeAreaLayoutGuide];

    v140 = v138;
    v141 = [v139 bottomAnchor];

    v142 = [v135 constraintEqualToAnchor:v141 constant:-v71];
    *(v111 + 96) = v142;
    *(v111 + 104) = v278;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    v279 = v278;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v138 activateConstraints_];

    v144 = _UISolariumEnabled();
    v145 = v294[77];
    if ((v144 & 1) != 0 || (v146 = *&v145[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView]) == 0)
    {
      v163.super.isa = v285;
    }

    else
    {
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_1D405B630;
      v148 = v146;
      v149 = [v148 topAnchor];
      v150 = [(objc_class *)v285 topAnchor];
      v151 = [v149 constraintEqualToAnchor_];

      *(v147 + 32) = v151;
      v152 = [v148 bottomAnchor];
      v153 = [(objc_class *)v285 bottomAnchor];
      v154 = [v152 constraintEqualToAnchor_];

      *(v147 + 40) = v154;
      v155 = [v148 leadingAnchor];
      v156 = [v145 view];
      if (!v156)
      {
        goto LABEL_113;
      }

      v157 = v156;
      v158 = [v156 leadingAnchor];

      v159 = [v155 constraintEqualToAnchor_];
      *(v147 + 48) = v159;
      v160 = [v148 trailingAnchor];
      v161 = [(objc_class *)v285 trailingAnchor];

      v162 = [v160 constraintEqualToAnchor_];
      *(v147 + 56) = v162;
      v163.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v140 activateConstraints_];

      v145 = v294[77];
    }

    v164 = v294[92];
    v165 = v294[89];
    v166 = v294[87];

    v167 = *&v145[v165];
    v168 = v167;
    PaperDocumentView.toolPicker.setter(v167);
    v169 = *&v145[v166];
    *&v145[v166] = v164;
    v170 = v164;

    swift_unknownObjectWeakAssign();
    v171 = *(v295 + v280);
    v174 = *(v171 + 64);
    v173 = v171 + 64;
    v172 = v174;
    v175 = -1;
    v176 = -1 << *(*(v295 + v280) + 32);
    if (-v176 < 64)
    {
      v175 = ~(-1 << -v176);
    }

    v177 = v175 & v172;
    v178 = (63 - v176) >> 6;
    v288 = *(v295 + v280);

    v179 = 0;
    while (v177)
    {
      v180 = v179;
LABEL_53:
      v181 = __clz(__rbit64(v177));
      v177 &= v177 - 1;
      v182 = v288[7] + ((v180 << 10) | (16 * v181));
      v183 = *v182;
      v184 = *(v182 + 8);
      v185 = swift_getObjectType();
      v186 = swift_unknownObjectWeakLoadStrong();
      v187 = *(v184 + 224);
      v188 = v183;
      v187(v186, v185, v184);
    }

    while (1)
    {
      v180 = v179 + 1;
      if (__OFADD__(v179, 1))
      {
        break;
      }

      if (v180 >= v178)
      {
        v189 = v294;
        v190 = v294[92];
        v191 = v294[77];
        v291 = v191;

        v192 = v191 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger;
        swift_beginAccess();
        v193 = swift_unknownObjectWeakLoadStrong();
        v194 = *(v192 + 8);
        swift_getKeyPath();
        v195 = swift_task_alloc();
        v195[2] = v190;
        v195[3] = v193;
        v195[4] = v194;
        v294[73] = v190;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        swift_unknownObjectRelease();

        v196 = v291 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource;
        swift_beginAccess();
        v197 = swift_unknownObjectWeakLoadStrong();
        v198 = *(v196 + 8);
        swift_getKeyPath();
        v199 = swift_task_alloc();
        v199[2] = v190;
        v199[3] = v197;
        v199[4] = v198;
        v294[65] = v190;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        swift_unknownObjectRelease();

        v200 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
        swift_beginAccess();
        v201 = *(v291 + v200);
        v202 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
        swift_beginAccess();
        if (v201 == *(v190 + v202))
        {
          *(v190 + v202) = v201;
          v205 = *(v295 + v280);
          v208 = *(v205 + 64);
          v207 = v205 + 64;
          v206 = v208;
          v209 = -1;
          v210 = -1 << *(*(v295 + v280) + 32);
          if (-v210 < 64)
          {
            v209 = ~(-1 << -v210);
          }

          v211 = v209 & v206;
          v212 = (63 - v210) >> 6;
          v289 = *(v295 + v280);

          v213 = 0;
          v282 = v190;
          while (v211)
          {
            v214 = v213;
LABEL_65:
            v215 = v294[92];
            v216 = __clz(__rbit64(v211));
            v211 &= v211 - 1;
            v217 = v289[7] + ((v214 << 10) | (16 * v216));
            v218 = *v217;
            v219 = *(v217 + 8);
            v292 = swift_getObjectType();
            swift_getKeyPath();
            v294[75] = v215;
            v220 = v218;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            (*(v219 + 176))(*(v282 + v202), v292, v219);
          }

          while (1)
          {
            v214 = v213 + 1;
            if (__OFADD__(v213, 1))
            {
              goto LABEL_94;
            }

            if (v214 >= v212)
            {

              v189 = v294;
              goto LABEL_68;
            }

            v211 = *(v207 + 8 * v214);
            ++v213;
            if (v211)
            {
              v213 = v214;
              goto LABEL_65;
            }
          }
        }

        v203 = v294[92];
        swift_getKeyPath();
        v204 = swift_task_alloc();
        *(v204 + 16) = v203;
        *(v204 + 24) = v201;
        v294[70] = v203;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_68:
        v221 = v189[77] + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate;
        swift_beginAccess();
        v222 = swift_unknownObjectWeakLoadStrong();
        v283 = v221;
        if (v222)
        {
          v223 = *(*(v221 + 8) + 8);
          v224 = v222;
        }

        else
        {
          v224 = 0;
          v223 = 0;
        }

        v225 = v189[92];
        v226 = v189[82];
        v293 = v189[81];
        v227 = v189[79];
        v228 = v189[77];
        swift_getKeyPath();
        v229 = swift_task_alloc();
        v229[2] = v225;
        v229[3] = v224;
        v229[4] = v223;
        v189[67] = v225;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        swift_unknownObjectRelease();

        v230 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
        swift_beginAccess();
        v290 = v228;
        outlined init with copy of Date?(v228 + v230, v227, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
        if ((*(v226 + 48))(v227, 1, v293) == 1)
        {
          goto LABEL_107;
        }

        v231 = v189[92];
        v232 = v189[88];
        v233 = v189[82];
        v234 = v189[81];
        v235 = v189[79];
        v236 = v189[77];
        specialized PaperDocumentView.merge<A>(_:from:page:)(v235, 0, 0);
        (*(v233 + 8))(v235, v234);
        v296[0] = *(v236 + v232);
        PaperDocumentView.editingMode.setter(v296);
        v237 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode;
        swift_beginAccess();
        v238 = *(v236 + v237);
        if (*(v231 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode) != v238)
        {
          v239 = v189[92];
          swift_getKeyPath();
          v240 = swift_task_alloc();
          *(v240 + 16) = v239;
          *(v240 + 24) = v238;
          v189[66] = v239;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        if (_UISolariumEnabled())
        {
          v241 = v189[92];
          v242 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
          swift_beginAccess();
          v243 = *(v241 + v242);
          if (!v243)
          {
            goto LABEL_111;
          }

          v244 = [v243 documentScrollView];
          if (v244)
          {
            v245 = v244;
            [v244 setClipsToBounds_];
          }

          v246 = [v189[77] view];
          if (!v246)
          {
            goto LABEL_112;
          }

          v247 = v246;
          [v246 setClipsToBounds_];
        }

        v248 = v189[92];
        v249 = v189[78];
        v250 = v189[77];
        (*(v189[82] + 56))(v249, 1, 1, v189[81]);
        swift_beginAccess();
        outlined assign with take of UUID?(v249, v290 + v230, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
        swift_endAccess();
        v189[68] = *(v248 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_passThroughSubject);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<Capsule<PaperDocument>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR, MEMORY[0x1E695BF88]);
        v189[69] = Publisher.eraseToAnyPublisher()();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<PaperDocument>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR, MEMORY[0x1E695BED8]);
        Publisher<>.sink(receiveValue:)();

        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v294[71] = *(v248 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_livePassThroughSubject);
        v294[72] = Publisher.eraseToAnyPublisher()();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        Publisher<>.sink(receiveValue:)();

        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        PaperDocumentViewController.setUpObservers()();
        PaperDocumentViewController.updateGestureRecognizers()();
        PaperDocumentViewController.updateBackgroundColor()();
        v251 = [v250 view];
        if (!v251)
        {
          goto LABEL_108;
        }

        v252 = v251;
        v253 = v294[77];
        [v251 layoutIfNeeded];

        [v253 becomeFirstResponder];
        PaperDocumentViewController.showPageNumberOverlay(animated:)(0);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v254 = v294[92];
          v255 = v294[77];
          v256 = *(v283 + 8);
          v257 = swift_getObjectType();
          (*(v256 + 16))(v255, v254, v257, v256);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v258 = v294[92];
          v259 = *(v283 + 8);
          v260 = swift_getObjectType();
          (*(*(v259 + 8) + 56))(v258, *(v272 + v277), v260);
          swift_unknownObjectRelease();
        }

        v261 = v294[77];
        v262 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController;
        v263 = *(v261 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController);
        if (v263)
        {
          v264 = v263;
          [v264 willMoveToParentViewController_];
          v265 = [v264 view];
          if (!v265)
          {
            goto LABEL_109;
          }

          v266 = v265;
          v267 = v294[92];

          [v266 removeFromSuperview];

          [v264 removeFromParentViewController];
          v268 = *(v261 + v262);
          *(v261 + v262) = 0;
        }

        else
        {
          v269 = v294[92];

          v268 = v274;
        }

        v270 = v294[1];

        v270();
        return;
      }

      v177 = *(v173 + 8 * v180);
      ++v179;
      if (v177)
      {
        v179 = v180;
        goto LABEL_53;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
}

void closure #1 in PaperDocumentViewController.setupDocumentView(context:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v6, a1, v3);
    v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    (*(v4 + 32))(v11 + v10, v6, v3);

    PaperDocumentViewController.requirePasswordIfNeeded(completion:)(partial apply for closure #1 in closure #1 in PaperDocumentViewController.setupDocumentView(context:), v11);
  }
}

void closure #1 in closure #1 in PaperDocumentViewController.setupDocumentView(context:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {

      PassthroughSubject.send(_:)();
    }

    else
    {
      v6 = [Strong undoManager];
      if (v6)
      {
        v7 = v6;
        if ([v6 canUndo])
        {
          [v7 undo];
        }
      }
    }
  }
}

double closure #2 in PaperDocumentViewController.setupDocumentView(context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    PassthroughSubject.send(_:)();
  }

  return result;
}

void PaperDocumentViewController.setUpObservers()()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v5 documentScrollView];
  if (!v6)
  {

LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  [v9 addObserver:v0 selector:sel_pageDidChange_ name:*MEMORY[0x1E6978148] object:v5];

  v10 = [v8 defaultCenter];
  [v10 addObserver:v0 selector:sel_pageWillScroll_ name:*MEMORY[0x1E6978138] object:v7];

  v11 = [v8 defaultCenter];
  [v11 addObserver:v0 selector:sel_pageDidScroll_ name:*MEMORY[0x1E6978130] object:v7];

  v12 = *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_scrollViewObserver);
  swift_unknownObjectWeakAssign();
  v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14)
  {
    v15 = [*(v14 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView) collectionView];
    [v15 _addScrollViewScrollObserver_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D4058CF0;
  v17 = type metadata accessor for UITraitUserInterfaceStyle();
  v18 = MEMORY[0x1E69DC0F8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

void PaperDocumentViewController.pageDidChange(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v7 = v6;
      if ([a1 object])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }

      v12[0] = v10;
      v12[1] = v11;
      if (*(&v11 + 1))
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFView, 0x1E6978048);
        if (swift_dynamicCast())
        {
          v7 = v7;
          v8 = static NSObject.== infix(_:_:)();

          if (v8)
          {
            PaperDocumentViewController.showPageNumberOverlay(animated:)(0);
          }
        }
      }

      else
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_sypSgMd, &_sypSgMR);
      }
    }
  }
}

void PaperDocumentViewController.pageWillScroll(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v7 = [v6 documentScrollView];
      if (v7)
      {
        v8 = v7;
        if ([a1 object])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = 0u;
          v17 = 0u;
        }

        v18[0] = v16;
        v18[1] = v17;
        if (*(&v17 + 1))
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIScrollView, 0x1E69DCEF8);
          if (swift_dynamicCast())
          {
            v9 = v1;
            v8 = v8;
            v10 = static NSObject.== infix(_:_:)();

            if (v10)
            {
              PaperDocumentViewController.showPageNumberOverlay(animated:)(0);
              v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
              swift_beginAccess();
              if (*(v9 + v11) == 1)
              {
                v12 = [v9 traitCollection];
                v13 = [v12 horizontalSizeClass];

                if (v13 == 1)
                {
                  v14 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
                  swift_beginAccess();
                  if (*(v9 + v14) != 1)
                  {
                    *(v9 + v14) = 1;
                    PaperDocumentViewController.isThumbnailViewCollapsed.didset(0);
                  }
                }
              }
            }
          }
        }

        else
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_sypSgMd, &_sypSgMR);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall PaperDocumentViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for PaperDocumentViewController(0);
  objc_msgSendSuper2(&v27, sel_traitCollectionDidChange_, isa);
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 traitCollection];
    v8 = PaperDocumentThumbnailView.defaultThumbnailWidth(for:)(v7);

    [*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint] setConstant_];
    v9 = [v2 traitCollection];
    PaperDocumentThumbnailView.defaultThumbnailWidth(for:)(v9);
    PaperDocumentThumbnailView.defaultThumbnailViewCellSize(for:)(v10);
    v12 = v11;
    v14 = v13;

    v15 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView;
    [*&v6[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView] thumbnailSize];
    v18 = vabdd_f64(v14, v17);
    if (vabdd_f64(v12, v16) >= 1.0 || v18 >= 1.0)
    {
      [*&v6[v15] setThumbnailSize_];
      v6[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_dynamicThumbnailSizing] = 0;
    }
  }

  if (v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] == 1)
  {
    v20 = PaperDocumentViewController.pageLabelView.getter();
    v21 = [v2 traitCollection];
    v22 = [v21 horizontalSizeClass];

    if (v22 == 1)
    {
      v23 = 1;
    }

    else
    {
      v24 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth;
      swift_beginAccess();
      v23 = v2[v24];
    }

    v20[OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon] = v23;
  }

  v25 = [v2 view];
  if (v25)
  {
    v26 = v25;
    [v25 setNeedsUpdateConstraints];
  }

  else
  {
    __break(1u);
  }
}

void PaperDocumentViewController.requirePasswordIfNeeded(completion:)(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest;
  if ((v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest] & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v17 = *&v2[v16];
    if (v17)
    {
      v33 = a2;
      v2[v15] = 1;
      v18 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
      swift_beginAccess();
      outlined init with copy of Date?(&v2[v18], v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        v19 = v17;
        outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v32 = v2;
        (*(v9 + 32))(v14, v7, v8);
        v20 = v17;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v22 = v21;
        v23 = *(v9 + 8);
        v23(v11, v8);
        if (v22 < 0.1)
        {
          v2 = v32;
          if (a1)
          {
            a1(v32[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded]);
            v2 = v32;

            v23(v14, v8);
          }

          else
          {
            v23(v14, v8);
          }

          goto LABEL_10;
        }

        v23(v14, v8);
        v2 = v32;
      }

      v24 = v33;
      v25 = *&v17[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument];
      v26 = [v25 permissionsStatus];
      v27 = [v2 firstResponder];
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = v26;
      v29[4] = v27;
      v29[5] = a1;
      v29[6] = v24;
      aBlock[4] = partial apply for closure #1 in PaperDocumentViewController.requirePasswordIfNeeded(completion:);
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned PDFRequirePasswordsResult) -> ();
      aBlock[3] = &block_descriptor_204;
      v30 = _Block_copy(aBlock);
      v31 = v27;
      outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(a1, v24);

      [v25 requirePasswordsIfNeededUsingPresentingViewController:v2 completion:v30];

      _Block_release(v30);
LABEL_10:
      v2[v15] = 0;
    }
  }
}

void closure #1 in PaperDocumentViewController.requirePasswordIfNeeded(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(BOOL))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest;
    *(Strong + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest) = 1;
    static Date.now.getter();
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
    v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
    swift_beginAccess();
    outlined assign with take of UUID?(v11, &v13[v16], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    v13[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded] = a1 != 1;
    if (a1 != 2)
    {
      if (!a1)
      {
        v17 = [v13 undoManager];
        if (v17)
        {
          v18 = v17;
          if ([v17 canUndo] && a3 == 1)
          {
            [v18 undo];
            [v18 redo];
          }
        }
      }

      [a4 becomeFirstResponder];
    }

    if (a5)
    {
      a5(a1 != 1);
    }

    v13[v14] = 0;
  }
}

double thunk for @escaping @callee_guaranteed @Sendable (@unowned PDFRequirePasswordsResult) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

Swift::Void __swiftcall PaperDocumentViewController.updatePlusButton()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  swift_beginAccess();
  v3 = v1[v2];
  v4 = *&v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton];
  if (v3 == 1)
  {
    v5 = [*&v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton] superview];
    if (v5)
    {

      [v4 removeFromSuperview];
    }

    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 addSubview_];

      v8 = [v1 view];
      if (v8)
      {
        v9 = v8;
        FormPlusButtonView.setConstraintsBasedOn(_:)(v8);

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();

        FormPlusButtonView.setMenuWithActions(addTextBoxHandler:addSignatureHandler:)(partial apply for closure #1 in PaperDocumentViewController.updatePlusButton(), v10, partial apply for closure #2 in PaperDocumentViewController.updatePlusButton(), v11);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton] removeFromSuperview];
  }
}

void closure #1 in PaperDocumentViewController.updatePlusButton()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v235 = &v208 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v208 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v208 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v233 = *(v14 - 8);
  v234 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v258 = &v208 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v256 = *(v16 - 8);
  v257 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v255 = &v208 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v253 = *(v18 - 8);
  v254 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v252 = &v208 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v249 = *(v20 - 8);
  v250 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v248 = &v208 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v246 = *(v22 - 8);
  v247 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v244 = &v208 - v23;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v243);
  v242 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v241 = &v208 - v26;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v238 = &v208 - v29;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v237);
  v264 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v263 = &v208 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v245 = &v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v267 = &v208 - v36;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v261);
  v38 = &v208 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v260 = &v208 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v266 = &v208 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v273 = &v208 - v44;
  v269 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v269);
  v236 = &v208 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v259 = &v208 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v270 = (&v208 - v49);
  v262 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v262);
  v251 = &v208 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v208 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v265 = &v208 - v55;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v268 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v232 = &v208 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v271 = &v208 - v58;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v60 = Strong;
    v230 = v7;
    v61 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v62 = *&v60[v61];
    if (v62)
    {
      v231 = v60;
      v229 = v13;
      v63 = *(v62 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
      if (!v63)
      {
        __break(1u);
        goto LABEL_31;
      }

      v64 = *(v63 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
      v65 = &v64[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v227 = v5;
        v228 = v10;
        v226 = v4;
        v66 = *(v65 + 1);
        ObjectType = swift_getObjectType();
        v68 = *(v66 + 16);
        v69 = v64;
        v70 = v68(ObjectType, v66);

        swift_unknownObjectRelease();
        if (v70)
        {
          v60 = v231;
          v71 = *&v231[v61];
          if (!v71 || (v72 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView, swift_beginAccess(), (v73 = *(v71 + v72)) == 0))
          {
LABEL_25:

            goto LABEL_26;
          }

          v74 = v73;
          [v74 frame];
          x = v278.origin.x;
          y = v278.origin.y;
          width = v278.size.width;
          height = v278.size.height;
          MidX = CGRectGetMidX(v278);
          v279.origin.x = x;
          v279.origin.y = y;
          v279.size.width = width;
          v279.size.height = height;
          MidY = CGRectGetMidY(v279);
          v81 = *MEMORY[0x1E69E7D40] & *v70;
          v82 = MidY + -12.5;
          v224 = *(v81 + 0x440);
          v225 = v81 + 1088;
          v83 = v224();
          v209 = v74;
          [v83 convertRect:v74 fromCoordinateSpace:{MidX + -75.0, v82, 150.0, 25.0}];
          v85 = v84;
          v87 = v86;
          v89 = v88;
          v91 = v90;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D405FD70;
          v93 = *MEMORY[0x1E69DB648];
          *(inited + 32) = *MEMORY[0x1E69DB648];
          *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
          v94 = v93;
          specialized static FormFillingView.fontThatFits(frame:)(v85, v87, v89, v91);
          v95 = MEMORY[0x1E69DB688];
          *(inited + 40) = v96;
          v97 = *v95;
          *(inited + 72) = *v95;
          v98 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
          v99 = v97;
          v100 = [v98 init];
          [v100 setAlignment_];
          v101 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
          *(inited + 80) = v100;
          v102 = *MEMORY[0x1E69DB660];
          *(inited + 104) = v101;
          *(inited + 112) = v102;
          *(inited + 144) = MEMORY[0x1E69E7DE0];
          *(inited + 120) = 0;
          v103 = v102;
          v104 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
          swift_arrayDestroy();
          v105 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v106 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
          type metadata accessor for NSAttributedStringKey(0);
          lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          [v105 initWithString:v106 attributes:isa];

          MEMORY[0x1EEE9AC00](v108);
          v109 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
          CRAttributedString.init(_:transformAttributes:)();
          swift_storeEnumTagMultiPayload();
          v110 = type metadata accessor for Color(0);
          v111 = *(v110 + 20);
          v112 = type metadata accessor for UnknownValueProperties();
          (*(*(v112 - 8) + 56))(&v273[v111], 1, 1, v112);
          if (one-time initialization token for extendedSRGBColorSpace != -1)
          {
            swift_once();
          }

          v113 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
          v114 = v272;
          if (v113)
          {
            v115 = v113;
            v220 = v109;
            v221 = v104;
            v222 = v70;
            CGColorRef.calculateMinimumHeadroom.getter();
            v116 = CGColorCreateWithContentHeadroom();
            if (v116)
            {
              v117 = v116;

              *v273 = v117;
              v118 = v110;
              v119 = *(v110 - 8);
              v120 = *(v119 + 56);
              v121 = v119 + 56;
              v120();
              (v120)(v266, 1, 1, v110);
              v213 = v121;
              v122 = v120;
              v218 = v120;
              v123 = v267;
              v124 = v268;
              (*(v268 + 16))(v267, v271, v114);
              (*(v124 + 56))(v123, 0, 1, v114);
              type metadata accessor for CGRect(0);
              v217 = v125;
              v216 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
              v274 = 0u;
              v275 = 0u;
              CRRegister.init(wrappedValue:)();
              v126 = v262;
              *&v274 = 0;
              v223 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
              CRRegister.init(_:)();
              v219 = v126[6];
              v127 = v260;
              (v122)(v260, 1, 1, v118);
              outlined init with copy of Date?(v127, v38, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              v214 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              v215 = v126[7];
              (v218)(v127, 1, 1, v118);
              outlined init with copy of Date?(v127, v38, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              v213 = v126[8];
              *&v274 = 0x4014000000000000;
              CRRegister.init(wrappedValue:)();
              v212 = v126[9];
              v128 = v259;
              swift_storeEnumTagMultiPayload();
              outlined init with copy of PaperDocument(v128, v236, type metadata accessor for ShapeType);
              v210 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
              CRRegister.init(wrappedValue:)();
              outlined destroy of PaperDocument(v128, type metadata accessor for ShapeType);
              *&v274 = 0x3FF0000000000000;
              CRRegister.init(wrappedValue:)();
              *&v274 = 0;
              BYTE8(v274) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
              lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
              CRRegister.init(wrappedValue:)();
              *&v274 = 0;
              BYTE8(v274) = 0;
              CRRegister.init(wrappedValue:)();
              v208 = v126[13];
              CRAttributedString.init(_:)();
              v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
              v130 = *(v129 - 8);
              v131 = *(v130 + 56);
              v132 = v263;
              v236 = v129;
              v220 = v131;
              v218 = (v130 + 56);
              (v131)(v263, 1, 1);
              outlined init with copy of Date?(v132, v264, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
              lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v132, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
              v133 = v126[15];
              *&v274 = 0;
              v134 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
              v237 = v133;
              v211 = v134;
              CRRegister.init(wrappedValue:)();
              *&v274 = 0;
              lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
              CRRegister.init(wrappedValue:)();
              v135 = type metadata accessor for StrokeStyle(0);
              v136 = v238;
              (*(*(v135 - 8) + 56))(v238, 1, 1, v135);
              outlined init with copy of Date?(v136, v239, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
              lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v136, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
              v137 = type metadata accessor for Shadow(0);
              v138 = v241;
              (*(*(v137 - 8) + 56))(v241, 1, 1, v137);
              outlined init with copy of Date?(v138, v242, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
              lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
              v275 = 0u;
              v276 = 0u;
              v274 = 0u;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
              lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              UnknownProperties.init()();
              *&v274 = v85;
              *(&v274 + 1) = v87;
              *&v275 = v89;
              *(&v275 + 1) = v91;
              v139 = v244;
              CRRegister.init(_:)();
              (*(v246 + 40))(v53, v139, v247);
              outlined init with copy of PaperDocument(v270, v128, type metadata accessor for ShapeType);
              v140 = v248;
              CRRegister.init(_:)();
              (*(v249 + 40))(&v53[v212], v140, v250);
              *&v274 = 0x4014000000000000;
              v141 = v252;
              CRRegister.init(_:)();
              (*(v253 + 40))(&v53[v213], v141, v254);
              v142 = v260;
              outlined init with copy of Date?(v273, v260, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              v143 = v255;
              CRRegister.init(_:)();
              v144 = v257;
              v145 = *(v256 + 40);
              v145(&v53[v215], v143, v257);
              outlined init with copy of Date?(v266, v142, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              CRRegister.init(_:)();
              v145(&v53[v219], v143, v144);
              v146 = v272;
              v147 = v268;
              v148 = v245;
              outlined init with copy of Date?(v267, v245, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
              if ((*(v147 + 48))(v148, 1, v146) == 1)
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(v148, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
              }

              else
              {
                v149 = v232;
                (*(v147 + 32))(v232, v148, v146);
                (*(v147 + 40))(&v53[v208], v149, v146);
              }

              v150 = v234;
              v151 = v233;
              v152 = v221;
              *&v274 = 2;
              v153 = v258;
              CRRegister.init(_:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v267, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
              outlined destroy of StocksKitCurrencyCache.Provider?(v266, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              outlined destroy of StocksKitCurrencyCache.Provider?(v273, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              outlined destroy of PaperDocument(v270, type metadata accessor for ShapeType);
              (*(v151 + 40))(&v53[v237], v153, v150);
              v154 = v265;
              outlined init with take of PaperDocument(v53, v265, type metadata accessor for Shape);
              LOBYTE(v274) = 1;
              Shape.formContentType.setter(&v274);
              v155 = v263;
              CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v152, 0, v263);
              v220(v155, 0, 1, v236);
              outlined init with copy of Date?(v155, v264, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
              CRRegister.wrappedValue.setter();
              outlined destroy of StocksKitCurrencyCache.Provider?(v155, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
              outlined init with copy of PaperDocument(v154, v251, type metadata accessor for Shape);
              static CRKeyPath.unique.getter();
              lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
              v156 = v229;
              Capsule.init(_:id:)();
              v158 = v227;
              v157 = v228;
              v159 = *(v227 + 16);
              v160 = v226;
              v159(v228, v156, v226);
              v161 = objc_allocWithZone(type metadata accessor for ShapeView(0));
              *(v161 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
              *(v161 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
              *(v161 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
              *(v161 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
              v162 = direct field offset for ShapeView.showsSignaturePopover;
              *(v161 + direct field offset for ShapeView.showsSignaturePopover) = 0;
              v163 = direct field offset for ShapeView.analytics_inputSource;
              *(v161 + direct field offset for ShapeView.analytics_inputSource) = 68;
              v164 = direct field offset for ShapeView.analytics_documentType;
              *(v161 + direct field offset for ShapeView.analytics_documentType) = 68;
              *(v161 + direct field offset for ShapeView._textBoxView) = 0;
              *(v161 + direct field offset for ShapeView.appearanceStreamView) = 0;
              *(v161 + v162) = 0;
              *(v161 + v163) = 11;
              *(v161 + v164) = 2;
              v165 = v230;
              v270 = v159;
              v159(v230, v157, v160);
              v166 = MEMORY[0x1E69E7D40];
              (*(v158 + 56))(v161 + *((*MEMORY[0x1E69E7D40] & *v161) + 0x3F8), 1, 1, v160);
              *(v161 + *((*v166 & *v161) + 0x400)) = 0;
              *(v161 + *((*v166 & *v161) + 0x408)) = 0;
              *(v161 + *((*v166 & *v161) + 0x410)) = 0;
              *(v161 + *((*v166 & *v161) + 0x418)) = 0;
              *(v161 + *((*v166 & *v161) + 0x420)) = 0;
              v159(v161 + *((*v166 & *v161) + 0x3F0), v165, v160);
              v167 = v222;
              v273 = v222;
              v168 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v167, 0, 0.0, 0.0, 0.0, 0.0);
              specialized CanvasElementView.setupAccessibility()();
              (*((*v166 & *v168) + 0x520))();
              v171 = *(v158 + 8);
              v170 = v158 + 8;
              v169 = v171;
              (v171)(v165, v160);
              v172 = v168;
              specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
              v173 = *((*v166 & *v172) + 0x3F0);
              swift_beginAccess();
              v270(v165, &v172[v173], v160);
              LOBYTE(v173) = specialized Capsule<>.isTextBox.getter();

              (v171)(v165, v160);
              if (v173)
              {
                goto LABEL_19;
              }

              v227 = v170;
              [v172 setIsAccessibilityElement_];
              v174 = 0x80000001D40850C0;
              if (one-time initialization token for paperKitBundle != -1)
              {
                goto LABEL_29;
              }

              while (1)
              {
                v277._object = v174;
                v175._countAndFlagsBits = 0x4025206570616853;
                v176.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                v176.value._object = 0xEB00000000656C62;
                v175._object = 0xE800000000000000;
                v177._countAndFlagsBits = 0;
                v177._object = 0xE000000000000000;
                v277._countAndFlagsBits = 0xD00000000000005FLL;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v175, v176, paperKitBundle, v177, v277);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v178 = swift_allocObject();
                *(v178 + 16) = xmmword_1D4058CF0;
                swift_getKeyPath();
                v179 = v259;
                Capsule.subscript.getter();

                ShapeType.any.getter(&v274);
                outlined destroy of PaperDocument(v179, type metadata accessor for ShapeType);
                v180 = *(&v275 + 1);
                v181 = v276;
                __swift_project_boxed_opaque_existential_1(&v274, *(&v275 + 1));
                v160 = v226;
                v182 = (*(v181 + 48))(v180, v181);
                v184 = v183;
                *(v178 + 56) = MEMORY[0x1E69E6158];
                *(v178 + 64) = lazy protocol witness table accessor for type String and conformance String();
                *(v178 + 32) = v182;
                *(v178 + 40) = v184;
                __swift_destroy_boxed_opaque_existential_0(&v274);
                v185 = static String.localizedStringWithFormat(_:_:)();
                v187 = v186;

                v188 = MEMORY[0x1DA6CCED0](v185, v187);

                [v172 setAccessibilityLabel_];

LABEL_19:
                (v169)(v228, v160);
                (v169)(v229, v160);
                outlined destroy of PaperDocument(v265, type metadata accessor for Shape);
                v189 = (*(v268 + 8))(v271, v272);
                v172[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField] = 0;
                v172[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext] = 0;
                v190 = (v224)(v189);
                v192 = v191;
                v193 = swift_getObjectType();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v194 = swift_initStackObject();
                *(v194 + 16) = xmmword_1D405CEB0;
                *(v194 + 32) = v172;
                v195 = *(v192 + 200);
                v196 = v172;
                v195(v194, 0, v193, v192);

                swift_setDeallocating();
                swift_arrayDestroy();
                v70 = v196;
                v197 = specialized CanvasMembers.init(_:)(v70);
                AnyCanvas.selection.setter(v197, v199, v200, v198 & 1);
                v201 = v224();
                v203 = v202;
                v204 = swift_getObjectType();
                v174 = (*(v203 + 168))(v204, v203);

                v169 = v231;
                if (!v174)
                {
                  break;
                }

                v172 = *&v174[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

                v205 = *(v172 + 6);
                v206 = __OFADD__(v205, 1);
                v207 = v205 + 1;
                if (!v206)
                {
                  *(v172 + 6) = v207;

                  break;
                }

                __break(1u);
LABEL_29:
                swift_once();
              }

              if (*(v70 + direct field offset for ShapeView._textBoxView))
              {

                FormTextFieldAnalytics.recordEvent()();
              }

              v60 = v209;
              goto LABEL_25;
            }

LABEL_32:
            __break(1u);
            return;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      v60 = v231;
    }

LABEL_26:
  }
}

void closure #2 in PaperDocumentViewController.updatePlusButton()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton);
    v5 = v4;
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    v15 = one-time initialization token for SignatureLogger;
    v16 = v3;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, SignatureLogger);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138477827;
      *(v21 + 4) = v18;
      *v22 = v3;
      v23 = v18;
      _os_log_impl(&dword_1D38C4000, v19, v20, "show signature panel on viewController: %{private}@", v21, 0xCu);
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1DA6D0660](v22, -1, -1);
      MEMORY[0x1DA6D0660](v21, -1, -1);
    }

    v24 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(v3, 0, v4, partial apply for closure #1 in closure #2 in PaperDocumentViewController.updatePlusButton(), v14, v7, v9, v11, v13);
    [v18 presentViewController:v24 animated:1 completion:0];
  }
}

void closure #1 in closure #2 in PaperDocumentViewController.updatePlusButton()(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v5 = *(a2 + v3);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
      if (v6)
      {
        v7 = *(v6 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
        v8 = a1;
        v9 = v7;
        specialized NewCanvasElementDelegate.addNewSignatureItem(_:)(a1);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id @objc PaperDocumentViewController.canBecomeFirstResponder.getter(char *a1, uint64_t a2, SEL *a3)
{
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *&a1[v5];
  if (v6)
  {
    return [v6 *a3];
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for PaperDocumentViewController(0);
  return objc_msgSendSuper2(&v8, *a3);
}

void PaperDocumentViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for PaperDocumentViewController(0);
  objc_msgSendSuper2(&v15, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (v10)
  {
    [v10 beginPDFViewRotation];
LABEL_4:
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    v14[4] = partial apply for closure #1 in PaperDocumentViewController.viewWillTransition(to:with:);
    v14[5] = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v14[3] = &block_descriptor_21;
    v12 = _Block_copy(v14);
    v13 = v3;

    [a1 animateAlongsideTransition:v12 completion:0];
    _Block_release(v12);
    return;
  }

  __break(1u);
}

id closure #1 in PaperDocumentViewController.viewWillTransition(to:with:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  result = swift_beginAccess();
  v5 = *(a2 + v3);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    result = *(v5 + v6);
    if (result)
    {
      return [result endPDFViewRotation];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void PaperDocumentViewController.merge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8)
  {
    v10 = 3;
    v9 = v8;
    PaperDocumentView.merge<A>(_:from:page:)(a1, &v10, 0, a2, a3);
  }
}

void PaperDocumentViewController.merge<A>(_:forward:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (v10)
  {
    v11 = v10;
    PaperDocumentView.merge<A>(_:forward:)(a1, a2 & 1, a3, a4);
  }
}

uint64_t PaperDocumentViewController.publisher.getter(void *a1)
{
  v2 = *(v1 + *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0H8DocumentVGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0H8DocumentVGs5NeverOGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;

  return v3;
}

Swift::Bool __swiftcall PaperDocumentViewController.isTouchInThumbnailView(_:)(UITouch a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  [(objc_class *)a1.super.isa locationInView:v5];
  v6 = [v5 pointInside:0 withEvent:?];

  return v6;
}

Swift::Bool __swiftcall PaperDocumentViewController.isTouchInPageLabelView(_:)(UITouch a1)
{
  v3 = PaperDocumentViewController.pageLabelView.getter();
  [(objc_class *)a1.super.isa locationInView:v3];
  v5 = v4;
  v7 = v6;

  return [*(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView) pointInside:0 withEvent:{v5, v7}];
}

Swift::Bool __swiftcall PaperDocumentViewController.isTouchInBannerView(_:)(UITouch a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  [(objc_class *)a1.super.isa locationInView:v4];
  v5 = [v4 pointInside:0 withEvent:?];

  return v5;
}

Swift::Bool __swiftcall PaperDocumentViewController.acceptSingleTouch(_:)(UITouch a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    [(objc_class *)a1.super.isa locationInView:v5];
    v6 = [v5 pointInside:0 withEvent:?];

    if (v6)
    {
      return 1;
    }
  }

  v7 = PaperDocumentViewController.pageLabelView.getter();
  [(objc_class *)a1.super.isa locationInView:v7];
  v9 = v8;
  v11 = v10;

  if ([*(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView) pointInside:0 withEvent:{v9, v11}])
  {
    return 1;
  }

  v12 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
  if (v12)
  {
    v13 = v12;
    [(objc_class *)a1.super.isa locationInView:v13];
    v14 = [v13 pointInside:0 withEvent:?];

    if (v14)
    {
      return 1;
    }
  }

  v15 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16)
  {
    v17 = *&v16[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v20 = specialized TiledPaperKitView.mostVisibleAttachment()(specialized TiledPaperKitView.paperAttachments(includeStandInAttachment:));

      if (v20)
      {
        v21 = AnyCanvas.acceptSingleTouch(_:)(a1);

        if (v21)
        {

          return 1;
        }
      }
    }

    else
    {
      v22 = v16;
    }

    v23 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v24 = *&v16[v23];
    if (v24)
    {
      v25 = [v24 acceptSingleTouch_];

      if (v25)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t PaperDocumentViewController.pageOverlayViewProvider.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5 + *a3;
  swift_beginAccess();
  *(v7 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v8 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v9 = *(v5 + v8);
  if (v9)
  {
    swift_unknownObjectWeakLoadStrong();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    v11 = v9;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*PaperDocumentViewController.liveStreamMessenger.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentViewController.liveStreamMessenger.modify;
}

void PaperDocumentViewController.pageOverlayViewProvider.modify(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v6 = v5[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v8 = *(v6 + v7);
    if (v8)
    {
      swift_unknownObjectWeakLoadStrong();
      KeyPath = swift_getKeyPath();
      v11 = &v11;
      MEMORY[0x1EEE9AC00](KeyPath);
      v5[3] = v8;
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
      v10 = v8;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      swift_unknownObjectRelease();
    }
  }

  free(v5);
}

void (*PaperDocumentViewController.participantDetailsDataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentViewController.participantDetailsDataSource.modify;
}

void PaperDocumentViewController.revertAllChanges()(void (*a1)(void))
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    a1();
  }
}

uint64_t PaperDocumentViewController.showParticipantCursors.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
  swift_beginAccess();
  return *(v0 + v1);
}

void PaperDocumentViewController.showParticipantCursors.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
    swift_beginAccess();
    if (v5[v6] == (a1 & 1))
    {
      v5[v6] = a1 & 1;
      v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
      swift_beginAccess();
      v10 = *&v5[v9];
      v11 = v10 + 64;
      v12 = 1 << *(v10 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v10 + 64);
      v15 = (v12 + 63) >> 6;
      v23 = v5;
      v24 = v10;

      v16 = 0;
      while (v14)
      {
        v17 = v16;
LABEL_12:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = *(v24 + 56) + ((v17 << 10) | (16 * v18));
        v20 = *v19;
        v21 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        swift_getKeyPath();
        lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
        v22 = v20;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v21 + 176))(v5[v6], ObjectType, v21);
      }

      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v15)
        {

          return;
        }

        v14 = *(v11 + 8 * v17);
        ++v16;
        if (v14)
        {
          v16 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
      v8 = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t (*PaperDocumentViewController.showParticipantCursors.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
  *(v3 + 80) = v1;
  *(v3 + 88) = v4;
  swift_beginAccess();
  return PaperDocumentViewController.showParticipantCursors.modify;
}

void PaperDocumentViewController.showParticipantCursors.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_17;
  }

  v4 = v3[10];
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *(v3[10] + v3[11]);
  v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  swift_beginAccess();
  if (v7 != v6[v8])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v3[6] = v6;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    v10 = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_17:
    free(v3);
    return;
  }

  v6[v8] = v7;
  v11 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v28 = v3;
  swift_beginAccess();
  v12 = *&v6[v11];
  v13 = v12 + 64;
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);
  v17 = (63 - v15) >> 6;
  v25 = v6;
  v26 = v6;
  v27 = v12;

  v18 = 0;
  while (v16)
  {
    v19 = v18;
    v3 = v28;
LABEL_14:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(v27 + 56) + ((v19 << 10) | (16 * v20));
    v22 = *v21;
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    v3[9] = v26;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    v24 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    (*(v23 + 176))(v25[v8], ObjectType, v23);
  }

  v3 = v28;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      goto LABEL_17;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void (*PaperDocumentViewController.textualContextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_textualContextProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentViewController.textualContextProvider.modify;
}

void *PaperDocumentViewController.viewControllerForPresentingUI.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PaperDocumentViewController.viewControllerForPresentingUI.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall PaperDocumentViewController.addNewCanvasElement(_:)(PaperKit::PaperNewShapeType a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
      specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

void PaperDocumentViewController.addNewSignatureItem(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
      specialized NewCanvasElementDelegate.addNewSignatureItem(_:)(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

void specialized NewCanvasElementDelegate.addNewSignatureItem(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd, &_s9Coherence7CapsuleVy8PaperKit9SignatureVGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v49 - v13;
  if (a1)
  {
    v49[1] = v7;
    v49[2] = v6;
    v50 = v12;
    v15 = a1;
    v16 = SignatureItem.size.getter();
    v18 = 400.0 / v16;
    if (400.0 / v16 > 1.0)
    {
      v18 = 1.0;
    }

    v19 = v16 * v18;
    v20 = v17 * v18;
    v21 = 72.0 / v20;
    if (72.0 / v20 > 1.0)
    {
      v21 = 1.0;
    }

    width = v19 * v21;
    height = v20 * v21;
    v24 = v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      v26 = swift_getObjectType();
      v27 = (*(v25 + 16))(v26, v25);
      swift_unknownObjectRelease();
      if (v27)
      {
        v28 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&height, *&width));
        width = v28.width;
        height = v28.height;
      }
    }

    v29 = 0.0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v24 + 8);
      v31 = swift_getObjectType();
      v32 = (*(v30 + 16))(v31, v30);
      v33 = swift_unknownObjectRelease();
      v34 = 0.0;
      v35 = 0;
      if (v32)
      {
        v29 = (*((*MEMORY[0x1E69E7D40] & *v32) + 0x990))(v33, width, height);
        v34 = v36;
        v35 = v37;
      }
    }

    else
    {
      v34 = 0.0;
      v35 = 0;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v38 = SignatureItem.size.getter();
    v40 = 400.0 / v38;
    if (400.0 / v38 > 1.0)
    {
      v40 = 1.0;
    }

    v41 = v38 * v40;
    v42 = v39 * v40;
    v43 = 72.0 / v42;
    if (72.0 / v42 > 1.0)
    {
      v43 = 1.0;
    }

    v52[0] = v41 * v43;
    v52[1] = v42 * v43;
    Signature.init()();
    static CRKeyPath.unique.getter();
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
    v44 = Capsule.init(_:id:)();
    MEMORY[0x1EEE9AC00](v44);
    v49[-4] = v15;
    *&v49[-3] = v29;
    *&v49[-2] = v34;
    v49[-1] = v52;
    v45 = Capsule.callAsFunction<A>(_:)();
    MEMORY[0x1EEE9AC00](v45);
    *&v49[-6] = v29 - width * 0.5;
    *&v49[-5] = v34 - height * 0.5;
    v49[-4] = *&width;
    v49[-3] = *&height;
    v49[-2] = v35;
    Capsule.callAsFunction<A>(_:)();
    v46 = v50;
    (*(v9 + 16))(v50, v14, v8);
    v47 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v48 = swift_allocObject();
    (*(v9 + 32))(v48 + v47, v46, v8);
    *(v48 + ((v10 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(partial apply for specialized closure #1 in CanvasElementController.addCanvasElement<A>(_:), v48);

    (*(v9 + 8))(v14, v8);
  }
}

uint64_t PaperDocumentViewController.indirectPointerTouchMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

double PaperDocumentViewController.indirectPointerTouchMode.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v1 + v4);
  if (v6)
  {
    if (v6[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode] != *(v1 + v3))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
      v8 = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t (*PaperDocumentViewController.indirectPointerTouchMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return PaperDocumentViewController.indirectPointerTouchMode.modify;
}

void PaperDocumentViewController.indirectPointerTouchMode.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      if (v6[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode] != *(v3[4] + v3[5]))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v3[3] = v6;
        lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
        v8 = v6;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  free(v3);
}

Swift::Void __swiftcall PaperDocumentViewController.rotateCurrentPage(left:)(Swift::Bool left)
{
  v20 = left;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19[-v14];
  v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17)
  {
    v18 = v17;
    PaperDocumentView.currentPage.getter(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    }

    else
    {
      (*(v10 + 32))(v15, v8, v9);
      (*(v10 + 16))(v12, v15, v9);
      lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
      SharedTagged_3.init(_:)();
      PaperDocumentView.rotatePage(_:left:)(v5, v20);

      (*(v3 + 8))(v5, v2);
      (*(v10 + 8))(v15, v9);
    }
  }
}

void PaperDocumentViewController.toolPickerSelectedToolDidChange(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    PaperDocumentView.updateTiledViewInk(for:)(a1);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker);
    *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker) = a1;
    v6 = a1;
  }
}

void @objc PaperDocumentViewController.toolPickerSelectedToolDidChange(_:)(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *&a1[v5];
  if (v6)
  {
    v7 = a3;
    v8 = a1;
    v9 = v6;
    PaperDocumentView.updateTiledViewInk(for:)(v7);
  }

  else
  {
    v8 = *&a1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker];
    *&a1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker] = a3;
    v10 = a3;
  }
}

Swift::Void __swiftcall PaperDocumentViewController.toolPickerIsRulerActiveDidChange(_:)(PKToolPicker a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      [v7 setRulerEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

id PaperDocumentViewController.pageLabelView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView];
  }

  else
  {
    v4 = closure #1 in PaperDocumentViewController.pageLabelView.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in PaperDocumentViewController.pageLabelView.getter(_BYTE *a1)
{
  v2 = 1;
  a1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] = 1;
  v3 = [objc_allocWithZone(type metadata accessor for PageLabelView()) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:a1 action:sel_pageLabelViewTapped_];
  [v3 addGestureRecognizer_];
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != 1)
  {
    v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth;
    swift_beginAccess();
    v2 = a1[v7];
  }

  *(v3 + OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon) = v2;
  return v3;
}

void PaperDocumentViewController.showPageNumberOverlay(animated:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12LayoutRegionV14AdaptivityAxisOSgMd, &_sSo6UIViewC5UIKitE12LayoutRegionV14AdaptivityAxisOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v86 - v5;
  v7 = type metadata accessor for UIView.LayoutRegion();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v12 = *&v2[v11];
  if (v12)
  {
    v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v14 = *&v2[v13];
    if (v14)
    {
      v15 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
      swift_beginAccess();
      v16 = *&v14[v15];
      if (v16)
      {
        v17 = v16;
        v18 = v14;
        v19 = v12;
        v92 = v17;
        v20 = [(UIView *)v17 currentPage];
        if (!v20)
        {
          v41 = v19;
          v42 = v92;
LABEL_39:

          return;
        }

        v21 = v20;
        v86[0] = v8;
        v90 = v19;
        v91 = v18;
        v22 = *&v18[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument];
        v23 = [v22 pageCount];
        v88 = v22;
        v89 = v21;
        v24 = [v22 indexForPage_];
        if (one-time initialization token for paperKitBundle != -1)
        {
          swift_once();
        }

        v96._object = 0x80000001D4087380;
        v25._countAndFlagsBits = 0x2520666F20756C25;
        v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v26.value._object = 0xEB00000000656C62;
        v25._object = 0xEA0000000000756CLL;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        v96._countAndFlagsBits = 0xD000000000000024;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, paperKitBundle, v27, v96)._object;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D405C990;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
        }

        else
        {
          v30 = MEMORY[0x1E69E6530];
          v31 = MEMORY[0x1E69E65A8];
          *(v29 + 56) = MEMORY[0x1E69E6530];
          *(v29 + 64) = v31;
          *(v29 + 32) = v24 + 1;
          *(v29 + 96) = v30;
          *(v29 + 104) = v31;
          *(v29 + 72) = v23;
          v86[2] = object;
          v87 = static String.localizedStringWithFormat(_:_:)();
          v33 = v32;

          v34 = PaperDocumentViewController.pageLabelView.getter();
          v35 = [v34 superview];

          if (!v35 || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250), v36 = v92, v37 = static NSObject.== infix(_:_:)(), v35, v36, (v37 & 1) == 0))
          {
            v38 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint;
            v39 = *&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint];
            if (v39)
            {
              [v39 setActive_];
              v40 = *&v2[v38];
            }

            else
            {
              v40 = 0;
            }

            *&v2[v38] = 0;

            v43 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint;
            v44 = *&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint];
            if (v44)
            {
              [v44 setActive_];
              v45 = *&v2[v43];
            }

            else
            {
              v45 = 0;
            }

            *&v2[v43] = 0;

            v46 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint;
            v47 = *&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint];
            if (v47)
            {
              [v47 setActive_];
              v48 = *&v2[v46];
            }

            else
            {
              v48 = 0;
            }

            *&v2[v46] = 0;
          }

          v86[1] = v33;
          if (a1)
          {
            v49 = objc_opt_self();
            v50 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v51 = swift_allocObject();
            v52 = v92;
            v51[2] = v50;
            v51[3] = v52;
            v51[4] = v87;
            v51[5] = v33;
            aBlock[4] = partial apply for closure #1 in PaperDocumentViewController.showPageNumberOverlay(animated:);
            aBlock[5] = v51;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            aBlock[3] = &block_descriptor_239;
            v53 = _Block_copy(aBlock);
            v54 = v52;

            [v49 animateWithDuration:v53 animations:0.3];
            _Block_release(v53);
          }

          else
          {
            v55 = *&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView];
            v52 = v92;
            v56._countAndFlagsBits = v87;
            v56._object = v33;
            PageLabelView.showNow(in:with:)(v92, v56);
          }

          v57 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint;
          if (!*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint])
          {
            v58 = [v2 view];
            if (!v58)
            {
LABEL_43:
              __break(1u);
              return;
            }

            v59 = v58;
            v60 = *MEMORY[0x1E69DC4C8];
            v61 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
            v62 = *(v61 - 8);
            (*(v62 + 104))(v6, v60, v61);
            (*(v62 + 56))(v6, 0, 1, v61);
            static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
            outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sSo6UIViewC5UIKitE12LayoutRegionV14AdaptivityAxisOSgMd, &_sSo6UIViewC5UIKitE12LayoutRegionV14AdaptivityAxisOSgMR);
            v63 = UIView.layoutGuide(for:)();

            (*(v86[0] + 8))(v10, v7);
            v64 = [*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] topAnchor];
            v65 = [v63 topAnchor];
            v66 = [v64 constraintGreaterThanOrEqualToAnchor:v65 constant:16.0];

            v67 = *&v2[v57];
            *&v2[v57] = v66;
            v68 = v66;

            type metadata accessor for UILayoutPriority(0);
            v94 = 1120403456;
            v95 = 1148846080;
            lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
            static _UIKitNumericRawRepresentable.- infix(_:_:)();
            LODWORD(v69) = aBlock[0];
            [v68 setPriority_];

            v52 = v92;
          }

          v70 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint;
          if (!*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint])
          {
            v71 = [*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] leadingAnchor];
            v72 = [v90 trailingAnchor];
            v73 = [v71 constraintGreaterThanOrEqualToAnchor:v72 constant:20.0];

            v74 = *&v2[v70];
            *&v2[v70] = v73;
          }

          v75 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint;
          if (!*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint])
          {
            v76 = [*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] leadingAnchor];
            v77 = [v91 safeAreaLayoutGuide];
            v78 = [v77 leadingAnchor];

            v79 = [v76 constraintGreaterThanOrEqualToAnchor:v78 constant:20.0];
            v80 = *&v2[v75];
            *&v2[v75] = v79;
          }

          v81 = *&v2[v57];
          if (v81)
          {
            [v81 setActive_];
          }

          v82 = *&v2[v70];
          v83 = v91;
          v41 = v89;
          if (v82)
          {
            [v82 setActive_];
          }

          v84 = *&v2[v75];
          if (v84)
          {
            [v84 setActive_];
          }

          PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
          v85 = [v2 view];
          if (v85)
          {
            v42 = v85;

            [(UIView *)v42 setNeedsLayout];

            v18 = v88;
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_43;
      }
    }
  }
}

void closure #1 in PaperDocumentViewController.showPageNumberOverlay(animated:)(uint64_t a1, UIView *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = PaperDocumentViewController.pageLabelView.getter();

    v10._countAndFlagsBits = a3;
    v10._object = a4;
    PageLabelView.showNow(in:with:)(a2, v10);
  }
}

Swift::Void __swiftcall PaperDocumentViewController.setShowPageNumberOverlay(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (_)
  {

    PaperDocumentViewController.showPageNumberOverlay(animated:)(animated);
  }

  else
  {
    v3 = PaperDocumentViewController.pageLabelView.getter();
    PageLabelView.fadeOut(animated:)(animated);
  }
}

void PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint];
  if (v2)
  {
    [v2 setActive_];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v4 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView];
  if (!v4)
  {
    return;
  }

  v21 = v4;
  v5 = [v21 superview];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [v21 superview];
  v7 = v0;
  v8 = PaperDocumentViewController.pageLabelView.getter();
  v9 = [v8 superview];

  if (v6)
  {
    if (v9)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v10 = static NSObject.== infix(_:_:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v11 = v7;
      v12 = [v7 traitCollection];
      v13 = [v12 horizontalSizeClass];

      v14 = 16.0;
      if (v13 != 1)
      {
        v15 = [objc_opt_self() currentDevice];
        v16 = [v15 userInterfaceIdiom];

        if (v16)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = 16.0;
        }
      }

      v17 = [*&v7[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] topAnchor];
      v18 = [v21 bottomAnchor];

      v19 = [v17 constraintEqualToAnchor:v18 constant:v14];
      [v19 setActive_];

      v20 = *&v11[v1];
      *&v11[v1] = v19;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_13;
    }
  }

LABEL_19:

  v20 = v21;
LABEL_20:
}

uint64_t PaperDocumentViewController.pageLabelViewTapped(_:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  swift_beginAccess();
  if (v1[v2] == 1)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1 || (v7 = [v1 traitCollection], v8 = objc_msgSend(v7, sel_horizontalSizeClass), v7, v8 != 1) && (v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth, swift_beginAccess(), v1[v9] == 1))
    {
      v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
      swift_beginAccess();
      v6 = v1[v5];
      v1[v5] = v6 ^ 1;
      PaperDocumentViewController.isThumbnailViewCollapsed.didset(v6);
    }
  }

  v10 = PaperDocumentViewController.pageLabelView.getter();
  PageLabelView.resetFadeOutTimer()();

  v11 = &v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(v1, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

id PaperDocumentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1DA6CCED0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t (*protocol witness for PaperKitAttachment.textualContextProvider.modify in conformance PaperDocumentViewController(uint64_t **a1))()
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
  v2[4] = PaperDocumentViewController.textualContextProvider.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

void *protocol witness for PaperKitAttachment.viewControllerForPresentingUI.getter in conformance PaperDocumentViewController()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void protocol witness for PaperKitAttachment.viewControllerForPresentingUI.setter in conformance PaperDocumentViewController(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.modify in conformance PaperDocumentViewController(uint64_t **a1))()
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
  v2[4] = PaperDocumentViewController.liveStreamMessenger.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.participantDetailsDataSource.modify in conformance PaperDocumentViewController(uint64_t **a1))()
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
  v2[4] = PaperDocumentViewController.participantDetailsDataSource.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

void protocol witness for PaperKitStreamableAttachment.participantDetailsDidChange() in conformance PaperDocumentViewController()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    PaperDocumentView.participantDetailsDidChange()();
  }
}

uint64_t protocol witness for PaperKitStreamableAttachment.showParticipantCursors.getter in conformance PaperDocumentViewController()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.showParticipantCursors.modify in conformance PaperDocumentViewController(uint64_t **a1))()
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
  v2[4] = PaperDocumentViewController.showParticipantCursors.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

Swift::Void __swiftcall PaperDocumentViewController_ScrollViewObserver._observeScrollViewDidScroll(_:)(UIScrollView_optional *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView, v4 = Strong, swift_beginAccess(), v5 = *&v4[v3], v6 = v5, v4, v5))
  {
    v7 = *&v6[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView];

    v8 = [v7 collectionView];
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    if (!a1)
    {
LABEL_4:
      if (v8)
      {
LABEL_11:

        return;
      }

LABEL_9:
      v11 = swift_unknownObjectWeakLoadStrong();
      if (!v11)
      {
        return;
      }

      v8 = v11;
      PaperDocumentViewController.notifyContentFrameDidChange()();
      goto LABEL_11;
    }
  }

  if (v8)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIScrollView, 0x1E69DCEF8);
    v9 = a1;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      goto LABEL_9;
    }
  }
}

id PaperDocumentPasswordViewController.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall PaperDocumentViewController.pageDidScroll(_:)(NSNotification_optional a1)
{
  isa = a1.value.super.isa;
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = [v6 documentScrollView];
  if (!v7)
  {
    return;
  }

  if (!isa)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v8 = v7;
  if ([(objc_class *)isa object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIScrollView, 0x1E69DCEF8);
    if (swift_dynamicCast())
    {
      v8 = v8;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        PaperDocumentViewController.notifyContentFrameDidChange()();
      }
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for CRAsset();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PaperDocumentPasswordViewController(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v20 = result;
    v66 = a2;
    v67 = a3;
    v70 = v15;
    v68 = v18;
    v21 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock;
    v22 = *(result + OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock);
    if (!v22)
    {
      return 0;
    }

    v65 = v8;
    v23 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_assetToUnlock;
    swift_beginAccess();
    outlined init with copy of Date?(v20 + v23, v14, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    v24 = v70;
    if ((*(v16 + 48))(v14, 1, v70) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      return 0;
    }

    v25 = v68;
    (*(v16 + 32))(v68, v14, v24);
    v26 = *(v20 + OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument);
    if (!v26)
    {
      (*(v16 + 8))(v25, v24);
      return 0;
    }

    v64 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument;
    v27 = a1;
    v28 = v22;
    v29 = v26;
    v30 = MEMORY[0x1DA6CCED0](v66, v67);
    v31 = [v28 unlockWithPassword_];

    if ((v31 & 1) == 0)
    {

      (*(v16 + 8))(v68, v70);
      return 0;
    }

    v62 = v29;
    v63 = v27;
    v32 = v28;
    v33 = v69;
    v34 = *(v20 + v21);
    *(v20 + v21) = 0;

    v35 = v16;
    v36 = v70;
    (*(v16 + 56))(v11, 1, 1, v70);
    swift_beginAccess();
    outlined assign with take of UUID?(v11, v20 + v23, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    swift_endAccess();
    v37 = *(v20 + v64);
    *(v20 + v64) = 0;

    if (one-time initialization token for shared != -1)
    {
      v38 = swift_once();
    }

    v39 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v38);
    v40 = v68;
    *(&v61 - 4) = v41;
    *(&v61 - 3) = v40;
    v42 = v67;
    *(&v61 - 2) = v66;
    *(&v61 - 1) = v42;
    MEMORY[0x1EEE9AC00](v43);
    *(&v61 - 2) = partial apply for closure #1 in PasswordManager.add(password:for:);
    *(&v61 - 1) = v44;
    os_unfair_lock_lock(v39 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v45);
    os_unfair_lock_unlock(v39 + 4);
    v46 = CRAsset.digest.getter();
    v47 = &v33[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove];
    v48 = *&v33[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove];
    v49 = *&v33[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove + 8];
    *v47 = v46;
    v47[1] = v50;
    v51 = outlined consume of Data?(v48, v49);
    MEMORY[0x1EEE9AC00](v51);
    v52 = v32;
    *(&v61 - 2) = v32;
    *(&v61 - 1) = v40;
    v53 = PaperDocumentViewController.paperDocument.modify(v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
    Capsule.callAsFunction<A>(_:)();
    (v53)(v71, 0);
    v54 = type metadata accessor for TaskPriority();
    v55 = v65;
    (*(*(v54 - 8) + 56))(v65, 1, 1, v54);
    type metadata accessor for MainActor();
    v56 = v62;
    v57 = v33;
    v58 = static MainActor.shared.getter();
    v59 = swift_allocObject();
    v60 = MEMORY[0x1E69E85E0];
    v59[2] = v58;
    v59[3] = v60;
    v59[4] = v57;
    v59[5] = v56;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v55, &async function pointer to partial apply for closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:), v59);

    (*(v35 + 8))(v40, v36);
    return 1;
  }

  return result;
}

void closure #1 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(char *a1, void *a2, char *a3)
{
  v61 = a2;
  v63 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - v7;
  v8 = type metadata accessor for CRAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v48 - v13;
  v14 = type metadata accessor for PaperDocument(0);
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v48 = &v48 - v21;
  v22 = *(v9 + 16);
  v62 = v11;
  v52 = v22;
  v53 = v9 + 16;
  (v22)(v11, a3, v8, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  CROrderedSet.init()();
  v23 = *(v14 + 20);
  v55 = v9;
  v24 = v9;
  v25 = v59;
  v26 = *(v24 + 56);
  v57 = v8;
  v50 = v26;
  v51 = v24 + 56;
  v26(v59, 1, 1, v8);
  outlined init with copy of Date?(v25, v5, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v54 = v5;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v60 = v14;
  v27 = v61;
  UnknownProperties.init()();
  v28 = [v27 isLocked];
  if (!v28)
  {
    v35 = v65;
    v30 = v62;
    goto LABEL_8;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v29 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v28);
    v30 = v62;
    *(&v48 - 2) = v31;
    *(&v48 - 1) = v30;
    MEMORY[0x1EEE9AC00](v32);
    *(&v48 - 2) = partial apply for closure #1 in PasswordManager.password(for:);
    *(&v48 - 1) = v33;
    os_unfair_lock_lock(v29 + 4);
    v34 = v65;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v64);
    if (v34)
    {
      os_unfair_lock_unlock(v29 + 4);
      __break(1u);
      return;
    }

    v35 = 0;
    os_unfair_lock_unlock(v29 + 4);
    if (!*(&v64 + 1) || (v36 = MEMORY[0x1DA6CCED0](v64, *(&v64 + 1)), , v37 = [v27 unlockWithPassword_], v36, (v37 & 1) == 0))
    {
      v65 = 0;
      (*(v55 + 8))(v30, v57);
      outlined destroy of PaperDocument(v18, type metadata accessor for PaperDocument);
      v38 = 1;
      v39 = v58;
      goto LABEL_10;
    }

LABEL_8:
    v40 = [v27 pageCount];
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    v28 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v40);
  *(&v48 - 6) = v18;
  *(&v48 - 5) = v27;
  v41 = v63;
  *(&v48 - 4) = v30;
  *(&v48 - 3) = v41;
  *(&v48 - 2) = 0;
  *(&v48 - 8) = 1;
  specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:), (&v48 - 8), 0, v42);
  v65 = v35;
  *&v64 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd, &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMR);
  v62 = v23;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_3<TaggedPaperPage>] and conformance [A], &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd, &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMR, MEMORY[0x1E69E6328]);
  CROrderedSet.append<A>(contentsOf:)();

  v44 = v57;
  v52(v25, v30, v57);
  v50(v25, 0, 1, v44);
  outlined init with copy of Date?(v25, v54, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  (*(v55 + 8))(v30, v44);
  v39 = v58;
  outlined init with take of PaperDocument(v18, v58, type metadata accessor for PaperDocument);
  v38 = 0;
LABEL_10:
  v45 = v56;
  v46 = v60;
  (*(v56 + 56))(v39, v38, 1, v60);
  if ((*(v45 + 48))(v39, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  }

  else
  {
    v47 = v48;
    outlined init with take of PaperDocument(v39, v48, type metadata accessor for PaperDocument);
    outlined init with copy of PaperDocument(v47, v49, type metadata accessor for PaperDocument);
    Capsule.Ref.root.setter();
    outlined destroy of PaperDocument(v47, type metadata accessor for PaperDocument);
  }
}

uint64_t closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:);

  return PaperDocumentViewController.setupDocumentView(context:)(a5);
}

uint64_t closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void PaperDocumentViewController.markupEditViewController(_:insertNewShape:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    return;
  }

  v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v8 = *&v6[v7];
  if (!v8)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = [v8 currentPage];
  if (!v10)
  {
LABEL_16:

    return;
  }

  v11 = v10;
  type metadata accessor for PaperKitPDFPage(0);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_14;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v15 = *&v9[v14];
  if (!*(v15 + 16))
  {

    goto LABEL_16;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if (v17)
  {
    v18 = *(v15 + 56) + 16 * v16;
    v19 = *(v18 + 8);
    v20 = *v18;

    ObjectType = swift_getObjectType();
    v22 = (*(v19 + 104))(ObjectType, v19);

    if (v22 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA6CE0C0](0, v22);
        goto LABEL_12;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v22 + 32);
LABEL_12:
        v24 = v23;

        v25 = v4;
        (*((*MEMORY[0x1E69E7D40] & *v24) + 0xA48))(a1, &v25);

LABEL_14:
        return;
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

void PaperDocumentViewController.markupEditViewControllerInsertNewTextbox(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (!v6)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = [v6 currentPage];
  if (!v8)
  {
LABEL_15:

    return;
  }

  v9 = v8;
  type metadata accessor for PaperKitPDFPage(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v13 = *&v7[v12];
  if (!*(v13 + 16))
  {

    goto LABEL_15;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  if (v15)
  {
    v16 = *(v13 + 56) + 16 * v14;
    v17 = *(v16 + 8);
    v18 = *v16;

    ObjectType = swift_getObjectType();
    v20 = (*(v17 + 104))(ObjectType, v17);

    if (v20 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1DA6CE0C0](0, v20);
        goto LABEL_12;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v20 + 32);
LABEL_12:
        v22 = v21;

        (*((*MEMORY[0x1E69E7D40] & *v22) + 0xA50))(a1);

        return;
      }

      __break(1u);
      goto LABEL_21;
    }
  }
}

void PaperDocumentViewController.markupEditViewController(_:insertNewLineWithStartMarker:endMarker:)(uint64_t a1, char a2, char a3)
{
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!v8)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v10 = *&v8[v9];
  if (!v10)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = [v10 currentPage];
  if (!v12)
  {
LABEL_15:

    return;
  }

  v13 = v12;
  type metadata accessor for PaperKitPDFPage(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    return;
  }

  v15 = v14;
  v16 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v17 = *&v11[v16];
  if (!*(v17 + 16))
  {

    goto LABEL_15;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
  if (v19)
  {
    v20 = *(v17 + 56) + 16 * v18;
    v21 = *(v20 + 8);
    v22 = *v20;

    ObjectType = swift_getObjectType();
    v24 = (*(v21 + 104))(ObjectType, v21);

    if (v24 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1DA6CE0C0](0, v24);
        goto LABEL_12;
      }

      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(v24 + 32);
LABEL_12:
        v26 = v25;

        (*((*MEMORY[0x1E69E7D40] & *v26) + 0xA58))(a1, a2 & 1, a3 & 1);

        return;
      }

      __break(1u);
      goto LABEL_21;
    }
  }
}

void PaperDocumentViewController.markupEditViewController(_:insertNewContents:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    return;
  }

  v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v8 = *&v6[v7];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = [v8 currentPage];
  if (!v10)
  {
LABEL_15:

    return;
  }

  v11 = v10;
  type metadata accessor for PaperKitPDFPage(0);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v15 = *&v9[v14];
  if (!*(v15 + 16))
  {

    goto LABEL_15;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if (v17)
  {
    v18 = *(v15 + 56) + 16 * v16;
    v19 = *(v18 + 8);
    v20 = *v18;

    ObjectType = swift_getObjectType();
    v22 = (*(v19 + 104))(ObjectType, v19);

    if (v22 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA6CE0C0](0, v22);
        goto LABEL_12;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v22 + 32);
LABEL_12:
        v24 = v23;

        (*((*MEMORY[0x1E69E7D40] & *v24) + 0xA60))(a1, a2);

        return;
      }

      __break(1u);
      goto LABEL_21;
    }
  }
}

uint64_t specialized TiledPaperKitView.paperAttachments(includeStandInAttachment:)(char a1)
{
  v2 = v1;
  TiledTextView.paperAttachments.getter();
  v5 = v4;
  v6 = [v2 scrollView];
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9 && (v10 = v9, v11 = [v9 textContainer], v12 = objc_msgSend(v11, sel_textLayoutManager), v11, v12))
    {

      v41 = v7;
      v13 = [v10 textStorage];
      v39[0] = [v13 length];

      v39[1] = v39;
      v38[2] = &v41;
      v15 = [v10 textStorage];
      v16 = *MEMORY[0x1E69DB5F8];
      v17 = swift_allocObject();
      *(v17 + 16) = v10;
      *(v17 + 24) = 0;
      *(v17 + 32) = partial apply for closure #1 in TiledTextView.paperDocumentAttachments.getter;
      *(v17 + 40) = v38;
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for closure #1 in UITextView.enumeratePaperDocumentTextAttachments(in:createIfNeeded:options:using:);
      *(v18 + 24) = v17;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      aBlock[3] = &block_descriptor_195;
      v19 = _Block_copy(aBlock);
      v20 = v8;

      [v15 enumerateAttribute:v16 inRange:0 options:v39[0] usingBlock:{0, v19}];

      _Block_release(v19);
      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      if (v20)
      {
        __break(1u);
LABEL_15:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_11:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return aBlock[0];
      }

      v7 = v41;
    }

    else
    {
    }
  }

  v21 = specialized Sequence.flatMap<A>(_:)(v7);

  aBlock[0] = v5;
  specialized Array.append<A>(contentsOf:)(v21);
  v22 = aBlock[0];
  if (a1)
  {
    v23 = specialized TiledPaperKitView.visibleStandInPaperAttachmentView()();
    if (v23)
    {
      v24 = v23;
      [v23 bounds];
      [v24 convertRect:v2 toCoordinateSpace:?];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      [v2 bounds];
      v43.origin.x = v33;
      v43.origin.y = v34;
      v43.size.width = v35;
      v43.size.height = v36;
      v42.origin.x = v26;
      v42.origin.y = v28;
      v42.size.width = v30;
      v42.size.height = v32;
      if (!CGRectIntersectsRect(v42, v43))
      {

        return v22;
      }

      v2 = v24;
      MEMORY[0x1DA6CD190]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  return v22;
}

{
  result = TiledDocumentView.paperAttachmentsIncludingSubAttachments.getter();
  v20 = result;
  if ((a1 & 1) == 0)
  {
    return result;
  }

  v4 = result;
  v5 = specialized TiledPaperKitView.visibleStandInPaperAttachmentView()();
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  [v5 bounds];
  [v6 convertRect:v1 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v1 bounds];
  v22.origin.x = v15;
  v22.origin.y = v16;
  v22.size.width = v17;
  v22.size.height = v18;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  if (!CGRectIntersectsRect(v21, v22))
  {

    return v4;
  }

  v19 = v6;
  MEMORY[0x1DA6CD190]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v20;
}

void specialized closure #1 in CanvasElementController.addCanvasElement<A>(_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v6 = a1;
    specialized static CanvasElementController.makeCanvasFirstResponder(_:)(v6);
    v3 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x700);
    v4 = type metadata accessor for Shape(0);
    v5 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
    v3(a2, 1, 0, 0, v4, v5, &protocol witness table for Shape);
  }
}

{
  if (a1)
  {
    v6 = a1;
    specialized static CanvasElementController.makeCanvasFirstResponder(_:)(v6);
    v3 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x700);
    v4 = type metadata accessor for Signature(0);
    v5 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
    v3(a2, 1, 0, 0, v4, v5, &protocol witness table for Signature);
  }
}

uint64_t key path getter for PaperDocumentView.pageOverlayViewProvider : PaperDocumentView@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = v6 + *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *a4 = result;
  a4[1] = v9;
  return result;
}

double key path setter for PaperDocumentView.pageOverlayViewProvider : PaperDocumentView(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void key path getter for PaperDocumentView.indirectPointerTouchMode : PaperDocumentView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode);
}

void specialized PaperDocumentView.merge<A>(_:from:page:)(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v4 = v3;
  v62 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount;
  v12 = *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    goto LABEL_36;
  }

  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount) = v14;
  v15 = a2;
  if (!a2)
  {
    swift_getKeyPath();
    v59 = v10;
    *&v63[0] = v4;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    v10 = v59;

    if (*(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__multipeerConnection))
    {
      type metadata accessor for PaperDocument(0);
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);

      v10 = v59;
      CRMulticastSyncManager.merge<A>(_:sendDelta:)();
    }
  }

  v16 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v17 = type metadata accessor for PaperDocument(0);
  v60 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  v61 = v17;
  Capsule.merge<A>(_:)();
  swift_endAccess();
  if (!a3)
  {
    if (a2 == 4)
    {
      goto LABEL_27;
    }

    v58 = a2;
    v59 = v10;
    v53 = v11;
    v54 = v8;
    v55 = v7;
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    PaperDocumentView.updatePDFDocument(otherDocuments:)(v21);

    v22 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v23 = *(v4 + v22);
    v26 = *(v23 + 64);
    v25 = v23 + 64;
    v24 = v26;
    v27 = 1 << *(*(v4 + v22) + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v24;
    v30 = (v27 + 63) >> 6;
    v56 = *(v4 + v22);

    v31 = 0;
    for (i = v16; v29; v16 = i)
    {
      v32 = v31;
LABEL_18:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = *(v56 + 56) + ((v32 << 10) | (16 * v33));
      v35 = *v34;
      v36 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      LOBYTE(v64[0]) = v58;
      v38 = *(v36 + 88);
      v39 = v35;
      v38(v62, v64, v61, v60, ObjectType, v36);
    }

    v15 = v58;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        v7 = v55;
        v8 = v54;
        v11 = v53;
        v10 = v59;
        goto LABEL_26;
      }

      v29 = *(v25 + 8 * v32);
      ++v31;
      if (v29)
      {
        v31 = v32;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument);
  (*(v8 + 16))(v10, v4 + v16, v7);
  v63[0] = xmmword_1D405D330;
  memset(&v63[1], 0, 109);
  v19 = a3;
  v20 = v18;
  specialized PaperKitPDFDocument.updatePDFPage<A>(in:use:options:page:)(v10, 0x8000000000000000, v63, v19);

  outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
  (*(v8 + 8))(v10, v7);
  if (v15 == 4)
  {

LABEL_27:
    swift_getKeyPath();
    v64[0] = v4;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__multipeerConnection))
    {
      (*(v8 + 16))(v10, v4 + v16, v7);

      CRMulticastSyncManager.sync(_:sendDelta:)();

      (*(v8 + 8))(v10, v7);
    }

    if (v15 == 4)
    {
      if (!PaperDocumentView.isLiveEditing()())
      {
        PaperDocumentView.didChange()();
      }

      (*(v8 + 16))(v10, v4 + v16, v7);
      PassthroughSubject.send(_:)();
      (*(v8 + 8))(v10, v7);
    }

    goto LABEL_33;
  }

  v40 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v41 = *(v4 + v40);
  if (*(v41 + 16))
  {

    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if (v43)
    {
      v44 = *(v41 + 56) + 16 * v42;
      i = v16;
      v45 = *(v44 + 8);
      v46 = v15;
      v47 = *v44;

      v48 = swift_getObjectType();
      LOBYTE(v64[0]) = v46;
      v49 = *(v45 + 88);
      v50 = v45;
      v16 = i;
      v49(v62, v64, v61, v60, v48, v50);

      v15 = v46;
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_26:
  if ((v15 - 3) <= 1)
  {
    goto LABEL_27;
  }

LABEL_33:
  v51 = *(v4 + v11);
  v13 = __OFSUB__(v51, 1);
  v52 = v51 - 1;
  if (!v13)
  {
    *(v4 + v11) = v52;
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t key path getter for PaperDocumentView.showParticipantCursors : PaperDocumentView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

double specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

id specialized PaperDocumentViewController.init(context:paperDocument:editingMode:)(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v43 = a2;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v40 = *a3;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView] = 0;
  v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_scrollViewObserver;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for PaperDocumentViewController_ScrollViewObserver()) init];
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_screenEdgePanGestureRecognizer] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility] = 1;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth] = 1;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_cancellables] = v12;
  v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
  v14 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v16 = *(v15 - 8);
  v39 = *(v16 + 56);
  v39(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove] = xmmword_1D405C100;
  v17 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor;
  if (one-time initialization token for defaultBackgroundColor != -1)
  {
    swift_once();
  }

  v18 = static PaperDocumentViewController.defaultBackgroundColor;
  *&v4[v17] = static PaperDocumentViewController.defaultBackgroundColor;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_defaultBannerWasDisplayed] = 0;
  v19 = &v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration];
  *v19 = 1;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  v20 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView;
  v21 = objc_allocWithZone(PPKQuickLookBannerView);
  v22 = v18;
  *&v4[v20] = [v21 &selRef_name];
  v23 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton;
  type metadata accessor for FormPlusButtonView();
  *&v4[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) &selRef_name];
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest] = 0;
  v24 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded] = 0;
  v26 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR);
  swift_allocObject();
  *&v4[v26] = PassthroughSubject.init()();
  v27 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_livePassThroughSubject;
  swift_allocObject();
  *&v4[v27] = PassthroughSubject.init()();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode] = v40;
  v28 = v43;
  (*(v16 + 16))(v10, v43, v15);
  v39(v10, 0, 1, v15);
  swift_beginAccess();
  outlined assign with take of UUID?(v10, &v4[v14], &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  swift_endAccess();
  v29 = type metadata accessor for PaperDocumentViewController(0);
  v44.receiver = v4;
  v44.super_class = v29;
  v30 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  v31 = type metadata accessor for TaskPriority();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  type metadata accessor for MainActor();
  v33 = v30;
  v34 = v41;
  v35 = static MainActor.shared.getter();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v33;
  v36[5] = v34;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:), v36);

  (*(v16 + 8))(v28, v15);
  return v33;
}

id outlined copy of BannerViewConfiguration?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (result != 1)
  {
    v8 = result;
    v9 = a7;
    v10 = v8;

    return a6;
  }

  return result;
}

void outlined consume of BannerViewConfiguration?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (a1 != 1)
  {
  }
}

double block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage()
{
  result = lazy protocol witness table cache variable for type TaggedPaperPage and conformance TaggedPaperPage;
  if (!lazy protocol witness table cache variable for type TaggedPaperPage and conformance TaggedPaperPage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaggedPaperPage and conformance TaggedPaperPage);
  }

  return result;
}

uint64_t keypath_get_42Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_get_36Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_set_37Tm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

void type metadata completion function for PaperDocumentPasswordViewController(uint64_t a1)
{
  type metadata accessor for CRAsset?(319, &lazy cache variable for type metadata for CRAsset?, MEMORY[0x1E6995408]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PaperDocumentViewController(uint64_t a1)
{
  type metadata accessor for Capsule<PaperDocument>?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRAsset?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Capsule<PaperDocument>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Capsule<PaperDocument>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Capsule<PaperDocument>?);
    }
  }
}

void type metadata accessor for CRAsset?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void partial apply for closure #1 in closure #1 in PaperDocumentViewController.setupDocumentView(context:)(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  closure #1 in closure #1 in PaperDocumentViewController.setupDocumentView(context:)(a1, v4, v5);
}

unint64_t lazy protocol witness table accessor for type AutofillFeatureFlags and conformance AutofillFeatureFlags()
{
  result = lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags;
  if (!lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags;
  if (!lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags);
  }

  return result;
}

void specialized PaperDocumentViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView) = 0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_scrollViewObserver;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for PaperDocumentViewController_ScrollViewObserver()) init];
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_screenEdgePanGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_cancellables) = v3;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove) = xmmword_1D405C100;
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor;
  if (one-time initialization token for defaultBackgroundColor != -1)
  {
    swift_once();
  }

  v8 = static PaperDocumentViewController.defaultBackgroundColor;
  *(v1 + v7) = static PaperDocumentViewController.defaultBackgroundColor;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_defaultBannerWasDisplayed) = 0;
  v9 = v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
  *v9 = 1;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  v10 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView;
  v11 = objc_allocWithZone(PPKQuickLookBannerView);
  v12 = v8;
  *(v1 + v10) = [v11 init];
  v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton;
  type metadata accessor for FormPlusButtonView();
  *(v1 + v13) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest) = 0;
  v14 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded) = 0;
  v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR);
  swift_allocObject();
  *(v1 + v16) = PassthroughSubject.init()();
  v17 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_livePassThroughSubject;
  swift_allocObject();
  *(v1 + v17) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_textualContextProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(a1, v4, v5, v7, v6);
}

id partial apply for specialized closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for specialized closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)(a1, a2);
}

{
  return specialized closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), a2);
}

uint64_t partial apply for closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CRAsset() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(a1, v6, v7, v8, v1 + v5, v9);
}

double partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t outlined init with take of PaperDocument(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PaperDocument(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PaperDocument(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_228Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in PaperDocumentView.liveStreamMessenger.setterpartial apply()
{
  return partial apply for closure #1 in PaperDocumentView.liveStreamMessenger.setter();
}

{
  return _s8PaperKit0A12DocumentViewC19liveStreamMessengerAA0ab4LivefG0_pSgvsyyXEfU_TA_0();
}

uint64_t closure #1 in PaperDocumentView.textualContextProvider.setterpartial apply()
{
  return partial apply for closure #1 in PaperDocumentView.textualContextProvider.setter();
}

{
  return _s8PaperKit0A12DocumentViewC22textualContextProviderAA0a17AttachmentTextualfG0_pSgvsyyXEfU_TA_0();
}

uint64_t protocol witness for View.body.getter in conformance MiniDivider@<X0>(uint64_t a1@<X8>)
{
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7DividerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA12_FrameLayoutVGMR) + 36));
  *v3 = v27;
  v3[1] = v28;
  v3[2] = v29;
  v4 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGMR) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGMR) + 36);
  *v23 = v14;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = static VerticalAlignment.firstTextBaseline.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGAA25_AlignmentWritingModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGAA25_AlignmentWritingModifierVGMR);
  v26 = (a1 + *(result + 36));
  *v26 = v24;
  v26[1] = closure #4 in MiniColorButton.body.getter;
  v26[2] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGAA25_AlignmentWritingModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGAA25_AlignmentWritingModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7DividerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type Divider and conformance Divider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Divider and conformance Divider()
{
  result = lazy protocol witness table cache variable for type Divider and conformance Divider;
  if (!lazy protocol witness table cache variable for type Divider and conformance Divider)
  {
    type metadata accessor for Divider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Divider and conformance Divider);
  }

  return result;
}

Swift::Void __swiftcall CanvasViewToolPickerObserver.updateUI(toolPicker:)(PKToolPicker toolPicker)
{
  v2 = type metadata accessor for PKInk();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (([(objc_class *)toolPicker.super.isa _isHandwritingToolSelected]& 1) == 0)
    {
      v8 = v7;
      v9 = [(objc_class *)toolPicker.super.isa selectedToolItem];
      PKToolPickerItem.ink.getter(v5);

      PKInk.tool.getter(v14);
      (*(v3 + 8))(v5, v2);
      Canvas.tool.setter(v14);
    }

    v10 = *&v7[direct field offset for CanvasView.canvasTiledView];
    if (v10)
    {
      v11 = v10;
      if ([(objc_class *)toolPicker.super.isa isVisible])
      {
        v12 = [(objc_class *)toolPicker.super.isa isRulerActive];
      }

      else
      {
        v12 = 0;
      }

      [v11 setRulerEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

void @objc CanvasViewToolPickerObserver._toolPickerDidInvokeDoneAction(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized CanvasViewToolPickerObserver._toolPickerDidInvokeDoneAction(_:)();
}

id specialized CanvasViewToolPickerObserver.init(canvasView:)()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

void specialized CanvasViewToolPickerObserver._toolPickerDidInvokeDoneAction(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  }
}

double PaperDocumentPage.flags.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.getter();
  return result;
}

double PaperDocumentPage.bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t PaperDocumentPage.$bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);

  return CRRegister.projectedValue.getter();
}

uint64_t PaperDocumentPage.$bounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

double PaperDocumentPage.frame.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t PaperDocumentPage.$frame.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t PaperDocumentPage.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t PaperDocumentPage.contentsBounds.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  return a1(v2);
}

uint64_t PaperDocumentPage.$contentsBounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

double PaperDocumentPage.bounds.setter(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*PaperDocumentPage.bounds.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path setter for PaperDocumentPage.$bounds : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

void (*PaperDocumentPage.$bounds.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

double key path getter for PaperDocumentPage.frame : PaperDocumentPage@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double key path setter for PaperDocumentPage.frame : PaperDocumentPage(_OWORD *a1)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double PaperDocumentPage.frame.setter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*PaperDocumentPage.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for PaperDocumentPage.$frame : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PaperDocumentPage.$frame : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*PaperDocumentPage.$frame.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for PaperDocumentPage.contentsBounds : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

uint64_t PaperDocumentPage.contentsBounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

uint64_t (*PaperDocumentPage.contentsBounds.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for PaperDocumentPage.contentsBounds : PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  return a4(v5);
}

uint64_t key path setter for PaperDocumentPage.$contentsBounds : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*PaperDocumentPage.$contentsBounds.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PaperDocumentPage.orientation.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

void key path getter for PaperDocumentPage.orientation : PaperDocumentPage(_DWORD *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
}

double key path setter for PaperDocumentPage.orientation : PaperDocumentPage(int *a1)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double PaperDocumentPage.orientation.setter(int a1)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*PaperDocumentPage.orientation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.$orientation.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PaperDocumentPage.$orientation : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PaperDocumentPage.$orientation : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$orientation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$orientation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for PaperDocumentPage.pdfPageID : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
}

uint64_t PaperDocumentPage.pdfPageID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
}

uint64_t (*PaperDocumentPage.pdfPageID.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t PaperDocumentPage.pdfPageID.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  return a1(v2);
}

uint64_t key path getter for PaperDocumentPage.pdfPageID : PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  return a4(v5);
}

uint64_t key path setter for PaperDocumentPage.$pdfPageID : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$pdfPageID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$pdfPageID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t key path setter for PaperDocumentPage.drawing : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  outlined init with copy of Date?(v7, v4, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
}

uint64_t PaperDocumentPage.drawing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
}

uint64_t (*PaperDocumentPage.drawing.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.drawing.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  return a1(v2);
}

uint64_t key path getter for PaperDocumentPage.drawing : PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  return a4(v5);
}

uint64_t key path setter for PaperDocumentPage.$drawing : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$drawing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$drawing.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 36);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

void key path getter for PaperDocumentPage.flags : PaperDocumentPage(void *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
}

double key path setter for PaperDocumentPage.flags : PaperDocumentPage(uint64_t *a1)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double PaperDocumentPage.flags.setter(uint64_t *a1)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*PaperDocumentPage.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.$flags.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PaperDocumentPage.$flags : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PaperDocumentPage.$flags : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$flags.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$flags.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 40);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PaperDocumentPage.subelements.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaperDocumentPage(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaperDocumentPage.subelements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaperDocumentPage(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaperDocumentPage.initialAnnotationIDs.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

void key path getter for PaperDocumentPage.initialAnnotationIDs : PaperDocumentPage(void *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
}

double key path setter for PaperDocumentPage.initialAnnotationIDs : PaperDocumentPage(uint64_t *a1)
{
  type metadata accessor for PaperDocumentPage(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double PaperDocumentPage.initialAnnotationIDs.setter(uint64_t a1)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*PaperDocumentPage.initialAnnotationIDs.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.$initialAnnotationIDs.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PaperDocumentPage.$initialAnnotationIDs : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PaperDocumentPage.$initialAnnotationIDs : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$initialAnnotationIDs.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$initialAnnotationIDs.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 48);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PaperDocumentPage.init()()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v19 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v19 - v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v23 = 0u;
  v24 = 0u;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for PaperDocumentPage(0);
  v23 = 0u;
  v24 = 0u;
  CRRegister.init(wrappedValue:)();
  v14 = type metadata accessor for ContentsBounds(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  outlined init with copy of Date?(v13, v10, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  LODWORD(v23) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v15 = type metadata accessor for PDFPageID(0);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v17 = v19;
  (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
  outlined init with copy of Date?(v17, v21, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  *&v23 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  CROrderedSet.init()();
  *&v23 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  CRRegister.init(wrappedValue:)();
  return UnknownProperties.init()();
}

unint64_t lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ContentsBounds? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ContentsBounds? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type ContentsBounds and conformance ContentsBounds, type metadata accessor for ContentsBounds, &protocol conformance descriptor for ContentsBounds);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentsBounds? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PDFPageID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PDFPageID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PDFPageID and conformance PDFPageID, type metadata accessor for PDFPageID, &protocol conformance descriptor for PDFPageID);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [CRKeyPath] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CRKeyPath] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CRKeyPath] and conformance <A> [A]);
  }

  return result;
}

uint64_t PaperDocumentPage.copy(renamingReferences:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CRKeyPath();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v76 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v76 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
  v89 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v76 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v16 = *(v15 - 8);
  v98 = v15;
  v99 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v76 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v76 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v76 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v76 - v20;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v76 - v21;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v23 = &v76 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v76 - v26;
  outlined init with copy of PaperDocumentPage(v2, a2, type metadata accessor for PaperDocumentPage);
  CRRegister.copy(renamingReferences:)();
  v28 = *(v25 + 40);
  v28(a2, v27, v24);
  v29 = type metadata accessor for PaperDocumentPage(0);
  CRRegister.copy(renamingReferences:)();
  v28(a2 + v29[5], v27, v24);
  v30 = a1;
  v31 = v79;
  CRRegister.copy(renamingReferences:)();
  v32 = a2;
  v33 = v23;
  v34 = v103;
  (*(v80 + 40))(a2 + v29[6], v33, v31);
  v35 = v81;
  v36 = v82;
  CRRegister.copy(renamingReferences:)();
  (*(v83 + 40))(v32 + v29[7], v35, v36);
  v37 = v84;
  v38 = v85;
  CRRegister.copy(renamingReferences:)();
  (*(v86 + 40))(v32 + v29[8], v37, v38);
  v40 = v87;
  v39 = v88;
  CRRegister.copy(renamingReferences:)();
  (*(v90 + 5))(v32 + v29[9], v40, v39);
  v41 = v91;
  v42 = v94;
  CRRegister.copy(renamingReferences:)();
  (*(v96 + 40))(v32 + v29[10], v41, v42);
  v44 = v97;
  v43 = v98;
  v91 = v30;
  CROrderedSet.copy(renamingReferences:)();
  v45 = v29[11];
  v46 = *(v99 + 40);
  v94 = v32;
  v46(v32 + v45, v44, v43);
  v90 = v29;
  CRRegister.wrappedValue.getter();
  v47 = v106;
  v48 = *(v106 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v106 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v50 = v106;
    v52 = *(v34 + 16);
    v51 = v34 + 16;
    v53 = (*(v51 + 64) + 32) & ~*(v51 + 64);
    v88 = v47;
    v54 = v47 + v53;
    v98 = *(v51 + 56);
    v99 = v52;
    v55 = v89;
    v96 = v89 + 32;
    v97 = (v51 - 8);
    v56 = v77;
    v57 = v100;
    do
    {
      v58 = v55;
      v59 = v104;
      v60 = v99;
      (v99)(v57, v54, v104);
      v60(v101, v57, v59);
      type metadata accessor for PDFAnnotationElement(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement, &protocol conformance descriptor for PDFAnnotationElement);
      WeakRef.init(id:)();
      (*v97)(v57, v59);
      v106 = v50;
      v62 = *(v50 + 16);
      v61 = *(v50 + 24);
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        v50 = v106;
      }

      *(v50 + 16) = v62 + 1;
      v55 = v58;
      (*(v58 + 32))(v50 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v62, v56, v105);
      v54 += v98;
      --v48;
    }

    while (v48);

    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v55 = v89;
  }

  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement> and conformance WeakRef<A>, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR, MEMORY[0x1E6995460]);
  v63 = Array<A>.copy(renamingReferences:)();

  v64 = *(v63 + 16);
  if (v64)
  {
    v106 = v49;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
    v49 = v106;
    v66 = *(v55 + 16);
    v65 = v55 + 16;
    v67 = *(v65 + 64);
    v99 = v63;
    v68 = v63 + ((v67 + 32) & ~v67);
    v100 = *(v65 + 56);
    v101 = v66;
    v69 = v78;
    do
    {
      v70 = v102;
      v71 = v105;
      (v101)(v102, v68, v105);
      WeakRef.id.getter();
      (*(v65 - 8))(v70, v71);
      v106 = v49;
      v73 = *(v49 + 16);
      v72 = *(v49 + 24);
      if (v73 >= v72 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1);
        v49 = v106;
      }

      *(v49 + 16) = v73 + 1;
      (*(v103 + 32))(v49 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v73, v69, v104);
      v68 += v100;
      --v64;
    }

    while (v64);
  }

  v106 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  v74 = v92;
  CRRegister.init(_:)();
  return (*(v93 + 40))(v94 + v90[12], v74, v95);
}

uint64_t PaperDocumentPage.ObservableDifference.initialAnnotationIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for PaperDocumentPage.ObservableDifference(0) + 48));
  outlined copy of WrappedObservableDifference<[CRValueObservableDifference?]>?(v1);
  return v1;
}

void PaperDocumentPage.ObservableDifference.initialAnnotationIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaperDocumentPage.ObservableDifference(0) + 48);
  outlined consume of WrappedObservableDifference<[CRValueObservableDifference?]>?(*(v1 + v3));
  *(v1 + v3) = a1;
}

BOOL PaperDocumentPage.Partial.merge(delta:)(_BYTE *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v191 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v151 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v171 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v184 = &v151 - v10;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v190 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v163 = &v151 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v170 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v151 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v189 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v162 = &v151 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v169 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v151 - v20;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v188 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v161 = &v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v168 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v178 = &v151 - v25;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v187 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v160 = &v151 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v167 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v151 - v30;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v186 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v159 = &v151 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v166 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v174 = &v151 - v35;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v185 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v158 = &v151 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v165 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v172 = &v151 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v157 = &v151 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v156 = &v151 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v164 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v151 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v151 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v151 - v55;
  v192 = type metadata accessor for PaperDocumentPage.Partial(0);
  MEMORY[0x1EEE9AC00](v192);
  v58 = &v151 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PaperDocumentPage(v2, v58, type metadata accessor for PaperDocumentPage.Partial);
  v193 = a1;
  v59 = PaperDocumentPage.Partial.canMerge(delta:)(a1);
  outlined destroy of PaperDocumentPage.Partial(v58, type metadata accessor for PaperDocumentPage.Partial);
  if (!v59)
  {
    return v59;
  }

  v154 = v59;
  v152 = v6;
  v155 = v4;
  v60 = v2;
  outlined init with copy of Date?(v2, v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v153 = v42;
  v61 = *(v42 + 48);
  v62 = v61(v56, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v62 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193, v60, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    outlined init with copy of Date?(v193, v53, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v61(v53, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v63 = v153;
      v64 = v156;
      (*(v153 + 32))(v156, v53, v41);
      if (!v61(v60, 1, v41))
      {
        CRRegister.merge(delta:)();
      }

      (*(v63 + 8))(v64, v41);
    }
  }

  v65 = v192;
  v66 = v192[5];
  outlined init with copy of Date?(v60 + v66, v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v67 = v61(v50, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v68 = v65[5];
  if (v67 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v193[v68], v60 + v66, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v69 = v164;
    outlined init with copy of Date?(&v193[v68], v164, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v61(v69, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v70 = v153;
      v71 = v157;
      (*(v153 + 32))(v157, v69, v41);
      if (!v61((v60 + v66), 1, v41))
      {
        CRRegister.merge(delta:)();
      }

      (*(v70 + 8))(v71, v41);
    }
  }

  v72 = v173;
  v73 = v192;
  v74 = v192[6];
  v75 = v172;
  outlined init with copy of Date?(v60 + v74, v172, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  v76 = *(v185 + 48);
  v77 = v76(v75, 1, v72);
  outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  v78 = v73[6];
  v79 = v175;
  if (v77 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v193[v78], v60 + v74, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  }

  else
  {
    v80 = v165;
    outlined init with copy of Date?(&v193[v78], v165, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    if (v76(v80, 1, v72) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    }

    else
    {
      v81 = v185;
      v82 = v158;
      (*(v185 + 32))(v158, v80, v72);
      if (!v76(v60 + v74, 1, v72))
      {
        CRRegister.merge(delta:)();
      }

      (*(v81 + 8))(v82, v72);
    }
  }

  v83 = v192;
  v84 = v192[7];
  v85 = v174;
  outlined init with copy of Date?(v60 + v84, v174, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  v86 = *(v186 + 48);
  v87 = v86(v85, 1, v79);
  outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  v88 = v83[7];
  if (v87 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v193[v88], v60 + v84, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    v89 = v177;
  }

  else
  {
    v90 = v166;
    outlined init with copy of Date?(&v193[v88], v166, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    v91 = v86(v90, 1, v79);
    v89 = v177;
    if (v91 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v92 = v186;
      v93 = v159;
      (*(v186 + 32))(v159, v90, v79);
      if (!v86(v60 + v84, 1, v79))
      {
        CRRegister.merge(delta:)();
      }

      (*(v92 + 8))(v93, v79);
    }
  }

  v94 = v187;
  v95 = v192;
  v96 = v192[8];
  v97 = v176;
  outlined init with copy of Date?(v60 + v96, v176, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  v98 = *(v94 + 48);
  v99 = v98(v97, 1, v89);
  outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  v100 = v95[8];
  if (v99 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v193[v100], v60 + v96, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  }

  else
  {
    v101 = v167;
    outlined init with copy of Date?(&v193[v100], v167, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    if (v98(v101, 1, v89) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    }

    else
    {
      v102 = v187;
      v103 = v160;
      (*(v187 + 32))(v160, v101, v89);
      if (!v98(v60 + v96, 1, v89))
      {
        CRRegister.merge(delta:)();
      }

      (*(v102 + 8))(v103, v89);
    }
  }

  v104 = v192;
  v105 = v192[9];
  v106 = v178;
  outlined init with copy of Date?(v60 + v105, v178, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  v107 = *(v188 + 48);
  v108 = v179;
  v109 = v107(v106, 1, v179);
  outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  v110 = v104[9];
  if (v109 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v193[v110], v60 + v105, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    v111 = v181;
  }

  else
  {
    v112 = v168;
    outlined init with copy of Date?(&v193[v110], v168, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    if (v107(v112, 1, v108) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
      v111 = v181;
    }

    else
    {
      v113 = v108;
      v114 = v188;
      v115 = v161;
      (*(v188 + 32))(v161, v112, v108);
      v116 = v107(v60 + v105, 1, v108);
      v111 = v181;
      if (!v116)
      {
        CRRegister.merge(delta:)();
      }

      (*(v114 + 8))(v115, v113);
    }
  }

  v117 = v192;
  v118 = v192[10];
  v119 = v180;
  outlined init with copy of Date?(v60 + v118, v180, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  v120 = *(v189 + 48);
  v121 = v120(v119, 1, v111);
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  v122 = v117[10];
  if (v121 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v193[v122], v60 + v118, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  }

  else
  {
    v123 = v169;
    outlined init with copy of Date?(&v193[v122], v169, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    if (v120(v123, 1, v111) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    }

    else
    {
      v124 = v189;
      v125 = v162;
      (*(v189 + 32))(v162, v123, v111);
      if (!v120(v60 + v118, 1, v111))
      {
        CRRegister.merge(delta:)();
      }

      (*(v124 + 8))(v125, v111);
    }
  }

  v126 = v192;
  v127 = v192[11];
  v128 = v182;
  outlined init with copy of Date?(v60 + v127, v182, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v129 = *(v190 + 48);
  v130 = v183;
  v131 = v129(v128, 1, v183);
  outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v132 = v126[11];
  if (v131 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v193[v132], v60 + v127, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  }

  else
  {
    v133 = v170;
    outlined init with copy of Date?(&v193[v132], v170, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    if (v129(v133, 1, v130) != 1)
    {
      v136 = v130;
      v137 = v190;
      v138 = v163;
      (*(v190 + 32))(v163, v133, v130);
      v139 = v129(v60 + v127, 1, v130);
      v135 = v155;
      if (!v139)
      {
        CROrderedSet.MergeableDelta.merge(delta:)();
      }

      (*(v137 + 8))(v138, v136);
      v134 = v191;
      goto LABEL_59;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  }

  v134 = v191;
  v135 = v155;
LABEL_59:
  v140 = v192;
  v141 = v192[12];
  v142 = v184;
  outlined init with copy of Date?(v60 + v141, v184, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  v143 = *(v134 + 48);
  v144 = v143(v142, 1, v135);
  outlined destroy of StocksKitCurrencyCache.Provider?(v142, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  v145 = v140[12];
  if (v144 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v193[v145], v60 + v141, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    LOBYTE(v59) = v154;
  }

  else
  {
    v146 = v171;
    outlined init with copy of Date?(&v193[v145], v171, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    v147 = v143(v146, 1, v135);
    LOBYTE(v59) = v154;
    if (v147 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    }

    else
    {
      v148 = v191;
      v149 = v152;
      (*(v191 + 32))(v152, v146, v135);
      if (!v143(v60 + v141, 1, v135))
      {
        CRRegister.merge(delta:)();
      }

      (*(v148 + 8))(v149, v135);
    }
  }

  return v59;
}

BOOL PaperDocumentPage.Partial.canMerge(delta:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v160 = &v133[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v146 = &v133[-v5];
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v135 = &v133[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v137 = &v133[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v151 = &v133[-v10];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v162 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v136 = &v133[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v139 = &v133[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v133[-v15];
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v164 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v138 = &v133[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v133[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v133[-v20];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v171 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v140 = &v133[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v143 = &v133[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v170 = &v133[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v158 = *(v26 - 8);
  v159 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v133[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v145 = &v133[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v133[-v31];
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v161 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v144 = &v133[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v150 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v165 = &v133[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v166 = *(v37 - 8);
  v167 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v149 = &v133[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v154 = &v133[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v133[-v42];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v133[-v45];
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v133[-v48];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v153 = &v133[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v133[-v54];
  outlined init with copy of Date?(a1, v49, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v56 = *(v51 + 48);
  if (v56(v49, 1, v50) == 1)
  {
    v46 = v49;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    goto LABEL_6;
  }

  (*(v51 + 32))(v55, v49, v50);
  outlined init with copy of Date?(v172, v46, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v56(v46, 1, v50) == 1)
  {
    (*(v51 + 8))(v55, v50);
    goto LABEL_5;
  }

  v134 = CRRegister.canMerge(delta:)();
  v103 = *(v51 + 8);
  v103(v55, v50);
  v103(v46, v50);
  if ((v134 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v57 = type metadata accessor for PaperDocumentPage.Partial(0);
  outlined init with copy of Date?(&a1[v57[5]], v43, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v56(v43, 1, v50) == 1)
  {
    v58 = v43;
LABEL_10:
    v61 = v168;
    v60 = v169;
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v62 = v170;
    v64 = v166;
    v63 = v167;
    v65 = v165;
    goto LABEL_11;
  }

  v59 = v153;
  (*(v51 + 32))(v153, v43, v50);
  v58 = v154;
  outlined init with copy of Date?(v172 + v57[5], v154, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v56(v58, 1, v50) == 1)
  {
    (*(v51 + 8))(v59, v50);
    goto LABEL_10;
  }

  v104 = v59;
  v105 = v58;
  v106 = CRRegister.canMerge(delta:)();
  v107 = *(v51 + 8);
  v107(v104, v50);
  v107(v105, v50);
  v60 = v169;
  v62 = v170;
  v63 = v167;
  v61 = v168;
  v65 = v165;
  v64 = v166;
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  outlined init with copy of Date?(&a1[v57[6]], v65, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  v66 = *(v64 + 48);
  if (v66(v65, 1, v63) == 1)
  {
    v67 = v65;
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    v71 = v161;
    goto LABEL_16;
  }

  v170 = a1;
  v68 = v65;
  v69 = v149;
  (*(v64 + 32))(v149, v68, v63);
  v70 = v150;
  outlined init with copy of Date?(v172 + v57[6], v150, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  if (v66(v70, 1, v63) == 1)
  {
    (*(v64 + 8))(v69, v63);
    v67 = v70;
    a1 = v170;
    goto LABEL_15;
  }

  v114 = CRRegister.canMerge(delta:)();
  v115 = *(v64 + 8);
  v115(v69, v63);
  v115(v70, v63);
  a1 = v170;
  v71 = v161;
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  outlined init with copy of Date?(&a1[v57[7]], v61, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  v72 = *(v71 + 48);
  if (v72(v61, 1, v60) == 1)
  {
    v73 = v61;
LABEL_20:
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    v78 = v171;
    v80 = v158;
    v79 = v159;
    goto LABEL_21;
  }

  v74 = v144;
  (*(v71 + 32))(v144, v61, v60);
  v75 = v74;
  v76 = v60;
  v77 = v145;
  outlined init with copy of Date?(v172 + v57[7], v145, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v72(v77, 1, v76) == 1)
  {
    (*(v71 + 8))(v75, v76);
    v73 = v77;
    goto LABEL_20;
  }

  v120 = CRRegister.canMerge(delta:)();
  v121 = *(v71 + 8);
  v121(v75, v76);
  v121(v77, v76);
  v78 = v171;
  v80 = v158;
  v79 = v159;
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  outlined init with copy of Date?(&a1[v57[8]], v62, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  v81 = *(v80 + 48);
  if (v81(v62, 1, v79) == 1)
  {
    v82 = v62;
    v83 = v163;
    v84 = v164;
    v85 = v157;
LABEL_25:
    outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    v88 = v162;
    goto LABEL_26;
  }

  v86 = v142;
  (*(v80 + 32))(v142, v62, v79);
  v87 = v143;
  outlined init with copy of Date?(v172 + v57[8], v143, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  if (v81(v87, 1, v79) == 1)
  {
    (*(v80 + 8))(v86, v79);
    v82 = v87;
    v83 = v163;
    v84 = v164;
    v85 = v157;
    v78 = v171;
    goto LABEL_25;
  }

  v122 = CRRegister.canMerge(delta:)();
  v123 = *(v80 + 8);
  v123(v86, v79);
  v123(v87, v79);
  v88 = v162;
  v83 = v163;
  v84 = v164;
  v85 = v157;
  v78 = v171;
  if ((v122 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v89 = v156;
  outlined init with copy of Date?(&a1[v57[9]], v156, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  v90 = *(v78 + 48);
  if (v90(v89, 1, v85) == 1)
  {
    v91 = v89;
LABEL_30:
    outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    goto LABEL_31;
  }

  v92 = v140;
  (*(v78 + 32))(v140, v89, v85);
  v93 = v85;
  v94 = v78;
  v95 = v141;
  outlined init with copy of Date?(v172 + v57[9], v141, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  if (v90(v95, 1, v93) == 1)
  {
    (*(v94 + 8))(v92, v93);
    v91 = v95;
    v83 = v163;
    v84 = v164;
    goto LABEL_30;
  }

  v124 = CRRegister.canMerge(delta:)();
  v125 = *(v94 + 8);
  v125(v92, v93);
  v125(v95, v93);
  v83 = v163;
  v84 = v164;
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  outlined init with copy of Date?(&a1[v57[10]], v83, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  v96 = *(v84 + 48);
  v97 = v155;
  if (v96(v83, 1, v155) == 1)
  {
LABEL_34:
    outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    goto LABEL_35;
  }

  v98 = v138;
  (*(v84 + 32))(v138, v83, v97);
  v83 = v139;
  outlined init with copy of Date?(v172 + v57[10], v139, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  if (v96(v83, 1, v97) == 1)
  {
    (*(v84 + 8))(v98, v97);
    v88 = v162;
    goto LABEL_34;
  }

  v126 = CRRegister.canMerge(delta:)();
  v127 = *(v84 + 8);
  v127(v98, v97);
  v127(v83, v97);
  v88 = v162;
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v99 = v151;
  outlined init with copy of Date?(&a1[v57[11]], v151, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v100 = *(v88 + 48);
  v101 = v152;
  if (v100(v99, 1, v152) == 1)
  {
    v102 = v99;
  }

  else
  {
    v108 = v136;
    (*(v88 + 32))(v136, v99, v101);
    v109 = v137;
    outlined init with copy of Date?(v172 + v57[11], v137, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    if (v100(v109, 1, v101) != 1)
    {
      v128 = CROrderedSet.MergeableDelta.canMerge(delta:)();
      v129 = *(v88 + 8);
      v129(v108, v101);
      v129(v109, v101);
      if ((v128 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_44;
    }

    (*(v88 + 8))(v108, v101);
    v102 = v109;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
LABEL_44:
  v110 = v146;
  outlined init with copy of Date?(&a1[v57[12]], v146, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  v111 = v147;
  v112 = *(v147 + 48);
  v113 = v148;
  if (v112(v110, 1, v148) == 1)
  {
    v160 = v110;
LABEL_50:
    outlined destroy of StocksKitCurrencyCache.Provider?(v160, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    return 1;
  }

  v116 = v135;
  (*(v111 + 32))(v135, v110, v113);
  v117 = v172 + v57[12];
  v118 = v160;
  outlined init with copy of Date?(v117, v160, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  if (v112(v118, 1, v113) == 1)
  {
    (*(v111 + 8))(v116, v113);
    goto LABEL_50;
  }

  v130 = v160;
  v131 = CRRegister.canMerge(delta:)();
  v132 = *(v111 + 8);
  v132(v116, v113);
  v132(v130, v113);
  return (v131 & 1) != 0;
}

uint64_t PaperDocumentPage.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v51[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v51 - v22;
  outlined init with copy of Date?(v2, v51 - v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v23, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v25 + 8))(v23, v24);
  }

  v27 = type metadata accessor for PaperDocumentPage.Partial(0);
  outlined init with copy of Date?(v2 + v27[5], v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v26(v20, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v25 + 8))(v20, v24);
  }

  v28 = v55;
  v29 = v2;
  outlined init with copy of Date?(v2 + v27[6], v17, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v17, 1, v30);
  v33 = v57;
  if (v32 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v31 + 8))(v17, v30);
  }

  v34 = v56;
  v35 = v54;
  v36 = v52;
  outlined init with copy of Date?(v29 + v27[7], v52, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v38 + 8))(v36, v37);
  }

  v39 = v53;
  outlined init with copy of Date?(v29 + v27[8], v53, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v41 + 8))(v39, v40);
  }

  outlined init with copy of Date?(v29 + v27[9], v35, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v35, 1, v42) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v43 + 8))(v35, v42);
  }

  outlined init with copy of Date?(v29 + v27[10], v28, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v28, 1, v44) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v45 + 8))(v28, v44);
  }

  outlined init with copy of Date?(v29 + v27[11], v34, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v34, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  }

  else
  {
    CROrderedSet.MergeableDelta.visitReferences(_:)();
    (*(v47 + 8))(v34, v46);
  }

  outlined init with copy of Date?(v29 + v27[12], v33, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v33, 1, v48) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v49 + 8))(v33, v48);
}

double PaperDocumentPage.Partial.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v98 = v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v119 = v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v121 = v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v127 = v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v126 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = v88 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(a2, 1, 1, v21);
  v25 = type metadata accessor for PaperDocumentPage.Partial(0);
  v120 = v25[5];
  v122 = v21;
  v124 = v24;
  v125 = v23;
  v23(a2 + v120, 1, 1, v21);
  v26 = v25[6];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v117 = v27;
  v118 = v26;
  v115 = v28 + 56;
  v116 = v29;
  (v29)(a2 + v26, 1, 1);
  v30 = v25[7];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v112 = v31;
  v113 = v30;
  v110 = v32 + 56;
  v111 = v33;
  (v33)(a2 + v30, 1, 1);
  v34 = v25[8];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v107 = v34;
  v106 = v35;
  v105 = v37;
  v104 = v36 + 56;
  (v37)(a2 + v34, 1, 1);
  v38 = v25[9];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v103 = v38;
  v102 = v39;
  v101 = v41;
  v100 = v40 + 56;
  (v41)(a2 + v38, 1, 1);
  v42 = v25[10];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v108 = v42;
  v97 = v45;
  v96 = v44 + 56;
  v45(a2 + v42, 1, 1, v43);
  v46 = v25[11];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v50 = v48 + 56;
  v95 = v46;
  v94 = v49;
  v49(a2 + v46, 1, 1, v47);
  v51 = v25[12];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v55 = v53 + 56;
  v129 = a2;
  v54(a2 + v51, 1, 1, v52);
  v56 = v128;
  dispatch thunk of CRDecoder.keyedContainer()();
  if (v56)
  {

    v57 = v129;
LABEL_26:
    outlined destroy of PaperDocumentPage.Partial(v57, type metadata accessor for PaperDocumentPage.Partial);
    return result;
  }

  v58 = v126;
  v93 = v43;
  v90 = v50;
  v91 = v47;
  v88[1] = v55;
  v92 = v54;
  v89 = v51;
  v128 = 0;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v59 = v123;
    v60 = v128;
    CRRegister.init(from:)();
    v57 = v129;
    v61 = v127;
    if (v60)
    {
      goto LABEL_25;
    }

    v62 = v58;
    v128 = 0;
    v63 = v122;
    v125(v59, 0, 1, v122);
    outlined assign with take of UUID?(v59, v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v57 = v129;
    v61 = v127;
    v62 = v58;
    v63 = v122;
  }

  v64 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v65 = v93;
  if (v64)
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v66 = v128;
    CRRegister.init(from:)();
    if (v66)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v125(v62, 0, 1, v63);
    outlined assign with take of UUID?(v62, v57 + v120, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  v67 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v68 = v121;
  if (v67)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
    v69 = v128;
    CRRegister.init(from:)();
    if (v69)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v116(v61, 0, 1, v117);
    outlined assign with take of UUID?(v61, v57 + v118, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  }

  v70 = v52;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
    v71 = v128;
    CRRegister.init(from:)();
    if (v71)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v111(v68, 0, 1, v112);
    outlined assign with take of UUID?(v68, v57 + v113, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  v72 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v73 = v119;
  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
    v74 = v114;
    v75 = v128;
    CRRegister.init(from:)();
    if (v75)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v105(v74, 0, 1, v106);
    outlined assign with take of UUID?(v74, v57 + v107, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    v65 = v93;
  }

  if (!dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v76 = v128;
  CRRegister.init(from:)();
  if (v76)
  {
LABEL_25:

    goto LABEL_26;
  }

  v128 = 0;
  v101(v73, 0, 1, v102);
  outlined assign with take of UUID?(v73, v57 + v103, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
LABEL_23:
  v77 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v78 = v109;
  v79 = v108;
  if (v77)
  {
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    v80 = v128;
    CRRegister.init(from:)();
    if (v80)
    {
      goto LABEL_25;
    }

    v128 = 0;
    v97(v78, 0, 1, v65);
    outlined assign with take of UUID?(v78, v57 + v79, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
    v82 = v99;
    v83 = v128;
    CROrderedSet.MergeableDelta.init(from:)();
    v128 = v83;
    if (v83)
    {
      goto LABEL_25;
    }

    v94(v82, 0, 1, v91);
    outlined assign with take of UUID?(v82, v57 + v95, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    v70 = v52;
  }

  v84 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v85 = v92;
  v86 = v98;
  if (v84)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
    lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
    v87 = v128;
    CRRegister.init(from:)();

    if (v87)
    {
      goto LABEL_26;
    }

    v85(v86, 0, 1, v70);
    outlined assign with take of UUID?(v86, v57 + v89, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  }

  else
  {
  }

  return result;
}

double PaperDocumentPage.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v99 = &v94 - v1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v94 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v109 = *(v9 - 8);
  v110 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v116 = &v94 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v112 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v107 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v114 = &v94 - v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v115 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v123 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v20 = *(v19 - 8);
  v118 = v19;
  v119 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v121 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v122 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = (&v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v94 - v38;
  v40 = v125;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v40)
  {
    v97 = v29;
    v95 = v36;
    v94 = v26;
    v96 = v24;
    v125 = 0;
    outlined init with copy of Date?(v124, v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v42 = *(v34 + 48);
    v43 = v34;
    if (v42(v32, 1, v33) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      v44 = v97;
    }

    else
    {
      (*(v34 + 32))(v39, v32, v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      v45 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v45;
      v44 = v97;
      if (v45)
      {
        (*(v43 + 8))(v39, v33);
        goto LABEL_36;
      }

      (*(v43 + 8))(v39, v33);
    }

    v97 = type metadata accessor for PaperDocumentPage.Partial(0);
    outlined init with copy of Date?(v124 + v97[5], v44, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v46 = v42(v44, 1, v33);
    v47 = v96;
    v48 = v121;
    if (v46 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      v49 = v122;
      v50 = v123;
    }

    else
    {
      v51 = v95;
      (*(v43 + 32))(v95, v44, v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      v52 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v52;
      v53 = v43;
      v49 = v122;
      v50 = v123;
      if (v52)
      {
        (*(v53 + 8))(v51, v33);
        goto LABEL_36;
      }

      (*(v53 + 8))(v51, v33);
    }

    v54 = v97;
    v55 = v124;
    outlined init with copy of Date?(v124 + v97[6], v48, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    if ((*(v49 + 48))(v48, 1, v47) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    }

    else
    {
      v56 = v48;
      v57 = v94;
      (*(v49 + 32))(v94, v56, v47);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ContentsBounds?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR, MEMORY[0x1E6995080]);
      v58 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v58;
      if (v58)
      {
        (*(v49 + 8))(v57, v47);
        goto LABEL_36;
      }

      (*(v49 + 8))(v57, v47);
    }

    outlined init with copy of Date?(v55 + v54[7], v50, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    v59 = v118;
    v60 = v119;
    v61 = (*(v119 + 48))(v50, 1, v118);
    v62 = v120;
    if (v61 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v63 = v113;
      (*(v60 + 32))(v113, v50, v59);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      v64 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v64;
      if (v64)
      {
        (*(v60 + 8))(v63, v59);
        goto LABEL_36;
      }

      (*(v60 + 8))(v63, v59);
    }

    v65 = v124;
    v66 = v114;
    outlined init with copy of Date?(v124 + v54[8], v114, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    v67 = v115;
    v68 = (*(v115 + 48))(v66, 1, v62);
    v69 = v117;
    if (v68 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
      v70 = v116;
    }

    else
    {
      v71 = v66;
      v72 = v111;
      (*(v67 + 32))(v111, v71, v62);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFPageID?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR, MEMORY[0x1E6995080]);
      v73 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v73;
      v70 = v116;
      if (v73)
      {
        (*(v67 + 8))(v72, v62);
        goto LABEL_36;
      }

      (*(v67 + 8))(v72, v62);
    }

    v74 = v97;
    outlined init with copy of Date?(v65 + v97[9], v70, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    v75 = v112;
    if ((*(v112 + 48))(v70, 1, v69) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    }

    else
    {
      v76 = v70;
      v77 = v107;
      (*(v75 + 32))(v107, v76, v69);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR, MEMORY[0x1E6995080]);
      v78 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v75 + 8))(v77, v69);
      v125 = v78;
      if (v78)
      {
        goto LABEL_36;
      }
    }

    v79 = v108;
    outlined init with copy of Date?(v65 + v74[10], v108, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    v81 = v109;
    v80 = v110;
    if ((*(v109 + 48))(v79, 1, v110) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    }

    else
    {
      v82 = v102;
      (*(v81 + 32))(v102, v79, v80);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR, MEMORY[0x1E6995080]);
      v83 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v81 + 8))(v82, v80);
      v125 = v83;
      if (v83)
      {
        goto LABEL_36;
      }
    }

    v84 = v104;
    v85 = v105;
    v86 = v65 + v74[11];
    v87 = v103;
    outlined init with copy of Date?(v86, v103, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    v88 = v106;
    if ((*(v85 + 48))(v87, 1, v106) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
      goto LABEL_38;
    }

    (*(v85 + 32))(v84, v87, v88);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MergeableDelta and conformance CROrderedSet<A>.MergeableDelta, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR, MEMORY[0x1E6995110]);
    v89 = v125;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v85 + 8))(v84, v88);
    v125 = v89;
    if (!v89)
    {
LABEL_38:
      v90 = v99;
      outlined init with copy of Date?(v124 + v74[12], v99, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
      v91 = v100;
      v92 = v101;
      if ((*(v100 + 48))(v90, 1, v101) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
      }

      else
      {
        v93 = v98;
        (*(v91 + 32))(v98, v90, v92);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<[CRKeyPath]> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR, MEMORY[0x1E6995080]);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v91 + 8))(v93, v92);
      }

      return result;
    }

LABEL_36:
  }

  return result;
}