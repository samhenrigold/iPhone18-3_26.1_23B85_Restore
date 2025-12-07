void DOCItemRowView.sortDescriptor.getter(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);
  outlined copy of DOCItemSortDescriptor?(v4, v5, v6);
}

double DOCItemRowView.sortDescriptor.setter(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v4 = v9;
  *(v4 + 16) = v2;
  LOBYTE(v2) = *(v4 + 24);
  *(v4 + 24) = v3;
  outlined copy of DOCItemSortDescriptor?(v5, v6, v7);
  outlined consume of DOCItemSortDescriptor?(v5, v6, v7);
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v11 = v2;
  DOCItemRowView.sortDescriptor.didset(v10);
  return outlined consume of DOCItemSortDescriptor?(v5, v6, v7);
}

void (*DOCItemRowView.sortDescriptor.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *v4 = *v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  outlined copy of DOCItemSortDescriptor?(v7, v8, v9);
  return DOCItemRowView.sortDescriptor.modify;
}

void DOCItemRowView.sortDescriptor.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[7] + (*a1)[8];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  v10 = *v4;
  v9 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  if (a2)
  {
    outlined copy of DOCItemSortDescriptor?(v5, v6, v7);
    outlined copy of DOCItemSortDescriptor?(v10, v9, v11);
    outlined consume of DOCItemSortDescriptor?(v10, v9, v11);
    v16 = v10;
    v17 = v9;
    v18 = v11;
    v19 = v12;
    DOCItemRowView.sortDescriptor.didset(&v16);
    outlined consume of DOCItemSortDescriptor?(v10, v9, v11);
    v13 = *v3;
    v14 = v3[1];
    v15 = v3[2];
  }

  else
  {
    outlined copy of DOCItemSortDescriptor?(v10, v9, v11);
    outlined consume of DOCItemSortDescriptor?(v10, v9, v11);
    v16 = v10;
    v17 = v9;
    v18 = v11;
    v19 = v12;
    DOCItemRowView.sortDescriptor.didset(&v16);
    v13 = v10;
    v14 = v9;
    v15 = v11;
  }

  outlined consume of DOCItemSortDescriptor?(v13, v14, v15);

  free(v3);
}

uint64_t DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton;
  swift_beginAccess();
  return *(v0 + v1);
}

double DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton;
  v5 = swift_beginAccess();
  v7 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v7 != v3 && (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) & 1) != 0)
  {
    v8 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x3C0))(v5);
    (*((*v8 & *v1) + 0x1C0))(&v14, v9);
    v10 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      v11 = v14;
      v12 = v15;
      v13 = v16;
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      (*((*v8 & *v1) + 0x1C8))(&v14);
      LOBYTE(v14) = v11 & 1;
      *(&v14 + 1) = v10;
      v15 = v12;
      v16 = v13;
      (*((*v8 & *v1) + 0x3E0))(&v14);
      return outlined consume of OutlineColumnData?(v11, v10, v12, *(&v12 + 1), v13);
    }
  }

  return result;
}

void (*DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.modify;
}

void DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      if (*(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) == 1)
      {
        v8 = MEMORY[0x277D85000];
        v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x3C0))();
        (*((*v8 & *v7) + 0x1C0))(&v15, v9);
        v10 = *(&v15 + 1);
        if (*(&v15 + 1))
        {
          v11 = v15;
          v12 = v16;
          v13 = v17;
          v14 = v2[3];
          v17 = 0;
          v15 = 0u;
          v16 = 0u;
          (*((*v8 & *v14) + 0x1C8))(&v15);
          LOBYTE(v15) = v11 & 1;
          *(&v15 + 1) = v10;
          v16 = v12;
          v17 = v13;
          (*((*v8 & *v14) + 0x3E0))(&v15);
          outlined consume of OutlineColumnData?(v11, v10, v12, *(&v12 + 1), v13);
        }
      }
    }
  }

  free(v2);
}

uint64_t DOCItemRowView.statusViewIsInitialized.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_statusViewIsInitialized;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemRowView.statusViewIsInitialized.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_statusViewIsInitialized;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DOCItemRowView.statusView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView);
  }

  else
  {
    type metadata accessor for DOCItemStatusView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setOpaque_];
    v5 = MEMORY[0x277D85000];
    v6 = v0;
    v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x348))(1);
    (*((*v5 & *v4) + 0xA8))(v7);
    v8 = *(v0 + v1);
    *(v6 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void DOCItemRowView.statusView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView) = a1;
}

void (*DOCItemRowView.statusView.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemRowView.statusView.getter();
  return DOCItemRowView.statusView.modify;
}

void DOCItemRowView.statusView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView) = v2;
}

uint64_t DOCItemRowView.icloudColumnStatusViewIsInitialized.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_icloudColumnStatusViewIsInitialized;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemRowView.icloudColumnStatusViewIsInitialized.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_icloudColumnStatusViewIsInitialized;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DOCItemRowView.statusViewForIcloudColumn.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn);
  }

  else
  {
    type metadata accessor for DOCItemStatusView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setOpaque_];
    v5 = MEMORY[0x277D85000];
    v6 = v0;
    v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x378))(1);
    (*((*v5 & *v4) + 0xA8))(v7);
    v8 = *(v0 + v1);
    *(v6 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void DOCItemRowView.statusViewForIcloudColumn.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn) = a1;
}

void (*DOCItemRowView.statusViewForIcloudColumn.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemRowView.statusViewForIcloudColumn.getter();
  return DOCItemRowView.statusViewForIcloudColumn.modify;
}

void DOCItemRowView.statusViewForIcloudColumn.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn) = v2;
}

char *DOCItemRowView.__allocating_init(isHeader:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return DOCItemRowView.init(isHeader:)(v2);
}

char *DOCItemRowView.init(isHeader:)(char a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerMaskView] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_containerView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnCache;
  v5 = MEMORY[0x277D84F90];
  *&v1[v4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say26DocumentManagerExecutables11ViewSizable_pGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnViews] = v5;
  v6 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnData];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
  *&v1[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLV_AC0I0OTt0g5Tf4g_n(v5);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnGenerationCount] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_visibleColumns] = v5;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_displaySortButtons] = 1;
  v8 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_customNameTitle];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState;
  type metadata accessor for OutlineExpansionState(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 20) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  ObservationRegistrar.init()();
  *&v1[v9] = v10;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState;
  type metadata accessor for OutlineProgressState(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_leadingThumbnailView] = 0;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView;
  type metadata accessor for DOCImageViewContainerView();
  *&v1[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_cellContent] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_menuButton] = 0;
  v14 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_scrollContext];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = *(MEMORY[0x277D768C8] + 16);
  *(v14 + 1) = *MEMORY[0x277D768C8];
  *(v14 + 2) = v15;
  v16 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerToggleAction];
  *v16 = 0;
  v16[1] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dividerViews] = v5;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_identationLevel] = 0;
  v17 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor];
  v17[24] = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *v17 = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton] = 0;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView;
  v19 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v19 setOpaque_];
  [v19 setSpacing_];
  [v19 setAlignmentOffset_];
  *&v1[v18] = v19;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView2;
  v21 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v21 setOpaque_];
  [v21 setSpacing_];
  [v21 setAlignmentOffset_];
  *&v1[v20] = v21;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_statusViewIsInitialized] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_icloudColumnStatusViewIsInitialized] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader] = a1;
  type metadata accessor for DateCache();
  v22 = swift_allocObject();
  *(v22 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_26DocumentManagerExecutables0D10CalculatorCTt0g5Tf4g_n(v5);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dateCache] = v22;
  v38.receiver = v1;
  v38.super_class = type metadata accessor for DOCItemRowView();
  v23 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249B9A480;
  v25 = type metadata accessor for UITraitUserInterfaceStyle();
  v26 = MEMORY[0x277D74BF0];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = v23;
  MEMORY[0x24C1FBD00](v24, sel_colorChanged);
  swift_unknownObjectRelease();

  v28 = *&v27[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = *(*v28 + 384);

  v30(partial apply for closure #1 in DOCItemRowView.init(isHeader:), v29);

  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_containerView;
  swift_beginAccess();
  [v27 addSubview_];
  v32 = v27;
  if (a1)
  {
    type metadata accessor for OutlineGradientView();
    v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v34 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerMaskView;
    swift_beginAccess();
    v35 = *&v27[v34];
    *&v27[v34] = v33;
    v32 = v33;

    v36 = *&v27[v31];
    [v36 setMaskView_];
  }

  return v27;
}

void closure #1 in DOCItemRowView.init(isHeader:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x148))();
    if (v4)
    {
      v5 = v4;
      if ((*((*v3 & *v4) + 0xE8))())
      {
        v7 = v6;
        ObjectType = swift_getObjectType();
        (*(v7 + 64))(v5, ObjectType, v7);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

id DOCItemRowView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

double DOCItemRowView.setDateCache(_:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dateCache) = a1;

  return result;
}

Swift::Void __swiftcall DOCItemRowView.clearColumnCache()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84F98];
}

uint64_t DOCItemRowView.updateWithoutReset(with:)(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *MEMORY[0x277D85000] & *v1;
  v5 = a1[3];
  v6 = a1[4];
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v5;
  v9[4] = v6;
  v7 = *(v4 + 456);

  return v7(v9);
}

uint64_t DOCItemRowView.leadingView()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1A8))();
  if (*(v1 + 16))
  {
    outlined init with copy of DOCSidebarItemIconProvider(v1 + 32, v6);

    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMd, &_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMR);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
  }

  return 0;
}

void DOCItemRowView.update(with:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v417 = v412 - v6;
  v421 = type metadata accessor for UIButton.Configuration();
  v420 = *(v421 - 8);
  MEMORY[0x28223BE20](v421, v7);
  v432 = v412 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = type metadata accessor for UIHoverAutomaticEffect();
  MEMORY[0x28223BE20](v416, v9);
  v415 = v412 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd, &_s5UIKit7UIShapeVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v428 = v412 - v13;
  v427 = type metadata accessor for UIHoverLiftEffect();
  MEMORY[0x28223BE20](v427, v14);
  v426 = v412 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = type metadata accessor for DragIndicator(0);
  MEMORY[0x28223BE20](v425, v16);
  v424 = v412 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMd, &_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMR);
  MEMORY[0x28223BE20](v435, v18);
  v434 = (v412 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20, v21);
  v430 = v412 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v436 = (v412 - v25);
  MEMORY[0x28223BE20](v26, v27);
  v431 = v412 - v28;
  v452 = type metadata accessor for Column(0);
  v450 = *(v452 - 8);
  MEMORY[0x28223BE20](v452, v29);
  v31 = v412 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v443 = (v412 - v34);
  MEMORY[0x28223BE20](v35, v36);
  v451 = v412 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v447 = (v412 - v40);
  MEMORY[0x28223BE20](v41, v42);
  v444 = (v412 - v43);
  MEMORY[0x28223BE20](v44, v45);
  v448 = (v412 - v46);
  MEMORY[0x28223BE20](v47, v48);
  v449 = v412 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v53 = (v412 - v52);
  MEMORY[0x28223BE20](v54, v55);
  v57 = v412 - v56;
  v60.n128_f64[0] = MEMORY[0x28223BE20](v58, v59);
  v62 = v412 - v61;
  *&v440 = *a1;
  v63 = a1[2];
  *(&v440 + 1) = a1[1];
  v442 = v63;
  v64 = a1[4];
  v445 = a1[3];
  v441 = v64;
  v65 = MEMORY[0x277D85000];
  v66 = *((*MEMORY[0x277D85000] & *v2) + 0x148);
  v419 = (*MEMORY[0x277D85000] & *v2) + 328;
  v418 = v66;
  v67 = v66(v60);
  if (v67)
  {
    v68 = v67;
    v69 = (*((*v65 & *v67) + 0x3A8))();

    if (v69)
    {
      return;
    }
  }

  v70 = *((*v65 & *v2) + 0x280);
  v71 = (*v65 & *v2) + 640;
  v72 = v70();
  if (v72)
  {
    v73 = v72;
    (*((*v65 & *v72) + 0xAA0))(&v456);

    v74 = v456;
  }

  else
  {
    v74 = 2;
  }

  v75 = v70();
  v446 = v53;
  v438 = v57;
  v437 = v62;
  v429 = v71;
  if (!v75)
  {
    goto LABEL_10;
  }

  v439 = v75;
  v76 = (*((*v65 & *v2) + 0x340))();
  if ((v76 & 1) == 0 && v74 == 2)
  {

LABEL_10:
    v414 = 0;
    goto LABEL_24;
  }

  v456 = xmmword_249BAFCA0;
  MEMORY[0x28223BE20](v76, v77);
  v410 = &v456;
  v78 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v409, v445);
  v414 = 0;
  if (v78)
  {
    v79 = (*((*v65 & *v2) + 0x388))();
  }

  else
  {
    v79 = 0;
  }

  v80 = *((*v65 & *v2) + 0x358);
  v81 = v80();
  LOBYTE(v456) = v74;
  (*((*v65 & *v81) + 0xD0))(&v456);

  if (v79)
  {
    LOBYTE(v456) = v74;
    v82 = *((*v65 & *v79) + 0xD0);
    v83 = v79;
    v82(&v456);
    v57 = v438;
    v65 = MEMORY[0x277D85000];
  }

  if (v74 == 1 && ((*((*v65 & *v439) + 0x800))() & 1) == 0)
  {
    v88 = v80();
    (*((*v65 & *v88) + 0x170))(1);

    if (v79)
    {
      v85 = *((*v65 & *v79) + 0x170);
      v86 = v79;
      v87 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    v84 = v80();
    (*((*v65 & *v84) + 0x170))(0);

    if (v79)
    {
      v85 = *((*v65 & *v79) + 0x170);
      v86 = v79;
      v87 = 0;
LABEL_22:
      v85(v87);

      goto LABEL_24;
    }
  }

LABEL_24:
  v422 = v70;
  v89 = v70();
  if (v89)
  {
    v90 = v89;
    (*((*v65 & *v89) + 0x640))();
  }

  else if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) != 1)
  {
    return;
  }

  (*((*v65 & *v2) + 0x1C0))(&v456, v89);
  v91 = *(&v456 + 1);
  if (*(&v456 + 1))
  {
    v92 = v456;
    v93 = v457;
    v94 = v458;
    v95 = v459;
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v445, v458))
    {
      v96 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt1g5(v442, v93);
      outlined consume of OutlineColumnData?(v92, v91, v93, v94, v95);
      if (v96)
      {
        v97 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
        swift_beginAccess();
        v57 = v438;
        if (*(*(v2 + v97) + 16))
        {
LABEL_326:
          v456 = v440;
          v457 = v442;
          v458 = v445;
          v459 = v441;
          v408 = *((*v65 & *v2) + 0x1C8);

          v408(&v456);
          [v2 setNeedsLayout];
          return;
        }

        goto LABEL_34;
      }
    }

    else
    {
      outlined consume of OutlineColumnData?(v92, v91, v93, v94, v95);
    }

    v57 = v438;
  }

LABEL_34:
  v456 = v440;
  v457 = v442;
  v458 = v445;
  v459 = v441;
  v98 = *((*v65 & *v2) + 0x1C8);

  v99 = v98(&v456);
  (*((*v65 & *v2) + 0x3C0))(v99);
  v100 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnCache;
  v101 = swift_beginAccess();
  if (*(*(v2 + v100) + 16))
  {
    goto LABEL_64;
  }

  v102 = v437;
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v101 = static Column.allCases;
  v103 = *(static Column.allCases + 16);
  if (!v103)
  {
    goto LABEL_64;
  }

  v104 = static Column.allCases + ((*(v450 + 80) + 32) & ~*(v450 + 80));
  v433 = *(v450 + 72);
  v423 = (v57 + 8);
  v413 = static Column.allCases;

  do
  {
    outlined init with copy of Column(v104, v102, type metadata accessor for Column);
    outlined init with copy of Column(v102, v57, type metadata accessor for Column);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v439 = v103;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        outlined destroy of Column(v57, type metadata accessor for Column);
        v106 = 0xE600000000000000;
        v107 = 0x726564616568;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        outlined destroy of Column(v57, type metadata accessor for Column);
        v106 = 0xE400000000000000;
        v107 = 1936154996;
      }

      else
      {
        outlined destroy of Column(v57, type metadata accessor for Column);
        v107 = 0x6956737574617473;
        v106 = 0xEA00000000007765;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined destroy of Column(v57, type metadata accessor for Column);
        v106 = 0xE600000000000000;
        v107 = 0x676E69727473;
      }

      else
      {

        outlined consume of LeadingBadge?(*(v57 + 1), *(v57 + 2), *(v57 + 3), *(v57 + 4), *(v57 + 5), *(v57 + 6));
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
        v111 = v110[16];

        outlined destroy of Column(&v57[v111], type metadata accessor for LeadingTitle);
        v107 = 0x56676E696461656CLL;
        v106 = 0xEB00000000776569;
      }
    }

    else
    {
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);

      outlined consume of ColumnType(*&v57[*(v108 + 64)], *&v57[*(v108 + 64) + 8]);
      v109 = type metadata accessor for Date();
      (*(*(v109 - 8) + 8))(v57, v109);
      v106 = 0xE400000000000000;
      v107 = 1702125924;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v455 = *(v2 + v100);
    v113 = v455;
    *(v2 + v100) = 0x8000000000000000;
    v115 = specialized __RawDictionaryStorage.find<A>(_:)(v107, v106);
    v116 = *(v113 + 16);
    v117 = (v114 & 1) == 0;
    v118 = v116 + v117;
    if (__OFADD__(v116, v117))
    {
      goto LABEL_242;
    }

    v119 = v114;
    if (*(v113 + 24) >= v118)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v122 = v455;
        if (v114)
        {
          goto LABEL_39;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v122 = v455;
        if (v119)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v118, isUniquelyReferenced_nonNull_native);
      v120 = specialized __RawDictionaryStorage.find<A>(_:)(v107, v106);
      if ((v119 & 1) != (v121 & 1))
      {
        goto LABEL_338;
      }

      v115 = v120;
      v122 = v455;
      if (v119)
      {
LABEL_39:
        *(v122[7] + 8 * v115) = MEMORY[0x277D84F90];

        goto LABEL_40;
      }
    }

    v122[(v115 >> 6) + 8] |= 1 << v115;
    v123 = (v122[6] + 16 * v115);
    *v123 = v107;
    v123[1] = v106;
    *(v122[7] + 8 * v115) = MEMORY[0x277D84F90];
    v124 = v122[2];
    v125 = __OFADD__(v124, 1);
    v126 = v124 + 1;
    if (v125)
    {
      goto LABEL_244;
    }

    v122[2] = v126;
LABEL_40:
    *(v2 + v100) = v122;
    swift_endAccess();
    v102 = v437;
    outlined destroy of Column(v437, type metadata accessor for Column);
    v104 += v433;
    v103 = v439 - 1;
    v57 = v438;
  }

  while (v439 != 1);

