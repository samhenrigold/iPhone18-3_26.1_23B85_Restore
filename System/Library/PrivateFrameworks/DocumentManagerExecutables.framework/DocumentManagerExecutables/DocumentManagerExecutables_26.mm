void *DOCItemInfoContentViewController.actionsView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView);
  v3 = v2;
  if (v2 == 1)
  {
    if (*(v0 + OBJC_IVAR___DOCItemInfoContentViewController_showsActionsView) == 1)
    {
      v4 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
      swift_beginAccess();
      v5 = *(v0 + v4);
      v6 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
      swift_beginAccess();
      v7 = *(v0 + v6);
      v8 = objc_allocWithZone(type metadata accessor for DOCInfoActionsView());
      v9 = v5;
      v3 = DOCInfoActionsView.init(actionManager:configuration:)(v5, v7);
      v10 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(1);
      (*((*v10 & *v3) + 0x100))(1);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      (*((*v10 & *v3) + 0xD0))(Strong);
      v12 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
      v12 = 1;
    }

    *(v0 + v1) = v3;
    v13 = v3;
    outlined consume of DOCProgressCollectionIndicatorView??(v12);
  }

  outlined copy of DOCProgressCollectionIndicatorView??(v2);
  return v3;
}

void DOCItemInfoContentViewController.updateRootContentViewElementSpacing()()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    return;
  }

  v2 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
LABEL_65:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 == 1)
  {
    v5 = *&v1[v2];
    if (v5 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_7:
        if ((v5 & 0xC000000000000001) != 0)
        {

          v6 = MEMORY[0x24C1FC540](0, v5);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v6 = *(v5 + 32);
          swift_unknownObjectRetain();
        }

        v7 = [v6 isShared];
        swift_unknownObjectRelease();
        v8 = 4.0;
        if (v7)
        {
          goto LABEL_12;
        }
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

  v8 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_metrics + 16];
LABEL_12:
  v9 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow, closure #1 in DOCItemInfoContentViewController.actionsRow.getter);
  v10 = [v9 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  while (v11 != v12)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1FC540](v12, v2);
    }

    else
    {
      if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v13 = *(v2 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v15 = [v13 isHidden];

    ++v12;
    if ((v15 & 1) == 0)
    {
      v16 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_metrics + 24];
      goto LABEL_24;
    }
  }

  v16 = 4.0;
LABEL_24:

  v17 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
  v18 = &v1[OBJC_IVAR___DOCItemInfoContentViewController_metrics];
  v19 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_metrics];
  v20 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_rootContentView];
  v21 = DOCItemInfoContentViewController.thumbnailView.getter();
  v22 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v21);
  if (v22)
  {
    v23 = v22;
    [*&v20[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v22 afterView:v19];

    v24 = v20;
  }

  else
  {
    v24 = v21;
    v21 = v20;
  }

  v25 = v18[1];
  v26 = *&v1[v17];
  v27 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
  v28 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v27);
  if (v28)
  {
    v29 = v28;
    [*&v26[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v28 afterView:v25];

    v30 = v26;
  }

  else
  {
    v30 = v27;
    v27 = v26;
  }

  v31 = *&v1[v17];
  v32 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
  v33 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v32);
  if (v33)
  {
    v34 = v33;
    [*&v31[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v33 afterView:v8];

    v35 = v31;
  }

  else
  {
    v35 = v32;
    v32 = v31;
  }

  v36 = *&v1[v17];
  v37 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
  v38 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v37);
  if (v38)
  {
    v39 = v38;
    [*&v36[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v38 afterView:16.0];

    v40 = v36;
  }

  else
  {
    v40 = v37;
    v37 = v36;
  }

  v41 = *&v1[v17];
  v42 = DOCItemInfoContentViewController.shareView.getter();
  v43 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v42);
  if (v43)
  {
    v44 = v43;
    [*&v41[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v43 afterView:16.0];

    v45 = v41;
  }

  else
  {
    v45 = v42;
    v42 = v41;
  }

  v46 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow];
  v47 = *&v1[v17];
  v48 = v46;
  v49 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v48);
  if (v49)
  {
    v50 = v49;
    [*&v47[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v49 afterView:v16];

    v51 = v47;
  }

  else
  {
    v51 = v48;
    v48 = v47;
  }

  v52 = *(v18 + 56);
  if (v52 == 1)
  {
    v53 = *&v1[v17];
    v54 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator);
    v55 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v54);
    if (v55)
    {
      v56 = v55;
      [*&v53[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v55 afterView:18.0];

      v57 = v53;
    }

    else
    {
      v57 = v54;
      v54 = v53;
    }
  }

  v58 = v18[4];
  v59 = *&v1[v17];
  v60 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow, closure #1 in DOCItemInfoContentViewController.metadataTitleRow.getter);
  v61 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v60);
  if (v61)
  {
    v62 = v61;
    [*&v59[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v61 afterView:v58];

    v63 = v59;
  }

  else
  {
    v63 = v60;
    v60 = v59;
  }

  v64 = v18[5];
  v65 = *&v1[v17];
  v66 = DOCItemInfoContentViewController.metadataView.getter();
  v67 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v66);
  if (v67)
  {
    v68 = v67;
    [*&v65[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v67 afterView:v64];

    v69 = v65;
  }

  else
  {
    v69 = v66;
    v66 = v65;
  }

  if (v52)
  {
    v70 = *&v1[v17];
    v71 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator);
    v72 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v71);
    if (v72)
    {
      v73 = v72;
      [*&v70[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v72 afterView:21.0];

      v74 = v70;
    }

    else
    {
      v74 = v71;
      v71 = v70;
    }
  }

  v75 = v18[6];
  v76 = *&v1[v17];
  v77 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow, closure #1 in DOCItemInfoContentViewController.tagsTitleRow.getter);
  v78 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v77);
  if (v78)
  {
    v79 = v78;
    [*&v76[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v78 afterView:v75];

    v80 = v76;
  }

  else
  {
    v80 = v77;
    v77 = v76;
  }
}

void (*DOCItemInfoContentViewController.showsShareButton.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemInfoContentViewController.showsShareButton.modify;
}

void DOCItemInfoContentViewController.showsShareButton.modify(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if ((v5 ^ v6))
  {
    v7 = v2[3];
    v8 = v2[4];
    v9 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton, closure #1 in DOCItemInfoContentViewController.shareButton.getter);
    [v9 setHidden_];

    v10 = DOCItemInfoContentViewController.actionsView.getter();
    if (v10)
    {
      v11 = v10;
      (*((*MEMORY[0x277D85000] & *v10) + 0x100))(*(v2[3] + v2[4]));
    }

    DOCItemInfoContentViewController.updateRootContentViewElementSpacing()();
  }

  free(v2);
}

uint64_t DOCItemInfoContentViewController.showsItemLocation.getter()
{
  v0 = DOCItemInfoContentViewController.metadataView.getter();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xD8))();

  return v1 & 1;
}

void DOCItemInfoContentViewController.showsItemLocation.setter(uint64_t a1)
{
  v2 = DOCItemInfoContentViewController.metadataView.getter();
  (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(a1);
}

void key path getter for DOCItemInfoContentViewController.showsItemLocation : DOCItemInfoContentViewController(_BYTE *a1@<X8>)
{
  v2 = DOCItemInfoContentViewController.metadataView.getter();
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0xD8))();

  *a1 = v3 & 1;
}

void key path setter for DOCItemInfoContentViewController.showsItemLocation : DOCItemInfoContentViewController(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = DOCItemInfoContentViewController.metadataView.getter();
  (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(v1);
}

char *DOCItemInfoContentViewController.metadataView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView);
  }

  else
  {
    v4 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = objc_allocWithZone(type metadata accessor for DOCMetadataView());
    v7 = v5;
    v8 = v5;
    v9 = v0;
    v10 = DOCMetadataView.init(metadataKeys:configuration:)(&outlined read-only object #0 of one-time initialization function for allValues, v8);
    v11 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v10) + 0x148))(1);
    (*((*v11 & *v10) + 0xF8))(1);
    v12 = *MEMORY[0x277D768C8];
    v13 = *(MEMORY[0x277D768C8] + 8);
    v14 = *(MEMORY[0x277D768C8] + 16);
    v15 = *(MEMORY[0x277D768C8] + 24);
    v16 = v10;
    [v16 setLayoutMargins_];
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    v18 = *((*v11 & *v16) + 0x130);
    v19 = swift_unknownObjectRetain();
    v18(v19);
    v20 = *(v9 + v1);
    *(v9 + v1) = v10;
    v3 = v16;

    v2 = 0;
  }

  v21 = v2;
  return v3;
}

void (*DOCItemInfoContentViewController.showsItemLocation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = DOCItemInfoContentViewController.metadataView.getter();
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0xD8))();

  *(a1 + 8) = v4 & 1;
  return DOCItemInfoContentViewController.showsItemLocation.modify;
}

void DOCItemInfoContentViewController.showsItemLocation.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(*a1 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView);
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0xE0);
  v4 = v2;
  v3(v1);
}

id DOCItemInfoContentViewController.thumbnailView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView);
  }

  else
  {
    type metadata accessor for DOCImageContainerFittingView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_documentPreviewTappedWithSender_];
    [v4 addGestureRecognizer_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *DOCItemInfoContentViewController.filenameTitleLabel.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel);
  }

  else
  {
    v4 = v0;
    type metadata accessor for DOCCopyableLabel();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    (*((*MEMORY[0x277D85000] & *v5) + 0x90))(1);
    v6 = v5;
    [v6 setAdjustsFontForContentSizeCategory_];
    [v6 setTextAlignment_];
    v7 = specialized DOCItemInfoContentViewController.Metrics.fileNameFont.getter();
    [v6 setFont_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *DOCItemInfoContentViewController.shareStatusLabel.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    type metadata accessor for DOCCopyableLabel();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v6) + 0x90))(1);
    v8 = [objc_opt_self() secondaryLabelColor];
    (*((*v7 & *v6) + 0xC0))(v8);
    [v6 setFont_];
    v9 = *(v5 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id DOCItemInfoContentViewController.syncingErrorLabel.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setFont_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id DOCItemInfoContentViewController.downloadButton.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton);
  }

  else
  {
    v4 = [objc_allocWithZone(DOCItemInfoOpenButton) init];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCItemInfoContentViewController.metadataSectionLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTextAlignment_];
  [v2 setFont_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1148829696;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  result = _DocumentManagerBundle();
  if (result)
  {
    v6 = result;
    v12._object = 0x8000000249BDC0D0;
    v7._countAndFlagsBits = 0x74616D726F666E49;
    v7._object = 0xEB000000006E6F69;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0xD000000000000037;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v12);

    v11 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    [v2 setText_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *DOCItemInfoContentViewController.showMoreMetadataButton.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton);
  }

  else
  {
    v4 = v0;
    v5 = DOCItemInfoContentViewController.metadataView.getter();
    v6 = objc_allocWithZone(type metadata accessor for DOCLevelOfDetailButton(0));
    v7 = DOCLevelOfDetailButton.init(metadataView:)(v5);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D063B8]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id closure #1 in DOCItemInfoContentViewController.metadataTitleRow.getter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA1010;
  *(v7 + 32) = DOCItemInfoContentViewController.shareButton.getter(a2, a3);
  *(v7 + 40) = a4();
  v8 = objc_allocWithZone(MEMORY[0x277D75A68]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArrangedSubviews_];

  LODWORD(v11) = 1148829696;
  [v10 setContentHuggingPriority:1 forAxis:v11];
  [v10 setDistribution_];
  [v10 setSpacing_];
  [v10 setAlignment_];
  return v10;
}

id DOCItemInfoContentViewController.addTagsButton.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = aBlock - v3;
  v5 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton;
  v6 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton);
  }

  else
  {
    type metadata accessor for DOCButton();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    UIButton.init(type:primaryAction:)(v10, UIButtonTypeSystem, v9);
    v12 = v11;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v13) = 1148846080;
    [v12 setContentHuggingPriority:0 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [v12 setContentHuggingPriority:1 forAxis:v14];
    v15 = objc_opt_self();
    v16 = v12;

    static UIButton.Configuration.borderless()();
    v17 = type metadata accessor for UIButton.Configuration();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
    UIButton.configuration.setter();
    v18 = DOCItemInfoContentViewController.showMoreMetadataButton.getter();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    aBlock[4] = partial apply for closure #3 in closure #1 in DOCItemInfoContentViewController.addTagsButton.getter;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_282;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    [v16 setConfigurationUpdateHandler_];
    _Block_release(v21);

    v23 = *(v8 + v5);
    *(v8 + v5) = v16;
    v7 = v16;

    v6 = 0;
  }

  v24 = v6;
  return v7;
}

id closure #1 in DOCItemInfoContentViewController.tagsSectionTitleLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTextAlignment_];
  [v2 setFont_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1148829696;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  result = _DocumentManagerBundle();
  if (result)
  {
    v6 = result;
    v12._object = 0x8000000249BDC0B0;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._object = 0x8000000249BDC090;
    v12._countAndFlagsBits = 0xD00000000000001FLL;
    v8._countAndFlagsBits = 0xD000000000000013;
    v9._countAndFlagsBits = 1936154964;
    v9._object = 0xE400000000000000;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v12);

    v11 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    [v2 setText_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in DOCItemInfoContentViewController.addTagsButton.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    DOCItemInfoContentViewController.addTagsButtonTapped()();
  }
}

Swift::Void __swiftcall DOCItemInfoContentViewController.addTagsButtonTapped()()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v3 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
    swift_beginAccess();
    v4 = *(v1 + v3);
    v12 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
LABEL_21:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        swift_unknownObjectRetain();
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      swift_getObjectType();
      v8 = DOCNode.fpfs_syncFetchFPItem()();
      v9 = swift_unknownObjectRelease();
      ++v6;
      if (v8)
      {
        MEMORY[0x24C1FB090](v9);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v7;
      }
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 beginAddTagsWithItems:v10.super.isa controller:v1];
    swift_unknownObjectRelease();
  }

  else
  {
    v10.super.isa = DOCItemInfoContentViewController.addTagsButton.getter();
    DOCItemInfoContentViewController.showAddTags(from:)(v10.super.isa);
  }
}

void closure #3 in closure #1 in DOCItemInfoContentViewController.addTagsButton.getter(UIButton *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = _DocumentManagerBundle();
    if (v5)
    {
      v6 = v5;
      v12._object = 0x8000000249BDC1C0;
      v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v7.value._object = 0xEB00000000656C62;
      v8._countAndFlagsBits = 0x7367615420646441;
      v9._object = 0x8000000249BDC1A0;
      v12._countAndFlagsBits = 0xD000000000000023;
      v9._countAndFlagsBits = 0xD000000000000017;
      v8._object = 0xE800000000000000;
      v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v7, v6, v8, v12);

      v11 = [v4 viewIfLoaded];
      DOCLevelOfDetailButton.Metrics.applyProperties(andTitle:toButton:inContainer:avoidZeroInsetsAtLargestSize:)(v10, a1, v11, 1);
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCItemInfoContentViewController.tagsCollectionView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView);
  }

  else
  {
    v4 = [objc_allocWithZone(DOCTagsCollectionView) init];
    [v4 setShowsAddTagButton_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCItemInfoContentViewController.shareButton.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = type metadata accessor for DOCShareButton();
  v29.receiver = objc_allocWithZone(v12);
  v29.super_class = v12;

  v13 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #1 in DOCItemInfoContentViewController.shareButton.getter;
  *(v14 + 24) = v11;
  v15 = v13;

  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v15 setDoc:v16 primaryAction:?];

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = [static DOCInterface.general ellipsisMenuItemImageName];
  v18 = [objc_opt_self() systemImageNamed_];

  static DOCInfoActionsView.Metrics.buttonConfiguration(for:)(v18);
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  UIButton.configuration.setter();

  (*(v7 + 8))(v10, v6);

  if (_UISolariumEnabled())
  {
    v20 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
    swift_beginAccess();
    v21 = *(a1 + v20);
    if (v21 >> 62)
    {
      if (__CocoaSet.count.getter() == 1)
      {
        goto LABEL_6;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_6:
      v22 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
      swift_beginAccess();
      v23 = *(a1 + v22);

      v24 = v23;
      v25 = specialized DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(v21, 0);

LABEL_9:
      [v15 setMenu_];

      [v15 setShowsMenuAsPrimaryAction_];
      goto LABEL_10;
    }

    v25 = 0;
    goto LABEL_9;
  }

LABEL_10:
  LODWORD(v19) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v19];
  LODWORD(v26) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v26];

  return v15;
}

void closure #1 in closure #1 in DOCItemInfoContentViewController.shareButton.getter(uint64_t a1)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      DOCItemInfoContentViewController.showActivityViewControllerActionsPopover()();
    }
  }
}

double DOCItemInfoContentViewController.showActivityViewControllerActionsPopover()()
{
  v1 = v0;
  v2 = DOCItemInfoContentViewController.actionsView.getter();
  if (v2)
  {
    v3 = v2;
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x130))();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v15._rawValue = v4;
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = v6;

  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v9 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v13);
  DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(v15);

  return result;
}

id DOCItemInfoContentViewController.shareView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_249BA0290;
    *(v4 + 32) = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
    v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v5 initWithArrangedSubviews_];

    [v7 setAxis_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void DOCItemInfoContentViewController.statusAppearance.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance;
  v4 = *(v1 + OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance);
  if (v4 != 10)
  {
    goto LABEL_14;
  }

  v5 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_13;
  }

  v7 = *(v1 + v5);
  if (v7 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_13;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x24C1FC540](0, v7);

LABEL_9:
    if ([v8 isCloudItem] && objc_msgSend(v8, sel_isItemPinned) && (objc_msgSend(v8, sel_isExternalDownloadPlaceholder) & 1) == 0)
    {
      LOBYTE(v4) = 9;
      *(v1 + v3) = 9;
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
LABEL_13:
    LOBYTE(v4) = 2;
    *(v1 + v3) = 2;
LABEL_14:
    *a1 = v4;
    return;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
    swift_unknownObjectRetain();
    goto LABEL_9;
  }

  __break(1u);
}

id DOCItemInfoContentViewController.shareButton.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in DOCItemInfoContentViewController.actionsRow.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v2 setDistribution_];
  [v2 setAlignment_];
  v3 = objc_opt_self();
  v4 = v2;
  [v3 itemInfoView];
  swift_getObjCClassMetadata();
  v5 = [swift_getObjCClassFromMetadata() actionsContainer];
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x24C1FAD20](v6);
  }

  [v4 setAccessibilityIdentifier_];

  v7 = DOCItemInfoContentViewController.actionsView.getter();
  if (v7)
  {
    v8 = v7;
    type metadata accessor for UILayoutPriority(0);
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v9) = v20;
    [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  }

  if (*(a1 + OBJC_IVAR___DOCItemInfoContentViewController_allowOpenButton) == 1)
  {
    v10 = DOCItemInfoContentViewController.downloadButton.getter();
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    [v4 addArrangedSubview_];
    v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = [v11 widthAnchor];
    v13 = [v12 constraintGreaterThanOrEqualToConstant_];

    [v13 setActive_];
    LODWORD(v14) = 1144750080;
    [v11 setContentHuggingPriority:0 forAxis:v14];
    LODWORD(v15) = 1132068864;
    [v11 setContentCompressionResistancePriority:0 forAxis:v15];
    [v4 addArrangedSubview_];
  }

  v16 = *(a1 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView);
  if (v16)
  {
    v17 = v16;
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addArrangedSubview_];
    outlined consume of DOCProgressCollectionIndicatorView??(v16);
  }

  v18 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton, closure #1 in DOCItemInfoContentViewController.shareButton.getter);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  [v4 addArrangedSubview_];
  return v4;
}

char *DOCItemInfoContentViewController.RootVStack.init()()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_arrangedStackElementViews] = MEMORY[0x277D84F90];
  v13.receiver = v0;
  v13.super_class = type metadata accessor for DOCItemInfoContentViewController.RootVStack();
  v2 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView;
  v4 = *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView];
  v5 = objc_opt_self();
  v6 = v2;
  v7 = v4;
  v8 = [v5 clearColor];
  [v7 setBackgroundColor_];

  [*&v2[v3] setLayoutMarginsRelativeArrangement_];
  [*&v2[v3] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v2[v3] setAxis_];
  [*&v2[v3] setSpacing_];
  [v6 addSubview_];
  v9 = one-time initialization token for defaultLayoutMargins;
  v10 = *&v2[v3];
  if (v9 != -1)
  {
    swift_once();
  }

  isa = DOCConstraintsToResizeWithSuperview();

  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints_];

  return v6;
}

id DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_arrangedStackElementViews;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x24C1FB090]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return [*(v2 + OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView) addArrangedSubview_];
}

char *DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_visibilityObserver] = 0;
  *&v2[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_clientView] = a1;
  *&v2[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_trailingButton] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DOCItemInfoContentViewController.RootVStack.StackElementView();
  v5 = a1;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 addSubview_];
  [v7 setPreservesSuperviewLayoutMargins_];
  [v7 setLayoutMargins_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  isa = DOCConstraintsToResizeWithSuperview();
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints_];

  v9 = OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_clientView;
  [v7 setHidden_];
  v14 = *&v7[v9];
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v14;
  v11 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v12 = *&v7[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_visibilityObserver];
  *&v7[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_visibilityObserver] = v11;

  return v7;
}

void closure #1 in DOCItemInfoContentViewController.RootVStack.StackElementView.setUpVisibilityObservation()(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v5 setHidden_];
  }
}

void DOCItemInfoContentViewController.RootVStack.StackElementView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_visibilityObserver);
}

char *DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(void *a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_arrangedStackElementViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
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
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      if (static NSObject.== infix(_:_:)())
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
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_13:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_2493AC000, v12, v13, "ERROR: stackElement(forClientView:) unable to locate stack element for view %@", v14, 0xCu);
    outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  return 0;
}

double DOCItemInfoContentViewController.RootVStack.__ivar_destroyer()
{

  return result;
}

double DOCItemInfoContentViewController.installRootContentViewElements()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView);
  v3 = DOCItemInfoContentViewController.thumbnailView.getter();
  v4 = type metadata accessor for DOCItemInfoContentViewController.RootVStack.StackElementView();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  v7 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v6, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v7);

  v8 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
  v9 = objc_allocWithZone(v4);
  v10 = v8;
  v11 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v10, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v11);

  v12 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
  v13 = objc_allocWithZone(v4);
  v14 = v12;
  v15 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v14, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v15);

  v16 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
  v17 = objc_allocWithZone(v4);
  v18 = v16;
  v19 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v18, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v19);

  v20 = DOCItemInfoContentViewController.shareView.getter();
  v21 = objc_allocWithZone(v4);
  v22 = v20;
  v23 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v22, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v23);

  v24 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow, closure #1 in DOCItemInfoContentViewController.actionsRow.getter);
  v25 = objc_allocWithZone(v4);
  v26 = v24;
  v27 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v26, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v27);

  v59 = *(v1 + OBJC_IVAR___DOCItemInfoContentViewController_metrics + 56);
  if (v59 == 1)
  {
    v28 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator);
    v29 = objc_allocWithZone(v4);
    v30 = v28;
    v31 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v30, 0);
    DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v31);
  }

  v32 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow, closure #1 in DOCItemInfoContentViewController.metadataTitleRow.getter);
  v33 = objc_allocWithZone(v4);
  v34 = v32;
  v35 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v34, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v35);

  v36 = DOCItemInfoContentViewController.metadataView.getter();
  v37 = objc_allocWithZone(v4);
  v38 = v36;
  v39 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v38, 0);
  v60 = v2;
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v39);

  v40 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v41 = *(v1 + v40);
  if (v41 >> 62)
  {
LABEL_23:
    v42 = __CocoaSet.count.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = 0;
  while (v42 != v43)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x24C1FC540](v43, v41);
      if (__OFADD__(v43, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v44 = *(v41 + 8 * v43 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v43, 1))
      {
        goto LABEL_15;
      }
    }

    if ([v44 isRootItem])
    {
      swift_unknownObjectRelease();
LABEL_20:

      return result;
    }

    v45 = [v44 doc_isCollaborationInvitation];
    swift_unknownObjectRelease();
    ++v43;
    if (v45)
    {
      goto LABEL_20;
    }
  }

  if (v59)
  {
    v46 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator);
    v47 = objc_allocWithZone(v4);
    v48 = v46;
    v49 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v48, 0);
    DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v49);
  }

  v50 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow, closure #1 in DOCItemInfoContentViewController.tagsTitleRow.getter);
  v51 = objc_allocWithZone(v4);
  v52 = v50;
  v53 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v52, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v53);

  v54 = DOCItemInfoContentViewController.tagsCollectionView.getter();
  v55 = objc_allocWithZone(v4);
  v56 = v54;
  v57 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v56, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v57);

  return result;
}

double DOCItemInfoContentViewController.nodesObserver.getter()
{
  swift_beginAccess();

  return result;
}

double DOCItemInfoContentViewController.nodesObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t DOCItemInfoContentViewController.shouldObserveNodes.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  swift_beginAccess();
  return *(v0 + v1);
}

double DOCItemInfoContentViewController.shouldObserveNodes.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
    if (a1)
    {
      swift_beginAccess();
      v8 = *(v1 + v7);
      if (!v8)
      {
        return result;
      }

      v9 = *(*v8 + 304);

      v9(v10);
    }

    else
    {
      swift_beginAccess();
      v11 = *(v1 + v7);
      if (!v11)
      {
        return result;
      }

      v12 = *(*v11 + 312);

      v12(v13);
    }
  }

  return result;
}

void (*DOCItemInfoContentViewController.shouldObserveNodes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return DOCItemInfoContentViewController.shouldObserveNodes.modify;
}

void DOCItemInfoContentViewController.shouldObserveNodes.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    DOCItemInfoContentViewController.shouldObserveNodes.setter(v3);
    goto LABEL_10;
  }

  v5 = v2[9];
  v4 = v2[10];
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    v7 = v2[9];
    v8 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
    if (v3)
    {
      swift_beginAccess();
      v9 = *(v7 + v8);
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = (*v9 + 304);
    }

    else
    {
      swift_beginAccess();
      v11 = *(v7 + v8);
      if (!v11)
      {
        goto LABEL_10;
      }

      v10 = (*v11 + 312);
    }

    v12 = *v10;

    v12(v13);
  }

LABEL_10:

  free(v2);
}

double DOCItemInfoContentViewController.actionsForCurrentActivityViewController.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

id DOCItemInfoContentViewController.__allocating_init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a3;
  v13 = objc_allocWithZone(v6);
  return DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(a1, a2, v10, a4, a5, a6);
}

id DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(void *a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR___DOCItemInfoContentViewController_documentManager;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController_documentManager] = 0;
  v12 = &v7[OBJC_IVAR___DOCItemInfoContentViewController_metrics];
  specialized DOCItemInfoContentViewController.Metrics.init()(v37);
  v13 = v37[3];
  v12[2] = v37[2];
  v12[3] = v13;
  v12[4] = v37[4];
  v14 = v37[1];
  *v12 = v37[0];
  v12[1] = v14;
  v7[OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce] = 0;
  v15 = &v7[OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins];
  if (one-time initialization token for defaultLayoutMargins != -1)
  {
    swift_once();
  }

  v16 = *&qword_27EEEA210;
  *v15 = static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins;
  v15[1] = v16;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController_eventReporting + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton] = 1;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataSectionLabel] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsSectionTitleLabel] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView] = 1;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView] = 0;
  v7[OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance] = 10;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow] = 0;
  v17 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
  *&v7[v17] = [objc_allocWithZone(type metadata accessor for DOCItemInfoContentViewController.RootVStack()) init];
  v18 = OBJC_IVAR___DOCItemInfoContentViewController_scrollView;
  *&v7[v18] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController_attributionView] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
  *&v7[v19] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So23UIDocumentBrowserActionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver] = 0;
  v7[OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes] = 0;
  v7[OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat] = 0;
  v20 = &v7[OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize];
  *v20 = 0;
  v20[1] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu] = 0;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController_nodes] = a2;
  *&v7[OBJC_IVAR___DOCItemInfoContentViewController_configuration] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v21 = *&v7[v11];
  *&v7[v11] = a4;
  v22 = a1;
  v23 = a4;

  v7[OBJC_IVAR___DOCItemInfoContentViewController_allowOpenButton] = a3 & 1;
  if (a5)
  {
    v7[OBJC_IVAR___DOCItemInfoContentViewController_showsActionsView] = 1;
    *&v7[OBJC_IVAR___DOCItemInfoContentViewController_actionManager] = a5;
  }

  else
  {
    v7[OBJC_IVAR___DOCItemInfoContentViewController_showsActionsView] = 0;
    v24 = [objc_allocWithZone(DOCActionManager) init];
    *&v7[OBJC_IVAR___DOCItemInfoContentViewController_actionManager] = v24;
  }

  v36.receiver = v7;
  v36.super_class = ObjectType;
  v25 = a5;
  v26 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  DOCItemInfoContentViewController.setupNodeObserver()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_249B9FA70;
  v28 = type metadata accessor for UITraitDisplayScale();
  v29 = MEMORY[0x277D74B68];
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  v30 = type metadata accessor for UITraitUserInterfaceStyle();
  v31 = MEMORY[0x277D74BF0];
  *(v27 + 48) = v30;
  *(v27 + 56) = v31;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  if (([v22 isFilesApp] & 1) == 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UIViewController.forcefullyRegisterForIconStyleChanges(with:)();
  }

  swift_unknownObjectRelease();
  return v26;
}

void DOCItemInfoContentViewController.setupNodeObserver()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_allocObject();
  *(v37 + 16) = MEMORY[0x277D84F90];
  v7 = dispatch_group_create();
  v36 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v8 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v30 = v0;
  v9 = *&v0[v8];
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    v22 = v30;
    *(v21 + 16) = v37;
    *(v21 + 24) = v22;
    aBlock[4] = partial apply for closure #2 in DOCItemInfoContentViewController.setupNodeObserver();
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_273_0;
    v23 = _Block_copy(aBlock);

    v24 = v22;
    v25 = v31;
    static DispatchQoS.unspecified.getter();
    v38 = MEMORY[0x277D84F90];
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v26 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v23);

    (*(v2 + 8))(v26, v1);
    (*(v32 + 8))(v25, v34);

    return;
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v10 >= 1)
  {
    v28 = v2;
    v29 = v1;
    v35 = v9 & 0xC000000000000001;

    v11 = 0;
    v12 = v9;
    v13 = v37;
    do
    {
      if (v35)
      {
        v14 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v11 + 32);
        swift_unknownObjectRetain();
      }

      ++v11;
      dispatch_group_enter(v7);
      v15 = swift_allocObject();
      v16 = v36;
      v15[2] = v36;
      v15[3] = v13;
      v15[4] = v7;
      swift_getObjectType();
      v17 = swift_allocObject();
      v17[2] = partial apply for closure #1 in DOCItemInfoContentViewController.setupNodeObserver();
      v17[3] = v15;
      v17[4] = v14;
      v18 = v16;

      v19 = v7;

      swift_unknownObjectRetain();
      DOCNode.fpfs_fetchFINode(completion:)(partial apply for closure #1 in DOCItemInfoContentViewController.fetchFINodeIfPossible(_:completion:), v17);
      swift_unknownObjectRelease();

      v9 = v12;
    }

    while (v10 != v11);

    v2 = v28;
    v1 = v29;
    goto LABEL_10;
  }

  __break(1u);
}

void DOCItemInfoContentViewController.updateThumbnail(force:)(char a1)
{
  v2 = v1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v4);
  v57 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v6);
  v55 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchTime();
  v54 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v8);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = v53 - v14;
  v16 = [v1 traitCollection];
  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v64 = static UITraitCollection.Traits.displayScale;
  v65 = qword_27EEE9C90;
  v17 = one-time initialization token for userInterfaceStyle;

  if (v17 != -1)
  {
    swift_once();
  }

  v66 = static UITraitCollection.Traits.userInterfaceStyle;
  v67 = qword_27EEE9CA8;
  aBlock[0] = 0;
  aBlock[1] = 0xE000000000000000;

  _StringGuts.grow(_:)(18);

  aBlock[0] = 0x6172287469617254;
  aBlock[1] = 0xEF3A65756C615677;
  v63[0] = 0;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v18);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v19 = aBlock[0];
  v20 = aBlock[1];
  aBlock[0] = 0;
  aBlock[1] = v19;
  aBlock[2] = v20;
  v22 = *(&v64 + 1);
  v21 = v65;
  v23 = v64;

  specialized OptionSet<>.insert(_:)(v63, v23, v22, v21);

  v25 = *(&v66 + 1);
  v24 = v67;
  v26 = v66;

  specialized OptionSet<>.insert(_:)(v63, v26, v25, v24);

  swift_arrayDestroy();
  v27 = UITraitCollection.doc_hasSpecified(_:)(aBlock);

  if (v27)
  {
    v28 = DOCItemInfoContentViewController.thumbnailView.getter();
    v29 = MEMORY[0x277D85000];
    v30 = (*((*MEMORY[0x277D85000] & *v28) + 0x120))();
    v32 = v31;

    if ((v30 != 0.0 || v32 != 0.0) && ((a1 & 1) != 0 || *&v2[OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize] != v30 || *&v2[OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize + 8] != v32))
    {
      v33 = &v2[OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize];
      *v33 = v30;
      v33[1] = v32;
      v34 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView;
      v35 = *&v2[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView];
      v36 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
      swift_beginAccess();
      v37 = *((*v29 & *v35) + 0x148);
      v38 = v35;

      v37(v39);

      v40 = OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce;
      if ((v2[OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce] & 1) == 0)
      {
        v41 = *&v2[v34];
        v42 = *((*v29 & *v41) + 0xF0);
        v43 = v41;
        v44 = v42();

        if (v44 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_12:
            if ((v44 & 0xC000000000000001) != 0)
            {
              v37 = MEMORY[0x24C1FC540](0, v44);
            }

            else
            {
              if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_31;
              }

              v37 = *(v44 + 32);
              swift_unknownObjectRetain();
            }

            if ([v37 isRepresentativeIcon])
            {
              goto LABEL_32;
            }

            v44 = *&v2[v36];
            if (!(v44 >> 62))
            {
              if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_18:
                if ((v44 & 0xC000000000000001) != 0)
                {

                  v45 = MEMORY[0x24C1FC540](0, v44);
                }

                else
                {
                  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v45 = *(v44 + 32);
                  swift_unknownObjectRetain();
                }

                if (([v45 isFolder] & 1) == 0)
                {
                  v2[v40] = 1;
                  [*&v2[v34] setAlpha_];
                  [v37 addListener_];
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
                  v53[1] = v45;
                  v46 = static OS_dispatch_queue.main.getter();
                  static DispatchTime.now()();
                  + infix(_:_:)();
                  v54 = *(v54 + 8);
                  (v54)(v10, v61);
                  v47 = swift_allocObject();
                  *(v47 + 16) = v2;
                  *(v47 + 24) = v37;
                  aBlock[4] = partial apply for closure #1 in DOCItemInfoContentViewController.updateThumbnail(force:);
                  aBlock[5] = v47;
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 1107296256;
                  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
                  aBlock[3] = &block_descriptor_240;
                  v48 = _Block_copy(aBlock);
                  v49 = v2;
                  swift_unknownObjectRetain();

                  v50 = v55;
                  static DispatchQoS.unspecified.getter();
                  aBlock[0] = MEMORY[0x277D84F90];
                  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                  v51 = v57;
                  v52 = v60;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  MEMORY[0x24C1FB940](v15, v50, v51, v48);
                  _Block_release(v48);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  (*(v59 + 8))(v51, v52);
                  (*(v56 + 8))(v50, v58);
                  (v54)(v15, v61);
                  return;
                }

                swift_unknownObjectRelease();
              }

LABEL_32:
              swift_unknownObjectRelease();
              goto LABEL_33;
            }

LABEL_31:
            if (__CocoaSet.count.getter())
            {
              goto LABEL_18;
            }

            goto LABEL_32;
          }
        }

        else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }
      }

LABEL_33:
      [*&v2[v34] setAlpha_];
    }
  }
}

uint64_t closure #2 in DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(uint64_t a1)
{
  v24 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v23 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v22 - v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v10 + 8);
  v19(v13, v9);
  aBlock[4] = partial apply for closure #1 in closure #2 in DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_258;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v17, v8, v4, v20);
  _Block_release(v20);

  (*(v27 + 8))(v4, v1);
  (*(v25 + 8))(v8, v26);
  return (v19)(v17, v23);
}

void closure #1 in closure #2 in DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = DOCItemInfoContentViewController.thumbnailView.getter();
    swift_beginAccess();
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x148);

    v4(v5);
  }
}

id DOCItemInfoContentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall DOCItemInfoContentViewController.loadView()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v0 setView_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR___DOCItemInfoContentViewController_scrollView];
  [v2 addSubview_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249BA0470;
  v16 = [v4 topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v20;
  v21 = [v4 leadingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v15 + 40) = v25;
  v26 = [v4 trailingAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v15 + 48) = v30;
  v31 = [v4 bottomAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v35 = [v33 bottomAnchor];

  v36 = [v31 constraintEqualToAnchor_];
  *(v15 + 56) = v36;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints_];
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, sel_viewDidLoad, v11);
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    v66 = v13;
    v67 = v9;
    v68 = v7;
    v69 = v8;
    v70 = v4;
    v71 = v3;
    [objc_opt_self() itemInfoView];
    swift_getObjCClassMetadata();
    v16 = [swift_getObjCClassFromMetadata() infoContainer];
    if (!v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = MEMORY[0x24C1FAD20](v17);
    }

    [v15 setAccessibilityIdentifier_];

    v18 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
    [v18 setNumberOfLines_];

    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel] setLineBreakMode_];
    v19 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
    [v19 setNumberOfLines_];

    v20 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel;
    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel] setAdjustsFontForContentSizeCategory_];
    [*&v1[v20] setTextAlignment_];
    v21 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
    [v21 setNumberOfLines_];

    v22 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView;
    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView] setAdjustsFontForContentSizeCategory_];
    [*&v1[v22] setTextAlignment_];
    v23 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
    [v23 setNumberOfLines_];

    v24 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel;
    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel] setAdjustsFontForContentSizeCategory_];
    [*&v1[v24] setTextAlignment_];
    v25 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController_rootContentView] setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v1[v25] setLayoutMargins_];
    DOCItemInfoContentViewController.installRootContentViewElements()();
    DOCItemInfoContentViewController.updateRootContentViewElementSpacing()();
    v26 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_scrollView];
    [v26 addSubview_];
    [v26 setContentInsetAdjustmentBehavior_];
    [v26 setAlwaysBounceVertical_];
    [v26 setAlwaysBounceHorizontal_];
    [v26 setDelegate_];
    [v26 setClipsToBounds_];
    v27 = [*&v1[v25] widthAnchor];
    v28 = [v26 frameLayoutGuide];
    v29 = [v28 widthAnchor];

    v30 = [v27 constraintEqualToAnchor_];
    type metadata accessor for UILayoutPriority(0);
    LODWORD(v73) = 1148846080;
    v74 = 1065353216;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v31) = aBlock[0];
    [v30 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_249BA0D00;
    v33 = [*&v1[v25] topAnchor];
    v34 = [v26 contentLayoutGuide];
    v35 = [v34 topAnchor];

    v36 = [v33 constraintEqualToAnchor_];
    *(v32 + 32) = v36;
    v37 = [*&v1[v25] bottomAnchor];
    v38 = [v26 contentLayoutGuide];
    v39 = [v38 bottomAnchor];

    v40 = [v37 constraintEqualToAnchor_];
    *(v32 + 40) = v40;
    v41 = [*&v1[v25] leadingAnchor];
    v42 = [v26 contentLayoutGuide];
    v43 = [v42 leadingAnchor];

    v44 = [v41 constraintEqualToAnchor_];
    *(v32 + 48) = v44;
    v45 = [*&v1[v25] trailingAnchor];
    v46 = [v26 contentLayoutGuide];
    v47 = [v46 trailingAnchor];

    v48 = [v45 constraintEqualToAnchor_];
    *(v32 + 56) = v48;
    *(v32 + 64) = v30;
    v73 = v32;
    v49 = v30;
    v50 = DOCItemInfoContentViewController.thumbnailView.getter();
    v51 = [v50 heightAnchor];

    v52 = [v26 frameLayoutGuide];
    v53 = [v52 heightAnchor];

    v54 = [v51 constraintLessThanOrEqualToAnchor:v53 multiplier:0.333333333];
    MEMORY[0x24C1FB090]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = objc_opt_self();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v55 activateConstraints_];

    DOCItemInfoContentViewController.updateInfoViews()();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v57 = static OS_dispatch_queue.main.getter();
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in DOCItemInfoContentViewController.viewDidLoad();
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_55;
    v59 = _Block_copy(aBlock);

    v60 = v66;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v61 = v68;
    v62 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v60, v61, v59);
    _Block_release(v59);

    (*(v70 + 8))(v61, v62);
    (*(v67 + 8))(v60, v69);
    v63 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
    swift_beginAccess();
    v64 = *&v1[v63];
    if (v64 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_12;
      }
    }

    else if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:

      return;
    }

    if ((v64 & 0xC000000000000001) != 0)
    {

      MEMORY[0x24C1FC540](0, v64);

      goto LABEL_11;
    }

    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
