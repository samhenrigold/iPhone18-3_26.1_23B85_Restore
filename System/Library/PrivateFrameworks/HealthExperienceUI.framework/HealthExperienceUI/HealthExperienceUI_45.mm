double static PDFPrintPaper.localizedPaper(landscape:compactVerticalMargin:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();
  sub_1BA20F664();
  v7 = sub_1BA4A6AE8();
  v8 = [v6 bestPaperForPageSize:v7 withPapersFromArray:{612.0, 792.0}];

  [v8 paperSize];
  v10 = v9;
  v12 = v11;

  if (a1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (a1)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  *(a3 + 16) = 0x4042000000000000;
  *(a3 + 56) = 0x4042000000000000;
  *(a3 + 72) = 0x4042000000000000;
  v15 = 36.0;
  if (a2)
  {
    v15 = 21.0;
  }

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v13 + -36.0 + -36.0;
  result = v14 - v15 - v15;
  *(a3 + 40) = result;
  *(a3 + 48) = v15;
  *(a3 + 64) = v15;
  return result;
}

char *sub_1BA3CB95C(void *a1)
{
  v2 = v1;
  v33 = a1;
  sub_1B9F12538();
  v34 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EBBEA528;
  sub_1B9F15B38();
  v14 = sub_1BA4A7A78();
  v15 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  *&v2[v13] = v17;
  v18 = qword_1EDC61B88;
  *&v2[v18] = sub_1B9F12744(MEMORY[0x1E69E7CC0]);
  v19 = &v2[qword_1EDC84AD0];
  v35 = 675500614;
  v36 = 0xE400000000000000;
  v38 = sub_1BA4A2558();
  sub_1B9F12868(0, &qword_1EBBF2020, MEMORY[0x1E69A3DC8]);
  v20 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v20);

  MEMORY[0x1BFAF1350](15401, 0xE200000000000000);
  sub_1BA4A1788();
  v21 = sub_1BA4A1748();
  v23 = v22;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x1BFAF1350](v21, v23);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v24 = v36;
  *v19 = v35;
  v19[1] = v24;
  v25 = v33;
  *&v2[qword_1EDC84AD8] = v33;
  v26 = v25;
  sub_1BA4A45D8();
  (*(v4 + 32))(&v2[qword_1EDC84AC8], v7, v34);
  sub_1BA3CBE80(0);
  v37.receiver = v2;
  v37.super_class = v27;
  v28 = objc_msgSendSuper2(&v37, sel_init);
  v29 = [v26 fetchRequest];
  [v29 setIncludesPendingChanges_];

  v30 = qword_1EDC84AD8;
  swift_beginAccess();
  v31 = *&v28[v30];
  [v31 setDelegate_];

  sub_1B9F128B4();
  return v28;
}

id FeedItemSuggestedActionDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItemSuggestedActionDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FeedItemSuggestedActionDataSource(uint64_t a1)
{
  result = qword_1EBBF2010;
  if (!qword_1EBBF2010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA3CBE80(uint64_t a1)
{
  if (!qword_1EBBF2028)
  {
    v2 = sub_1BA4A2558();
    v3 = sub_1BA3CBF14(&qword_1EBBEBF50, MEMORY[0x1E69A3DC8], &protocol conformance descriptor for DataType);
    v5 = type metadata accessor for FetchedResultsControllerDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EBBF2028);
    }
  }
}

uint64_t sub_1BA3CBF14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *PlatformTabCollectionViewController.init(makeDataSource:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource);
  *v3 = a1;
  v3[1] = a2;
  type metadata accessor for CompoundSectionedDataSource(0);

  v4 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v5 = CompoundDataSourceCollectionViewController.init(dataSource:)(v4);

  return v5;
}

uint64_t sub_1BA3CC000()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2030 = result;
  *algn_1EBBF2038 = v1;
  return result;
}

uint64_t sub_1BA3CC098()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E800 = result;
  unk_1EDC5E808 = v1;
  return result;
}

char *PlatformTabCollectionViewController.__allocating_init(makeDataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource];
  *v6 = a1;
  *(v6 + 1) = a2;
  type metadata accessor for CompoundSectionedDataSource(0);

  v7 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v8 = CompoundDataSourceCollectionViewController.init(dataSource:)(v7);

  return v8;
}

id PlatformTabCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlatformTabCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA3CC45C()
{
  v0 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (*(v0 + 16))
  {
    swift_unknownObjectRetain();

    type metadata accessor for SearchDataSource(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return 0;
}

void sub_1BA3CC53C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = a1;
}

void (*sub_1BA3CC550(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1B9F2192C();
  return sub_1BA3CC598;
}

void sub_1BA3CC598(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = v2;
}

void sub_1BA3CC5B0(void *a1, uint64_t a2)
{
  [a1 _setContentUnavailableConfiguration_];
  if ([a1 isViewLoaded])
  {
    v3 = [a1 view];
    if (v3)
    {
      v4 = v3;
      [v3 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BA3CC650(uint64_t a1)
{
  v3 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3D2964(a1, v6, type metadata accessor for SearchDataSource.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_10;
    }

    sub_1BA2717C8(0);
    v14 = *(v13 + 48);
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1BA3CCCFC;
    *(v17 + 24) = v16;
    v39 = sub_1B9F7B0CC;
    v40 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1B9F7B0FC;
    v38 = &block_descriptor_107;
    v18 = _Block_copy(&aBlock);
    v19 = v40;
    v20 = v1;

    [v15 performWithoutAnimation_];
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if ((v15 & 1) == 0)
    {
      sub_1BA3D29CC(&v6[v14], type metadata accessor for SearchDataSource.State.SearchResults);
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v8 = *v6;
      v9 = *(v6 + 1);
      v10 = v6[16];
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      v12 = v1;
      SearchCoordinator.search(_:enhanced:actionHandler:)(v8, v9, v10, sub_1BA3CD9C8, v11);

      goto LABEL_11;
    }

    v18 = *v6;
    v19 = *(v6 + 1);
    v6 = [objc_opt_self() searchConfiguration];
    if (qword_1EBBE8910 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5480;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1B9F1BE20();
  *(v21 + 32) = v18;
  *(v21 + 40) = v19;
  sub_1BA4A6768();

  v22 = sub_1BA4A6758();

  [v6 setText_];

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = v6;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1BA3D2A44;
  *(v25 + 24) = v24;
  v39 = sub_1B9F89DF8;
  v40 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1B9F7B0FC;
  v38 = &block_descriptor_14_3;
  v26 = _Block_copy(&aBlock);
  v27 = v1;
  v28 = v6;

  [v23 performWithoutAnimation_];
  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:
  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  *(v30 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1BA3D2A44;
  *(v31 + 24) = v30;
  v39 = sub_1B9F89DF8;
  v40 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1B9F7B0FC;
  v38 = &block_descriptor_28_3;
  v32 = _Block_copy(&aBlock);
  v33 = v1;

  [v29 performWithoutAnimation_];
  _Block_release(v32);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return;
  }

LABEL_11:
  v34 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (*(v34 + 16))
  {
    swift_unknownObjectRetain();

    type metadata accessor for SearchDataSource(0);
    if (swift_dynamicCastClass())
    {
      sub_1BA26E408(a1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

char *SearchViewController.__allocating_init(healthExperienceStore:healthStore:pinnedContentManager:searchCoordinator:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController] = 0;
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore] = a2;
  sub_1B9F0A534(a1, &v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore]);
  sub_1B9F0A534(a3, &v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager]);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_searchCoordinator] = a4;
  sub_1B9F0A534(a1, v17);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1B9F1134C(v17, v11 + 24);
  v12 = &v10[OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource];
  *v12 = sub_1BA3D2A50;
  v12[1] = v11;
  type metadata accessor for CompoundSectionedDataSource(0);
  v13 = a2;

  v14 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v15 = CompoundDataSourceCollectionViewController.init(dataSource:)(v14);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

char *SearchViewController.init(healthExperienceStore:healthStore:pinnedContentManager:searchCoordinator:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = 0;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore) = a2;
  sub_1B9F0A534(a1, v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore);
  sub_1B9F0A534(a3, v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_searchCoordinator) = a4;
  sub_1B9F0A534(a1, v16);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_1B9F1134C(v16, v10 + 24);
  v11 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource);
  *v11 = sub_1BA3D2A50;
  v11[1] = v10;
  type metadata accessor for CompoundSectionedDataSource(0);
  v12 = a2;

  v13 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v14 = CompoundDataSourceCollectionViewController.init(dataSource:)(v13);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t sub_1BA3CCFC4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompoundSectionedDataSource(0);
  sub_1B9F1DEA0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  swift_storeEnumTagMultiPayload();
  sub_1B9F0A534(a3, v14);
  type metadata accessor for SearchDataSource(0);
  swift_allocObject();
  v10 = a2;
  v11 = sub_1B9F15168(v8, v10, v14);

  *(inited + 32) = v11;
  *(inited + 40) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  return CompoundSectionedDataSource.__allocating_init(_:)(inited);
}

void sub_1BA3CD150()
{
  v1 = v0;
  swift_getObjectType();
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  sub_1BA4A7DF8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA505E30);
  v4 = sub_1BA4A6758();

  [v3 setAccessibilityIdentifier_];

  v5 = [v0 navigationItem];
  [v5 setPreferredSearchBarPlacement_];

  v6 = [v1 navigationItem];
  v7 = sub_1B9F2192C();
  [v6 setSearchController_];

  v8 = [v1 collectionView];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  [v9 setBackgroundColor_];

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  [v11 setAllowsFocus_];

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  [v13 setKeyboardDismissMode_];

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_1BA4A6AE8();
  v18 = HKUIJoinStringsForAutomationIdentifier();

  [v16 setAccessibilityIdentifier_];
  v19 = [v1 traitCollection];
  v20 = [v19 horizontalSizeClass];

  if (v20 == 1)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v21 = sub_1BA4A6758();

    [v1 setTitle_];
  }

  else
  {
    [v1 setTitle_];
  }

  sub_1BA3D2130(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  v23 = sub_1BA4A4438();
  v24 = MEMORY[0x1E69DC130];
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  sub_1BA4A7228();
  swift_unknownObjectRelease();
}

void sub_1BA3CD5DC()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E7F0 != -1)
  {
    swift_once();
  }

  (*(v2 + 104))(v5, *MEMORY[0x1E69A2C48], v1);
  v6 = sub_1BA4A35B8();
  (*(v2 + 8))(v5, v1);
  [v0 setUserActivity_];
}

void sub_1BA3CD844(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    sub_1BA4A7678();
    if (*(v1 + v2) == 1)
    {
      sub_1BA4A75D8();
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = sub_1B9F2192C();
      v12 = [v11 searchBar];

      [v12 setDirectionalLayoutMargins_];
    }
  }
}

double sub_1BA3CD924(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = v3;
  SearchCoordinator.search(_:enhanced:actionHandler:)(a1, a2, a3, sub_1BA3D2A5C, v7);

  return result;
}

uint64_t sub_1BA3CD9EC(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v52 = type metadata accessor for SearchResultUpdate(0);
  MEMORY[0x1EEE9AC00](v52, v3);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v55, v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v50 - v9);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for SearchDataSource.State.SearchResults(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v50 - v25);
  v27 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (!*(v27 + 16))
  {

LABEL_8:
    sub_1BA4A27B8();
    *v22 = sub_1BA4A25B8();
    v32 = v22 + *(v19 + 20);
    sub_1BA4A1788();
    *&v32[*(type metadata accessor for DirectSearchResult(0) + 20)] = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  type metadata accessor for SearchDataSource(0);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v29 = qword_1EDC84C78;
  v30 = v28;
  swift_beginAccess();
  sub_1BA3D2964(v30 + v29, v18, type metadata accessor for SearchDataSource.State);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1BA3D29CC(v18, type metadata accessor for SearchDataSource.State);
    v2 = v1;
    goto LABEL_8;
  }

  sub_1BA2717C8(0);
  sub_1BA3D28FC(&v18[*(v31 + 48)], v22, type metadata accessor for SearchDataSource.State.SearchResults);
  v2 = v1;
LABEL_9:
  sub_1BA3D28FC(v22, v26, type metadata accessor for SearchDataSource.State.SearchResults);
  if (*(*(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource) + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources) + 16))
  {
    type metadata accessor for SearchDataSource(0);
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = qword_1EDC84C78;
      v35 = v33;
      swift_beginAccess();
      sub_1BA3D2964(v35 + v34, v14, type metadata accessor for SearchDataSource.State);
      sub_1BA3D28FC(v14, v10, type metadata accessor for SearchDataSource.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        v37 = v54;
        if (EnumCaseMultiPayload != 2)
        {
LABEL_22:
          sub_1BA3D29CC(v10, type metadata accessor for SearchDataSource.State);
          return sub_1BA3D29CC(v26, type metadata accessor for SearchDataSource.State.SearchResults);
        }

        v38 = *v10;
        v39 = v10[1];
        sub_1BA2717C8(0);
        sub_1BA3D29CC(v10 + *(v40 + 48), type metadata accessor for SearchDataSource.State.SearchResults);
      }

      else
      {
        v37 = v54;
        v38 = *v10;
        v39 = v10[1];
      }

      sub_1BA3D2964(v51, v37, type metadata accessor for SearchResultUpdate);
      v41 = swift_getEnumCaseMultiPayload();
      v10 = v53;
      if (v41)
      {
        if (v41 != 1)
        {

          v48 = v37[1];
          *v10 = *v37;
          v10[1] = v48;
          goto LABEL_21;
        }

        sub_1BA271720(v37, v26 + *(v19 + 20));
      }

      else
      {
        v42 = *v37;
        sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
        sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1BA4B5480;
        sub_1BA3D2194(0);
        *(v43 + 56) = v44;
        *(v43 + 64) = sub_1BA3D21FC();
        *(v43 + 32) = v42;
        v45 = sub_1BA4A6EE8();

        *v26 = v45;
      }

      sub_1BA2717C8(0);
      v47 = *(v46 + 48);
      *v10 = v38;
      v10[1] = v39;
      sub_1BA3D2964(v26, v10 + v47, type metadata accessor for SearchDataSource.State.SearchResults);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      sub_1BA3CC650(v10);
      goto LABEL_22;
    }
  }

  return sub_1BA3D29CC(v26, type metadata accessor for SearchDataSource.State.SearchResults);
}

uint64_t static NSPredicate.predicate(for:)(uint64_t a1)
{
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1BA3D2194(0);
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1BA3D21FC();
  *(v2 + 32) = a1;

  return sub_1BA4A6EE8();
}

id sub_1BA3CE0B0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() searchConfiguration];
  if (qword_1EBBE8910 != -1)
  {
    swift_once();
  }

  sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B9F1BE20();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  sub_1BA4A6768();

  v6 = sub_1BA4A6758();

  [v4 setText_];

  return v4;
}

uint64_t sub_1BA3CE208()
{
  v0 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B9F2192C();
  v5 = [v4 searchBar];

  [v5 resignFirstResponder];
  swift_storeEnumTagMultiPayload();
  sub_1BA3CC650(v3);
  return sub_1BA3D29CC(v3, type metadata accessor for SearchDataSource.State);
}

void sub_1BA3CE444()
{
  sub_1B9F36938();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HostViewCell(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1BA011AF0();
    sub_1BA4A6808();
    v4 = sub_1BA4A6758();

    [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v4];

    v5 = [v0 collectionView];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for DataTypeNoDataAvailableCell();
      v7 = swift_getObjCClassFromMetadata();
      swift_beginAccess();

      v8 = sub_1BA4A6758();

      [v6 registerClass:v7 forCellWithReuseIdentifier:v8];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall SearchViewController.didSelectItem()()
{
  v1 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v16 - v7;
  v9 = sub_1B9F2192C();
  v10 = [v9 searchBar];

  [v10 resignFirstResponder];
  v11 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (*(v11 + 16))
  {
    swift_unknownObjectRetain();

    type metadata accessor for SearchDataSource(0);
    v12 = swift_dynamicCastClass();
    if (!v12)
    {

      goto LABEL_4;
    }

    v13 = qword_1EDC84C78;
    v14 = v12;
    swift_beginAccess();
    sub_1BA3D2964(v14 + v13, v8, type metadata accessor for SearchDataSource.State);
    swift_storeEnumTagMultiPayload();
    v15 = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v8, v4);
    sub_1BA3D29CC(v4, type metadata accessor for SearchDataSource.State);
    sub_1BA3D29CC(v8, type metadata accessor for SearchDataSource.State);
    if (v15)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return;
    }

    type metadata accessor for HealthAppAnalyticsManager();
    v19 = 4;
    v18 = 2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(&v19, v0, &v18, v16);
    swift_unknownObjectRelease();
    sub_1BA10F728(v16);
  }

  else
  {
  }
}

void sub_1BA3CE94C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v50 = a1;
  v7 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v44 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v44 - v21;
  v23 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (*(v23 + 16))
  {
    v48 = a3;
    v24 = *(v23 + 32);
    swift_unknownObjectRetain();

    type metadata accessor for SearchDataSource(0);
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;
      v27 = qword_1EDC84C78;
      swift_beginAccess();
      sub_1BA3D2964(v26 + v27, v22, type metadata accessor for SearchDataSource.State);
      sub_1BA3D28FC(v22, v18, type metadata accessor for SearchDataSource.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v49 = v24;
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v29 = v18[1];
          v47 = *v18;
          sub_1BA2717C8(0);
          sub_1BA3D29CC(v18 + *(v30 + 48), type metadata accessor for SearchDataSource.State.SearchResults);
        }

        else
        {
          sub_1BA3D29CC(v18, type metadata accessor for SearchDataSource.State);
          v47 = 0;
          v29 = 0;
        }
      }

      else
      {
        v29 = v18[1];
        v47 = *v18;
      }

      v31 = [v4 navigationController];
      if (!v31)
      {

LABEL_27:
        v41 = HIBYTE(a2) & 0xF;
        v42 = v50;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v41 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (v41)
        {
          sub_1BA3D2964(v26 + v27, v14, type metadata accessor for SearchDataSource.State);
          swift_storeEnumTagMultiPayload();
          v43 = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v14, v10);
          sub_1BA3D29CC(v10, type metadata accessor for SearchDataSource.State);
          sub_1BA3D29CC(v14, type metadata accessor for SearchDataSource.State);
          if (v43)
          {
            type metadata accessor for HealthAppAnalyticsManager();
            v53 = 3;
            v52 = 2;
            sub_1B9F0A534(v4 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager, v51);
            static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(&v53, v4, &v52, v51);
            sub_1BA10F728(v51);
          }

          sub_1BA3CEEA0(v42, a2);
          *v14 = v42;
          *(v14 + 1) = a2;
          v14[16] = v48 & 1;
          swift_storeEnumTagMultiPayload();

          sub_1BA3CC650(v14);
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          sub_1BA3CC650(v14);
        }

        swift_unknownObjectRelease();
        sub_1BA3D29CC(v14, type metadata accessor for SearchDataSource.State);
        return;
      }

      v32 = v31;
      v46 = v27;
      v33 = [v31 visibleViewController];
      if (v33)
      {
        v34 = v33;
        sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
        v35 = v4;
        v45 = v4;
        v36 = v29;
        v37 = a2;
        v38 = v35;
        v39 = sub_1BA4A7798();

        a2 = v37;
        v29 = v36;
        v4 = v45;
        if (v39)
        {
          goto LABEL_17;
        }
      }

      if (!v29)
      {
        goto LABEL_24;
      }

      if (v47 == v50 && v29 == a2)
      {
LABEL_17:

LABEL_26:
        v27 = v46;
        goto LABEL_27;
      }

      v40 = sub_1BA4A8338();

      if ((v40 & 1) == 0)
      {
LABEL_24:
      }

      goto LABEL_26;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BA3CEEA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v33 = a1;
  v4 = sub_1BA4A35F8();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3678();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v14 = [v3 userActivity];
  [v14 invalidate];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  v29 = xmmword_1BA4B5480;
  *(v15 + 16) = xmmword_1BA4B5480;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1B9F1BE20();
  v17 = v32;
  v16 = v33;
  *(v15 + 32) = v33;
  *(v15 + 40) = v17;

  sub_1BA4A6768();

  (*(v9 + 104))(v13, *MEMORY[0x1E69A2C48], v8);
  v18 = sub_1BA4A35B8();

  (*(v9 + 8))(v13, v8);
  sub_1BA3D2130(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = v29;
  v21 = v30;
  v20 = v31;
  (*(v30 + 104))(v7, *MEMORY[0x1E69A2BA8], v31);
  v22 = sub_1BA4A35E8();
  v24 = v23;
  (*(v21 + 8))(v7, v20);
  v35 = v22;
  v36 = v24;
  v25 = MEMORY[0x1E69E6158];
  sub_1BA4A7D58();
  *(inited + 96) = v25;
  *(inited + 72) = v16;
  *(inited + 80) = v17;

  sub_1B9FDB524(inited);
  swift_setDeallocating();
  sub_1BA3D29CC(inited + 32, sub_1BA1284D4);
  v26 = sub_1BA4A6618();

  [v18 addUserInfoEntriesFromDictionary_];

  v27 = sub_1BA4A6758();
  [v18 setPersistentIdentifier_];

  v28 = v34;
  [v34 setUserActivity_];
  [v28 submitUserActivityForRestoration_];
}