LABEL_64:
  v127 = (*MEMORY[0x277D85000] & *v2) + 424;
  v413 = *((*MEMORY[0x277D85000] & *v2) + 0x1A8);
  v412[1] = v127;
  v128 = v413(v101);
  v129 = *(v128 + 16);
  if (v129)
  {
    *&v455 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129, 0);
    v130 = v455;
    v131 = v128 + 32;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v131, &v456);
      v132 = v458;
      v133 = v459;
      __swift_project_boxed_opaque_existential_1(&v456, v458);
      v134 = (v133[1])(v132, v133);
      [v134 setHidden_];

      __swift_destroy_boxed_opaque_existential_0(&v456);
      *&v455 = v130;
      v136 = *(v130 + 16);
      v135 = *(v130 + 24);
      v137 = v136 + 1;
      if (v136 >= v135 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
        v130 = v455;
      }

      *(v130 + 16) = v137;
      v131 += 40;
      --v129;
    }

    while (v129);
  }

  v139 = (v422)(v138);
  v140 = &_ss7KeyPathCy26DocumentManagerExecutables18CreateFolderIntentV10AppIntents0H9ParameterCySSSgGGMd;
  if (v139)
  {
    v141 = v139;
    v142 = (*((*MEMORY[0x277D85000] & *v139) + 0x3D0))();

    if (v142)
    {
      if ([v142 isFullyFormed] && (objc_msgSend(v142, sel_isFolder) & 1) != 0 && (v143 = v418()) != 0)
      {
        v144 = v143;
        type metadata accessor for DOCItemCollectionOutlineCell();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_235;
        }

        DOCItemCollectionOutlineCell.updateWantsDisclosureButton()();

        v139 = swift_unknownObjectRelease();
        v140 = &_ss7KeyPathCy26DocumentManagerExecutables18CreateFolderIntentV10AppIntents0H9ParameterCySSSgGGMd;
      }

      else
      {
        v139 = swift_unknownObjectRelease();
      }
    }
  }

  while (2)
  {
    v145 = *(v2 + v140[34]);
    if (v145 == 1 && ((*((*MEMORY[0x277D85000] & *v2) + 0x220))(v139) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMR);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_249B9A480;
      v146 = v445;
      if (!*(v445 + 2))
      {
        goto LABEL_334;
      }

      v147 = v148;
      v149 = *(v445 + 4);
      v150 = *(v445 + 5);
      v147[4] = v149;
      v147[5] = v150;
      outlined copy of ColumnType(v149, v150);
    }

    else
    {
      v146 = v445;

      v147 = v146;
    }

    LODWORD(v419) = v145;
    v151 = v147[2];
    v152 = MEMORY[0x277D84F90];
    if (!v151)
    {
LABEL_91:

      v158 = MEMORY[0x277D85000];
      v159 = (*((*MEMORY[0x277D85000] & *v2) + 0x210))(v152);
      v160 = *((*v158 & *v2) + 0x208);
      v423 = (*v158 & *v2) + 520;
      v422 = v160;
      v161 = (v160)(v159);
      v449 = *(v161 + 16);
      if (!v449)
      {
LABEL_158:
        v106 = MEMORY[0x277D84F98];
LABEL_159:

        if (one-time initialization token for allCases != -1)
        {
          goto LABEL_245;
        }

        goto LABEL_160;
      }

      v162 = 0;
      v439 = (v161 + ((*(v450 + 80) + 32) & ~*(v450 + 80)));
      v437 = (v448 + 1);
      v429 = v444 + 1;
      v106 = MEMORY[0x277D84F98];
      v433 = v447 + 1;
      v163 = v446;
      v438 = v161;
      while (1)
      {
        if (v162 >= *(v161 + 16))
        {
          goto LABEL_237;
        }

        outlined init with copy of Column(&v439[*(v450 + 72) * v162], v163, type metadata accessor for Column);
        outlined init with copy of Column(v163, v448, type metadata accessor for Column);
        v164 = swift_getEnumCaseMultiPayload();
        if (v164 > 2)
        {
          if (v164 == 3)
          {
            outlined destroy of Column(v448, type metadata accessor for Column);
            v165 = 0xE600000000000000;
            v166 = 0x726564616568;
            if (!*(v106 + 16))
            {
              goto LABEL_111;
            }
          }

          else if (v164 == 4)
          {
            outlined destroy of Column(v448, type metadata accessor for Column);
            v165 = 0xE400000000000000;
            v166 = 1936154996;
            if (!*(v106 + 16))
            {
              goto LABEL_111;
            }
          }

          else
          {
            outlined destroy of Column(v448, type metadata accessor for Column);
            v166 = 0x6956737574617473;
            v165 = 0xEA00000000007765;
            if (!*(v106 + 16))
            {
LABEL_111:

LABEL_112:
              outlined init with copy of Column(v163, v444, type metadata accessor for Column);
              v176 = swift_getEnumCaseMultiPayload();
              v177 = v106;
              if (v176 > 2)
              {
                if (v176 == 3)
                {
                  outlined destroy of Column(v444, type metadata accessor for Column);
                  v178 = 0xE600000000000000;
                  v106 = 0x726564616568;
                }

                else if (v176 == 4)
                {
                  outlined destroy of Column(v444, type metadata accessor for Column);
                  v178 = 0xE400000000000000;
                  v106 = 1936154996;
                }

                else
                {
                  outlined destroy of Column(v444, type metadata accessor for Column);
                  v106 = 0x6956737574617473;
                  v178 = 0xEA00000000007765;
                }
              }

              else if (v176)
              {
                if (v176 == 1)
                {
                  outlined destroy of Column(v444, type metadata accessor for Column);
                  v178 = 0xE600000000000000;
                  v106 = 0x676E69727473;
                }

                else
                {
                  v183 = v444;

                  outlined consume of LeadingBadge?(v183[1], v183[2], v183[3], v183[4], v183[5], v183[6]);
                  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
                  v185 = v184[16];

                  outlined destroy of Column(v183 + v185, type metadata accessor for LeadingTitle);
                  v106 = 0x56676E696461656CLL;
                  v178 = 0xEB00000000776569;
                }
              }

              else
              {
                v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);

                v180 = *(v179 + 64);
                v181 = v444;
                outlined consume of ColumnType(*(v444 + v180), *(v444 + v180 + 8));
                v182 = type metadata accessor for Date();
                (*(*(v182 - 8) + 8))(v181, v182);
                v178 = 0xE400000000000000;
                v106 = 1702125924;
              }

              v186 = v177;
              v187 = swift_isUniquelyReferenced_nonNull_native();
              *&v456 = v186;
              v189 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v178);
              v190 = *(v186 + 16);
              v191 = (v188 & 1) == 0;
              v192 = v190 + v191;
              if (__OFADD__(v190, v191))
              {
                goto LABEL_240;
              }

              v193 = v188;
              if (*(v186 + 24) >= v192)
              {
                if (v187)
                {
                  if ((v188 & 1) == 0)
                  {
                    goto LABEL_132;
                  }
                }

                else
                {
                  specialized _NativeDictionary.copy()();
                  if ((v193 & 1) == 0)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v192, v187);
                v194 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v178);
                if ((v193 & 1) != (v195 & 1))
                {
                  goto LABEL_338;
                }

                v189 = v194;
                if ((v193 & 1) == 0)
                {
LABEL_132:
                  v196 = v456;
                  *(v456 + 8 * (v189 >> 6) + 64) |= 1 << v189;
                  v197 = (v196[6] + 16 * v189);
                  *v197 = v106;
                  v197[1] = v178;
                  *(v196[7] + 8 * v189) = 0;
                  v198 = v196[2];
                  v125 = __OFADD__(v198, 1);
                  v199 = v198 + 1;
                  if (v125)
                  {
                    goto LABEL_243;
                  }

                  v106 = v196;
                  v196[2] = v199;
                  goto LABEL_134;
                }
              }

              v106 = v456;
              *(*(v456 + 56) + 8 * v189) = 0;
LABEL_134:
              v163 = v446;
              goto LABEL_135;
            }
          }
        }

        else if (v164)
        {
          if (v164 == 1)
          {
            outlined destroy of Column(v448, type metadata accessor for Column);
            v165 = 0xE600000000000000;
            v166 = 0x676E69727473;
            if (!*(v106 + 16))
            {
              goto LABEL_111;
            }
          }

          else
          {
            v171 = v448;

            outlined consume of LeadingBadge?(v171[1], v171[2], v171[3], v171[4], v171[5], v171[6]);
            v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
            v173 = v172[16];

            outlined destroy of Column(v171 + v173, type metadata accessor for LeadingTitle);
            v166 = 0x56676E696461656CLL;
            v165 = 0xEB00000000776569;
            if (!*(v106 + 16))
            {
              goto LABEL_111;
            }
          }
        }

        else
        {
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);

          v168 = *(v167 + 64);
          v169 = v448;
          outlined consume of ColumnType(*(v448 + v168), *(v448 + v168 + 8));
          v170 = type metadata accessor for Date();
          (*(*(v170 - 8) + 8))(v169, v170);
          v165 = 0xE400000000000000;
          v166 = 1702125924;
          if (!*(v106 + 16))
          {
            goto LABEL_111;
          }
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v166, v165);
        v175 = v174;

        if ((v175 & 1) == 0)
        {
          goto LABEL_112;
        }

LABEL_135:
        outlined init with copy of Column(v163, v447, type metadata accessor for Column);
        v200 = swift_getEnumCaseMultiPayload();
        if (v200 > 2)
        {
          if (v200 == 3)
          {
            outlined destroy of Column(v447, type metadata accessor for Column);
            v201 = 0xE600000000000000;
            v202 = 0x726564616568;
          }

          else if (v200 == 4)
          {
            outlined destroy of Column(v447, type metadata accessor for Column);
            v201 = 0xE400000000000000;
            v202 = 1936154996;
          }

          else
          {
            outlined destroy of Column(v447, type metadata accessor for Column);
            v202 = 0x6956737574617473;
            v201 = 0xEA00000000007765;
          }
        }

        else if (v200)
        {
          if (v200 == 1)
          {
            outlined destroy of Column(v447, type metadata accessor for Column);
            v201 = 0xE600000000000000;
            v202 = 0x676E69727473;
          }

          else
          {
            v207 = v447;

            outlined consume of LeadingBadge?(v207[1], v207[2], v207[3], v207[4], v207[5], v207[6]);
            v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
            v209 = v208[16];

            outlined destroy of Column(v207 + v209, type metadata accessor for LeadingTitle);
            v202 = 0x56676E696461656CLL;
            v201 = 0xEB00000000776569;
          }
        }

        else
        {
          v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);

          v204 = *(v203 + 64);
          v205 = v447;
          outlined consume of ColumnType(*(v447 + v204), *(v447 + v204 + 8));
          v206 = type metadata accessor for Date();
          (*(*(v206 - 8) + 8))(v205, v206);
          v201 = 0xE400000000000000;
          v202 = 1702125924;
        }

        v210 = swift_isUniquelyReferenced_nonNull_native();
        *&v456 = v106;
        v212 = specialized __RawDictionaryStorage.find<A>(_:)(v202, v201);
        v213 = v106;
        v214 = *(v106 + 16);
        v215 = (v211 & 1) == 0;
        v216 = v214 + v215;
        if (__OFADD__(v214, v215))
        {
          goto LABEL_238;
        }

        v217 = v211;
        if (*(v213 + 24) >= v216)
        {
          v163 = v446;
          if (v210)
          {
            if ((v211 & 1) == 0)
            {
              goto LABEL_157;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v217 & 1) == 0)
            {
              goto LABEL_157;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v216, v210);
          v218 = specialized __RawDictionaryStorage.find<A>(_:)(v202, v201);
          if ((v217 & 1) != (v219 & 1))
          {
            goto LABEL_338;
          }

          v212 = v218;
          v163 = v446;
          if ((v217 & 1) == 0)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }
        }

        v106 = v456;
        v220 = *(*(v456 + 56) + 8 * v212);

        if (__OFADD__(v220, 1))
        {
          goto LABEL_239;
        }

        ++v162;
        *(*(v106 + 56) + 8 * v212) = v220 + 1;
        outlined destroy of Column(v163, type metadata accessor for Column);
        v161 = v438;
        if (v449 == v162)
        {
          goto LABEL_159;
        }
      }
    }

    v106 = 0;
    v439 = (v147 + 4);
    while (v106 < v147[2])
    {
      v153 = v147;
      v455 = *&v439[16 * v106];
      LOBYTE(v456) = v440;
      *(&v456 + 1) = *(&v440 + 1);
      v457 = v442;
      v458 = v146;
      v459 = v441;
      v154 = *(&v455 + 1);
      v155 = v455;
      outlined copy of ColumnType(v455, *(&v455 + 1));
      DOCItemRowView.createColumn(for:with:)(&v455, &v456, v449);
      outlined consume of ColumnType(v155, v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v152[2] + 1, 1, v152);
      }

      v157 = v152[2];
      v156 = v152[3];
      if (v157 >= v156 >> 1)
      {
        v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1, v152);
      }

      ++v106;
      v152[2] = v157 + 1;
      outlined init with take of Column(v449, v152 + ((*(v450 + 80) + 32) & ~*(v450 + 80)) + *(v450 + 72) * v157);
      v146 = v445;
      v147 = v153;
      if (v151 == v106)
      {
        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      swift_once();
LABEL_160:
      swift_beginAccess();
      v221 = static Column.allCases;
      v222 = *(static Column.allCases + 16);
      v448 = v106;
      if (!v222)
      {
        goto LABEL_211;
      }

      v446 = (static Column.allCases + ((*(v450 + 80) + 32) & ~*(v450 + 80)));
      v444 = v443 + 1;
      v449 = v31 + 8;

      v144 = 0;
      v439 = v221;
      v438 = v222;
LABEL_164:
      if (v144 >= *(v221 + 2))
      {
        continue;
      }

      break;
    }

    v223 = v451;
    outlined init with copy of Column(v446 + *(v450 + 72) * v144, v451, type metadata accessor for Column);
    outlined init with copy of Column(v223, v443, type metadata accessor for Column);
    v224 = swift_getEnumCaseMultiPayload();
    v447 = v144;
    if (v224 > 2)
    {
      if (v224 == 3)
      {
        outlined destroy of Column(v443, type metadata accessor for Column);
        v225 = 0xE600000000000000;
        v226 = 0x726564616568;
      }

      else if (v224 == 4)
      {
        outlined destroy of Column(v443, type metadata accessor for Column);
        v225 = 0xE400000000000000;
        v226 = 1936154996;
      }

      else
      {
        outlined destroy of Column(v443, type metadata accessor for Column);
        v226 = 0x6956737574617473;
        v225 = 0xEA00000000007765;
      }
    }

    else if (v224)
    {
      if (v224 == 1)
      {
        outlined destroy of Column(v443, type metadata accessor for Column);
        v225 = 0xE600000000000000;
        v226 = 0x676E69727473;
      }

      else
      {
        v144 = v443;

        outlined consume of LeadingBadge?(*(v144 + 8), *(v144 + 16), *(v144 + 24), *(v144 + 32), *(v144 + 40), *(v144 + 48));
        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
        v232 = v231[16];

        outlined destroy of Column(v144 + v232, type metadata accessor for LeadingTitle);
        v226 = 0x56676E696461656CLL;
        v225 = 0xEB00000000776569;
      }
    }

    else
    {
      v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);

      v228 = *(v227 + 64);
      v229 = v443;
      outlined consume of ColumnType(*(v443 + v228), *(v443 + v228 + 8));
      v230 = type metadata accessor for Date();
      (*(*(v230 - 8) + 8))(v229, v230);
      v225 = 0xE400000000000000;
      v226 = 1702125924;
    }

    if (v448[2])
    {
      v233 = specialized __RawDictionaryStorage.find<A>(_:)(v226, v225);
      if (v234)
      {
        v235 = *(v2 + v100);
        if (!*(v235 + 16))
        {
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          swift_unknownObjectRelease();

          v140 = &_ss7KeyPathCy26DocumentManagerExecutables18CreateFolderIntentV10AppIntents0H9ParameterCySSSgGGMd;
          continue;
        }

        v236 = *(v448[7] + 8 * v233);
        while (2)
        {

          v237 = specialized __RawDictionaryStorage.find<A>(_:)(v226, v225);
          if ((v238 & 1) == 0)
          {
            goto LABEL_232;
          }

          v239 = *(*(v235 + 56) + 8 * v237);

          v240 = *(v239 + 16);

          if (v240 >= v236)
          {
            outlined destroy of Column(v451, type metadata accessor for Column);

            v221 = v439;
            v222 = v438;
            goto LABEL_163;
          }

          outlined init with copy of Column(v451, v31, type metadata accessor for Column);
          v241 = swift_getEnumCaseMultiPayload();
          if (v241 > 2)
          {
            if (v241 == 3)
            {
              outlined destroy of Column(v31, type metadata accessor for Column);
              v242 = &_s26DocumentManagerExecutables16OutlineContainerCyAA6HeaderVGMd;
              v243 = &_s26DocumentManagerExecutables16OutlineContainerCyAA6HeaderVGMR;
            }

            else if (v241 == 4)
            {
              outlined destroy of Column(v31, type metadata accessor for Column);
              v242 = &_s26DocumentManagerExecutables16OutlineContainerCyAA7TagViewVGMd;
              v243 = &_s26DocumentManagerExecutables16OutlineContainerCyAA7TagViewVGMR;
            }

            else
            {
              outlined destroy of Column(v31, type metadata accessor for Column);
              v242 = &_s26DocumentManagerExecutables16OutlineContainerCyAA10StatusViewVGMd;
              v243 = &_s26DocumentManagerExecutables16OutlineContainerCyAA10StatusViewVGMR;
            }

LABEL_193:
            v252 = __swift_instantiateConcreteTypeFromMangledNameV2(v242, v243);
            v253 = [objc_allocWithZone(v252) init];
            v458 = v252;
            v459 = &protocol witness table for OutlineContainer<A>;
            *&v456 = v253;
          }

          else if (v241)
          {
            if (v241 == 1)
            {
              outlined destroy of Column(v31, type metadata accessor for Column);
              v242 = &_s26DocumentManagerExecutables16OutlineContainerCyAA0D10ColumnViewVGMd;
              v243 = &_s26DocumentManagerExecutables16OutlineContainerCyAA0D10ColumnViewVGMR;
              goto LABEL_193;
            }

            outlined consume of LeadingBadge?(*(v31 + 1), *(v31 + 2), *(v31 + 3), *(v31 + 4), *(v31 + 5), *(v31 + 6));
            v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
            v249 = v248[16];

            v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16OutlineContainerCyAA11LeadingViewVGMd, &_s26DocumentManagerExecutables16OutlineContainerCyAA11LeadingViewVGMR);
            v251 = [objc_allocWithZone(v250) init];
            v458 = v250;
            v459 = &protocol witness table for OutlineContainer<A>;
            *&v456 = v251;
            outlined destroy of Column(&v31[v249], type metadata accessor for LeadingTitle);
          }

          else
          {
            v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);

            outlined consume of ColumnType(*&v31[*(v244 + 64)], *&v31[*(v244 + 64) + 8]);
            v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16OutlineContainerCyAA8DateViewVGMd, &_s26DocumentManagerExecutables16OutlineContainerCyAA8DateViewVGMR);
            v246 = [objc_allocWithZone(v245) init];
            v458 = v245;
            v459 = &protocol witness table for OutlineContainer<A>;
            *&v456 = v246;
            v247 = type metadata accessor for Date();
            (*(*(v247 - 8) + 8))(v31, v247);
          }

          swift_beginAccess();
          v254 = swift_isUniquelyReferenced_nonNull_native();
          v454 = *(v2 + v100);
          v255 = v454;
          *(v2 + v100) = 0x8000000000000000;
          v144 = specialized __RawDictionaryStorage.find<A>(_:)(v226, v225);
          v257 = *(v255 + 16);
          v258 = (v256 & 1) == 0;
          v259 = v257 + v258;
          if (__OFADD__(v257, v258))
          {
            goto LABEL_233;
          }

          v260 = v256;
          if (*(v255 + 24) >= v259)
          {
            if (v254)
            {
              if ((v256 & 1) == 0)
              {
                goto LABEL_234;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              if ((v260 & 1) == 0)
              {
                goto LABEL_234;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v259, v254);
            v261 = specialized __RawDictionaryStorage.find<A>(_:)(v226, v225);
            if ((v260 & 1) != (v262 & 1))
            {
              goto LABEL_338;
            }

            v144 = v261;
            if ((v260 & 1) == 0)
            {
              goto LABEL_234;
            }
          }

          v263 = *(*(v454 + 56) + 8 * v144);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v263 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v263[2] + 1, 1, v263);
          }

          v265 = v263[2];
          v264 = v263[3];
          if (v265 >= v264 >> 1)
          {
            v263 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v264 > 1), v265 + 1, 1, v263);
          }

          v263[2] = v265 + 1;
          outlined init with take of DOCGoToFolderCandidate(&v456, &v263[5 * v265 + 4]);
          v266 = v454;
          *(*(v454 + 56) + 8 * v144) = v263;
          *(v2 + v100) = v266;
          swift_endAccess();
          v235 = *(v2 + v100);
          if (!*(v235 + 16))
          {
            goto LABEL_231;
          }

          continue;
        }
      }
    }

    break;
  }

  outlined destroy of Column(v451, type metadata accessor for Column);
LABEL_163:
  v144 = v447 + 1;
  v106 = v448;
  if ((v447 + 1) != v222)
  {
    goto LABEL_164;
  }