LABEL_11:
      swift_getObjectType();
      v65 = swift_allocObject();
      swift_unknownObjectWeakInit();

      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #2 in DOCItemInfoContentViewController.viewDidLoad(), v65);
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

id DOCItemInfoContentViewController.updateInfoViews()()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 1);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  v91 = v3;
  v9 = DOCItemInfoContentViewController.metadataView.getter();
  v10 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v11 = *((*MEMORY[0x277D85000] & *v9) + 0xC8);

  v11(v12);

  v13 = *MEMORY[0x277CC6050];
  v14 = *&v1[v10];

  specialized static DOCActionManager.canPerform(_:on:)(v13, v14);
  LOBYTE(v13) = v15;

  v16 = &selRef_initWithFrame_;
  if (v13)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v90 = v7;
      v22 = v21;
      v23 = swift_slowAlloc();
      v92[0] = v23;
      *v22 = 136315138;
      v89 = v2;
      v24 = v10;
      v25 = *&v1[v10];

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v27 = MEMORY[0x24C1FB0D0](v25, v26);
      v29 = v28;

      v30 = v27;
      v16 = &selRef_initWithFrame_;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v92);

      *(v22 + 4) = v31;
      v10 = v24;
      v2 = v89;
      _os_log_impl(&dword_2493AC000, v19, v20, "[Info View]: Nodes can be tagged: %s - showing Tag section", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1FE850](v23, -1, -1);
      v32 = v22;
      v7 = v90;
      MEMORY[0x24C1FE850](v32, -1, -1);
    }

    v33 = DOCItemInfoContentViewController.tagsCollectionView.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v34.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 setNodes_];
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.UI);
    v36 = v1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v90 = v7;
      v40 = v39;
      v89 = swift_slowAlloc();
      v92[0] = v89;
      *v40 = 136315138;
      v41 = *&v1[v10];

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v43 = v2;
      v44 = v10;
      v45 = MEMORY[0x24C1FB0D0](v41, v42);
      v47 = v46;

      v48 = v45;
      v10 = v44;
      v2 = v43;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v92);
      v16 = &selRef_initWithFrame_;

      *(v40 + 4) = v49;
      _os_log_impl(&dword_2493AC000, v37, v38, "[Info View]: Nodes CANNOT be tagged: %s - hidding Tag section", v40, 0xCu);
      v50 = v89;
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x24C1FE850](v50, -1, -1);
      v51 = v40;
      v7 = v90;
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    v52 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator);
    [v52 v16[459]];

    v53 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow, closure #1 in DOCItemInfoContentViewController.tagsTitleRow.getter);
    [v53 v16[459]];

    v34.super.isa = DOCItemInfoContentViewController.tagsCollectionView.getter();
    [v34.super.isa v16[459]];
  }

  v54 = *&v1[v10];
  if (v54 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_30;
    }
  }

  else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_30;
  }

  v55 = *&v1[v10];
  if (v55 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_17;
    }

LABEL_30:
    v65 = DOCItemInfoContentViewController.downloadButton.getter();
    [v65 v16[459]];

    goto LABEL_31;
  }

  result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v55 & 0xC000000000000001) != 0)
  {

    v56 = MEMORY[0x24C1FC540](0, v55);
  }

  else
  {
    if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v56 = *(v55 + 32);
    swift_unknownObjectRetain();
  }

  v57 = [v56 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  isa = [*&v1[v58] documentContentTypes];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v60 = UTType._bridgeToObjectiveC()().super.isa;
  v61 = [(objc_class *)v60 doc_conformsToAnyInContentTypes:isa];

  (*(v91 + 8))(v7, v2);
  if (v61 & 1) != 0 || ([v56 isFolder])
  {
    v62 = 1;
  }

  else
  {
    v62 = [*&v1[v58] isFilesApp];
  }

  v63 = DOCItemInfoContentViewController.downloadButton.getter();
  [v63 setNode_];

  v64 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton;
  [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton] setNodeCanBeOpened_];
  [*&v1[v64] updateDownloadState];
  [*&v1[v64] v16[459]];
  swift_unknownObjectRelease();
LABEL_31:
  v66 = DOCItemInfoContentViewController.titleText.getter();
  DOCItemInfoContentViewController.updateTitleWithImage(forText:)(v66, v67);

  v68 = DOCItemInfoContentViewController.kindAndSizeString()();
  if (v69)
  {
    v70 = v68;
    v71 = v69;
    v72 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
    v73 = MEMORY[0x24C1FAD20](v70, v71);

    [v72 setText_];

    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView] v16[459]];
  }

  else
  {
    v74 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
    [v74 v16[459]];
  }

  v75 = *&v1[v10];
  if (v75 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_44;
    }
  }

  else if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_44;
  }

  v76 = *&v1[v10];
  if (!(v76 >> 62))
  {
    result = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_38;
    }

LABEL_44:
    v83 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
    [v83 v16[459]];
    goto LABEL_45;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_38:
  if ((v76 & 0xC000000000000001) == 0)
  {
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_41;
    }

LABEL_56:
    __break(1u);
    return result;
  }

  MEMORY[0x24C1FC540](0, v76);

LABEL_41:
  swift_getObjectType();
  v77 = DOCNode.syncErrorDescription.getter();
  if (!v78)
  {
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v79 = v77;
  v80 = v78;
  v81 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
  [v81 v16[459]];

  v82 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel];
  v83 = MEMORY[0x24C1FAD20](v79, v80);

  [v82 setText_];
  swift_unknownObjectRelease();

LABEL_45:
  v84 = DOCItemInfoContentViewController.actionsView.getter();
  if (v84)
  {
    v85 = v84;
    v86 = *((*MEMORY[0x277D85000] & *v84) + 0x120);

    v86(v87);
  }

  DOCItemInfoContentViewController.updateThumbnail(force:)(1);
  DOCItemInfoContentViewController.updateShowMoreButtonVisibility()();
  DOCItemInfoContentViewController.updateShareView()();
  DOCItemInfoContentViewController.updateRootContentViewElementSpacing()();
  return DOCItemInfoContentViewController.updateAlwaysOpenWithMenu()();
}

void closure #1 in DOCItemInfoContentViewController.viewDidLoad()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR___DOCItemInfoContentViewController_eventReporting;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v8[3] = type metadata accessor for DOCItemInfoContentViewController();
      v8[0] = v2;
      v6 = *(v4 + 8);
      v7 = v2;
      v6(v8, 1, 1, 0, ObjectType, v4);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
    }
  }
}

void closure #2 in DOCItemInfoContentViewController.viewDidLoad()(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FINodeEntity(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1)
    {
      v18 = a1;
      FINodeEntity.init(item:)(v18, v15);
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      outlined init with copy of FINodeEntity(v15, v11);
      type metadata accessor for MainActor();
      v20 = v17;
      v21 = static MainActor.shared.getter();
      v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      v23[2] = v21;
      v23[3] = v24;
      v23[4] = v20;
      outlined init with take of FINodeEntity(v11, v23 + v22);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad(), v23);

      outlined destroy of FINodeEntity(v15);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for FINodeEntity(0);
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16EntityIdentifierVSgMd, &_s10AppIntents16EntityIdentifierVSgMR);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad(), v7, v6);
}

id closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad()()
{
  result = [*(v0 + 16) view];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);

    outlined init with copy of FINodeEntity(v5, v4);
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
    EntityIdentifier.init<A>(for:)();
    v6 = type metadata accessor for EntityIdentifier();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    UIView.appEntityIdentifier.setter();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCItemInfoContentViewController.fetchFINodeIfPossible(_:completion:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void (*)(void), uint64_t), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = a1;
    (a3)();
  }

  else
  {
    a3(a5, a2, a3, a4);
  }
}

void closure #1 in DOCItemInfoContentViewController.setupNodeObserver()(uint64_t a1, id a2, uint64_t a3, NSObject *a4)
{
  [a2 lock];
  swift_beginAccess();
  v7 = swift_unknownObjectRetain();
  MEMORY[0x24C1FB090](v7);
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [a2 unlock];
  dispatch_group_leave(a4);
}

double closure #2 in DOCItemInfoContentViewController.setupNodeObserver()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  type metadata accessor for DOCMultiNodeObserver();
  swift_allocObject();

  v9 = DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(v8, 1, 0.25);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *(*v9 + 288);

  v11(partial apply for closure #1 in closure #2 in DOCItemInfoContentViewController.setupNodeObserver(), v10);

  (*(v4 + 8))(v7, v3);

  v12 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  v13 = swift_beginAccess();
  if (*(a2 + v12) == 1)
  {
    (*(*v9 + 304))(v13);
  }

  DOCItemInfoContentViewController.changesReceivedFrom(nodeObserver:)(v9);
  v14 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
  swift_beginAccess();
  *(a2 + v14) = v9;

  return result;
}

void closure #1 in closure #2 in DOCItemInfoContentViewController.setupNodeObserver()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCItemInfoContentViewController.changesReceivedFrom(nodeObserver:)(a1);
  }
}

uint64_t DOCItemInfoContentViewController.changesReceivedFrom(nodeObserver:)(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 136))();
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!(v5 >> 62))
  {
    v6 = *(v1 + v4);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_16:
    *(v2 + v4) = v3;

    goto LABEL_17;
  }

  v11 = __CocoaSet.count.getter();
  v6 = *(v1 + v4);
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_32;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_33:

    MEMORY[0x24C1FC540](0, v6);

    goto LABEL_8;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_8:
    swift_getObjectType();
    v7 = DOCNode.isFPItem.getter();
    swift_unknownObjectRelease();
    if (!v7)
    {
      goto LABEL_18;
    }

    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v3);
    if (All)
    {
      v9 = All;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    if (v9 >> 62)
    {
      goto LABEL_39;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v10 = v9;
    while (1)
    {

      *(v2 + v4) = v10;
LABEL_17:

LABEL_18:
      if (v3 >> 62)
      {
        if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
        {
LABEL_29:

          goto LABEL_30;
        }
      }

      else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_29;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_35;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v3 + 32);
        swift_unknownObjectRetain();
        goto LABEL_23;
      }

      __break(1u);
LABEL_39:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v10 = _bridgeCocoaArray<A>(_:)();
    }
  }

  __break(1u);
LABEL_35:
  v12 = MEMORY[0x24C1FC540](0, v3);
LABEL_23:

  *(v2 + OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance) = 10;
  swift_unknownObjectRetain();
  v13 = DOCItemInfoContentViewController.thumbnailView.getter();
  v14 = [v13 interactions];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd, &_sSo13UIInteraction_pMR);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v19 = __CocoaSet.count.getter();

    if (v19)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v16)
  {
LABEL_25:
    v17 = *(v2 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView);
    DOCImageContainerFittingView.enableDragInteraction(with:)(v12);
  }

LABEL_26:
  swift_unknownObjectRelease();
LABEL_30:
  DOCItemInfoContentViewController.updateInfoViews()();
  return swift_unknownObjectRelease();
}

void DOCImageContainerFittingView.enableDragInteraction(with:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (DOCNode.supportsDrag.getter(ObjectType))
  {
    v5 = type metadata accessor for DOCDragInteraction();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D84699134F2F83A5DD978A1B1F3ADA5818DOCDragInteraction_node] = a1;
    v11.receiver = v6;
    v11.super_class = v5;
    swift_unknownObjectRetain();
    v7 = objc_msgSendSuper2(&v11, sel_initWithDelegate_, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249BA0290;
    *(v8 + 32) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd, &_sSo13UIInteraction_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setInteractions_];
  }
}

void DOCItemInfoContentViewController.updateShareView()()
{
  v4 = v0;
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_31;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_31;
  }

  v7 = *(v4 + v5);
  if (v7 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_5:
      if ((v7 & 0xC000000000000001) != 0)
      {

        v1 = MEMORY[0x24C1FC540](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v1 = *(v7 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      DOCNode.collaborationType.getter(&v38);
      if (v38 == 2)
      {
        v14 = DOCNode.documentAttributes.getter();
        if (v14)
        {
          v3 = v14;
          type metadata accessor for DOCAttributionPillView();
          v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v15 = [v3 sender];
          DOCAttributionPillView.configure(with:)(v15);

          DOCItemInfoContentViewController.menuForAttributionView.getter();
          (*((*MEMORY[0x277D85000] & *v12) + 0xD8))();
          [v12 addTarget:v4 action:sel_didTapAttributionView forControlEvents:64];
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      if (v38 == 3 || (v8 = [v1 fpfs_fpItem]) == 0)
      {
LABEL_18:
        v22 = [v1 isShared];
        v23 = DOCItemInfoContentViewController.shareView.getter();
        v24 = v23;
        if (v22)
        {
          [v23 setHidden_];

          v25 = *(v4 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView);
          if (v25)
          {
            [v25 setHidden_];
          }

          v26 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
          [v26 setHidden_];

          v27 = *(v4 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
          v39 = 1;
          v38 = 0;
          v28 = v27;
          v29 = DOCNode.localizedSharingStatusDescription(type:options:)(&v39, &v38, ObjectType);
          if (v30)
          {
            v31 = v30;
          }

          else
          {
            v29 = 0;
            v31 = 0xE000000000000000;
          }

          v32 = MEMORY[0x24C1FAD20](v29, v31);

          [v28 setText_];
          swift_unknownObjectRelease();
        }

        else
        {
          [v23 setHidden_];

          v33 = *(v4 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView);
          if (v33)
          {
            [v33 setHidden_];
          }

          v34 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
          [v34 setHidden_];

          [*(v4 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) setText_];
          swift_unknownObjectRelease();
        }

        return;
      }

      v3 = v8;
      if (one-time initialization token for shared == -1)
      {
LABEL_12:
        swift_beginAccess();
        v9 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
        v10 = static DOCCollaborationHighlightManager.shared;
        v11 = v9(v3);

        if (v11)
        {
          v12 = [objc_allocWithZone(MEMORY[0x277CDC660]) init];
          v13 = v11;
          [v12 setHighlight_];

LABEL_16:
          v16 = v12;
          v17 = DOCItemInfoContentViewController.shareView.getter();
          [v17 setHidden_];

          v18 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
          [v18 setText_];

          [*(v4 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) setHidden_];
          v19 = OBJC_IVAR___DOCItemInfoContentViewController_attributionView;
          [*(v4 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView) removeFromSuperview];
          v20 = *(v4 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView);
          [v20 addArrangedSubview_];
          swift_unknownObjectRelease();

          v21 = *(v4 + v19);
          *(v4 + v19) = v12;

          return;
        }

        goto LABEL_18;
      }

LABEL_36:
      swift_once();
      goto LABEL_12;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_31:
  v35 = DOCItemInfoContentViewController.shareView.getter();
  [v35 setHidden_];

  v36 = *(v4 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView);
  if (v36)
  {
    [v36 setHidden_];
  }

  v37 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
  [v37 setHidden_];

  [*(v4 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) setText_];
}

void DOCItemInfoContentViewController.menuForAttributionView.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v29 = v4;
  v5 = *MEMORY[0x277D05F38];
  v6 = v3;

  v30 = v1;
  v8 = DOCActionManager.collaborationActions(for:presentingViewController:availability:)(v7, v1, v5);

  v31 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    v27 = v8 & 0xFFFFFFFFFFFFFF8;
    v28 = v8 & 0xC000000000000001;
    v25 = i;
    v26 = v8;
    while (1)
    {
      if (v28)
      {
        v11 = MEMORY[0x24C1FC540](v10, v8);
      }

      else
      {
        if (v10 >= *(v27 + 16))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = *(v30 + v29);

      v15 = [v12 localizedTitle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = [v12 image];
      v17 = 2 * ([v12 actionStyle] == 1);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = v12;
      v19[4] = v14;
      v24._rawValue = v17;
      v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x24C1FB090](v20);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v10;
      v8 = v26;
      if (v13 == v25)
      {
        preferredElementSize = v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  preferredElementSize = MEMORY[0x277D84F90];
LABEL_17:

  if (preferredElementSize >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      goto LABEL_19;
    }
  }

  else if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_19:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, v22, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v24);
    return;
  }
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewWillLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillLayoutSubviews);
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow, closure #1 in DOCItemInfoContentViewController.metadataTitleRow.getter);
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [v4 setAlignment_];

  [*&v0[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow] setAxis_];
  v7 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow, closure #1 in DOCItemInfoContentViewController.tagsTitleRow.getter);
  [v7 setAlignment_];

  [*&v0[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow] setAxis_];
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    v5 = v4;

    if (one-time initialization token for defaultLayoutMargins != -1)
    {
      swift_once();
    }

    v6 = v5 - (*(&static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins + 1) + *&qword_27EEEA218);
    v7 = DOCItemInfoContentViewController.thumbnailView.getter();
    v8 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x120))();

    if (v6 > 0.0 && v6 != v9)
    {
      v11 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView];
      v12 = *((*v8 & *v11) + 0x128);
      v13 = v11;
      v12(v6, v6);

      DOCItemInfoContentViewController.updateThumbnail(force:)(0);
    }
  }

  else
  {
    __break(1u);
  }
}

double DOCItemInfoContentViewController.layoutHeight(forWidth:)(double a1, double a2, double a3, double a4)
{
  LODWORD(a3) = 1148846080;
  LODWORD(a4) = 1112014848;
  [*(v4 + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView) systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{a3, a4}];
  return v5;
}

uint64_t DOCItemInfoContentViewController.updateAlwaysOpenWithMenu()()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return result;
    }
  }

  v4 = *&v0[v1];
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x24C1FC540](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  v6 = OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController;
  v7 = *&v0[OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController];
  if (v7 || (v8 = [objc_allocWithZone(type metadata accessor for DOCOpenWithMenuController()) init], v9 = *&v0[v6], *&v0[v6] = v8, v9, (v7 = *&v0[v6]) != 0))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v11 = *((*MEMORY[0x277D85000] & *v7) + 0x98);
    v12 = v7;
    v11(v5, v0, partial apply for closure #1 in DOCItemInfoContentViewController.updateAlwaysOpenWithMenu(), v10);
  }

  return swift_unknownObjectRelease();
}

void closure #1 in DOCItemInfoContentViewController.updateAlwaysOpenWithMenu()(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu);
  *(a2 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu) = a1;
  v3 = a1;

  v4 = DOCItemInfoContentViewController.metadataView.getter();
  (*((*MEMORY[0x277D85000] & *v4) + 0x1C8))();
}