void sub_1BA3CF370(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B9F2192C();
  v5 = [v4 searchBar];

  v6 = sub_1BA4A6758();
  [v5 setText_];

  sub_1BA3CE94C(a1, a2, 1);
}

void sub_1BA3CF440()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager));

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
}

id sub_1BA3CF4C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Bool __swiftcall SearchViewController.textFieldShouldReturn(_:)(UITextField *a1)
{
  v1 = [(UITextField *)a1 text];
  if (v1)
  {
    v2 = v1;
    v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;

    sub_1BA3CE94C(v3, v5, 1);
  }

  return 1;
}

uint64_t sub_1BA3CF764(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v106 = sub_1BA4A3EA8();
  v6 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v7);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v107 = &v89 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v99 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v97 = &v89 - v18;
  v100 = sub_1BA4A1C68();
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v19);
  v98 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v101 = &v89 - v23;
  sub_1BA3D2130(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v89 - v26;
  v28 = sub_1BA4A15D8();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  v104 = a2;
  sub_1BA4A15C8();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1B9F0DFE0(v27, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA3D2130);
    v33 = v107;
    goto LABEL_6;
  }

  v91 = v9;
  (*(v29 + 32))(v32, v27, v28);
  v92 = v3;
  v34 = &v3[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore];
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore], *&v3[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore + 24]);
  v35 = sub_1BA4A1B88();
  v33 = v107;
  if (!v35)
  {
    (*(v29 + 8))(v32, v28);
LABEL_6:
    sub_1BA4A3DD8();
    v39 = v104;

    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v6;
      v44 = swift_slowAlloc();
      *&v120[0] = v44;
      *v42 = 136315394;
      v45 = sub_1BA4A85D8();
      v47 = sub_1B9F0B82C(v45, v46, v120);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_1B9F0B82C(v103, v39, v120);
      _os_log_impl(&dword_1B9F07000, v40, v41, "[%s] Could not find a feed item when restoring from a core spotlight search item.  ID: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);

      return (*(v43 + 8))(v33, v106);
    }

    else
    {

      return (*(v6 + 8))(v33, v106);
    }
  }

  v36 = v35;
  v94 = v32;
  v95 = v28;
  v96 = v29;
  v93 = v6;
  sub_1BA4A27B8();
  __swift_project_boxed_opaque_existential_1(v34, *(v34 + 3));
  v37 = sub_1BA4A1B68();
  v38 = v36;
  v49 = sub_1BA4A2598();

  v50 = v101;
  sub_1BA4A26B8();
  v51 = v100;
  v52 = (*(v102 + 88))(v50, v100);
  if (v52 == *MEMORY[0x1E69A3BB0] || v52 == *MEMORY[0x1E69A3BB8])
  {
    v90 = v49;
    sub_1B9F0A534(v34, v119);
    v62 = v92;
    v63 = *&v92[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore];
    v64 = [v63 profileIdentifier];
    LOBYTE(v113[0]) = 15;
    v65 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v64, v113);

    sub_1B9F0A534(v62 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager, v118);
    sub_1B9F0A534(v119, v113);
    *(&v114 + 1) = v63;
    LOBYTE(v115) = v65;
    sub_1BA4A2488();
    swift_allocObject();
    v66 = v63;
    *(&v115 + 1) = sub_1BA4A2468();
    sub_1BA10F7B4(v118, &v108);
    v67 = v96;
    if (v109)
    {

      sub_1BA10F728(v118);
      __swift_destroy_boxed_opaque_existential_1(v119);
      sub_1B9F1134C(&v108, &v110);
      v68 = v90;
    }

    else
    {
      v69 = sub_1BA4A22B8();
      v70 = sub_1BA4A22A8();
      v111 = v69;
      v112 = MEMORY[0x1E69A3CF8];
      *&v110 = v70;
      sub_1BA10F728(v118);
      __swift_destroy_boxed_opaque_existential_1(v119);
      v68 = v90;
      if (v109)
      {
        sub_1BA10F728(&v108);
      }
    }

    sub_1B9F1134C(&v110, v116);
    *(&v117 + 1) = 0;
    v121 = 0;
    v120[4] = v116[0];
    v120[5] = v116[1];
    v120[0] = v113[0];
    v120[1] = v113[1];
    v120[2] = v114;
    v120[3] = v115;
    v120[6] = v117;
    v71 = sub_1BA4A2758();
    v72 = sub_1BA1591A8(v71);

    if (v72)
    {
      v82 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(v72, v120);
      v83 = [v62 navigationController];
      if (v83)
      {
        v84 = v83;
        sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1BA4B7510;
        *(v85 + 32) = v62;
        *(v85 + 40) = v82;
        sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
        v86 = v62;
        v87 = v82;
        v88 = sub_1BA4A6AE8();

        [v84 setViewControllers:v88 animated:0];
      }

      else
      {
      }
    }

    else
    {
      v73 = v97;
      sub_1BA4A3DD8();
      v74 = sub_1BA4A3E88();
      v75 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v113[0] = v77;
        *v76 = 136315138;
        v78 = sub_1BA4A85D8();
        v80 = v67;
        v81 = sub_1B9F0B82C(v78, v79, v113);

        *(v76 + 4) = v81;
        _os_log_impl(&dword_1B9F07000, v74, v75, "[%s] Feed item is missing associated type", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x1BFAF43A0](v77, -1, -1);
        MEMORY[0x1BFAF43A0](v76, -1, -1);

        (*(v93 + 8))(v73, v106);
        sub_1BA114E30(v120);
        return (*(v80 + 8))(v94, v95);
      }

      (*(v93 + 8))(v73, v106);
    }

    sub_1BA114E30(v120);
    return (*(v67 + 8))(v94, v95);
  }

  else
  {
    v53 = v99;
    sub_1BA4A3DD8();
    v54 = v49;
    v55 = sub_1BA4A3E88();
    v56 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v120[0] = v58;
      *v57 = 136315138;
      sub_1BA4A26B8();
      v59 = sub_1BA4A6808();
      v61 = sub_1B9F0B82C(v59, v60, v120);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_1B9F07000, v55, v56, "Attempting restoration for unsupported feed item content kind%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1BFAF43A0](v58, -1, -1);
      MEMORY[0x1BFAF43A0](v57, -1, -1);

      (*(v93 + 8))(v99, v106);
    }

    else
    {

      (*(v93 + 8))(v53, v106);
    }

    (*(v96 + 8))(v94, v95);
    return (*(v102 + 8))(v101, v51);
  }
}

Swift::Void __swiftcall SearchViewController.restoreUserActivityState(_:)(NSUserActivity a1)
{
  isa = a1.super.isa;
  ObjectType = swift_getObjectType();
  sub_1BA3D2130(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v107 - v3;
  v120 = sub_1BA4A3678();
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v5);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v110 = &v107 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v113 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v115 = &v107 - v15;
  v109 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v109, v16);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A35F8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1BA4A3EA8();
  v24 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v25);
  v114 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v111 = &v107 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v107 - v32;
  sub_1BA4A3DD8();
  v34 = sub_1BA4A3E88();
  v35 = sub_1BA4A6F98();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B9F07000, v34, v35, "Attempting to restore Search View Controller from User Activity.", v36, 2u);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
  }

  v37 = *(v24 + 8);
  v116 = v24 + 8;
  v117 = v37;
  v37(v33, v121);
  v38 = isa;
  v39 = [(objc_class *)isa userInfo];
  if (!v39)
  {
    v40 = MEMORY[0x1E69E7CA0];
    v127 = 0u;
    v128 = 0u;
    goto LABEL_11;
  }

  v40 = MEMORY[0x1E69E7CA0];
  v41 = v39;
  v42 = sub_1BA4A6628();

  (*(v20 + 104))(v23, *MEMORY[0x1E69A2BA8], v19);
  v43 = sub_1BA4A35E8();
  v45 = v44;
  (*(v20 + 8))(v23, v19);
  v125 = v43;
  v126 = v45;
  sub_1BA4A7D58();
  if (!*(v42 + 16) || (v46 = sub_1B9FDA8E4(&v129), (v47 & 1) == 0))
  {

    sub_1B9FDC768(&v129);
    v127 = 0u;
    v128 = 0u;
    v38 = isa;
LABEL_11:
    v48 = v118;
    goto LABEL_12;
  }

  sub_1B9F0AD9C(*(v42 + 56) + 32 * v46, &v127);
  sub_1B9FDC768(&v129);

  v38 = isa;
  v48 = v118;
  if (!*(&v128 + 1))
  {
LABEL_12:
    sub_1B9F0DFE0(&v127, &qword_1EDC6E300, v40 + 8, MEMORY[0x1E69E6720], sub_1B9F23348);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
LABEL_27:
    v61 = v130;
    *v18 = v129;
    *(v18 + 1) = v61;
    v18[16] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1BA3CC650(v18);
    sub_1BA3D29CC(v18, type metadata accessor for SearchDataSource.State);
    goto LABEL_31;
  }

LABEL_13:
  v49 = [(objc_class *)v38 userInfo];
  if (!v49)
  {
LABEL_20:
    v127 = 0u;
    v128 = 0u;
    goto LABEL_21;
  }

  v50 = v49;
  v51 = sub_1BA4A6628();

  v125 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v126 = v52;
  sub_1BA4A7D58();
  if (!*(v51 + 16) || (v53 = sub_1B9FDA8E4(&v129), (v54 & 1) == 0))
  {

    sub_1B9FDC768(&v129);
    goto LABEL_20;
  }

  sub_1B9F0AD9C(*(v51 + 56) + 32 * v53, &v127);
  sub_1B9FDC768(&v129);

  if (!*(&v128 + 1))
  {
LABEL_21:
    sub_1B9F0DFE0(&v127, &qword_1EDC6E300, v40 + 8, MEMORY[0x1E69E6720], sub_1B9F23348);
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    sub_1BA3CF764(v129, v130);

    goto LABEL_31;
  }

LABEL_22:
  v55 = [(objc_class *)v38 userInfo];
  if (!v55)
  {
LABEL_29:
    v127 = 0u;
    v128 = 0u;
    goto LABEL_30;
  }

  v56 = v55;
  v57 = sub_1BA4A6628();

  v125 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v126 = v58;
  sub_1BA4A7D58();
  if (!*(v57 + 16) || (v59 = sub_1B9FDA8E4(&v129), (v60 & 1) == 0))
  {

    sub_1B9FDC768(&v129);
    goto LABEL_29;
  }

  sub_1B9F0AD9C(*(v57 + 56) + 32 * v59, &v127);
  sub_1B9FDC768(&v129);

  if (*(&v128 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_30:
  sub_1B9F0DFE0(&v127, &qword_1EDC6E300, v40 + 8, MEMORY[0x1E69E6720], sub_1B9F23348);
LABEL_31:
  v62 = [(objc_class *)v38 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v63 = v120;
  if ((*(v48 + 48))(v4, 1, v120) != 1)
  {
    v75 = v117;
    v76 = v115;
    (*(v48 + 32))(v115, v4, v63);
    v77 = sub_1BA4A70A8();
    v78 = v119;
    if (v77)
    {
      v79 = v77;
      if ([v77 type] == 3)
      {
        v80 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
        [v80 setProfileIdentifier_];
        [v80 resume];
        v81 = v80;
        UIViewController.resolvedHealthExperienceStore.getter(&v129);
        sub_1B9F0A534(v78 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager, &v127);
        type metadata accessor for ProfileGradientsProviderFactory();
        swift_initStaticObject();
        __swift_project_boxed_opaque_existential_1(&v129, v131);
        v82 = sub_1BA4A1B68();
        v83 = sub_1B9FE10EC(v81, v82, MEMORY[0x1E69E7CC0]);

        sub_1B9F0A534(&v129, &v125);
        sub_1B9F0A534(&v127, v124);
        v84 = objc_allocWithZone(type metadata accessor for ProfileOverviewViewController());
        v85 = sub_1BA1803C4(v81, &v125, v124, v83);

        __swift_destroy_boxed_opaque_existential_1(&v127);
        __swift_destroy_boxed_opaque_existential_1(&v129);
        v86 = [v78 navigationController];
        if (v86)
        {
          v87 = v86;
          [v86 pushViewController:v85 animated:0];

          (*(v118 + 8))(v76, v120);
        }

        else
        {
          (*(v118 + 8))(v76, v120);
        }

        v38 = isa;
        v73 = type metadata accessor for SearchViewController();
        v123 = v78;
        v74 = &v123;
        goto LABEL_54;
      }
    }

    v88 = *(v48 + 16);
    v89 = v113;
    v88(v113, v76, v63);
    v90 = (*(v48 + 88))(v89, v63);
    if (v90 == *MEMORY[0x1E69A2C60] || v90 == *MEMORY[0x1E69A2C08] || v90 == *MEMORY[0x1E69A2C00])
    {
      sub_1BA3D1C3C(v38);
    }

    else
    {
      if (v90 != *MEMORY[0x1E69A2BF8])
      {
        sub_1BA4A3DD8();
        v91 = v110;
        v88(v110, v76, v63);
        v92 = sub_1BA4A3E88();
        LODWORD(v118) = sub_1BA4A6FA8();
        if (os_log_type_enabled(v92, v118))
        {
          v93 = swift_slowAlloc();
          v94 = v48;
          v114 = swift_slowAlloc();
          *&v127 = v114;
          *v93 = 136446466;
          v129 = ObjectType;
          swift_getMetatypeMetadata();
          v95 = sub_1BA4A6808();
          v97 = sub_1B9F0B82C(v95, v96, &v127);

          *(v93 + 4) = v97;
          *(v93 + 12) = 2080;
          v98 = v110;
          v88(v108, v110, v120);
          v99 = sub_1BA4A6808();
          v101 = v100;
          v102 = *(v94 + 8);
          v102(v98, v120);
          v103 = sub_1B9F0B82C(v99, v101, &v127);
          v38 = isa;

          *(v93 + 14) = v103;
          v104 = v120;
          _os_log_impl(&dword_1B9F07000, v92, v118, "[%{public}s]: no restoration configured for %s", v93, 0x16u);
          v105 = v114;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v105, -1, -1);
          MEMORY[0x1BFAF43A0](v93, -1, -1);

          v75(v111, v121);
          v102(v115, v104);
          v102(v113, v104);
        }

        else
        {

          v106 = *(v48 + 8);
          v106(v91, v63);
          v75(v111, v121);
          v106(v76, v63);
          v106(v113, v63);
        }

        goto LABEL_53;
      }

      sub_1BA3D1500(v38);
    }

    (*(v48 + 8))(v76, v63);
LABEL_53:
    v73 = type metadata accessor for SearchViewController();
    v132 = v78;
    v74 = &v132;
    goto LABEL_54;
  }

  sub_1B9F0DFE0(v4, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720], sub_1BA3D2130);
  v64 = v114;
  sub_1BA4A3E48();
  v65 = sub_1BA4A3E88();
  v66 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v127 = v68;
    *v67 = 136446210;
    v129 = ObjectType;
    swift_getMetatypeMetadata();
    v69 = sub_1BA4A6808();
    v71 = sub_1B9F0B82C(v69, v70, &v127);
    v38 = isa;

    *(v67 + 4) = v71;
    _os_log_impl(&dword_1B9F07000, v65, v66, "[%{public}s] user activity passed in does not have a valid activity type", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x1BFAF43A0](v68, -1, -1);
    MEMORY[0x1BFAF43A0](v67, -1, -1);
  }

  v117(v64, v121);
  v72 = v119;
  v73 = type metadata accessor for SearchViewController();
  v133.receiver = v72;
  v74 = &v133;
LABEL_54:
  v74->super_class = v73;
  [(objc_super *)v74 restoreUserActivityState:v38];
}

uint64_t sub_1BA3D1500(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v64 = sub_1BA4A3EA8();
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v62 = &v60 - v10;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore;
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore], v74);
  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore];
  v13 = [v12 profileIdentifier];
  LOBYTE(v75) = 15;
  v14 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v13, &v75);

  sub_1B9F0A534(v2 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager, v73);
  sub_1B9F0A534(v74, v67);
  *(&v68 + 1) = v12;
  LOBYTE(v69) = v14;
  sub_1BA4A2488();
  swift_allocObject();
  v15 = v12;
  *(&v69 + 1) = sub_1BA4A2468();
  sub_1BA10F7B4(v73, &v65);
  if (v66)
  {

    sub_1BA10F728(v73);
    __swift_destroy_boxed_opaque_existential_1(v74);
    sub_1B9F1134C(&v65, &v75);
  }

  else
  {
    v16 = sub_1BA4A22B8();
    v17 = sub_1BA4A22A8();
    *(&v76 + 1) = v16;
    *&v77 = MEMORY[0x1E69A3CF8];
    *&v75 = v17;
    sub_1BA10F728(v73);
    __swift_destroy_boxed_opaque_existential_1(v74);
    if (v66)
    {
      sub_1BA10F728(&v65);
    }
  }

  sub_1B9F1134C(&v75, v70);
  v72 = 0;
  v82 = 0;
  v79 = v70[0];
  v80 = v70[1];
  v75 = v67[0];
  v76 = v67[1];
  v77 = v68;
  v78 = v69;
  v81 = v71;
  v32 = HKTDataTypeDetailFactory.createViewController(userActivity:context:)(a1, &v75);
  type metadata accessor for AllHighlightsForDataTypeViewController();
  sub_1B9F0A534(v2 + v11, v67);
  v33 = v15;
  v34 = a1;
  v35 = AllHighlightsForDataTypeViewController.__allocating_init(userActivity:healthStore:healthExperienceStore:provenance:)(v34, v33, v67, 0, 0);
  if (v35)
  {
    v36 = v35;
    v37 = [v2 navigationController];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 viewControllers];
      sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
      v40 = sub_1BA4A6B08();

      *&v67[0] = v40;
      v41 = v32;
      MEMORY[0x1BFAF1510]();
      if (*((*&v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v42 = v36;
      MEMORY[0x1BFAF1510]();
      if (*((*&v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v43 = sub_1BA4A6AE8();

      [v38 setViewControllers:v43 animated:0];
    }

    else
    {
      v44 = v62;
      sub_1BA4A3DD8();
      v45 = v34;
      v46 = sub_1BA4A3E88();
      v47 = sub_1BA4A6FA8();

      v48 = v46;
      if (os_log_type_enabled(v46, v47))
      {
        v49 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v74[0] = v61;
        *v49 = 136446466;
        *&v67[0] = ObjectType;
        swift_getMetatypeMetadata();
        v50 = sub_1BA4A6808();
        v52 = sub_1B9F0B82C(v50, v51, v74);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2080;
        v53 = [v45 activityType];
        v54 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v56 = v55;

        v57 = sub_1B9F0B82C(v54, v56, v74);

        *(v49 + 14) = v57;
        v58 = v48;
        _os_log_impl(&dword_1B9F07000, v48, v47, "[%{public}s]: Failed to restore state from UserActivity %s due to missing navigation controller", v49, 0x16u);
        v59 = v61;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v59, -1, -1);
        MEMORY[0x1BFAF43A0](v49, -1, -1);

        (*(v4 + 8))(v62, v64);
      }

      else
      {

        (*(v4 + 8))(v44, v64);
      }
    }
  }

  else
  {

    sub_1BA4A3DD8();
    v18 = a1;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v74[0] = v22;
      *v21 = 136446466;
      *&v67[0] = ObjectType;
      swift_getMetatypeMetadata();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, v74);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = [v18 activityType];
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v28;

      v30 = sub_1B9F0B82C(v27, v29, v74);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s]: Failed to create viewcontrollers from UserActivity %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v4 + 8))(v7, v64);
  }

  return sub_1BA114E30(&v75);
}

void sub_1BA3D1C3C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - v12;
  v14 = _s18HealthExperienceUI22CategoryViewControllerC04makedeF012userActivity11healthStore0jbK020pinnedContentManagerACSgSo06NSUserI0C_So08HKHealthK0C0A8Platform0abK0_pAN06PinnedM8Managing_ptFZ_0(a1, *&v2[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore], &v2[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore], &v2[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager]);
  if (!v14)
  {
    sub_1BA4A3DD8();
    v18 = a1;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      v50 = ObjectType;
      *v21 = 136446466;
      swift_getMetatypeMetadata();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v49);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = [v18 activityType];
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v28;

      v30 = sub_1B9F0B82C(v27, v29, &v49);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s]: Failed to create viewcontrollers from UserActivity %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    v31 = *(v6 + 8);
    v32 = v9;
LABEL_12:
    v31(v32, v5);
    return;
  }

  v15 = v14;
  v16 = [v2 navigationController];
  if (!v16)
  {
    sub_1BA4A3DD8();
    v33 = a1;
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      v50 = ObjectType;
      *v36 = 136446466;
      swift_getMetatypeMetadata();
      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, &v49);
      v48 = v5;
      v41 = v40;

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      v42 = [v33 activityType];
      v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v45 = v44;

      v46 = sub_1B9F0B82C(v43, v45, &v49);

      *(v36 + 14) = v46;
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%{public}s]: Failed to restore state from UserActivity %s due to missing navigation controller", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);

      (*(v6 + 8))(v13, v48);
      return;
    }

    v31 = *(v6 + 8);
    v32 = v13;
    goto LABEL_12;
  }

  v48 = v16;
  [v16 pushViewController:v15 animated:0];
  [v15 restoreUserActivityState_];

  v17 = v48;
}