LABEL_211:
  v453 = *(v2 + v100);

  v268 = (v422)(v267);
  v269 = v414;
  v270 = specialized Sequence.compactMap<A>(_:)(v268, &v453);
  v452 = v269;

  v65 = MEMORY[0x277D85000];
  v271 = (*((*MEMORY[0x277D85000] & *v2) + 0x1B0))(v270);
  v272 = v413(v271);
  v273 = *(v272 + 16);
  if (v273)
  {
    v454 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v273, 0);
    v274 = v454;
    v275 = *((*v65 & *v2) + 0x178);
    v451 = v272;
    v276 = v272 + 32;
    do
    {
      v277 = outlined init with copy of DOCSidebarItemIconProvider(v276, &v456);
      v278 = v275(v277);
      v280 = v458;
      v279 = v459;
      __swift_project_boxed_opaque_existential_1(&v456, v458);
      v281 = (v279[1])(v280, v279);
      [v278 addSubview_];

      v282 = v458;
      v283 = v459;
      __swift_project_boxed_opaque_existential_1(&v456, v458);
      v284 = (v283[1])(v282, v283);
      [v284 setHidden_];

      __swift_destroy_boxed_opaque_existential_0(&v456);
      v454 = v274;
      v286 = *(v274 + 16);
      v285 = *(v274 + 24);
      v287 = v286 + 1;
      if (v286 >= v285 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v285 > 1), v286 + 1, 1);
        v274 = v454;
      }

      *(v274 + 16) = v287;
      v276 += 40;
      --v273;
    }

    while (v273);

    v65 = MEMORY[0x277D85000];
  }

  else
  {
  }

  if ((v419 & 1) == 0)
  {

LABEL_325:

    goto LABEL_326;
  }

  LOBYTE(v456) = v440;
  *(&v456 + 1) = *(&v440 + 1);
  v457 = v442;
  v458 = v445;
  v459 = v441;
  OutlineColumnData.selectableColumnTypes.getter();
  v451 = v288;
  v289 = (*v65 & *v2) + 736;
  v290 = *((*v65 & *v2) + 0x2E0);
  v291 = v290();
  v292 = v291;
  if (v291 >> 62)
  {
    v293 = __CocoaSet.count.getter();
    if (!v293)
    {
      goto LABEL_247;
    }

LABEL_221:
    *&v456 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v293 & ~(v293 >> 63), 0);
    if (v293 < 0)
    {
      goto LABEL_335;
    }

    v294 = 0;
    v295 = v456;
    do
    {
      if ((v292 & 0xC000000000000001) != 0)
      {
        v296 = MEMORY[0x24C1FC540](v294, v292);
      }

      else
      {
        v296 = *(v292 + 8 * v294 + 32);
      }

      v297 = v296;
      [v296 setHidden_];

      *&v456 = v295;
      v299 = *(v295 + 16);
      v298 = *(v295 + 24);
      v300 = v299 + 1;
      if (v299 >= v298 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v298 > 1), v299 + 1, 1);
        v295 = v456;
      }

      ++v294;
      *(v295 + 16) = v300;
    }

    while (v293 != v294);
  }

  else
  {
    v293 = *((v291 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v293)
    {
      goto LABEL_221;
    }

LABEL_247:
  }

  v302 = ((*MEMORY[0x277D85000] & *v2) + 544);
  v443 = *((*MEMORY[0x277D85000] & *v2) + 0x220);
  v439 = v302;
  v303 = (v443)(v301);
  if (v303)
  {
    v304 = v422();
    v305 = v304[2];
    v449 = v289;
    if (v305)
    {
      *&v456 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v306 = 0;
      v307 = v304 + ((*(v450 + 80) + 32) & ~*(v450 + 80));
      v447 = v304;
      v308 = v304[2];
      do
      {
        if (v308 == v306)
        {
          goto LABEL_329;
        }

        v317 = v435;
        v318 = *(v435 + 48);
        v319 = v431;
        outlined init with copy of Column(&v307[*(v450 + 72) * v306], &v431[v318], type metadata accessor for Column);
        v320 = v436;
        *v436 = v306;
        v321 = outlined init with take of Column(&v319[v318], v320 + *(v317 + 48));
        v322 = (v290)(v321);
        if (v322 >> 62)
        {
          v323 = __CocoaSet.count.getter();
        }

        else
        {
          v323 = *((v322 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v306 >= v323)
        {
          type metadata accessor for Dragging(0);
          v309 = swift_allocObject();
          *(v309 + 16) = 0;
          ObservationRegistrar.init()();
          KeyPath = swift_getKeyPath();
          v311 = v424;
          *&v424[*(v425 + 24)] = KeyPath;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
          swift_storeEnumTagMultiPayload();
          *v311 = v306;
          v311[1] = v309;
          v312 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables13DragIndicatorVGMd, &_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables13DragIndicatorVGMR));
          v313 = _UIHostingView.init(rootView:)();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle, 0x277D755A8);
          v314 = v313;
          static UIHoverEffect<>.lift.getter();
          v315 = type metadata accessor for UIShape();
          (*(*(v315 - 8) + 56))(v428, 1, 1, v315);
          v316 = UIHoverStyle.init<A>(effect:shape:)();
          [v314 setHoverStyle_];
        }

        else
        {
          v325 = (v290)(v324);
          if ((v325 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FC540](v306, v325);
          }

          else
          {
            if (v306 >= *((v325 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_333;
            }

            v326 = *(v325 + 8 * v306 + 32);
          }
        }

        ++v306;
        outlined destroy of CharacterSet?(v436, &_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMd, &_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMR);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v305 != v306);

      v327 = v456;
    }

    else
    {

      v327 = MEMORY[0x277D84F90];
    }

    v328 = MEMORY[0x277D85000];
    v329 = (*((*MEMORY[0x277D85000] & *v2) + 0x2E8))(v327);
    v330 = (v422)(v329);
    v331 = *(v330 + 16);
    if (v331)
    {
      *&v456 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v331, 0);
      v332 = v456;
      v333 = *(v330 + 16);
      v446 = ((*v328 & *v2) + 376);
      v444 = *v446;
      v334 = *(v450 + 80);
      v438 = v330;
      v447 = (v330 + ((v334 + 32) & ~v334));
      v335 = 4;
      do
      {
        if (!v333)
        {
          goto LABEL_330;
        }

        v336 = v335 - 4;
        v337 = v435;
        v338 = *(v435 + 48);
        v339 = v430;
        outlined init with copy of Column(v447 + *(v450 + 72) * (v335 - 4), &v430[v338], type metadata accessor for Column);
        v340 = v434;
        *v434 = v335 - 4;
        v341 = outlined init with take of Column(&v339[v338], v340 + *(v337 + 48));
        v342 = (v290)(v341);
        if ((v342 & 0xC000000000000001) != 0)
        {
          v343 = MEMORY[0x24C1FC540](v335 - 4, v342);
        }

        else
        {
          if (v336 >= *((v342 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_331;
          }

          v343 = *(v342 + 8 * v335);
        }

        v344 = v343;

        [v344 setHidden_];

        v345 = (v444)();
        v346 = v290();
        if ((v346 & 0xC000000000000001) != 0)
        {
          v347 = MEMORY[0x24C1FC540](v335 - 4, v346);
        }

        else
        {
          if (v336 >= *((v346 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_332;
          }

          v347 = *(v346 + 8 * v335);
        }

        v348 = v347;

        [v345 addSubview_];

        outlined destroy of CharacterSet?(v434, &_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMd, &_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMR);
        *&v456 = v332;
        v350 = *(v332 + 16);
        v349 = *(v332 + 24);
        v351 = v350 + 1;
        if (v350 >= v349 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v349 > 1), v350 + 1, 1);
          v332 = v456;
        }

        *(v332 + 16) = v351;
        --v333;
        ++v335;
        --v331;
      }

      while (v331);
    }

    else
    {
    }
  }

  v65 = MEMORY[0x277D85000];
  v352 = *((*MEMORY[0x277D85000] & *v2) + 0x298);
  v353 = (*MEMORY[0x277D85000] & *v2) + 664;
  v354 = (v352)(v303);
  if (v354)
  {
  }

  else
  {
    v355 = (*((*v65 & *v2) + 0x2A0))([objc_allocWithZone(MEMORY[0x277D75220]) init]);
    v356 = (v352)(v355);
    if (v356)
    {
      v357 = v356;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle, 0x277D755A8);
      static UIHoverEffect<>.automatic.getter();
      v358 = type metadata accessor for UIShape();
      (*(*(v358 - 8) + 56))(v428, 1, 1, v358);
      v359 = UIHoverStyle.init<A>(effect:shape:)();
      [v357 setHoverStyle_];
    }

    static UIButton.Configuration.plain()();
    v360 = MEMORY[0x24C1FAD20](0x73697370696C6C65, 0xE800000000000000);
    v361 = [objc_opt_self() systemImageNamed_];

    v362 = v432;
    UIButton.Configuration.image.setter();
    v363 = [objc_opt_self() tintColor];
    v364 = UIButton.Configuration.baseForegroundColor.setter();
    v365 = (v352)(v364);
    if (v365)
    {
      v366 = v365;
      v367 = v420;
      v368 = v417;
      v369 = v362;
      v370 = v421;
      (*(v420 + 16))(v417, v369, v421);
      v371 = v370;
      v362 = v432;
      (*(v367 + 56))(v368, 0, 1, v371);
      UIButton.configuration.setter();
    }

    v372 = v352();
    if (v372)
    {
      v373 = v372;
      [v372 setShowsMenuAsPrimaryAction_];
    }

    v374 = v352();
    if (v374)
    {
      v375 = v374;
      v376 = objc_opt_self();
      v377 = MEMORY[0x24C1FAD20](1701998445, 0xE400000000000000);
      v378 = [v376 sortByHeaderButtonForSortIdentifier:v377 ascending:0 active:0];

      if (!v378)
      {
        v379 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v378 = MEMORY[0x24C1FAD20](v379);
      }

      [v375 setAccessibilityIdentifier_];

      v362 = v432;
    }

    (*(v420 + 8))(v362, v421);
  }

  v380 = MEMORY[0x277D84F90];
  v454 = MEMORY[0x277D84F90];
  v381 = v451;
  v450 = *(v451 + 16);
  if (!v450)
  {
LABEL_320:

    v398 = (v352)(v397);
    if (v398)
    {
      v399 = v398;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);

      v400._countAndFlagsBits = 0;
      v400._object = 0xE000000000000000;
      v460.value.super.isa = 0;
      v460.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v401, v400, 0, v460, 0, 0xFFFFFFFFFFFFFFFFLL, v380, v411);
      v403 = v402;
      [v399 setMenu_];
    }

    v404 = v352();
    if (!v404)
    {
      goto LABEL_337;
    }

    v405 = v404;

    [v2 addSubview_];

    v406 = v352();
    if (v406)
    {
      v407 = v406;
      [v406 setHidden_];
    }

    goto LABEL_325;
  }

  v437 = v353;
  v438 = v352;
  v382 = 0;
  v449 = (v451 + 32);
  v446 = 0x8000000249BE7B30;
  v447 = 0x8000000249BE7B50;
  v444 = 0x8000000249BE7B70;
  while (v382 < *(v381 + 16))
  {
    v456 = *&v449[16 * v382];
    v383 = *(&v456 + 1);
    v384 = v456;
    outlined copy of ColumnType(v456, *(&v456 + 1));
    if (!*(ColumnType.localizedStrings()() + 2))
    {
      goto LABEL_336;
    }

    if (v383 > 4)
    {
      if (v383 <= 6)
      {
        if (v383 == 5)
        {
          v386 = 0xD000000000000018;
          v385 = v446;
        }

        else
        {
          v385 = 0xE900000000000065;
          v386 = 0x69702E7472616863;
        }

        goto LABEL_316;
      }

      if (v383 == 7)
      {
        v385 = 0xE300000000000000;
        v386 = 6775156;
      }

      else
      {
        if (v383 != 8)
        {
LABEL_315:
          v386 = 0;
          v385 = 0xE000000000000000;
          goto LABEL_316;
        }

        v385 = 0xE500000000000000;
        v386 = 0x64756F6C63;
      }
    }

    else
    {
      if (v383 > 2)
      {
        if (v383 == 3)
        {
          v386 = 0xD000000000000014;
          v385 = v444;
          goto LABEL_316;
        }
      }

      else
      {
        if (v383 == 1)
        {
          v385 = 0xE800000000000000;
          v386 = 0x7261646E656C6163;
          goto LABEL_316;
        }

        if (v383 != 2)
        {
          goto LABEL_315;
        }
      }

      v386 = 0xD000000000000013;
      v385 = v447;
    }

LABEL_316:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v387 = objc_opt_self();
    v388 = MEMORY[0x24C1FAD20](v386, v385);

    v389 = [v387 _systemImageNamed_withConfiguration_];

    v390 = swift_allocObject();
    *(v390 + 2) = v2;
    *(v390 + 3) = v384;
    *(v390 + 4) = v383;
    outlined copy of ColumnType(v384, v383);
    v391 = v2;
    v409[1] = partial apply for closure #1 in closure #10 in DOCItemRowView.update(with:);
    v410 = v390;
    v409[0] = 0;
    v392 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    *&v456 = v384;
    *(&v456 + 1) = v383;
    MEMORY[0x28223BE20](v392, v393);
    v410 = &v456;
    v394 = v452;
    v395 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say26DocumentManagerExecutables10ColumnTypeOG_TG5TA_0, v409, v445);
    v452 = v394;
    [v392 setState_];
    v396 = outlined consume of ColumnType(v384, v383);
    MEMORY[0x24C1FB090](v396);
    if (*((v454 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v454 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v382;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v65 = MEMORY[0x277D85000];
    v381 = v451;
    if (v450 == v382)
    {
      v380 = v454;
      v352 = v438;
      goto LABEL_320;
    }
  }

  __break(1u);
LABEL_329:
  __break(1u);
LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:

  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.updateWantsDisclosureButton()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = MEMORY[0x277D85000];
    v4 = *((*MEMORY[0x277D85000] & *v2) + 0x3D0);
    v5 = v2;
    v6 = v4();
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
      swift_beginAccess();
      v9 = *(*(v0 + v8) + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
      v10 = *((*v3 & *v5) + 0x448);

      v12 = v10(v11);
      (*(*v9 + 264))(v12 & 1);

      v13 = *(*(v0 + v8) + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);

      if (v10(v14) & 1) != 0 && ((*((*MEMORY[0x277D85000] & *v5) + 0x800))())
      {
        v15 = [v7 isBrowsable];
        if (v15)
        {
          v15 = [v7 isFullyFormed];
        }
      }

      else
      {
        v15 = 0;
      }

      (*(*v13 + 216))(v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void closure #5 in DOCItemRowView.update(with:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = Column.localizedString()();
  if (!*(*a2 + 16))
  {

    goto LABEL_9;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v7._countAndFlagsBits, v7._object);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v10 = Column.localizedString()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *a2;
  v12 = v28;
  *a2 = 0x8000000000000000;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10._countAndFlagsBits, v10._object);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v3) = v13;
  if (*(v12 + 24) < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v10._countAndFlagsBits, v10._object);
    if ((v3 & 1) != (v19 & 1))
    {
LABEL_27:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v14 = v18;
    if (v3)
    {
      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  while (1)
  {
    v3 = *(*(v28 + 56) + 8 * v14);
    if (v3[2])
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    specialized _NativeDictionary.copy()();
    if ((v3 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  outlined init with copy of DOCSidebarItemIconProvider((v3 + 4), v25);
  v20 = v3[2];
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  if (v21 && (v20 - 1) <= v3[3] >> 1)
  {
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    goto LABEL_18;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v20, 1, v3);
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  if (v3)
  {
LABEL_18:

    v22 = v28;
    *(*(v28 + 56) + 8 * v14) = v3;
  }

  else
  {

    v22 = v28;
    outlined destroy of String(*(v28 + 48) + 16 * v14);
    specialized _NativeDictionary._delete(at:)(v14, v22);
  }

  *a2 = v22;
  v23 = v26;
  v24 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v24 + 40))(a1, v23, v24);
  outlined init with copy of DOCSidebarItemIconProvider(v25, a3);
  __swift_destroy_boxed_opaque_existential_0(v25);
}

void (*closure #1 in closure #10 in DOCItemRowView.update(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))(void *)
{
  result = (*((*MEMORY[0x277D85000] & *a2) + 0x2C8))(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    v10[0] = a3;
    v10[1] = a4;
    result(v10);
    return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8, v9);
  }

  return result;
}

Swift::Void __swiftcall DOCItemRowView.setFrames()()
{
  v1 = v0;
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1A8);
  v3 = *(v2() + 16);

  if (v3 == 1)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1)
    {
      [v1 bounds];
      Width = CGRectGetWidth(v98);
      v8 = v2();
      if (*(v8 + 16))
      {
        outlined init with copy of DOCSidebarItemIconProvider(v8 + 32, &v90);

        outlined init with take of DOCGoToFolderCandidate(&v90, v94);
        v9 = v95;
        v10 = v96;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        [v1 bounds];
        Height = CGRectGetHeight(v99);
        (*(v10 + 16))(v9, v10, Width, Height);
        v12 = v95;
        v13 = v96;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        v14 = (*(v13 + 8))(v12, v13);
        [v1 bounds];
        CGRectGetHeight(v100);
        DOCGridLayout.specIconWidth.modify();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
        {
          v101.origin.x = v16;
          v101.origin.y = v18;
          v101.size.width = v20;
          v101.size.height = v22;
          MinX = CGRectGetMinX(v101);
          [v1 bounds];
          v24 = MinX - CGRectGetMinX(v102);
          [v1 bounds];
          MaxX = CGRectGetMaxX(v103);
          v104.origin.x = v16;
          v104.origin.y = v18;
          v104.size.width = v20;
          v104.size.height = v22;
          v16 = MaxX - (v24 + CGRectGetWidth(v104));
        }

        [v14 setFrame_];

        __swift_destroy_boxed_opaque_existential_0(v94);
      }

      else
      {
LABEL_46:
      }

      return;
    }
  }

  v26 = (v2)(v4);
  v27 = *(v26 + 16);
  if (!v27)
  {

    return;
  }

  v28 = v26 + 32;
  v29 = 4;
  v88 = *((*MEMORY[0x277D85000] & *v1) + 0x1C0);
  v30 = 0.0;
  while (1)
  {
    v31 = outlined init with copy of DOCSidebarItemIconProvider(v28, v94);
    v88(&v90, v31);
    v32 = v90;
    v33 = v91;
    v34 = v92;
    v35 = v93;
    if (!*(&v90 + 1))
    {
      outlined consume of OutlineColumnData?(v90, 0, v91, v92, v93);
      goto LABEL_10;
    }

    v36 = v29 - 4;

    outlined consume of OutlineColumnData?(v32, *(&v32 + 1), v33, v34, v35);
    if ((v29 - 4) >= *(*(&v32 + 1) + 16))
    {
      break;
    }

    v37 = *(*(&v32 + 1) + 8 * v29);

    if (v37 > 0.0)
    {
      [v1 bounds];
      CGRectGetHeight(v105);
      DOCGridLayout.specIconWidth.modify();
      if (v29 != 4)
      {
        v38 = v95;
        v39 = v96;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        [v1 bounds];
        v40 = CGRectGetHeight(v106);
        (*(v39 + 16))(v38, v39, v37, v40);
      }

      [v1 bounds];
      CGRectGetHeight(v107);
      DOCGridLayout.specIconWidth.modify();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = objc_opt_self();
      if ([v49 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
      {
        v108.origin.x = v42;
        v108.origin.y = v44;
        v108.size.width = v46;
        v108.size.height = v48;
        v50 = CGRectGetMinX(v108);
        [v1 bounds];
        v51 = v30;
        v52 = v50 - CGRectGetMinX(v109);
        [v1 bounds];
        v53 = CGRectGetMaxX(v110);
        v111.origin.x = v42;
        v111.origin.y = v44;
        v111.size.width = v46;
        v111.size.height = v48;
        v54 = v52 + CGRectGetWidth(v111);
        v30 = v51;
        v42 = v53 - v54;
      }

      outlined init with copy of DOCSidebarItemIconProvider(v94, &v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables11ViewSizable_pMd, &_s26DocumentManagerExecutables11ViewSizable_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16OutlineContainerCyAA10StatusViewVGMd, &_s26DocumentManagerExecutables16OutlineContainerCyAA10StatusViewVGMR);
      if (swift_dynamicCast())
      {

        [v1 bounds];
        CGRectGetHeight(v112);
        DOCCenterSizeInRect();
        v42 = v55;
        v44 = v56;
        v46 = v57;
        v48 = v58;
      }

      v59 = 0.0;
      if ((*&v42 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v59 = v42;
      }

      v60 = (~*&v42 & 0x7FF0000000000000) != 0 ? v42 : v59;
      v61 = v95;
      v62 = v96;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      v63 = (*(v62 + 8))(v61, v62);
      [v63 setFrame_];

      v64 = *((*MEMORY[0x277D85000] & *v1) + 0x2E0);
      v65 = v64();
      v66 = v65 >> 62 ? __CocoaSet.count.getter() : *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v30 = v30 + v37 + 4.0;

      if (v36 < v66)
      {
        v68 = (v64)(v67);
        v69 = v68 >> 62 ? __CocoaSet.count.getter() : *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v69 >= 1)
        {
          [v1 bounds];
          CGRectGetHeight(v113);
          if (one-time initialization token for headerColumnDividerSize != -1)
          {
            swift_once();
          }

          v70 = v30;
          DOCGridLayout.specIconWidth.modify();
          v72 = v71;
          v74 = v73;
          v76 = v75;
          v78 = v77;
          v79 = v64();
          if ((v79 & 0xC000000000000001) != 0)
          {
            v80 = MEMORY[0x24C1FC540](v29 - 4, v79);
          }

          else
          {
            if (v36 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v80 = *(v79 + 8 * v29);
          }

          v81 = v80;

          if ([v49 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
          {
            v114.origin.x = v72;
            v114.origin.y = v74;
            v114.size.width = v76;
            v114.size.height = v78;
            v82 = CGRectGetMinX(v114);
            [v1 bounds];
            v83 = v82 - CGRectGetMinX(v115);
            [v1 bounds];
            v84 = CGRectGetMaxX(v116);
            v117.origin.x = v72;
            v117.origin.y = v74;
            v117.size.width = v76;
            v117.size.height = v78;
            v72 = v84 - (v83 + CGRectGetWidth(v117));
          }

          [v81 setFrame_];

          v85 = v64();
          if ((v85 & 0xC000000000000001) != 0)
          {
            v86 = MEMORY[0x24C1FC540](v29 - 4, v85);
            v30 = v70;
          }

          else
          {
            if (v36 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v30 = v70;
            v86 = *(v85 + 8 * v29);
          }

          v87 = [v86 layer];

          [v87 setCornerRadius_];
        }
      }
    }

LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v94);
    v28 += 40;
    ++v29;
    if (!--v27)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

double DOCItemRowView.createColumn(for:with:)@<D0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables6ColumnOSgMd, "vN\t");
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v27 - v9;
  v30 = type metadata accessor for Column(0);
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v29 = *a2;
  v17 = *(a2 + 2);
  v28 = *(a2 + 1);
  v33 = *(a2 + 24);
  outlined copy of ColumnType(v15, v16);

  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables10ColumnTypeO_SayAFGTt0g5Tf4g_n(v18);

  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
  swift_beginAccess();
  v20 = *(v4 + v19);
  v21 = *(v20 + 16);

  if (v21)
  {

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v32, v17);
    if (v23)
    {
      v24 = v22;
      outlined consume of ColumnType(v15, v16);

      outlined init with copy of Column(*(v20 + 56) + *(v11 + 72) * v24, v14, type metadata accessor for Column);

      outlined init with take of Column(v14, v31);
      return result;
    }
  }

  v38[0] = v15;
  v38[1] = v16;
  v34[0] = v29;
  v35 = v28;
  v36 = v17;
  v37 = v33;
  v26 = v31;
  DOCItemRowView.createColumnUncached(for:with:)(v38, v34, v31);
  outlined init with copy of Column(v26, v10, type metadata accessor for Column);
  (*(v11 + 56))(v10, 0, 1, v30);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v15, v16, v32, v17);
  swift_endAccess();
  return result;
}

void DOCItemRowView.createColumnUncached(for:with:)(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](v8, v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) == 1)
  {
    v17 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v4) + 0x310))(&v68, v12);
    v18 = v69;
    if (!v69)
    {
      v31 = *((*v17 & *v4) + 0x220);
      v32 = outlined copy of ColumnType(v16, v15);
      v33 = v31(v32);
      v34 = (*((*v17 & *v4) + 0x328))();
      *a3 = v16;
      *(a3 + 8) = v15;
      *(a3 + 16) = 0;
LABEL_51:
      *(a3 + 17) = v33 & 1;
      *(a3 + 18) = v34 & 1;
      type metadata accessor for Column(0);
      goto LABEL_52;
    }

    v19 = v68;
    v20 = *(&v69 + 1);
    if ((v15 - 1) >= 8)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0x903040508010700uLL >> (8 * (v15 - 1));
    }

    if ((specialized == infix<A>(_:_:)(v68, v21) & 1) == 0)
    {
      outlined consume of DOCItemSortDescriptor?(v19, v18, v20);
      v25 = 0;
      v35 = v16;
      if (!v15)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }

    if (v18 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_9:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x24C1FC540](0, v18);
        }

        else
        {
          if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v22 = *(v18 + 32);
        }

        v23 = v22;
        v24 = [v22 ascending];

        outlined consume of DOCItemSortDescriptor?(v19, v18, v20);
        if (v24)
        {
          v25 = 1;
          goto LABEL_45;
        }