id DOCItemInfoContentViewController.titleText.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = *(v0 + v1);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return 0;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return 0;
      }
    }

    if ((v13 & 0xC000000000000001) != 0)
    {

      v14 = MEMORY[0x24C1FC540](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v14 = *(v13 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    if (![v14 isRootItem])
    {
      countAndFlagsBits = DOCNode.displayName(withHiddenPathExtension:)(0)._countAndFlagsBits;
      goto LABEL_17;
    }

    v15 = [v14 domainDisplayName];
    if (v15)
    {
      v16 = v15;
      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_17:
      swift_unknownObjectRelease();
      return countAndFlagsBits;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (__CocoaSet.count.getter() < 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v18._object = 0x8000000249BDC110;
    v5._countAndFlagsBits = 0x6D65744920756C25;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v5._object = 0xE900000000000073;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD00000000000003ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249B9A480;
    v9 = *(v0 + v1);
    if (v9 >> 62)
    {
      v17 = v8;
      v10 = __CocoaSet.count.getter();
      v8 = v17;
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x277D83C10];
    *(v8 + 56) = MEMORY[0x277D83B88];
    *(v8 + 64) = v11;
    *(v8 + 32) = v10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

    return countAndFlagsBits;
  }

LABEL_26:
  __break(1u);
  return result;
}

void DOCItemInfoContentViewController.updateTitleWithImage(forText:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v18 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
    v24 = 0;
LABEL_10:
    v25 = v24;
    [v18 setText_];
    goto LABEL_11;
  }

  DOCItemInfoContentViewController.statusAppearance.getter(&v26);
  v4 = specialized DOCItemInfoContentViewController.Metrics.fileNameFont.getter();
  v5 = DOCNodeStatusAppearance.imageTextAttachment(with:)(v4);

  if (!v5)
  {
    v18 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
    v24 = MEMORY[0x24C1FAD20](a1, a2);
    goto LABEL_10;
  }

  if (one-time initialization token for bidiIsolateBeginFSI != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x277D85000];
  v26 = (*((*MEMORY[0x277D85000] & *static DOCUnicode.bidiIsolateBeginFSI) + 0x58))();
  v27 = v7;

  MEMORY[0x24C1FAEA0](a1, a2);

  v9 = v26;
  v8 = v27;
  if (one-time initialization token for bidiIsolateEnd != -1)
  {
    swift_once();
  }

  v10 = (*((*v6 & *static DOCUnicode.bidiIsolateEnd) + 0x58))();
  v12 = v11;
  v26 = v9;
  v27 = v8;

  MEMORY[0x24C1FAEA0](v10, v12);

  MEMORY[0x24C1FAEA0](32, 0xE100000000000000);

  v13 = v26;
  v14 = v27;
  v15 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v16 = MEMORY[0x24C1FAD20](v13, v14);

  v17 = [v15 initWithString_];

  v18 = v17;
  v19 = [v18 length];
  v20 = [objc_opt_self() attributedStringWithAttachment_];
  [v18 appendAttributedString_];
  v21 = *MEMORY[0x277D740C0];
  v22 = [objc_opt_self() secondaryLabelColor];
  [v18 addAttribute:v21 value:v22 range:{v19, 1}];

  v23 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
  [v23 setAttributedText_];

  v25 = v18;
LABEL_11:
}

id DOCItemInfoContentViewController.kindAndSizeString()()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    return 0;
  }

LABEL_3:
  v8 = *(v0 + v6);
  if (v8 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x24C1FC540](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v10 = *(v8 + 32);
    swift_unknownObjectRetain();
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = result;
  v12.value._object = 0xEB00000000656C62;
  v30._object = 0x8000000249BD0910;
  v13._countAndFlagsBits = 0x656D756C6F56;
  v30._countAndFlagsBits = 0xD000000000000058;
  v13._object = 0xE600000000000000;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v30);

  v15 = String.lowercased()();
  countAndFlagsBits = v15._countAndFlagsBits;
  object = v15._object;

  swift_getObjectType();
  if (DOCNode.areDiskPropertiesSupported.getter())
  {
    goto LABEL_14;
  }

  v18 = [v10 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  countAndFlagsBits = UTType.localizedDescription.getter();
  v20 = v19;
  (*(v2 + 8))(v5, v1);
  if (v20)
  {
    object = v20;
    goto LABEL_14;
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v21 = result;
  v31._object = 0x8000000249BD08D0;
  v22._countAndFlagsBits = 0x746E656D75636F44;
  v22._object = 0xE800000000000000;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000012;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v31);
  countAndFlagsBits = v25._countAndFlagsBits;
  object = v25._object;

LABEL_14:
  if ([v10 isFolder])
  {
    swift_unknownObjectRelease();
    return countAndFlagsBits;
  }

  else
  {
    v26 = DOCNode.localizedSizeDescription()();
    v28 = countAndFlagsBits;
    v29 = object;
    MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
    MEMORY[0x24C1FAEA0](v26._countAndFlagsBits, v26._object);
    swift_unknownObjectRelease();

    return v28;
  }
}

void DOCItemInfoContentViewController.updateShowMoreButtonVisibility()()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_18;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_18;
  }

  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_18:
    v10 = DOCItemInfoContentViewController.showMoreMetadataButton.getter();
    [v10 setHidden_];

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x24C1FC540](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  if ([v4 isCloudItem])
  {
    v5 = [v4 isDownloaded] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = DOCItemInfoContentViewController.metadataView.getter();
  v7 = (*((*MEMORY[0x277D85000] & *v6) + 0x188))();

  if (v7 == 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v5 | v7 ^ 1;
  }

  v9 = DOCItemInfoContentViewController.showMoreMetadataButton.getter();
  [v9 setHidden_];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCItemInfoContentViewController.doc_startPreheatIfNecessary()()
{
  if (*(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) == 1)
  {
    v1 = v0;
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
    swift_getKeyPath();
    v3 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v2) + 0x78))(&v10);

    if (v10)
    {
    }

    else
    {
      swift_dynamicCastObjCProtocolUnconditional();
      v4 = static UIViewController.associatedObjectStorageKey;
      v5 = v1;
      v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v5, v4);
      KeyPath = swift_getKeyPath();
      type metadata accessor for DOCPresentationPreheatController();
      v8 = swift_allocObject();
      *(v8 + 16) = 0x3FE0000000000000;
      swift_unknownObjectWeakInit();
      *(v8 + 32) = MEMORY[0x277D84F90];
      *(v8 + 40) = 0;
      swift_unknownObjectWeakAssign();
      v10 = v8;
      (*((*v3 & *v6) + 0x80))(&v10, KeyPath);
    }

    v9 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*v3 & *v9) + 0x78))(&v10);

    if (v10)
    {
      DOCPresentationPreheatController.endWithState(_:)(2);
    }
  }
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  [(UIWindow_optional *)&v5 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    DOCItemInfoContentViewController.updateThumbnail(force:)(0);
  }
}

void closure #1 in DOCItemInfoContentViewController.updateThumbnail(force:)(uint64_t a1, uint64_t a2)
{
  v4 = DOCItemInfoContentViewController.thumbnailView.getter();
  v5 = (*((*MEMORY[0x277D85000] & *v4) + 0xF0))();

  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1FC540](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
    swift_unknownObjectRetain();
  }

  if (v6 == a2)
  {
    [*(a1 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView) setAlpha_];
  }

  swift_unknownObjectRelease();
}

double DOCItemInfoContentViewController.thumbnailLoaded(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  swift_unknownObjectRetain();
  v4 = v1;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCItemInfoContentViewController.thumbnailLoaded(_:)(void *a1, uint64_t a2)
{
  if (![a1 isRepresentativeIcon])
  {
    return;
  }

  v4 = DOCItemInfoContentViewController.thumbnailView.getter();
  v5 = (*((*MEMORY[0x277D85000] & *v4) + 0xF0))();

  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }

LABEL_14:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1FC540](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
    swift_unknownObjectRetain();
  }

  if (v6 == a1)
  {
    [*(a2 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView) setAlpha_];
    [a1 removeListener_];
  }

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v27.receiver = v2;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewWillAppear_, a1);
  v4 = [v2 presentedViewController];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for DOCPreviewController(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = [v6 transitionCoordinator];
      if (v7)
      {
        v8 = v7;
        v9 = DOCItemInfoContentViewController.thumbnailView.getter();
        (*((*MEMORY[0x277D85000] & *v9) + 0xB8))(1);

        if ([v8 isAnimated])
        {
          if ([v8 isInteractive])
          {
            v10 = swift_allocObject();
            *(v10 + 16) = v2;
            v25 = partial apply for closure #1 in DOCItemInfoContentViewController.viewWillAppear(_:);
            v26 = v10;
            aBlock = MEMORY[0x277D85DD0];
            v22 = 1107296256;
            v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
            v24 = &block_descriptor_19_4;
            v11 = _Block_copy(&aBlock);
            v12 = v2;

            [v8 notifyWhenInteractionChangesUsingBlock_];
          }

          else
          {
            v19 = swift_allocObject();
            *(v19 + 16) = v2;
            v25 = partial apply for closure #2 in DOCItemInfoContentViewController.viewWillAppear(_:);
            v26 = v19;
            aBlock = MEMORY[0x277D85DD0];
            v22 = 1107296256;
            v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
            v24 = &block_descriptor_13_0;
            v11 = _Block_copy(&aBlock);
            v20 = v2;

            [v8 animateAlongsideTransition:v11 completion:0];
          }

          _Block_release(v11);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        swift_unknownObjectRelease();
      }
    }
  }

LABEL_9:
  v13 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  swift_beginAccess();
  v14 = v2[v13];
  v2[v13] = 1;
  if (v14 != 1)
  {
    v15 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
    swift_beginAccess();
    v16 = *&v2[v15];
    if (v16)
    {
      v17 = *(*v16 + 304);

      v17(v18);
    }
  }
}

void closure #1 in DOCItemInfoContentViewController.viewWillAppear(_:)(void *a1, void *a2)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v7[4] = partial apply for closure #1 in closure #1 in DOCItemInfoContentViewController.viewWillAppear(_:);
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v7[3] = &block_descriptor_234;
    v5 = _Block_copy(v7);
    v6 = a2;

    [v3 animateWithDuration:v5 animations:0.2];
    _Block_release(v5);
  }
}

void closure #1 in closure #1 in DOCItemInfoContentViewController.viewWillAppear(_:)()
{
  v0 = DOCItemInfoContentViewController.thumbnailView.getter();
  (*((*MEMORY[0x277D85000] & *v0) + 0xB8))(0);
}

void closure #2 in DOCItemInfoContentViewController.viewWillAppear(_:)()
{
  v0 = DOCItemInfoContentViewController.thumbnailView.getter();
  (*((*MEMORY[0x277D85000] & *v0) + 0xB8))(0);
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidDisappear_, a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = a1;
    v5 = Strong;
    [Strong dismissViewControllerAnimated:v4 completion:0];
  }

  v6 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  swift_beginAccess();
  v7 = v1[v6];
  v1[v6] = 0;
  if (v7)
  {
    v8 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
    swift_beginAccess();
    v9 = *&v1[v8];
    if (v9)
    {
      v10 = *(*v9 + 312);

      v10(v11);
    }
  }
}

void DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1)
{
  ObjectType = swift_getObjectType();

  specialized DOCItemInfoContentViewController.openSelectedNode(_:)(a1, v1, ObjectType);
}

void closure #1 in DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
      swift_beginAccess();
      v8 = *&v6[v7];
      v9 = a1;
      v10 = [v8 useSharedQuickLook];
      v11 = MEMORY[0x277D85000];
      if (v10)
      {
        v10 = [v9 isFolder];
        if ((v10 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_249BA0290;
          *(v12 + 32) = v9;
          v13 = *&v6[v7];
          v14 = v9;
          v15 = [v13 sceneIdentifier];
          if (v15)
          {
            v16 = one-time initialization token for mapTable;
            v17 = v15;
            if (v16 != -1)
            {
              v30 = v17;
              swift_once();
              v17 = v30;
            }

            v18 = static DOCPreviewController.mapTable;
            v19 = v17;
            v20 = [v18 objectForKey_];
            if (!v20)
            {
              v21 = objc_allocWithZone(type metadata accessor for DOCPreviewController(0));
              v20 = DOCPreviewController.init()();
              [v18 setObject:v20 forKey:v19];
            }

            v31 = v12;
            v32 = 0;
            v33 = 0;

            v22 = specialized Collection<>.firstIndex(of:)(v14, v12);
            v24 = v23;

            (*((*v11 & *v20) + 0x1C8))(&v31, v22, v24 & 1);

            outlined consume of DOCPreviewSource?(v31, v32, v33);
          }

          else
          {
            if (one-time initialization token for Source != -1)
            {
              swift_once();
            }

            v25 = static DOCLog.Source;
            v26 = static os_log_type_t.debug.getter();
            os_log(_:dso:log:type:_:)("Scene Identifier was nil. This may not be not be a problem. Reproduce and investigate if it is ok.", 98, 2, &dword_2493AC000, v25, v26, MEMORY[0x277D84F90]);
          }
        }
      }

      v27 = (*((*v11 & *a3) + 0x78))(v10);
      if (v27)
      {
        v28 = v27;
        swift_getObjectType();
        v29 = v9;
        specialized DOCNode.isEqualTo(node:)(v28, v29);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

double closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)(char a1, void *a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a3;
  v9 = *a4;
  *(v8 + 56) = a4[1];
  v10 = a4[3];
  *(v8 + 72) = a4[2];
  *(v8 + 88) = v10;
  *(v8 + 104) = *(a4 + 8);
  *(v8 + 40) = v9;
  v11 = a2;
  swift_unknownObjectRetain();
  outlined init with copy of DOCInteractionManagerContext(a4, v13);
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1, char a2, void *a3, __int128 *a4)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x68))(0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  if ((a2 & 1) == 0)
  {
    ObjectType = swift_getObjectType();

    specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a3, a4, a1, ObjectType);
  }
}

uint64_t closure #2 in DOCItemInfoContentViewController.openSelectedNode(_:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v59 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v56[-v15];
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v56[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of URL?(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    v23 = a7;
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v60[0] = v28;
      *v27 = 136315394;
      v29 = v23;
      v30 = [v29 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v60);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2080;
      v60[9] = a2;
      v35 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v36 = String.init<A>(describing:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v60);

      *(v27 + 14) = v38;
      _os_log_impl(&dword_2493AC000, v25, v26, "[Interaction] Clearing lastOpenedNode: Got a nil url from fetchURL for node: %s error: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v28, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    return (*((*MEMORY[0x277D85000] & *a4) + 0x68))(0);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    *(v40 + 24) = a6;
    v41 = *(a5 + 48);
    *(v40 + 64) = *(a5 + 32);
    *(v40 + 80) = v41;
    *(v40 + 96) = *(a5 + 64);
    v42 = *(a5 + 16);
    *(v40 + 32) = *a5;
    *(v40 + 48) = v42;
    swift_unknownObjectRetain_n();
    v43 = a4;
    outlined init with copy of DOCInteractionManagerContext(a5, v60);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.UI);
    swift_unknownObjectRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v57 = v46;
      v48 = v47;
      v58 = swift_slowAlloc();
      v60[0] = v58;
      *v48 = 136315394;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, v60);
      *(v48 + 12) = 2080;
      v49 = [a6 description];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v60);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_2493AC000, v45, v57, "%s node is non-nil trying to open with node first: %s", v48, 0x16u);
      v54 = v58;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    specialized _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v21, a6, 0, 1, v59, closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply, v40, ObjectType);

    swift_unknownObjectRelease_n();
    return (*(v18 + 8))(v21, v17);
  }
}

void DOCItemInfoContentViewController.showAddTags(from:)(void *a1)
{
  [a1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (v13)
    {
      v14 = v13;
      [a1 bounds];
      [v14 convertRect:a1 fromCoordinateSpace:?];
      v4 = v15;
      v6 = v16;
      v8 = v17;
      v10 = v18;
    }

    else
    {
      v14 = a1;
    }

    v19 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    swift_beginAccess();
    v20 = *&v1[v19];
    swift_beginAccess();
    v21 = type metadata accessor for DOCServiceInfoViewController();
    v22 = objc_allocWithZone(v21);
    v22[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
    *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v20;
    v23 = objc_allocWithZone(DOCItemInfoViewController);
    v24 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = [v23 initWithNodes:isa configuration:v24 actionReporting:0];

    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController;
    *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v26;
    v28 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v28;
    [v28 _setBuiltinTransitionStyle_];
    [*&v22[v27] displayTagView];
    v34.receiver = v22;
    v34.super_class = v21;
    v29 = objc_msgSendSuper2(&v34, sel_init);

    v30 = v29;
    [v30 setModalPresentationStyle_];
    v31 = [v30 popoverPresentationController];
    if (v31)
    {
      v32 = v31;
      [v31 setSourceView_];
    }

    v33 = [v30 popoverPresentationController];

    [v33 setSourceRect_];
    [v1 presentViewController:v30 animated:1 completion:0];

    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(Swift::OpaquePointer actionsToShow)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = dispatch_group_create();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v15 = *&v1[v14];
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = &unk_249B9F000;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    v25[2]._rawValue = v13;
    v25[3]._rawValue = v2;
    v25[4]._rawValue = actionsToShow._rawValue;
    v43 = partial apply for closure #2 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:);
    v44 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v40 = v17[467];
    v41 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v42 = &block_descriptor_34_2;
    v26 = _Block_copy(&aBlock);

    v27 = v2;

    v28 = v35;
    static DispatchQoS.unspecified.getter();
    v38 = MEMORY[0x277D84F90];
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v26);

    (*(v5 + 8))(v8, v4);
    (*(v36 + 8))(v28, v37);

    return;
  }

  v16 = __CocoaSet.count.getter();
  v17 = &unk_249B9F000;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v30 = v2;
    rawValue = actionsToShow._rawValue;
    v32 = v8;
    v33 = v5;
    v34 = v4;

    v18 = 0;
    v19 = v17[467];
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
        swift_unknownObjectRetain();
      }

      ++v18;
      dispatch_group_enter(v12);
      v21 = swift_allocObject();
      v21[2]._rawValue = v12;
      v21[3]._rawValue = v20;
      v21[4]._rawValue = v13;
      v43 = partial apply for closure #1 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:);
      v44 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v40 = v19;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v42 = &block_descriptor_28_2;
      v22 = _Block_copy(&aBlock);
      v23 = v12;
      swift_unknownObjectRetain();

      [v20 fetchURL_];
      _Block_release(v22);
      swift_unknownObjectRelease();
    }

    while (v16 != v18);

    v5 = v33;
    v4 = v34;
    actionsToShow._rawValue = rawValue;
    v8 = v32;
    v2 = v30;
    v17 = &unk_249B9F000;
    goto LABEL_10;
  }

  __break(1u);
}

void closure #1 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(uint64_t a1, void *a2, NSObject *a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v37 - v21;
  outlined init with copy of URL?(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (a2)
    {
      v23 = a2;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v24 = static DOCLog.UI;
      v25 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_249B9FA70;
      v27 = [a4 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v26 + 32) = v28;
      *(v26 + 40) = v30;
      v31 = _convertErrorToNSError(_:)();
      *(v26 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      *(v26 + 104) = lazy protocol witness table accessor for type NSError and conformance NSObject();
      *(v26 + 72) = v31;
      os_log(_:dso:log:type:_:)("Unable to fetch URL for node: %@ error: %@", 42, 2, &dword_2493AC000, v24, v25, v26);
    }
  }

  else
  {
    v37 = a3;
    v32 = *(v15 + 32);
    v32(v22, v13, v14);
    (*(v15 + 16))(v18, v22, v14);
    swift_beginAccess();
    v33 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
      *(a5 + 16) = v33;
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
    }

    *(v33 + 2) = v36 + 1;
    v32(&v33[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v36], v18, v14);
    *(a5 + 16) = v33;
    (*(v15 + 8))(v22, v14);
    a3 = v37;
  }

  dispatch_group_leave(a3);
}