void sub_1BA3D2130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA3D2194(uint64_t a1)
{
  if (!qword_1EBBE99C0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E4A0, 0x1E695D630);
    v1 = sub_1BA4A6BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE99C0);
    }
  }
}

unint64_t sub_1BA3D21FC()
{
  result = qword_1EBBF2078;
  if (!qword_1EBBF2078)
  {
    sub_1BA3D2194(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2078);
  }

  return result;
}

void sub_1BA3D2254(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v4 = sub_1BA4A6758();

    [a1 setTitle_];
  }

  else
  {

    [a1 setTitle_];
  }
}

void sub_1BA3D239C(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 cancelButton];

  if (v3)
  {
    v4 = v3;
    sub_1BA4A7DF8();
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0xD00000000000001ELL, 0x80000001BA505FD0);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  v6 = [a1 searchBar];
  v7 = [v6 searchTextField];

  v8 = [v7 _clearButton];
  if (v8)
  {
    v9 = v8;
    sub_1BA4A7DF8();
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA505FB0);
    v10 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA3D28FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA3D2964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA3D29CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void PersonalizedFeedItemTrainableCell<>.submitFeedItemTraining()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36[-1] - v11;
  v13 = sub_1BA4A1C68();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 + 16) + 8))(v36, a1, v16);
  if (v36[3])
  {
    sub_1B9FCD918();
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v19 = v35;
      if (UIResponder.resolvedPersonalizedFeedTrainer()())
      {
        if (qword_1EDC6CB58 != -1)
        {
          swift_once();
        }

        v20 = off_1EDC6CB60;
        sub_1BA4A26B8();
        LOBYTE(v20) = sub_1BA3D2E98(v18, v20);
        (*(v14 + 8))(v18, v13);
        if (v20)
        {
          sub_1BA3C0D3C(v19);
        }
      }

      else
      {
        sub_1BA4A3DB8();
        v28 = sub_1BA4A3E88();
        v29 = sub_1BA4A6F98();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v36[0] = v31;
          *v30 = 136315138;
          v32 = sub_1BA4A85D8();
          v34 = sub_1B9F0B82C(v32, v33, v36);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_1B9F07000, v28, v29, "[%s]: Unable to resolve PersonalizedFeedTrainer; cannot submit feedback", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x1BFAF43A0](v31, -1, -1);
          MEMORY[0x1BFAF43A0](v30, -1, -1);
        }

        (*(v5 + 8))(v12, v4);
      }

      return;
    }
  }

  else
  {
    sub_1B9F7B644(v36);
  }

  sub_1BA4A3DB8();
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36[0] = v24;
    *v23 = 136315138;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, v36);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%s]: SectionedItem is not a feed item, only submit training on feed items", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA3D2E98(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA4A1C68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1BA3D35DC(&qword_1EDC6E240, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C10]), v8 = sub_1BA4A6698(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_1BA3D35DC(&qword_1EDC6E230, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C18]);
      v16 = sub_1BA4A6728();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1BA3D30B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BA4A8488();
  sub_1BA4A68C8();
  v6 = sub_1BA4A84D8();
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
    if (v11 || (sub_1BA4A8338() & 1) != 0)
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

uint64_t sub_1BA3D31A8(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BA4A8488();
  v4 = a1 >> 6;
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      v5 = 0x80504u >> (8 * (a1 + 64));
    }

    else
    {
      LOBYTE(v5) = a1 ^ 0x80;
    }
  }

  else if (a1 >> 6)
  {
    LOBYTE(v5) = a1 & 0x3F;
    MEMORY[0x1BFAF2ED0](7);
  }

  else
  {
    MEMORY[0x1BFAF2ED0](6);
    LOBYTE(v5) = a1;
  }

  MEMORY[0x1BFAF2ED0](v5);
  v7 = sub_1BA4A84D8();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + v9);
      v12 = v11 >> 6;
      if (v11 >> 6 > 1)
      {
        if (v12 == 3)
        {
          if (v11 == 192)
          {
            if (a1 == 192)
            {
              return 1;
            }
          }

          else if (v11 == 193)
          {
            if (a1 == 193)
            {
              return 1;
            }
          }

          else if (a1 == 194)
          {
            return 1;
          }
        }

        else if (*(*(a2 + 48) + v9) > 0x81u)
        {
          if (v11 == 130)
          {
            if (a1 == 130)
            {
              return 1;
            }
          }

          else if (a1 == 131)
          {
            return 1;
          }
        }

        else if (v11 == 128)
        {
          if (a1 == 128)
          {
            return 1;
          }
        }

        else if (a1 == 129)
        {
          return 1;
        }
      }

      else if (v12)
      {
        if (v4 == 1 && ((v11 ^ a1) & 0x3F) == 0)
        {
          return 1;
        }
      }

      else if (a1 <= 0x3Fu && v11 == a1)
      {
        return 1;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1BA3D33B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA4A2A88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1BA3D35DC(&qword_1EBBE9D88, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31F0]), v8 = sub_1BA4A6698(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_1BA3D35DC(&qword_1EBBE9D90, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31F8]);
      v16 = sub_1BA4A6728();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1BA3D35DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BA3D3628(uint64_t a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_opt_self() effectForBlurEffect:v2 style:4];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 contentView];
  [v5 addSubview_];

  [v4 hk:a1 alignConstraintsWithView:?];
  return v4;
}

void sub_1BA3D37D4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3D3830(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA3D38C8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F6DEE0(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA3D392C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v1 + v3, a1);
}

uint64_t sub_1BA3D3984(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA3D3A44(uint64_t a1)
{
  sub_1B9F6DEE0(a1, v5);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v5, v1 + v3);
  swift_endAccess();
  return sub_1BA3D40BC(a1);
}

uint64_t sub_1BA3D3AB4(uint64_t a1)
{
  sub_1BA3D3B2C();
  sub_1B9F6DEE0(a1, v5);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v5, v1 + v3);
  swift_endAccess();
  return sub_1BA3D40BC(a1);
}

id sub_1BA3D3B2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = v2;
  v8 = v4;
  [v7 removeFromSuperview];
  [v8 removeFromSuperview];
  [v6 removeFromSuperview];
  sub_1B9F6DF70(0, &unk_1EDC5E200, &qword_1EDC6B4A0, 0x1E69DD250, sub_1B9F0ADF8);
  swift_arrayDestroy();
  v9 = *(v0 + v1);
  *(v0 + v1) = 0;

  v10 = *(v0 + v3);
  *(v0 + v3) = 0;

  v11 = *(v0 + v5);
  *(v0 + v5) = 0;

  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint);
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

void *sub_1BA3D3CAC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3D3CF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA3D3DB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3D3DFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA3D3EB4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3D3F00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA3D3FB8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3D4004(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA3D40BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F6DEE0(a1, v71);
  if (v72)
  {
    sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
    sub_1B9F0D950(0, &qword_1EBBF20B8, &protocol descriptor for DismissibleBoldTitleHeaderDataSource);
    if (swift_dynamicCast())
    {
      if (*(&v74 + 1))
      {
        sub_1B9F1134C(&v73, v76);
        [v2 setUserInteractionEnabled_];
        v10 = v77;
        v9 = v78;
        __swift_project_boxed_opaque_existential_1(v76, v77);
        v11 = (*(*(v9 + 8) + 32))(v10);
        if (v12)
        {
          v13 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title);
          *v13 = v11;
          v13[1] = v12;

          type metadata accessor for DynamicFontLabel();
          v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          [v14 setNumberOfLines_];
          [v14 setLineBreakMode_];
          [v14 setTranslatesAutoresizingMaskIntoConstraints_];
          LODWORD(v15) = 1148846080;
          [v14 setContentCompressionResistancePriority:1 forAxis:v15];
          v16 = [objc_opt_self() labelColor];
          [v14 setTextColor_];

          v17 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
          [v14 setFont_];

          [v2 addSubview_];
          v18 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
          swift_beginAccess();
          v19 = *(v2 + v18);
          *(v2 + v18) = v14;
        }

        sub_1BA3D6114();
        sub_1BA3D6008();
        sub_1BA3D5BAC();
        sub_1BA3D6810();
        v70 = MEMORY[0x1E69E7CC0];
        v20 = sub_1BA3D4BE0();
        if (v20)
        {
          sub_1B9F73B50(v20);
        }

        v21 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
        swift_beginAccess();
        v22 = *(v2 + v21);
        if (v22)
        {
          v23 = v22;
          v24 = [v23 topAnchor];
          v25 = [v2 safeAreaLayoutGuide];
          v26 = [v25 topAnchor];

          v27 = [v24 constraintEqualToAnchor:v26 constant:12.0];
          MEMORY[0x1BFAF1510]();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v28 = [v23 leadingAnchor];
          v29 = [v2 safeAreaLayoutGuide];
          v30 = [v29 leadingAnchor];

          v31 = [v28 constraintEqualToAnchor:v30 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v32 = [v23 bottomAnchor];
          v33 = [v2 safeAreaLayoutGuide];
          v34 = [v33 bottomAnchor];

          v35 = [v32 constraintEqualToAnchor:v34 constant:-0.0];
          MEMORY[0x1BFAF1510]();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v36 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
          swift_beginAccess();
          if (*(v2 + v36))
          {
          }

          else
          {
            v41 = [v23 trailingAnchor];

            v42 = [v2 safeAreaLayoutGuide];
            v43 = [v42 trailingAnchor];

            v44 = [v41 constraintEqualToAnchor:v43 constant:-16.0];
            MEMORY[0x1BFAF1510]();
            if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v45 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
        swift_beginAccess();
        v46 = *(v2 + v45);
        if (v46)
        {
          v47 = *(v2 + v21);
          if (v47)
          {
            v48 = v46;
            v49 = v47;
            v50 = [v49 trailingAnchor];
            v51 = [v48 leadingAnchor];
            v52 = [v50 constraintEqualToAnchor:v51 constant:-8.0];

            MEMORY[0x1BFAF1510]();
            if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          else
          {
            v53 = [v46 bottomAnchor];
            v54 = [v2 safeAreaLayoutGuide];
            v55 = [v54 bottomAnchor];

            v56 = [v53 constraintEqualToAnchor:v55 constant:-0.0];
            MEMORY[0x1BFAF1510]();
            if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v57 = &selRef_constraintGreaterThanOrEqualToConstant_;
        if (!*(v2 + v21) && !*(v2 + v45))
        {
          v57 = &selRef_constraintEqualToConstant_;
        }

        v58 = [v2 heightAnchor];
        v59 = [v58 *v57];

        v60 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint);
        *(v2 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint) = v59;
        v61 = v59;

        MEMORY[0x1BFAF1510]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        v62 = sub_1BA4A6BB8();
        (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C0))(v62);
        v64 = v77;
        v63 = v78;
        __swift_project_boxed_opaque_existential_1(v76, v77);
        (*(*(v63 + 8) + 32))(v64);
        if (v65)
        {
        }

        else
        {
          v66 = [objc_opt_self() clearColor];
          [v2 setBackgroundColor_];
        }

        v67 = objc_opt_self();
        sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
        v68 = sub_1BA4A6AE8();

        [v67 activateConstraints_];

        return __swift_destroy_boxed_opaque_existential_1(v76);
      }
    }

    else
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }
  }

  else
  {
    sub_1B9F6F238(v71, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  sub_1B9F6F238(&v73, &qword_1EBBF20B0, &qword_1EBBF20B8, &protocol descriptor for DismissibleBoldTitleHeaderDataSource, sub_1B9F0D950);
  sub_1BA4A3DD8();
  v37 = sub_1BA4A3E88();
  v38 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1B9F07000, v37, v38, "Incorrect configuration: expecting a DismissibleBoldTitleHeaderDataSource", v39, 2u);
    MEMORY[0x1BFAF43A0](v39, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA3D4BE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v38 = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v4], v35);
  v5 = v36;
  if (v36)
  {
    v6 = v37;
    v7 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v8 = *(v5 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7, v7);
    v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v11, v9);
    v12 = v3;
    sub_1B9F6F238(v35, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v6) = (*(v6 + 48))(v5, v6);
    (*(v8 + 8))(v11, v5);
    if ((v6 & 1) == 0)
    {
      v13 = sub_1BA3D50F8();
      if (v13)
      {
        sub_1B9F73B50(v13);
      }
    }
  }

  else
  {
    v15 = v3;
    sub_1B9F6F238(v35, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }

  v16 = [v3 topAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:12.0];
  MEMORY[0x1BFAF1510]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v20 = [v3 trailingAnchor];
  v21 = [v1 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v24 = [v3 widthAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor:v25 multiplier:0.37];

  MEMORY[0x1BFAF1510]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v14 = v38;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v28 = *&v1[v27];
  if (v28 && (v29 = [v28 heightAnchor]) != 0)
  {
    v30 = v29;
    v31 = [v3 heightAnchor];
    v32 = [v31 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    return v38;
  }

  else
  {
  }

  return v14;
}

uint64_t sub_1BA3D50F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    return 0;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v6 = v3;
  v7 = v5;
  [v7 addSubview_];
  v8 = [v6 leadingAnchor];
  v9 = [v7 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v12 = *&v1[v11];
  if (v12)
  {
    v13 = v12;

    v14 = [v6 firstBaselineAnchor];
    v15 = [v13 firstBaselineAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    LODWORD(v17) = 1144750080;
    [v16 setPriority_];
    v18 = v16;
    MEMORY[0x1BFAF1510]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v19 = [v6 topAnchor];

    v20 = [v1 layoutMarginsGuide];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintGreaterThanOrEqualToAnchor_];
    MEMORY[0x1BFAF1510]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {

    v24 = [v6 centerYAnchor];
    v25 = [v7 centerYAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  v27 = [v6 trailingAnchor];

  v28 = [v7 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v30;
}

void sub_1BA3D55B4(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DismissibleBoldTitleHeaderView();
  v59.receiver = v2;
  v59.super_class = v9;
  objc_msgSendSuper2(&v59, sel_traitCollectionDidChange_, a1);
  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    v19 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
    swift_beginAccess();
    v20 = *&v2[v19];
    if (v20)
    {
      v21 = *MEMORY[0x1E69DDCF8];
      v22 = *MEMORY[0x1E69DB980];
      v23 = v20;
      v24 = sub_1B9F6B774(v21, v22, 0, 0, 0, 0, 1);
      [v23 setFont_];
    }

    v25 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
    swift_beginAccess();
    v26 = *&v2[v25];
    if (v26)
    {
      v27 = *MEMORY[0x1E69DDD28];
      v28 = objc_opt_self();
      v29 = v26;
      v30 = [v28 preferredFontDescriptorWithTextStyle:v27 compatibleWithTraitCollection:0];
      v31 = [v30 fontDescriptorWithSymbolicTraits_];

      if (v31)
      {
        v32 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];
      }

      else
      {
        v55 = v2;
        sub_1BA4A3DD8();
        v33 = v27;
        v34 = sub_1BA4A3E88();
        v35 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v58 = v53;
          *v36 = 136315906;
          v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v54 = v33;
          v39 = sub_1B9F0B82C(v37, v38, &v58);

          *(v36 + 4) = v39;
          *(v36 + 12) = 2080;
          v56 = 0;
          v57 = 1;
          sub_1BA1508E8(0);
          v40 = sub_1BA4A6808();
          v42 = sub_1B9F0B82C(v40, v41, &v58);

          *(v36 + 14) = v42;
          *(v36 + 22) = 2080;
          LODWORD(v56) = 2;
          type metadata accessor for SymbolicTraits(0);
          v43 = sub_1BA4A6808();
          v45 = sub_1B9F0B82C(v43, v44, &v58);
          v33 = v54;

          *(v36 + 24) = v45;
          *(v36 + 32) = 2112;
          v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v36 + 34) = v46;
          v47 = v35;
          v48 = v52;
          *v52 = v46;
          _os_log_impl(&dword_1B9F07000, v34, v47, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v36, 0x2Au);
          sub_1B9F6F238(v48, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
          MEMORY[0x1BFAF43A0](v48, -1, -1);
          v49 = v53;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v49, -1, -1);
          MEMORY[0x1BFAF43A0](v36, -1, -1);
        }

        (*(v5 + 8))(v8, v4);
        v31 = [v28 preferredFontDescriptorWithTextStyle_];
        v32 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];
      }

      v50 = v32;

      [v29 setFont_];
    }

    sub_1BA3D5BAC();
    sub_1BA3D6810();
    return;
  }

  v12 = [a1 preferredContentSizeCategory];
  v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v15 = v14;
  if (v13 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v15 == v16)
  {

    return;
  }

  v18 = sub_1BA4A8338();

  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_1BA3D5BAC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title + 8);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title);
      v5 = v2;

      v6 = sub_1BA4A6758();
      [v5 setAccessibilityLabel_];

      v7 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
      swift_beginAccess();
      sub_1B9F6DEE0(v0 + v7, v30);
      v8 = v31;
      if (v31)
      {
        v9 = v32;
        v10 = __swift_project_boxed_opaque_existential_1(v30, v31);
        v11 = *(v8 - 8);
        v12 = MEMORY[0x1EEE9AC00](v10, v10);
        v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
        (*(v11 + 16))(v14, v12);
        sub_1B9F6F238(v30, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
        v15 = (*(v9 + 24))(v8, v9);
        (*(v11 + 8))(v14, v8);
        if (v15)
        {
          v16 = v5;
          v17 = [v16 font];
          if (!v17)
          {
            __break(1u);
            return;
          }

          v18 = v17;
          v19 = [objc_opt_self() configurationWithFont:v17 scale:-1];

          v20 = [v15 imageWithConfiguration_];
          v21 = [v20 imageWithRenderingMode_];
          v22 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
          if (([v20 isSymbolImage] & 1) == 0)
          {
            [v22 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
          }

          [v22 setImage_];
          sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
          v23 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

          v30[0] = 9011426;
          v30[1] = 0xA300000000000000;
          MEMORY[0x1BFAF1350](v4, v3);

          v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v25 = sub_1BA4A6758();

          v26 = [v24 initWithString_];

          [v23 appendAttributedString_];
          v27 = v23;
          [v16 setAttributedText_];

          goto LABEL_11;
        }
      }

      else
      {
        sub_1B9F6F238(v30, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      }

      v28 = v5;
      v27 = sub_1BA4A6758();

      [v28 setText_];
LABEL_11:
    }
  }
}

void sub_1BA3D6008()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  if (*&v0[v1])
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    LODWORD(v3) = 1148846080;
    [v2 setContentHuggingPriority:1 forAxis:v3];
    LODWORD(v4) = 1148846080;
    [v2 setContentCompressionResistancePriority:0 forAxis:v4];
    LODWORD(v5) = 1148846080;
    [v2 setContentCompressionResistancePriority:1 forAxis:v5];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    v6 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
    swift_beginAccess();
    v7 = *&v0[v6];
    *&v0[v6] = v2;
  }
}

void sub_1BA3D6114()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v7, &v59);
  v8 = v61;
  if (v61)
  {
    v9 = v62;
    v10 = __swift_project_boxed_opaque_existential_1(&v59, v61);
    v11 = *(v8 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10, v10);
    v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    sub_1B9F6F238(&v59, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v9) = (*(v9 + 48))(v8, v9);
    (*(v11 + 8))(v14, v8);
    if ((v9 & 1) == 0)
    {
      type metadata accessor for DynamicFontLabel();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v16 = MEMORY[0x1E69E7D40];
      v17 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x68);
      v18 = *MEMORY[0x1E69DDD28];
      v17();
      (*((*v16 & *v15) + 0x80))(2);
      v19 = objc_opt_self();
      v20 = v15;
      v21 = [v19 tertiaryLabelColor];
      [v20 setTextColor_];

      [v20 setTextAlignment_];
      [v20 setTranslatesAutoresizingMaskIntoConstraints_];
      [v20 setAdjustsFontSizeToFitWidth_];
      LODWORD(v22) = 1148846080;
      [v20 setContentCompressionResistancePriority:0 forAxis:v22];
      LODWORD(v23) = 1148846080;
      [v20 setContentCompressionResistancePriority:1 forAxis:v23];
      LODWORD(v24) = 1148846080;
      [v20 setContentHuggingPriority:0 forAxis:v24];
      v25 = objc_opt_self();
      v26 = [v25 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
      v27 = [v26 fontDescriptorWithSymbolicTraits_];

      if (v27)
      {
        v28 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
      }

      else
      {
        sub_1BA4A3DD8();
        v29 = v18;
        v30 = sub_1BA4A3E88();
        v31 = sub_1BA4A6FB8();
        v57 = v29;

        v56 = v30;
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v53 = v31;
          v33 = v32;
          v52 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58 = v54;
          *v33 = 136315906;
          v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v36 = sub_1B9F0B82C(v34, v35, &v58);
          v55 = v25;
          v37 = v36;

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          v59 = 0;
          v60 = 1;
          sub_1BA1508E8(0);
          v38 = sub_1BA4A6808();
          v40 = sub_1B9F0B82C(v38, v39, &v58);

          *(v33 + 14) = v40;
          *(v33 + 22) = 2080;
          LODWORD(v59) = 2;
          type metadata accessor for SymbolicTraits(0);
          v41 = sub_1BA4A6808();
          v43 = sub_1B9F0B82C(v41, v42, &v58);

          *(v33 + 24) = v43;
          v25 = v55;
          *(v33 + 32) = 2112;
          v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v33 + 34) = v44;
          v45 = v52;
          *v52 = v44;
          v46 = v56;
          _os_log_impl(&dword_1B9F07000, v56, v53, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v33, 0x2Au);
          sub_1B9F6F238(v45, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
          MEMORY[0x1BFAF43A0](v45, -1, -1);
          v47 = v54;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v47, -1, -1);
          MEMORY[0x1BFAF43A0](v33, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v6, v2);
        v27 = [v25 preferredFontDescriptorWithTextStyle_];
        v28 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
      }

      v48 = v28;

      [v20 setFont_];
      v49 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
      swift_beginAccess();
      v50 = *(v1 + v49);
      *(v1 + v49) = v15;
    }
  }

  else
  {
    sub_1B9F6F238(&v59, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }
}