LABEL_44:
        v25 = 2;
LABEL_45:
        v17 = MEMORY[0x277D85000];
        v35 = v16;
        if (!v15)
        {
LABEL_46:
          outlined consume of ColumnType(v35, 0);
          v55 = outlined consume of ColumnType(0, 0);
          v56 = *((*v17 & *v4) + 0x238);
          v57 = v56(v55);
          v59 = v58;

          v61 = HIBYTE(v59) & 0xF;
          if ((v59 & 0x2000000000000000) == 0)
          {
            v61 = v57 & 0xFFFFFFFFFFFFLL;
          }

          if (v61)
          {
            v62 = v56(v60);
            v64 = v63;
            v33 = (*((*v17 & *v4) + 0x220))();
            v34 = (*((*v17 & *v4) + 0x328))();
            *a3 = v62;
            *(a3 + 8) = v64;
            goto LABEL_50;
          }

LABEL_23:
          v36 = *((*v17 & *v4) + 0x220);
          v37 = outlined copy of ColumnType(v16, v15);
          v33 = v36(v37);
          v34 = (*((*v17 & *v4) + 0x328))();
          *a3 = v16;
          *(a3 + 8) = v15;
LABEL_50:
          *(a3 + 16) = v25;
          goto LABEL_51;
        }

LABEL_22:
        outlined copy of ColumnType(v35, v15);
        outlined consume of ColumnType(v16, v15);
        outlined consume of ColumnType(0, 0);
        goto LABEL_23;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    outlined consume of DOCItemSortDescriptor?(v19, v18, v20);
    goto LABEL_44;
  }

  v67 = v11;
  v26 = *a2;
  v27 = *(a2 + 8);
  v65 = *(a2 + 24);
  v66 = v27;
  v28 = MEMORY[0x277D85000];
  v29 = (*((*MEMORY[0x277D85000] & *v4) + 0x280))();
  if (!v29)
  {
    *a3 = 45;
    *(a3 + 8) = 0xE100000000000000;
LABEL_32:
    type metadata accessor for Column(0);
LABEL_52:

    swift_storeEnumTagMultiPayload();
    return;
  }

  v30 = v29;
  if (v15 <= 4)
  {
    if ((v15 - 1) < 4)
    {
      v68 = v16;
      *&v69 = v15;
      DOCItemRowView.createDateColumn(_:)(&v68, a3);
LABEL_18:

      return;
    }

    if (!v15)
    {
      LOBYTE(v68) = v26;
      v69 = v66;
      v70 = v65;
      DOCItemRowView.createLeadingViewColumn(with:)(&v68, a3);
      goto LABEL_18;
    }

LABEL_40:

    *a3 = 45;
    *(a3 + 8) = 0xE100000000000000;
    goto LABEL_32;
  }

  if (v15 <= 6)
  {
    if (v15 == 5)
    {
      v38 = (*((*v28 & *v29) + 0x778))();
    }

    else
    {
      v38 = (*((*v28 & *v29) + 0x758))();
    }

    v41 = v38;
    v42 = v39;

    *a3 = v41;
    *(a3 + 8) = v42;
    goto LABEL_32;
  }

  if (v15 != 7)
  {
    if (v15 == 8)
    {
      v40 = (*((*v28 & *v29) + 0xAA0))(&v68);
      if (v68 <= 9u && ((1 << v68) & 0x341) != 0)
      {

        *a3 = 0;
      }

      else
      {
        v54 = (*((*v28 & *v4) + 0x388))(v40);

        *a3 = v54;
      }

      goto LABEL_32;
    }

    goto LABEL_40;
  }

  *&v66 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView);
  (*((*v28 & *v29) + 0x7E0))();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v66 setTags_];

  v44 = [objc_opt_self() preferredFontForTextStyle_];
  v45 = [v4 traitCollection];
  [v45 displayScale];
  v47 = v46;

  [v44 capHeight];
  v49 = v48 * 0.5;
  (*(v9 + 104))(v14, *MEMORY[0x277D84688], v67);
  v50 = specialized CGFloat.init(_:roundedBy:inScale:)(v14, v49, v47);

  v51 = fmax(v50, 5.0);
  [v66 setTagDimension_];

  *a3 = v66;
  type metadata accessor for Column(0);
  swift_storeEnumTagMultiPayload();
  v52 = v66;

  v53 = v52;
}

void DOCItemRowView.createLeadingViewColumn(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v131 = *(v6 - 8);
  v132.i64[0] = v6;
  MEMORY[0x28223BE20](v6, v7);
  v130 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString();
  v137 = *(v9 - 8);
  v138 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v136 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v135 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v126 - v17;
  v19 = type metadata accessor for IndexSet();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v139 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LeadingTitle(0);
  v25.n128_f64[0] = MEMORY[0x28223BE20](v23, v24);
  v142 = (&v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = *(a1 + 24);
  v27 = MEMORY[0x277D85000];
  v28 = (*((*MEMORY[0x277D85000] & *v3) + 0x280))(v25);
  if (!v28)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
    v37 = (a2 + v36[16]);
    v38 = (a2 + v36[20]);
    v39 = a2;
    v40 = v36[24];
    v41 = v27;
    v42 = v36[28];
    v43 = v36[32];
    v44 = v36[40];
    v141 = v36[36];
    v142 = v44;
    v45 = v3;
    v46 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView);
    *v39 = v46;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    *(v39 + 40) = 0;
    *(v39 + 48) = 1;
    *v37 = 0;
    v37[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    *v38 = 0;
    v38[1] = 0;
    *(v39 + v40) = (*((*v41 & *v45) + 0x2F8))(v46);
    *(v39 + v42) = 0;
    *(v39 + v43) = 0;
    *(v39 + v141) = *(v45 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
    type metadata accessor for OutlineProgressStateReference();
    v47 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    *(v142 + v39) = v47;
    type metadata accessor for Column(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_29;
  }

  v29 = v28;
  v133.i64[0] = v23;
  (*((*v27 & *v28) + 0x4A8))();
  v30 = (*(v20 + 48))(v18, 1, v19);
  v140 = v3;
  v31 = v27;
  v134 = a2;
  if (v30 == 1)
  {
    v32 = outlined destroy of CharacterSet?(v18, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
    v33 = (*((*v27 & *v29) + 0x640))(v32);
    v34 = v142;
    *v142 = v33;
    v34[1] = v35;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v128 = v20;
    v129 = v19;
    v48 = (*(v20 + 32))(v139, v18, v19);
    (*((*v27 & *v29) + 0x2F0))(&v143, v48);
    v170 = v147;
    v171 = v148;
    v172 = v149;
    v173 = v150;
    v166 = v143;
    v167 = v144;
    v168 = v145;
    v169 = v146;
    v49 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v166);
    v50 = v142;
    v156 = v147;
    v157 = v148;
    v158 = v149;
    v159 = v150;
    v152 = v143;
    v153 = v144;
    v154 = v145;
    v155 = v146;
    if (v49 == 1)
    {
      outlined destroy of CharacterSet?(&v152, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
      v51 = [objc_opt_self() preferredFontForTextStyle_];
    }

    else
    {
      v51 = v143;
      outlined destroy of CharacterSet?(&v152, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    }

    v52 = (*((*v31 & *v29) + 0x640))();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_249B9A480;
    v56 = *MEMORY[0x277D740A8];
    *(v55 + 32) = *MEMORY[0x277D740A8];
    *(v55 + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
    *(v55 + 40) = v51;
    v57 = v56;
    v127 = v51;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v55);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v55 + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
    swift_deallocClassInstance();
    v58 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v59 = MEMORY[0x24C1FAD20](v52, v54);

    type metadata accessor for NSAttributedStringKey(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v61 = [v58 initWithString:v59 attributes:isa];

    v63 = v128;
    v62 = v129;
    v64 = v135;
    v65 = v139;
    (*(v128 + 16))(v135, v139, v129);
    v66 = (*(v63 + 56))(v64, 0, 1, v62);
    v67 = (*((*MEMORY[0x277D85000] & *v29) + 0x670))(v66);
    applyHighlighting(to:indexSet:color:)(v61, v64, v67);

    outlined destroy of CharacterSet?(v64, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
    v68 = v136;
    v31 = MEMORY[0x277D85000];
    AttributedString.init(_:)();

    (*(v63 + 8))(v65, v62);
    (*(v137 + 32))(v50, v68, v138);
    swift_storeEnumTagMultiPayload();
    v3 = v140;
  }

  v69 = v141;
  v70 = (*((*v31 & *v29) + 0xA58))(v141);
  v137 = v71;
  v138 = v70;
  v166 = xmmword_249BAFCB0;
  MEMORY[0x28223BE20](v70, v71);
  *(&v126 - 2) = &v166;
  if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v126 - 4), v69) & 1) == 0)
  {
    v72 = *((*v31 & *v29) + 0x7E0);
    v73 = v72();
    if (v73 >> 62)
    {
      v87 = __CocoaSet.count.getter();

      if (v87)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v74)
      {
LABEL_12:
        v136 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView2);
        v75 = v31;
        v76 = v136;
        v72();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
        v77 = Array._bridgeToObjectiveC()().super.isa;

        [v76 setTags_];

        v78 = [objc_opt_self() preferredFontForTextStyle_];
        v79 = [v3 traitCollection];
        [v79 displayScale];
        v81 = v80;

        [v78 capHeight];
        v83 = v82 * 0.5;
        v84 = v130;
        (*(v131 + 104))(v130, *MEMORY[0x277D84688], v132.i64[0]);
        v85 = specialized CGFloat.init(_:roundedBy:inScale:)(v84, v83, v81);

        v86 = fmax(v85, 5.0);
        [v76 setTagDimension_];
        [v76 invalidateIntrinsicContentSize];

        v31 = v75;
        goto LABEL_15;
      }
    }
  }

  v136 = 0;
LABEL_15:
  (*((*v31 & *v29) + 0x2F0))(&v160);
  v170 = v162[2];
  v171 = v163;
  v172 = v164;
  v173 = v165;
  v166 = v160;
  v167 = v161;
  v168 = v162[0];
  v169 = v162[1];
  v88 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v166);
  v89.i32[0] = 1;
  LODWORD(v131) = v88;
  v90.i32[0] = v88;
  v91 = vdupq_lane_s32(*&vceqq_s32(v90, v89), 0);
  v132 = vbicq_s8(*(&v162[1] + 8), v91);
  v133 = vbicq_s8(*(v162 + 8), v91);
  v156 = v162[2];
  v157 = v163;
  v158 = v164;
  v159 = v165;
  v152 = v160;
  v153 = v161;
  v154 = v162[0];
  v155 = v162[1];
  v92 = outlined destroy of CharacterSet?(&v152, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
  v139 = (*((*v31 & *v29) + 0xA68))(v92);
  v93 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState);
  v94 = (*((*v31 & *v29) + 0x568))();
  v95 = (*(*v93 + 184))(v94);
  v96 = (*((*v31 & *v29) + 0x8F0))(v95);
  v97 = *(*v93 + 136);
  v135 = v93;
  v98 = v97(v96 & 1);
  v99 = *((*v31 & *v29) + 0xAA0);
  v100 = (v99)(v151, v98);
  v101 = LOBYTE(v151[0]);
  v151[0] = xmmword_249BAFCA0;
  MEMORY[0x28223BE20](v100, v102);
  *(&v126 - 2) = v151;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v126 - 4), v141))
  {
    v103 = 0;
    v104 = v134;
    if (v101 > 9)
    {
      v106 = v140;
      goto LABEL_22;
    }

    v105 = 1 << v101;
    v106 = v140;
    if ((v105 & 0x341) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v103 = v99(v151);
  v106 = v140;
  v104 = v134;
  if (LOBYTE(v151[0]) != 2)
  {
LABEL_21:
    v103 = (*((*MEMORY[0x277D85000] & *v106) + 0x358))(v103);
    goto LABEL_22;
  }

  v103 = 0;
LABEL_22:
  v141 = v103;
  v107 = v131 == 1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
  v109 = *(v106 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView);
  v110 = v108[16];
  *v104 = v109;
  v111 = v133;
  *(v104 + 24) = v132;
  *(v104 + 8) = v111;
  v112 = v139;
  *(v104 + 40) = v107;
  *(v104 + 48) = v112;
  outlined init with copy of Column(v142, v104 + v110, type metadata accessor for LeadingTitle);
  v113 = v137;
  if ((v137 & 0x2000000000000000) != 0)
  {
    v114 = HIBYTE(v137) & 0xF;
  }

  else
  {
    v114 = v138 & 0xFFFFFFFFFFFFLL;
  }

  v115 = v109;
  if (v114)
  {
    v116 = v138;
  }

  else
  {

    v116 = 0;
    v113 = 0;
  }

  v117 = (v104 + v108[20]);
  v118 = v108[24];
  v119 = v108[28];
  v120 = v108[32];
  v121 = v108[36];
  v122 = v108[40];
  *v117 = v116;
  v117[1] = v113;
  v123 = v140;
  v124 = (*((*MEMORY[0x277D85000] & *v140) + 0x2F8))(v115);

  outlined destroy of Column(v142, type metadata accessor for LeadingTitle);
  *(v104 + v118) = v124;
  *(v104 + v119) = v141;
  *(v104 + v120) = v136;
  *(v104 + v121) = *(v123 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  type metadata accessor for OutlineProgressStateReference();
  v125 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  *(v104 + v122) = v125;
  type metadata accessor for Column(0);
  swift_storeEnumTagMultiPayload();
LABEL_29:
}

void DOCItemRowView.createDateColumn(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v97 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v92 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v92 - v19;
  v23.n128_f64[0] = MEMORY[0x28223BE20](v21, v22);
  v25 = v92 - v24;
  v27 = *a1;
  v26 = a1[1];
  v28 = MEMORY[0x277D85000];
  v102 = (*((*MEMORY[0x277D85000] & *v3) + 0x280))(v23);
  if (!v102)
  {
    goto LABEL_8;
  }

  v98 = v12;
  v99 = v25;
  v29 = *((*v28 & *v3) + 0x1C0);
  v30 = (*v28 & *v3) + 448;
  v29(&v104);
  v31 = v105;
  if (!v105)
  {

    outlined consume of OutlineColumnData?(v104, 0, v106, v107, v108);
LABEL_8:
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);
    v40 = (a2 + *(v39 + 48));
    v41 = (a2 + *(v39 + 64));
    Date.init()();
    *v40 = 0;
    v40[1] = 0;
    *v41 = v27;
    v41[1] = v26;
    type metadata accessor for Column(0);
LABEL_36:
    swift_storeEnumTagMultiPayload();
    outlined copy of ColumnType(v27, v26);
    return;
  }

  v92[2] = v30;
  v93 = a2;
  v94 = v27;
  v95 = v26;
  v32 = v104;
  v34 = v106;
  v33 = v107;
  v35 = v108;

  v96 = v33;
  v36 = v35;
  v26 = v95;
  v37.n128_f64[0] = outlined consume of OutlineColumnData?(v32, v31, v34, v33, v36);
  if (v26 > 2)
  {
    v38 = v100;
    if (v26 != 3)
    {
      v27 = v94;
      if (v26 == 4)
      {
        (*((*v28 & *v102) + 0xA50))(v96, v37.n128_f64[0]);
        goto LABEL_16;
      }

LABEL_12:
      v42 = v101;
      (*(v38 + 56))(v20, 1, 1, v101, v37);
      goto LABEL_17;
    }

    (*((*v28 & *v102) + 0xA40))(v96, v37.n128_f64[0]);
LABEL_15:
    v27 = v94;
    goto LABEL_16;
  }

  v38 = v100;
  if (v26 == 1)
  {
    (*((*v28 & *v102) + 0xA48))(v96, v37.n128_f64[0]);
    goto LABEL_15;
  }

  v27 = v94;
  if (v26 != 2)
  {
    goto LABEL_12;
  }

  (*((*v28 & *v102) + 0xA38))(v96, v37.n128_f64[0]);
LABEL_16:
  v42 = v101;
LABEL_17:
  v43 = v20;
  v44 = v99;
  outlined init with take of Date?(v43, v99);
  outlined init with copy of Date?(v44, v16);
  if ((*(v38 + 48))(v16, 1, v42) == 1)
  {

    outlined destroy of CharacterSet?(v16, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);
    v46 = *(v45 + 48);
    v47 = v93;
    v48 = (v93 + *(v45 + 64));
    Date.init()();

    outlined destroy of CharacterSet?(v44, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    *(v47 + v46) = xmmword_249BAFCC0;
LABEL_35:
    *v48 = v27;
    v48[1] = v26;
    type metadata accessor for Column(0);
    goto LABEL_36;
  }

  v92[0] = *(v38 + 32);
  v92[1] = v38 + 32;
  v49 = (v92[0])(v98, v16, v42);
  (v29)(&v104, v49);
  v50 = v105;
  if (v105)
  {
    v51 = v106;
    v52 = v107;
    v53 = v104;
    v54 = v108;

    outlined consume of OutlineColumnData?(v53, v50, v51, v52, v54);
    v55 = v98;
    if (*(v51 + 16))
    {
      v26 = v95;
      v56 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v95);
      if (v57)
      {
        v58 = *(*(v51 + 56) + v56);
      }

      else
      {

        v58 = 1;
      }
    }

    else
    {

      v58 = 1;
      v26 = v95;
    }

    v38 = v100;
  }

  else
  {
    outlined consume of OutlineColumnData?(v104, 0, v106, v107, v108);
    v58 = 1;
    v55 = v98;
  }

  v59 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dateCache;
  v60 = *(**(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dateCache) + 88);

  v62 = v60(v61);

  if (!*(v62 + 16))
  {

    goto LABEL_31;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v55);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
LABEL_31:
    v65 = *(v3 + v59);
    v66 = *(v38 + 16);
    LODWORD(v100) = v58;
    v67 = v97;
    v68 = v38;
    v69 = v101;
    v66(v97, v55, v101);
    type metadata accessor for DateCalculator(0);
    v70 = swift_allocObject();
    v71 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
    *(v70 + v71) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10FormattersO_AC10DateResultVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v66((v70 + OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date), v67, v69);
    v72 = objc_opt_self();

    v73 = [v72 defaultCenter];
    [v73 addObserver:v70 selector:sel_clearCache name:*MEMORY[0x277D766F0] object:0];

    v74 = v67;
    v58 = v100;
    (*(v68 + 8))(v74, v69);
    v75 = (*(*v65 + 104))(&v104);
    v77 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = *v77;
    *v77 = 0x8000000000000000;
    v79 = v70;
    v55 = v98;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v79, v98, isUniquelyReferenced_nonNull_native);
    *v77 = v103;
    v26 = v95;
    v75(&v104, 0);
  }

  v80 = *(**(v3 + v59) + 88);

  v82 = v80(v81);

  if (*(v82 + 16))
  {
    v83 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
    v85 = v84;

    v27 = v94;
    if (v85)
    {
      v86 = *(*(v82 + 56) + 8 * v83);

      v87 = (*(*v86 + 152))(v58);
      v89 = v88;

      outlined destroy of CharacterSet?(v99, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);
      v91 = (v93 + *(v90 + 48));
      v48 = (v93 + *(v90 + 64));
      (v92[0])(v93, v55, v101);
      *v91 = v87;
      v91[1] = v89;
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCItemRowView.applyColor(divider:color:)(unint64_t a1, double a2)
{
  v4 = type metadata accessor for DragIndicator(0);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((*MEMORY[0x277D85000] & *v2) + 0x2E0);
  v10 = v9(v6);
  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 >= 1)
  {
    v13 = (v9)(v12);
    if ((v13 & 0xC000000000000001) == 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v14 = *(v13 + 8 * a1 + 32);
LABEL_8:
        v15 = v14;

        dispatch thunk of _UIHostingView.rootView.getter();

        v16 = *(v8 + 1);

        outlined destroy of Column(v8, type metadata accessor for DragIndicator);
        v17 = *(*v16 + 128);

        v17(v18);

        return;
      }

      __break(1u);
      return;
    }

    v14 = MEMORY[0x24C1FC540](a1, v13);
    goto LABEL_8;
  }
}

CGSize __swiftcall DOCItemRowView.systemLayoutSizeFitting(_:)(CGSize a1)
{
  width = a1.width;
  v3 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x1A8))(__PAIR128__(v4, *&a1.width), __PAIR128__(v5, *&a1.height));
  if (!*(v6 + 16))
  {

    goto LABEL_12;
  }

  outlined init with copy of DOCSidebarItemIconProvider(v6 + 32, &v21);

  outlined init with take of DOCGoToFolderCandidate(&v21, v25);
  v7 = [v1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 != 1)
  {
    (*((*v3 & *v1) + 0x1C0))(&v21);
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    if (*(&v21 + 1))
    {

      outlined consume of OutlineColumnData?(v14, *(&v14 + 1), v15, v16, v17);
      if (*(*(&v14 + 1) + 16))
      {
        v18 = *(*(&v14 + 1) + 32);

        if (v18 > 0.0)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }
    }

    else
    {
      outlined consume of OutlineColumnData?(v21, 0, v22, v23, v24);
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
LABEL_12:
    v13 = 30.0;
    goto LABEL_13;
  }

LABEL_3:
  v9 = v26;
  v10 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  DOCGridLayout.specIconWidth.modify();
  width = (*(v10 + 16))(v9, v10);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0(v25);
  v13 = v12;
LABEL_13:
  v19 = width;
  result.height = v13;
  result.width = v19;
  return result;
}