void closure #2 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(uint64_t a1, char *a2, int64_t a3)
{
  v110 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v102 - v12;
  swift_beginAccess();
  v105 = a1;
  v14 = *(a1 + 16);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  v106 = a2;
  if (v15)
  {
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v17 = v19;
    v112 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v20 = v14 + v112;
    v21 = *(v18 + 56);
    v22 = (v18 - 8);
    v111 = (v18 + 16);
    v109 = v14;

    v114 = MEMORY[0x277D84F90];
    v113 = v9;
    do
    {
      v17(v13, v20, v5);
      if (URL.startAccessingSecurityScopedResource()())
      {
        v17(v9, v13, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v114 + 2) + 1, 1, v114);
        }

        v24 = *(v114 + 2);
        v23 = *(v114 + 3);
        if (v24 >= v23 >> 1)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v114);
        }

        (*v22)(v13, v5);
        v25 = v114;
        *(v114 + 2) = v24 + 1;
        v9 = v113;
        (*v111)(&v25[v112 + v24 * v21], v113, v5);
      }

      else
      {
        (*v22)(v13, v5);
      }

      v20 += v21;
      --v15;
    }

    while (v15);

    a2 = v106;
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v114 = MEMORY[0x277D84F90];
  }

  v26 = &OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton;
  v27 = a2;
  v28 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton, closure #1 in DOCItemInfoContentViewController.shareButton.getter);
  v29 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton;
  [*&v27[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton] bounds];
  v31 = UIEdgeInsetsInsetRect_0(v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v27 view];
  v39 = v110;
  if (!v38)
  {
    __break(1u);
LABEL_66:
    v108 = v38;
    v43 = v106;
LABEL_19:
    v103 = v16;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo7DOCNode_pGGMd, &_ss18_DictionaryStorageCySSSaySo7DOCNode_pGGMR);
    v48 = v26[79];
    v49 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
    v50 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
    v111 = (v39 & 0xC000000000000001);
    v112 = v48;
    swift_beginAccess();
    v107 = v49;
    swift_beginAccess();
    v26 = 0;
    v109 = MEMORY[0x277D84F90];
    v51 = v108;
    do
    {
      if (v111)
      {
        v58 = MEMORY[0x24C1FC540](v26, v39);
      }

      else
      {
        v58 = *(v39 + 8 * v26 + 32);
      }

      v16 = v58;
      v59 = [v58 filteringPredicate];
      v60 = *&v43[v112];
      v61 = static _DictionaryStorage.allocate(capacity:)();

      v62 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365646F4E636F64, 0xE800000000000000);
      if (v63)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v61[(v62 >> 6) + 8] |= 1 << v62;
      v64 = (v61[6] + 16 * v62);
      *v64 = 0x7365646F4E636F64;
      v64[1] = 0xE800000000000000;
      *(v61[7] + 8 * v62) = v60;
      v65 = v61[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_52;
      }

      v61[2] = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v69 = [v59 evaluateWithObject_];

      if (v69)
      {
        v70 = [objc_opt_self() activityForBrowserAction:v16 actionPerformerProxy:*&v43[v107]];
        MEMORY[0x24C1FB090]();
        if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v43 = v106;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v109 = v117;
        v52 = [v16 identifier];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        swift_beginAccess();
        v56 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = *&v43[v50];
        *&v43[v50] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v53, v55, isUniquelyReferenced_nonNull_native);

        *&v43[v50] = v116[0];
        swift_endAccess();

        v39 = v110;
        v51 = v108;
      }

      v26 = (v26 + 1);
    }

    while (v51 != v26);
    v26 = &unk_27EEEA000;
    if (!v103)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v40 = v38;
  v41 = [v38 window];

  if (v41)
  {

    v42 = *&v106[v29];
    v43 = v106;
    [v41 convertRect:v42 fromCoordinateSpace:{v31, v33, v35, v37}];
    v31 = v44;
    v33 = v45;
    v35 = v46;
    v37 = v47;
    v28 = v41;
  }

  else
  {
    v43 = v106;
  }

  v117 = v16;
  v16 = (v39 >> 62);
  v26 = &unk_27EEEA000;
  v104 = v28;
  if (v39 >> 62)
  {
LABEL_54:
    v74 = v39 & 0xFFFFFFFFFFFFFF8;
    if ((v39 & 0x8000000000000000) != 0)
    {
      v73 = v39;
    }

    else
    {
      v73 = v39 & 0xFFFFFFFFFFFFFF8;
    }

    if (__CocoaSet.count.getter() < 1)
    {
      v109 = MEMORY[0x277D84F90];
    }

    else
    {
      v38 = __CocoaSet.count.getter();
      if (v38)
      {
        if (v38 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        goto LABEL_66;
      }

      v109 = MEMORY[0x277D84F90];
    }

LABEL_31:
    v113 = __CocoaSet.count.getter();
    goto LABEL_34;
  }

  v108 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v108)
  {
    goto LABEL_19;
  }

  v109 = MEMORY[0x277D84F90];
LABEL_33:
  v113 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:
  v71 = v26[79];
  v72 = v106;
  swift_beginAccess();
  v73 = *&v72[v71];
  v74 = v73 & 0xFFFFFFFFFFFFFF8;
  if (v73 >> 62)
  {
LABEL_61:
    v16 = __CocoaSet.count.getter();
    goto LABEL_36;
  }

  v16 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
  v39 = v73 & 0xC000000000000001;

  v75 = 0;
  v26 = &selRef__setLocationsInBrowseTab_;
  do
  {
    v76 = v75;
    if (v16 == v75)
    {
      break;
    }

    if (v39)
    {
      v77 = MEMORY[0x24C1FC540](v75, v73);
      if (__OFADD__(v76, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v75 >= *(v74 + 16))
      {
        goto LABEL_53;
      }

      v77 = *(v73 + 8 * v75 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v76, 1))
      {
LABEL_45:
        __break(1u);
        break;
      }
    }

    v78 = [objc_opt_self() defaultPermission];
    v79 = [v78 dataOwnerStateForNode_];

    swift_unknownObjectRelease();
    v75 = (v76 + 1);
  }

  while (v79 != 1);

  swift_beginAccess();

  specialized _arrayForceCast<A, B>(_:)(v80);

  if (v109 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIActivity, 0x277D546C8);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIActivity, 0x277D546C8);
  }

  v81 = v104;
  v82 = v16 != v76;
  v83 = v113 != 0;

  v84 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v85 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIActivity, 0x277D546C8);
  v86 = Array._bridgeToObjectiveC()().super.isa;

  v87 = [v84 initWithActivityItems:v85 applicationActivities:v86];

  [v87 setSharingStyle_];
  [v87 setIsContentManaged_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIActivityTypeaGMd, &_ss23_ContiguousArrayStorageCySo14UIActivityTypeaGMR);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_249B9FA70;
  v89 = *MEMORY[0x277D54720];
  v90 = *MEMORY[0x277D05DD8];
  *(v88 + 32) = *MEMORY[0x277D54720];
  *(v88 + 40) = v90;
  type metadata accessor for UIActivityType(0);
  v91 = v89;
  v92 = v90;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v87 setExcludedActivityTypes_];

  v94 = v87;
  v95 = [v94 popoverPresentationController];
  if (v95)
  {
    v96 = v95;
    [v95 setSourceView_];
  }

  v97 = [v94 popoverPresentationController];

  [v97 setSourceRect_];
  v98 = swift_allocObject();
  v99 = v106;
  swift_unknownObjectWeakInit();
  v100 = swift_allocObject();
  *(v100 + 16) = v114;
  *(v100 + 24) = v98;
  aBlock[4] = partial apply for specialized closure #2 in closure #2 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:);
  aBlock[5] = v100;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIActivityType?, @unowned Bool, @guaranteed [Any]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_212;
  v101 = _Block_copy(aBlock);

  [v94 setCompletionWithItemsHandler_];
  _Block_release(v101);
  [v99 presentViewController:v94 animated:1 completion:0];
}

double specialized closure #2 in closure #2 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a5 + 16);
  if (v13)
  {
    v16 = *(v8 + 16);
    v14 = v8 + 16;
    v15 = v16;
    v17 = a5 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v12, v17, v7, v10);
      URL.stopAccessingSecurityScopedResource()();
      (*(v14 - 8))(v12, v7);
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
    v22 = Strong;
    swift_beginAccess();
    *&v22[v21] = MEMORY[0x277D84F98];
  }

  return result;
}

double thunk for @escaping @callee_guaranteed (@guaranteed UIActivityType?, @unowned Bool, @guaranteed [Any]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);

  return result;
}

double DOCItemInfoContentViewController.preview(items:defaultItem:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(type metadata accessor for DOCPreviewController(0));
  v7 = DOCPreviewController.init()();
  v8 = OBJC_IVAR___DOCItemInfoContentViewController_documentManager;
  swift_beginAccess();
  v9 = *&v3[v8];
  if (v9)
  {
    v10 = &protocol witness table for DOCDocumentManager;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v7) + 0xF8);
  v13 = v9;
  v12(v9, v10);
  v14 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v15 = *&v3[v14];
  v16 = *((*v11 & *v7) + 0x128);
  v17 = v15;
  v16(v15);
  v18 = *((*v11 & *v7) + 0x1D8);
  v19 = swift_unknownObjectRetain();
  v18(v19, &protocol witness table for DOCItemInfoContentViewController);
  v20 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v21 = *&v3[v20];
  v22 = *((*v11 & *v7) + 0x140);
  v23 = v21;
  v22(v21);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_15:
    swift_beginAccess();

    Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v32);

    a1 = Available;
    if (!(Available >> 62))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_6:

  Available = a1;
  if (!(a1 >> 62))
  {
LABEL_7:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    goto LABEL_8;
  }

LABEL_16:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  Available = _bridgeCocoaArray<A>(_:)();

LABEL_8:
  v35 = Available;
  v36 = 0;
  v37 = 0;
  if (a2)
  {
    v25 = specialized Collection<>.firstIndex(of:)(a2, a1);
    v27 = v26;
  }

  else
  {

    v25 = 0;
    v27 = 1;
  }

  (*((*v11 & *v7) + 0x1C8))(&v35, v25, v27 & 1);
  outlined consume of DOCPreviewSource?(v35, v36, v37);
  v28 = one-time initialization token for shared;
  v29 = v3;
  if (v28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33[0] = 1;
  v34 = v29;
  v30 = *(*static DOCPreviewRouter.shared + 96);

  v30(v7, v33, 0, 0);

  return result;
}

id DOCItemInfoContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void closure #1 in DOCItemInfoContentViewController.setHandlerFlow(_:didSetHandlerPreferenceOfType:to:)()
{
  DOCItemInfoContentViewController.updateAlwaysOpenWithMenu()();
  v0 = DOCItemInfoContentViewController.downloadButton.getter();
  [v0 updateOpenWithMenu];
}

uint64_t DOCItemInfoContentViewController.metadataView(shouldDrawSeparator:for:)(uint64_t a1, char a2)
{
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return a2 & 1 | ((v4 & 1) == 0);
}

void DOCItemInfoContentViewController.metadataView(nodeLocationTapped:metadataView:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    v2 = DOCNode.fpfs_syncFetchFPItem()();
    if (v2)
    {
      v3 = v2;
      [v1 didTapLocationOf_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

double DOCItemInfoContentViewController.metadataViewDidFinishPreheat(_:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) = 1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x78))(&v11);

  if (v11)
  {
  }

  else
  {
    swift_dynamicCastObjCProtocolUnconditional();
    v4 = static UIViewController.associatedObjectStorageKey;
    v5 = v1;
    v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v5, v4);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v8 = swift_allocObject();
    *(v8 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v8 + 32) = MEMORY[0x277D84F90];
    *(v8 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v11 = v8;
    (*((*v3 & *v6) + 0x80))(&v11, KeyPath);
  }

  v9 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v3 & *v9) + 0x78))(&v11);

  if (v11)
  {
    DOCPresentationPreheatController.endWithState(_:)(2);
  }

  return result;
}

void *DOCItemInfoContentViewController.metadataViewAlwaysOpenWithMenu(_:)()
{
  v1 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu);
  v2 = v1;
  return v1;
}

void closure #1 in DOCItemInfoContentViewController.tagsCollectionItem(_:didDelete:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 tags];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag, 0x277CC6468);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = FPTagFromDOCTag();
      v7 = specialized Collection<>.firstIndex(of:)(v6, v5);
      v9 = v8;

      if (v9)
      {

        return;
      }

      v11 = [objc_opt_self() defaultManager];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_249BA0290;
      *(v12 + 32) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo5FPTagCGGMd, &_ss23_ContiguousArrayStorageCySaySo5FPTagCGGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_249B9A480;
      *(v13 + 32) = v5;
      v14 = objc_opt_self();
      v2 = v2;
      v15 = [v14 shared];
      v16 = objc_allocWithZone(MEMORY[0x277D06258]);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5FPTagCGMd, &_sSaySo5FPTagCGMR);
      v18 = Array._bridgeToObjectiveC()().super.isa;

      v19 = [v16 initWithItems:isa tagsLists:v18 isUndoable:1 shouldClearUndoStack:0 undoManager:v15];

      [v11 scheduleAction_];
    }
  }
}

double DOCItemInfoContentViewController.nodeDownloadButton(_:downloadingNode:encounteredError:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = v3;
  v6 = a3;
  v7 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCItemInfoContentViewController.nodeDownloadButton(_:downloadingNode:encounteredError:)(uint64_t a1, uint64_t a2)
{
  v10 = _convertErrorToNSError(_:)();
  v2 = [v10 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v10 code] == -1009)
  {
    DOCAlertUserTheNetworkIsNotReachable();
    goto LABEL_11;
  }

LABEL_10:
  v9 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();

LABEL_11:
}

id DOCItemInfoContentViewController.RootVStack.StackElementView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void closure #1 in DOCItemInfoContentViewController.browserActionToMenuElement(_:with:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [v7 effectiveAppearance];
    v9 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    swift_beginAccess();
    v10 = *&v7[v9];
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for DOCActionContext();
    v13 = objc_allocWithZone(v12);
    swift_unknownObjectWeakInit();
    *&v13[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v13[OBJC_IVAR___DOCActionContext_appearance] = v8;
    *&v13[OBJC_IVAR___DOCActionContext_configuration] = v10;
    *&v13[OBJC_IVAR___DOCActionContext_presentingViewController] = v7;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v13[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v13[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v13[OBJC_IVAR___DOCActionContext_userInfo] = v11;
    v17.receiver = v13;
    v17.super_class = v12;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    v15 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
    swift_beginAccess();
    v16 = *&v7[v15];
    specialized DOCActionManager.perform(_:on:actionContext:)(a3, a4, v14);
  }
}

uint64_t DOCItemInfoContentViewController.didTapAttributionView()()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return result;
    }
  }

  v4 = *(v0 + v1);
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    MEMORY[0x24C1FC540](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v5 = DOCNode.documentAttributes.getter();
  if (v5)
  {
    v6 = v5;
    SYDocumentAttributes.performReturnToDocumentRequest()();
  }

  return swift_unknownObjectRelease();
}

void specialized DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1, char *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v10 = [*&a2[v9] sceneIdentifier];
  v11 = specialized static DOCInteractionManager.sharedManager(for:)(v10);

  v12 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v11) + 0x60))())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2493AC000, v14, v15, "[Interaction] An item was selected while there is another one trying to be opened.", v16, 2u);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    goto LABEL_7;
  }

  v124 = v5;
  v125 = v8;
  if (([a1 isTrashed] & 1) != 0 && (objc_msgSend(a1, sel_isFolder) & 1) == 0)
  {
    v32 = [a1 displayName];
    if (!v32)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = MEMORY[0x24C1FAD20](v33);
    }

    DOCAlertUserTrashedFileCanNotBeOpened();
  }

  else
  {
    v123 = v4;
    v17 = *&a2[v9];
    v18 = specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(a1, v17, a2);

    if ((v18 & 1) == 0)
    {
LABEL_7:

      return;
    }

    if (([*&a2[v9] useSharedQuickLook] & 1) != 0 && (objc_msgSend(a1, sel_isFolder) & 1) == 0)
    {
      v19 = [*&a2[v9] sceneIdentifier];
      if (v19)
      {
        v20 = one-time initialization token for mapTable;
        v21 = v19;
        if (v20 != -1)
        {
          v117 = v21;
          swift_once();
          v21 = v117;
        }

        v22 = static DOCPreviewController.mapTable;
        v23 = v21;
        v24 = [v22 objectForKey_];
        if (!v24)
        {
          v25 = objc_allocWithZone(type metadata accessor for DOCPreviewController(0));
          v24 = DOCPreviewController.init()();
          [v22 setObject:v24 forKey:v23];
        }

        (*((*v12 & *v24) + 0x248))(1);
        v26 = *((*v12 & *v24) + 0x1D8);
        v27 = swift_unknownObjectRetain();
        v26(v27, &protocol witness table for DOCItemInfoContentViewController);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_249BA0290;
        *(v28 + 32) = a1;
        v29 = *v12 & *v24;
        v134 = v28;
        LOBYTE(v135) = 0;
        v30 = *(v29 + 456);
        v31 = a1;
        v30(&v134, 0, 1);

        outlined consume of DOCPreviewSource?(v134, *(&v134 + 1), v135);
      }

      else
      {
        if (one-time initialization token for Source != -1)
        {
          swift_once();
        }

        v34 = static DOCLog.Source;
        v35 = static os_log_type_t.debug.getter();
        os_log(_:dso:log:type:_:)("Scene Identifier was nil. This may not be not be a problem. Reproduce and investigate if it is ok.", 98, 2, &dword_2493AC000, v34, v35, MEMORY[0x277D84F90]);
      }
    }

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v11;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v39 = *&a2[v9];
    v122 = v11;

    v40 = [v39 useSharedQuickLook];
    v41 = [*&a2[v9] skipDownload];
    *&v128 = Strong;
    *(&v128 + 1) = partial apply for closure #1 in DOCItemInfoContentViewController.openSelectedNode(_:);
    v129 = v37;
    v130 = 0;
    *&v131 = 0;
    BYTE8(v131) = 0;
    BYTE9(v131) = v40;
    BYTE10(v131) = 1;
    *&v132 = 0;
    BYTE8(v132) = 1;
    BYTE9(v132) = v41;
    v133 = a2;
    v138 = a2;
    v136 = v131;
    v137 = v132;
    v134 = v128;
    v135 = v37;
    v42 = *&a2[v9];
    v43 = a2;
    if (![v42 shouldOpenInApp])
    {

      v46 = v122;
      specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a1, &v134);

LABEL_47:
      outlined destroy of DOCInteractionManagerContext(&v128);
      return;
    }

    v121 = v37;
    v44 = specialized DOCNode.fpfs_syncFetchFPItem()();
    v45 = v44;
    if (v44 && ([v44 doc_isCollaborationInvitation] & 1) != 0)
    {

      if (FPItem.openInvitationIfPossible()())
      {

LABEL_46:
        goto LABEL_47;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      __swift_project_value_buffer(v106, static Logger.UI);
      v107 = v45;
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v126[0] = v111;
        *v110 = 136315394;
        *(v110 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BDBC40, v126);
        *(v110 + 12) = 2080;
        v112 = [v107 displayName];
        v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v114;

        v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, v126);

        *(v110 + 14) = v116;
        _os_log_impl(&dword_2493AC000, v108, v109, "%s Could not open invitation for node: %s", v110, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v111, -1, -1);
        MEMORY[0x24C1FE850](v110, -1, -1);

        outlined destroy of DOCInteractionManagerContext(&v128);
      }

      else
      {

        outlined destroy of DOCInteractionManagerContext(&v128);
      }
    }

    else
    {
      v120 = v43;
      v47 = [*&a2[v9] sceneIdentifier];
      v48 = specialized static DOCInteractionManager.sharedManager(for:)(v47);

      v49 = *((*v12 & *v48) + 0x68);
      v50 = swift_unknownObjectRetain();
      v49(v50);

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.UI);
      v52 = v45;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();

      v55 = os_log_type_enabled(v53, v54);
      v119 = v52;
      if (v55)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v126[0] = v57;
        *v56 = 136315138;
        v58 = v45;
        v127[0] = v45;
        v59 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
        v60 = String.init<A>(describing:)();
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v126);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_2493AC000, v53, v54, "[Interaction] Keeping track of last opened node in 'openSelectedNode()': %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x24C1FE850](v57, -1, -1);
        MEMORY[0x24C1FE850](v56, -1, -1);
      }

      else
      {
        v58 = v45;
      }

      v63 = [a1 nodeURL];
      if (v63)
      {
        v64 = v63;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_2493AC000, v65, v66, "[Interaction] Node already has URL, opening directly", v67, 2u);
          MEMORY[0x24C1FE850](v67, -1, -1);
        }

        v68 = a1;
        v69 = v122;
        v70 = v68;
        outlined init with copy of DOCInteractionManagerContext(&v128, v126);
        v71 = v69;
        v72 = v70;
        outlined init with copy of DOCInteractionManagerContext(&v128, v126);
        v73 = v72;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v126[0] = v77;
          *v76 = 136315394;
          *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, v126);
          *(v76 + 12) = 2080;
          v78 = [v72 description];
          v79 = v71;
          v80 = v78;
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v126);

          *(v76 + 14) = v84;
          v71 = v79;
          _os_log_impl(&dword_2493AC000, v74, v75, "%s node is non-nil trying to open with node first: %s", v76, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v77, -1, -1);
          MEMORY[0x24C1FE850](v76, -1, -1);
        }

        v85 = v123;
        v86 = v124;
        v87 = v71;
        v88 = v73;
        outlined init with copy of DOCInteractionManagerContext(&v128, v126);
        v89 = v125;
        _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFTf4nennnnn_nSo6FPItemC_Tt2g504_s26ab35Executables32DOCItemInfoContentViewz24C16openSelectedNodeyySo7x9_pF15calldE46L_4with4nodey10Foundation3URLV_SoAE_ptFySbcfU_AA014DOCInteractionB0CSoAM_pAA014DOCInteractionB7ContextVTf1nnnnnc_nTf4nnnnnggg_nTf4nnnnnnen_nAS_Tg5(v125, v88, 0, 1, v120, v87, v88, &v134);
        outlined destroy of DOCInteractionManagerContext(&v128);

        outlined destroy of DOCInteractionManagerContext(&v128);
        outlined destroy of DOCInteractionManagerContext(&v128);
        outlined destroy of DOCInteractionManagerContext(&v128);

        (*(v86 + 8))(v89, v85);
      }

      else
      {

        if (!v58)
        {
          goto LABEL_46;
        }

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_2493AC000, v90, v91, "[Interaction] Node is a FPItem, fetching URL", v92, 2u);
          MEMORY[0x24C1FE850](v92, -1, -1);
        }

        v93 = [objc_opt_self() defaultManager];
        v94 = swift_allocObject();
        v96 = v119;
        v95 = v120;
        v97 = v122;
        *(v94 + 16) = v120;
        *(v94 + 24) = v97;
        v98 = v137;
        *(v94 + 64) = v136;
        *(v94 + 80) = v98;
        v99 = v138;
        v100 = v135;
        *(v94 + 32) = v134;
        *(v94 + 48) = v100;
        *(v94 + 96) = v99;
        *(v94 + 104) = a1;
        *(v94 + 112) = v96;
        v127[4] = partial apply for closure #2 in DOCItemInfoContentViewController.openSelectedNode(_:);
        v127[5] = v94;
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 1107296256;
        v127[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
        v127[3] = &block_descriptor_96_0;
        v101 = _Block_copy(v127);
        v102 = v97;
        v103 = v95;
        v104 = v96;
        v105 = a1;
        outlined init with copy of DOCInteractionManagerContext(&v128, v126);

        [v93 fetchURLForItem:v104 completionHandler:v101];

        outlined destroy of DOCInteractionManagerContext(&v128);
        _Block_release(v101);
      }
    }
  }
}