void sub_1BA3D6810()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (!v7 || (v8 = [v7 font]) == 0)
  {
    v9 = *MEMORY[0x1E69DDD28];
    v10 = objc_opt_self();
    v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
    v12 = [v11 fontDescriptorWithSymbolicTraits_];

    if (v12)
    {
      v13 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
    }

    else
    {
      v39 = v0;
      sub_1BA4A3DD8();
      v14 = v9;
      v15 = sub_1BA4A3E88();
      v16 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42 = v37;
        *v17 = 136315906;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v38 = v14;
        v20 = sub_1B9F0B82C(v18, v19, &v42);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2080;
        v40 = 0;
        v41 = 1;
        sub_1BA1508E8(0);
        v21 = sub_1BA4A6808();
        v23 = sub_1B9F0B82C(v21, v22, &v42);

        *(v17 + 14) = v23;
        *(v17 + 22) = 2080;
        LODWORD(v40) = 2;
        type metadata accessor for SymbolicTraits(0);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v42);

        *(v17 + 24) = v26;
        v14 = v38;
        *(v17 + 32) = 2112;
        v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v17 + 34) = v27;
        v28 = v36;
        *v36 = v27;
        _os_log_impl(&dword_1B9F07000, v15, v16, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v17, 0x2Au);
        sub_1B9F6F238(v28, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v28, -1, -1);
        v29 = v37;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v29, -1, -1);
        MEMORY[0x1BFAF43A0](v17, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      v12 = [v10 preferredFontDescriptorWithTextStyle_];
      v13 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
      v0 = v39;
    }

    v8 = v13;
  }

  v30 = _sSo7UIImageC18HealthExperienceUIE9makeXMark4fontABSgSo6UIFontC_tFZ_0(v8);

  if (v30)
  {
    v31 = *(v0 + v6);
    if (v31)
    {
      v32 = v31;
      v33 = [v30 imageWithRenderingMode_];
      v34 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      if (([v30 isSymbolImage] & 1) == 0)
      {
        [v34 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
      }

      [v34 setImage_];
      sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
      v35 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

      [v32 setAttributedText_];
    }
  }
}

void sub_1BA3D6D00()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 labelColor];
    [v5 setTextColor_];
  }

  v7 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v1 tertiaryLabelColor];
    [v9 setTextColor_];
  }
}

void sub_1BA3D6E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1BA15930C(a1);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v8 = *&v2[v7];
  v9 = v8;
  LOBYTE(v8) = sub_1BA2EC9D4(v6, v8, 36.0, 36.0);

  if ((v8 & 1) == 0)
  {

LABEL_10:
    sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
    sub_1BA3955EC();
    v15 = sub_1BA4A6D68();
    v34.receiver = v3;
    v34.super_class = type metadata accessor for DismissibleBoldTitleHeaderView();
    objc_msgSendSuper2(&v34, sel_touchesBegan_withEvent_, v15, a2);
    goto LABEL_16;
  }

  v10 = [v2 viewController];
  if (v10)
  {
    v11 = v10;
    UIViewController.resolvedPresentation.getter(&aBlock);

    v12 = aBlock;
    v13 = *&v3[v7];
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 0;
    v13 = *&v2[v7];
    if (v13)
    {
LABEL_5:
      if ((v12 - 6) < 2)
      {
        v21 = objc_opt_self();
        v15 = v13;
        v22 = [v21 systemGray5Color];
        v23 = [v21 tertiarySystemGroupedBackgroundColor];
        v24 = swift_allocObject();
        v24[2] = 0;
        v24[3] = v23;
        v24[4] = 0;
        v24[5] = v22;
        v19 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v32 = sub_1B9FD7F54;
        v33 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v20 = &block_descriptor_108;
      }

      else
      {
        if (v12 != 4 && v12 != 12)
        {
          v27 = objc_opt_self();
          v15 = v13;
          v26 = [v27 systemGray5Color];
          goto LABEL_15;
        }

        v14 = objc_opt_self();
        v15 = v13;
        v16 = [v14 systemGray5Color];
        v17 = [v14 systemGray4Color];
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = v17;
        v18[4] = 0;
        v18[5] = v16;
        v19 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v32 = sub_1B9FE1088;
        v33 = v18;
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v20 = &block_descriptor_9_0;
      }

      v30 = sub_1B9F7EBBC;
      v31 = v20;
      v25 = _Block_copy(&aBlock);
      v26 = [v19 initWithDynamicProvider_];
      _Block_release(v25);

LABEL_15:
      [v15 setTextColor_];

      goto LABEL_16;
    }
  }

  v15 = v6;
LABEL_16:
}

void sub_1BA3D71F8(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  v5 = sub_1BA4A6D68();
  v22.receiver = v2;
  v22.super_class = type metadata accessor for DismissibleBoldTitleHeaderView();
  objc_msgSendSuper2(&v22, sel_touchesEnded_withEvent_, v5, a2);

  v6 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (v7)
  {
    v8 = v7;
    v9 = [v2 backgroundColor];
    v10 = objc_opt_self();
    v11 = [v10 clearColor];
    v12 = v11;
    if (v9)
    {
      if (v11)
      {
        sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
        v13 = sub_1BA4A7798();

        if ((v13 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_7:
        v14 = &selRef_tertiaryLabelColor;
LABEL_11:
        v15 = [v10 *v14];
        [v8 setTextColor_];

        goto LABEL_12;
      }

      v12 = v9;
    }

    else if (!v11)
    {
      goto LABEL_7;
    }

LABEL_10:
    v14 = &selRef_whiteColor;
    goto LABEL_11;
  }

LABEL_12:
  v16 = sub_1BA15930C(a1);
  if (v16)
  {
    v17 = v16;
    v18 = *&v2[v6];
    v19 = v18;
    LOBYTE(v18) = sub_1BA2EC9D4(v17, v18, 36.0, 36.0);

    if (v18)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        sub_1BA40B7AC();
      }
    }
  }
}

double sub_1BA3D7438(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  v8 = sub_1BA4A6D78();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_1BA3D74E8(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  v4 = sub_1BA4A6D68();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DismissibleBoldTitleHeaderView();
  objc_msgSendSuper2(&v15, sel_touchesCancelled_withEvent_, v4, a2);

  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6)
  {
    v7 = v6;
    v8 = [v2 backgroundColor];
    v9 = objc_opt_self();
    v10 = [v9 clearColor];
    v11 = v10;
    if (v8)
    {
      if (v10)
      {
        sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
        v12 = sub_1BA4A7798();

        if ((v12 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_7:
        v13 = &selRef_tertiaryLabelColor;
LABEL_11:
        v14 = [v9 *v13];
        [v7 setTextColor_];

        return;
      }

      v11 = v8;
    }

    else if (!v10)
    {
      goto LABEL_7;
    }

LABEL_10:
    v13 = &selRef_whiteColor;
    goto LABEL_11;
  }
}

id DismissibleBoldTitleHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DismissibleBoldTitleHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView] = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title];
  v11 = type metadata accessor for DismissibleBoldTitleHeaderView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = v4;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id DismissibleBoldTitleHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DismissibleBoldTitleHeaderView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView] = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title];
  v5 = type metadata accessor for DismissibleBoldTitleHeaderView();
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id DismissibleBoldTitleHeaderView.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DismissibleBoldTitleHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_1BA3D7AB0(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA3D7B98(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3D7BF8(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_chromeHostView;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void *static FeatureStatusSupport.getHealthChecklistSettingsSource(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  result = (*(v4 + 40))(&v16, v3, v4);
  if (v16 == 6)
  {
    v10 = 0;
    v12 = 1;
  }

  else if (v16 == 4)
  {
    type metadata accessor for DataTypeDetailViewController();
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
      v7 = result;
      swift_beginAccess();
      sub_1B9F0A534(v7 + v6, v13);
      v8 = v14;
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v10 = (*(v9 + 24))(v8, v9);
      v12 = v11;
      result = __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }
  }

  else
  {
    v10 = 0;
    v12 = 2;
  }

  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t static PDFRenderableBuilder.buildExpression(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1BA3D8580(v3, v1, v2);
}

uint64_t static PDFRenderableBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static PDFSectionProviderBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_1B9F1B560(0, &qword_1EBBEF6B8, &qword_1EBBEDF00, &protocol descriptor for PDFSectionProvider);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1B9F0A534(a1, v2 + 32);
  return v2;
}

void sub_1BA3D8400(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v8 = (a1 + 32);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *v8;
    v11 = *(*v8 + 16);
    v12 = *(v9 + 16);
    if (__OFADD__(v12, v11))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v12 + v11 <= *(v9 + 24) >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = a2();
      if (*(v10 + 16))
      {
LABEL_11:
        if ((*(v9 + 24) >> 1) - *(v9 + 16) < v11)
        {
          goto LABEL_18;
        }

        sub_1B9F0D950(0, a3, a4);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v13 = *(v9 + 16);
          v14 = __OFADD__(v13, v11);
          v15 = v13 + v11;
          if (v14)
          {
            goto LABEL_19;
          }

          *(v9 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_17;
    }

LABEL_4:
    ++v8;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1BA3D8580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_1B9F1B560(0, &qword_1EDC5DC80, qword_1EDC69430, &protocol descriptor for PDFRenderable);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  sub_1B9F25598(&v8, v6 + 32);
  return v6;
}

void _s18HealthExperienceUI20PDFRenderableBuilderV10buildBlockySayAA0D0_pGAFd_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 32); ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v2 = sub_1BA27FAAC(isUniquelyReferenced_nonNull_native, v9, 1, v2);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_21;
        }

        sub_1B9F0D950(0, qword_1EDC69430, &protocol descriptor for PDFRenderable);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = v2[2];
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          v2[2] = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

double sub_1BA3D88A4()
{
  sub_1BA3DAE94(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5480;
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 8);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 16);
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 24);
  v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 32);
  *(v1 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
  *(v1 + 64) = sub_1BA02090C();
  v7 = swift_allocObject();
  *(v1 + 32) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;

  sub_1BA0EB668(0, v1, 1);

  return result;
}

double sub_1BA3D8A20()
{

  return result;
}

uint64_t DownloadingPinningDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DownloadingPinningDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1BA3D8C84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedFeedItemsPublisher;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA3D8CEC()
{
  swift_beginAccess();

  return result;
}

double sub_1BA3D8D34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedFeedItemsPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t BrowsePinnedContentDataSource.init(healthExperienceStore:healthStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedFeedItemsPublisher;
  v8 = MEMORY[0x1E69E7CC0];
  v50[0] = MEMORY[0x1E69E7CC0];
  sub_1BA3DABB4(0);
  swift_allocObject();
  *(v3 + v7) = sub_1BA4A4DF8();
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedContentChangesCancellable) = 0;
  sub_1BA3DAC4C(a1, a3);
  v10 = v9;
  v11 = type metadata accessor for ListLayoutConfiguration(0);
  v12 = swift_allocBox();
  v14 = v13;
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1EDC6CBB8);
  sub_1B9F37E38(v15, v14);
  *(v14 + 152) = 0;
  *(v14 + 64) = 0;
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  sub_1B9F320F0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v8;

  v17 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 0, sub_1BA3DAF00, v12);
  v50[3] = type metadata accessor for HeaderItem(0);
  v50[4] = sub_1B9F3252C(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  v50[0] = v10;
  sub_1B9F0A534(v50, v49);
  v18 = swift_allocObject();
  sub_1B9F1134C(v49, v18 + 16);
  sub_1B9F32574(0, qword_1EDC693A8, type metadata accessor for Supplementary);
  v19 = swift_allocObject();
  v19[4] = v17;
  v19[5] = sub_1B9F79BC8;
  v19[6] = v18;
  v20 = *(v17 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v21 = *(v17 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v19[2] = v20;
  v19[3] = v21;

  __swift_destroy_boxed_opaque_existential_1(v50);
  if (qword_1EBBE8920 != -1)
  {
    swift_once();
  }

  v23 = qword_1EBBF20E0;
  v22 = *algn_1EBBF20E8;
  type metadata accessor for DownloadingPinningDataSource(0);
  v24 = swift_allocObject();
  v50[0] = type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F2E628(0, &qword_1EDC6C3D0, type metadata accessor for EmptyStateCollectionViewCell);

  v25 = sub_1BA4A6808();
  v26 = v24 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem;
  *v26 = v25;
  *(v26 + 8) = v27;
  *(v26 + 16) = v23;
  *(v26 + 24) = v22;
  *(v26 + 32) = 1;
  sub_1B9F2E074(MEMORY[0x1E69E7CC0], 1, sub_1BA1DF920, 0);
  sub_1B9F0A534(a3, v50);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = sub_1BA4A1B68();
  v29 = objc_allocWithZone(type metadata accessor for PinnedContentDataSource(0));
  v46 = PinnedContentDataSource.init(pinnedContentManager:context:)(v50, v28);
  sub_1BA3DAF1C(0);
  swift_allocObject();

  v31 = sub_1BA064790(v30, v46);

  v47 = a3;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedContentWithCloudStateDataSource) = v31;
  v32 = sub_1BA3DAFA0();
  sub_1BA3DB1F0(0);
  swift_allocObject();

  v34 = sub_1BA064574(v33, v32);

  v35 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_cloudStateOrPinnedContentOrEmptyStateDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_cloudStateOrPinnedContentOrEmptyStateDataSource) = v34;
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1BA4B5480;
  sub_1BA3DAE94(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BA4B5480;
  *(v37 + 56) = type metadata accessor for ContentConfigurationItem(0);
  *(v37 + 64) = sub_1B9F3252C(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v37 + 32));
  sub_1BA3D9BD0(a1, a2, boxed_opaque_existential_1);
  *(v36 + 32) = v37;
  v39 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(v36, 1, sub_1B9F5AEA0, 0);
  sub_1B9F32574(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
  v40 = swift_allocObject();
  v40[4] = v39;
  v40[5] = sub_1B9F405BC;
  v40[6] = 0;
  v41 = *(v39 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v42 = *(v39 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v40[2] = v41;
  v40[3] = v42;
  sub_1B9F1DEA0(0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BA4B9FD0;
  *(v43 + 32) = v19;
  *(v43 + 40) = &protocol witness table for Supplementary<A>;
  *(v43 + 48) = *(v4 + v35);
  *(v43 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  *(v43 + 64) = v40;
  *(v43 + 72) = &protocol witness table for CellRegistering<A>;

  v44 = CompoundSectionedDataSource.init(_:)(v43);
  swift_beginAccess();

  *&v49[0] = sub_1BA3DA3B0();
  sub_1BA4A4DA8();

  __swift_destroy_boxed_opaque_existential_1(v47);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v44;
}

double sub_1BA3D94E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F264E0();
  swift_beginAccess();
  v14 = *(v4 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a4;
  aBlock[4] = sub_1B9F8C0CC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_109;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  [v17 notifyObservers_];
  _Block_release(v16);

  v18 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_cloudStateOrPinnedContentOrEmptyStateDataSource);
  v19 = *(v18 + 24) == a1 && *(v18 + 32) == a2;
  if (v19 || (sub_1BA4A8338() & 1) != 0)
  {
    v21 = sub_1BA3DA3B0();
    sub_1BA4A3D68();
    swift_bridgeObjectRetain_n();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v22, v23))
    {
      v35 = v9;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315650;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, aBlock);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      if (v21 >> 62)
      {
        v29 = sub_1BA4A7CC8();
      }

      else
      {
        v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v24 + 14) = v29;

      *(v24 + 22) = 2080;
      v30 = sub_1BA4A27B8();
      v31 = MEMORY[0x1BFAF1560](v21, v30);
      v33 = sub_1B9F0B82C(v31, v32, aBlock);

      *(v24 + 24) = v33;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s]: Received updates to pinned content, sending update with %ld items: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      (*(v10 + 8))(v13, v35);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v10 + 8))(v13, v9);
    }

    swift_beginAccess();
    v36 = v21;

    sub_1BA4A4DA8();
  }

  return result;
}

void sub_1BA3D9A10(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F0A534(a2, v12);
  sub_1BA15E094();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 32) = sub_1BA4A1D78();
  sub_1B9F0A534(a3, v11);
  v6 = objc_allocWithZone(type metadata accessor for EditFavoritesCollectionViewController());
  v7 = EditFavoritesCollectionViewController.init(pinnedContentManager:sourceProfiles:healthExperienceStore:)(v12, v5, v11);
  v8 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v9 = [a1 viewController];
  if (v9)
  {
    v10 = v9;
    [v9 presentViewController:v8 animated:1 completion:0];
  }
}

void *sub_1BA3D9B14(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  swift_beginAccess();
  sub_1B9F37E38(v8, v7);
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v7);
  return v9;
}

uint64_t sub_1BA3D9BD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v54 = a2;
  sub_1BA3DB458(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v50 = &v44 - v6;
  v7 = sub_1BA4A3FB8();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BA4A3F18();
  v11 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1BA4A4428();
  v15 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = [objc_opt_self() bundleForClass_];
  sub_1BA4A43A8();
  v20 = [objc_opt_self() configurationPreferringMulticolor];
  v21 = sub_1BA4A6758();
  v22 = objc_opt_self();
  v49 = v20;
  v23 = [v22 _systemImageNamed_withConfiguration_];

  sub_1BA4A43D8();
  sub_1BA4A1318();
  sub_1BA4A43B8();
  *&v59[0] = sub_1BA4A85D8();
  *(&v59[0] + 1) = v24;
  MEMORY[0x1BFAF1350](0x6C6C41776F68735FLL, 0xEC00000061746144);
  v45 = *(&v59[0] + 1);
  v46 = *&v59[0];
  v25 = MEMORY[0x1E69DC110];
  v26 = v55;
  *(a3 + 96) = v55;
  *(a3 + 104) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 72));
  (*(v15 + 16))(boxed_opaque_existential_1, v18, v26);
  sub_1BA3DB458(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5480;
  v29 = v48;
  (*(v11 + 104))(v14, *MEMORY[0x1E69DBF28], v48);
  v30 = sub_1BA4A3F48();
  (*(*(v30 - 8) + 56))(v50, 1, 1, v30);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v51 + 8))(v10, v52);
  (*(v11 + 8))(v14, v29);
  sub_1B9F0A534(v53, v59);
  v31 = swift_allocObject();
  v32 = v54;
  *(v31 + 16) = v54;
  sub_1B9F1134C(v59, v31 + 24);
  v33 = type metadata accessor for ContentConfigurationItem(0);
  v34 = v33[10];
  v35 = sub_1BA4A4168();
  (*(*(v35 - 8) + 56))(a3 + v34, 1, 1, v35);
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  v36 = v32;
  sub_1BA4A7DF8();
  v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v39 = v38;

  *&v56 = v37;
  *(&v56 + 1) = v39;
  MEMORY[0x1BFAF1350](0xD000000000000012, 0x80000001BA5062C0);
  v40 = v56;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  sub_1B9F2F610(&v56);
  *(&v57 + 1) = &type metadata for BasicCellSelectionHandler;
  v58 = &off_1F381BCC8;

  *&v56 = sub_1BA3DB4BC;
  *(&v56 + 1) = v31;
  LOBYTE(v57) = 2;
  (*(v15 + 8))(v18, v55);
  sub_1B9F2F698(&v56, a3 + 16);
  *(a3 + v33[12]) = 0;
  *(a3 + v33[13]) = 0;
  v41 = v45;
  *a3 = v46;
  *(a3 + 8) = v41;
  *(a3 + 112) = 0;
  *(a3 + 120) = v28;
  *(a3 + 56) = v40;
  v42 = (a3 + v33[11]);
  *v42 = 0;
  v42[1] = 0;
  return sub_1B9F2F610(&v56);
}

void sub_1BA3DA2C0(void *a1, void *a2, uint64_t a3)
{
  sub_1B9F0A534(a3, v9);
  v5 = objc_allocWithZone(type metadata accessor for AllHealthDataViewController());
  v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation] = 1;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthStore] = a2;
  sub_1B9F0A534(v9, &v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthExperienceStore]);
  sub_1B9F0A534(v9, v8);
  type metadata accessor for AllHealthDataDataSource(0);
  swift_allocObject();
  v6 = sub_1BA1ECE48(a2, v8);
  v7 = CompoundDataSourceCollectionViewController.init(dataSource:)(v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  [a1 showViewController:v7 sender:a1];
}