id DOCItemRowView.setOutlineColumnData(data:)(uint64_t a1)
{
  v4[0] = *a1;
  v2 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6 = v2;
  (*((*MEMORY[0x277D85000] & *v1) + 0x3E0))(v4);

  return [v1 setNeedsLayout];
}

void DOCItemRowView.view(for:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v5 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  outlined init with copy of DOCSidebarItemIconProvider(v5 + 40 * a1 + 32, a2);
}

Swift::Void __swiftcall DOCItemRowView.swapIndexes(_:toIndex:)(Swift::Int _, Swift::Int toIndex)
{
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x1A8);
  v9 = v8();
  if (_ < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v9 + 16) <= _)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v9;
  outlined init with copy of DOCSidebarItemIconProvider(v9 + 40 * _ + 32, v21);

  v11 = (v8)(v10);
  if (toIndex < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v11 + 16) > toIndex)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v11 + 40 * toIndex + 32, v20);

    v4 = *((*v7 & *v2) + 0x1B8);
    v3 = v4(v19);
    v8 = v12;
    v7 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  *v8 = v7;
LABEL_6:
  if (v7[2] <= _)
  {
    __break(1u);
  }

  else
  {
    v14 = &v7[5 * _];
    __swift_destroy_boxed_opaque_existential_0(v14 + 4);
    outlined init with take of DOCGoToFolderCandidate(v20, (v14 + 4));
    (v3)(v19, 0);
    v2 = v4(v20);
    v3 = v15;
    _ = *v15;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = _;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  _ = specialized _ArrayBuffer._consumeAndCreateNew()(_);
  *v3 = _;
LABEL_8:
  if (*(_ + 16) <= toIndex)
  {
    __break(1u);
  }

  else
  {
    v18 = __swift_assign_boxed_opaque_existential_1((_ + 40 * toIndex + 32), v21, v17);
    (v2)(v20, 0, v18);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }
}

Swift::Void __swiftcall DOCItemRowView.layoutSubviews()()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for DOCItemRowView();
  v1 = objc_msgSendSuper2(&v33, sel_layoutSubviews);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x178))(v1);
  [v0 bounds];
  [v3 setFrame_];

  v4 = (*((*v2 & *v0) + 0x298))();
  if (v4)
  {
    v5 = v4;
    v6 = *((*v2 & *v0) + 0x2B0);
    v6(&v29);
    v7 = v31;
    v8 = v32;
    if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
    {
      v9 = (v6)(&v29);
      v10 = v30 + 20.0;
    }

    else
    {
      v12 = (v6)(&v29);
      v13 = v29 - (v7 + v8);
      v9 = (v6)(&v29, v12);
      v10 = v13 + v30 + -24.0 + -20.0;
    }

    v11 = (v6)(&v29, v9);
    (v6)(&v29, v11);
    [v0 bounds];
    DOCGridLayout.specIconWidth.modify();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = v5;
    [v0 bounds];
    [v22 setFrame_];

    v23 = (*((*v2 & *v0) + 0x160))();
    [v23 setFrame_];
  }

  v24 = (*((*v2 & *v0) + 0x3E8))();
  v25 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v26 = (*((*v2 & *v0) + 0x148))(v24);
  if (v26)
  {
    v27 = v26;
    v28 = [v26 expanded];
  }

  else
  {
    v28 = 0;
  }

  (*(*v25 + 168))(v28);
}

id DOCItemRowView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState;
  v2 = *(**&v0[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState] + 184);

  v2(0);

  v3 = *(**&v0[v1] + 136);

  v3(0);

  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCItemRowView();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id DOCItemRowView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCItemCollectionOutlineCell.rowView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionOutlineCell.rowView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCItemCollectionOutlineCell.indentationLevel.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_indentationLevel);
}

void DOCItemCollectionOutlineCell.indentationLevel.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setIndentationLevel_, a1);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v5 = *&v1[v4];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = v5;
  v7 = objc_msgSendSuper2(&v8, sel_indentationLevel);
  (*((*MEMORY[0x277D85000] & *v6) + 0x300))(v7);
}

void (*DOCItemCollectionOutlineCell.indentationLevel.modify(id **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 96) = ObjectType;
  *(v4 + 24) = v1;
  *(v4 + 32) = ObjectType;
  *v4 = objc_msgSendSuper2((v4 + 24), sel_indentationLevel);
  return DOCItemCollectionOutlineCell.indentationLevel.modify;
}

void DOCItemCollectionOutlineCell.indentationLevel.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    *(v2 + 5) = *(v2 + 11);
    objc_msgSendSuper2((v2 + 5), sel_setIndentationLevel_, v3);
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v2[7] = v5;
    v2[8] = v4;
    objc_msgSendSuper2((v2 + 7), sel_setIndentationLevel_, v3);
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v2[9] = v5;
    v2[10] = v4;
    v8 = v7;
    v9 = objc_msgSendSuper2((v2 + 9), sel_indentationLevel);
    (*((*MEMORY[0x277D85000] & *v8) + 0x300))(v9);
  }

  free(v2);
}

id DOCItemCollectionOutlineCell.titleLabel.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x640);
    v5 = v3;
    v6 = v4();
    v8 = v7;

    v9 = MEMORY[0x24C1FAD20](v6, v8);
  }

  else
  {
    v9 = 0;
  }

  [v1 setText_];

  return v1;
}

char *DOCItemCollectionOutlineCell.init(frame:containerView:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  v12 = objc_allocWithZone(type metadata accessor for DOCItemRowView());
  *(v5 + v11) = DOCItemRowView.init(isHeader:)(0);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver) = 0;
  v13 = a1;
  v14 = DOCItemCollectionCell.init(frame:containerView:)(a1, a2, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249B9A480;
  v16 = lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  *(v15 + 32) = &type metadata for DOCBrowserLayoutConfiguration.Trait;
  *(v15 + 40) = v16;
  v17 = v14;
  MEMORY[0x24C1FBD00](v15, sel_didChangeTraits);
  swift_unknownObjectRelease();

  v18 = [v17 contentView];

  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  [v18 addSubview_];

  return v17;
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.prepareForReuse()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x1F8);
  v4 = v2;
  v3(0);
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.didChangeCellContent()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView];
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x270);
  v7 = v3;
  v8 = v4;
  v6(v4);

  v9 = *&v1[v2];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v11 = *&v1[v10];
  v12 = *((*v5 & *v9) + 0x288);
  v13 = v11;
  v14 = v9;
  v12(v11);

  v15 = *&v1[v2];
  v16 = *((*v5 & *v15) + 0x150);
  v17 = v15;
  v18 = v1;
  v16(v1);

  [v18 setIndentationWidth_];
  DOCItemCollectionOutlineCell.updateWantsDisclosureButton()();
  DOCItemCollectionOutlineCell.updateAccessories()();
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.updateAccessories()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v25 - v3;
  v5 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v16 = *(v0 + v15);
  if (v16)
  {
    v17 = *v16;
    v29 = v0;
    v18 = MEMORY[0x277D85000];
    v19 = *MEMORY[0x277D85000] & v17;
    v26 = v10;
    v20 = *(v19 + 1288);
    v28 = v5;
    v21 = v16;
    v27 = v4;
    v22 = v21;
    v25[1] = v20();
    (*((*v18 & *v22) + 0x4F0))();
    (*((*v18 & *v22) + 0x460))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_249B9A480;
    v23 = v26;
    (*(v11 + 104))(v14, *MEMORY[0x277D74A88], v26);
    v24 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v24 - 8) + 56))(v27, 1, 1, v24);
    UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.multiselect(displayed:options:)();
    (*(v6 + 8))(v9, v28);
    (*(v11 + 8))(v14, v23);
    UICollectionViewListCell.accessories.setter();
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.didUpdateContents()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x3C0);
  v6 = v3;
  v5();

  DOCItemCollectionOutlineCell.updateLabelsForDimming()();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    v9 = *((*v4 & *v8) + 0xAA0);
    v10 = v8;
    v9(&v23);
    v11 = DOCItemCollectionCell.itemStatusBadge.getter();
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];

    v12 = *(v1 + v2);
    v13 = *((*v4 & *v12) + 0x1C0);
    v14 = v12;
    v13(&v23);

    v15 = v24;
    if (v24)
    {
      v17 = v26;
      v16 = v27;
      v18 = v25;
      v19 = v23;
      v20 = *(v1 + v2);
      LOBYTE(v23) = v23 & 1;
      v21 = *((*v4 & *v20) + 0x3E0);
      v22 = v20;
      v21(&v23);

      outlined consume of OutlineColumnData?(v19, v15, v18, v17, v16);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.updateLabelsForDimming()()
{
  v1 = v0;
  v2 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v2, v3);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  if ((*(v1 + v4) & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
      swift_beginAccess();
      v8 = *(v1 + v7);
      v9 = MEMORY[0x277D85000];
      v10 = *((*MEMORY[0x277D85000] & *v8) + 0x178);
      v11 = v6;
      v12 = v8;
      v13 = v10();

      v14 = *((*v9 & *v11) + 0x910);
      v14();
      UIView.traitOverrides.getter();
      lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait();
      dispatch thunk of UIMutableTraits.subscript.setter();
      UIView.traitOverrides.setter();

      v15 = (v14)();
      v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
      if (v15)
      {
        v17 = 0.35;
        [v16 setAlpha_];
        v18 = *(v1 + v7);
        v19 = MEMORY[0x277D85000];
        v20 = *((*MEMORY[0x277D85000] & *v18) + 0x358);
        v21 = v18;
        v22 = v20();

        [v22 setAlpha_];
        v23 = *(v1 + v7);
        v24 = *((*v19 & *v23) + 0x388);
        v25 = v23;
        v26 = v24();

        [v26 setAlpha_];
        v27 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_horizontalStopButton;
        swift_beginAccess();
        v28 = *(v1 + v27);
        if (!v28)
        {
          goto LABEL_13;
        }
      }

      else
      {
        [v16 setAlpha_];
        v29 = *(v1 + v7);
        v30 = MEMORY[0x277D85000];
        v31 = *((*MEMORY[0x277D85000] & *v29) + 0x340);
        v32 = v29;
        v33 = v31();

        if (v33)
        {
          v34 = *(v1 + v7);
          v35 = *((*v30 & *v34) + 0x358);
          v36 = v34;
          v37 = v35();

          [v37 setAlpha_];
        }

        v38 = *(v1 + v7);
        v39 = *((*v30 & *v38) + 0x370);
        v40 = v38;
        LOBYTE(v39) = v39();

        if (v39)
        {
          v41 = *(v1 + v7);
          v42 = *((*v30 & *v41) + 0x388);
          v43 = v41;
          v44 = v42();

          [v44 setAlpha_];
        }

        v45 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_horizontalStopButton;
        swift_beginAccess();
        v28 = *(v1 + v45);
        if (!v28)
        {
          goto LABEL_13;
        }

        v17 = 1.0;
      }

      v46 = v28;
      [v46 setAlpha_];

LABEL_13:
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.didUpdateLoadingProgress()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    DOCItemCollectionOutlineCell.updateAccessories()();
    v5 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v4) + 0x8D0))())
    {
      v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
      swift_beginAccess();
      v7 = *(v0 + v6);
      v8 = *((*v5 & *v7) + 0x358);
      v9 = v7;
      v10 = v8();

      v11 = *((*v5 & *v4) + 0x568);
      v12 = v11();
      (*((*v5 & *v10) + 0x1C8))(v12);

      v13 = *(v1 + v6);
      v14 = *((*v5 & *v13) + 0x388);
      v15 = v13;
      v16 = v14();

      v17 = v11();
      (*((*v5 & *v16) + 0x1C8))(v17);

      if ((*((*v5 & *v4) + 0x580))() & 1) != 0 && ((v18 = *((*v5 & *v4) + 0x3D0), (v19 = v18()) != 0) && (v20 = [v19 isDownloading], swift_unknownObjectRelease(), (v20) || (v21 = v18()) != 0 && (v22 = objc_msgSend(v21, sel_isExternalDownloadPlaceholder), swift_unknownObjectRelease(), (v22)))
      {
        v23 = 1;
      }

      else
      {
        v24 = (*((*v5 & *v4) + 0x3D0))();
        if (v24)
        {
          v23 = [v24 isCopying];
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0;
        }
      }

      v25 = *(v1 + v6);
      v26 = *((*v5 & *v25) + 0x358);
      v27 = v25;
      v28 = v26();

      (*((*v5 & *v28) + 0xB8))(v23);
      v29 = *(v1 + v6);
      v30 = *((*v5 & *v29) + 0x388);
      v31 = v29;
      v32 = v30();

      (*((*v5 & *v32) + 0xB8))(v23);
      if ((*((*v5 & *v4) + 0x3D0))())
      {
        ObjectType = swift_getObjectType();
        DOCNode.debugUIScenario.getter(ObjectType, v42);
        swift_unknownObjectRelease();
        if (v42[0] != 1)
        {
          outlined destroy of CharacterSet?(v42, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR);
          v34 = *(v1 + v6);
          v35 = *((*v5 & *v34) + 0x358);
          v36 = v34;
          v37 = v35();

          (*((*v5 & *v37) + 0xB8))(1);
          v38 = *(v1 + v6);
          v39 = *((*v5 & *v38) + 0x388);
          v40 = v38;
          v41 = v39();

          (*((*v5 & *v41) + 0xB8))(1);
        }
      }
    }
  }
}

void DOCItemCollectionOutlineCell.beginRename(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = &v31 - v6;
  v7 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  if (v2[v15] & 1) == 0 && (v16 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameController, swift_beginAccess(), *&v2[v16] = a1, , , v2[v15] = 1, v17 = objc_opt_self(), v18 = swift_allocObject(), *(v18 + 16) = v2, v19 = swift_allocObject(), *(v19 + 16) = partial apply for closure #1 in DOCItemCollectionCell.beginRename(context:), *(v19 + 24) = v18, aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> (), aBlock[5] = v19, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = thunk for @escaping @callee_guaranteed () -> (), aBlock[3] = &block_descriptor_91, v20 = _Block_copy(aBlock), v21 = v2, , , [v17 performWithoutAnimation_], _Block_release(v20), isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation(), , , (isEscapingClosureAtFileLocation))
  {
    __break(1u);
  }

  else
  {
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
    swift_beginAccess();
    v24 = *&v2[v23];
    if (v24)
    {
      v25 = *v24;
      v31 = v7;
      v26 = MEMORY[0x277D85000];
      v27 = *((*MEMORY[0x277D85000] & v25) + 0x508);
      v28 = v24;
      v27();
      (*((*v26 & *v28) + 0x4F0))();
      (*((*v26 & *v28) + 0x460))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_249B9A480;
      (*(v11 + 104))(v14, *MEMORY[0x277D74A88], v10);
      v29 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
      v30 = v32;
      UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
      static UICellAccessory.multiselect(displayed:options:)();
      (*(v34 + 8))(v30, v31);
      (*(v11 + 8))(v14, v10);
      UICollectionViewListCell.accessories.setter();
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.endRename(_:force:)(Swift::Bool _, Swift::Bool force)
{
  v3 = v2;
  DOCItemCollectionCell.endRename(_:force:)(_, force);
  DOCItemCollectionOutlineCell.updateAccessories()();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x558);
    v7 = v5;
    v6();
  }

  DOCItemCollectionOutlineCell.didUpdateContents()();
}

CGSize __swiftcall DOCItemCollectionOutlineCell.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  height = _.height;
  width = _.width;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  [*(v3 + v6) systemLayoutSizeFittingSize_];
  DOCGridLayout.specIconWidth.modify();
  result.height = v8;
  result.width = v7;
  return result;
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v30.receiver = v1;
  v30.super_class = ObjectType;
  [(UICollectionViewLayoutAttributes *)&v30 applyLayoutAttributes:a1];
  type metadata accessor for DOCItemCollectionViewLayoutAttributes();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v5) + 0x58);
    v8 = a1;
    v7(&v25);
    v9 = v26;
    if (v26)
    {
      v23 = v8;
      v10 = v6;
      v12 = v28;
      v11 = v29;
      v13 = v27;
      v14 = v25;
      v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
      swift_beginAccess();
      v16 = *&v1[v15];
      v24.receiver = v1;
      v24.super_class = ObjectType;
      v17 = v16;
      v18 = [(UICollectionViewLayoutAttributes *)&v24 indentationLevel];
      (*((*v10 & *v17) + 0x300))(v18);

      v19 = *&v1[v15];
      LOBYTE(v25) = v14 & 1;
      v26 = v9;
      v27 = v13;
      v28 = v12;
      v29 = v11;
      v20 = *((*v10 & *v19) + 0x418);
      v21 = v19;
      v20(&v25);

      [*&v2[v15] setNeedsLayout];
      v22 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
      swift_beginAccess();
      if (*&v2[v22])
      {
        [v2 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v83.receiver = v1;
  v83.super_class = ObjectType;
  objc_msgSendSuper2(&v83, sel_layoutSubviews);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = [v1 contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame_];
  v14 = *(*&v1[v3] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v82.receiver = v1;
  v82.super_class = ObjectType;

  v15 = objc_msgSendSuper2(&v82, sel_expanded);
  (*(*v14 + 168))(v15);

  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
  swift_beginAccess();
  v17 = *&v1[v16];
  if (v17)
  {
    v18 = v17;
    v19 = [v1 traitCollection];
    v20 = [v19 preferredContentSizeCategory];

    v21 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v22 = [v1 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if ((v21 & 1) == 0 || v23 != 1)
    {
      specialized DOCItemCollectionOutlineCell._preferredSeparatorInsets(forProposedInsets:)();
    }

    v24 = *&v1[v3];
    v25 = *((*MEMORY[0x277D85000] & *v24) + 0x2B0);
    v26 = v24;
    v25(v81);

    v27 = v18;
    [v27 frame];
    if (CGRectGetHeight(v84) == 0.0)
    {
      [v1 bounds];
      [v27 setFrame_];
    }

    [v27 contentSize];
    v28 = DOCItemRenameTextView.clearButton.getter();
    [v28 intrinsicContentSize];
    v30 = v29;

    v31 = *&v1[v3];
    v32 = MEMORY[0x277D85000];
    v33 = *((*MEMORY[0x277D85000] & *v31) + 0x2B0);
    v34 = v31;
    v33(v81);

    v35 = *&v81[5];
    v36 = *&v1[v3];
    v37 = *((*v32 & *v36) + 0x2B0);
    v38 = v36;
    v37(v81);

    v39 = *&v81[3];
    v40 = [v1 traitCollection];
    v41 = [v40 horizontalSizeClass];

    v42 = 16.0;
    if (v41 == 1)
    {
      v42 = 8.0;
    }

    v43 = v30 + v35 + v39 + v42;
    [*&v1[v3] frame];
    CGRectGetHeight(v85);
    DOCGridLayout.specIconWidth.modify();
    v44 = [v1 traitCollection];
    v45 = [v44 preferredContentSizeCategory];

    v46 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v47 = [v1 traitCollection];
    v48 = [v47 horizontalSizeClass];

    [v1 bounds];
    if ((v46 & 1) != 0 && v48 == 1)
    {
      v49 = [objc_opt_self() defaultMetrics];
      [v49 scaledValueForValue_];
    }

    v50 = *&v1[v16];
    if (v50)
    {
      v51 = v50;
      UIRectCenteredYInRect();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;
      if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
      {
        v86.origin.x = v53;
        v86.origin.y = v55;
        v86.size.width = v57;
        v86.size.height = v59;
        MinX = CGRectGetMinX(v86);
        [v1 bounds];
        v61 = MinX - CGRectGetMinX(v87);
        [v1 bounds];
        MaxX = CGRectGetMaxX(v88);
        v89.origin.x = v53;
        v89.origin.y = v55;
        v89.size.width = v57;
        v89.size.height = v59;
        v53 = MaxX - (v61 + CGRectGetWidth(v89));
      }

      [v51 setFrame_];

      v63 = *&v1[v16];
      if (v63)
      {
        [v63 setTranslatesAutoresizingMaskIntoConstraints_];
      }
    }

    v64 = *&v1[v3];
    v65 = *((*MEMORY[0x277D85000] & *v64) + 0x2B0);
    v66 = v64;
    v65(v81);

    [*&v27[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] setTranslatesAutoresizingMaskIntoConstraints_];
    v67 = *&v1[v16];
    if (v67)
    {
      DOCGridLayout.specIconWidth.modify();
      v68 = v67;
      v69 = DOCItemRenameTextView.clearButton.getter();

      [v1 bounds];
      UIRectCenteredYInRect();
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v77 = v76;
      if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
      {
        v90.origin.x = v71;
        v90.origin.y = v73;
        v90.size.width = v75;
        v90.size.height = v77;
        v78 = CGRectGetMinX(v90);
        [v1 bounds];
        v79 = v78 - CGRectGetMinX(v91);
        [v1 bounds];
        v80 = CGRectGetMaxX(v92);
        v93.origin.x = v71;
        v93.origin.y = v73;
        v93.size.width = v75;
        v93.size.height = v77;
        v71 = v80 - (v79 + CGRectGetWidth(v93));
      }

      [v69 setFrame_];
    }
  }
}

id DOCItemCollectionOutlineCell.expanded.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_expanded);
}

id DOCItemCollectionOutlineCell.springLoadedInteractionEffect()()
{
  v0 = type metadata accessor for DOCItemCollectionListCellSpringLoadedInteractionEffect();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables54DOCItemCollectionListCellSpringLoadedInteractionEffect_blinkDuration] = 0x3FB999999999999ALL;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *DOCItemCollectionOutlineCell.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v62 = &v61 - v7;
  v8 = type metadata accessor for UIBackgroundConfiguration();
  v63 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v9);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v61 - v13;
  v69 = a1;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v77.receiver = v2;
  v77.super_class = ObjectType;
  objc_msgSendSuper2(&v77, sel__bridgedUpdateConfigurationUsingState_, isa);

  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v71 = v16;
  v17 = *&v2[v16];
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v17) + 0x1A8);
  v20 = v17;
  v21 = v19();

  v70 = v21;
  v67 = *(v21 + 16);
  if (!v67)
  {
LABEL_16:

    v60 = v62;
    DOCItemCollectionOutlineCell.backgroundConfiguration(for:)(v69);
    (*(v63 + 56))(v60, 0, 1, v8);
    return MEMORY[0x24C1FBB40](v60);
  }

  v22 = 0;
  result = (v70 + 32);
  v24 = (v63 + 8);
  v64 = v8;
  v66 = v14;
  v65 = (v63 + 8);
  while (v22 < *(v70 + 16))
  {
    v72 = result;
    outlined init with copy of DOCSidebarItemIconProvider(result, v74);
    v26 = v68;
    static UIBackgroundConfiguration.listCell()();
    v27 = type metadata accessor for UICellConfigurationState();
    v73[3] = v27;
    v73[4] = MEMORY[0x277D74BA8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v69, v27);
    UIBackgroundConfiguration.updated(for:)();
    v29 = *v24;
    (*v24)(v26, v8);
    __swift_destroy_boxed_opaque_existential_0(v73);
    result = [v2 tintColor];
    if (!result)
    {
      goto LABEL_18;
    }

    v30 = v14;
    v31 = v8;
    v32 = result;
    v33.super.isa = UIBackgroundConfiguration.resolvedBackgroundColor(for:)(result).super.isa;

    v29(v30, v31);
    v34 = [v2 tintColor];
    if (v34)
    {
      v35 = v34;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
      v36 = static NSObject.== infix(_:_:)();

      if (v36)
      {
        v37 = v75;
        v38 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        v39 = (*(v38 + 8))(v37, v38);
        v40 = [v2 traitCollection];
        v41 = [v40 userInterfaceStyle] == 1;

        [v39 setOverrideUserInterfaceStyle_];
        v42 = v71;
        v43 = *(**(*&v2[v71] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState) + 312);

        v43(1);

        v44 = *&v2[v42];
        v45 = *((*v18 & *v44) + 0x358);
        v46 = v44;
        v47 = v45();

        v8 = [objc_opt_self() lightTextColor];
        result = [v2 tintColor];
        if (!result)
        {
          goto LABEL_19;
        }

        v25 = result;
        (*((*v18 & *v47) + 0x140))(1, v8, result);
        v14 = v66;
        v24 = v65;
        goto LABEL_4;
      }
    }

    else
    {
    }

    v48 = v75;
    v49 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v50 = (*(v49 + 8))(v48, v49);
    [v50 setOverrideUserInterfaceStyle_];

    v51 = v71;
    v52 = *(**(*&v2[v71] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState) + 312);

    v52(0);

    v53 = *&v2[v51];
    v54 = *((*v18 & *v53) + 0x340);
    v55 = v53;
    LOBYTE(v54) = v54();

    v14 = v66;
    v24 = v65;
    if ((v54 & 1) == 0)
    {
      goto LABEL_5;
    }

    v56 = *&v2[v71];
    v57 = *((*v18 & *v56) + 0x358);
    v58 = v56;
    v47 = v57();

    v8 = [objc_opt_self() secondaryLabelColor];
    v59 = [v2 tintColor];
    if (!v59)
    {
      __break(1u);
      goto LABEL_16;
    }

    v25 = v59;
    (*((*v18 & *v47) + 0x140))(0, v8, v59);
LABEL_4:

LABEL_5:
    ++v22;
    __swift_destroy_boxed_opaque_existential_0(v74);
    result = v72 + 40;
    v8 = v64;
    if (v67 == v22)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionOutlineCell.backgroundConfiguration(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  if (v2[v14] == 1)
  {
    return static UIBackgroundConfiguration.clear()();
  }

  static UIBackgroundConfiguration.listCell()();
  v27[3] = v4;
  v27[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v5 + 16))(boxed_opaque_existential_1, a1, v4);
  UIBackgroundConfiguration.updated(for:)();
  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_0(v27);
  v17 = [v2 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v22 = UICellConfigurationState.isSelected.getter();
    (*(v5 + 8))(v8, v4);
    if ((v22 & 1) == 0)
    {
      v23 = [v2 effectiveAppearance];
      if (!v23 || (v24 = v23, v25 = [v23 backgroundColor], v24, !v25))
      {
        v26 = [objc_opt_self() systemBackgroundColor];
      }

      UIBackgroundConfiguration.backgroundColor.setter();
    }
  }

  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v19 = *&v2[v18];
  if (v19)
  {
    v20 = *((*MEMORY[0x277D85000] & *v19) + 0x3B0);
    v21 = v19;
    v20();
  }

  return UIBackgroundConfiguration.cornerRadius.setter();
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.didUpdateThumbnail()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *v3) + 0xA80);
    v6 = v3;
    v7 = v5();
    if (v7)
    {
      [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) updateImage:v7 addDecoration:(*((*v4 & *v6) + 0x940))() & 1];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = (*((*v4 & *v6) + 0x460))();
      if (v8 == 2)
      {
        __break(1u);
        return;
      }

      if ((v8 & 1) == 0)
      {
        [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setThumbnail_];
      }
    }
  }
}