void specialized DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1, char *a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v12 = [*&a2[v11] sceneIdentifier];
  v13 = specialized static DOCInteractionManager.sharedManager(for:)(v12);

  if ((*((*MEMORY[0x277D85000] & *v13) + 0x60))())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2493AC000, v15, v16, "[Interaction] An item was selected while there is another one trying to be opened.", v17, 2u);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    goto LABEL_7;
  }

  v124 = v10;
  v125 = a3;
  v123 = v7;
  if (([a1 isTrashed] & 1) != 0 && (objc_msgSend(a1, sel_isFolder) & 1) == 0)
  {
    v34 = [a1 displayName];
    if (!v34)
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = MEMORY[0x24C1FAD20](v35);
    }

    DOCAlertUserTrashedFileCanNotBeOpened();
    goto LABEL_22;
  }

  v122 = v6;
  v18 = *&a2[v11];
  v19 = v125;
  v20 = specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(a1, v18, a2);

  if ((v20 & 1) == 0)
  {
LABEL_7:

    return;
  }

  if (([*&a2[v11] useSharedQuickLook] & 1) != 0 && (objc_msgSend(a1, sel_isFolder) & 1) == 0)
  {
    v21 = [*&a2[v11] sceneIdentifier];
    if (v21)
    {
      v22 = one-time initialization token for mapTable;
      v23 = v21;
      if (v22 != -1)
      {
        v117 = v23;
        swift_once();
        v23 = v117;
      }

      v24 = static DOCPreviewController.mapTable;
      v25 = v23;
      v26 = [v24 objectForKey_];
      v27 = MEMORY[0x277D85000];
      if (!v26)
      {
        v28 = objc_allocWithZone(type metadata accessor for DOCPreviewController(0));
        v26 = DOCPreviewController.init()();
        [v24 setObject:v26 forKey:v25];
      }

      (*((*v27 & *v26) + 0x248))(1);
      v29 = *((*v27 & *v26) + 0x1D8);
      v30 = swift_unknownObjectRetain();
      v29(v30, &protocol witness table for DOCItemInfoContentViewController);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_249BA0290;
      *(v31 + 32) = a1;
      v32 = *v27 & *v26;
      v134 = v31;
      LOBYTE(v135) = 0;
      v33 = *(v32 + 456);
      swift_unknownObjectRetain();
      v33(&v134, 0, 1);

      outlined consume of DOCPreviewSource?(v134, *(&v134 + 1), v135);
    }

    else
    {
      if (one-time initialization token for Source != -1)
      {
        swift_once();
      }

      v36 = static DOCLog.Source;
      v37 = static os_log_type_t.debug.getter();
      os_log(_:dso:log:type:_:)("Scene Identifier was nil. This may not be not be a problem. Reproduce and investigate if it is ok.", 98, 2, &dword_2493AC000, v36, v37, MEMORY[0x277D84F90]);
    }
  }

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v41 = *&a2[v11];
  v42 = v13;

  v43 = [v41 useSharedQuickLook];
  v44 = [*&a2[v11] skipDownload];
  *&v128 = Strong;
  *(&v128 + 1) = closure #1 in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply;
  v129 = v39;
  v130 = 0;
  *&v131 = 0;
  BYTE8(v131) = 0;
  BYTE9(v131) = v43;
  BYTE10(v131) = 1;
  *&v132 = 0;
  BYTE8(v132) = 1;
  BYTE9(v132) = v44;
  v133 = a2;
  v138 = a2;
  v136 = v131;
  v137 = v132;
  v134 = v128;
  v135 = v39;
  v45 = *&a2[v11];
  v46 = a2;
  if (![v45 shouldOpenInApp])
  {

    specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a1, &v134, v42, v19);
    goto LABEL_32;
  }

  v121 = v39;
  v47 = DOCNode.fpfs_syncFetchFPItem()();
  v48 = v47;
  if (!v47 || ([v47 doc_isCollaborationInvitation] & 1) == 0)
  {
    v119 = v42;
    v49 = [*&a2[v11] sceneIdentifier];
    v50 = specialized static DOCInteractionManager.sharedManager(for:)(v49);

    v51 = *((*MEMORY[0x277D85000] & *v50) + 0x68);
    v52 = swift_unknownObjectRetain();
    v51(v52);

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    v54 = __swift_project_value_buffer(v53, static Logger.UI);
    v55 = v48;
    v56 = v48;
    v118 = v54;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();

    v59 = os_log_type_enabled(v57, v58);
    v120 = v46;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v126[0] = v61;
      *v60 = 136315138;
      v62 = v55;
      v127[0] = v55;
      v63 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
      v64 = String.init<A>(describing:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v126);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_2493AC000, v57, v58, "[Interaction] Keeping track of last opened node in 'openSelectedNode()': %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x24C1FE850](v61, -1, -1);
      v67 = v60;
      v46 = v120;
      MEMORY[0x24C1FE850](v67, -1, -1);
    }

    else
    {
      v62 = v55;
    }

    v68 = v125;
    v69 = [a1 nodeURL];
    if (v69)
    {
      v125 = v56;
      v70 = v69;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_2493AC000, v71, v72, "[Interaction] Node already has URL, opening directly", v73, 2u);
        MEMORY[0x24C1FE850](v73, -1, -1);
      }

      v74 = swift_allocObject();
      v75 = v119;
      *(v74 + 16) = v119;
      *(v74 + 24) = a1;
      v76 = v137;
      *(v74 + 64) = v136;
      *(v74 + 80) = v76;
      *(v74 + 96) = v138;
      v77 = v135;
      *(v74 + 32) = v134;
      *(v74 + 48) = v77;
      swift_unknownObjectRetain_n();
      v78 = v75;
      outlined init with copy of DOCInteractionManagerContext(&v128, v126);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v126[0] = v119;
        *v81 = 136315394;
        *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, v126);
        *(v81 + 12) = 2080;
        v82 = [a1 description];
        LODWORD(v118) = v80;
        v83 = v78;
        v84 = v82;
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v68;
        v88 = v87;

        v78 = v83;
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v88, v126);
        v68 = v86;

        *(v81 + 14) = v89;
        _os_log_impl(&dword_2493AC000, v79, v118, "%s node is non-nil trying to open with node first: %s", v81, 0x16u);
        v90 = v119;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v90, -1, -1);
        MEMORY[0x24C1FE850](v81, -1, -1);
      }

      v91 = v123;
      swift_unknownObjectRetain();
      v92 = v124;
      specialized _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v124, a1, 0, 1, v120, closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply, v74, v68);

      swift_unknownObjectRelease_n();
      outlined destroy of DOCInteractionManagerContext(&v128);

      (*(v91 + 8))(v92, v122);
      return;
    }

    if (!v62)
    {

      goto LABEL_33;
    }

    v93 = v56;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_2493AC000, v94, v95, "[Interaction] Node is a FPItem, fetching URL", v96, 2u);
      MEMORY[0x24C1FE850](v96, -1, -1);
    }

    v34 = [objc_opt_self() defaultManager];
    v97 = swift_allocObject();
    v98 = v119;
    *(v97 + 16) = v46;
    *(v97 + 24) = v98;
    v99 = v137;
    *(v97 + 64) = v136;
    *(v97 + 80) = v99;
    v100 = v138;
    v101 = v135;
    *(v97 + 32) = v134;
    *(v97 + 48) = v101;
    *(v97 + 96) = v100;
    *(v97 + 104) = a1;
    *(v97 + 112) = v93;
    v127[4] = closure #2 in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply;
    v127[5] = v97;
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 1107296256;
    v127[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v127[3] = &block_descriptor_224_0;
    v102 = _Block_copy(v127);
    v103 = v98;
    v104 = v46;
    v13 = v93;
    swift_unknownObjectRetain();
    outlined init with copy of DOCInteractionManagerContext(&v128, v126);

    [v34 fetchURLForItem:v13 completionHandler:v102];

    outlined destroy of DOCInteractionManagerContext(&v128);
    _Block_release(v102);
LABEL_22:

    return;
  }

  if (FPItem.openInvitationIfPossible()())
  {

LABEL_32:
LABEL_33:
    outlined destroy of DOCInteractionManagerContext(&v128);
    return;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v105 = type metadata accessor for Logger();
  __swift_project_value_buffer(v105, static Logger.UI);
  v106 = v48;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = v42;
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v126[0] = v111;
    *v110 = 136315394;
    *(v110 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BDBC40, v126);
    *(v110 + 12) = 2080;
    v112 = [v106 displayName];
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, v126);

    *(v110 + 14) = v116;
    _os_log_impl(&dword_2493AC000, v107, v108, "%s Could not open invitation for node: %s", v110, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v111, -1, -1);
    MEMORY[0x24C1FE850](v110, -1, -1);

    outlined destroy of DOCInteractionManagerContext(&v128);
  }

  else
  {

    outlined destroy of DOCInteractionManagerContext(&v128);
  }
}

double specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v79 = &v78 - v6;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = static DOCLog.UI;
  v8 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  v80 = xmmword_249B9A480;
  *(v9 + 16) = xmmword_249B9A480;
  v10 = [a1 displayName];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 64) = v14;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v15 = v7;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = *a2;
  *(v17 + 40) = a2[1];
  v19 = a2[3];
  *(v17 + 56) = a2[2];
  *(v17 + 72) = v19;
  *(v17 + 88) = *(a2 + 8);
  *(v17 + 24) = v18;
  outlined init with copy of DOCInteractionManagerContext(a2, &aBlock);
  if ([a1 isDownloading] && !objc_msgSend(a1, sel_isDownloaded))
  {
    v20 = 1;
  }

  else
  {
    v20 = [a1 isExternalDownloadPlaceholder];
  }

  if ([a1 isCloudItem])
  {
    v21 = [a1 isDownloaded] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  if (![a1 isFolder])
  {
    if ((*(a2 + 42) & 1) != 0 && (*(a2 + 56) & 1) == 0)
    {
      v49 = static os_log_type_t.default.getter();
      v50 = swift_allocObject();
      *(v50 + 16) = v80;
      v51 = [a1 displayName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = v14;
      *(v50 + 32) = v52;
      *(v50 + 40) = v54;

      v55 = swift_allocObject();
      *(v55 + 16) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v55 + 24) = v17;
      v56 = swift_allocObject();
      *(v56 + 16) = partial apply for closure #5 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v56 + 24) = v55;
      v86 = closure #1 in DOCNode.fpfs_fetchFPItem(completion:)partial apply;
      v87 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v44 = &block_descriptor_193;
    }

    else
    {
      if ((*(a2 + 57) & 1) == 0)
      {
        if (v20)
        {
          if ([a1 isExternalDownloadPlaceholder])
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v45 = type metadata accessor for Logger();
            __swift_project_value_buffer(v45, static Logger.UI);
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_2493AC000, v46, v47, "[TAP] [Interaction] Item is a Safari download in progress, don't cancel the D/L, but don't open either", v48, 2u);
              MEMORY[0x24C1FE850](v48, -1, -1);
            }
          }

          else if ((*(a2 + 40) & 1) == 0)
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v71 = type metadata accessor for Logger();
            __swift_project_value_buffer(v71, static Logger.UI);
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              *v74 = 0;
              _os_log_impl(&dword_2493AC000, v72, v73, "[TAP] [Interaction] Item is a Download in progress, Cancelling D/L", v74, 2u);
              MEMORY[0x24C1FE850](v74, -1, -1);
            }

            v75 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v76 = swift_allocObject();
            *(v76 + 16) = partial apply for closure #3 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
            *(v76 + 24) = v75;
            v86 = closure #1 in DOCNode.fpfs_fetchFPItem(completion:)partial apply;
            v87 = v76;
            aBlock = MEMORY[0x277D85DD0];
            v83 = 1107296256;
            v84 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
            v85 = &block_descriptor_183;
            v77 = _Block_copy(&aBlock);
            swift_retain_n();

            [a1 fetchFPItem_];
            _Block_release(v77);
          }

          goto LABEL_36;
        }

        if (v21)
        {
          LODWORD(v79) = static os_log_type_t.default.getter();
          v58 = swift_allocObject();
          *(v58 + 16) = v80;
          v59 = [a1 displayName];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          *(v58 + 56) = MEMORY[0x277D837D0];
          *(v58 + 64) = v14;
          *(v58 + 32) = v60;
          *(v58 + 40) = v62;

          v63 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v64 = swift_allocObject();
          v65 = *a2;
          *(v64 + 40) = a2[1];
          v66 = a2[3];
          *(v64 + 56) = a2[2];
          *(v64 + 72) = v66;
          *(v64 + 16) = v63;
          v67 = *(a2 + 8);
          *(v64 + 24) = v65;
          *(v64 + 88) = v67;
          *(v64 + 96) = a1;
          *(v64 + 104) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
          *(v64 + 112) = v17;
          v68 = swift_allocObject();
          *(v68 + 16) = partial apply for closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
          *(v68 + 24) = v64;
          v81[4] = closure #1 in DOCNode.fpfs_fetchFPItem(completion:)partial apply;
          v81[5] = v68;
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 1107296256;
          v81[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
          v81[3] = &block_descriptor_175;
          v69 = _Block_copy(v81);
          outlined init with copy of DOCInteractionManagerContext(a2, &aBlock);

          v70 = a1;

          [v70 fetchFPItem_];
          _Block_release(v69);

          goto LABEL_35;
        }
      }

      v36 = static os_log_type_t.default.getter();
      v37 = swift_allocObject();
      *(v37 + 16) = v80;
      v38 = [a1 displayName];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = v14;
      *(v37 + 32) = v39;
      *(v37 + 40) = v41;

      v42 = swift_allocObject();
      *(v42 + 16) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v42 + 24) = v17;
      v43 = swift_allocObject();
      *(v43 + 16) = partial apply for closure #5 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v43 + 24) = v42;
      v86 = partial apply for closure #1 in DOCNode.fpfs_fetchFPItem(completion:);
      v87 = v43;
      aBlock = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v44 = &block_descriptor_164_0;
    }

    v84 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    v85 = v44;
    v57 = _Block_copy(&aBlock);

    [a1 fetchFPItem_];
    _Block_release(v57);
LABEL_35:

LABEL_36:

    return result;
  }

  v22 = [a1 fpfs_fpItem];
  if (v22)
  {
    v23 = v22;
    v24 = one-time initialization token for restorableSettingsCache;
    v25 = v22;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for RestorableSettings(0);
    v27 = v79;
    (*(*(v26 - 8) + 56))(v79, 1, 1, v26);
    swift_beginAccess();
    v28 = v25;
    specialized Dictionary.subscript.setter(v27, v23, 0);
    swift_endAccess();
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.UI);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2493AC000, v30, v31, "[TAP] [Interaction] Node is a folder, navigating to the next location.", v32, 2u);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  v33 = [a1 providerDomainID];
  v34 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v33 node:a1];

  if (*a2)
  {
    [*a2 didSelectLocation:v34 atParentLocation:*(a2 + 6)];
  }

  return result;
}

uint64_t specialized DOCItemInfoContentViewController.Metrics.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 11.0;
  if (_UISolariumEnabled())
  {
    v13 = 12.0;
  }

  else
  {
    v13 = 11.0;
  }

  if (_UISolariumEnabled())
  {
    v14 = 2.0;
  }

  else
  {
    v14 = 4.0;
  }

  _UISolariumEnabled();
  v15 = 20.0;
  if (_UISolariumEnabled())
  {
    v16 = 20.0;
  }

  else
  {
    v16 = 21.0;
  }

  if (_UISolariumEnabled())
  {
    v17 = 12.0;
  }

  else
  {
    v17 = 11.0;
  }

  if (!_UISolariumEnabled())
  {
    v15 = 18.0;
  }

  if (_UISolariumEnabled())
  {
    v12 = 12.0;
  }

  v18 = _UISolariumEnabled() ^ 1;
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  UIListContentConfiguration.textProperties.getter();
  (*(v8 + 8))(v11, v7);
  v20 = UIListContentConfiguration.TextProperties.font.getter();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = 0x4030000000000000;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v15;
  *(a1 + 48) = v12;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  return result;
}

id specialized DOCItemInfoContentViewController.Metrics.fileNameFont.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd, &_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  v1 = *MEMORY[0x277D74430];
  *(inited + 32) = *MEMORY[0x277D74430];
  v2 = v1;
  v3 = _UISolariumEnabled();
  v4 = MEMORY[0x277D74410];
  if (v3)
  {
    v4 = MEMORY[0x277D743F8];
  }

  *(inited + 40) = *v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMR);
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd, &_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMR);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_249B9A480;
  v8 = *MEMORY[0x277D74380];
  *(v7 + 32) = *MEMORY[0x277D74380];
  *(v7 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd, &_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMR);
  *(v7 + 40) = v5;
  v9 = v6;
  v10 = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v7 + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd, &_sSo29UIFontDescriptorAttributeNamea_yptMR);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 fontDescriptorByAddingAttributes_];

  v13 = v12;
  [v13 pointSize];
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:v14];

  return v15;
}

void specialized DOCItemInfoContentViewController.init(configuration:documentManager:actionManager:)()
{
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_documentManager) = 0;
  v1 = (v0 + OBJC_IVAR___DOCItemInfoContentViewController_metrics);
  specialized DOCItemInfoContentViewController.Metrics.init()(v11);
  v2 = v11[3];
  v1[2] = v11[2];
  v1[3] = v2;
  v1[4] = v11[4];
  v3 = v11[1];
  *v1 = v11[0];
  v1[1] = v3;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce) = 0;
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins;
  if (one-time initialization token for defaultLayoutMargins != -1)
  {
    swift_once();
  }

  v5 = (v0 + v4);
  v6 = *&qword_27EEEA210;
  *v5 = static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins;
  v5[1] = v6;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_eventReporting + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton) = 1;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataSectionLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsSectionTitleLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView) = 1;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance) = 10;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow) = 0;
  v7 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for DOCItemInfoContentViewController.RootVStack()) init];
  v8 = OBJC_IVAR___DOCItemInfoContentViewController_scrollView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
  *(v0 + v9) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So23UIDocumentBrowserActionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) = 0;
  v10 = (v0 + OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized DOCItemInfoContentViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_documentManager) = 0;
  v1 = (v0 + OBJC_IVAR___DOCItemInfoContentViewController_metrics);
  specialized DOCItemInfoContentViewController.Metrics.init()(v11);
  v2 = v11[3];
  v1[2] = v11[2];
  v1[3] = v2;
  v1[4] = v11[4];
  v3 = v11[1];
  *v1 = v11[0];
  v1[1] = v3;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce) = 0;
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins;
  if (one-time initialization token for defaultLayoutMargins != -1)
  {
    swift_once();
  }

  v5 = (v0 + v4);
  v6 = *&qword_27EEEA210;
  *v5 = static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins;
  v5[1] = v6;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_eventReporting + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton) = 1;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataSectionLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsSectionTitleLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView) = 1;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance) = 10;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow) = 0;
  v7 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for DOCItemInfoContentViewController.RootVStack()) init];
  v8 = OBJC_IVAR___DOCItemInfoContentViewController_scrollView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
  *(v0 + v9) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So23UIDocumentBrowserActionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) = 0;
  v10 = (v0 + OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized DOCItemInfoContentViewController.documentPreviewTapped(sender:)()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return result;
    }
  }

  v4 = *&v0[v1];
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x24C1FC540](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  ObjectType = swift_getObjectType();
  specialized DOCItemInfoContentViewController.openSelectedNode(_:)(v5, v0, ObjectType);
  return swift_unknownObjectRelease();
}