uint64_t sub_1BA3DA3B0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FC234();
  v6 = v5;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = SnapshotDataSource.numberOfSections.getter(ObjectType, v6);
  swift_unknownObjectRelease();
  if (v8 != 1)
  {
    goto LABEL_13;
  }

  sub_1BA0FC234();
  v10 = v9;
  v11 = swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = SnapshotDataSource.contentsAsArray()(v11, v10);
  swift_unknownObjectRelease();
  if (!*(v12 + 2))
  {

LABEL_13:
    sub_1BA4A3D68();

    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v35[0] = v21;
      *v20 = 136315394;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, v35);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      sub_1BA0FC234();
      v26 = v25;
      v27 = swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = SnapshotDataSource.numberOfSections.getter(v27, v26);
      swift_unknownObjectRelease();
      v34[0] = v28;
      v29 = sub_1BA4A82D8();
      v31 = sub_1B9F0B82C(v29, v30, v35);

      *(v20 + 14) = v31;
      _os_log_impl(&dword_1B9F07000, v18, v19, "[%s]: Unexpected number of sections when resolving gradient content: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v12 + 6);

  v36 = MEMORY[0x1E69E7CC0];
  v14 = *(v13 + 16);
  if (!v14)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69A3310];
  do
  {
    sub_1B9F0A534(v15, v35);
    sub_1B9F1134C(v35, v34);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50, v17, 1);
    sub_1BA4A27B8();
    if ((swift_dynamicCast() & 1) != 0 && v34[5])
    {
      MEMORY[0x1BFAF1510]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33[1] = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v16 = v36;
    }

    v15 += 40;
    --v14;
  }

  while (v14);

  return v16;
}

double sub_1BA3DA854()
{

  return result;
}

uint64_t BrowsePinnedContentDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BrowsePinnedContentDataSource.__deallocating_deinit()
{
  BrowsePinnedContentDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA3DA9FC()
{
  type metadata accessor for BrowsePinnedContentDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BA4A1318();
  v4 = v3;

  qword_1EBBF20D0 = v2;
  *algn_1EBBF20D8 = v4;
}

void sub_1BA3DAAD8()
{
  type metadata accessor for BrowsePinnedContentDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BA4A1318();
  v4 = v3;

  qword_1EBBF20E0 = v2;
  *algn_1EBBF20E8 = v4;
}

void sub_1BA3DABB4(uint64_t a1)
{
  if (!qword_1EBBF20F0)
  {
    sub_1BA3DB458(255, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A4DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF20F0);
    }
  }
}

void sub_1BA3DAC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditFavoritesCollectionViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_1BA4A1318();
  v13 = v12;

  v14 = [v9 bundleForClass_];
  v15 = sub_1BA4A1318();
  v17 = v16;

  sub_1B9F0A534(a2, v20);
  sub_1B9F0A534(a1, v19);
  v18 = swift_allocObject();
  sub_1B9F1134C(v20, v18 + 16);
  sub_1B9F1134C(v19, v18 + 56);
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v11, v13, v15, v17, sub_1BA3DB4C8, v18, v7, 0, 0);
}

void sub_1BA3DAE94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA3DAF1C(uint64_t a1)
{
  if (!qword_1EBBF2100)
  {
    v4[0] = type metadata accessor for DownloadingPinningDataSource(255);
    v4[1] = type metadata accessor for PinnedContentDataSource(255);
    v4[2] = &protocol witness table for MutableArrayDataSource;
    v4[3] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    v2 = type metadata accessor for PrimarySecondaryDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF2100);
    }
  }
}

uint64_t sub_1BA3DAFA0()
{
  v0 = type metadata accessor for ListLayoutConfiguration(0);
  v1 = swift_allocBox();
  v3 = v2;
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDC6CB90);
  sub_1B9F37E38(v4, v3);
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  *(v3 + 64) = xmmword_1EDC6D270;
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  sub_1B9F320F0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA3DAE94(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  if (qword_1EBBE8918 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBBF20D0;
  v7 = *algn_1EBBF20D8;
  *(v6 + 56) = &type metadata for TitleEmptyStateCollectionViewCellItem;
  *(v6 + 64) = sub_1B9F2F068();
  v9 = swift_allocObject();
  *(v6 + 32) = v9;
  type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1B9F2E628(0, qword_1EDC6BBE0, type metadata accessor for TitleEmptyStateCollectionViewCell);

  v9[2] = sub_1BA4A6808();
  v9[3] = v10;
  v9[4] = v8;
  v9[5] = v7;
  *(inited + 32) = v6;

  v11 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1BA3DB4F4, v1);

  return v11;
}

void sub_1BA3DB1F0(uint64_t a1)
{
  if (!qword_1EBBF2108)
  {
    sub_1BA3DAF1C(255);
    v5[0] = v2;
    v5[1] = type metadata accessor for MutableArrayDataSourceWithLayout(255);
    v5[2] = &protocol witness table for PrimarySecondaryDataSource<A, B>;
    v5[3] = &protocol witness table for MutableArrayDataSource;
    v3 = type metadata accessor for PrimarySecondaryDataSource(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EBBF2108);
    }
  }
}

void sub_1BA3DB458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1BA3DB508(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

double sub_1BA3DB518()
{
  sub_1B9F820AC();

  return result;
}

double sub_1BA3DB540(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  if (v3 == a1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4, v5);
    v11 = v6;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    v12 = v1;
    v13 = a1;
    sub_1BA3DB93C(v9, sub_1BA3DC508, &v11, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double sub_1BA3DB68C(uint64_t a1)
{
  *(v1 + 24) = a1;

  return result;
}

double sub_1BA3DB69C()
{
  sub_1B9F8224C();

  return result;
}

double sub_1BA3DB6C4(uint64_t a1)
{
  v3 = v1[3];
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 120);
  v9 = *(*v1 + 128);
  v10 = *(*v1 + 136);
  v18 = *(*v1 + 80);
  v20[0] = v18;
  v20[1] = v4;
  v20[2] = v5;
  v20[3] = v6;
  v20[4] = v7;
  v20[5] = v8;
  v20[6] = v9;
  v20[7] = v10;
  v11 = type metadata accessor for SnidgetContentView.ViewModel(0, v20);
  v19 = a1;
  if (v3 == a1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11, v12);
    v17[0] = v7;
    v17[1] = v8;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v14);
    v17[2] = v1;
    v17[3] = v19;
    sub_1BA3DB93C(v15, sub_1BA3DC458, v17, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t SnidgetTileView.ViewModel.__allocating_init(headerViewModel:snidgetDataViewModel:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BA4A19D8();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t SnidgetTileView.ViewModel.init(headerViewModel:snidgetDataViewModel:)(uint64_t a1, uint64_t a2)
{
  sub_1BA4A19D8();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BA3DBA10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA5063E0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BA506400 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA506420 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1BA4A8338();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BA3DBB6C(unsigned __int8 a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3DBC68(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA3DBB44(v3, *v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3DBCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA3DBA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA3DBD08@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1BA3DC450();
  *a2 = result;
  return result;
}

uint64_t sub_1BA3DBD44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA3DBD98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SnidgetTileView.ViewModel.deinit()
{

  v1 = qword_1EDC6DA40;
  v2 = sub_1BA4A19E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SnidgetTileView.ViewModel.__deallocating_deinit()
{
  SnidgetTileView.ViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3DBEB4(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 112);
  v8 = *(*v2 + 120);
  v9 = *(*v2 + 128);
  v10 = *(*v2 + 136);
  v24 = *(*v2 + 88);
  v25 = v4;
  v28 = v4;
  v29 = v24;
  v22 = v6;
  v23 = v5;
  v30 = v5;
  v31 = v6;
  v20 = v8;
  v21 = v7;
  v32 = v7;
  v33 = v8;
  v18 = v10;
  v19 = v9;
  v34 = v9;
  v35 = v10;
  type metadata accessor for SnidgetTileView.ViewModel.CodingKeys(255, &v28);
  swift_getWitnessTable();
  v11 = sub_1BA4A8298();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v18 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  v28 = v2[2];
  LOBYTE(v36) = 0;
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  sub_1B9F4A8E0(&qword_1EDC663C0, type metadata accessor for DisclosureCellHeaderView.ViewModel, &protocol conformance descriptor for CellHeaderViewModel);
  v16 = v26;
  sub_1BA4A8288();
  if (!v16)
  {
    v36 = v2[3];
    v27 = 1;
    v28 = v25;
    v29 = v24;
    v30 = v23;
    v31 = v22;
    v32 = v21;
    v33 = v20;
    v34 = v19;
    v35 = v18;
    type metadata accessor for SnidgetContentView.ViewModel(0, &v28);
    swift_getWitnessTable();
    sub_1BA4A8288();
    LOBYTE(v28) = 2;
    sub_1BA4A19E8();
    sub_1B9F4A8E0(&qword_1EDC6AE20, MEMORY[0x1E69E81E0], MEMORY[0x1E69E81E8]);
    sub_1BA4A8288();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t SnidgetTileView.id.getter()
{
  v1 = *v0;

  return v1;
}

void SnidgetTileView.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

__n128 SnidgetTileView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

void sub_1BA3DC458()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

double keypath_getTm_4@<D0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  *a2 = a1();

  return result;
}

void sub_1BA3DC508()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1BA3DC544(char a1)
{
  result = 0x5F7972616D6D7573;
  switch(a1)
  {
    case 1:
      result = 0x6C6C615F776F6873;
      break;
    case 2:
      result = 0x745F6573776F7262;
      break;
    case 3:
      result = 0x79726F6765746163;
      break;
    case 4:
      result = 0x725F6C6961746564;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x656C69666F7270;
      break;
    case 8:
    case 9:
      result = 0x5F676E6972616873;
      break;
    case 10:
      result = 0x72616265646973;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E6572745F6C6C61;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void __swiftcall PromotionFeedItemViewActionHandler.createDataTypeDetailViewController(for:)(UIViewController_optional *__return_ptr retstr, HKObjectType a2)
{
  v22 = v2;
  v5 = sub_1BA4A3EA8();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI36AnyPlatformFeedItemViewActionHandler_context);
  UIViewController.resolvedHealthExperienceStore.getter(v34);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v11 = v7[5];
  v12 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v11);
  v13 = (*(v12 + 24))(v11, v12);
  v14 = [v13 profileIdentifier];

  LOBYTE(v35) = 15;
  LOBYTE(v12) = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v14, &v35);

  v15 = v7[5];
  v16 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v15);
  (*(v16 + 32))(v33, v15, v16);
  sub_1B9F0A534(v34, v27);
  *(&v28 + 1) = v10;
  LOBYTE(v29) = v12;
  sub_1BA4A2488();
  swift_allocObject();
  v17 = v10;
  *(&v29 + 1) = sub_1BA4A2468();
  sub_1BA3E2F04(v33, &v25, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  if (v26)
  {

    sub_1BA3E389C(v33, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0D950);
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_1B9F1134C(&v25, &v35);
  }

  else
  {
    v18 = sub_1BA4A22B8();
    v19 = sub_1BA4A22A8();
    *(&v36 + 1) = v18;
    *&v37 = MEMORY[0x1E69A3CF8];
    *&v35 = v19;
    sub_1BA3E389C(v33, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0D950);
    __swift_destroy_boxed_opaque_existential_1(v34);
    if (v26)
    {
      sub_1BA3E389C(&v25, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0D950);
    }
  }

  sub_1B9F1134C(&v35, v30);
  v32 = 0;
  v42 = 0;
  v39 = v30[0];
  v40 = v30[1];
  v35 = v27[0];
  v36 = v27[1];
  v37 = v28;
  v38 = v29;
  v41 = v31;
  v20 = sub_1BA4A6C68();
  MEMORY[0x1EEE9AC00](v20, v21);
  *(&v22 - 2) = a2.super.isa;
  *(&v22 - 1) = &v35;
  sub_1BA1E0DE4(sub_1BA3E2ED4, (&v22 - 4), "HealthExperienceUI/PromotionTileView.swift", 42, 2, 37);
  sub_1BA114E30(&v35);
}

void (*sub_1BA3DCCB0(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void (*sub_1BA3DCD60(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

double sub_1BA3DCDF8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA3DCE64()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA3DCEBC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1BA3DCF7C(uint64_t a1, uint64_t *a2)
{
  sub_1BA3E2F04(a1, v10, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v10, v3 + v4);
  swift_endAccess();
  sub_1BA3DE788();
  v5 = sub_1BA3E0BD8();
  v7 = v6;
  sub_1BA3E389C(v10, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
  v8 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  v9 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  *v8 = v5;
  v8[1] = v7;
}

uint64_t sub_1BA3DD064@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  return sub_1BA3E2F04(v1 + v3, a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
}

void sub_1BA3DD0D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3DE788();
  v4 = sub_1BA3E0BD8();
  v6 = v5;
  sub_1BA3E389C(a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
  v7 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  *v7 = v4;
  v7[1] = v6;
}

void (*sub_1BA3DD190(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3DD1F4;
}

void sub_1BA3DD1F4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1BA3DE788();
    v5 = sub_1BA3E0BD8();
    v6 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
    v7 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
    *v6 = v5;
    v6[1] = v8;
  }
}

void sub_1BA3DD25C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA3DD2BC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA3DD310(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA3DD3C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA3DD428()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3DD474(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA3DD52C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView);
  }

  else
  {
    type metadata accessor for PromotionTileHeroView(0);
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA3DD5B8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title);
  }

  else
  {
    v4 = sub_1BA3DD618();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA3DD618()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = *MEMORY[0x1E69DDD40];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:0];
  v9 = [v8 fontDescriptorWithSymbolicTraits_];

  if (v9)
  {
    v10 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = v6;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v14 = 136315906;
      v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = v11;
      v17 = sub_1B9F0B82C(v15, v16, &v35);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v33 = 0;
      v34 = 1;
      sub_1BA3E3838(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v35);

      *(v14 + 14) = v20;
      *(v14 + 22) = 2080;
      LODWORD(v33) = 2;
      type metadata accessor for SymbolicTraits(0);
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v35);
      v11 = v32;

      *(v14 + 24) = v23;
      *(v14 + 32) = 2112;
      v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v14 + 34) = v24;
      v25 = v30;
      *v30 = v24;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v14, 0x2Au);
      sub_1BA3E389C(v25, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v27 = [v7 preferredFontDescriptorWithTextStyle_];
    v10 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
  }

  [v5 setFont_];

  [v5 setNumberOfLines_];
  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v28) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v28];
  return v5;
}

id sub_1BA3DDA8C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0, 1, 0, 1);
    [v4 setFont_];

    [v4 setNumberOfLines_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v6) = 1148846080;
    [v4 setContentHuggingPriority:1 forAxis:v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA3DDBC8(uint64_t a1, __n128 a2)
{
  v30 = a1;
  sub_1BA3E3838(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v29 - v4;
  v6 = sub_1BA4A7888();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A7938();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A79A8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7968();
  (*(v12 + 104))(v15, *MEMORY[0x1E69DC560], v11);
  sub_1BA4A7828();
  v21 = [objc_opt_self() systemBlueColor];
  sub_1BA4A78F8();
  (*(v7 + 104))(v10, *MEMORY[0x1E69DC540], v6);
  sub_1BA4A78B8();
  sub_1BA4A7878();
  v22 = sub_1BA4A7808();
  sub_1BA4A4108();
  v22(v31, 0);
  v23 = [objc_opt_self() buttonWithType_];
  (*(v17 + 16))(v5, v20, v16);
  (*(v17 + 56))(v5, 0, 1, v16);
  sub_1BA4A79D8();
  v24 = v23;
  [v24 addTarget:v30 action:sel_didTapLinkAction_ forControlEvents:64];
  [v24 setContentHorizontalAlignment_];

  v25 = v24;
  LODWORD(v26) = 1148846080;
  [v25 setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [v25 setContentHuggingPriority:1 forAxis:v27];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];

  (*(v17 + 8))(v20, v16);
  return v25;
}

id sub_1BA3DE000(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_1BA3DE064(uint64_t a1, __n128 a2)
{
  sub_1BA3E3838(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - v5;
  v7 = sub_1BA4A7938();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A79A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7988();
  v17 = [objc_opt_self() systemWhiteColor];
  sub_1BA4A78F8();
  v18 = HKHealthTintColor();
  sub_1BA4A78E8();
  (*(v8 + 104))(v11, *MEMORY[0x1E69DC560], v7);
  sub_1BA4A7828();
  v19 = [objc_opt_self() buttonWithType_];
  (*(v13 + 16))(v6, v16, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  sub_1BA4A79D8();
  [v19 setRole_];
  [v19 addTarget:a1 action:sel_didTapAction_ forControlEvents:64];
  v20 = [v19 titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setLineBreakMode_];
  }

  v22 = [v19 titleLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setNumberOfLines_];
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v24) = 1148846080;
  [v19 setContentHuggingPriority:1 forAxis:v24];
  (*(v13 + 8))(v16, v12);
  return v19;
}

id PromotionTileView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PromotionTileView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  *&v4[v12] = [objc_opt_self() tertiaryLabelColor];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___link] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_viewSpecificConstraints] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for PromotionTileView();
  v13 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = sub_1BA3DD52C();
  [v13 addSubview_];

  v15 = sub_1BA3DD5B8();
  [v13 addSubview_];

  v16 = sub_1BA3DDA8C();
  [v13 addSubview_];

  v17 = sub_1BA3DDBA8();
  [v13 addSubview_];

  v18 = sub_1BA3DDFE0();
  [v13 addSubview_];

  sub_1BA3DF31C();
  sub_1BA3DE788();
  sub_1BA3E0358();

  return v13;
}

id PromotionTileView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA3DE788()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v88 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = MEMORY[0x1E69E6720];
  sub_1BA3E3838(0, &qword_1EDC6E198, MEMORY[0x1E69A33F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v87 = &v79 - v7;
  sub_1BA3E3838(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v4);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v85 = &v79 - v18;
  v19 = sub_1BA4A31F8();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A3258();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(&v1[v28], &v90, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  if (!v91)
  {
    return sub_1BA3E389C(&v90, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
  }

  v81 = v28;
  v83 = v15;
  v84 = v24;
  v82 = v23;
  sub_1B9F1134C(&v90, v93);
  v29 = v94;
  v30 = v95;
  __swift_project_boxed_opaque_existential_1(v93, v94);
  v31 = (*(v30 + 8))(v29, v30);
  if (v32 >> 60 != 15)
  {
    v33 = v32;
    v79 = v11;
    v34 = v31;
    sub_1B9F206D4(v31, v32);
    v80 = v34;
    sub_1BA4A3218();
    v36 = v94;
    v37 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v38 = (*(v37 + 72))(v36, v37);
    v40 = v39;
    v41 = &v1[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier];
    swift_beginAccess();
    *v41 = v38;
    v41[1] = v40;

    v42 = sub_1BA3DD52C();
    sub_1BA4A3228();
    v43 = v94;
    v44 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v45 = (*(v44 + 24))(v43, v44);
    sub_1BA0DAFB4(v22, v45);

    sub_1BA3E38F8(v22);
    v46 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
    swift_beginAccess();
    v47 = *&v1[v46];
    if (v47)
    {
      [v47 removeFromSuperview];
    }

    v48 = sub_1BA40BDE8();
    v49 = *&v1[v46];
    *&v1[v46] = v48;
    v50 = v48;

    v51 = v79;
    if (v48)
    {
      if ([v1 isDismissible])
      {
        [v1 addSubview_];
        sub_1BA40CCB0();
      }
    }

    v52 = sub_1BA3DD5B8();
    sub_1BA4A3238();
    v53 = sub_1BA4A6758();

    [v52 setText_];

    v54 = sub_1BA3DDA8C();
    sub_1BA4A3208();
    v55 = sub_1BA4A6758();

    [v54 setText_];

    sub_1BA4A3248();
    v57 = v56;
    v58 = sub_1BA3DDBA8();
    v59 = v58;
    if (v57)
    {
      v60 = v85;
      sub_1BA4A79C8();
      v61 = sub_1BA4A79A8();
      if ((*(*(v61 - 8) + 48))(v60, 1, v61))
      {

        sub_1BA1ADDF4(v60, v83);
        sub_1BA4A79D8();

        sub_1BA3E3954(v60, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
      }

      else
      {
        sub_1BA4A7978();
        sub_1BA4A79D8();
      }

      v62 = v33;
      [v1 addSubview_];
    }

    else
    {
      [v58 removeFromSuperview];

      v62 = v33;
    }

    v63 = v82;
    v64 = v57 != 0;
    v65 = v84;
    v66 = v87;
    (*(v84 + 16))(v87, v27, v82);
    (*(v65 + 56))(v66, 0, 1, v63);
    sub_1BA3DFCC0(v64);
    sub_1BA3E3954(v66, &qword_1EDC6E198, MEMORY[0x1E69A33F0]);
    v67 = sub_1BA3DDFE0();
    sub_1BA4A79C8();
    v68 = sub_1BA4A79A8();
    if ((*(*(v68 - 8) + 48))(v51, 1, v68))
    {
      sub_1BA1ADDF4(v51, v83);
      sub_1BA4A79D8();

      sub_1BA3E3954(v51, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    }

    else
    {
      sub_1BA4A3168();
      sub_1BA4A7978();
      sub_1BA4A79D8();
    }

    result = sub_1BA3E2F04(&v1[v81], &v90, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
    v69 = v91;
    if (!v91)
    {
      __break(1u);
      return result;
    }

    v70 = v92;
    v71 = __swift_project_boxed_opaque_existential_1(&v90, v91);
    v72 = *(v69 - 8);
    v73 = MEMORY[0x1EEE9AC00](v71, v71);
    v75 = &v79 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v75, v73);
    (*(v70 + 40))(&v89, v69, v70);
    (*(v72 + 8))(v75, v69);
    LOBYTE(v75) = v89 - 4;
    v76 = objc_opt_self();
    v77 = &selRef_tertiarySystemBackgroundColor;
    if ((v75 & 0xF7) != 0)
    {
      v77 = &selRef_secondarySystemGroupedBackgroundColor;
    }

    v78 = [v76 *v77];
    [v1 setBackgroundColor_];

    sub_1B9F6AC8C(v80, v62);
    (*(v84 + 8))(v27, v63);
    __swift_destroy_boxed_opaque_existential_1(&v90);
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

void sub_1BA3DF31C()
{
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4C9890;
  v2 = sub_1BA3DD52C();
  v3 = [v2 leadingAnchor];

  v4 = [v0 &selRef__totalDistance + 1];
  v5 = [v3 constraintEqualToAnchor:v4 constant:18.0];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView] widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v1 + 40) = v8;
  v9 = [v0 bottomAnchor];
  v10 = [*&v0[v6] bottomAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10 constant:18.0];

  *(v1 + 48) = v11;
  v12 = sub_1BA3DD5B8();
  v13 = [v12 topAnchor];

  v14 = [v0 topAnchor];
  v15 = [v13 &selRef:v14 objectAtIndex:18.0 + 6];

  *(v1 + 56) = v15;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title;
  v17 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title] &selRef__totalDistance + 1];
  v18 = [*&v0[v6] trailingAnchor];
  v19 = [v17 &selRef:v18 objectAtIndex:20.0 + 6];

  *(v1 + 64) = v19;
  v20 = [v0 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v21 = [*&v0[v16] &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:30.0];

  *(v1 + 72) = v22;
  v23 = sub_1BA3DDA8C();
  v24 = [v23 topAnchor];

  v25 = [*&v0[v16] bottomAnchor];
  v26 = [v24 &selRef:v25 objectAtIndex:6.0 + 6];

  *(v1 + 80) = v26;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body;
  v28 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body] leadingAnchor];
  v29 = [*&v0[v16] leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v1 + 88) = v30;
  v31 = [v0 trailingAnchor];
  v32 = [*&v0[v27] trailingAnchor];
  v33 = [v31 &selRef:v32 objectAtIndex:18.0 + 6];

  *(v1 + 96) = v33;
  v34 = sub_1BA3DDFE0();
  v35 = [v34 leadingAnchor];

  v36 = [*&v0[v16] leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v1 + 104) = v37;
  v38 = [v0 bottomAnchor];
  v39 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton;
  v40 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton] bottomAnchor];
  v41 = [v38 &selRef:v40 objectAtIndex:18.0 + 6];

  *(v1 + 112) = v41;
  v42 = [v0 trailingAnchor];
  v43 = [*&v0[v39] trailingAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:18.0];

  *(v1 + 120) = v44;
  v45 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v46 = sub_1BA4A6AE8();

  [v45 activateConstraints_];
}

uint64_t sub_1BA3DF8C4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 != 2)
  {
    sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5470;
    v21 = sub_1BA3DD52C();
    v22 = [v21 topAnchor];

    v23 = [v1 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:18.0];

    *(v13 + 32) = v24;
    return v13;
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  result = sub_1BA3E2F04(&v1[v4], v31, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v6 = v32;
  if (v32)
  {
    v7 = v33;
    v8 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v9 = *(v6 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8, v8);
    v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    (*(v7 + 40))(&v30, v6, v7);
    (*(v9 + 8))(v12, v6);
    LODWORD(v12) = v30;
    sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
    v13 = swift_allocObject();
    if (v12 == 4)
    {
      *(v13 + 16) = xmmword_1BA4B7510;
      v14 = sub_1BA3DD52C();
      v15 = [v14 topAnchor];

      v16 = [v1 topAnchor];
      v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:18.0];

      *(v13 + 32) = v17;
      v18 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView] centerYAnchor];
      v19 = [v1 centerYAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      *(v13 + 40) = v20;
    }

    else
    {
      *(v13 + 16) = xmmword_1BA4B5470;
      v25 = sub_1BA3DD52C();
      v26 = [v25 topAnchor];

      v27 = [v1 topAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:18.0];

      *(v13 + 32) = v28;
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
    return v13;
  }

  __break(1u);
  return result;
}

void sub_1BA3DFCC0(char a1)
{
  v2 = v1;
  v55 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_viewSpecificConstraints;
  if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_viewSpecificConstraints])
  {
    v3 = objc_opt_self();
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

    v4 = sub_1BA4A6AE8();

    [v3 deactivateConstraints_];
  }

  v57 = MEMORY[0x1E69E7CC0];
  v5 = sub_1BA3DF8C4();
  sub_1B9F73B50(v5);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7)
  {
    v8 = MEMORY[0x1E69E7C98];
    v9 = v7;
    if ([v2 isDismissible])
    {
      sub_1B9F1C048(0, &qword_1EDC6B400, v8 + 8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B8B60;
      v11 = v9;
      v12 = [v11 topAnchor];
      v13 = [v2 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:13.0];

      *(inited + 32) = v14;
      v15 = [v2 trailingAnchor];
      v16 = [v11 trailingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:13.0];

      *(inited + 40) = v17;
      v18 = sub_1BA3DD5B8();
      v19 = [v18 trailingAnchor];

      v20 = [v11 leadingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:-8.0];

      *(inited + 48) = v21;
      sub_1B9F73B50(inited);
    }

    else
    {
    }
  }

  v22 = sub_1BA3DDFE0();
  v23 = [v22 topAnchor];

  v24 = sub_1BA3DDBA8();
  v25 = [v24 bottomAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:18.0];
  type metadata accessor for UILayoutPriority(0);
  sub_1BA3E37F0(&qword_1EDC6B5E0, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
  sub_1BA4A3EB8();
  LODWORD(v27) = v56;
  [v26 setPriority_];
  v28 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton] topAnchor];
  v29 = sub_1BA3DDA8C();
  v30 = [v29 bottomAnchor];

  v31 = [v28 &selRef:v30 objectAtIndex:18.0 + 6];
  sub_1BA4A3EB8();
  LODWORD(v32) = v56;
  v33 = v26;
  [v31 setPriority_];
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1BA4B5890;
  v35 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___link;
  v36 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___link] topAnchor];
  v37 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body;
  v38 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body] bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:6.0];

  *(v34 + 32) = v39;
  v40 = [*&v2[v35] leadingAnchor];
  v41 = [*&v2[v37] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v34 + 40) = v42;
  v43 = [*&v2[v35] trailingAnchor];
  v44 = [v2 trailingAnchor];
  v45 = [v43 constraintLessThanOrEqualToAnchor:v44 constant:-18.0];

  *(v34 + 48) = v45;
  *(v34 + 56) = v33;
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1BA4B5470;
  *(v46 + 32) = v31;
  if (a1)
  {
    swift_setDeallocating();
    v47 = v33;
    v48 = v31;
    swift_unknownObjectRelease();
    v49 = v34;
  }

  else
  {
    v50 = v33;
    v51 = v31;

    v49 = v46;
  }

  sub_1B9F73B50(v49);
  *&v2[v55] = v57;

  v52 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v53 = sub_1BA4A6AE8();

  [v52 activateConstraints_];
}