double DOCItemCollectionOutlineCell.expanded.setter(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setExpanded_, a1 & 1);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v5 = *(*&v1[v4] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v8.receiver = v1;
  v8.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v8, sel_expanded);
  (*(*v5 + 168))(v6);

  return result;
}

void (*DOCItemCollectionOutlineCell.expanded.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 96) = ObjectType;
  *(v4 + 24) = v1;
  *(v4 + 32) = ObjectType;
  *v4 = objc_msgSendSuper2((v4 + 24), sel_expanded);
  return DOCItemCollectionOutlineCell.expanded.modify;
}

void DOCItemCollectionOutlineCell.expanded.modify(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    *(v2 + 40) = *(v2 + 88);
    objc_msgSendSuper2((v2 + 40), sel_setExpanded_, v3);
  }

  else
  {
    v5 = *(v2 + 88);
    v4 = *(v2 + 96);
    *(v2 + 56) = v5;
    *(v2 + 64) = v4;
    objc_msgSendSuper2((v2 + 56), sel_setExpanded_, v3);
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
    swift_beginAccess();
    v7 = *(*(v5 + v6) + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
    *(v2 + 72) = v5;
    *(v2 + 80) = v4;

    v8 = objc_msgSendSuper2((v2 + 72), sel_expanded);
    (*(*v7 + 168))(v8);
  }

  free(v2);
}

void __swiftcall DOCItemCollectionOutlineCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes *__return_ptr retstr, UICollectionViewLayoutAttributes *a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  [(UICollectionViewLayoutAttributes *)&v5 preferredLayoutAttributesFittingAttributes:a2];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  [*&v2[v4] setNeedsLayout];
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.teardownRename(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
  swift_beginAccess();
  v13 = *&v1[v12];
  if (v13)
  {
    v14 = v13;
    v15 = DOCItemRenameTextView.clearButton.getter();

    [v15 removeFromSuperview];
  }

  DOCItemCollectionCell.teardownRename(_:)(a1);
  v16 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver] = 0;

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionOutlineCell.teardownRename(_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_21_2;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v7, v19);
  _Block_release(v19);

  (*(v24 + 8))(v7, v4);
  (*(v8 + 8))(v11, v23);
  v21 = *&v2[v12];
  if (v21)
  {
    [v21 removeFromSuperview];
  }
}

double closure #1 in DOCItemCollectionOutlineCell.teardownRename(_:)(uint64_t a1)
{
  v2 = type metadata accessor for LeadingView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x1A8);
  v9 = v7;
  v10 = v8();

  v11 = *(v10 + 16);
  if (v11)
  {
    v20[1] = v10;
    v12 = v10 + 32;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v12, v21);
      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = (*(v15 + 8))(v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMd, &_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMR);
      if (swift_dynamicCastClass())
      {
        dispatch thunk of _UIHostingView.rootView.getter();
        v13 = *&v5[*(v2 + 72)];

        outlined destroy of Column(v5, type metadata accessor for LeadingView);
        (*(*v13 + 128))(0);
      }

      else
      {

        v17 = v22;
        v18 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v16 = (*(v18 + 8))(v17, v18);
        [v16 setHidden_];
      }

      __swift_destroy_boxed_opaque_existential_0(v21);
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.setupRename()()
{
  v1 = v0;
  v2 = type metadata accessor for LeadingView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCItemCollectionCell.setupRename()();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
    swift_beginAccess();
    v9 = *&v1[v8];
    v10 = *((*MEMORY[0x277D85000] & *v9) + 0x1A8);
    v11 = v7;
    v12 = v9;
    v13 = v10();

    v14 = *(v13 + 16);
    if (v14)
    {
      v38 = v13;
      v39 = v11;
      v15 = v13 + 32;
      do
      {
        outlined init with copy of DOCSidebarItemIconProvider(v15, &v42);
        v20 = v44;
        v19 = v45;
        __swift_project_boxed_opaque_existential_1(&v42, v44);
        v18 = (*(v19 + 8))(v20, v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMd, &_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMR);
        if (swift_dynamicCastClass())
        {
          dispatch thunk of _UIHostingView.rootView.getter();
          v21 = *&v5[*(v2 + 72)];

          outlined destroy of Column(v5, type metadata accessor for LeadingView);
          (*(*v21 + 128))(1);
        }

        else
        {

          v16 = v44;
          v17 = v45;
          __swift_project_boxed_opaque_existential_1(&v42, v44);
          v18 = (*(v17 + 8))(v16, v17);
          [v18 setHidden_];
        }

        __swift_destroy_boxed_opaque_existential_0(&v42);
        v15 += 40;
        --v14;
      }

      while (v14);

      v11 = v39;
    }

    else
    {
    }

    v22 = v11;
    v23 = [v1 traitCollection];
    lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
    UITraitCollection.subscript.getter();

    LODWORD(v23) = v43;
    v24 = objc_opt_self();
    v25 = MEMORY[0x277D76918];
    if (!v23)
    {
      v25 = MEMORY[0x277D769D0];
    }

    v26 = [v24 preferredFontForTextStyle_];
    [v22 setFont_];

    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
    swift_beginAccess();
    *(v22 + v27) = 0;
    DOCItemRenameTextView.updateBackground()();
    v28 = [v1 contentView];
    [v28 addSubview_];

    v29 = [v1 contentView];
    v30 = DOCItemRenameTextView.clearButton.getter();
    [v29 addSubview_];

    v31 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
    swift_beginAccess();
    *(v22 + v31) = 1;
    v32 = type metadata accessor for DOCItemRenameTextView();
    v41.receiver = v22;
    v41.super_class = v32;
    objc_msgSendSuper2(&v41, sel_becomeFirstResponder);
    *(v22 + v31) = 0;
    [v1 setNeedsLayout];
    v40 = v22;
    swift_getKeyPath();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v22;
    v35 = v22;
    v36 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v37 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver] = v36;
  }
}

void closure #1 in DOCItemCollectionOutlineCell.setupRename()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
    swift_beginAccess();
    if (*&v5[v6])
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      if (static NSObject.== infix(_:_:)())
      {
        [v5 setNeedsLayout];
      }
    }
  }
}

id DOCItemCollectionOutlineCell.accessibilityValue.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v4 = *(*&v1[v3] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v5 = *(*v4 + 208);

  if ((v5(v6) & 1) == 0)
  {
    v22.receiver = v1;
    v22.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v22, sel_accessibilityValue);
    if (!v18)
    {

      return 0;
    }

    v9 = v18;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_10:
    v20 = countAndFlagsBits;

    return v20;
  }

  v7 = (*(*v4 + 160))();
  result = _DocumentManagerBundle();
  v9 = result;
  if (v7)
  {
    if (result)
    {
      v21 = 0x8000000249BE7C00;
      v10 = 0x6465646E61707845;
      v11 = 0x617A696C61636F4CLL;
      v12 = 0xEB00000000656C62;
      v13 = 0xE800000000000000;
      v14.super.isa = v9;
      v15 = 0;
      v16 = 0xE000000000000000;
      v17 = 0xD00000000000002FLL;
LABEL_9:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, *&v11, v14, *&v15, *&v17)._countAndFlagsBits;
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (result)
  {
    v21 = 0x8000000249BE7BC0;
    v10 = 0x657370616C6C6F43;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v17 = 0xD000000000000030;
    v13 = 0xE900000000000064;
    v14.super.isa = v9;
    v15 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

double (*DOCItemCollectionOutlineCell.accessibilityValue.modify(id *a1))(uint64_t a1)
{
  *a1 = DOCItemCollectionOutlineCell.accessibilityValue.getter();
  a1[1] = v2;
  return DOCItemCollectionOutlineCell.accessibilityValue.modify;
}

objc_class *DOCItemCollectionOutlineCell.accessibilityCustomActions.getter()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v34, sel_accessibilityCustomActions);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction, 0x277D75088);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v35 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v5 = *(*&v0[v4] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  if (v0[v6])
  {

    goto LABEL_16;
  }

  v7 = *(*v5 + 208);

  if (v7(v8))
  {
    v9 = (*(*v5 + 376))();
    if (v9)
    {
      v11 = v9;
      v12 = v10;
      v13 = (*(*v5 + 160))();
      result = _DocumentManagerBundle();
      v15 = result;
      if (v13)
      {
        if (result)
        {
          v32 = 0x8000000249BE7CA0;
          v16 = 0x657370616C6C6F43;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v19 = 0xD000000000000038;
          v20 = 0xE800000000000000;
          v21.super.isa = v15;
          v22 = 0;
          v23 = 0xE000000000000000;
LABEL_13:
          v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, *&v17, v21, *&v22, *&v19);

          v25 = swift_allocObject();
          *(v25 + 16) = v11;
          *(v25 + 24) = v12;
          v26 = objc_allocWithZone(MEMORY[0x277D75088]);

          v27 = MEMORY[0x24C1FAD20](v24._countAndFlagsBits, v24._object);

          aBlock[4] = partial apply for closure #1 in DOCItemCollectionOutlineCell.accessibilityCustomActions.getter;
          aBlock[5] = v25;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool);
          aBlock[3] = &block_descriptor_37_1;
          v28 = _Block_copy(aBlock);
          v29 = [v26 initWithName:v27 actionHandler:v28];

          _Block_release(v28);

          v30 = v29;
          MEMORY[0x24C1FB090]();
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11, v12);

          v3 = v35;
          goto LABEL_16;
        }

        __break(1u);
      }

      else if (result)
      {
        v32 = 0x8000000249BE7C30;
        v16 = 0x646E61707845;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v20 = 0xE600000000000000;
        v21.super.isa = v15;
        v22 = 0;
        v23 = 0xE000000000000000;
        v19 = 0xD000000000000036;
        goto LABEL_13;
      }

      __break(1u);
      return result;
    }
  }

LABEL_16:
  if (v3 >> 62)
  {
    v31 = __CocoaSet.count.getter();
  }

  else
  {
    v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {

    return 0;
  }

  return v3;
}

void DOCItemCollectionOutlineCell.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver);
}

id DOCItemCollectionOutlineCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues.colorScheme.setter();
}

Swift::Int specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= result)
  {
LABEL_8:
    v11 = __clz(__rbit64(v5)) | (i << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(a2 + 56) + v11);
    outlined copy of ColumnType(*v12, v14);
    if (v14 == 9)
    {
LABEL_32:

      return MEMORY[0x24C1FCBD0](v8);
    }

    if (v14 <= 3)
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = 4;
        }
      }

      else if (v14)
      {
        if (v14 != 1)
        {
LABEL_31:
          MEMORY[0x24C1FCBD0](1);
          String.hash(into:)();
          outlined consume of ColumnType(v13, v14);
          goto LABEL_29;
        }

        v16 = 2;
      }

      else
      {
        v16 = 0;
      }
    }

    else if (v14 <= 5)
    {
      if (v14 == 4)
      {
        v16 = 5;
      }

      else
      {
        v16 = 6;
      }
    }

    else
    {
      switch(v14)
      {
        case 6:
          v16 = 7;
          break;
        case 7:
          v16 = 8;
          break;
        case 8:
          v16 = 9;
          break;
        default:
          goto LABEL_31;
      }
    }

    MEMORY[0x24C1FCBD0](v16);
LABEL_29:
    v5 &= v5 - 1;
    MEMORY[0x24C1FCBD0](v15);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_32;
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
LABEL_8:
    v11 = (*(a2 + 48) + ((i << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = *v11;
    v13 = v11[1];
    Hasher.init(_seed:)();
    if (v13 <= 3)
    {
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v14 = 3;
        }

        else
        {
          v14 = 4;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
LABEL_30:
          MEMORY[0x24C1FCBD0](1);

          String.hash(into:)();
          goto LABEL_28;
        }

        v14 = 2;
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13 <= 5)
    {
      if (v13 == 4)
      {
        v14 = 5;
      }

      else
      {
        v14 = 6;
      }
    }

    else
    {
      switch(v13)
      {
        case 6:
          v14 = 7;
          break;
        case 7:
          v14 = 8;
          break;
        case 8:
          v14 = 9;
          break;
        default:
          goto LABEL_30;
      }
    }

    MEMORY[0x24C1FCBD0](v14);
LABEL_28:
    v5 &= v5 - 1;
    v15 = Hasher._finalize()();
    result = outlined consume of ColumnType(v12, v13);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C1FCBD0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static DOCItemRowView.ColumnCacheKey.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v12 = *a1;
  v13 = v2;
  v10 = v5;
  v11 = v6;
  outlined copy of ColumnType(v12, v2);
  outlined copy of ColumnType(v5, v6);
  LOBYTE(v5) = specialized static ColumnType.== infix(_:_:)(&v12, &v10);
  outlined consume of ColumnType(v10, v11);
  outlined consume of ColumnType(v12, v13);
  if ((v5 & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v4, v8) & 1) == 0)
  {
    return 0;
  }

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt1g5(v3, v7);
}

void specialized DOCItemRowView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerMaskView) = 0;
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_containerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnCache;
  v3 = MEMORY[0x277D84F90];
  *(v0 + v2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say26DocumentManagerExecutables11ViewSizable_pGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnViews) = v3;
  v4 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnData;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
  *(v0 + v5) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLV_AC0I0OTt0g5Tf4g_n(v3);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnGenerationCount) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_visibleColumns) = v3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_displaySortButtons) = 1;
  v6 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_customNameTitle);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState;
  type metadata accessor for OutlineExpansionState(0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 20) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  ObservationRegistrar.init()();
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState;
  type metadata accessor for OutlineProgressState(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_leadingThumbnailView) = 0;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView;
  type metadata accessor for DOCImageViewContainerView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_cellContent) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_menuButton) = 0;
  v12 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_scrollContext;
  *v12 = 0;
  *(v12 + 8) = 0;
  v13 = *(MEMORY[0x277D768C8] + 16);
  *(v12 + 16) = *MEMORY[0x277D768C8];
  *(v12 + 32) = v13;
  v14 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerToggleAction);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dividerViews) = v3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_identationLevel) = 0;
  v15 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  *(v15 + 24) = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *v15 = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton) = 0;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView;
  v17 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v17 setOpaque_];
  [v17 setSpacing_];
  [v17 setAlignmentOffset_];
  *(v0 + v16) = v17;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView2;
  v19 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v19 setOpaque_];
  [v19 setSpacing_];
  [v19 setAlignmentOffset_];
  *(v0 + v18) = v19;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_statusViewIsInitialized) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_icloudColumnStatusViewIsInitialized) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double outlined consume of LeadingBadge?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

double specialized DOCItemCollectionOutlineCell._preferredSeparatorInsets(forProposedInsets:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 traitCollection];
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();

  v4 = dbl_249BAFF30[v18];
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v11 = *(**(*&v1[v10] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState) + 256);

  v13 = v11(v12);

  if (v13)
  {
    if (v9 == 1 || (v7 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v14 = [objc_opt_self() defaultMetrics];
    [v14 scaledValueForValue_];

    goto LABEL_10;
  }

  if (v9 != 1 && (v7 & 1) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v1 isEditing];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_indentationLevel);
  if (v7)
  {
    v15 = [objc_opt_self() defaultMetrics];
    [v15 scaledValueForValue_];
  }

  return 0.0;
}

uint64_t outlined destroy of Column(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for OutlineScrollContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OutlineScrollContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemRowView.ColumnCacheKey and conformance DOCItemRowView.ColumnCacheKey()
{
  result = lazy protocol witness table cache variable for type DOCItemRowView.ColumnCacheKey and conformance DOCItemRowView.ColumnCacheKey;
  if (!lazy protocol witness table cache variable for type DOCItemRowView.ColumnCacheKey and conformance DOCItemRowView.ColumnCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemRowView.ColumnCacheKey and conformance DOCItemRowView.ColumnCacheKey);
  }

  return result;
}

uint64_t outlined init with copy of Column(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id DOCButtonGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_activeTouches;
  swift_beginAccess();
  v5 = *&v2[v4];

  specialized Set.union<A>(_:)(v6, v5);
  *&v2[v4] = v7;

  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  objc_msgSendSuper2(&v16, sel_touchesBegan_withEvent_, isa, a2);

  [v2 locationInView_];
  v9 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow];
  *v9 = v10;
  *(v9 + 1) = v11;
  v9[16] = 0;
  v12 = *&v2[v4];
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  return [v2 setState_];
}

unint64_t type metadata accessor for UITouch()
{
  result = lazy cache variable for type metadata for UITouch;
  if (!lazy cache variable for type metadata for UITouch)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITouch);
  }

  return result;
}