double specialized DOCItemInfoContentViewController.setHandlerFlow(_:didSetHandlerPreferenceOfType:to:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(39);
  MEMORY[0x24C1FAEA0](0xD00000000000001FLL, 0x8000000249BDC010);
  type metadata accessor for CSUIHandlerPreferenceType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](544175136, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CSUIBoundBundleInfo_pMd, &_sSo19CSUIBoundBundleInfo_pMR);
  _print_unlocked<A, B>(_:_:)();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  DOCRunInMainThread(_:)();

  return result;
}

double specialized DOCItemInfoContentViewController.setHandlerFlow(_:didFailToSetHandlerPreferenceOfType:to:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(53);
  MEMORY[0x24C1FAEA0](0xD000000000000029, 0x8000000249BDBFE0);
  type metadata accessor for CSUIHandlerPreferenceType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](544175136, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CSUIBoundBundleInfo_pMd, &_sSo19CSUIBoundBundleInfo_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  *(swift_allocObject() + 16) = v3;
  v5 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

void specialized DOCItemInfoContentViewController.previewController(_:viewFor:_:)(void (*a1)(id))
{
  v3 = DOCItemInfoContentViewController.thumbnailView.getter();
  v4 = [v3 window];

  if (v4)
  {

    v5 = *(v1 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView);
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x138);
    v7 = v5;
    v8 = v6();
  }

  else
  {
    v8 = 0;
  }

  a1(v8);
}

void specialized DOCItemInfoContentViewController.tagsCollectionItem(_:didDelete:)(void *a1)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v6;
      swift_getObjectType();
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      v8 = a1;
      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemInfoContentViewController.tagsCollectionItem(_:didDelete:), v7);
      swift_unknownObjectRelease();
    }

    while (v5 != v6);
  }
}

uint64_t specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(void *a1, void *a2, uint64_t a3)
{
  if ([a1 isCloudItem])
  {
    v5 = [a1 isDownloaded];
  }

  else
  {
    v5 = 1;
  }

  v6 = [a1 cachedDomain];
  if (v6)
  {
    v7 = v6;
    v8 = FPProviderDomain.shouldUseDSEnumeration.getter();
  }

  else
  {
    v8 = 0;
  }

  v9 = [a2 browserViewContext] == 1;
  result = 1;
  if (((v9 | v5) & 1) == 0 && (v8 & 1) == 0)
  {
    if (DOCIsNetworkReachable())
    {
      return 1;
    }

    else
    {
      DOCAlertUserTheNetworkIsNotReachable();
      return 0;
    }
  }

  return result;
}

void _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFTf4nennnnn_nSo6FPItemC_Tt2g504_s26ab35Executables32DOCItemInfoContentViewz24C16openSelectedNodeyySo7x9_pF15calldE46L_4with4nodey10Foundation3URLV_SoAE_ptFySbcfU_AA014DOCInteractionB0CSoAM_pAA014DOCInteractionB7ContextVTf1nnnnnc_nTf4nnnnnggg_nTf4nnnnnnen_nAS_Tg5(unint64_t a1, void *a2, int a3, int a4, void *a5, void *a6, void *a7, __int128 *a8)
{
  v254 = a5;
  LODWORD(v265) = a4;
  LODWORD(v262) = a3;
  v269 = type metadata accessor for DispatchWorkItemFlags();
  v267 = *(v269 - 1);
  MEMORY[0x28223BE20](v269, v13);
  v263 = &v245 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for DispatchQoS();
  v256 = *(v264 - 1);
  MEMORY[0x28223BE20](v264, v15);
  v248 = &v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v260 = &v245 - v24;
  v25 = type metadata accessor for URL();
  v257 = *(v25 - 8);
  v271 = v257;
  v272 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v253 = &v245 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v252 = &v245 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v251 = &v245 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v250 = &v245 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v249 = &v245 - v39;
  v255 = v40;
  MEMORY[0x28223BE20](v41, v42);
  v270 = &v245 - v43;
  v44 = swift_allocObject();
  *(v44 + 16) = a6;
  *(v44 + 24) = a7;
  v45 = a8[3];
  *(v44 + 64) = a8[2];
  *(v44 + 80) = v45;
  *(v44 + 96) = *(a8 + 8);
  v46 = a8[1];
  *(v44 + 32) = *a8;
  *(v44 + 48) = v46;
  v261 = v44;
  v47 = objc_opt_self();
  v259 = a6;
  v258 = a7;
  outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
  v48 = [v47 defaultPermission];
  v266 = [v48 dataOwnerStateForNode_];

  v49 = [objc_opt_self() contextMenuShowsOpenWithApp];
  LOBYTE(a6) = [v49 isEnabled];

  if ((a6 & 1) == 0)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
    v50 = [a2 providerDomainID];
    v135 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v50, 1);

    if (v135)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v260 = v135;
      (*(v18 + 104))(v21, *MEMORY[0x277D851B8], v17);
      v270 = static OS_dispatch_queue.global(qos:)();
      (*(v18 + 8))(v21, v17);
      v136 = v271;
      v137 = v272;
      v138 = v253;
      (*(v271 + 16))(v253, a1, v272);
      v139 = (*(v136 + 80) + 24) & ~*(v136 + 80);
      v140 = (v139 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
      v268 = (v139 + v255 + 23) & 0xFFFFFFFFFFFFFFF8;
      v141 = (v139 + v255 + 39) & 0xFFFFFFFFFFFFFFF8;
      v142 = swift_allocObject();
      *(v142 + 16) = a2;
      (*(v136 + 32))(v142 + v139, v138, v137);
      v143 = v142 + v140;
      v144 = v260;
      *v143 = v260;
      *(v143 + 8) = v265 & 1;
      v145 = v142 + v268;
      *v145 = v266;
      *(v145 + 8) = v262 & 1;
      v146 = v254;
      *(v142 + v141) = v254;
      v147 = (v142 + ((v141 + 15) & 0xFFFFFFFFFFFFFFF8));
      v148 = v261;
      *v147 = partial apply for closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:);
      v147[1] = v148;
      v279 = partial apply for closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:);
      v280 = v142;
      aBlock = MEMORY[0x277D85DD0];
      v276 = 1107296256;
      v277 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v278 = &block_descriptor_124;
      v149 = _Block_copy(&aBlock);
      v150 = a2;
      v151 = v146;
      v152 = v144;

      v153 = v248;
      static DispatchQoS.unspecified.getter();
      v274[0] = MEMORY[0x277D84F90];
      _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v154 = v263;
      v155 = v269;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v156 = v270;
      MEMORY[0x24C1FB9A0](0, v153, v154, v149);
      _Block_release(v149);

      (*(v267 + 8))(v154, v155);
      (*(v256 + 8))(v153, v264);

      return;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v52 = __swift_project_value_buffer(v51, static Logger.UI);
  v53 = a2;
  v267 = v52;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  v56 = os_log_type_enabled(v54, v55);
  v268 = a1;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136315650;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDBE50, &aBlock);
    *(v57 + 12) = 2080;
    v274[0] = [v53 providerDomainID];
    type metadata accessor for FPProviderDomainID(0);
    v59 = String.init<A>(describing:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &aBlock);

    *(v57 + 14) = v61;
    *(v57 + 22) = 2080;
    a1 = v268;
    v274[0] = v53;
    v62 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v63 = String.init<A>(describing:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &aBlock);

    *(v57 + 24) = v65;
    _os_log_impl(&dword_2493AC000, v54, v55, "%s error creating FPProviderDomain from domainID: %s of node: %s", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v58, -1, -1);
    MEMORY[0x24C1FE850](v57, -1, -1);
  }

  v66 = v271;
  v67 = v272;
  v68 = v270;
  v69 = v270;
  v269 = *(v271 + 16);
  v270 = (v271 + 16);
  (v269)(v69, a1, v272);
  v70 = v53;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v264 = v70;

  if (os_log_type_enabled(v71, v72))
  {
    v73 = v68;
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v274[0] = v75;
    *v74 = 136316162;
    *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000089, 0x8000000249BDBDC0, v274);
    *(v74 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    v256 = *(v271 + 8);
    (v256)(v73, v272);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v274);

    *(v74 + 14) = v79;
    *(v74 + 22) = 2080;
    aBlock = v264;
    v80 = v264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
    v81 = String.init<A>(describing:)();
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v274);

    *(v74 + 24) = v83;
    *(v74 + 32) = 2080;
    aBlock = 0;
    v276 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v84 = String.init<A>(describing:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v274);

    *(v74 + 34) = v86;
    v87 = v268;
    *(v74 + 42) = 2080;
    aBlock = 0;
    v276 = 0;
    v88 = String.init<A>(describing:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v274);

    *(v74 + 44) = v90;
    v66 = v271;
    _os_log_impl(&dword_2493AC000, v71, v72, "%s trying to open: %s node: %s providerBundleId: %s appContainerBundleId: %s", v74, 0x34u);
    swift_arrayDestroy();
    v91 = v75;
    v67 = v272;
    MEMORY[0x24C1FE850](v91, -1, -1);
    MEMORY[0x24C1FE850](v74, -1, -1);
  }

  else
  {

    v256 = *(v66 + 8);
    (v256)(v68, v67);
    v87 = a1;
  }

  v92 = swift_allocObject();
  v94 = v258;
  v93 = v259;
  *(v92 + 16) = v259;
  *(v92 + 24) = v94;
  v95 = a8[3];
  *(v92 + 64) = a8[2];
  *(v92 + 80) = v95;
  *(v92 + 96) = *(a8 + 8);
  v96 = a8[1];
  *(v92 + 32) = *a8;
  *(v92 + 48) = v96;
  v263 = v92;
  v97 = v260;
  v98 = v87;
  (v269)(v260, v87, v67);
  (*(v66 + 56))(v97, 0, 1, v67);
  v99 = v93;
  v100 = v94;
  outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
  v101 = v99;
  v102 = v100;
  outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
  v259 = v101;
  v103 = v102;
  outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
  v104 = v264;
  static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(v97, v104, 0, 0, v265 & 1, v274, v262 & 1);
  outlined destroy of CharacterSet?(v97, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (!v274[0])
  {
    v117 = v259;
    v118 = v259;
    v119 = v103;
    outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
    _s26DocumentManagerExecutables11LaunchUtilsV27installConfigurationProfile4from15completionBlocky10Foundation3URLV_ySbctFZ04_s26ab85Executables32DOCItemInfoContentViewControllerC16openSelectedNodeyySo7DOCNode_pF15calldE46L_4with4nodey10Foundation3URLV_SoAE_ptFySbcfU_AA014DOCInteractionB0CSo0Y0_pAA014DOCInteractionB7ContextVTf1ncn_nTf4nnggg_nTf4nnnen_nSo6FPItemC_Tt0g5(v98, v118, v119, a8);
    outlined destroy of DOCInteractionManagerContext(a8);

LABEL_28:
    outlined destroy of DOCInteractionManagerContext(a8);
    outlined destroy of DOCInteractionManagerContext(a8);

    return;
  }

  v264 = v104;
  if (v274[0] == 1)
  {
    v105 = v249;
    (v269)(v249, v98, v67);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v105;
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v258 = v103;
      v111 = v110;
      aBlock = v110;
      *v109 = 136315394;
      *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, &aBlock);
      *(v109 + 12) = 2080;
      _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v113;
      (v256)(v108, v67);
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &aBlock);

      *(v109 + 14) = v115;
      _os_log_impl(&dword_2493AC000, v106, v107, "%s should quicklook: %s", v109, 0x16u);
      swift_arrayDestroy();
      v116 = v111;
      v103 = v258;
      MEMORY[0x24C1FE850](v116, -1, -1);
      MEMORY[0x24C1FE850](v109, -1, -1);
    }

    else
    {

      (v256)(v105, v67);
    }

    v117 = v259;
    v157 = swift_allocObject();
    *(v157 + 16) = v117;
    *(v157 + 24) = 0;
    *(v157 + 32) = v103;
    v158 = *a8;
    *(v157 + 56) = a8[1];
    v159 = a8[3];
    *(v157 + 72) = a8[2];
    *(v157 + 88) = v159;
    *(v157 + 104) = *(a8 + 8);
    *(v157 + 40) = v158;
    v160 = v117;
    v161 = v103;
    outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
    DOCRunInMainThread(_:)();

    goto LABEL_27;
  }

  v258 = v103;
  v120 = v274[2];
  v262 = v274[1];

  v121 = v250;
  v122 = v98;
  v123 = v120;
  (v269)(v250, v122, v67);

  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.debug.getter();

  v126 = os_log_type_enabled(v124, v125);
  v247 = a8;
  v260 = v120;
  if (v126)
  {
    v127 = v121;
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    aBlock = v129;
    *v128 = 136315650;
    *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, &aBlock);
    *(v128 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v132 = v131;
    (v256)(v127, v272);
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &aBlock);
    v67 = v272;

    *(v128 + 14) = v133;
    *(v128 + 22) = 2080;
    v66 = v271;
    *(v128 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v123, &aBlock);
    _os_log_impl(&dword_2493AC000, v124, v125, "%s should open: %s in: %s", v128, 0x20u);
    swift_arrayDestroy();
    v134 = v129;
    v122 = v268;
    MEMORY[0x24C1FE850](v134, -1, -1);
    MEMORY[0x24C1FE850](v128, -1, -1);
  }

  else
  {

    (v256)(v121, v67);
  }

  v162 = v251;
  (v269)(v251, v122, v67);
  v163 = *(v66 + 80);
  v164 = (v163 + 32) & ~v163;
  v165 = (v255 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
  v166 = (v165 + 23) & 0xFFFFFFFFFFFFFFF8;
  v246 = ((v166 + 15) & 0xFFFFFFFFFFFFFFF8);
  v167 = (v166 + 39) & 0xFFFFFFFFFFFFFFF8;
  v250 = v163;
  v168 = swift_allocObject();
  v169 = v263;
  *(v168 + 16) = closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply;
  *(v168 + 24) = v169;
  v170 = *(v66 + 32);
  v271 = v66 + 32;
  v248 = v170;
  (v170)(v168 + v164, v162, v272);
  v171 = (v168 + v165);
  v172 = v260;
  *v171 = v262;
  v171[1] = v172;
  *(v168 + v166) = v266;
  v173 = &v246[v168];
  v174 = v265 & 1;
  *v173 = 0;
  *(v173 + 1) = 0;
  LODWORD(v251) = v174;
  v173[16] = v174;
  v175 = v254;
  *(v168 + v167) = v254;
  v176 = v264;
  v249 = v168;
  *(v168 + ((v167 + 15) & 0xFFFFFFFFFFFFFFF8)) = v264;
  v177 = v272;
  v178 = v252;
  (v269)(v252, v268, v272);
  swift_bridgeObjectRetain_n();
  v246 = v176;

  v179 = v175;
  v180 = Logger.logObject.getter();
  v181 = static os_log_type_t.debug.getter();

  v182 = v172;
  if (os_log_type_enabled(v180, v181))
  {
    v183 = swift_slowAlloc();
    v184 = v172;
    v185 = v177;
    v186 = swift_slowAlloc();
    aBlock = v186;
    *v183 = 136315650;
    *(v183 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x8000000249BDBCD0, &aBlock);
    *(v183 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v187 = dispatch thunk of CustomStringConvertible.description.getter();
    v189 = v188;
    v190 = v185;
    v182 = v184;
    (v256)(v178, v190);
    v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v189, &aBlock);

    *(v183 + 14) = v191;
    *(v183 + 22) = 2080;
    *(v183 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v184, &aBlock);
    _os_log_impl(&dword_2493AC000, v180, v181, "%s attempting to open: %s in: %s", v183, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v186, -1, -1);
    MEMORY[0x24C1FE850](v183, -1, -1);
  }

  else
  {

    (v256)(v178, v177);
  }

  a8 = v247;
  v192 = v250;
  v193 = ~v250;
  if (v265)
  {
    v194 = v268;
    URL._bridgeToObjectiveC()(v265);
    v267 = v195;
    v196 = v262;
    v265 = MEMORY[0x24C1FAD20](v262, v182);
    v197 = v253;
    v198 = v272;
    (v269)(v253, v194, v272);
    v199 = (v192 + 16) & v193;
    v200 = (v199 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
    v201 = (v199 + v255 + 31) & 0xFFFFFFFFFFFFFFF8;
    v202 = swift_allocObject();
    (v248)(v202 + v199, v197, v198);
    v203 = v202 + v200;
    v204 = v249;
    *v203 = partial apply for closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:);
    *(v203 + 8) = v204;
    *(v203 + 16) = v251;
    v205 = (v202 + v201);
    v206 = v260;
    *v205 = v196;
    v205[1] = v206;
    *(v202 + ((v201 + 23) & 0xFFFFFFFFFFFFFFF8)) = v266;
    v279 = partial apply for closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:);
    v280 = v202;
    aBlock = MEMORY[0x277D85DD0];
    v276 = 1107296256;
    v277 = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
    v278 = &block_descriptor_115;
    v207 = _Block_copy(&aBlock);

    v208 = v267;
    v209 = v265;
    FPExtendBookmarkForDocumentURL();

    _Block_release(v207);
    v103 = v258;

    v117 = v259;

LABEL_27:
    v104 = v264;
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v211;
  v212 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v251;
  v267 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v213 = swift_initStackObject();
  *(v213 + 16) = xmmword_249B9FA70;
  *(v213 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v213 + 40) = v214;
  *(v213 + 72) = v212;
  *(v213 + 48) = 1;
  *(v213 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v213 + 88) = v215;
  *(v213 + 120) = v212;
  *(v213 + 96) = 1;
  v265 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v213);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v216 = v268;
  LOBYTE(v213) = URL.startAccessingSecurityScopedResource()();
  v217 = v253;
  v218 = v182;
  v219 = v272;
  (v269)(v253, v216, v272);
  v220 = (v250 + 17) & v193;
  v221 = (v220 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
  v222 = (v220 + v255 + 31) & 0xFFFFFFFFFFFFFFF8;
  v223 = swift_allocObject();
  *(v223 + 16) = v213 & 1;
  (v248)(v223 + v220, v217, v219);
  v224 = v223 + v221;
  v225 = v262;
  *v224 = v262;
  *(v224 + 8) = v218;
  *(v224 + 16) = v251;
  v226 = (v223 + v222);
  v227 = v249;
  *v226 = partial apply for closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:);
  v226[1] = v227;
  v228 = type metadata accessor for LaunchUtils.OpenAppDelegate();
  v229 = objc_allocWithZone(v228);
  v230 = &v229[OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock];
  *v230 = partial apply for closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:);
  v230[1] = v223;
  v273.receiver = v229;
  v273.super_class = v228;

  v231 = objc_msgSendSuper2(&v273, sel_init);
  v232 = [objc_opt_self() defaultWorkspace];
  if (v232)
  {
    v234 = v232;
    URL._bridgeToObjectiveC()(v233);
    v236 = v235;
    v237 = MEMORY[0x24C1FAD20](v225, v260);
    LODWORD(v272) = v266 == 1;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v239 = Dictionary._bridgeToObjectiveC()().super.isa;
    v240 = [v234 operationToOpenResource:v236 usingApplication:v237 uniqueDocumentIdentifier:0 isContentManaged:v272 sourceAuditToken:0 userInfo:isa options:v239 delegate:v231];

    v241 = v259;
    if (v240)
    {

      [v240 start];
      v242 = v258;

      outlined destroy of DOCInteractionManagerContext(a8);
      outlined destroy of DOCInteractionManagerContext(a8);

      return;
    }
  }

  else
  {
    v241 = v258;

    v243 = v259;
    outlined destroy of DOCInteractionManagerContext(a8);

    outlined destroy of DOCInteractionManagerContext(a8);
    __break(1u);
  }

  v244 = v258;

  outlined destroy of DOCInteractionManagerContext(a8);
  outlined destroy of DOCInteractionManagerContext(a8);
  __break(1u);
}