double sub_1BA3E0358()
{
  swift_getObjectType();
  sub_1BA3E3838(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4858();
  v2 = MEMORY[0x1E69DC2B0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  MEMORY[0x1BFAF2130](v0, sel_didChangePreferredContentSize);
  swift_unknownObjectRelease();

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = sub_1BA4A4438();
  v5 = MEMORY[0x1E69DC130];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1BA4A7708();
  swift_unknownObjectRelease();

  return result;
}

Swift::Void __swiftcall PromotionTileView.submitTapAnalytics()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(v1 + v12, &v50, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  if (v52)
  {
    v48 = v4;
    sub_1B9F1134C(&v50, v54);
    v13 = v55;
    v14 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v14 + 48))(v13, v14);
    v15 = v55;
    v16 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v16 + 40))(&v50, v15, v16);
    v17 = v50;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v19 = sub_1BA4A6758();

    sub_1BA3DC544(v17);
    v20 = sub_1BA4A6758();

    sub_1BA4A3E58();
    v21 = v18;
    v22 = v19;
    v23 = v20;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47 = v3;
      v28 = v27;
      v49[0] = v27;
      *v26 = 136446466;
      *&v50 = ObjectType;
      swift_getMetatypeMetadata();
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, v49);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      *&v50 = v21;
      *(&v50 + 1) = v22;
      v51 = v23;
      v32 = v21;
      v33 = v22;
      v34 = v23;
      v35 = sub_1BA4A6808();
      v37 = sub_1B9F0B82C(v35, v36, v49);

      *(v26 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v24, v25, "[%{public}s]: Submitting suggested action analytics for: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);

      (*(v48 + 8))(v11, v47);
    }

    else
    {

      (*(v48 + 8))(v11, v3);
    }

    v49[0] = v21;
    v49[1] = v22;
    v49[2] = v23;
    v45 = sub_1BA4A29B8();
    v46 = sub_1BA4A29A8();
    v52 = v45;
    v53 = MEMORY[0x1E69A3198];
    *&v50 = v46;
    sub_1BA3E30EC();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(&v50);

    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    sub_1BA3E389C(&v50, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
    sub_1BA4A3E58();
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v50 = v41;
      *v40 = 136446210;
      v54[0] = ObjectType;
      swift_getMetatypeMetadata();
      v42 = sub_1BA4A6808();
      v44 = sub_1B9F0B82C(v42, v43, &v50);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1B9F07000, v38, v39, "[%{public}s]: Context is not set for view controller; cannot submit analytics", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void *sub_1BA3E0BD8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(v0 + v1, &v10, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  if (v11[1])
  {
    sub_1B9F1134C(&v10, v12);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1B9F0A534(v12, v11);
      *&v10 = v0;
      *(&v10 + 1) = v3;
      v4 = v13;
      v5 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v6 = *(v5 + 80);
      v7 = v0;
      v8 = v6(&v10, v4, v5);
      sub_1BA0C3344(&v10);
      if (v8)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          __swift_destroy_boxed_opaque_existential_1(v12);
          return v8;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1BA3E389C(&v10, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
  }

  return 0;
}

void static PromotionTileView.createPromotionBaseAutomationIdentifier(for:)(uint64_t a1, uint64_t a2)
{
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5460;
  *(v4 + 32) = 0x6574736567677553;
  *(v4 + 40) = 0xEF6E6F6974634164;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;

  v5 = sub_1BA4A6AE8();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA3E0E60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1BA3DD52C();

    MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
    v3 = sub_1BA4A6758();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA3DD5B8();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];

    v6 = sub_1BA3DDA8C();

    MEMORY[0x1BFAF1350](0x706972637365442ELL, 0xEC0000006E6F6974);
    v7 = sub_1BA4A6758();

    [v6 setAccessibilityIdentifier_];

    v8 = sub_1BA3DDBA8();

    MEMORY[0x1BFAF1350](0x6B6E694C2ELL, 0xE500000000000000);
    v9 = sub_1BA4A6758();

    [v8 setAccessibilityIdentifier_];

    v10 = sub_1BA3DDFE0();

    MEMORY[0x1BFAF1350](0x7972616D6972502ELL, 0xEE006E6F74747542);
    v15 = sub_1BA4A6758();

    [v10 setAccessibilityIdentifier_];
  }

  else
  {
    v11 = sub_1BA3DD52C();
    [v11 setAccessibilityIdentifier_];

    v12 = sub_1BA3DD5B8();
    [v12 setAccessibilityIdentifier_];

    v13 = sub_1BA3DDA8C();
    [v13 setAccessibilityIdentifier_];

    v14 = sub_1BA3DDBA8();
    [v14 setAccessibilityIdentifier_];

    v15 = sub_1BA3DDFE0();
    [v15 setAccessibilityIdentifier_];
  }
}

id PromotionTileView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PromotionTileView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BA3E12DC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3E1338(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA3E14A4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA3E1500(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

HealthExperienceUI::PromotionTileView::SuggestedActionAnalyticsEvent __swiftcall PromotionTileView.SuggestedActionAnalyticsEvent.init(didTapAction:uniqueIdentifier:presentation:)(Swift::Bool didTapAction, Swift::String uniqueIdentifier, HealthExperienceUI::Presentation presentation)
{
  v4 = v3;
  v5 = *presentation;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v7 = sub_1BA4A6758();

  sub_1BA3DC544(v5);
  v8 = sub_1BA4A6758();

  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  result.onboardLocation = v11;
  result.onboardTileType = v10;
  result.onboardTileDidClick.super.super.isa = v9;
  return result;
}

HealthExperienceUI::PromotionTileView::SuggestedActionAnalyticsEvent __swiftcall PromotionTileView.SuggestedActionAnalyticsEvent.init(onboardTileDidClick:onboardTileType:onboardLocation:)(NSNumber onboardTileDidClick, NSString onboardTileType, NSString onboardLocation)
{
  v3->super.super.isa = onboardTileDidClick.super.super.isa;
  v3[1].super.super.isa = onboardTileType;
  v3[2].super.super.isa = onboardLocation;
  result.onboardLocation = onboardLocation;
  result.onboardTileType = onboardTileType;
  result.onboardTileDidClick = onboardTileDidClick;
  return result;
}

BOOL PromotionTileView.isDismissible.getter()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(v0 + v1, v12, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v2 = v13;
  if (v13)
  {
    v3 = v14;
    v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4, v4);
    v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    sub_1BA3E389C(v12, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
    (*(v3 + 40))(&v11, v2, v3);
    (*(v5 + 8))(v8, v2);
    return v11 == 0;
  }

  else
  {
    sub_1BA3E389C(v12, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
    return 0;
  }
}

Swift::Void __swiftcall PromotionTileView.didTapDismiss()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  if (v3)
  {
    v4 = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = *(v5 + 8);
      v7 = v5;
      v8 = v3;
      v6(v4, v7);
    }
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(v1 + v9, v35, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v10 = v36;
  if (v36)
  {
    v11 = v37;
    v12 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v13 = *(v10 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12, v12);
    v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = (*(v11 + 48))(v10, v11);
    v19 = v18;
    (*(v13 + 8))(v16, v10);
    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_1BA3E2F04(v1 + v9, v35, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
    v20 = v36;
    if (v36)
    {
      v21 = v37;
      v22 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v23 = *(v20 - 8);
      v24 = MEMORY[0x1EEE9AC00](v22, v22);
      v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      (*(v21 + 24))(v20, v21);
      (*(v23 + 8))(v26, v20);
      sub_1BA4A2438();
      swift_allocObject();

      sub_1BA4A2408();
      __swift_destroy_boxed_opaque_existential_1(v35);
      v34 = sub_1BA4A2428();
      v27 = MEMORY[0x1E695C028];
      sub_1BA3E319C(0, &qword_1EBBEC2A0, MEMORY[0x1E695C028]);
      sub_1BA3E3140(&qword_1EBBEC2A8, &qword_1EBBEC2A0, v27, MEMORY[0x1E695C038]);
      v28 = sub_1BA4A4F98();

      v34 = v28;
      v29 = swift_allocObject();
      v29[2] = v17;
      v29[3] = v19;
      v29[4] = ObjectType;
      v30 = swift_allocObject();
      v30[2] = v17;
      v30[3] = v19;
      v30[4] = ObjectType;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1BA3E3190;
      *(v31 + 24) = v30;
      v32 = MEMORY[0x1E695BED0];
      sub_1BA3E319C(0, &qword_1EBBEA138, MEMORY[0x1E695BED0]);
      sub_1BA3E3140(&qword_1EBBEA140, &qword_1EBBEA138, v32, MEMORY[0x1E695BED8]);

      sub_1BA4A4F88();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA3E1DF0(void **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (v12)
  {
    v13 = v12;
    sub_1BA4A3DD8();
    v14 = v12;

    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v17 = 136446722;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v31);
      v29 = v7;
      v21 = a2;
      v22 = v20;

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1B9F0B82C(v21, a3, &v31);
      *(v17 + 22) = 2080;
      v30 = v12;
      v23 = v12;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v31);

      *(v17 + 24) = v26;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%{public}s] Failed to save dismissal state for %s: %s", v17, 0x20u);
      v27 = v28;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);

      (*(v8 + 8))(v11, v29);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t sub_1BA3E2080(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();

  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446466;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, &v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1B9F0B82C(v19, a2, &v20);
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s] Saved dismissal state for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

void PromotionTileView.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA15930C(a1);
  if (v4 && (v5 = v4, v6 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel, swift_beginAccess(), v7 = *&v2[v6], v8 = v7, LOBYTE(v7) = sub_1BA2EC9D4(v5, v7, 36.0, 36.0), v8, v5, (v7 & 1) != 0))
  {
    sub_1BA3E2368();
  }

  else
  {
    sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
    sub_1BA3955EC();
    v9 = sub_1BA4A6D68();
    v10.receiver = v2;
    v10.super_class = type metadata accessor for PromotionTileView();
    objc_msgSendSuper2(&v10, sel_touchesBegan_withEvent_, v9, a2);
  }
}

void sub_1BA3E2368()
{
  v1 = v0;
  v2 = [v0 viewController];
  if (v2)
  {
    UIViewController.resolvedPresentation.getter(&aBlock);

    LODWORD(v2) = aBlock;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    if ((v2 - 6) < 2)
    {
      v12 = objc_opt_self();
      v6 = v4;
      v13 = [v12 systemGray5Color];
      v14 = [v12 tertiarySystemGroupedBackgroundColor];
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = v14;
      v15[4] = 0;
      v15[5] = v13;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FE1088;
      v24 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v11 = &block_descriptor_52_0;
    }

    else
    {
      if (v2 != 4 && v2 != 12)
      {
        v18 = objc_opt_self();
        v6 = v4;
        v17 = [v18 systemGray5Color];
        goto LABEL_10;
      }

      v5 = objc_opt_self();
      v6 = v4;
      v7 = [v5 systemGray5Color];
      v8 = [v5 systemGray4Color];
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = v8;
      v9[4] = 0;
      v9[5] = v7;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FE1088;
      v24 = v9;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v11 = &block_descriptor_59_0;
    }

    v21 = sub_1B9F7EBBC;
    v22 = v11;
    v16 = _Block_copy(&aBlock);
    v17 = [v10 initWithDynamicProvider_];
    _Block_release(v16);

LABEL_10:
    [v6 setTextColor_];
  }
}

void sub_1BA3E2640()
{
  v1 = v0;
  v2 = [v0 viewController];
  if (v2)
  {
    UIViewController.resolvedPresentation.getter(&aBlock);

    LODWORD(v2) = aBlock;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    if ((v2 - 6) < 2)
    {
      v12 = objc_opt_self();
      v6 = v4;
      v13 = [v12 systemGray5Color];
      v14 = [v12 tertiarySystemGroupedBackgroundColor];
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = v14;
      v15[4] = 0;
      v15[5] = v13;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FD7F54;
      v24 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v11 = &block_descriptor_110;
    }

    else
    {
      if (v2 != 4 && v2 != 12)
      {
        v18 = objc_opt_self();
        v6 = v4;
        v17 = [v18 systemGray5Color];
        goto LABEL_10;
      }

      v5 = objc_opt_self();
      v6 = v4;
      v7 = [v5 systemGray5Color];
      v8 = [v5 systemGray4Color];
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = v8;
      v9[4] = 0;
      v9[5] = v7;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FE1088;
      v24 = v9;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v11 = &block_descriptor_45_0;
    }

    v21 = sub_1B9F7EBBC;
    v22 = v11;
    v16 = _Block_copy(&aBlock);
    v17 = [v10 initWithDynamicProvider_];
    _Block_release(v16);

LABEL_10:
    [v6 setTextColor_];
  }
}

void PromotionTileView.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  v5 = sub_1BA4A6D68();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for PromotionTileView();
  objc_msgSendSuper2(&v15, sel_touchesEnded_withEvent_, v5, a2);

  v6 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
    swift_beginAccess();
    [v7 setTextColor_];
  }

  v9 = sub_1BA15930C(a1);
  if (v9)
  {
    v10 = v9;
    v11 = *&v2[v6];
    v12 = v11;
    LOBYTE(v11) = sub_1BA2EC9D4(v10, v11, 36.0, 36.0);

    if (v11)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_1BA40B7AC();
      }
    }
  }
}

double sub_1BA3E2AAC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  v8 = sub_1BA4A6D78();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void PromotionTileView.touchesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  v4 = sub_1BA4A6D68();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for PromotionTileView();
  objc_msgSendSuper2(&v8, sel_touchesCancelled_withEvent_, v4, a2);

  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6)
  {
    v7 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
    swift_beginAccess();
    [v6 setTextColor_];
  }
}

void sub_1BA3E2DB0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3E2E10(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_chromeHostView;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void *sub_1BA3E2ED4@<X0>(uint64_t *a1@<X8>)
{
  result = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BA3E2F04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F21CC8(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void _s18HealthExperienceUI17PromotionTileViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  *(v0 + v4) = [objc_opt_self() tertiaryLabelColor];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___link) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_viewSpecificConstraints) = 0;
  sub_1BA4A8018();
  __break(1u);
}