id DOCButtonGestureRecognizer.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  objc_msgSendSuper2(&v26, sel_touchesMoved_withEvent_, isa, a2);

  v5 = [v2 view];
  if (v5 && (v6 = v5, [v5 bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, objc_msgSend(v2, sel_locationInView_, v6), v27.x = v15, v27.y = v16, v28.origin.x = v8, v28.origin.y = v10, v28.size.width = v12, v28.size.height = v14, v17 = CGRectContainsPoint(v28, v27), v6, v17) && (v18 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow], (v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow + 16] & 1) == 0) && (v19 = *v18, objc_msgSend(v2, sel_locationInView_, 0), v21 = vabdd_f64(v20, v19), objc_msgSend(v2, sel_locationInView_, 0), v21 <= 15.0) && (v18[2] & 1) == 0 && (v22 = v18[1], objc_msgSend(v2, sel_locationInView_, 0), objc_msgSend(v2, sel_locationInView_, 0), vabdd_f64(v23, v22) <= 15.0))
  {
    v24 = 2;
  }

  else
  {
    v24 = 4;
  }

  return [v2 setState_];
}

id DOCButtonGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  specialized Set._subtract<A>(_:)(a1);
  swift_endAccess();
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  objc_msgSendSuper2(&v22, sel_touchesEnded_withEvent_, isa, a2);

  v7 = [v3 view];
  if (v7 && (v8 = v7, [v7 bounds], v10 = v9, v12 = v11, v14 = v13, v16 = v15, objc_msgSend(v3, sel_locationInView_, v8), v23.x = v17, v23.y = v18, v24.origin.x = v10, v24.origin.y = v12, v24.size.width = v14, v24.size.height = v16, v19 = CGRectContainsPoint(v24, v23), v8, v19))
  {
    v20 = 3;
  }

  else
  {
    v20 = 4;
  }

  return [v3 setState_];
}

double @objc DOCButtonGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);

  return result;
}

Swift::Void __swiftcall DOCButtonGestureRecognizer.reset()()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo7UITouchC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v2 = v4;
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_activeTouches;
  swift_beginAccess();
  *&v0[v3] = v2;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  objc_msgSendSuper2(&v5, sel_reset);
}

id DOCButtonGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x28223BE20](v6, v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v2) initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id DOCButtonGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static QuickLookFileIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = static QuickLookFileIntent.attributionBundleIdentifier;

  return v0;
}

double static QuickLookFileIntent.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static QuickLookFileIntent.attributionBundleIdentifier = a1;
  off_27EEED268 = a2;

  return result;
}

double key path setter for static QuickLookFileIntent.attributionBundleIdentifier : QuickLookFileIntent.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static QuickLookFileIntent.attributionBundleIdentifier = v2;
  off_27EEED268 = v1;

  return result;
}

uint64_t key path setter for QuickLookFileIntent.fileEntity : QuickLookFileIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of FINodeEntity(a1, &v11 - v8);
  outlined init with copy of FINodeEntity(v9, v5);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(v9);
}

uint64_t QuickLookFileIntent.fileEntity.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

void (*QuickLookFileIntent.fileEntity.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static QuickLookFileIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables19QuickLookFileIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables19QuickLookFileIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables19QuickLookFileIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables19QuickLookFileIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BE8180;
  v4._countAndFlagsBits = 0xD000000000000024;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables19QuickLookFileIntentV10AppIntents0I9ParameterCyAC12FINodeEntityVGGMd, &_ss7KeyPathCy26DocumentManagerExecutables19QuickLookFileIntentV10AppIntents0I9ParameterCyAC12FINodeEntityVGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent()
{
  result = lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent;
  if (!lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent;
  if (!lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent;
  if (!lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent);
  }

  return result;
}

uint64_t QuickLookFileIntent.fetchURL(for:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for URL();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](QuickLookFileIntent.fetchURL(for:), 0, 0);
}

uint64_t QuickLookFileIntent.fetchURL(for:)()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultManager];
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = OpenItemIntent.fetchURL(for:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVs5Error_pGMd, &_sSccy10Foundation3URLVs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL;
  v0[13] = &block_descriptor_92;
  v0[14] = v4;
  [v3 fetchURLForItem:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t QuickLookFileIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for OpenURLIntent();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for FINodeEntity(0);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](QuickLookFileIntent.perform(), 0, 0);
}

uint64_t QuickLookFileIntent.perform()()
{
  v2 = v0[17];
  v1 = v0[18];
  IntentParameter.wrappedValue.getter();
  v3 = *(v1 + *(v2 + 32));
  v0[19] = v3;
  v4 = v3;
  outlined destroy of FINodeEntity(v1);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = QuickLookFileIntent.perform();
  v6 = v0[16];

  return QuickLookFileIntent.fetchURL(for:)(v6, v4);
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = OpenItemIntent.perform();
  }

  else
  {
    v2 = QuickLookFileIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[19];
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];
    outlined destroy of CharacterSet?(v0[8], &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v7 + 8))(v5, v6);
LABEL_5:

    v18 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[7];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  URLComponents.scheme.setter();
  URLComponents.url.getter();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[12];
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];
    outlined destroy of CharacterSet?(v0[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v12, v13);
    goto LABEL_5;
  }

  v19 = v0[15];
  v32 = v0[16];
  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[12];
  v31 = v0[11];
  v23 = v0[10];
  v29 = v0[19];
  v30 = v0[9];
  v25 = v0[5];
  v24 = v0[6];
  v26 = v0[4];
  (*(v20 + 32))(v19);
  (*(v20 + 16))(v21, v19, v22);
  OpenURLIntent.init(_:)();
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type OpenURLIntent and conformance OpenURLIntent, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  static IntentResult.result<A>(opensIntent:)();

  (*(v25 + 8))(v24, v26);
  v27 = *(v20 + 8);
  v27(v19, v22);
  (*(v23 + 8))(v31, v30);
  v27(v32, v22);

  v18 = v0[1];
LABEL_7:

  return v18();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance QuickLookFileIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LocalizedStringResource();
  v4 = __swift_project_value_buffer(v3, static QuickLookFileIntent.title);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for AppIntent.perform() in conformance QuickLookFileIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return QuickLookFileIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance QuickLookFileIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of QuickLookFileIntent.init(fileEntity:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance QuickLookFileIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t default argument 0 of QuickLookFileIntent.init(fileEntity:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v41 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v39 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd, &_s26DocumentManagerExecutables12FINodeEntityVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v38 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v36 = &v35 - v14;
  v15 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v24 = type metadata accessor for LocalizedStringResource();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v35 = &v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd, &_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = *MEMORY[0x277CC9110];
  v29 = *(v16 + 104);
  v29(v19, v28, v15);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29(v19, v28, v15);
  v30 = v36;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v25 + 56))(v30, 0, 1, v24);
  v31 = type metadata accessor for FINodeEntity(0);
  (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
  v32 = type metadata accessor for IntentDialog();
  v33 = *(*(v32 - 8) + 56);
  v33(v39, 1, 1, v32);
  v33(v40, 1, 1, v32);
  (*(v42 + 104))(v41, *MEMORY[0x277CBA308], v43);
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

Swift::Bool __swiftcall DOCGridLayoutDebuggingEnabled()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BC82B0);
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t withDOCGridLayoutAssertsInvalidTypeRequestsDisabled<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = swift_beginAccess();
  DOCGridLayoutAssertsInvalidTypeRequests = 0;
  result = a1(v2);
  DOCGridLayoutAssertsInvalidTypeRequests = 1;
  return result;
}

void __swiftcall DOCAnalyticsConnectToServerShownEvent.init(bundleID:origin:)(DocumentManagerExecutables::DOCAnalyticsConnectToServerShownEvent *__return_ptr retstr, Swift::String_optional bundleID, DocumentManagerExecutables::DOCAnalyticsConnectToServerShownEvent::Origin origin)
{
  v3 = *origin;
  retstr->name._countAndFlagsBits = 0xD000000000000038;
  retstr->name._object = 0x8000000249BC9EA0;
  retstr->bundleID = bundleID;
  retstr->origin = v3;
}

uint64_t DOCAnalyticsConnectToServerShownEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t (*DOCAnalyticsConnectToServerShownEvent.propertiesBuilder.getter())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v7 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  outlined init with copy of DOCAnalyticsConnectToServerShownEvent(v6, v5);
  return partial apply for implicit closure #2 in implicit closure #1 in DOCAnalyticsConnectToServerShownEvent.propertiesBuilder.getter;
}

unint64_t implicit closure #2 in implicit closure #1 in DOCAnalyticsConnectToServerShownEvent.propertiesBuilder.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0x6E696769726FLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);
  return v1;
}

uint64_t DOCAnalyticsConnectToServerShownEvent.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void DOCAnalyticsConnectToServerShownEvent.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t (*protocol witness for DOCAnalyticsEventProtocol.propertiesBuilder.getter in conformance DOCAnalyticsConnectToServerShownEvent())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v7 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  outlined init with copy of DOCAnalyticsConnectToServerShownEvent(v6, v5);
  return implicit closure #2 in implicit closure #1 in DOCAnalyticsConnectToServerShownEvent.propertiesBuilder.getterpartial apply;
}

DocumentManagerExecutables::DOCAnalyticsConnectToServerShownEvent::Origin_optional __swiftcall DOCAnalyticsConnectToServerShownEvent.Origin.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsConnectToServerShownEvent.Origin and conformance DOCAnalyticsConnectToServerShownEvent.Origin()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsConnectToServerShownEvent.Origin and conformance DOCAnalyticsConnectToServerShownEvent.Origin;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsConnectToServerShownEvent.Origin and conformance DOCAnalyticsConnectToServerShownEvent.Origin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsConnectToServerShownEvent.Origin and conformance DOCAnalyticsConnectToServerShownEvent.Origin);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCUSBFormattingErrorCode()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCUSBFormattingErrorCode(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](1);
  return Hasher._finalize()();
}

void *DOCOperationManager.operation(for:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      if (closure #1 in DOCOperationManager.operation(for:)(&v12, a1, a2))
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

uint64_t closure #1 in DOCOperationManager.operation(for:)(void **a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);

  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F6974617265706FLL, 0xEF293A726F66286ELL, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v25);
    *(v10 + 22) = 2080;
    v11 = a2;
    v12 = [*&v7[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    a2 = v11;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s identifer=%s source identifier=%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  v17 = [*&v7[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == a2 && v20 == a3)
  {
    v22 = 1;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v22 & 1;
}

double DOCOperationManager.enqueue(operation:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = a1;
  MEMORY[0x24C1FB090]();
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  aBlock[4] = partial apply for closure #1 in DOCOperationManager.enqueue(operation:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_43_1;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);

  return result;
}

uint64_t DOCOperationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall SKDisk.doc_canErase()()
{
  v1 = [v0 filesystemType];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_15;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v5)
  {
LABEL_15:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return 0;
  }

  if (v6 == v3 && v5 == v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v3 || v5 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return (v12 & 1) != 0;
    }

    goto LABEL_17;
  }

LABEL_18:

  return 1;
}

id SKDisk.doc_volumeName.getter()
{
  v1 = [v0 volumeName];
  if (v1)
  {
    v2 = v1;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:
    v8 = countAndFlagsBits;

    return v8;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v9._object = 0x8000000249BE83A0;
    v5._countAndFlagsBits = 0x64656C7469746E55;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v5._object = 0xE800000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0xD000000000000025;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v2, v7, v9)._countAndFlagsBits;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id SKDisk.doc_volumeDescriptor(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 filesystemType];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_15;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v10)
  {
LABEL_15:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return 0;
  }

  if (v11 == v8 && v10 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v10 == v15)
      {

        goto LABEL_21;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
LABEL_21:
        result = [v3 filesystem];
        if (result)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      return 0;
    }
  }

  result = [v3 filesystem];
  if (result)
  {
LABEL_19:
    v19 = result;
    v20 = MEMORY[0x24C1FAD20](a1, a2);
    v21 = [objc_opt_self() descriptorWithName:v20 filesystem:v19];

    return v21;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCUSBEraseOperation.State@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized DOCUSBEraseOperation.State.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t DOCUSBEraseOperation.isFinished.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCUSBEraseOperation.isFinished.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCUSBEraseOperation.newDisplayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName);

  return v1;
}

void *DOCUSBEraseOperation.newFileSystem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem);
  v2 = v1;
  return v1;
}

uint64_t DOCUSBEraseOperation.newPassword.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword);

  return v1;
}

uint64_t key path getter for DOCUSBEraseOperation.completionHandler : DOCUSBEraseOperation@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCDocumentSource?, @guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCUSBEraseOperation.completionHandler : DOCUSBEraseOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

uint64_t DOCUSBEraseOperation.completionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1, v1[1]);
  return v2;
}

uint64_t DOCUSBEraseOperation.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v7);
}

id DOCUSBEraseOperation.__allocating_init(source:newDisplayName:newFileSystem:newPassword:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_operationState] = 0;
  v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished] = 0;
  v14 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler];
  *v14 = 0;
  v14[1] = 0;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] = a1;
  v15 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName];
  *v15 = a2;
  v15[1] = a3;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem] = a4;
  v16 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword];
  *v16 = a5;
  v16[1] = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id DOCUSBEraseOperation.init(source:newDisplayName:newFileSystem:newPassword:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_operationState] = 0;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished] = 0;
  v7 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler];
  *v7 = 0;
  v7[1] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] = a1;
  v8 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName];
  *v8 = a2;
  v8[1] = a3;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem] = a4;
  v9 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword];
  *v9 = a5;
  v9[1] = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for DOCUSBEraseOperation();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t DOCUSBEraseOperation.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(50);
  MEMORY[0x24C1FAEA0](0x3D656372756F73, 0xE700000000000000);
  v2 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x24C1FAEA0](v3, v5);

  MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249BE83D0);
  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName);
  v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v6);

  v7 = MEMORY[0x24C1FAEA0](0x73696E6946736920, 0xEC0000003D646568);
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v7);
  v9 = (v8 & 1) == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x24C1FAEA0](v10, v11);

  MEMORY[0x24C1FAEA0](0x3D657461747320, 0xE700000000000000);
  [v1 operationState];
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t DOCUSBEraseOperation.identifier.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source) identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id static DOCUSBEraseOperation.disk(forDomain:)(void *a1)
{
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v3 = result;
    v4 = specialized SKManager.doc_disk(forDomainIdentifier:)(a1);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DOCUSBEraseOperation.disk(forSource:)(void *a1)
{
  v2 = [a1 identifier];
  v3 = (*(v1 + 200))();

  return v3;
}

Swift::Void __swiftcall DOCUSBEraseOperation.perform()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source];
  v2 = [v1 identifier];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;
  v5 = [v1 identifier];
  v6 = [objc_opt_self() sharedManager];
  if (!v6)
  {
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = specialized SKManager.doc_disk(forDomainIdentifier:)(v5);

  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v28;
    aBlock = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    MEMORY[0x24C1FAEA0](0xD000000000000036, 0x8000000249BE83F0);
    v84 = v2;
    type metadata accessor for FPProviderDomainID(0);
    _print_unlocked<A, B>(_:_:)();
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v29);

    v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v31 = MEMORY[0x24C1FAD20](0xD00000000000002DLL, 0x8000000249BE8370);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = [v30 initWithDomain:v31 code:1 userInfo:isa];

    v34 = MEMORY[0x277D85000];
    v35 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
    v36 = v33;
    v35(1);
    v37 = (*((*v34 & *v4) + 0xA0))([v4 setOperationState_]);
    if (v37)
    {
      v39 = v37;
      v40 = v38;
      v37(0, v36);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v39, v40);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.Rename);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v77 = v3;
  if (os_log_type_enabled(v11, v12))
  {
    v76 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v10;
    v17 = v15;
    v84 = v15;
    *v13 = 138412802;
    *(v13 + 4) = v16;
    *v14 = v8;
    *(v13 + 12) = 2080;
    v75 = v16;
    v18 = v16;
    aBlock = [v18 filesystem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12SKFilesystemCSgMd, &_sSo12SKFilesystemCSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v84);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v22 = [v18 filesystemType];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    aBlock = v24;
    v79 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v41 = String.init<A>(describing:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v84);

    *(v13 + 24) = v43;
    _os_log_impl(&dword_2493AC000, v11, v12, "[Erase] disk: %@ filesystem: %s filesystemType: %s", v13, 0x20u);
    outlined destroy of CharacterSet?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);

    v2 = v76;
    v10 = v75;
  }

  else
  {
  }

  v44 = _DocumentManagerBundle();
  if (!v44)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v45 = v44;
  v85._object = 0x8000000249BE83A0;
  v46._countAndFlagsBits = 0x64656C7469746E55;
  v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v47.value._object = 0xEB00000000656C62;
  v46._object = 0xE800000000000000;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0xD000000000000025;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v85);
  countAndFlagsBits = v49._countAndFlagsBits;
  object = v49._object;

  v52 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem];
  if (v52)
  {
    v53 = v52;
    v54 = [v53 isEncrypted];
    v55 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName];
    v56 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName + 8];
    if (v54)
    {
      if (v56)
      {
        countAndFlagsBits = *v55;

        object = v56;
      }

      v57 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword];
      v58 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword + 8];
      v59 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      v60 = MEMORY[0x24C1FAD20](v57, v58);
      v61 = [objc_opt_self() descriptorWithName:v59 password:v60 filesystem:v53];
    }

    else
    {
      if (v56)
      {
        countAndFlagsBits = *v55;

        object = v56;
      }

      v60 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      v61 = [objc_opt_self() descriptorWithName:v60 filesystem:v53];
    }
  }

  else
  {

    v62 = SKDisk.doc_volumeName.getter();
    v61 = SKDisk.doc_volumeDescriptor(name:)(v62, v63);

    if (!v61)
    {

      return;
    }
  }

  v64 = v61;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for SKEraseVolume, 0x277D699E0);
  v65 = v10;
  v66 = v64;
  v67 = specialized @nonobjc SKEraseVolume.__allocating_init(childDisk:descriptor:)(v65, v66);

  v68 = [objc_opt_self() forceUnmount];
  v69 = [v68 isEnabled];

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 67109376;
    *(v72 + 4) = v69;
    *(v72 + 8) = 1024;
    *(v72 + 10) = v69;
    _os_log_impl(&dword_2493AC000, v70, v71, "[Erase] Force unmount is enabled=%{BOOL}d, setting SKEraseVolume.forceUnmount to %{BOOL}d", v72, 0xEu);
    MEMORY[0x24C1FE850](v72, -1, -1);
  }

  [v67 setForceUnmount_];
  v82 = partial apply for closure #1 in DOCUSBEraseOperation.perform();
  v83 = v77;
  aBlock = MEMORY[0x277D85DD0];
  v79 = 1107296256;
  v80 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v81 = &block_descriptor_93;
  v73 = _Block_copy(&aBlock);

  v74 = [v67 eraseProgressReportingWithCompletionBlock_];

  _Block_release(v73);
}

void closure #1 in DOCUSBEraseOperation.perform()(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v64 = a1;
    [a3 setOperationState_];
    v4 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem);
    if (!v4)
    {
LABEL_18:

      return;
    }

    v5 = v4;
    if ([v5 isEncrypted])
    {
      v6 = [objc_opt_self() sharedConnection];
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = a3;
        v70 = partial apply for closure #1 in closure #1 in DOCUSBEraseOperation.perform();
        v71 = v8;
        aBlock = MEMORY[0x277D85DD0];
        v67 = 1107296256;
        v68 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?, @guaranteed [AnyHashable : Any]?) -> ();
        v69 = &block_descriptor_100;
        v9 = _Block_copy(&aBlock);
        v10 = a3;

        [v7 providerDomainsCompletionHandler_];

        _Block_release(v9);
        return;
      }

      goto LABEL_18;
    }

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.Rename);
    v28 = v64;
    v29 = a3;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v72 = v65;
      *v32 = 136315906;
      v33 = v28;
      v34 = [v33 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v72);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      v39 = [v33 mountPoint];
      if (v39)
      {
        v40 = v39;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      aBlock = v41;
      v67 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v72);

      *(v32 + 14) = v46;
      *(v32 + 22) = 2080;
      v47 = [v33 volumeUUID];
      if (v47)
      {
        v48 = v47;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      aBlock = v49;
      v67 = v51;
      v52 = String.init<A>(describing:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v72);

      *(v32 + 24) = v54;
      *(v32 + 32) = 2080;
      v55 = [*(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source) identifier];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v72);

      *(v32 + 34) = v59;
      _os_log_impl(&dword_2493AC000, v30, v31, "[Erase] success! New disk %s mountpoint=%s volumeUUID=%s  old source identifier=%s", v32, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v65, -1, -1);
      MEMORY[0x24C1FE850](v32, -1, -1);
    }

    v60 = swift_allocObject();
    *(v60 + 16) = v29;
    *(v60 + 24) = v28;
    v70 = partial apply for closure #2 in closure #1 in DOCUSBEraseOperation.perform();
    v71 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v69 = &block_descriptor_94_1;
    v61 = _Block_copy(&aBlock);
    v62 = v28;
    v63 = v29;

    [v62 mountWithCompletionBlock_];
    _Block_release(v61);
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.Rename);
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock = v17;
      *v16 = 136315138;
      v72 = a2;
      v18 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &aBlock);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2493AC000, v14, v15, "[Erase] failed with error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    v22 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *a3) + 0x90))(1);
    v23 = (*((*v22 & *a3) + 0xA0))([a3 setOperationState_]);
    if (v23)
    {
      v25 = v23;
      v26 = v24;
      v23(0, a2);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25, v26);
    }
  }
}