double _s26DocumentManagerExecutables11LaunchUtilsV27installConfigurationProfile4from15completionBlocky10Foundation3URLV_ySbctFZ04_s26ab85Executables32DOCItemInfoContentViewControllerC16openSelectedNodeyySo7DOCNode_pF15calldE46L_4with4nodey10Foundation3URLV_SoAE_ptFySbcfU_AA014DOCInteractionB0CSo0Y0_pAA014DOCInteractionB7ContextVTf1ncn_nTf4nnggg_nTf4nnnen_nSo6FPItemC_Tt0g5(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v86 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v83 - v14;
  v94 = v16;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v83 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = a4[3];
  *(v21 + 64) = a4[2];
  *(v21 + 80) = v22;
  *(v21 + 96) = *(a4 + 8);
  v23 = a4[1];
  *(v21 + 32) = *a4;
  *(v21 + 48) = v23;
  v95 = v21;
  v89 = a2;
  v88 = a3;
  v90 = a4;
  outlined init with copy of DOCInteractionManagerContext(a4, aBlock);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.UI);
  v96 = *(v9 + 16);
  v97 = (v9 + 16);
  v96(v20, a1, v8);
  v85 = v25;
  v26 = v8;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v92 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDBE90, aBlock);
    *(v30 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v84 = *(v9 + 8);
    v84(v20, v26);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, aBlock);

    *(v30 + 14) = v35;
    _os_log_impl(&dword_2493AC000, v27, v28, "%s attempting to install: %s", v30, 0x16u);
    swift_arrayDestroy();
    v36 = v31;
    a1 = v92;
    MEMORY[0x24C1FE850](v36, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);
  }

  else
  {

    v84 = *(v9 + 8);
    v84(v20, v8);
  }

  v37 = URL.lastPathComponent.getter();
  v39 = v38;
  v91 = URL.startAccessingSecurityScopedResource()();
  v40 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v98 = 0;
  URL._bridgeToObjectiveC()(v41);
  v93 = v42;
  v96(v15, a1, v26);
  v43 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v44 = v26;
  v45 = v9;
  v46 = (v94 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 2) = &v98;
  *(v47 + 3) = v37;
  *(v47 + 4) = v39;
  v87 = v45;
  v48 = v45;
  v49 = v44;
  (*(v48 + 32))(&v47[v43], v15, v44);
  v50 = &v47[v46];
  v51 = v95;
  *v50 = closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply;
  v50[1] = v51;
  v52 = swift_allocObject();
  v52[2] = partial apply for closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:);
  v52[3] = v47;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[3] = &block_descriptor_137;
  v53 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v94 = v40;
  v54 = v93;
  [v40 coordinateReadingItemAtURL:v93 options:0 error:aBlock byAccessor:v53];
  _Block_release(v53);

  v55 = aBlock[0];
  v56 = aBlock[0];
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
    __break(1u);
  }

  if (v98 == 1)
  {

    if (!v91)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v57 = v86;
  v96(v86, a1, v49);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v97 = v56;
    v61 = v60;
    v96 = swift_slowAlloc();
    aBlock[0] = v96;
    *v61 = 136315650;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDBE90, aBlock);
    *(v61 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v57;
    v64 = v62;
    v66 = v65;
    v84(v63, v49);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, aBlock);

    *(v61 + 14) = v67;
    *(v61 + 22) = 2080;
    v99 = v55;
    v68 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd, &_sSo7NSErrorCSgMR);
    v69 = String.init<A>(describing:)();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, aBlock);

    *(v61 + 24) = v71;
    _os_log_impl(&dword_2493AC000, v58, v59, "%s failed to read: %s error: %s", v61, 0x20u);
    v72 = v96;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v72, -1, -1);
    v73 = v61;
    v56 = v97;
    MEMORY[0x24C1FE850](v73, -1, -1);
  }

  else
  {

    v84(v57, v49);
  }

  v74 = swift_allocObject();
  v75 = v89;
  v76 = v90;
  *(v74 + 16) = v89;
  *(v74 + 24) = 0;
  v77 = v88;
  *(v74 + 32) = v88;
  v78 = *v76;
  *(v74 + 56) = *(v76 + 16);
  v79 = *(v76 + 48);
  *(v74 + 72) = *(v76 + 32);
  *(v74 + 88) = v79;
  *(v74 + 104) = *(v76 + 64);
  *(v74 + 40) = v78;
  v80 = v75;
  v81 = v77;
  outlined init with copy of DOCInteractionManagerContext(v76, aBlock);
  DOCRunInMainThread(_:)();

  if (v91)
  {
LABEL_14:
    URL.stopAccessingSecurityScopedResource()();
  }

LABEL_15:

  return result;
}

void specialized DOCItemInfoContentViewController.nodeDownloadButton(_:requestedOpening:)(void *a1)
{
  if ([a1 isFolder] && (objc_msgSend(a1, sel_doc_isCollaborationInvitation) & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [a1 fpfs_fpItem];
      if (v6)
      {
        v7 = v6;
        [v5 didTapLocationOf_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v3 = [a1 fpfs_fpItem];
    if (v3)
    {
      v8 = v3;
      specialized DOCItemInfoContentViewController.openSelectedNode(_:)(v8, v1);
    }
  }
}

uint64_t specialized DOCImageContainerFittingView.dragInteraction(_:itemsForBeginning:)(void *a1, void *a2)
{
  type metadata accessor for DOCDragInteraction();
  if (swift_dynamicCastClass())
  {
    ObjectType = swift_getObjectType();
    v5 = a1;
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = DOCNode.supportsDrag.getter(ObjectType);
    swift_unknownObjectRelease();
    if ((ObjectType & 1) != 0 && (v6 = swift_getObjectType(), (v7 = DOCNode.dragItemFor(session:supportsPickingFolders:)(a2, 2, v6)) != 0))
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249BA0290;
      *(v9 + 32) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized DOCImageContainerFittingView.dragInteraction(_:previewForLifting:session:)(void *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x138))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D75480]) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  v9 = v4;
  [v9 frame];
  if (v11 != 0.0 || v10 != 0.0)
  {
    type metadata accessor for DOCDragInteraction();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D84699134F2F83A5DD978A1B1F3ADA5818DOCDragInteraction_node;
      v15 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D84699134F2F83A5DD978A1B1F3ADA5818DOCDragInteraction_node);
      v16 = a1;
      if ([v15 isFolder])
      {
        v17 = *(v13 + v14);
        swift_unknownObjectRetain();
        [v9 bounds];
        v20 = specialized static UIBezierPath.path(for:thumbnailSize:)(v17, v18, v19);
        swift_unknownObjectRelease();
        [v7 setVisiblePath_];

        v16 = v20;
      }
    }
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D75B88]) initWithView:v9 parameters:v7];

  return v21;
}

uint64_t keypath_get_39Tm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

void keypath_get_47Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t getEnumTagSinglePayload for DOCItemInfoContentViewController.Metrics(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemInfoContentViewController.Metrics(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void partial apply for closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v2, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void partial apply for closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(v2, v6, v1 + v4, v8, v9, v10, v12, v13);
}

void partial apply for closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(a1, a2, (v2 + v6), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

double partial apply for closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(*(v0 + 16), v0 + v2, *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t partial apply for closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:)(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_92Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t objectdestroy_98Tm_0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad()(uint64_t a1)
{
  v4 = *(type metadata accessor for FINodeEntity(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad()(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_30Tm_2()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_6Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t DOCNodeCollection.toggleNode(_:nodes:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x280))(1);
  result = (*((*v4 & *v2) + 0x190))(v5);
  if (result)
  {
    v8 = v7;
    result = (*((*v4 & *v2) + 0x1B0))();
    if (result)
    {
      v9 = result;
      ObjectType = swift_getObjectType();
      (*(v8 + 56))(v9, a2, ObjectType, v8);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void DOCNodeCollection.data(forNodeCollectionShouldBeReloaded:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  v6 = *((*v4 & *a1) + 0x258);
  v7 = (v6)(v5);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 >= 1 && (*((*v4 & *v2) + 0x190))(v9))
  {
    v11 = v10;
    v12 = (*((*v4 & *a1) + 0x1B0))();
    if (v12)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = v6();
      (*(v11 + 56))(v13, v15, ObjectType, v11);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t DOCNodeCollection.nodeCollection(_:didEncounterError:)(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x190))(a1);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void DOCNodeCollection.nodeCollectionDidFinishGathering(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x258);
  v6 = v5();
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= 1)
  {
    v8 = (*((*v4 & *v2) + 0x280))(1);
    if ((*((*v4 & *v2) + 0x190))(v8))
    {
      v10 = v9;
      v11 = (*((*v4 & *a1) + 0x1B0))();
      if (v11)
      {
        v12 = v11;
        ObjectType = swift_getObjectType();
        v14 = v5();
        (*(v10 + 56))(v12, v14, ObjectType, v10);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t DOCNodeCollection.nodeCollectionDidStartGathering(_:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x280))(1);
  result = (*((*v1 & *v0) + 0x190))(v2);
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(v0, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCNodeCollection.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v4) + 0x280))(1);
  result = (*((*v9 & *v4) + 0x190))(v10);
  if (result)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 48))(a1, a2, a3, a4, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

void DOCNodeCollection.expandNode(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DOCNodeCollection();
  ObjectType = swift_getObjectType();
  v5 = swift_unknownObjectRetain();
  LOBYTE(v19) = 1;
  v6 = specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(v5, 0, 0, 0x100000000uLL, v3, ObjectType);
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v6) + 0x198);
  v9 = swift_unknownObjectRetain();
  v8(v9, &protocol witness table for DOCNodeCollection);
  v10 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 8);
  v11 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 16);
  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 24);
  v19 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v13 = *((*v7 & *v6) + 0x228);
  outlined copy of DOCItemSortDescriptor?(v19, v10, v11);
  v13(&v19);
  outlined consume of DOCItemSortDescriptor?(v19, v20, v21);
  DOCNode.identifierKey.getter();
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v15 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v2 + v14);
  *(v2 + v14) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, &v19, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(&v19);
  *(v2 + v14) = v18;
  v17 = swift_endAccess();
  (*((*v7 & *v15) + 0x1C0))(v17);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation) = -1;
  (*((*v7 & *v2) + 0x280))(1);
}

void *DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(void *a1, void *a2, void *a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();

  return specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), v4, ObjectType);
}

uint64_t DOCNodeCollection.isExpanded(_:)()
{
  v1 = v0;
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      outlined destroy of AnyHashable(v8);

      return 1;
    }
  }

  outlined destroy of AnyHashable(v8);
  return 0;
}

unint64_t DOCNodeCollection.collapseNode(_:)()
{
  v1 = v0;
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
  if ((v6 & 1) == 0)
  {

LABEL_12:
    outlined destroy of AnyHashable(v16);
LABEL_15:
    result = (*((*v4 & *v1) + 0x280))(1);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation) = -1;
    return result;
  }

  v7 = *(*(v3 + 56) + 8 * v5);
  outlined destroy of AnyHashable(v16);

  v9 = (*((*v4 & *v7) + 0x1C8))(v8);
  result = (*((*v4 & *v7) + 0x258))(v9);
  v11 = result;
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_14:

    DOCNode.identifierKey.getter();
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, v16);
    swift_endAccess();

    v4 = MEMORY[0x277D85000];
    goto LABEL_15;
  }

  result = __CocoaSet.count.getter();
  v12 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1FC540](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      ++v13;
      v14(v15);
      swift_unknownObjectRelease();
    }

    while (v12 != v13);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t DOCNodeCollection.logPrefix.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
    {
      if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
      {
        v3 = 0xE200000000000000;
        v2 = 21316;
      }

      else
      {
        v3 = 0xE700000000000000;
        v2 = 0x6572756C696146;
      }
    }

    else
    {
      v3 = 0xE200000000000000;
      v2 = 20550;
    }

    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

double DOCNodeCollection.logPrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

double (*DOCNodeCollection.logPrefix.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = DOCNodeCollection.logPrefix.getter();
  a1[1] = v3;
  return DOCNodeCollection.logPrefix.modify;
}

double DOCNodeCollection.logPrefix.modify(uint64_t *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix);
  *v2 = *a1;
  v2[1] = v1;

  return result;
}

void *DOCNodeCollection.init(itemCollection:observedNode:)(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  v6 = MEMORY[0x277D84F90];
  *&v2[v5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables17DOCNodeCollectionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v7[24] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation] = -1;
  v8 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal] = v6;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty] = 1;
  v10 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type];
  *v10 = a1;
  *(v10 + 1) = a2;
  v10[16] = 0;
  swift_unknownObjectRetain();
  v35 = a1;
  v11 = a1;
  LOBYTE(v6) = [v11 isGathering];
  swift_beginAccess();
  v2[v9] = v6;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for DOCNodeCollection();
  v12 = objc_msgSendSuper2(&v37, sel_init);
  v13 = one-time initialization token for Enumeration;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.Enumeration);
  v16 = v11;
  swift_unknownObjectRetain();
  v17 = v14;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v20 = 136447234;
    v23 = (*((*MEMORY[0x277D85000] & *v17) + 0x138))();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v36);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BDC1F0, &v36);
    *(v20 + 22) = 2114;
    *(v20 + 24) = v17;
    v34 = v21;
    *v21 = v17;
    *(v20 + 32) = 2082;
    v26 = v17;
    if (a2)
    {
      v27 = [a2 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v30 = 0xE300000000000000;
      v28 = 7104878;
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v36);

    *(v20 + 34) = v31;
    *(v20 + 42) = 2114;
    *(v20 + 44) = v16;
    v34[1] = v35;
    v32 = v16;
    _os_log_impl(&dword_2493AC000, v18, v19, "%{public}s %{public}s Init DOCNodeCollection (%{public}@ with FPItem: %{public}s and FPItemCollection %{public}@", v20, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v22, -1, -1);
    MEMORY[0x24C1FE850](v20, -1, -1);
  }

  [v16 setDelegate_];
  swift_unknownObjectRelease();
  return v17;
}

void *DOCNodeCollection.init(fileSystemCollection:)(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  v4 = MEMORY[0x277D84F90];
  *&v1[v3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables17DOCNodeCollectionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  v5[24] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation] = -1;
  v6 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal] = v4;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty] = 1;
  v8 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type];
  *v8 = a1;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = a1;
  v10 = [v9 isGathering];
  swift_beginAccess();
  v1[v7] = v10;
  v37.receiver = v1;
  v37.super_class = type metadata accessor for DOCNodeCollection();
  v11 = objc_msgSendSuper2(&v37, sel_init);
  v12 = one-time initialization token for Enumeration;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.Enumeration);
  v15 = v9;
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v20 = MEMORY[0x277D85000];
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v21 = 136447234;
    v23 = (*((*v20 & *v16) + 0x138))();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v36);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BDC220, &v36);
    *(v21 + 22) = 2114;
    *(v21 + 24) = v16;
    *v22 = v16;
    *(v21 + 32) = 2082;
    v26 = [(*((*v20 & *v15) + 0x118))(v16) description];
    swift_unknownObjectRelease();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);
    v20 = MEMORY[0x277D85000];

    *(v21 + 34) = v30;
    *(v21 + 42) = 2114;
    *(v21 + 44) = v15;
    v22[1] = a1;
    v31 = v15;
    _os_log_impl(&dword_2493AC000, v17, v18, "%{public}s %{public}s Init DOCNodeCollection (%{public}@ with FINode: %{public}s and FileSystemCollection %{public}@", v21, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  else
  {
  }

  v32 = *((*v20 & *v15) + 0x168);
  v33 = v16;
  v32(v16, &protocol witness table for DOCNodeCollection);

  return v33;
}

void DOCNodeCollection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v4 + 1);
    if (((*((*MEMORY[0x277D85000] & *v2) + 0x188))() & 1) != 0 && Strong != v7 && *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 2)
    {
      v9 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
      swift_unknownObjectRetain();
      v10 = v9;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v2, v9, ObjectType, v8);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void (*DOCNodeCollection.delegate.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return DOCNodeCollection.delegate.modify;
}

void DOCNodeCollection.delegate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = v2[4];
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    DOCNodeCollection.delegate.setter(v5, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    DOCNodeCollection.delegate.setter(v3, v2[4]);
  }

  free(v2);
}

void *DOCNodeCollection.fpItemCollection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) != 1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
      swift_unknownObjectRetain();
      v3 = v2;
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    v4 = v1;
  }

  return v1;
}

void *DOCNodeCollection.observedNode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v2) + 0x118);
      v4 = v2;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v2, v1, 1);
      return v5;
    }

    else
    {
      swift_unknownObjectRetain();
      v6 = v1;

      return v2;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return v1;
}

id DOCNodeCollection.createDocumentSentinelNode.getter()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v7 = 0;
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      if (one-time initialization token for createSentinelNode != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = static FISentinelNode.createSentinelNode;
      v8 = static FISentinelNode.createSentinelNode;
    }
  }

  else
  {
    v9 = v4;
    swift_beginAccess();
    v10 = static FPItem.createDocumentSentinelItemIdentifier;
    v11 = off_27EEE8030;

    v12 = MEMORY[0x24C1FAD20](v10, v11);

    v14 = static FPItem.createDocumentSentinelItemIdentifier;
    v13 = off_27EEE8030;

    v15 = MEMORY[0x24C1FAD20](v14, v13);

    static UTType.item.getter();
    v16 = objc_allocWithZone(MEMORY[0x277CC63E8]);
    v17 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BCFB90);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v7 = [v16 initWithProviderDomainID:v12 itemIdentifier:v15 parentItemIdentifier:0 filename:v17 contentType:isa];

    (*(v2 + 8))(v6, v9);
  }

  return v7;
}

Swift::Void __swiftcall DOCNodeCollection.startObserving()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v7 = 136446722;
    v10 = (*((*v6 & *v2) + 0x138))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BDC240, v21);
    *(v7 + 22) = 2114;
    *(v7 + 24) = v2;
    *v8 = v2;
    v13 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v7, 0x20u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v14 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v19 = v14;
    [v19 doc_startObserving];

LABEL_11:
    (*((*v6 & *v2) + 0x1E0))();
    DOCNodeCollection.startIsGatheringObservation()();
    return;
  }

  v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
  {
    v16 = *((*v6 & *v14) + 0x270);
    v17 = v14;
    v16();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = *(*static DOCFileSystemCollectionManager.shared + 136);

    v18(v17);

    outlined consume of DOCNodeCollection.CollectionType(v14, v15, 1);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v20 = v15;
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCNodeCollection.stopObserving()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v7 = 136446722;
    v10 = (*((*v6 & *v2) + 0x138))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573624F706F7473, 0xEF2928676E697672, v22);
    *(v7 + 22) = 2114;
    *(v7 + 24) = v2;
    *v8 = v2;
    v13 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v7, 0x20u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v14 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v20 = v14;
    [v20 doc_stopObserving];

LABEL_11:
    (*((*v6 & *v2) + 0x1E8))();
    DOCNodeCollection.stopIsGatheringObservation()();
    return;
  }

  v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
  {
    v16 = one-time initialization token for shared;
    v17 = v14;
    if (v16 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = *(*static DOCFileSystemCollectionManager.shared + 144);

    v18(v17);

    (*((*v6 & *v17) + 0x280))(v19);
    outlined consume of DOCNodeCollection.CollectionType(v14, v15, 1);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v21 = v15;
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCNodeCollection.startObservationIfNeeded()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v5 = 136446722;
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v20);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BDC260, v20);
    *(v5 + 22) = 2114;
    *(v5 + 24) = v2;
    *v6 = v2;
    v11 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v5, 0x20u);
    outlined destroy of NSObject?(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v19 = v12;
    DOCNodeCollection.startIsGatheringObservation()();
    [v19 doc_startObservationIfNeeded];
    v16 = v19;

    goto LABEL_13;
  }

  v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) != 1)
  {
    swift_unknownObjectRetain();
    v17 = v13;
    swift_unknownObjectRelease();
    v16 = v13;

LABEL_13:

    return;
  }

  v14 = v12;
  DOCNodeCollection.startIsGatheringObservation()();
  v15 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v14) + 0x1D8))())
  {

    outlined consume of DOCNodeCollection.CollectionType(v12, v13, 1);
  }

  else
  {
    (*((*v15 & *v14) + 0x270))();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = *(*static DOCFileSystemCollectionManager.shared + 136);

    v18(v14);
    outlined consume of DOCNodeCollection.CollectionType(v12, v13, 1);
  }
}