unint64_t sub_1BA3E30EC()
{
  result = qword_1EBBF2188;
  if (!qword_1EBBF2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2188);
  }

  return result;
}

uint64_t sub_1BA3E3140(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA3E319C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3E319C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v7 = a3(a1, MEMORY[0x1E69E7CA8] + 8, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA3E32B4()
{
  result = qword_1EBBF2190;
  if (!qword_1EBBF2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2190);
  }

  return result;
}

unint64_t sub_1BA3E330C()
{
  result = qword_1EBBF2198;
  if (!qword_1EBBF2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2198);
  }

  return result;
}

uint64_t sub_1BA3E37F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA3E3838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA3E389C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F21CC8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA3E38F8(uint64_t a1)
{
  v2 = sub_1BA4A31F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA3E3954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA3E3838(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t TableViewSupplementaryViewKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746F6F66;
  }

  else
  {
    return 0x726564616568;
  }
}

HealthExperienceUI::TableViewSupplementaryViewKind_optional __swiftcall TableViewSupplementaryViewKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BA3E3A6C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7265746F6F66;
  }

  else
  {
    v2 = 0x726564616568;
  }

  if (*a2)
  {
    v3 = 0x7265746F6F66;
  }

  else
  {
    v3 = 0x726564616568;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1BA4A8338();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1BA3E3AF0()
{
  result = qword_1EBBF21A0;
  if (!qword_1EBBF21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF21A0);
  }

  return result;
}

uint64_t sub_1BA3E3B44()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA3E3BB4(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA3E3C08(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3E3C74(char *a2@<X8>)
{
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1BA3E3CD4(uint64_t *a1@<X8>)
{
  v2 = 0x726564616568;
  if (*v1)
  {
    v2 = 0x7265746F6F66;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

void DataTypeDetailConfiguration.PromptsComponent.init(hkType:prominentPrompts:)(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5470;
  *(v6 + 32) = a1;
  v7 = a1;
  v8 = MEMORY[0x1BFAED000](v6);

  if (a2)
  {
    sub_1BA4A2118();
  }

  else
  {
    sub_1BA4A2108();
  }

  v9 = sub_1BA4A2628();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B7510;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v11 = v8;
  v12 = v9;
  v13 = sub_1BA4A6AE8();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  *a3 = v14;
}

uint64_t DataTypeDetailConfiguration.PromptsComponent.init(measureIdentifier:prominentPrompts:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_1BA4A27B8();
  sub_1BA3E48B0(0, &qword_1EBBEB208, MEMORY[0x1E69A30D0], MEMORY[0x1E69E6F90]);
  v6 = sub_1BA4A1A48();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  (*(v7 + 16))(v9 + v8, a1, v6);
  v10 = sub_1BA4A2618();

  if (a2)
  {
    sub_1BA4A2118();
  }

  else
  {
    sub_1BA4A2108();
  }

  v11 = sub_1BA4A2628();

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B7510;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v13 = v10;
  v14 = v11;
  v15 = sub_1BA4A6AE8();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  result = (*(v7 + 8))(a1, v6);
  *a3 = v16;
  return result;
}

uint64_t DataTypeDetailConfiguration.PromptsComponent.makeDataSource(context:)(uint64_t a1)
{
  sub_1BA3E48B0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v50 - v5;
  v7 = *v1;
  v8 = *(a1 + 48);
  v9 = sub_1BA4A6F38();
  if (v8 == 1 && (v10 = sub_1BA4A1D78(), v11 = sub_1BA4A1D68(), v10, (v11 & 1) != 0))
  {
    v53 = v9;
    v12 = sub_1BA4A6F38();
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v52 = sub_1BA4A1B68();
    v13 = sub_1BA4A27B8();
    v55 = v7;
    v14 = v13;
    sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
    v15 = swift_allocObject();
    v54 = xmmword_1BA4B5480;
    *(v15 + 16) = xmmword_1BA4B5480;
    *(v15 + 32) = v12;
    v51 = v12;
    v16 = MEMORY[0x1BFAED1E0](v15);

    sub_1BA3E48B0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
    v17 = sub_1BA4A1C68();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v54;
    (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BC0], v17);
    v21 = sub_1BA4A0FA8();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5460;
    *(v22 + 32) = sub_1BA4A1D78();
    *(v22 + 40) = 0;
    *&v54 = v14;
    v23 = MEMORY[0x1BFAED020](v20, 0, v6, v22);

    sub_1B9F1C1B0(v6);
    v68[4] = v55;
    v68[5] = v16;
    v68[6] = v23;
    v67 = MEMORY[0x1E69E7CC0];
    v24 = v55;
    v25 = v16;
    v26 = v23;
    v27 = 0;
LABEL_4:
    if (v27 <= 3)
    {
      v28 = 3;
    }

    else
    {
      v28 = v27;
    }

    while (v27 != 3)
    {
      if (v28 == v27)
      {
        __break(1u);
        goto LABEL_18;
      }

      v29 = v68[v27++ + 4];
      if (v29)
      {
        v16 = v29;
        MEMORY[0x1BFAF1510]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        goto LABEL_4;
      }
    }

    v50 = v26;
    v55 = v25;
    sub_1B9F8AE1C(0);
    swift_arrayDestroy();
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v33 = sub_1BA4A6AE8();

    v26 = [objc_opt_self() andPredicateWithSubpredicates_];

    sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
    swift_getKeyPath();
    v34 = sub_1BA4A71B8();
    v25 = MEMORY[0x1BFAED110]();
    [v25 setPredicate_];
    sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BA4B5470;
    *(v35 + 32) = v34;
    v23 = v34;
    v36 = sub_1BA4A6AE8();

    [v25 setSortDescriptors_];

    v37 = objc_allocWithZone(MEMORY[0x1E695D600]);
    v27 = v52;
    v16 = [v37 initWithFetchRequest:v25 managedObjectContext:v52 sectionNameKeyPath:0 cacheName:0];
    if (qword_1EDC6D268 == -1)
    {
      goto LABEL_15;
    }

LABEL_18:
    swift_once();
LABEL_15:
    v66[4] = xmmword_1EDC6D2B0;
    v66[5] = *&qword_1EDC6D2C0;
    v66[6] = xmmword_1EDC6D2D0;
    v66[7] = unk_1EDC6D2E0;
    v66[0] = xmmword_1EDC6D270;
    v66[1] = *&qword_1EDC6D280;
    v66[2] = xmmword_1EDC6D290;
    v66[3] = *&qword_1EDC6D2A0;
    v56 = xmmword_1EDC6D270;
    v57 = qword_1EDC6D280;
    v38 = *algn_1EDC6D288;
    v40 = xmmword_1EDC6D290;
    v39 = qword_1EDC6D2A0;
    v61 = *(&xmmword_1EDC6D2B0 + 8);
    v62 = unk_1EDC6D2C8;
    v63 = *(&xmmword_1EDC6D2D0 + 8);
    v64 = qword_1EDC6D2E8;
    v60 = *algn_1EDC6D2A8;
    sub_1B9F1D9A4(v66, &v65);
    sub_1B9F1DA18(v38, v40, *(&v40 + 1), v39);
    sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
    v58 = 0u;
    v59 = 0u;
    v41 = sub_1B9F293A8(&v56);
    sub_1BA0649AC(0);
    v43 = objc_allocWithZone(v42);
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    v45 = &v43[qword_1EDC61AF0];
    *v45 = sub_1BA064A10;
    v45[1] = v44;
    v46 = v41;
    v47 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);

    sub_1BA3E4914(0);
    v31 = swift_allocObject();
    v48 = *&v47[qword_1EDC84AD0 + 8];
    *(v31 + 16) = *&v47[qword_1EDC84AD0];
    *(v31 + 24) = v48;
    *(v31 + 32) = v47;
    *(v31 + 40) = 0;
  }

  else
  {

    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v30 = EmptyDataSource.init()();
    sub_1BA3E4914(0);
    v31 = swift_allocObject();
    v32 = *(v30 + 24);
    *(v31 + 16) = *(v30 + 16);
    *(v31 + 24) = v32;
    *(v31 + 32) = v30;
    *(v31 + 40) = 1;
  }

  return v31;
}

void sub_1BA3E48B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA3E4914(uint64_t a1)
{
  if (!qword_1EDC66D10[0])
  {
    sub_1BA0649AC(255);
    v5[0] = v2;
    v5[1] = type metadata accessor for EmptyDataSource(255);
    v5[2] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    v5[3] = &protocol witness table for EmptyDataSource;
    v3 = type metadata accessor for _ConditionalDataSource(a1, v5);
    if (!v4)
    {
      atomic_store(v3, qword_1EDC66D10);
    }
  }
}

id SharedProfileNotificationSettingsManager.__allocating_init(healthStore:legacyKeyValueDomain:notificationCenter:settingsManagerDefaults:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  sub_1BA3E8ACC(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  v15 = objc_allocWithZone(v4);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v15[v16] = sub_1BA4A1C08();
  v17 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  v23 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  sub_1BA078F34(0);
  sub_1BA4A4EE8();
  (*(v11 + 32))(&v15[v17], v14, v10);
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = a1;
  if (a2)
  {
    v18 = a1;
  }

  else
  {
    a2 = [objc_allocWithZone(MEMORY[0x1E696C210]) initWithCategory:1 domainName:*MEMORY[0x1E696C890] healthStore:a1];
  }

  *&v15[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = a2;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = a3;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = v21;
  v22.receiver = v15;
  v22.super_class = v5;
  v19 = objc_msgSendSuper2(&v22, sel_init, v21);

  return v19;
}

HealthExperienceUI::SharedProfileNotificationType_optional __swiftcall SharedProfileNotificationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SharedProfileNotificationType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x73657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737472656C61;
  }
}

uint64_t sub_1BA3E4CCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001BA4E14D0;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001BA4E14D0;
  }

  else
  {
    v3 = 0x73657461647075;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x737472656C61;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x73657461647075;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737472656C61;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA3E4DC4()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA3E4E68(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA3E4EF8(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3E4FA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x80000001BA4E14D0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x73657461647075;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737472656C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BA3E5014()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v1;
}

id SharedProfileNotificationSettingsManager.init(healthStore:legacyKeyValueDomain:notificationCenter:settingsManagerDefaults:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1BA3E8ACC(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - v14;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v4[v16] = sub_1BA4A1C08();
  v17 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  v24 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  sub_1BA078F34(0);
  sub_1BA4A4EE8();
  (*(v12 + 32))(&v5[v17], v15, v11);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = a1;
  if (a2)
  {
    v18 = a1;
  }

  else
  {
    a2 = [objc_allocWithZone(MEMORY[0x1E696C210]) initWithCategory:1 domainName:*MEMORY[0x1E696C890] healthStore:a1];
  }

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = a2;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = a3;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = a4;
  v19 = type metadata accessor for SharedProfileNotificationSettingsManager(0);
  v23.receiver = v5;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, sel_init);

  return v20;
}

uint64_t sub_1BA3E529C(char *a1)
{
  v2 = v1;
  v4 = sub_1BA4A23F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v29 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = v25 - v11;
  v13 = *a1;
  v14 = **(&unk_1E7EEDB90 + v13);
  v28 = *(v5 + 104);
  v28(v25 - v11, v14, v4, v10);
  v27 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore);
  v15 = [v27 profileIdentifier];
  v16 = sub_1BA4A23E8();

  v26 = *(v5 + 8);
  v26(v12, v4);
  v17 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults);
  v18 = sub_1BA4A6758();
  v19 = [v17 objectForKey_];

  if (v19)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    if (swift_dynamicCast())
    {

      v20 = v30[0];
      return v20 & 1;
    }

    v25[0] = v17;
  }

  else
  {
    v25[0] = v17;
    sub_1B9F23224(v33);
  }

  v25[1] = v16;
  sub_1BA4A1BE8();
  v20 = sub_1BA4A7168();

  if (v20 == 2)
  {
    v21 = v29;
    (v28)(v29, **(&unk_1E7EEDB90 + v13), v4);
    v22 = [v27 profileIdentifier];
    v20 = sub_1BA4A23D8();

    v26(v21, v4);
  }

  v23 = sub_1BA4A6758();

  [v25[0] setBool:v20 & 1 forKey:v23];

  sub_1BA4A1BF8();
  return v20 & 1;
}

uint64_t sub_1BA3E5630(int a1, char *a2, int a3)
{
  v4 = v3;
  HIDWORD(v16) = a1;
  v17 = a3;
  v6 = sub_1BA4A23F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  sub_1BA4A1BE8();
  v12 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults);
  (*(v7 + 104))(v10, **(&unk_1E7EEDB90 + v11), v6);
  v13 = [*(v4 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore) profileIdentifier];
  sub_1BA4A23E8();

  (*(v7 + 8))(v10, v6);
  v14 = sub_1BA4A6758();

  LOBYTE(v7) = BYTE4(v16);
  [v12 setBool:BYTE4(v16) & 1 forKey:v14];

  sub_1BA4A1BF8();
  v18 = v11;
  return sub_1BA3E7154(v7, &v18, v17);
}