void closure #1 in closure #1 in DOCUSBEraseOperation.perform()(void *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return;
  }

  specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(a2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a3;
  v8 = specialized _NativeDictionary.filter(_:)(v6, v7);

  v9 = specialized Collection.first.getter(v8);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v13 = v8[2];

    if (v13 == 1)
    {
      v14 = one-time initialization token for Rename;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.Rename);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v20 = 136315138;
        v21 = v17;
        v22 = [v21 description];
        osloga = v17;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

        *(v20 + 4) = v26;
        v17 = osloga;
        _os_log_impl(&dword_2493AC000, v18, v19, "new encrypted volume %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x24C1FE850](v36, -1, -1);
        MEMORY[0x24C1FE850](v20, -1, -1);
      }

      v27 = objc_opt_self();
      v28 = MEMORY[0x24C1FAD20](*&v7[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword], *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword + 8]);
      v29 = swift_allocObject();
      *(v29 + 16) = a1;
      *(v29 + 24) = v7;
      aBlock[4] = partial apply for closure #2 in closure #1 in closure #1 in DOCUSBEraseOperation.perform();
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_106;
      v30 = _Block_copy(aBlock);
      v31 = v7;
      v32 = a1;

      [v27 unlockDomain:v17 withPassword:v28 saveToKeychain:0 completionHandler:v30];
      _Block_release(v30);

      return;
    }
  }

  else
  {
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.Rename);
  oslog = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v34, "[Erase] encrypted volume: unlock failed, unable to find an FPDomain matching our new volume)", v35, 2u);
    MEMORY[0x24C1FE850](v35, -1, -1);
  }
}

void (*closure #2 in closure #1 in closure #1 in DOCUSBEraseOperation.perform()(int a1, id a2, void *a3))(uint64_t, id)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.Rename);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2493AC000, v8, v9, "[Erase] encrypted volume: unlock failed with error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    else
    {
    }
  }

  v16 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source);
  v17 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a3) + 0x90))(1);
  result = (*((*v17 & *a3) + 0xA0))([a3 setOperationState_]);
  if (result)
  {
    v20 = result;
    v21 = v19;
    result(v16, a2);
    return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v20, v21);
  }

  return result;
}

void closure #2 in closure #1 in DOCUSBEraseOperation.perform()(void *a1, void *a2, void *a3)
{
  sleep(1u);
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.Rename);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v43 = v12;
      *v11 = 136315138;
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v43);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2493AC000, v9, v10, "[Erase] mount failed with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1FE850](v12, -1, -1);
      MEMORY[0x24C1FE850](v11, -1, -1);
    }

    v17 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source);
    v18 = MEMORY[0x277D85000];
    v19 = *((*MEMORY[0x277D85000] & *a2) + 0x90);
    v20 = a1;
    v19(1);
    v21 = (*((*v18 & *a2) + 0xA0))([a2 setOperationState_]);
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v21(v17, a1);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v23, v24);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.Rename);
    v26 = a3;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136315138;
      v31 = v26;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v43);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_2493AC000, v27, v28, "[Erase] mount success! Mounted new disk %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    v37 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source);
    v38 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *a2) + 0x90))(1);
    v39 = (*((*v38 & *a2) + 0xA0))([a2 setOperationState_]);
    if (v39)
    {
      v41 = v39;
      v42 = v40;
      v39(v37, 0);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v41, v42);
    }
  }
}

id DOCUSBEraseOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCUSBEraseOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUSBEraseOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCUSBFormatting.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for DOCOperationManager();
  swift_allocObject();
  *(v0 + 16) = DOCOperationManager.init()();
  return v0;
}

uint64_t DOCUSBFormatting.formattableFileSystems(for:)(void *a1)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for SKEraseVolume, 0x277D699E0);
  v2 = a1;
  v3 = specialized @nonobjc SKEraseVolume.__allocating_init(childDisk:)(v2);

  v4 = [v3 formattableFilesystems];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for SKFilesystem, 0x277D699E8);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

Swift::Bool __swiftcall DOCUSBFormatting.canErase(domain:)(__C::FPProviderDomainID domain)
{
  v3 = [objc_opt_self() usbRenameErase];
  v4 = [v3 isEnabled];

  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static DOCUSBFormatting.shared + 128))())
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.Rename);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BE8480, &v26);
    _os_log_impl(&dword_2493AC000, v7, v8, "[Erase] %s erase is not supported while there is an ongoing erase operation", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    v11 = v9;
LABEL_17:
    MEMORY[0x24C1FE850](v11, -1, -1);
LABEL_18:

    goto LABEL_19;
  }

  v12 = [objc_opt_self() sharedManager];
  if (!v12)
  {
    __break(1u);
    return v12;
  }

  v13 = v12;
  v14 = specialized SKManager.doc_disk(forDomainIdentifier:)(domain._rawValue);

  if (!v14)
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.Rename);
    v16 = domain._rawValue;
    v7 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v17))
    {
      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BE8480, &v26);
    *(v18 + 12) = 2080;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_2493AC000, v7, v17, "[Erase] %s Failed to find an SKDisk for domain id: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v19, -1, -1);
    v11 = v18;
    goto LABEL_17;
  }

  if ([v14 isInternal])
  {

LABEL_19:
    LOBYTE(v12) = 0;
    return v12;
  }

  v23 = (*(*v5 + 88))(v14);
  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LOBYTE(v12) = v24 != 0;
  return v12;
}

void DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [a1 identifier];
  v15 = [objc_opt_self() sharedManager];
  if (v15)
  {
    v16 = v15;
    v42 = specialized SKManager.doc_disk(forDomainIdentifier:)(v14);

    if (v42)
    {
      v40 = a2;
      v41 = a4;
      v17 = swift_allocObject();
      v17[2] = a1;
      v17[3] = v7;
      v17[4] = a6;
      v17[5] = a7;
      v18 = objc_opt_self();
      v19 = a1;

      v20 = [v18 usbEraseDialog];
      v21 = [v20 isEnabled];

      v22 = [v19 displayName];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (v21)
      {
        MEMORY[0x28223BE20](v26, v27);
        v39[2] = v7;
        v39[3] = v42;
        v28 = swift_allocObject();
        *(v28 + 16) = partial apply for closure #1 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:);
        *(v28 + 24) = v17;
        objc_allocWithZone(type metadata accessor for DOCEraseViewController());

        DOCEraseViewController.init(currentName:configState:preflight:completion:)(v23, v25, partial apply for closure #2 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v39, closure #3 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), 0, partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:), v28);
        v30 = v29;
        v31 = v41;
        [v41 setModalPresentationStyle_];
        [v31 presentViewController:v30 animated:1 completion:0];
      }

      else
      {
        v32 = swift_allocObject();
        *(v32 + 16) = a6;
        *(v32 + 24) = a7;
        v33 = swift_allocObject();
        v34 = v40;
        v33[2] = v19;
        v33[3] = v34;
        v33[4] = a3;
        v33[5] = v7;
        v33[6] = a6;
        v33[7] = a7;
        v35 = v41;
        v33[8] = v41;

        v36 = v35;
        swift_retain_n();
        v37 = v19;

        v38 = specialized DOCUSBFormatting.createFirstAlert(displayName:dismissHandler:confirmationHandler:)(v23, v25, partial apply for closure #5 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v32, partial apply for closure #6 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v33);

        [v36 presentViewController:v38 animated:1 completion:0];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedManager];
  if (v10)
  {
    v11 = v10;
    v12 = (*(*a1 + 232))();
    v58 = a5;
    v59 = a3;
    if (v12 > 1)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v15;
    }

    else
    {
      if (v12)
      {
        v13 = 0xD000000000000017;
      }

      else
      {
        v13 = 0xD000000000000018;
      }

      if (v12)
      {
        v14 = 0x8000000249BE8620;
      }

      else
      {
        v14 = 0x8000000249BE8640;
      }
    }

    v16 = MEMORY[0x24C1FAD20](v13, v14);

    v18 = (*(*a1 + 376))(v17);
    v19 = [v11 filesystemWithSKType:v16 isCaseSensitive:v18 & 1 isEncrypted:(*(*a1 + 280))() & 1];

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v57 = a4;
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.Rename);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v56 = a2;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v60 = v25;
      *v24 = 136315138;
      if (v21)
      {
        v26 = [v21 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v29 = 0xE600000000000000;
        v27 = 0x3E656E6F6E3CLL;
      }

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v60);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2493AC000, v22, v23, "erasing with format %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    v31 = (*(*a1 + 664))();
    v33 = v32;
    v34 = *(*a1 + 328);
    v35 = v21;
    v36 = v34();
    v38 = v37;
    v39 = type metadata accessor for DOCUSBEraseOperation();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_operationState] = 0;
    v40[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished] = 0;
    v41 = &v40[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler];
    *v41 = 0;
    v41[1] = 0;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] = v56;
    v42 = &v40[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName];
    *v42 = v31;
    v42[1] = v33;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem] = v19;
    v43 = &v40[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword];
    *v43 = v36;
    v43[1] = v38;
    v61.receiver = v40;
    v61.super_class = v39;
    v44 = v56;
    v45 = objc_msgSendSuper2(&v61, sel_init);
    v46 = swift_allocObject();
    v46[2] = v59;
    v46[3] = v45;
    v46[4] = v57;
    v46[5] = v58;
    v47 = *((*MEMORY[0x277D85000] & *v45) + 0xA8);

    v48 = v45;

    v47(partial apply for closure #1 in closure #1 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v46);
    v49 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v60 = v54;
      *v52 = 136315394;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000067, 0x8000000249BE8890, &v60);
      *(v52 + 12) = 2112;
      *(v52 + 14) = v49;
      *v53 = v45;
      v55 = v49;
      _os_log_impl(&dword_2493AC000, v50, v51, "%s: [Erase] Adding USB Erase Operation %@", v52, 0x16u);
      outlined destroy of CharacterSet?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v52, -1, -1);
    }

    DOCOperationManager.enqueue(operation:)(v49);
  }

  else
  {
    __break(1u);
  }
}

double closure #2 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a2 + 88))(a3);
  v6 = [a3 filesystemType];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = specialized USBFormat.init(skType:)(v8, v10);
    (*(*a1 + 680))(v5);

    if (v11 == 4)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    (*(*a1 + 696))(v12, 1);
  }

  else
  {
  }

  return result;
}

uint64_t closure #3 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, void *, void, void, uint64_t (*)(), void, void, void, uint64_t), uint64_t a3, uint64_t a4)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() sharedManager];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = (*(*a1 + 232))();
  if (v9 > 1)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v12;
  }

  else
  {
    if (v9)
    {
      v10 = 0xD000000000000017;
    }

    else
    {
      v10 = 0xD000000000000018;
    }

    if (v9)
    {
      v11 = 0x8000000249BE8620;
    }

    else
    {
      v11 = 0x8000000249BE8640;
    }
  }

  v13 = MEMORY[0x24C1FAD20](v10, v11);

  v15 = (*(*a1 + 376))(v14);
  v16 = [v8 filesystemWithSKType:v13 isCaseSensitive:v15 & 1 isEncrypted:(*(*a1 + 280))() & 1];

  if (!v16)
  {
    return 1;
  }

  v17 = *(*a1 + 664);
  v18 = v16;
  v19 = v17();
  v20 = MEMORY[0x24C1FAD20](v19);

  v42[0] = 0;
  v21 = [v18 isValidName:v20 error:v42];

  if (v21)
  {
    v22 = v42[0];

    return 1;
  }

  v40 = a4;
  v24 = v42[0];
  v25 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v42[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  swift_dynamicCast();
  v26 = [v41 localizedDescription];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [v41 localizedFailureReason];
  if (v30)
  {
    v31 = a2;
  }

  else
  {
    v30 = [v41 localizedRecoverySuggestion];
    v31 = a2;
    if (!v30)
    {
      v33 = 0;
      v35 = 0xE000000000000000;
      goto LABEL_18;
    }
  }

  v32 = v30;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

LABEL_18:
  v36 = [objc_opt_self() mainBundle];
  v43._object = 0xEE006E6F69746361;
  v43._countAndFlagsBits = 0x20746C7561666544;
  v37._countAndFlagsBits = 19279;
  v37._object = 0xE200000000000000;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v43);

  v31(v27, v29, v33, v35, v39._countAndFlagsBits, v39._object, 0, 0, closure #1 in closure #3 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), 0, 0, 0, v40);

  return 0;
}

void closure #6 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a6;

  v15 = [a1 displayName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in closure #6 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:);
  *(v20 + 24) = v14;

  v21 = specialized DOCUSBFormatting.createSecondAlert(displayName:dismissHandler:confirmationHandler:)(v16, v18, partial apply for closure #2 in closure #6 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v19, partial apply for thunk for @callee_guaranteed () -> (), v20);

  [a7 presentViewController:v21 animated:1 completion:0];
}

void closure #1 in closure #6 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DOCUSBEraseOperation();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_operationState] = 0;
  v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished] = 0;
  v14 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler];
  *v14 = 0;
  v14[1] = 0;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] = a1;
  v15 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName];
  *v15 = a2;
  v15[1] = a3;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem] = 0;
  v16 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v31.receiver = v13;
  v31.super_class = v12;
  v17 = a1;

  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = v18;
  v19[4] = a5;
  v19[5] = a6;
  v20 = *((*MEMORY[0x277D85000] & *v18) + 0xA8);

  v21 = v18;

  v20(partial apply for closure #1 in closure #1 in closure #6 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v19);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.Rename);
  v23 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000067, 0x8000000249BE8890, &v30);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v18;
    v29 = v23;
    _os_log_impl(&dword_2493AC000, v24, v25, "%s: [Erase] Adding USB Erase Operation %@", v26, 0x16u);
    outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1FE850](v28, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  DOCOperationManager.enqueue(operation:)(v23);
}

uint64_t closure #1 in closure #1 in DOCUSBFormatting.performErase(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  (*(*a3 + 168))(a4);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.Rename);
  v10 = a4;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v24 = a2;
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v22 = v10;
    *(v13 + 12) = 2080;
    v14 = (*(*a3 + 152))(v10);
    v15 = type metadata accessor for DOCUSBEraseOperation();
    v16 = MEMORY[0x24C1FB0D0](v14, v15);
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v25);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_2493AC000, v11, v12, "[Erase] Removed finished USB Erase operation %@ from queue: %s", v13, 0x16u);
    outlined destroy of CharacterSet?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C1FE850](v23, -1, -1);
    v20 = v13;
    a2 = v24;
    MEMORY[0x24C1FE850](v20, -1, -1);
  }

  return a5(a2);
}

unint64_t DOCUSBFormatting.currentOperation.getter()
{
  result = (*(*v0 + 152))();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v4 = result;
  v5 = __CocoaSet.count.getter();
  result = v4;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x24C1FC540](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(result + 32);
LABEL_6:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCUSBFormatting.hasOperation(for:)(Swift::String a1)
{
  v2 = (*(*v1 + 160))(a1._countAndFlagsBits, a1._object);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

void DOCUSBFormatting.removeOperation(_:)(void *a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = a1;
  v5 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v3 + 24), v4);

  v7 = *(v3 + 24);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (v8 >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v5)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v5, v6, v8);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DOCUSBFormatting.removeOperation(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 16);
  swift_beginAccess();

  v5 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v4 + 24), countAndFlagsBits, object);

  v7 = *(v4 + 24);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (v8 >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v5)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v5, v6, v8);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

uint64_t DOCUSBFormatting.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCUSBFormatting.init()()
{
  type metadata accessor for DOCOperationManager();
  swift_allocObject();
  *(v0 + 16) = DOCOperationManager.init()();
  return v0;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySo18FPProviderDomainIDaSo0iJ0CG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_So18iJ14IDa_So0hI0CTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiKIsgnndzo_Tf1nc_n080_s26DocumentManagerExecutables20DOCUSBEraseOperationC7performyyFySo6SKDiskCSg_s5x45_pSgtcfU_yAI_SDys11AnyHashableVypGSgtYbcfU_SbsiJ29IDa3key_So0kL0C5valuet_tXEfU_0Z18ManagerExecutables20DOCUSBEraseOperationCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18FPProviderDomainIDaSo0cD0CGMd, &_ss18_DictionaryStorageCySo18FPProviderDomainIDaSo0cD0CGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v30 = a1;
  v31 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v32 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);
    v18 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    v33 = v16;
    v19 = v17;
    String.hash(into:)();
    v20 = Hasher._finalize()();

    result = v18;
    v21 = -1 << *(v18 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v18 + 48) + 8 * v24) = v33;
    *(*(v18 + 56) + 8 * v24) = v19;
    ++*(v18 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    a1 = v30;
    v4 = v31;
    v9 = v32;
    if (!v5)
    {
      return result;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return result;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v32 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id specialized SKManager.doc_disk(forDomain:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 storageURLs];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v9 + 16))
  {

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.Rename);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BE8990, &v28);
      *(v19 + 12) = 2080;
      v21 = v16;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v28);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_2493AC000, v17, v18, "%s: Provider domain %s contained no storageURLs", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    return 0;
  }

  (*(v3 + 16))(v7, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v11 = result;
    v12 = URL.path.getter();
    v13 = MEMORY[0x24C1FAD20](v12);

    v14 = [v11 diskForPath_];

    (*(v3 + 8))(v7, v2);
    return v14;
  }

  __break(1u);
  return result;
}

id specialized SKManager.doc_disk(forDomainIdentifier:)(void *a1)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
  v2 = a1;
  v3 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v2, 1);

  v4 = v3;
  v5 = specialized SKManager.doc_disk(forDomain:)(v4);

  return v5;
}

id specialized @nonobjc SKEraseVolume.__allocating_init(childDisk:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() eraseVolumeWithChildDisk:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id specialized DOCUSBFormatting.createFirstAlert(displayName:dismissHandler:confirmationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = result;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v64._object = 0x8000000249BE8680;
  v15._countAndFlagsBits = 0x80E2206573617245;
  v15._object = 0xAF3F9D80E240259CLL;
  v64._countAndFlagsBits = 0xD000000000000022;
  v14.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249B9A480;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 64) = v19;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v20 = static String.localizedStringWithFormat(_:_:)();
  v22 = v21;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = result;
  v65._object = 0x8000000249BE8710;
  v24._object = 0x8000000249BE86B0;
  v65._countAndFlagsBits = 0xD00000000000002FLL;
  v24._countAndFlagsBits = 0x100000000000005CLL;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v65);

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_249B9A480;
  *(v27 + 56) = v18;
  *(v27 + 64) = v19;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;

  v28 = static String.localizedStringWithFormat(_:_:)();
  v30 = v29;

  v31 = MEMORY[0x24C1FAD20](v20, v22);

  v32 = MEMORY[0x24C1FAD20](v28, v30);

  v33 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v34 = result;
  v66._object = 0x8000000249BD2AF0;
  v35._countAndFlagsBits = 0x6C65636E6143;
  v35._object = 0xE600000000000000;
  v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v36.value._object = 0xEB00000000656C62;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0xD00000000000001BLL;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v66);

  result = _DocumentManagerBundle();
  if (result)
  {
    v39 = result;
    v67._object = 0x8000000249BE8740;
    v40._countAndFlagsBits = 0x6573617245;
    v67._countAndFlagsBits = 0xD00000000000002DLL;
    v40._object = 0xE500000000000000;
    v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v41.value._object = 0xEB00000000656C62;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v67);

    v44 = swift_allocObject();
    *(v44 + 16) = v54;
    *(v44 + 24) = v55;

    v45 = MEMORY[0x24C1FAD20](v38._countAndFlagsBits, v38._object);

    v62 = thunk for @callee_guaranteed () -> ()partial apply;
    v63 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v61 = &block_descriptor_55_4;
    v46 = _Block_copy(&aBlock);

    v47 = objc_opt_self();
    v48 = [v47 actionWithTitle:v45 style:0 handler:v46];
    _Block_release(v46);

    v49 = swift_allocObject();
    *(v49 + 16) = v56;
    *(v49 + 24) = v57;

    v50 = MEMORY[0x24C1FAD20](v43._countAndFlagsBits, v43._object);

    v62 = partial apply for thunk for @callee_guaranteed () -> ();
    v63 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v61 = &block_descriptor_61_1;
    v51 = _Block_copy(&aBlock);

    v52 = [v47 actionWithTitle:v50 style:2 handler:v51];
    _Block_release(v51);

    v53 = v33;
    [v53 addAction_];
    [v53 addAction_];
    [v53 setPreferredAction_];

    return v53;
  }

LABEL_9:
  __break(1u);
  return result;
}

id specialized @nonobjc SKEraseVolume.__allocating_init(childDisk:descriptor:)(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() eraseVolumeWithChildDisk:a1 descriptor:a2 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t specialized DOCUSBEraseOperation.State.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v31 = (a4 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v32 = v13;
    v15 = *(*(a3 + 56) + 8 * v13);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;
    v17 = v15;
    v18._object = 0x8000000249BE8960;
    v18._countAndFlagsBits = 0xD000000000000029;
    v19 = String.hasPrefix(_:)(v18);

    if (v19)
    {
      v20 = [v17 domainFullDisplayName];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = v31[1];
      if (v24)
      {
        if (v21 == *v31 && v24 == v23)
        {

LABEL_22:
          *(a1 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
          if (__OFADD__(v30++, 1))
          {
            __break(1u);
LABEL_25:
            specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v30, a3);
            return;
          }
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_25;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v10 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      v16 = v10;
      v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySo18FPProviderDomainIDaSo0iJ0CG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_So18iJ14IDa_So0hI0CTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiKIsgnndzo_Tf1nc_n080_s26DocumentManagerExecutables20DOCUSBEraseOperationC7performyyFySo6SKDiskCSg_s5x45_pSgtcfU_yAI_SDys11AnyHashableVypGSgtYbcfU_SbsiJ29IDa3key_So0kL0C5valuet_tXEfU_0Z18ManagerExecutables20DOCUSBEraseOperationCTf1nnc_n(v15, v6, a1, v16);
      MEMORY[0x24C1FE850](v15, -1, -1);

      return v13;
    }
  }

  MEMORY[0x28223BE20](v8, v9);
  bzero(v17 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v11 = v10;
  specialized closure #1 in _NativeDictionary.filter(_:)((v17 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v11);
  v13 = v12;

  if (v2)
  {
    swift_willThrow();
  }

  return v13;
}