uint64_t sub_1BA3E57F0(char *a1)
{
  sub_1BA3E8ACC(0, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - v6;
  sub_1BA3E8388(0);
  v23 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3E84AC(0);
  v14 = *(v13 - 8);
  v24 = v13;
  v25 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_1BA3E613C();
  swift_beginAccess();
  sub_1BA3E8ACC(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  swift_endAccess();
  *(swift_allocObject() + 16) = v18;
  sub_1BA3E8424();
  sub_1BA4A4FA8();

  (*(v4 + 8))(v7, v3);
  sub_1B9F85D50(&qword_1EDC5F710, sub_1BA3E8388, MEMORY[0x1E695BC80]);
  v19 = v23;
  sub_1BA4A5118();
  (*(v9 + 8))(v12, v19);
  sub_1B9F85D50(&qword_1EDC5F6A0, sub_1BA3E84AC, MEMORY[0x1E695BD38]);
  v20 = v24;
  v21 = sub_1BA4A4F98();
  (*(v25 + 8))(v17, v20);
  return v21;
}

uint64_t sub_1BA3E5B78(uint64_t a1)
{
  sub_1BA3E8ACC(0, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v22 - v6;
  sub_1BA3E8590(0);
  v22 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3E863C(0);
  v14 = *(v13 - 8);
  v23 = v13;
  v24 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3E613C();
  swift_beginAccess();
  sub_1BA3E8ACC(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  swift_endAccess();
  *(swift_allocObject() + 16) = a1;
  sub_1BA078F34(0);
  sub_1BA3E8424();

  sub_1BA4A4FE8();

  (*(v4 + 8))(v7, v3);
  sub_1B9F85D50(&qword_1EBBF21E0, sub_1BA3E8590, MEMORY[0x1E695BD60]);
  sub_1BA3E86D8();
  v18 = v22;
  sub_1BA4A5118();
  (*(v9 + 8))(v12, v18);
  sub_1B9F85D50(&qword_1EBBF21F0, sub_1BA3E863C, MEMORY[0x1E695BD38]);
  v19 = v23;
  v20 = sub_1BA4A4F98();
  (*(v24 + 8))(v17, v19);
  return v20;
}

void sub_1BA3E5F14(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (sub_1B9FF14D4(a2, &unk_1F37FD908))
  {
    *a3 = v5;

    return;
  }

  v6 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_25:
    *a3 = v6;
    return;
  }

  v8 = (a2 + 32);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (!*(v5 + 16) || (v11 = sub_1B9FDA81C(v9), (v12 & 1) == 0))
    {
      v23 = sub_1B9FDA81C(v9);
      if (v24)
      {
        v25 = v23;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1BA0F3580();
        }

        sub_1BA0F7B28(v25, v6, v26);
      }

      goto LABEL_8;
    }

    v13 = *(*(v5 + 56) + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v6;
    v15 = sub_1B9FDA81C(v9);
    v17 = v6[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v6[3] < v20)
    {
      sub_1BA0F6290(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_1B9FDA81C(v9);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_28;
      }

LABEL_20:
      if (v21)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v29 = v15;
    sub_1BA0F3580();
    v15 = v29;
    v6 = v30;
    if (v21)
    {
LABEL_7:
      *(v6[7] + v15) = v13;
      goto LABEL_8;
    }

LABEL_21:
    v6[(v15 >> 6) + 8] |= 1 << v15;
    *(v6[6] + v15) = v9;
    *(v6[7] + v15) = v13;
    v27 = v6[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v19)
    {
      goto LABEL_27;
    }

    v6[2] = v28;
LABEL_8:
    if (!--v7)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1BA4A83B8();
  __break(1u);
}

void sub_1BA3E613C()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v2 = v19[2];

  if (v2)
  {
    return;
  }

  v3 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  v4 = 0;
  while (1)
  {
    LOBYTE(v19) = byte_1F37FD8E0[v4 + 32];
    v5 = v19;
    v6 = sub_1BA3E529C(&v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v3;
    v8 = sub_1B9FDA81C(v5);
    v10 = v3[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (v3[3] < v13)
    {
      sub_1BA0F6290(v13, isUniquelyReferenced_nonNull_native);
      v8 = sub_1B9FDA81C(v5);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v3 = v19;
      if (v14)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v18 = v8;
    sub_1BA0F3580();
    v8 = v18;
    v3 = v19;
    if (v14)
    {
LABEL_3:
      *(v3[7] + v8) = v6 & 1;
      goto LABEL_4;
    }

LABEL_11:
    v3[(v8 >> 6) + 8] |= 1 << v8;
    *(v3[6] + v8) = v5;
    *(v3[7] + v8) = v6 & 1;
    v16 = v3[2];
    v12 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v12)
    {
      goto LABEL_18;
    }

    v3[2] = v17;
LABEL_4:
    if (++v4 == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = v3;
      v1;
      sub_1BA4A4F38();
      sub_1BA3E6368();
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_1BA4A83B8();
  __break(1u);
}

uint64_t sub_1BA3E6368()
{
  ObjectType = swift_getObjectType();
  v26 = sub_1BA078F34;
  sub_1BA3E8ACC(0, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v27 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &ObjectType - v5;
  v7 = sub_1BA4A7488();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3E8A18(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A73E8();
  sub_1BA4A7498();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v21 = ObjectType;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  sub_1BA078F34(0);
  sub_1B9F85D50(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1BA4A4FA8();

  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  sub_1BA3E8ACC(0, &qword_1EDC5F360, v26, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  swift_endAccess();
  sub_1B9F85D50(&qword_1EDC5F700, sub_1BA3E8A18, MEMORY[0x1E695BC80]);
  sub_1BA4A5158();
  (*(v14 + 8))(v17, v13);
  v22 = v28;
  v23 = v29;
  (*(v28 + 16))(v27, v6, v29);
  swift_beginAccess();
  sub_1BA4A4F08();
  swift_endAccess();
  return (*(v22 + 8))(v6, v23);
}

void sub_1BA3E6798(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v81 = a3;
  v85 = sub_1BA4A1018();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v6);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v77 - v11;
  v13 = sub_1BA4A3EA8();
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v77 - v19;
  v21 = sub_1BA4A1798();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v42 = 0;
    goto LABEL_24;
  }

  v78 = v22;
  v79 = Strong;
  v80 = a4;
  v27 = sub_1BA4A1008();
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  v86 = 0xD000000000000010;
  v87 = 0x80000001BA5066F0;
  sub_1BA4A7D58();
  if (!*(v28 + 16) || (v29 = sub_1B9FDA8E4(v88), (v30 & 1) == 0))
  {

    sub_1B9FDC768(v88);
LABEL_18:
    v89 = 0u;
    v90 = 0u;
    goto LABEL_19;
  }

  sub_1B9F0AD9C(*(v28 + 56) + 32 * v29, &v89);
  sub_1B9FDC768(v88);

  if (!*(&v90 + 1))
  {
LABEL_19:
    sub_1B9F23224(&v89);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v31 = sub_1BA4A8108();

    if (v31 <= 2)
    {
      v32 = sub_1BA4A1008();
      if (v32)
      {
        v33 = v32;
        v86 = 0xD000000000000011;
        v87 = 0x80000001BA506710;
        sub_1BA4A7D58();
        a4 = v80;
        if (*(v33 + 16) && (v34 = sub_1B9FDA8E4(v88), (v35 & 1) != 0))
        {
          sub_1B9F0AD9C(*(v33 + 56) + 32 * v34, &v89);
          sub_1B9FDC768(v88);

          if (*(&v90 + 1))
          {
            if (swift_dynamicCast())
            {
              v36 = v88[1];
              v77 = v88[0];
              v37 = [*&v79[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] profileIdentifier];
              v38 = [v37 identifier];

              sub_1BA4A1778();
              v39 = sub_1BA4A1748();
              v41 = v40;
              (*(v78 + 8))(v25, v21);
              if (v39 == v77 && v41 == v36)
              {

                a4 = v80;
LABEL_33:
                swift_getKeyPath();
                swift_getKeyPath();
                v73 = v79;
                sub_1BA4A4F28();

                v74 = v88[0];
                LOBYTE(v88[0]) = v31;
                v75 = sub_1BA3E529C(v88);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v88[0] = v74;
                sub_1B9FF263C(v75 & 1, v31, isUniquelyReferenced_nonNull_native);

                v42 = v88[0];
                goto LABEL_24;
              }

              v72 = sub_1BA4A8338();

              a4 = v80;
              if (v72)
              {
                goto LABEL_33;
              }
            }

            goto LABEL_28;
          }
        }

        else
        {

          sub_1B9FDC768(v88);
          v89 = 0u;
          v90 = 0u;
        }
      }

      else
      {
        v89 = 0u;
        v90 = 0u;
        a4 = v80;
      }

      sub_1B9F23224(&v89);
LABEL_28:
      sub_1BA4A3E28();
      v57 = v82;
      v58 = a1;
      v59 = v85;
      (*(v82 + 16))(v12, v58, v85);
      v60 = sub_1BA4A3E88();
      v61 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v88[0] = v78;
        *v62 = 136446722;
        v63 = sub_1BA4A85D8();
        v65 = sub_1B9F0B82C(v63, v64, v88);

        *(v62 + 4) = v65;
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA506710, v88);
        *(v62 + 22) = 2080;
        *&v89 = sub_1BA4A1008();
        sub_1BA3E8ACC(0, &qword_1EBBF2208, sub_1BA3E8B30, MEMORY[0x1E69E6720]);
        v66 = sub_1BA4A6808();
        v68 = v67;
        (*(v57 + 8))(v12, v85);
        v69 = sub_1B9F0B82C(v66, v68, v88);

        *(v62 + 24) = v69;
        _os_log_impl(&dword_1B9F07000, v60, v61, "%{public}s Invalid %s in %s", v62, 0x20u);
        v70 = v78;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v70, -1, -1);
        v71 = v62;
        a4 = v80;
        MEMORY[0x1BFAF43A0](v71, -1, -1);
      }

      else
      {

        (*(v57 + 8))(v12, v59);
      }

      (*(v83 + 8))(v20, v84);
      v42 = 0;
      goto LABEL_24;
    }
  }

LABEL_20:
  sub_1BA4A3E28();
  v43 = v82;
  v44 = a1;
  v45 = v85;
  (*(v82 + 16))(v8, v44, v85);
  v46 = sub_1BA4A3E88();
  v47 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v88[0] = v49;
    *v48 = 136446722;
    v50 = sub_1BA4A85D8();
    v52 = sub_1B9F0B82C(v50, v51, v88);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA5066F0, v88);
    *(v48 + 22) = 2080;
    *&v89 = sub_1BA4A1008();
    sub_1BA3E8ACC(0, &qword_1EBBF2208, sub_1BA3E8B30, MEMORY[0x1E69E6720]);
    v53 = sub_1BA4A6808();
    v55 = v54;
    (*(v43 + 8))(v8, v85);
    v56 = sub_1B9F0B82C(v53, v55, v88);

    *(v48 + 24) = v56;
    _os_log_impl(&dword_1B9F07000, v46, v47, "%{public}s Invalid %s in %s", v48, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v49, -1, -1);
    MEMORY[0x1BFAF43A0](v48, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v8, v45);
  }

  (*(v83 + 8))(v16, v84);
  v42 = 0;
  a4 = v80;
LABEL_24:
  *a4 = v42;
}

uint64_t sub_1BA3E7154(char a1, unsigned __int8 *a2, int a3)
{
  v77 = a3;
  ObjectType = swift_getObjectType();
  v75 = sub_1BA4A1728();
  v6 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v7);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v69 - v11;
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v71 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v69 - v19;
  v21 = *a2;
  sub_1BA4A3E28();
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FC8();
  v24 = os_log_type_enabled(v22, v23);
  v76 = v13;
  v78 = v21;
  v74 = v14;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v72 = ObjectType;
    v26 = v25;
    v27 = swift_slowAlloc();
    *v26 = 136446722;
    v80 = v27;
    v81 = v72;
    swift_getMetatypeMetadata();
    v28 = sub_1BA4A6808();
    v30 = sub_1B9F0B82C(v28, v29, &v80);
    v70 = v12;
    v31 = v6;
    v32 = v30;

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    LOBYTE(v81) = v21;
    v33 = sub_1BA4A6808();
    v35 = sub_1B9F0B82C(v33, v34, &v80);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2080;
    if (a1)
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (a1)
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_1B9F0B82C(v36, v37, &v80);

    *(v26 + 24) = v38;
    v6 = v31;
    v12 = v70;
    _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s]: value for notification type %s successfully updated to %s", v26, 0x20u);
    swift_arrayDestroy();
    v39 = v27;
    v40 = v76;
    MEMORY[0x1BFAF43A0](v39, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);

    v41 = *(v74 + 8);
    v41(v20, v40);
  }

  else
  {

    v41 = *(v14 + 8);
    v41(v20, v13);
  }

  v42 = [*(v79 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore) profileIdentifier];
  v43 = [v42 type];

  v44 = v78;
  v45 = v73;
  if (v43 == 1 && (a1 & 1) != 0)
  {
    v72 = v41;
    sub_1BA4A1718();
    v46 = *(v79 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults);
    v47 = sub_1BA4A16B8();
    sub_1BA4A1F78();
    v48 = sub_1BA4A6758();

    [v46 setObject:v47 forKey:v48];

    v49 = v71;
    sub_1BA4A3E28();
    (*(v6 + 16))(v45, v12, v75);
    v50 = sub_1BA4A3E88();
    v51 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v81 = v53;
      *v52 = 136446466;
      v54 = sub_1BA4A85D8();
      v56 = sub_1B9F0B82C(v54, v55, &v81);
      v70 = v12;
      v57 = v6;
      v58 = v56;

      *(v52 + 4) = v58;
      *(v52 + 12) = 2080;
      sub_1B9F85D50(&qword_1EDC6E448, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v59 = v75;
      v60 = sub_1BA4A82D8();
      v62 = v61;
      v63 = *(v57 + 8);
      v63(v45, v59);
      v64 = sub_1B9F0B82C(v60, v62, &v81);

      *(v52 + 14) = v64;
      _os_log_impl(&dword_1B9F07000, v50, v51, "%{public}s Set significant changes primary profile date enabled to %s", v52, 0x16u);
      swift_arrayDestroy();
      v65 = v53;
      v44 = v78;
      MEMORY[0x1BFAF43A0](v65, -1, -1);
      MEMORY[0x1BFAF43A0](v52, -1, -1);

      v72(v71, v76);
      v63(v70, v59);
    }

    else
    {

      v66 = *(v6 + 8);
      v67 = v75;
      v66(v45, v75);
      v72(v49, v76);
      v66(v12, v67);
    }
  }

  LOBYTE(v81) = v44;
  return sub_1BA3E77BC(&v81, v77 & 1);
}

uint64_t sub_1BA3E77BC(_BYTE *a1, int a2)
{
  v77 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v79 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v70 - v10;
  v12 = sub_1BA4A1018();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v74 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v70 - v22;
  LOBYTE(v83) = *a1;
  v76 = v2;
  sub_1BA3E7DC8(&v83);
  sub_1BA4A3E28();
  v82 = v13;
  v24 = *(v13 + 16);
  v80 = v23;
  v73 = v24;
  v24(v19, v23, v12);
  v25 = sub_1BA4A3E88();
  v26 = sub_1BA4A6FC8();
  v27 = os_log_type_enabled(v25, v26);
  v78 = v5;
  v72 = ObjectType;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v81 = v12;
    v71 = v29;
    v83 = v29;
    *v28 = 136446466;
    v30 = sub_1BA4A85D8();
    v32 = sub_1B9F0B82C(v30, v31, &v83);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = sub_1BA4A0FE8();
    v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v36 = v35;

    v37 = *(v82 + 8);
    v37(v19, v81);
    v38 = sub_1B9F0B82C(v34, v36, &v83);
    v39 = v37;

    *(v28 + 14) = v38;
    _os_log_impl(&dword_1B9F07000, v25, v26, "%{public}s Sending notification %{public}s", v28, 0x16u);
    v40 = v71;
    swift_arrayDestroy();
    v12 = v81;
    MEMORY[0x1BFAF43A0](v40, -1, -1);
    v41 = v28;
    v5 = v78;
    MEMORY[0x1BFAF43A0](v41, -1, -1);
  }

  else
  {

    v39 = *(v82 + 8);
    v39(v19, v12);
  }

  v42 = *(v79 + 8);
  v42(v11, v5);
  v43 = *(v76 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter);
  v44 = v80;
  v45 = sub_1BA4A0FB8();
  [v43 postNotification_];

  if (v77)
  {
    v46 = v75;
    sub_1BA4A3E28();
    v47 = v74;
    v73(v74, v44, v12);
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v81 = v12;
      v52 = v51;
      v83 = v51;
      *v50 = 136446466;
      v53 = sub_1BA4A85D8();
      v54 = v47;
      v56 = sub_1B9F0B82C(v53, v55, &v83);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2082;
      v57 = sub_1BA4A0FE8();
      v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v59 = v39;
      v61 = v60;

      v59(v54, v81);
      v62 = sub_1B9F0B82C(v58, v61, &v83);
      v39 = v59;

      *(v50 + 14) = v62;
      _os_log_impl(&dword_1B9F07000, v48, v49, "%{public}s Sending daemon notification %{public}s", v50, 0x16u);
      swift_arrayDestroy();
      v63 = v52;
      v12 = v81;
      MEMORY[0x1BFAF43A0](v63, -1, -1);
      v64 = v50;
      v44 = v80;
      MEMORY[0x1BFAF43A0](v64, -1, -1);

      v65 = v75;
    }

    else
    {

      v39(v47, v12);
      v65 = v46;
    }

    v42(v65, v78);
    sub_1BA4A0FE8();
    sub_1BA4A1008();
    v66 = objc_allocWithZone(sub_1BA4A34C8());
    v67 = sub_1BA4A34B8();
    sub_1BA15F6D0();
    v68 = sub_1BA4A7198();
    [v68 addOperation_];
  }

  return (v39)(v44, v12);
}

uint64_t sub_1BA3E7DC8(unsigned __int8 *a1)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1BA3E8ACC(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v19[0] = 0xD000000000000010;
  v19[1] = 0x80000001BA5066F0;
  v10 = MEMORY[0x1E69E6158];
  sub_1BA4A7D58();
  if (v8)
  {
    if (v8 == 1)
    {
      v11 = 0x80000001BA4E14D0;
      v12 = 0xD000000000000012;
    }

    else
    {
      v11 = 0xE700000000000000;
      v12 = 0x73657461647075;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x737472656C61;
  }

  *(inited + 96) = v10;
  *(inited + 72) = v12;
  *(inited + 80) = v11;
  v19[0] = 0xD000000000000011;
  v19[1] = 0x80000001BA506710;
  sub_1BA4A7D58();
  v13 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore) profileIdentifier];
  v14 = [v13 identifier];

  sub_1BA4A1778();
  v15 = sub_1BA4A1748();
  v17 = v16;
  (*(v4 + 8))(v7, v3);
  *(inited + 168) = v10;
  *(inited + 144) = v15;
  *(inited + 152) = v17;
  sub_1B9FDB524(inited);
  swift_setDeallocating();
  sub_1BA1284D4();
  swift_arrayDestroy();
  sub_1BA4A73E8();
  memset(v19, 0, sizeof(v19));
  return sub_1BA4A0FD8();
}

id SharedProfileNotificationSettingsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedProfileNotificationSettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedProfileNotificationSettingsManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA3E8244(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  *a2 = v3;
}

uint64_t sub_1BA3E82C4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1BA4A4F38();
}

uint64_t type metadata accessor for SharedProfileNotificationSettingsManager(uint64_t a1)
{
  result = qword_1EDC60930;
  if (!qword_1EDC60930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA3E8388(uint64_t a1)
{
  if (!qword_1EDC5F708)
  {
    sub_1BA3E8ACC(255, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
    sub_1BA3E8424();
    v1 = sub_1BA4A4AC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F708);
    }
  }
}

unint64_t sub_1BA3E8424()
{
  result = qword_1EDC5F370;
  if (!qword_1EDC5F370)
  {
    sub_1BA3E8ACC(255, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F370);
  }

  return result;
}

void sub_1BA3E84AC(uint64_t a1)
{
  if (!qword_1EDC5F698)
  {
    sub_1BA3E8388(255);
    sub_1B9F85D50(&qword_1EDC5F710, sub_1BA3E8388, MEMORY[0x1E695BC80]);
    v1 = sub_1BA4A4B58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F698);
    }
  }
}

unint64_t sub_1BA3E8540@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  if (*(*result + 16) && (result = sub_1B9FDA81C(*(v3 + 16)), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + result);
  }

  else
  {
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

void sub_1BA3E8590(uint64_t a1)
{
  if (!qword_1EBBF21D0)
  {
    sub_1BA3E8ACC(255, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
    sub_1BA078F34(255);
    sub_1BA3E8424();
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF21D0);
    }
  }
}

void sub_1BA3E863C(uint64_t a1)
{
  if (!qword_1EBBF21D8)
  {
    sub_1BA3E8590(255);
    sub_1B9F85D50(&qword_1EBBF21E0, sub_1BA3E8590, MEMORY[0x1E695BD60]);
    v1 = sub_1BA4A4B58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF21D8);
    }
  }
}

unint64_t sub_1BA3E86D8()
{
  result = qword_1EBBF21E8;
  if (!qword_1EBBF21E8)
  {
    sub_1BA078F34(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF21E8);
  }

  return result;
}

unint64_t sub_1BA3E874C()
{
  result = qword_1EDC63C90;
  if (!qword_1EDC63C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63C90);
  }

  return result;
}

unint64_t sub_1BA3E87A4()
{
  result = qword_1EBBF21F8;
  if (!qword_1EBBF21F8)
  {
    sub_1B9F23434(255, &qword_1EBBF2200, &type metadata for SharedProfileNotificationType, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF21F8);
  }

  return result;
}

void sub_1BA3E8838(uint64_t a1)
{
  sub_1BA3E8ACC(319, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SharedProfileNotificationSettingsManager.createCurrentValueStream(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
}

void sub_1BA3E8A18(uint64_t a1)
{
  if (!qword_1EDC5F6F8)
  {
    sub_1BA4A7488();
    sub_1BA078F34(255);
    sub_1B9F85D50(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v1 = sub_1BA4A4AC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F6F8);
    }
  }
}

void sub_1BA3E8ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA3E8B30()
{
  if (!qword_1EBBF2210)
  {
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2210);
    }
  }
}

uint64_t sub_1BA3E8B94()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2218 = result;
  unk_1EBBF2220 = v1;
  return result;
}

uint64_t sub_1BA3E8C40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2228 = result;
  unk_1EBBF2230 = v1;
  return result;
}

uint64_t sub_1BA3E8CEC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2238 = result;
  unk_1EBBF2240 = v1;
  return result;
}

uint64_t sub_1BA3E8DC0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2248 = result;
  unk_1EBBF2250 = v1;
  return result;
}

id sub_1BA3E8E8C(char a1)
{
  v3 = 0xD000000000000010;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v96 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v96 - v15;
  v17 = *v1;
  if (a1)
  {
    if (!v17)
    {
      v3 = 0xD00000000000001DLL;
    }

    v18 = *MEMORY[0x1E69DDD80];
    v19 = objc_opt_self();
    v20 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
    if (v20)
    {
      v21 = v20;
      v22 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v29 = v18;
      v30 = sub_1BA4A3E88();
      v31 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v100 = v5;
        v33 = v32;
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v103 = v98;
        *v33 = 136315906;
        v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v99 = v3;
        v36 = sub_1B9F0B82C(v34, v35, &v103);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        v101 = 0;
        v102 = 1;
        sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v37 = sub_1BA4A6808();
        v39 = sub_1B9F0B82C(v37, v38, &v103);

        *(v33 + 14) = v39;
        *(v33 + 22) = 2080;
        LODWORD(v101) = 0;
        type metadata accessor for SymbolicTraits(0);
        v40 = sub_1BA4A6808();
        v42 = sub_1B9F0B82C(v40, v41, &v103);

        *(v33 + 24) = v42;
        *(v33 + 32) = 2112;
        v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v33 + 34) = v43;
        v44 = v97;
        *v97 = v43;
        _os_log_impl(&dword_1B9F07000, v30, v31, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v33, 0x2Au);
        sub_1B9F8C6C8(v44);
        MEMORY[0x1BFAF43A0](v44, -1, -1);
        v45 = v98;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v45, -1, -1);
        MEMORY[0x1BFAF43A0](v33, -1, -1);

        (*(v100 + 8))(v16, v4);
      }

      else
      {

        (*(v5 + 8))(v16, v4);
      }

      v91 = [v19 preferredFontDescriptorWithTextStyle_];
      v22 = [objc_opt_self() fontWithDescriptor:v91 size:0.0];
    }

    v92 = [objc_opt_self() configurationWithFont:v22 scale:-1];

    v93 = sub_1BA4A6758();

    v65 = [objc_opt_self() systemImageNamed:v93 withConfiguration:v92];

    if (v65)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v23 = *MEMORY[0x1E69DDD80];
    v24 = objc_opt_self();
    v25 = [v24 preferredFontDescriptorWithTextStyle:v23 compatibleWithTraitCollection:0];
    v26 = v25;
    if ((v17 & 1) == 0)
    {
      if (v25)
      {
        v28 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
      }

      else
      {
        v100 = v5;
        sub_1BA4A3DD8();
        v66 = v23;
        v67 = sub_1BA4A3E88();
        v68 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v103 = v99;
          *v69 = 136315906;
          v70 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v72 = sub_1B9F0B82C(v70, v71, &v103);

          *(v69 + 4) = v72;
          *(v69 + 12) = 2080;
          v101 = 0;
          v102 = 1;
          sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
          v73 = sub_1BA4A6808();
          v75 = sub_1B9F0B82C(v73, v74, &v103);

          *(v69 + 14) = v75;
          *(v69 + 22) = 2080;
          LODWORD(v101) = 0;
          type metadata accessor for SymbolicTraits(0);
          v76 = sub_1BA4A6808();
          v78 = sub_1B9F0B82C(v76, v77, &v103);

          *(v69 + 24) = v78;
          *(v69 + 32) = 2112;
          v79 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v69 + 34) = v79;
          v80 = v98;
          *v98 = v79;
          _os_log_impl(&dword_1B9F07000, v67, v68, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v69, 0x2Au);
          sub_1B9F8C6C8(v80);
          MEMORY[0x1BFAF43A0](v80, -1, -1);
          v81 = v99;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v81, -1, -1);
          MEMORY[0x1BFAF43A0](v69, -1, -1);
        }

        (*(v100 + 8))(v12, v4);
        v82 = [v24 preferredFontDescriptorWithTextStyle_];
        v28 = [objc_opt_self() fontWithDescriptor:v82 size:0.0];
      }

      v83 = objc_opt_self();
      v84 = [v83 configurationWithFont:v28 scale:-1];

      sub_1BA3EE16C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1BA4B7510;
      v86 = objc_opt_self();
      *(v85 + 32) = [v86 systemBlackColor];
      *(v85 + 40) = [v86 systemYellowColor];
      sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
      v87 = sub_1BA4A6AE8();

      v88 = [v83 configurationWithPaletteColors_];

      v89 = [v84 configurationByApplyingConfiguration_];
      v90 = sub_1BA4A6758();
      v65 = [objc_opt_self() systemImageNamed:v90 withConfiguration:v89];

      goto LABEL_26;
    }

    if (v25)
    {
      v27 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
    }

    else
    {
      v100 = v5;
      sub_1BA4A3DD8();
      v46 = v23;
      v47 = sub_1BA4A3E88();
      v48 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v103 = v99;
        *v49 = 136315906;
        v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v53 = sub_1B9F0B82C(v51, v52, &v103);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v101 = 0;
        v102 = 1;
        sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v54 = sub_1BA4A6808();
        v56 = sub_1B9F0B82C(v54, v55, &v103);

        *(v49 + 14) = v56;
        *(v49 + 22) = 2080;
        LODWORD(v101) = 0;
        type metadata accessor for SymbolicTraits(0);
        v57 = sub_1BA4A6808();
        v59 = sub_1B9F0B82C(v57, v58, &v103);

        *(v49 + 24) = v59;
        *(v49 + 32) = 2112;
        v60 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v49 + 34) = v60;
        *v50 = v60;
        _os_log_impl(&dword_1B9F07000, v47, v48, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v49, 0x2Au);
        sub_1B9F8C6C8(v50);
        MEMORY[0x1BFAF43A0](v50, -1, -1);
        v61 = v99;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v61, -1, -1);
        MEMORY[0x1BFAF43A0](v49, -1, -1);
      }

      (*(v100 + 8))(v8, v4);
      v62 = [v24 preferredFontDescriptorWithTextStyle_];
      v27 = [objc_opt_self() fontWithDescriptor:v62 size:0.0];
    }

    v63 = [objc_opt_self() configurationWithFont:v27 scale:-1];

    v64 = sub_1BA4A6758();
    v65 = [objc_opt_self() systemImageNamed:v64 withConfiguration:v63];

    if (v65)
    {
LABEL_25:
      v94 = [objc_opt_self() secondaryLabelColor];
      v89 = [v65 imageWithTintColor_];

      v65 = [v89 imageWithRenderingMode_];
LABEL_26:
    }
  }

  return v65;
}