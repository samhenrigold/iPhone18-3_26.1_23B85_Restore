id ContentConfigurationHostCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentConfigurationHostCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2B40C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA2B4138(uint64_t **a1))()
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
  v2[4] = sub_1BA2B33B4(v2);
  return sub_1B9FCDCF4;
}

double sub_1BA2B41A8()
{
  swift_beginAccess();

  return result;
}

void (*sub_1BA2B4258(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA2B42F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t (*sub_1BA2B4370(uint64_t **a1))()
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
  v2[4] = sub_1BA2B30B8(v2);
  return sub_1B9FCF2C4;
}

uint64_t keypath_get_16Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unint64_t *a3@<X4>, unint64_t *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  swift_beginAccess();
  return sub_1B9F374E8(v10 + v11, a6, a3, a4, a5);
}

char *AllHighlightsForExperienceViewController.__allocating_init(baseKeyword:sectionKeywords:healthExperienceStore:title:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  objc_allocWithZone(v6);
  sub_1B9F0A534(a4, v15);
  type metadata accessor for AllHighlightsForExperienceDataSource(0);
  swift_allocObject();
  v11 = AllHighlightsForExperienceDataSource.init(baseKeyword:sectionKeywords:healthExperienceStore:)(a1, a2, a3, v15);
  v12 = CompoundDataSourceCollectionViewController.init(dataSource:)(v11);
  v13 = sub_1BA4A6758();

  [v12 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v12;
}

char *AllHighlightsForExperienceViewController.init(baseKeyword:sectionKeywords:healthExperienceStore:title:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_1B9F0A534(a4, v14);
  type metadata accessor for AllHighlightsForExperienceDataSource(0);
  swift_allocObject();
  v10 = AllHighlightsForExperienceDataSource.init(baseKeyword:sectionKeywords:healthExperienceStore:)(a1, a2, a3, v14);
  v11 = CompoundDataSourceCollectionViewController.init(dataSource:)(v10);
  v12 = sub_1BA4A6758();

  [v11 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v11;
}

uint64_t type metadata accessor for AllHighlightsForExperienceDataSource(uint64_t a1)
{
  result = qword_1EBBEFFF0;
  if (!qword_1EBBEFFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AllHighlightsForExperienceViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AllHighlightsForExperienceViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id AllHighlightsForExperienceViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AllHighlightsForExperienceViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t AllHighlightsForExperienceDataSource.init(baseKeyword:sectionKeywords:healthExperienceStore:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a4;
  v11[5] = v6;
  sub_1BA24AD10(sub_1BA2B509C, v11, a3);
  v8 = v7;

  v9 = CompoundSectionedDataSource.init(_:)(v8);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v9;
}

void *sub_1BA2B509C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA2B54F0(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BA2B50DC(uint64_t a1, uint64_t a2)
{
  if (sub_1BA4A2068() == a1 && v4 == a2)
  {

    return 0;
  }

  v5 = sub_1BA4A8338();

  if (v5)
  {
    return 0;
  }

  if (sub_1BA4A2058() == a1 && v7 == a2)
  {

    goto LABEL_10;
  }

  v8 = sub_1BA4A8338();

  if (v8)
  {
LABEL_10:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_14;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_14:
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t AllHighlightsForExperienceDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AllHighlightsForExperienceDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1BA2B54F0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v76 = a5;
  v74 = a3;
  v9 = sub_1BA4A4428();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v78 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v77 = v61 - v14;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v61 - v17;
  v82[9] = a1;
  v82[10] = a2;
  v75 = a1;
  v66 = a2;
  v82[11] = a3;
  v82[12] = a4;
  v73 = a4;
  v82[0] = MEMORY[0x1E69E7CC0];

  sub_1BA4A7F08();
  v61[1] = sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v72 = v19;
  v69 = sub_1BA4A1C68();
  v20 = *(v69 - 8);
  v71 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v70 = xmmword_1BA4B5480;
  *(v22 + 16) = xmmword_1BA4B5480;
  v68 = *MEMORY[0x1E69A3BF8];
  v67 = *(v20 + 104);
  v67(v22 + v21);
  v23 = sub_1BA4A0FA8();
  v24 = *(v23 - 8);
  v64 = *(v24 + 56);
  v65 = v24 + 56;
  v64(v18, 1, 1, v23);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v63 = v25;
  v26 = swift_allocObject();
  v62 = xmmword_1BA4B5460;
  *(v26 + 16) = xmmword_1BA4B5460;
  v27 = v66;

  *(v26 + 32) = sub_1BA4A1D78();
  *(v26 + 40) = 0;
  v28 = v27;
  sub_1BA4A25F8();

  sub_1B9F1C1B0(v18);
  sub_1BA4A7ED8();
  sub_1BA4A7F18();
  sub_1BA4A7F28();
  sub_1BA4A7EE8();

  swift_arrayDestroy();
  v29 = swift_allocObject();
  *(v29 + 16) = v70;
  (v67)(v29 + v21, v68, v69);
  v64(v18, 1, 1, v23);
  v30 = swift_allocObject();
  *(v30 + 16) = v62;
  *(v30 + 32) = sub_1BA4A1D78();
  *(v30 + 40) = 0;
  sub_1BA4A25F8();

  sub_1B9F1C1B0(v18);
  sub_1BA4A7ED8();
  sub_1BA4A7F18();
  sub_1BA4A7F28();
  sub_1BA4A7EE8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v31 = sub_1BA4A6AE8();

  v32 = [objc_opt_self() andPredicateWithSubpredicates_];
  v73 = v32;

  v33 = MEMORY[0x1BFAED110]();
  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v35 = sub_1BA4A6758();
  v36 = [v34 initWithKey:v35 ascending:1];

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BA4B5470;
  *(v37 + 32) = v36;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v74 = v36;
  v38 = sub_1BA4A6AE8();

  [v33 setSortDescriptors_];

  [v33 setPredicate_];
  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  v39 = v33;
  v40 = sub_1BA4A1B68();
  v41 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v39 managedObjectContext:v40 sectionNameKeyPath:0 cacheName:0];

  sub_1BA0649AC(0);
  v43 = objc_allocWithZone(v42);
  v44 = &v43[qword_1EDC61AF0];
  *v44 = sub_1BA236D80;
  v44[1] = 0;
  v45 = v41;
  v46 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v45);
  v47 = sub_1BA2B50DC(v75, v28);
  v49 = v48;
  v50 = v77;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v51 = v78;
  v52 = v79;
  v53 = v80;
  (*(v79 + 16))(v78, v50, v80);
  v54 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v47, v49, 0, 0, 0, 0, v51, 0, 0);
  v56 = v55;
  (*(v52 + 8))(v50, v53);
  v82[3] = v54;
  v82[4] = sub_1B9F25430(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);

  v82[0] = v56;
  sub_1B9F0A534(v82, v81);
  v57 = swift_allocObject();
  sub_1B9F25598(v81, v57 + 16);
  sub_1BA2B5DF4(0);
  v58 = swift_allocObject();
  v58[4] = v46;
  v58[5] = sub_1B9F79BC8;
  v58[6] = v57;
  v59 = *&v46[qword_1EDC84AD0 + 8];
  v58[2] = *&v46[qword_1EDC84AD0];
  v58[3] = v59;

  __swift_destroy_boxed_opaque_existential_1(v82);
  return v58;
}

void sub_1BA2B5DF4(uint64_t a1)
{
  if (!qword_1EBBEED90)
  {
    sub_1BA0649AC(255);
    v4 = type metadata accessor for Supplementary(a1, v2, &protocol witness table for FetchedResultsControllerDataSource<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EBBEED90);
    }
  }
}

void sub_1BA2B5F40()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_medicalIDViewController];
  [v0 addChildViewController_];
  v2 = [v0 contentView];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  [v2 addSubview_];

  [v1 didMoveToParentViewController_];
  v5 = [v1 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = [v0 contentView];
  v8 = [v7 heightAnchor];

  v9 = [v8 constraintGreaterThanOrEqualToConstant_];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint;
  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint] = v9;

  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5880;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v12 + 32) = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v0 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:6.0];
  *(v12 + 40) = v24;
  v25 = [v1 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v0 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-6.0];
  *(v12 + 48) = v30;
  v31 = [v1 view];
  if (!v31)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = objc_opt_self();
  v34 = [v32 bottomAnchor];

  v35 = [v0 contentView];
  v36 = [v35 bottomAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  v38 = *&v0[v10];
  *(v12 + 56) = v37;
  *(v12 + 64) = v38;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v39 = v38;
  v40 = sub_1BA4A6AE8();

  [v33 activateConstraints_];
}

double sub_1BA2B646C()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A6488();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 dismissViewControllerAnimated:1 completion:{0, v14}];
  v18 = &v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow];
  v19 = v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow + 8];
  if (v19 <= 1)
  {
    v26 = v7;
    v20 = *v18;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v25 = v6;
    (*(v12 + 104))(v16, *MEMORY[0x1E69E7F88], v11);
    sub_1BA02040C(v20, v19);
    v21 = sub_1BA4A7338();
    (*(v12 + 8))(v16, v11);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    aBlock[4] = sub_1BA020420;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_75;
    v23 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v10, v5, v23);
    _Block_release(v23);

    (*(v2 + 8))(v5, v1);
    (*(v26 + 8))(v10, v25);
  }

  return result;
}

void sub_1BA2B6868()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_didTapNext_ forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

void sub_1BA2B69BC()
{
  v1 = v0;
  v2 = type metadata accessor for EmergencyAccessUserStatus(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v51 - v9;
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow];
  v12 = v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow + 8];
  if (v12 == 1)
  {
    v15 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus];
    v43 = *v11;
LABEL_10:
    v44 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore];
    v55 = v43;
    v56 = v12;
    sub_1BA020470(v15, v51 - v9);
    v45 = objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyDoneViewController(0));
    v46 = v44;
    sub_1BA02040C(v43, v12);
    sub_1BA337850(v46, &v55, v10);
    v41 = v47;
LABEL_13:
    [v1 showViewController:v41 sender:v1];
    goto LABEL_14;
  }

  if (v12 != 2)
  {
    v13 = *v11;
    goto LABEL_12;
  }

  v13 = *v11;
  if (*v11 != 1)
  {
LABEL_12:
    v48 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore];
    v55 = v13;
    v56 = v12;
    sub_1BA020470(&v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus], v51 - v9);
    objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyShareMedicalIDViewController(0));
    v49 = v48;
    sub_1BA02040C(v13, v12);
    sub_1BA40231C(v49, &v55, v10);
    v41 = v50;

    goto LABEL_13;
  }

  v14 = *(v8 + 20);
  v15 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus];
  if (v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus + v14] != 1)
  {
    v43 = 1;
    goto LABEL_10;
  }

  v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore];
  v55 = 1;
  v56 = 2;
  v17 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus];
  sub_1BA020470(v15, v51 - v9);
  v18 = objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyDoneViewController(0));
  v19 = v16;
  sub_1BA02040C(1, 2u);
  sub_1BA337850(v19, &v55, v10);
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = qword_1EDC5E100;
  v53 = v21;
  v52 = v1;
  if (v23 != -1)
  {
    swift_once();
  }

  v51[2] = sub_1BA4A1318();
  v51[3] = v24;
  v25 = *v11;
  v26 = v11[8];
  sub_1BA020470(v17, v5);
  v27 = type metadata accessor for EmergencyAccessBuddyStewieViewController(0);
  v28 = objc_allocWithZone(v27);
  v51[1] = "eview_medical_id_later_button";
  v29 = v28;
  *&v28[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_healthStore] = v19;
  v30 = &v28[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
  *v30 = v25;
  v30[8] = v26;
  sub_1BA020470(v5, &v28[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_emergencyStatus]);
  v31 = &v29[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_nextVCHandler];
  *v31 = sub_1BA2B7514;
  v31[1] = v22;
  type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  swift_retain_n();
  v34 = v19;
  sub_1BA02040C(v25, v26);
  v35 = [v33 bundleForClass_];
  v36 = sub_1BA4A6758();
  v37 = [objc_opt_self() imageNamed:v36 inBundle:v35];

  if (v37)
  {
    sub_1BA4A1318();
    v38 = sub_1BA4A6758();

    v39 = sub_1BA4A6758();

    v54.receiver = v29;
    v54.super_class = v27;
    v40 = objc_msgSendSuper2(&v54, sel_initWithTitle_detailText_icon_contentLayout_, v38, v39, v37, 2);

    v41 = v40;
    v42 = [v41 headerView];
    [v42 setAllowFullWidthIcon_];

    sub_1BA0204E8(v5);
    [v52 showViewController:v41 sender:v52];

LABEL_14:

    return;
  }

  __break(1u);
}

uint64_t sub_1BA2B6F54(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1BA4A7BF8();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

id sub_1BA2B7028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyMedicalIDViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmergencyAccessBuddyMedicalIDViewController(uint64_t a1)
{
  result = qword_1EBBF0020;
  if (!qword_1EBBF0020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2B7138(uint64_t a1)
{
  result = type metadata accessor for EmergencyAccessUserStatus(319);
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

id sub_1BA2B71E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow];
  *v9 = *a2;
  v9[8] = v8;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore] = a1;
  sub_1BA020470(a3, &v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus]);
  v10 = objc_allocWithZone(MEMORY[0x1E696C248]);
  sub_1BA02040C(v7, v8);
  v11 = a1;
  v12 = [v10 initWithHealthStore_];
  v13 = [v12 medicalIDSetUpStatus];

  if (v13 != 2)
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_5:
  sub_1BA4A1318();
  v14 = [objc_opt_self() standardConfiguration];
  [v14 setIsShowWhenLockedVisible_];
  [v14 setIsShareDuringEmergencyCallVisible_];
  [v14 setSuggestHealthData_];
  if (v8 > 1)
  {
    v15 = 3;
  }

  else
  {
    sub_1BA0204D4(v7, v8);
    v15 = 6;
  }

  [v14 setAccessPoint_];
  sub_1BA4A2998();
  v16 = v11;
  v17 = sub_1BA4A2988();
  v18 = sub_1BA4A2928();

  v19 = [objc_allocWithZone(MEMORY[0x1E69B1510]) initWithHealthStore:v16 medicalIDData:v18 displayConfiguration:v14];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_medicalIDViewController] = v19;
  v20 = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint] = v20;
  v21 = sub_1BA4A6758();

  v24.receiver = v4;
  v24.super_class = type metadata accessor for EmergencyAccessBuddyMedicalIDViewController(0);
  v22 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_symbolName_contentLayout_, v21, 0, 0, 3);

  sub_1BA0204E8(a3);
  return v22;
}

void sub_1BA2B7524(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SharingInviteActivityViewController();
  objc_msgSendSuper2(&v9, sel__prepareActivity_, a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 messageComposeViewController];
    if (v6)
    {
      v7 = v6;
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      v8 = sub_1BA4A6758();

      [v7 setBody_];

      v5 = v8;
    }
  }
}

id SharingInviteActivityViewController.__allocating_init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A6AE8();

  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF0030, 0x1E69CD9E8);
    v5 = sub_1BA4A6AE8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v2) initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

void sub_1BA2B77B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4 && (a2 & 1) != 0)
  {
    sub_1BA4A1718();
    sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
    v11 = sub_1BA4A70E8();
    sub_1BA4A1628();
    v12 = sub_1BA4A1A08();
    [v11 setValue:v12 forKey:*MEMORY[0x1E696C8A8]];

    (*(v7 + 8))(v10, v6);
  }
}

double sub_1BA2B78E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1BA4A6B08();
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

id SharingInviteActivityViewController.init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A6AE8();

  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF0030, 0x1E69CD9E8);
    v5 = sub_1BA4A6AE8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for SharingInviteActivityViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithActivityItems_applicationActivities_, v4, v5);

  return v6;
}

id SharingInviteActivityViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingInviteActivityViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s18HealthExperienceUI35SharingInviteActivityViewControllerC7present2on4with6senderySo06UIViewH0C_0A11AppServices27ContactDeepLinkingParameterVSgypSgtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v99 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1BA2B867C(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v101 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v84 - v11;
  v13 = sub_1BA4A15D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v100 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v102 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v84 - v22;
  sub_1BA2B867C(0, &qword_1EBBF0038, MEMORY[0x1E69A2CB0], v5);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v84 - v26;
  v28 = sub_1BA4A3708();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B85E8(a2, v27);
  sub_1BA4A36E8();
  v103 = v32;
  sub_1BA4A36F8();
  v33 = v14[6];
  if (v33(v12, 1, v13) == 1)
  {
    sub_1BA0B17A4(v12);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v34 = sub_1BA4A1318();
    sub_1BA2C84D8(a1, 0, 0, v34, v35, MEMORY[0x1E69E7CC0], 0, 0);

    return (*(v29 + 8))(v103, v28);
  }

  v97 = v33;
  v86 = v28;
  v87 = a1;
  v36 = v14[4];
  v90 = v14 + 4;
  v89 = v36;
  v36(v23, v12, v13);
  v96 = v13;
  v37 = v23;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v85 = v29;
  v38 = qword_1EDC84A30;
  v39 = sub_1BA4A6758();
  v40 = [objc_opt_self() imageNamed:v39 inBundle:v38];

  v41 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  v93 = sub_1BA4A1318();
  v92 = v42;
  v91 = v14;
  v43 = v14[2];
  v44 = v102;
  v98 = v37;
  v45 = v96;
  v43(v102, v37, v96);
  v46 = qword_1EBBE8298;
  v47 = v40;
  v95 = v40;
  v94 = v41;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = qword_1EBBEAB18;
  v49 = unk_1EBBEAB20;
  v88 = type metadata accessor for HealthURLActivityItemProvider(0);
  v50 = objc_allocWithZone(v88);
  v51 = &v50[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_title];
  v52 = v92;
  *v51 = v93;
  v51[1] = v52;
  v43(&v50[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url], v44, v45);
  *&v50[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image] = v47;
  *&v50[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage] = v41;
  v53 = &v50[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_subtitle];
  *v53 = v48;
  v53[1] = v49;
  v54 = v95;
  v55 = v94;

  v56 = v101;
  sub_1BA4A15C8();
  result = v97(v56, 1, v45);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v58 = v100;
    v89(v100, v56, v45);
    v59 = sub_1BA4A1548();
    v60 = v91[1];
    v60(v58, v45);
    v109.receiver = v50;
    v61 = v88;
    v109.super_class = v88;
    v62 = objc_msgSendSuper2(&v109, sel_initWithPlaceholderItem_, v59);
    v101 = v54;

    v60(v44, v45);
    sub_1B9F1FF2C(0, &unk_1EDC6B3F0, MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1BA4B5480;
    *(v63 + 56) = v61;
    *(v63 + 32) = v62;
    v64 = objc_allocWithZone(type metadata accessor for SharingInviteActivityViewController());
    v65 = v62;
    v66 = sub_1BA4A6AE8();

    v67 = [v64 initWithActivityItems:v66 applicationActivities:0];

    v68 = v67;
    v69 = sub_1BA2593F4();
    sub_1BA2B867C(0, &qword_1EBBEE848, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v71 = *MEMORY[0x1E69CDAF8];
    v72 = *MEMORY[0x1E69CDAA8];
    *(inited + 32) = *MEMORY[0x1E69CDAF8];
    *(inited + 40) = v72;
    aBlock[0] = v69;
    v73 = v71;
    v74 = v72;
    sub_1B9FE22C0(inited);
    type metadata accessor for ActivityType(0);
    v75 = sub_1BA4A6AE8();

    [v68 setExcludedActivityTypes_];

    v107 = sub_1BA2B77B4;
    v108 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA2B78E8;
    v106 = &block_descriptor_76;
    v76 = _Block_copy(aBlock);
    [v68 setCompletionWithItemsHandler_];
    _Block_release(v76);

    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v77 = result;
      v78 = [result isiPad];

      v79 = v87;
      v80 = v98;
      if (v78)
      {
        sub_1B9FF168C(v99, aBlock);
        if (v106)
        {
          sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
          if (swift_dynamicCast())
          {
            v81 = v104;
            v82 = [v68 popoverPresentationController];
            if (v82)
            {
              v83 = v82;
              [v82 setSourceView_];
            }

            v80 = v98;
          }
        }

        else
        {
          sub_1B9F23224(aBlock);
        }
      }

      [v79 presentViewController:v68 animated:1 completion:0];

      v60(v80, v45);
      v28 = v86;
      v29 = v85;
      return (*(v29 + 8))(v103, v28);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA2B85E8(uint64_t a1, uint64_t a2)
{
  sub_1BA2B867C(0, &qword_1EBBF0038, MEMORY[0x1E69A2CB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA2B867C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t HealthKitProfileInformationDataSource.__allocating_init(context:profileIdentifier:viewClass:layoutConstructor:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1BA2B8F0C(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v12;
}

uint64_t HealthKitProfileInformationDataSource.init(context:profileIdentifier:viewClass:layoutConstructor:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1BA2B8F0C(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v8;
}

uint64_t HealthKitProfileInformationDataSource.__deallocating_deinit()
{
  _s18HealthExperienceUI0A31KitProfileInformationDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2B89F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA2B9364(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = sub_1BA4A2888();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA06FE18(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1B9F82B24(v7, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    v14 = *(v9 + 32);
    v14(v12, v7, v8);
    v15 = MEMORY[0x1E69A30F0];
    *(a2 + 24) = v8;
    *(a2 + 32) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v14)(boxed_opaque_existential_1, v12, v8);
  }

  return result;
}

char *sub_1BA2B8BC0(void *a1)
{
  sub_1BA2B9364(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  sub_1B9F109F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = a1;
  v23 = MEMORY[0x1E69E7CC0];
  v7 = a1;
  result = sub_1BA066C64(0, 1, 0);
  v9 = v23;
  if ((inited & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1BFAF2860](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(inited + 32);
  }

  v11 = v10;

  sub_1BA0004FC();
  v12 = [objc_opt_self() primaryProfile];
  v13 = sub_1BA4A7798();

  if (v13)
  {
    v14 = sub_1BA4A1D78();
  }

  else
  {
    v14 = v11;
  }

  v23 = v9;
  v16 = *(v9 + 16);
  v15 = *(v9 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_1BA066C64((v15 > 1), v16 + 1, 1);
    v9 = v23;
  }

  *(v9 + 16) = v16 + 1;
  *(v9 + 8 * v16 + 32) = v14;
  sub_1BA4A27B8();
  sub_1BA2B9364(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v17 = sub_1BA4A1C68();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5480;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BD8], v17);
  v21 = sub_1BA4A0FA8();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  v22 = MEMORY[0x1BFAED020](v20, 0, v5, v9);

  sub_1B9F82B24(v5, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  return v22;
}

uint64_t sub_1BA2B8F0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = *v6;
  sub_1BA2B9364(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v37 - v15;
  v17 = sub_1BA2B8BC0(a2);
  if (a3)
  {
    v18 = *(a4 + 8);
  }

  else
  {
    v18 = 0;
  }

  *(v6 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = (v6 + qword_1EDC84CE0);
  *v19 = a3;
  v19[1] = v18;
  v20 = (v6 + qword_1EDC84CF0);
  *v20 = a5;
  v20[1] = a6;
  sub_1B9F109F8();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5470;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  sub_1B9F0F1B8(a5, a6);
  v23 = sub_1BA4A6758();
  v24 = [v22 initWithKey:v23 ascending:1 selector:sel_localizedStandardCompare_];

  *(v21 + 32) = v24;
  v25 = v6;
  v26 = sub_1BA4A7558();

  sub_1B9F126E0(0);
  v28 = objc_allocWithZone(v27);
  v29 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v26);
  v30 = sub_1BA4A2888();
  (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  sub_1BA1F9800(0);
  swift_allocObject();
  *(v25 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = v29;
  v33 = sub_1B9F17A68(v32, sub_1BA2B93C8, v31, 0);

  v34 = *(*v33 + 760);

  v34(v35);
  sub_1BA4A4DA8();

  sub_1B9F82B24(v16, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  return v33;
}

uint64_t type metadata accessor for HealthKitProfileInformationDataSource(uint64_t a1)
{
  result = qword_1EDC6DE60;
  if (!qword_1EDC6DE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA2B9364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t MessageWithActionVCAutomationBaseProvider.baseIdentifier.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v9 = &v13 - v8;
  (*(a2 + 40))(a1, a2, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v11;
}

uint64_t MessageWithActionVCAutomationBaseProvider.baseIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 56))(v11, a3, a4);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 16);
  v9 = swift_checkMetadataState();
  v8(a1, a2, v9, AssociatedConformanceWitness);
  return v6(v11, 0);
}

void (*MessageWithActionVCAutomationBaseProvider.baseIdentifier.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = MessageWithActionVCAutomationBaseProvider.baseIdentifier.getter(a2, a3);
  v8[1] = v9;
  return sub_1BA2B96DC;
}

void sub_1BA2B96DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[2];
  if (a2)
  {

    MessageWithActionVCAutomationBaseProvider.baseIdentifier.setter(v3, v4, v6, v5);
  }

  else
  {
    MessageWithActionVCAutomationBaseProvider.baseIdentifier.setter(**a1, v4, v6, v5);
  }

  free(v2);
}

uint64_t MessageWithActionVCAutomationBaseProvider<>.updateAutomationIdentifiers(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  if (a2)
  {
    v11 = sub_1BA4A6758();
  }

  else
  {
    v11 = 0;
  }

  [v4 setAccessibilityIdentifier_];

  v17 = v4;
  (*(a4 + 40))(a3, a4);
  sub_1B9F0D950(0, qword_1EDC65F98, &protocol descriptor for UIAutomationIdentifiable);
  if (swift_dynamicCast())
  {
    sub_1B9F25598(v15, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v13 + 8))(a1, a2, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    return sub_1BA2BC14C(v15, &qword_1EDC65F90, qword_1EDC65F98, &protocol descriptor for UIAutomationIdentifiable, sub_1B9F0D950);
  }
}

void __swiftcall MessageWithActionTileViewWithImage.ViewModel.init(image:attributedTitle:body:actionText:hasSeparator:backgroundColor:automationIdentifier:)(HealthExperienceUI::MessageWithActionTileViewWithImage::ViewModel *__return_ptr retstr, UIImage image, NSAttributedString attributedTitle, Swift::String_optional body, Swift::String actionText, Swift::Bool hasSeparator, UIColor backgroundColor, Swift::String automationIdentifier)
{
  retstr->image = image;
  retstr->title = attributedTitle;
  retstr->body = body;
  retstr->actionText = actionText;
  retstr->hasSeparator = hasSeparator;
  retstr->backgroundColor = backgroundColor;
  retstr->automationIdentifier = automationIdentifier;
}

void __swiftcall MessageWithActionTileViewWithImage.ViewModel.init(image:title:body:actionText:hasSeparator:backgroundColor:automationIdentifier:)(HealthExperienceUI::MessageWithActionTileViewWithImage::ViewModel *__return_ptr retstr, UIImage image, Swift::String title, Swift::String_optional body, Swift::String actionText, Swift::Bool hasSeparator, UIColor backgroundColor, Swift::String automationIdentifier)
{
  object = actionText._object;
  countAndFlagsBits = actionText._countAndFlagsBits;
  v26 = body.value._object;
  v8 = body.value._countAndFlagsBits;
  sub_1BA2B9BE4(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v13 = *MEMORY[0x1E69DDCF8];
  v14 = *MEMORY[0x1E69DB980];
  v15 = v12;
  v16 = sub_1B9F6B774(v13, v14, 0, 0, 0, 0, 1);
  v17 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v16;
  v18 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 labelColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v21;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v24 = sub_1BA4A6618();

  v25 = [v22 initWithString:v23 attributes:v24];

  retstr->image = image;
  retstr->title.super.isa = v25;
  retstr->body.value._countAndFlagsBits = v8;
  retstr->body.value._object = v26;
  retstr->actionText._countAndFlagsBits = countAndFlagsBits;
  retstr->actionText._object = object;
  retstr->hasSeparator = hasSeparator;
  *(&retstr->hasSeparator + 1) = *v30;
  *(&retstr->hasSeparator + 1) = *&v30[3];
  *&retstr->backgroundColor.super.isa = *&backgroundColor.super.isa;
  retstr->automationIdentifier._object = automationIdentifier._object;
}

void sub_1BA2B9BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1BA2B9C48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA2B9CB4()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA2B9D0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void MessageWithActionTileViewWithImage.MarginAndSizesConfiguration.init(imageLeadingMargin:imageLeadingMarginBiggerAXSizes:messageTopMargin:imageTopMargin:imageWidth:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

__n128 static MessageWithActionTileViewWithImage.MarginAndSizesConfiguration.defaultConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #16.0 }

  *a1 = result;
  *(a1 + 16) = xmmword_1BA4CD950;
  *(a1 + 32) = 0x4044000000000000;
  return result;
}

id MessageWithActionTileViewWithImage.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MessageWithActionTileViewWithImage.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E6720];
  sub_1BA2B9BE4(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v80 = &v74 - v13;
  v14 = sub_1BA4A7938();
  v82 = *(v14 - 8);
  v83 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v81 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B9BE4(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v10);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v74 - v19;
  v21 = sub_1BA4A3EA8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier];
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v26 = 0;
  *(v26 + 1) = 0;
  v28 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = *MEMORY[0x1E69DDCF8];
  v30 = *MEMORY[0x1E69DB980];
  v31 = *&v28[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v32 = sub_1B9F6B774(v29, v30, 0, 0, 0, 0, 1);
  [v31 setFont_];

  v33 = *&v28[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v34 = objc_opt_self();
  v79 = v33;
  v35 = [v34 preferredFontDescriptorWithTextStyle:v29 compatibleWithTraitCollection:0];
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
  }

  else
  {
    v77 = v22;
    v78 = v21;
    sub_1BA4A3DD8();
    v38 = v29;
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v75 = v40;
      v42 = v41;
      v74 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v86 = v76;
      *v42 = 136315906;
      v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v45 = sub_1B9F0B82C(v43, v44, &v86);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v84 = 0;
      v85 = 1;
      sub_1BA2B9BE4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v46 = sub_1BA4A6808();
      v48 = sub_1B9F0B82C(v46, v47, &v86);

      *(v42 + 14) = v48;
      *(v42 + 22) = 2080;
      LODWORD(v84) = 0;
      type metadata accessor for SymbolicTraits(0);
      v49 = sub_1BA4A6808();
      v51 = sub_1B9F0B82C(v49, v50, &v86);

      *(v42 + 24) = v51;
      *(v42 + 32) = 2112;
      v52 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v42 + 34) = v52;
      v53 = v74;
      *v74 = v52;
      _os_log_impl(&dword_1B9F07000, v39, v75, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v42, 0x2Au);
      sub_1BA2BC14C(v53, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      v54 = v76;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v54, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
    }

    (*(v77 + 8))(v25, v78);
    v55 = [v34 preferredFontDescriptorWithTextStyle_];
    v37 = [objc_opt_self() fontWithDescriptor:v55 size:0.0];
  }

  v56 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView;
  v57 = v79;
  [v79 setFont_];

  sub_1BA4A7998();
  (*(v82 + 104))(v81, *MEMORY[0x1E69DC560], v83);
  sub_1BA4A7828();
  v58 = v80;
  sub_1BA4A4898();
  v59 = sub_1BA4A4888();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  sub_1BA4A7928();
  sub_1BA4A7918();
  v60 = sub_1BA4A79A8();
  (*(*(v60 - 8) + 56))(v20, 0, 1, v60);
  sub_1BA4A79D8();
  *&v5[v56] = v28;
  v61 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView;
  v62 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v63 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  [v62 setImage_];

  v64 = v62;
  [v64 setTranslatesAutoresizingMaskIntoConstraints_];
  [v64 setContentMode_];

  *&v5[v61] = v64;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint] = 0;
  v65 = &v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration];
  __asm { FMOV            V0.2D, #16.0 }

  *v65 = _Q0;
  *(v65 + 1) = xmmword_1BA4CD950;
  *(v65 + 4) = 0x4044000000000000;
  v71 = type metadata accessor for MessageWithActionTileViewWithImage();
  v87.receiver = v5;
  v87.super_class = v71;
  v72 = objc_msgSendSuper2(&v87, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA2BB3C8();

  return v72;
}

__int128 *MessageWithActionTileViewWithImage.init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1BA2B9BE4(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v72 = &v66 - v7;
  v8 = sub_1BA4A7938();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B9BE4(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v66 - v13;
  v15 = sub_1BA4A3EA8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v76 = a1[1];
  v77 = v20;
  v21 = *(a1 + 4);
  v22 = &v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier];
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v22 = 0;
  *(v22 + 1) = 0;
  v24 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = *MEMORY[0x1E69DDCF8];
  v26 = *MEMORY[0x1E69DB980];
  v27 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v28 = sub_1B9F6B774(v25, v26, 0, 0, 0, 0, 1);
  [v27 setFont_];

  v29 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v30 = objc_opt_self();
  v71 = v29;
  v31 = [v30 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];
  }

  else
  {
    v69 = v16;
    v70 = v15;
    sub_1BA4A3DD8();
    v34 = v25;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v67 = v36;
      v38 = v37;
      v66 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v80 = v68;
      *v38 = 136315906;
      v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v41 = sub_1B9F0B82C(v39, v40, &v80);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v78 = 0;
      v79 = 1;
      sub_1BA2B9BE4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v42 = sub_1BA4A6808();
      v44 = sub_1B9F0B82C(v42, v43, &v80);

      *(v38 + 14) = v44;
      *(v38 + 22) = 2080;
      LODWORD(v78) = 0;
      type metadata accessor for SymbolicTraits(0);
      v45 = sub_1BA4A6808();
      v47 = sub_1B9F0B82C(v45, v46, &v80);

      *(v38 + 24) = v47;
      *(v38 + 32) = 2112;
      v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v38 + 34) = v48;
      v49 = v66;
      *v66 = v48;
      _os_log_impl(&dword_1B9F07000, v35, v67, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v38, 0x2Au);
      sub_1BA2BC14C(v49, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      v50 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
    }

    (*(v69 + 8))(v19, v70);
    v51 = [v30 preferredFontDescriptorWithTextStyle_];
    v33 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];
  }

  v52 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView;
  v53 = v71;
  [v71 setFont_];

  sub_1BA4A7998();
  (*(v74 + 104))(v73, *MEMORY[0x1E69DC560], v75);
  sub_1BA4A7828();
  v54 = v72;
  sub_1BA4A4898();
  v55 = sub_1BA4A4888();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  sub_1BA4A7928();
  sub_1BA4A7918();
  v56 = sub_1BA4A79A8();
  (*(*(v56 - 8) + 56))(v14, 0, 1, v56);
  sub_1BA4A79D8();
  *&v2[v52] = v24;
  v57 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView;
  v58 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v59 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  [v58 setImage_];

  v60 = v58;
  [v60 setTranslatesAutoresizingMaskIntoConstraints_];
  [v60 setContentMode_];

  *&v2[v57] = v60;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint] = 0;
  v61 = &v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration];
  v62 = v76;
  *v61 = v77;
  *(v61 + 1) = v62;
  *(v61 + 4) = v21;
  v63 = type metadata accessor for MessageWithActionTileViewWithImage();
  v81.receiver = v2;
  v81.super_class = v63;
  v64 = objc_msgSendSuper2(&v81, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA2BB3C8();

  return v64;
}

id MessageWithActionTileViewWithImage.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA2BAFC0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint;
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint];
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint];
  if (v6)
  {
    [v6 setActive_];
  }

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView];
  v9 = [v8 leadingAnchor];
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v10 = [v0 safeAreaLayoutGuide];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
    v13 = *&v0[v1];
    *&v0[v1] = v12;

    v14 = [v8 topAnchor];
    v15 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:14.0];

    v18 = *&v0[v3];
    *&v0[v3] = v17;

    v19 = [v15 leadingAnchor];
    v20 = [v0 safeAreaLayoutGuide];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:*&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration + 8]];
  }

  else
  {
    v23 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView];
    v24 = [v23 trailingAnchor];
    v25 = [v9 constraintEqualToAnchor_];

    v26 = *&v0[v1];
    *&v0[v1] = v25;

    v27 = [v8 topAnchor];
    v28 = [v0 topAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    v30 = *&v0[v3];
    *&v0[v3] = v29;

    v19 = [v23 leadingAnchor];
    v31 = [v0 safeAreaLayoutGuide];
    v21 = [v31 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:*&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration]];
  }

  v32 = v22;

  v33 = *&v0[v5];
  *&v0[v5] = v32;

  v34 = *&v0[v1];
  if (v34)
  {
    [v34 setActive_];
  }

  v35 = *&v0[v3];
  if (v35)
  {
    [v35 setActive_];
  }

  v36 = *&v0[v5];
  if (v36)
  {
    [v36 setActive_];
  }

  v38.receiver = v0;
  v38.super_class = type metadata accessor for MessageWithActionTileViewWithImage();
  return objc_msgSendSuper2(&v38, sel_updateConstraints);
}

double sub_1BA2BB3C8()
{
  swift_getObjectType();
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView];
  [v0 addSubview_];
  v3 = [v1 leadingAnchor];
  v4 = [v2 trailingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint] = v5;
  v47 = v5;

  v7 = [v1 topAnchor];
  v8 = [v0 topAnchor];
  v9 = &v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration];
  v10 = [v7 constraintEqualToAnchor:v8 constant:*&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration + 16]];

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint] = v10;
  v12 = v10;

  v13 = [v2 leadingAnchor];
  v14 = [v0 safeAreaLayoutGuide];
  v15 = [v14 leadingAnchor];

  v16 = [v13 &selRef:v15 objectAtIndex:*v9 + 6];
  v17 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint] = v16;
  v18 = v16;

  v46 = objc_opt_self();
  sub_1B9F109F8();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4C27B0;
  v20 = [v2 widthAnchor];
  v21 = [v20 constraintGreaterThanOrEqualToConstant_];

  *(v19 + 32) = v21;
  v22 = [v2 heightAnchor];
  v23 = [v2 widthAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v19 + 40) = v24;
  *(v19 + 48) = v18;
  v45 = v18;
  v25 = [v2 topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:v9[3]];

  *(v19 + 56) = v27;
  v28 = [v0 bottomAnchor];
  v29 = [v2 bottomAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29 constant:14.0];

  *(v19 + 64) = v30;
  *(v19 + 72) = v47;
  *(v19 + 80) = v12;
  v48 = v47;
  v31 = v12;
  v32 = [v0 trailingAnchor];
  v33 = [v1 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v19 + 88) = v34;
  v35 = [v0 bottomAnchor];
  v36 = [v1 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v19 + 96) = v37;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v38 = sub_1BA4A6AE8();

  [v46 activateConstraints_];

  LODWORD(v39) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v39];
  LODWORD(v40) = 1144750080;
  [v1 setContentCompressionResistancePriority:0 forAxis:v40];
  sub_1BA2B9BE4(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BA4B5480;
  v42 = sub_1BA4A4858();
  v43 = MEMORY[0x1E69DC2B0];
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  sub_1BA4A7708();

  swift_unknownObjectRelease();

  return result;
}

void sub_1BA2BB9B4(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v36 = *(a1 + 48);
  v7 = a1[8];
  v38 = a1[7];
  v39 = *a1;
  v8 = a1[9];
  aBlock = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v42 = v9;

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);

  MEMORY[0x1BFAF1350](v7, v8);

  v10 = v42;
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier];
  swift_beginAccess();
  v37 = aBlock;
  *v11 = aBlock;
  v11[1] = v10;
  with = v10;

  v40 = v2;
  v12 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView];
  v13 = [objc_opt_self() clearColor];
  [*&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel] setAttributedText_];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  v15 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v34 = v13;
  if (v4)
  {
    v16 = sub_1BA4A6758();
  }

  else
  {
    v16 = 0;
  }

  [v15 setText_];

  [*&v12[v14] setHidden_];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  v18 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v5;
  v20[4] = v6;
  v20[5] = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B9F7B15C;
  *(v21 + 24) = v20;
  v45 = sub_1B9F7B0CC;
  v46 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1B9F7B0FC;
  v44 = &block_descriptor_77;
  v22 = _Block_copy(&aBlock);
  v23 = v18;

  [v19 performWithoutAnimation_];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v24 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v24 = v5 & 0xFFFFFFFFFFFFLL;
    }

    [*&v12[v17] setHidden_];
    v25 = v34;
    [v12 setBackgroundColor_];
    [v12 updateConstraints];
    v26 = sub_1BA42FCF0();
    [v26 setHidden_];

    v27 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v27)
    {
      v28 = 0.0;
      if (v36)
      {
        v28 = 12.0;
      }

      [v27 setConstant_];
    }

    v29 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v29)
    {
      [v29 setConstant_];
    }

    v30.value._countAndFlagsBits = v37;
    v30.value._object = with;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v30);

    v31 = *&v40[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView];
    [v31 setImage_];
    [v40 setBackgroundColor_];
    aBlock = v37;
    v42 = with;

    MEMORY[0x1BFAF1350](0x6E6F63492ELL, 0xE500000000000000);
    v32 = sub_1BA4A6758();

    [v31 setAccessibilityIdentifier_];

    v33.value._countAndFlagsBits = v37;
    v33.value._object = with;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v33);
  }
}

Swift::Void __swiftcall MessageWithActionTileViewWithImage.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  countAndFlagsBits = with.value._countAndFlagsBits;
  if (with.value._object)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView);
    object = with.value._object;

    MEMORY[0x1BFAF1350](0x6E6F63492ELL, 0xE500000000000000);
    v5 = sub_1BA4A6758();

    [v3 setAccessibilityIdentifier_];

    v6 = object;
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView) setAccessibilityIdentifier_];
    v6 = 0;
  }

  v7 = countAndFlagsBits;
  MessageWithActionTileView.updateAutomationIdentifiers(with:)(*(&v6 - 1));
}

id MessageWithActionTileViewWithImage.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MessageWithActionTileViewWithImage();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA2BBFD4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA2BC030(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1BA2BC14C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA2BC1A8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA2BC1A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s18HealthExperienceUI025MessageWithActionTileViewE5ImageC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA2B9BE4(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v64 = &v57 - v5;
  v6 = sub_1BA4A7938();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B9BE4(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v2);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v57 - v11;
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v18 = 0;
  v18[1] = 0;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = *MEMORY[0x1E69DDCF8];
  v22 = *MEMORY[0x1E69DB980];
  v23 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v24 = sub_1B9F6B774(v21, v22, 0, 0, 0, 0, 1);
  [v23 setFont_];

  v25 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v26 = objc_opt_self();
  v63 = v25;
  v27 = [v26 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  if (v27)
  {
    v28 = v27;
    v29 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
  }

  else
  {
    v61 = v14;
    v62 = v13;
    sub_1BA4A3DD8();
    v30 = v21;
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v59 = v32;
      v34 = v33;
      v58 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v34 = 136315906;
      v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v37 = sub_1B9F0B82C(v35, v36, &v70);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v68 = 0;
      v69 = 1;
      sub_1BA2B9BE4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, &v70);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      LODWORD(v68) = 0;
      type metadata accessor for SymbolicTraits(0);
      v41 = sub_1BA4A6808();
      v43 = sub_1B9F0B82C(v41, v42, &v70);

      *(v34 + 24) = v43;
      *(v34 + 32) = 2112;
      v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v34 + 34) = v44;
      v45 = v58;
      *v58 = v44;
      _os_log_impl(&dword_1B9F07000, v31, v59, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v34, 0x2Au);
      sub_1BA2BC14C(v45, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      v46 = v60;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
    }

    (*(v61 + 8))(v17, v62);
    v47 = [v26 preferredFontDescriptorWithTextStyle_];
    v29 = [objc_opt_self() fontWithDescriptor:v47 size:0.0];
  }

  v48 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView;
  v49 = v63;
  [v63 setFont_];

  sub_1BA4A7998();
  (*(v66 + 104))(v65, *MEMORY[0x1E69DC560], v67);
  sub_1BA4A7828();
  v50 = v64;
  sub_1BA4A4898();
  v51 = sub_1BA4A4888();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_1BA4A7928();
  sub_1BA4A7918();
  v52 = sub_1BA4A79A8();
  (*(*(v52 - 8) + 56))(v12, 0, 1, v52);
  sub_1BA4A79D8();
  *(v1 + v48) = v20;
  v53 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView;
  v54 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v55 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  [v54 setImage_];

  v56 = v54;
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  [v56 setContentMode_];

  *(v1 + v53) = v56;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA2BCB5C(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 40) + 8))(v6, a1);
  if (v6[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBE9900, &protocol descriptor for CellSwipeConfigurationProviding);
    if (swift_dynamicCast())
    {
      v2 = *(&v8 + 1);
      if (*(&v8 + 1))
      {
        v3 = v9;
        __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
        v4 = (*(v3 + 8))(v2, v3);
        __swift_destroy_boxed_opaque_existential_1(&v7);
        return v4;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1B9F43A50(&v7, &qword_1EBBE98F8, &qword_1EBBE9900, &protocol descriptor for CellSwipeConfigurationProviding);
  return 0;
}

uint64_t sub_1BA2BCCB0(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 40) + 8))(v6, a1);
  if (v6[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBE9900, &protocol descriptor for CellSwipeConfigurationProviding);
    if (swift_dynamicCast())
    {
      v2 = *(&v8 + 1);
      if (*(&v8 + 1))
      {
        v3 = v9;
        __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
        v4 = (*(v3 + 16))(v2, v3);
        __swift_destroy_boxed_opaque_existential_1(&v7);
        return v4;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1B9F43A50(&v7, &qword_1EBBE98F8, &qword_1EBBE9900, &protocol descriptor for CellSwipeConfigurationProviding);
  return 0;
}

uint64_t sub_1BA2BCE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  (*(*(a3 + 40) + 8))(v9, a2);
  if (v9[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_1B9F1134C(&v10, v13);
        v6 = v14;
        v7 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v7 + 24))(a1, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  result = sub_1B9F43A50(&v10, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *a4 = 2;
  return result;
}

uint64_t sub_1BA2BCF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 40) + 8))(v12, a3);
  if (v13)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1B9F1134C(&v9, v12);
        v6 = v13;
        v7 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v7 + 16))(a1, a2, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  return sub_1B9F43A50(&v9, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
}

uint64_t sub_1BA2BD0F0(uint64_t a1, void **a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(a1, v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v8, v4 + v5);
  v6 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x80))(v6);
  return sub_1B9F43A50(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3);
}

uint64_t (*sub_1BA2BD1DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2BD240;
}

uint64_t sub_1BA2BD240(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x80))(result);
  }

  return result;
}

void sub_1BA2BD2A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B9F25350();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B5480;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;

    v6 = sub_1BA4A6AE8();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
  }

  else
  {

    [v2 setAccessibilityIdentifier_];
  }
}

id ContentConfigurationCollectionViewListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ContentConfigurationCollectionViewListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item];
  v10 = type metadata accessor for ContentConfigurationCollectionViewListCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t (*sub_1BA2BD584(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2BF330;
}

uint64_t sub_1BA2BD6D8(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v5);
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA2BD790(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA2BD7F8;
}

uint64_t sub_1BA2BD7FC(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(a1, v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v8, v4 + v5);
  swift_endAccess();
  sub_1BA2BDA58();
  sub_1BA2BDC10();
  sub_1BA2BDC30(v6);
  return sub_1B9F43A50(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3);
}

uint64_t sub_1BA2BD8C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F374E8(v2 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA2BD92C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA2BDA58();
  sub_1BA2BDC10();
  sub_1BA2BDC30(v4);
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA2BD9B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2BDA1C;
}

uint64_t sub_1BA2BDA1C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA2BDA58();
    sub_1BA2BDC10();
    return sub_1BA2BDC30(v4);
  }

  return result;
}

uint64_t sub_1BA2BDA58()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v1, v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v10)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, qword_1EDC5F948, &protocol descriptor for ContentConfigurationCellSelectionHandlerProvidingItem);
    if (swift_dynamicCast())
    {
      if (*(&v7 + 1))
      {
        sub_1B9F1134C(&v6, v9);
        v2 = v10;
        v3 = v11;
        __swift_project_boxed_opaque_existential_1(v9, v10);
        (*(v3 + 8))(&v6, v2, v3);
        v4 = *(&v7 + 1) != 0;
        sub_1B9F43A50(&v6, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
        [v0 setUserInteractionEnabled_];
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  return sub_1B9F43A50(&v6, &qword_1EBBF0098, qword_1EDC5F948, &protocol descriptor for ContentConfigurationCellSelectionHandlerProvidingItem);
}

uint64_t sub_1BA2BDC30(__n128 a1)
{
  v35 = sub_1BA4A3ED8();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v34 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v33 = v25 - v7;
  v32 = sub_1BA4A3FE8();
  v36 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v8);
  v31 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v1 + v10, v40, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v41)
  {
    sub_1B9F43A50(v40, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    return sub_1B9F43A50(&v37, &qword_1EBBF00A0, &qword_1EDC60098, &protocol descriptor for ContentConfigurationAccessoriesProvidingItem);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &qword_1EDC60098, &protocol descriptor for ContentConfigurationAccessoriesProvidingItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    return sub_1B9F43A50(&v37, &qword_1EBBF00A0, &qword_1EDC60098, &protocol descriptor for ContentConfigurationAccessoriesProvidingItem);
  }

  if (!*(&v38 + 1))
  {
    return sub_1B9F43A50(&v37, &qword_1EBBF00A0, &qword_1EDC60098, &protocol descriptor for ContentConfigurationAccessoriesProvidingItem);
  }

  v25[0] = v1;
  sub_1B9F1134C(&v37, v40);
  v11 = v41;
  v12 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  result = (*(v12 + 16))(v11, v12);
  v14 = 0;
  v30 = result;
  v29 = *(result + 16);
  v28 = v36 + 16;
  v27 = *MEMORY[0x1E69DBEF0];
  v26 = (v2 + 104);
  v15 = (v2 + 8);
  v25[1] = (v36 + 8);
  v16 = v36;
  v18 = v32;
  v17 = v33;
  while (1)
  {
    if (v29 == v14)
    {
      v24 = 0;
      goto LABEL_14;
    }

    if (v14 >= *(v30 + 16))
    {
      break;
    }

    v19 = v31;
    (*(v16 + 16))(v31, v30 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14++, v18);
    sub_1BA4A3F08();
    v21 = v34;
    v20 = v35;
    (*v26)(v34, v27, v35);
    v22 = MEMORY[0x1BFAEE900](v17, v21);
    v23 = *v15;
    (*v15)(v21, v20);
    v23(v17, v20);
    result = (*(v16 + 8))(v19, v18);
    if (v22)
    {
      v24 = 1;
LABEL_14:

      [v25[0] setAccessoryType_];
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA2BE2C0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1BA4A4168();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F65DE4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v3 + v16, v48, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v49)
  {
    sub_1B9F43A50(v48, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &qword_1EDC600A0, &protocol descriptor for ContentConfigurationBackgroundProvidingItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    goto LABEL_8;
  }

  if (!*(&v51 + 1))
  {
LABEL_8:
    sub_1B9F43A50(&v50, &qword_1EBBF0080, &qword_1EDC600A0, &protocol descriptor for ContentConfigurationBackgroundProvidingItem);
LABEL_9:
    sub_1BA4A4158();
    v20 = [v3 viewController];
    if (v20)
    {
      v21 = v20;
      UIViewController.resolvedPresentation.getter(&aBlock);

      v22 = aBlock;
      if (a1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = 0;
      if (a1)
      {
        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {
      v23 = v22 - 4;
      v24 = objc_opt_self();
      v25 = &selRef_tertiarySystemBackgroundColor;
      if ((v23 & 0xF7) != 0)
      {
        v25 = &selRef_secondarySystemGroupedBackgroundColor;
      }

      v26 = [v24 *v25];
      goto LABEL_17;
    }

LABEL_18:
    if ((v22 - 6) < 2)
    {
      v34 = objc_opt_self();
      v35 = [v34 systemGray5Color];
      v36 = [v34 tertiarySystemGroupedBackgroundColor];
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = v36;
      v37[4] = 0;
      v37[5] = v35;
      v32 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v46 = sub_1B9FD7F54;
      v47 = v37;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v33 = &block_descriptor_78;
      goto LABEL_23;
    }

    if (v22 == 4 || v22 == 12)
    {
      v28 = objc_opt_self();
      v29 = [v28 systemGray5Color];
      v30 = [v28 systemGray4Color];
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = v30;
      v31[4] = 0;
      v31[5] = v29;
      v32 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v46 = sub_1B9FE1088;
      v47 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v33 = &block_descriptor_13_0;
LABEL_23:
      v44 = sub_1B9F7EBBC;
      v45 = v33;
      v38 = _Block_copy(&aBlock);
      [v32 initWithDynamicProvider_];
      _Block_release(v38);

      goto LABEL_24;
    }

    v26 = [objc_opt_self() systemGray5Color];
LABEL_17:
    v27 = v26;
LABEL_24:
    sub_1BA4A4118();
    return (*(v8 + 32))(a3, v11, v7);
  }

  v17 = a3;
  v41 = v3;
  sub_1B9F1134C(&v50, &aBlock);
  v18 = v45;
  v19 = v46;
  __swift_project_boxed_opaque_existential_1(&aBlock, v45);
  v19[2](v18, v19);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    sub_1B9F66560(v15);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v3 = v41;
    a3 = v17;
    goto LABEL_9;
  }

  (*(v8 + 32))(v17, v15, v7);
  return __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

id ContentConfigurationTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id ContentConfigurationTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for ContentConfigurationTableViewCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);

  return v7;
}

id ContentConfigurationTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA2BEA64(void *a1, void *a2, uint64_t (*a3)(void))
{
  v5 = &v3[*a2];
  v6 = a3();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = v3;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

char *sub_1BA2BEB04(char *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v6 = &a1[*a4];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v10.receiver = a1;
  v10.super_class = a5();
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_1BA2BEBAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA2BEC2C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F374E8(v2 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA2BEC98(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2BF334;
}

uint64_t sub_1BA2BEDEC@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  return sub_1B9F374E8(v4 + v5, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA2BEE5C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  swift_endAccess();
  sub_1BA2BDA58();
  sub_1BA2BDC10();
  sub_1BA2BDC30(v5);
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA2BEEEC(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA2BEF54;
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B9F374E8(v4 + v5, a3, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

BOOL sub_1BA2BF198(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 40) + 8))(v9, a1);
  if (v10)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, qword_1EDC5F948, &protocol descriptor for ContentConfigurationCellSelectionHandlerProvidingItem);
    if (swift_dynamicCast())
    {
      if (*(&v7 + 1))
      {
        sub_1B9F1134C(&v6, v9);
        v2 = v10;
        v3 = v11;
        __swift_project_boxed_opaque_existential_1(v9, v10);
        (*(v3 + 8))(&v6, v2, v3);
        v4 = *(&v7 + 1) != 0;
        sub_1B9F43A50(&v6, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
        __swift_destroy_boxed_opaque_existential_1(v9);
        return v4;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_1B9F43A50(&v6, &qword_1EBBF0098, qword_1EDC5F948, &protocol descriptor for ContentConfigurationCellSelectionHandlerProvidingItem);
  return 0;
}

uint64_t sub_1BA2BF338()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF00A8 = result;
  unk_1EBBF00B0 = v1;
  return result;
}

uint64_t sub_1BA2BF3E4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF00B8 = result;
  unk_1EBBF00C0 = v1;
  return result;
}

id sub_1BA2BF490()
{
  type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_healthStore];
  v6 = 1;
  v5 = 1282;
  v2 = v1;
  static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v2, &v6, v3, &v5);

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

id sub_1BA2BF5CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingInvitationAcceptedViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA2BF670(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_selectedContactPhotoPublisher] = a2;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_healthStore] = a3;
  v7 = qword_1EBBE8788;

  v8 = a3;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1BA4A6758();
  v10 = sub_1BA4A3348();
  v12 = v11;
  if (qword_1EBBE8790 != -1)
  {
    swift_once();
  }

  sub_1B9F2EAC0(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5480;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1B9F1BE20();
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  sub_1BA4A6768();

  v14 = sub_1BA4A6758();

  v20.receiver = v4;
  v20.super_class = type metadata accessor for SummarySharingInvitationAcceptedViewController();
  v15 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_contentLayout_, v9, v14, 0, 3);

  v16 = v15;
  v17 = sub_1BA4A6758();

  sub_1BA10FFDC();
  v18 = sub_1BA4A33C8();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v16;
}

uint64_t sub_1BA2BF8A0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F209BC(a1, v7, sub_1B9F20584);
  v8 = *a2;
  v9 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  sub_1B9F2BAE8(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1BA2BF96C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  return sub_1B9F209BC(v1 + v3, a1, sub_1B9F20584);
}

uint64_t sub_1BA2BF9D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  sub_1B9F2BAE8(a1, v1 + v3);
  return swift_endAccess();
}

char *DismissibleCellHeaderView.ViewModel.__allocating_init(titleText:systemImageName:detailText:foregroundColor:backgroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v46 = a7;
  v47 = a5;
  v48 = a6;
  v44 = a3;
  v45 = a4;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v22;
  v23 = swift_allocObject();
  v43 = *a8;
  v24 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v25 = sub_1BA4A2B98();
  v26 = *(*(v25 - 8) + 56);
  v26(&v23[v24], 1, 1, v25);
  v52 = a1;
  v53 = a2;
  sub_1B9F252FC();
  v27 = sub_1BA4A7B38();
  v39 = v28;

  sub_1B9F209BC(v47, v22, sub_1BA2C0448);
  v29 = v18;
  sub_1B9F209BC(v48, v18, sub_1B9F20584);
  *(v23 + 5) = 0;
  *(v23 + 4) = 0;
  v30 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v31 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v31 - 8) + 56))(&v23[v30], 1, 1, v31);
  v32 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v26(&v23[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v25);
  v33 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v50 = 0;
  v51 = 0;
  sub_1BA4A4EE8();
  (*(v41 + 32))(&v23[v33], v14, v42);
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v34 = v39;
  *(v23 + 2) = v27;
  *(v23 + 3) = v34;
  swift_beginAccess();
  v35 = v45;
  *(v23 + 4) = v44;
  *(v23 + 5) = v35;

  swift_beginAccess();
  v36 = v40;
  sub_1BA2C047C(v40, &v23[v30], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v29, &v23[v32], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v49 = v43;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F20A8C(v48, sub_1B9F20584);
  sub_1B9F20A8C(v47, sub_1BA2C0448);
  sub_1B9F20A8C(v29, sub_1B9F20584);
  sub_1B9F20A8C(v36, sub_1BA2C0448);
  v37 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();

  sub_1B9F2BAE8(v46, &v23[v37]);
  swift_endAccess();

  return v23;
}

char *DismissibleCellHeaderView.ViewModel.init(titleText:systemImageName:detailText:foregroundColor:backgroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = v8;
  v50 = a7;
  v51 = a5;
  v44 = a6;
  v48 = a3;
  v49 = a4;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v24;
  v47 = *a8;
  v25 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v26 = sub_1BA4A2B98();
  v27 = *(*(v26 - 8) + 56);
  v27(&v9[v25], 1, 1, v26);
  v55 = a1;
  v56 = a2;
  sub_1B9F252FC();
  v28 = sub_1BA4A7B38();
  v41 = v29;
  v42 = v28;

  sub_1B9F209BC(v51, v24, sub_1BA2C0448);
  v30 = v44;
  sub_1B9F209BC(v44, v20, sub_1B9F20584);
  *(v9 + 5) = 0;
  *(v9 + 4) = 0;
  v31 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v32 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v32 - 8) + 56))(&v9[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v27(&v9[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v26);
  v34 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v53 = 0;
  v54 = 0;
  sub_1BA4A4EE8();
  (*(v45 + 32))(&v9[v34], v16, v46);
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v35 = v41;
  *(v9 + 2) = v42;
  *(v9 + 3) = v35;
  swift_beginAccess();
  v36 = v49;
  *(v9 + 4) = v48;
  *(v9 + 5) = v36;

  swift_beginAccess();
  v37 = v43;
  sub_1BA2C047C(v43, &v9[v31], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v20, &v9[v33], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v52 = v47;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F20A8C(v30, sub_1B9F20584);
  sub_1B9F20A8C(v51, sub_1BA2C0448);
  sub_1B9F20A8C(v20, sub_1B9F20584);
  sub_1B9F20A8C(v37, sub_1BA2C0448);
  v38 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();

  sub_1B9F2BAE8(v50, &v9[v38]);
  swift_endAccess();

  return v9;
}

uint64_t sub_1BA2C047C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1BA2C0508(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1BA2C0598(uint64_t a1)
{
  v2 = sub_1BA2C0924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2C05D4(uint64_t a1)
{
  v2 = sub_1BA2C0924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *DismissibleCellHeaderView.ViewModel.init(from:)(void *a1)
{
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C15B8(0, &qword_1EDC5DEE8, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20[-1] - v11;
  v13 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v14 = sub_1BA4A2B98();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  sub_1B9F0A534(a1, v20);
  v15 = CellHeaderViewModel.init(from:)(v20);
  if (!v2)
  {
    v19 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BA2C0924();
    sub_1BA4A8528();
    sub_1B9F85270(&qword_1EDC6E1D8, MEMORY[0x1E69A3260], MEMORY[0x1E69A3270]);
    v16 = v19;
    sub_1BA4A8178();
    (*(v21 + 8))(v12, v9);
    v18 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    swift_beginAccess();
    sub_1B9F2BAE8(v16, &v15[v18]);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

unint64_t sub_1BA2C0924()
{
  result = qword_1EDC6C6B0;
  if (!qword_1EDC6C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C6B0);
  }

  return result;
}

char *DismissibleCellHeaderView.ViewModel.__allocating_init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v44 = a5;
  v45 = a6;
  v42 = a3;
  v43 = a4;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - v12;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v21;
  v22 = swift_allocObject();
  v41 = *a7;
  v23 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v24 = sub_1BA4A2B98();
  v25 = *(*(v24 - 8) + 56);
  v25(&v22[v23], 1, 1, v24);
  v49 = a1;
  v50 = a2;
  sub_1B9F252FC();
  v37 = sub_1BA4A7B38();
  v27 = v26;

  sub_1B9F209BC(v44, v21, sub_1BA2C0448);
  v28 = v17;
  sub_1B9F209BC(v45, v17, sub_1B9F20584);
  *(v22 + 5) = 0;
  *(v22 + 4) = 0;
  v29 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v30 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v30 - 8) + 56))(&v22[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v25(&v22[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v24);
  v32 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v47 = 0;
  v48 = 0;
  sub_1BA4A4EE8();
  (*(v39 + 32))(&v22[v32], v13, v40);
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  *(v22 + 2) = v37;
  *(v22 + 3) = v27;
  swift_beginAccess();
  v33 = v43;
  *(v22 + 4) = v42;
  *(v22 + 5) = v33;

  swift_beginAccess();
  v34 = &v22[v29];
  v35 = v38;
  sub_1BA2C047C(v38, v34, sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v28, &v22[v31], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v46 = v41;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F20A8C(v45, sub_1B9F20584);
  sub_1B9F20A8C(v44, sub_1BA2C0448);
  sub_1B9F20A8C(v28, sub_1B9F20584);
  sub_1B9F20A8C(v35, sub_1BA2C0448);
  return v22;
}

char *DismissibleCellHeaderView.ViewModel.init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = v7;
  v41 = a6;
  v46 = a4;
  v47 = a5;
  v45 = a3;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v23;
  v44 = *a7;
  v24 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v25 = sub_1BA4A2B98();
  v26 = *(*(v25 - 8) + 56);
  v26(&v8[v24], 1, 1, v25);
  v51 = a1;
  v52 = a2;
  sub_1B9F252FC();
  v27 = sub_1BA4A7B38();
  v38 = v28;
  v39 = v27;

  sub_1B9F209BC(v47, v23, sub_1BA2C0448);
  v29 = v41;
  sub_1B9F209BC(v41, v19, sub_1B9F20584);
  *(v8 + 5) = 0;
  *(v8 + 4) = 0;
  v30 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v31 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v31 - 8) + 56))(&v8[v30], 1, 1, v31);
  v32 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v26(&v8[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v25);
  v33 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v49 = 0;
  v50 = 0;
  sub_1BA4A4EE8();
  (*(v42 + 32))(&v8[v33], v15, v43);
  *&v8[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v34 = v38;
  *(v8 + 2) = v39;
  *(v8 + 3) = v34;
  swift_beginAccess();
  v35 = v46;
  *(v8 + 4) = v45;
  *(v8 + 5) = v35;

  swift_beginAccess();
  v36 = v40;
  sub_1BA2C047C(v40, &v8[v30], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v19, &v8[v32], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v48 = v44;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F20A8C(v29, sub_1B9F20584);
  sub_1B9F20A8C(v47, sub_1BA2C0448);
  sub_1B9F20A8C(v19, sub_1B9F20584);
  sub_1B9F20A8C(v36, sub_1BA2C0448);
  return v8;
}

uint64_t sub_1BA2C129C(void *a1, __n128 a2)
{
  sub_1BA2C15B8(0, &qword_1EDC5DD88, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A2B98();
  v24 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA032568(a1);
  if (!v3)
  {
    v22 = v7;
    v23 = 0;
    v20 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    swift_beginAccess();
    sub_1B9F209BC(v2 + v20, v14, sub_1B9F20584);
    if ((*(v24 + 48))(v14, 1, v15) == 1)
    {
      return sub_1B9F20A8C(v14, sub_1B9F20584);
    }

    else
    {
      (*(v24 + 32))(v18, v14, v15);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1BA2C0924();
      sub_1BA4A8548();
      sub_1B9F85270(&qword_1EDC6AD70, MEMORY[0x1E69A3260], MEMORY[0x1E69A3268]);
      sub_1BA4A8288();
      (*(v22 + 8))(v10, v6);
      return (*(v24 + 8))(v18, v15);
    }
  }

  return result;
}

void sub_1BA2C15B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA2C0924();
    v7 = a3(a1, &type metadata for DismissibleCellHeaderView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_1BA2C161C(void *a1)
{
  v2 = v1;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v68 = v4;
  v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v53 - v6;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v70 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v53 - v17;
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v69 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x1EEE9AC00](v22, v23).n128_u64[0];
  v26 = &v53 - v25;
  result = [a1 viewModel];
  if (result)
  {
    v28 = result;
    type metadata accessor for CellHeaderViewModel(0);
    v29 = sub_1BA032C70(v28);

    if (v1)
    {
      return v2;
    }

    v55 = 0;
    v54 = v11;
    swift_beginAccess();
    v30 = v29[3];
    v60 = v29[2];
    swift_beginAccess();
    v31 = v29[5];
    v64 = v29[4];
    v61 = v31;
    v32 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
    swift_beginAccess();
    v65 = a1;
    v59 = sub_1BA2C0448;
    v66 = v26;
    sub_1B9F209BC(v29 + v32, v26, sub_1BA2C0448);
    v33 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
    swift_beginAccess();
    v58 = sub_1B9F20584;
    v62 = v18;
    sub_1B9F209BC(v29 + v33, v18, sub_1B9F20584);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1BA4A4F28();

    v63 = v76;
    type metadata accessor for DismissibleCellHeaderView.ViewModel(0);
    v2 = swift_allocObject();
    v34 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    v35 = sub_1BA4A2B98();
    v57 = v7;
    v36 = v35;
    v37 = *(*(v35 - 8) + 56);
    (v37)(&v2[v34], 1, 1, v35);
    v74 = v60;
    v75 = v30;
    sub_1B9F252FC();
    v60 = sub_1BA4A7B38();
    v56 = v38;

    sub_1B9F209BC(v66, v69, v59);
    sub_1B9F209BC(v18, v70, v58);
    *(v2 + 5) = 0;
    *(v2 + 4) = 0;
    v39 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
    v40 = type metadata accessor for CellHeaderDetailText(0);
    (*(*(v40 - 8) + 56))(&v2[v39], 1, 1, v40);
    v41 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
    v59 = v36;
    v58 = v37;
    (v37)(&v2[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v36);
    v42 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
    sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v72 = 0;
    v73 = 0;
    v43 = v57;
    sub_1BA4A4EE8();
    (*(v67 + 32))(&v2[v42], v43, v68);
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
    v44 = v56;
    *(v2 + 2) = v60;
    *(v2 + 3) = v44;
    swift_beginAccess();
    *(v2 + 4) = v64;
    *(v2 + 5) = v61;

    swift_beginAccess();
    v45 = &v2[v39];
    v46 = v65;
    v47 = v69;
    sub_1BA2C047C(v69, v45, sub_1BA2C0448);
    swift_endAccess();
    swift_beginAccess();
    v48 = &v2[v41];
    v49 = v70;
    sub_1BA2C047C(v70, v48, sub_1B9F20584);
    swift_endAccess();
    swift_beginAccess();
    v71 = v63;
    sub_1BA4A4EE8();
    swift_endAccess();
    sub_1B9F418E4();
    sub_1B9F20A8C(v49, sub_1B9F20584);
    sub_1B9F20A8C(v47, sub_1BA2C0448);
    sub_1B9F20A8C(v62, sub_1B9F20584);
    sub_1B9F20A8C(v66, sub_1BA2C0448);
    if (![v46 hasBackgroundColor])
    {
LABEL_6:

      return v2;
    }

    result = [v46 backgroundColor];
    if (result)
    {
      v50 = v54;
      v51 = v55;
      sub_1BA4A2BA8();

      if (!v51)
      {
        (v58)(v50, 0, 1, v59);
        v52 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
        swift_beginAccess();
        sub_1B9F2BAE8(v50, &v2[v52]);
        swift_endAccess();
        return v2;
      }

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BA2C1E40()
{
  v1 = sub_1BA4A2B98();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x1E69A41B8]) init];
  if (result)
  {
    v11 = result;
    v12 = sub_1BA03324C();
    [v11 setViewModel_];

    v13 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    swift_beginAccess();
    sub_1B9F209BC(v0 + v13, v9, sub_1B9F20584);
    if ((*(v2 + 48))(v9, 1, v1))
    {
      sub_1B9F20A8C(v9, sub_1B9F20584);
      v14 = 0;
    }

    else
    {
      (*(v2 + 16))(v5, v9, v1);
      sub_1B9F20A8C(v9, sub_1B9F20584);
      v14 = sub_1BA4A2B88();
      (*(v2 + 8))(v5, v1);
    }

    [v11 setBackgroundColor_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DismissibleCellHeaderView.ViewModel.deinit()
{

  sub_1B9F20A8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, sub_1BA2C0448);
  sub_1B9F20A8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, sub_1B9F20584);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F64048(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1B9F20A8C(v0 + OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor, sub_1B9F20584);
  return v0;
}

uint64_t DismissibleCellHeaderView.ViewModel.__deallocating_deinit()
{

  sub_1B9F20A8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, sub_1BA2C0448);
  sub_1B9F20A8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, sub_1B9F20584);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F64048(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1B9F20A8C(v0 + OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor, sub_1B9F20584);

  return swift_deallocClassInstance();
}

void sub_1BA2C23F0(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_1BA1846E4;
  a2[1] = v5;
}

uint64_t DismissibleCellHeaderView.tapAction.getter()
{
  v1 = *v0;

  return v1;
}

void DismissibleCellHeaderView.tapAction.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DismissibleCellHeaderView.init(_:tapAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v8 = *(type metadata accessor for DismissibleCellHeaderView(0) + 32);
  *(a4 + v8) = swift_getKeyPath();
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + 8) = a3;
  *(a4 + 16) = a1;
  *a4 = a2;
  return result;
}

void DismissibleCellHeaderView.init(_:tapAction:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[2];
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v8 = *(type metadata accessor for DismissibleCellHeaderView(0) + 32);
  *(a4 + v8) = swift_getKeyPath();
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();

  *(a4 + 8) = a3;
  *(a4 + 16) = v7;
  *a4 = a2;
}

void DismissibleCellHeaderView.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = *(type metadata accessor for DismissibleCellHeaderView(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();

  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *a2 = nullsub_1;
}

id sub_1BA2C2820()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {

    return v6;
  }

  else
  {
    v10[0] = *(v0 + 24);

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    v9 = sub_1BA232F2C(v10[0], 0);
    (*(v2 + 8))(v5, v1, v9);
    return v10[1];
  }
}

uint64_t sub_1BA2C298C()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v7, v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return v7;
}

uint64_t sub_1BA2C2AF0@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for DismissibleCellHeaderView(0);
  sub_1BA23D6B4(v1 + *(v12 + 32), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BA4A53C8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BA4A6FB8();
    v15 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void DismissibleCellHeaderView.body.getter(uint64_t a9@<X8>)
{
  *a9 = sub_1BA4A5868();
  *(a9 + 8) = 0x402C000000000000;
  *(a9 + 16) = 0;
  sub_1BA2C7934(0, &qword_1EDC5F2E8, sub_1BA2C3CC0, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1BA2C2E24(v9, a9 + *(v11 + 44));
  v12 = sub_1BA4A5B88();
  sub_1BA4A5188();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1BA2C4580(0);
  v22 = a9 + *(v21 + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  v23 = sub_1BA4A5B68();
  sub_1BA4A5188();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1BA2C45A0(0, &qword_1EDC5EFA8, sub_1BA2C4580);
  v33 = a9 + *(v32 + 36);
  *v33 = v23;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
}

uint64_t sub_1BA2C2E24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = sub_1BA4A62D8();
  v124 = *(v3 - 8);
  v125 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v111 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C454C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v127 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v126 = &v106 - v11;
  sub_1BA2C4188(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v109 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA2C4140(0);
  v121 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v108 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v110 = &v106 - v20;
  sub_1BA2C3F4C(0, &qword_1EDC5ED90, sub_1BA2C3DAC, sub_1BA2C4140, MEMORY[0x1E697F948]);
  v116 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v118 = &v106 - v23;
  sub_1BA2C3DAC(0);
  v117 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v106 = (&v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v107 = &v106 - v29;
  v30 = sub_1BA4A53C8();
  v113 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v112 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C3D64(0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v123 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v122 = &v106 - v38;
  v39 = sub_1BA4A2B98();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v115 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v106 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v106 - v53;
  v120 = sub_1BA4A2C58();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v55);
  v57 = &v106 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = a1;
  v58 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = v58;
  sub_1BA4A4F28();

  v59 = v134;
  if (v134)
  {
  }

  sub_1BA2C2820();
  sub_1BA4A2C48();
  v60 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v61 = v132;
  swift_beginAccess();
  v114 = v60;
  sub_1B9F209BC(v61 + v60, v54, sub_1B9F20584);
  v131 = *(v40 + 48);
  v62 = v131(v54, 1, v39);
  v129 = v57;
  if (v62)
  {
    sub_1B9F20A8C(v54, sub_1B9F20584);
    v63 = sub_1BA4A60A8();
  }

  else
  {
    (*(v40 + 16))(v43, v54, v39);
    sub_1B9F20A8C(v54, sub_1B9F20584);
    v63 = sub_1BA4A2B78();
    (*(v40 + 8))(v43, v39);
  }

  v64 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v65 = v132;
  swift_beginAccess();
  sub_1B9F209BC(v65 + v64, v50, sub_1B9F20584);
  if (v131(v50, 1, v39))
  {
    sub_1B9F20A8C(v50, sub_1B9F20584);
    v130 = 0;
  }

  else
  {
    (*(v40 + 16))(v43, v50, v39);
    sub_1B9F20A8C(v50, sub_1B9F20584);
    v130 = sub_1BA4A2B78();
    (*(v40 + 8))(v43, v39);
  }

  v66 = v63;
  v67 = v112;
  v68 = sub_1BA2C298C();
  v70 = v69;
  sub_1BA2C2AF0(v67);
  if (qword_1EDC67DE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v30, qword_1EDC84C60);
  sub_1B9F85270(&qword_1EDC5F2C8, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v71 = sub_1BA4A66F8();
  (*(v113 + 8))(v67, v30);
  if (v71)
  {
    v72 = sub_1BA4A5878();
    v73 = v109;
    *v109 = v72;
    v73[1] = 0;
    *(v73 + 16) = 1;
    sub_1BA2C7934(0, &qword_1EBBF00E0, sub_1BA2C421C, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1BA2C5484(v133, v130, v68, v70, v73 + *(v74 + 44));

    sub_1B9F64048(0, &qword_1EBBF00E8, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v76 = sub_1BA4A5BA8();
    *(inited + 32) = v76;
    v77 = sub_1BA4A5BC8();
    *(inited + 33) = v77;
    v78 = sub_1BA4A5BB8();
    sub_1BA4A5BB8();
    v79 = sub_1BA4A5BB8();
    v80 = v122;
    if (v79 != v76)
    {
      v78 = sub_1BA4A5BB8();
    }

    sub_1BA4A5BB8();
    if (sub_1BA4A5BB8() != v77)
    {
      v78 = sub_1BA4A5BB8();
    }

    v81 = v126;

    v82 = sub_1BA4A63C8();
    v84 = v83;
    v85 = v73;
    v86 = v108;
    sub_1BA2C79A0(v85, v108, sub_1BA2C4188);
    v87 = v86 + *(v121 + 36);
    *v87 = v66;
    *(v87 + 8) = v78;
    *(v87 + 16) = v82;
    *(v87 + 24) = v84;
    v88 = v110;
    sub_1BA2C79A0(v86, v110, sub_1BA2C4140);
    sub_1B9F209BC(v88, v118, sub_1BA2C4140);
    swift_storeEnumTagMultiPayload();
    sub_1B9F85270(&qword_1EDC5EAF8, sub_1BA2C3DAC, MEMORY[0x1E69817F8]);
    sub_1BA2C7A08();
    sub_1BA4A58E8();
    sub_1B9F20A8C(v88, sub_1BA2C4140);
  }

  else
  {
    v80 = v122;
    if (v59)
    {
      v89 = sub_1BA4A5778();
    }

    else
    {
      v89 = sub_1BA4A5798();
    }

    v90 = v106;
    *v106 = v89;
    *(v90 + 8) = 0x4020000000000000;
    *(v90 + 16) = 0;
    sub_1BA2C7934(0, &qword_1EDC5F310, sub_1BA2C3E40, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    sub_1BA2C4690(v133, v130, v68, v70, v59 != 0, v90 + *(v91 + 44));

    v92 = v107;
    sub_1BA2C79A0(v90, v107, sub_1BA2C3DAC);
    sub_1B9F209BC(v92, v118, sub_1BA2C3DAC);
    swift_storeEnumTagMultiPayload();
    sub_1B9F85270(&qword_1EDC5EAF8, sub_1BA2C3DAC, MEMORY[0x1E69817F8]);
    sub_1BA2C7A08();
    sub_1BA4A58E8();
    sub_1B9F20A8C(v92, sub_1BA2C3DAC);
    v81 = v126;
  }

  v93 = v115;
  sub_1B9F209BC(v132 + v114, v115, sub_1B9F20584);
  v94 = 1;
  v95 = v131(v93, 1, v39);
  sub_1B9F20A8C(v93, sub_1B9F20584);
  v96 = v95 == 1;
  v98 = v124;
  v97 = v125;
  if (v96)
  {
    v99 = v111;
    sub_1BA4A62C8();
    (*(v98 + 32))(v81, v99, v97);
    v94 = 0;
  }

  (*(v98 + 56))(v81, v94, 1, v97);
  v100 = v123;
  sub_1B9F209BC(v80, v123, sub_1BA2C3D64);
  v101 = v127;
  sub_1B9F209BC(v81, v127, sub_1BA2C454C);
  v102 = v128;
  sub_1B9F209BC(v100, v128, sub_1BA2C3D64);
  sub_1BA2C3CF4(0, v103);
  sub_1B9F209BC(v101, v102 + *(v104 + 48), sub_1BA2C454C);

  sub_1B9F20A8C(v81, sub_1BA2C454C);
  sub_1B9F20A8C(v80, sub_1BA2C3D64);
  (*(v119 + 8))(v129, v120);
  sub_1B9F20A8C(v101, sub_1BA2C454C);
  return sub_1B9F20A8C(v100, sub_1BA2C3D64);
}

void sub_1BA2C3CF4(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5ED20)
  {
    sub_1BA2C3D64(255);
    sub_1BA2C454C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5ED20);
    }
  }
}

void sub_1BA2C3DAC(uint64_t a1)
{
  if (!qword_1EDC5EAF0)
  {
    sub_1BA2C3E40(255);
    sub_1B9F85270(&qword_1EDC5E988, sub_1BA2C3E40, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EAF0);
    }
  }
}

void sub_1BA2C3E74(uint64_t a1)
{
  if (!qword_1EDC5F238)
  {
    sub_1BA2C446C(255, &qword_1EDC5F240, &type metadata for TitleView, MEMORY[0x1E697E5E0]);
    sub_1BA2C3F04(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5F238);
    }
  }
}

void sub_1BA2C3F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA2C3FD0(uint64_t a1)
{
  if (!qword_1EDC5EB00)
  {
    sub_1BA2C4064(255);
    sub_1B9F85270(&qword_1EDC5E998, sub_1BA2C4064, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB00);
    }
  }
}

void sub_1BA2C4098(uint64_t a1)
{
  if (!qword_1EDC69808)
  {
    type metadata accessor for AccessoryView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC69808);
    }
  }
}

void sub_1BA2C4188(uint64_t a1)
{
  if (!qword_1EDC5EA60)
  {
    sub_1BA2C421C(255);
    sub_1B9F85270(&qword_1EDC5E8F0, sub_1BA2C421C, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EA60);
    }
  }
}

void sub_1BA2C4250(uint64_t a1)
{
  if (!qword_1EDC5EB18)
  {
    sub_1BA2C42B8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5EB18);
    }
  }
}

void sub_1BA2C42B8(uint64_t a1)
{
  if (!qword_1EDC5EB20)
  {
    sub_1BA2C434C(255);
    sub_1B9F85270(&qword_1EDC5E9B8, sub_1BA2C434C, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB20);
    }
  }
}

void sub_1BA2C4380(uint64_t a1)
{
  if (!qword_1EDC5F910)
  {
    sub_1BA2C4120(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5F910);
    }
  }
}

void sub_1BA2C43F0(uint64_t a1)
{
  if (!qword_1EDC5EDB0)
  {
    sub_1BA2C446C(255, &qword_1EDC5F180, MEMORY[0x1E69815C0], MEMORY[0x1E6980320]);
    sub_1BA2C44BC();
    v1 = sub_1BA4A58C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EDB0);
    }
  }
}

void sub_1BA2C446C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1BA4A5418();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BA2C44BC()
{
  result = qword_1EDC5F188;
  if (!qword_1EDC5F188)
  {
    sub_1BA2C446C(255, &qword_1EDC5F180, MEMORY[0x1E69815C0], MEMORY[0x1E6980320]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F188);
  }

  return result;
}

void sub_1BA2C45A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA2C45FC(uint64_t a1)
{
  if (!qword_1EDC5EA98)
  {
    sub_1BA2C3CC0(255);
    sub_1B9F85270(&qword_1EDC5E930, sub_1BA2C3CC0, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EA98);
    }
  }
}

uint64_t sub_1BA2C4690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v100) = a5;
  v113 = a3;
  v104 = a6;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v94 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A6418();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v95 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryView(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C4120(0);
  v106 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v98 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v99 = &v94 - v24;
  sub_1BA2C3F4C(0, &qword_1EDC5ED98, sub_1BA2C3FD0, sub_1BA2C4120, MEMORY[0x1E697F948]);
  v101 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v103 = &v94 - v27;
  sub_1BA2C3FD0(0);
  v102 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C3F04(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v109 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v108 = &v94 - v37;
  v38 = a1;
  v39 = a1[2];
  swift_beginAccess();
  v40 = v39[3];
  *&v107 = v39[2];
  swift_beginAccess();
  v41 = v39[5];
  v111 = v39[4];
  v112 = a2;

  *(&v107 + 1) = v40;

  v105 = v41;

  v42 = a4;

  v110 = sub_1BA4A5BA8();
  sub_1BA4A5188();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v121) = 0;
  if (v100)
  {
    *v31 = sub_1BA4A5798();
    *(v31 + 1) = 0x402A000000000000;
    v31[16] = 0;
    sub_1BA2C7934(0, &qword_1EDC5F318, sub_1BA2C4064, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    v52 = v112;
    sub_1BA2C4FB4(v38, v112, v113, a4, &v31[*(v51 + 44)]);
    sub_1B9F209BC(v31, v103, sub_1BA2C3FD0);
    swift_storeEnumTagMultiPayload();
    sub_1B9F85270(&qword_1EDC5EB08, sub_1BA2C3FD0, MEMORY[0x1E69817F8]);
    sub_1BA2C7AE8();
    v53 = v108;
    sub_1BA4A58E8();
    v54 = sub_1BA2C3FD0;
    v55 = v31;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v100 = a4;
    sub_1BA4A4F28();

    v56 = v121;
    v57 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    swift_beginAccess();
    v58 = v94;
    sub_1B9F209BC(v39 + v57, v94, sub_1B9F20584);
    v59 = sub_1BA4A2B98();
    v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
    sub_1B9F20A8C(v58, sub_1B9F20584);
    v62 = v95;
    v61 = v96;
    v63 = MEMORY[0x1E6981DF0];
    if (v60 != 1)
    {
      v63 = MEMORY[0x1E6981DB8];
    }

    v64 = v97;
    (*(v96 + 104))(v95, *v63, v97);
    v65 = v100;
    v66 = (v56 & 2) == 0;
    v68 = *v38;
    v67 = v38[1];
    *v18 = v66;
    (*(v61 + 32))(&v18[v15[5]], v62, v64);
    v52 = v112;
    v69 = v113;
    *&v18[v15[6]] = v112;
    v70 = &v18[v15[7]];
    *v70 = v69;
    v70[1] = v65;
    v71 = &v18[v15[8]];
    *v71 = v68;
    v71[1] = v67;
    v42 = v65;

    LOBYTE(v67) = sub_1BA4A5BC8();
    sub_1BA4A5188();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v98;
    sub_1BA2C79A0(v18, v98, type metadata accessor for AccessoryView);
    v81 = v80 + *(v106 + 36);
    *v81 = v67;
    *(v81 + 8) = v73;
    *(v81 + 16) = v75;
    *(v81 + 24) = v77;
    *(v81 + 32) = v79;
    *(v81 + 40) = 0;
    v82 = v80;
    v83 = v99;
    sub_1BA2C79A0(v82, v99, sub_1BA2C4120);
    sub_1B9F209BC(v83, v103, sub_1BA2C4120);
    swift_storeEnumTagMultiPayload();
    sub_1B9F85270(&qword_1EDC5EB08, sub_1BA2C3FD0, MEMORY[0x1E69817F8]);
    sub_1BA2C7AE8();
    v53 = v108;
    sub_1BA4A58E8();
    v54 = sub_1BA2C4120;
    v55 = v83;
  }

  sub_1B9F20A8C(v55, v54);
  v84 = v109;
  sub_1B9F209BC(v53, v109, sub_1BA2C3F04);
  v85 = v107;
  v114 = v107;
  v86 = v105;
  *&v115 = v111;
  *(&v115 + 1) = v105;
  v87 = v113;
  *&v116 = v52;
  *(&v116 + 1) = v113;
  *&v117 = v42;
  BYTE8(v117) = v110;
  HIDWORD(v117) = *(v134 + 3);
  *(&v117 + 9) = v134[0];
  *&v118 = v44;
  *(&v118 + 1) = v46;
  *&v119 = v48;
  *(&v119 + 1) = v50;
  v120 = 0;
  v88 = v119;
  v89 = v104;
  *(v104 + 64) = v118;
  *(v89 + 80) = v88;
  *(v89 + 96) = 0;
  v90 = v115;
  *v89 = v114;
  *(v89 + 16) = v90;
  v91 = v117;
  *(v89 + 32) = v116;
  *(v89 + 48) = v91;
  *(v89 + 104) = 0;
  *(v89 + 112) = 1;
  sub_1BA2C3E74(0);
  sub_1B9F209BC(v84, v89 + *(v92 + 64), sub_1BA2C3F04);
  sub_1BA2C780C(&v114, &v121, &qword_1EDC5F240, &type metadata for TitleView, MEMORY[0x1E697E5E0], sub_1BA2C446C);
  sub_1B9F20A8C(v53, sub_1BA2C3F04);
  sub_1B9F20A8C(v84, sub_1BA2C3F04);
  v121 = v85;
  v122 = v111;
  v123 = v86;
  v124 = v112;
  v125 = v87;
  v126 = v42;
  v127 = v110;
  *v128 = v134[0];
  *&v128[3] = *(v134 + 3);
  v129 = v44;
  v130 = v46;
  v131 = v48;
  v132 = v50;
  v133 = 0;
  return sub_1BA2C7B98(&v121);
}

double sub_1BA2C4FB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v49 = a4;
  v50 = a1;
  v57 = a5;
  v58 = a3;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_1BA4A6418();
  v11 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v12);
  v53 = &v47[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for AccessoryView(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v56 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v47[-v20];
  MEMORY[0x1EEE9AC00](v22, v23);
  v54 = &v47[-v24];
  v25 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v51 = v60;
  v52 = v59;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v48 = v59;
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = a2;

  v27 = v49;

  sub_1BA4A4F28();

  v28 = v59;
  v29 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  sub_1B9F209BC(v25 + v29, v10, sub_1B9F20584);
  v30 = sub_1BA4A2B98();
  LODWORD(v29) = (*(*(v30 - 8) + 48))(v10, 1, v30);
  sub_1B9F20A8C(v10, sub_1B9F20584);
  v31 = MEMORY[0x1E6981DF0];
  if (v29 != 1)
  {
    v31 = MEMORY[0x1E6981DB8];
  }

  v32 = v53;
  v33 = v55;
  (*(v11 + 104))(v53, *v31, v55);
  v34 = *v50;
  v35 = v50[1];
  *v21 = (v28 & 2) == 0;
  (*(v11 + 32))(&v21[v15[7]], v32, v33);
  v36 = v26;
  *&v21[v15[8]] = v26;
  v37 = &v21[v15[9]];
  v38 = v58;
  *v37 = v58;
  v37[1] = v27;
  v39 = &v21[v15[10]];
  *v39 = v34;
  v39[1] = v35;
  v40 = v54;
  sub_1BA2C79A0(v21, v54, type metadata accessor for AccessoryView);
  v41 = v56;
  sub_1B9F209BC(v40, v56, type metadata accessor for AccessoryView);
  v42 = v57;
  v43 = v51;
  *v57 = v52;
  v42[1] = v43;
  *(v42 + 16) = (v48 & 1) == 0;
  v42[3] = v36;
  v42[4] = v38;
  v42[5] = v27;
  v44 = v42;
  sub_1BA2C4098(0);
  sub_1B9F209BC(v41, v44 + *(v45 + 48), type metadata accessor for AccessoryView);

  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_1B9F20A8C(v40, type metadata accessor for AccessoryView);
  sub_1B9F20A8C(v41, type metadata accessor for AccessoryView);

  return result;
}

uint64_t sub_1BA2C5484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  sub_1BA2C42B8(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - v16;
  *v17 = sub_1BA4A5778();
  *(v17 + 1) = 0x402A000000000000;
  v17[16] = 0;
  sub_1BA2C7934(0, &qword_1EBBF00F0, sub_1BA2C434C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1BA2C56FC(a1, a2, a3, a4, &v17[*(v18 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v19 = v28;
  v20 = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v21 = v28;
  sub_1B9F209BC(v17, v13, sub_1BA2C42B8);
  sub_1B9F209BC(v13, a5, sub_1BA2C42B8);
  sub_1BA2C4250(0);
  v23 = a5 + *(v22 + 48);
  *v23 = v19;
  *(v23 + 8) = v20;
  *(v23 + 16) = (v21 & 1) == 0;
  v24 = v27;
  *(v23 + 24) = a2;
  *(v23 + 32) = v24;
  *(v23 + 40) = a4;

  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_1B9F20A8C(v17, sub_1BA2C42B8);

  return sub_1B9F20A8C(v13, sub_1BA2C42B8);
}

void sub_1BA2C56FC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a4;
  v72 = a3;
  v73 = a2;
  v60 = a1;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1BA4A6418();
  v11 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v12);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryView(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C4120(0);
  v70 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v71 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v65 = &v60 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v68 = &v60 - v27;
  v28 = a1[2];
  swift_beginAccess();
  v29 = v28[3];
  v69 = v28[2];
  v63 = v29;
  swift_beginAccess();
  v30 = v28[5];
  v67 = v28[4];
  v62 = v30;
  swift_getKeyPath();
  swift_getKeyPath();

  v31 = v61;

  sub_1BA4A4F28();

  v32 = v74;
  v33 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  sub_1B9F209BC(v28 + v33, v10, sub_1B9F20584);
  v34 = sub_1BA4A2B98();
  LODWORD(v28) = (*(*(v34 - 8) + 48))(v10, 1, v34);
  sub_1B9F20A8C(v10, sub_1B9F20584);
  v35 = MEMORY[0x1E6981DF0];
  if (v28 != 1)
  {
    v35 = MEMORY[0x1E6981DB8];
  }

  v36 = v64;
  v37 = v66;
  (*(v11 + 104))(v64, *v35, v66);
  v39 = *v60;
  v38 = v60[1];
  *v18 = (v32 & 2) == 0;
  (*(v11 + 32))(&v18[v15[7]], v36, v37);
  v41 = v72;
  v40 = v73;
  *&v18[v15[8]] = v73;
  v42 = &v18[v15[9]];
  *v42 = v41;
  v42[1] = v31;
  v43 = &v18[v15[10]];
  *v43 = v39;
  v43[1] = v38;
  v44 = v31;

  LOBYTE(v38) = sub_1BA4A5B68();
  sub_1BA4A5188();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v65;
  sub_1BA2C79A0(v18, v65, type metadata accessor for AccessoryView);
  v54 = v53 + *(v70 + 44);
  *v54 = v38;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  v55 = v68;
  sub_1BA2C79A0(v53, v68, sub_1BA2C4120);
  v56 = v71;
  sub_1B9F209BC(v55, v71, sub_1BA2C4120);
  v57 = v63;
  *a5 = v69;
  *(a5 + 8) = v57;
  v58 = v62;
  *(a5 + 16) = v67;
  *(a5 + 24) = v58;
  *(a5 + 32) = v40;
  *(a5 + 40) = v41;
  *(a5 + 48) = v44;
  *(a5 + 56) = 0;
  *(a5 + 64) = 1;
  sub_1BA2C4380(0);
  sub_1B9F209BC(v56, a5 + *(v59 + 64), sub_1BA2C4120);

  sub_1B9F20A8C(v55, sub_1BA2C4120);
  sub_1B9F20A8C(v56, sub_1BA2C4120);
}

uint64_t DismissibleCellHeaderView.dismissInDetailViewHidden(presentation:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 4)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1BA4A4F38();
  }

  return sub_1B9F209BC(v2, a2, type metadata accessor for DismissibleCellHeaderView);
}

void sub_1BA2C5D50(uint64_t a9@<X8>)
{
  *a9 = sub_1BA4A5868();
  *(a9 + 8) = 0x402C000000000000;
  *(a9 + 16) = 0;
  sub_1BA2C7934(0, &qword_1EDC5F2E8, sub_1BA2C3CC0, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1BA2C2E24(v9, a9 + *(v11 + 44));
  v12 = sub_1BA4A5B88();
  sub_1BA4A5188();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1BA2C4580(0);
  v22 = a9 + *(v21 + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  v23 = sub_1BA4A5B68();
  sub_1BA4A5188();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1BA2C45A0(0, &qword_1EDC5EFA8, sub_1BA2C4580);
  v33 = a9 + *(v32 + 36);
  *v33 = v23;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
}

void sub_1BA2C5E70(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[2];
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v6 = *(a2 + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();

  *(a3 + 8) = 0;
  *(a3 + 16) = v5;
  *a3 = nullsub_1;
}

uint64_t sub_1BA2C5F58(uint64_t a1)
{
  result = sub_1B9F85270(qword_1EDC65B68, type metadata accessor for DismissibleCellHeaderView, &protocol conformance descriptor for DismissibleCellHeaderView);
  *(a1 + 8) = result;
  return result;
}

void sub_1BA2C5FD8(uint64_t a1)
{
  sub_1B9F37BB8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DismissibleCellHeaderView.ViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1B9F205B8(319, &qword_1EDC6B6C0, sub_1B9F2ACE8, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1B9F64048(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1B9F205B8(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BA2C6130(uint64_t a1)
{
  sub_1B9F20584(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1BA2C62C4()
{
  result = qword_1EDC5EFB0;
  if (!qword_1EDC5EFB0)
  {
    sub_1BA2C45A0(255, &qword_1EDC5EFA8, sub_1BA2C4580);
    sub_1BA2C6360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EFB0);
  }

  return result;
}

unint64_t sub_1BA2C6360()
{
  result = qword_1EDC5F100;
  if (!qword_1EDC5F100)
  {
    sub_1BA2C4580(255);
    sub_1B9F85270(&qword_1EDC5EAA0, sub_1BA2C45FC, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F100);
  }

  return result;
}

void sub_1BA2C6438(uint64_t a1)
{
  sub_1BA4A6418();
  if (v1 <= 0x3F)
  {
    sub_1B9F64048(319, &qword_1EDC5EB98, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9F37BB8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA2C6510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA2C6558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA2C65B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA2C65FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA2C666C()
{
  result = qword_1EBBF00D8;
  if (!qword_1EBBF00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF00D8);
  }

  return result;
}

void sub_1BA2C66DC(uint64_t a1@<X8>)
{
  v30[1] = a1;
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A5D68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F84E50(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v1;
  v36 = v1[1];
  v37 = v16;
  v33 = *(&v16 + 1);
  v34 = v16;
  v31 = *(&v36 + 1);
  v32 = v36;
  (*(v7 + 104))(v10, *MEMORY[0x1E6980F30], v6);
  v17 = sub_1BA4A5C28();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_1B9F87E20(&v37, v35);
  sub_1BA2C780C(&v36, v35, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F64048);
  sub_1BA4A5CB8();
  v18 = sub_1BA4A5CD8();
  sub_1B9F20A8C(v5, sub_1B9F87DEC);
  (*(v7 + 8))(v10, v6);
  KeyPath = swift_getKeyPath();
  v20 = *(v1 + 4);
  if (!v20)
  {
    v21 = [objc_opt_self() secondaryLabelColor];
    v20 = sub_1BA4A6048();
  }

  v22 = swift_getKeyPath();
  v23 = (v15 + *(v12 + 36));
  sub_1B9F57FD4(0);

  sub_1BA4A54C8();
  *v23 = swift_getKeyPath();
  v24 = v33;
  *v15 = v34;
  v15[1] = v24;
  v25 = v31;
  v15[2] = v32;
  v15[3] = v25;
  v15[4] = KeyPath;
  v15[5] = v18;
  v15[6] = v22;
  v15[7] = v20;
  sub_1B9F64048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B9FD0;
  v27 = *(v1 + 6);
  *(v26 + 32) = *(v1 + 5);
  *(v26 + 40) = v27;
  *(v26 + 48) = 0x726564616548;
  *(v26 + 56) = 0xE600000000000000;
  *(v26 + 64) = 0x656C746954;
  *(v26 + 72) = 0xE500000000000000;

  v28 = sub_1BA4A6AE8();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA2C7880(&qword_1EDC5EFA0, sub_1B9F84E50, sub_1B9F85130);
    sub_1BA4A5F18();

    sub_1B9F20A8C(v15, sub_1B9F84E50);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA2C6B8C(uint64_t a1@<X8>)
{
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A5D68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F8706C(0);
  v13 = v12;
  v16 = MEMORY[0x1EEE9AC00](v12, v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1[1];
  if (v19 && (v1[2] & 1) != 0)
  {
    v20 = *v1;
    v32 = v15;
    v33 = v20;
    (*(v8 + 104))(v11, *MEMORY[0x1E6980F30], v7, v16);
    v21 = sub_1BA4A5C28();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);

    v22 = sub_1BA4A5CD8();
    sub_1B9F20A8C(v6, sub_1B9F87DEC);
    (*(v8 + 8))(v11, v7);
    KeyPath = swift_getKeyPath();
    v24 = v1[3];
    if (!v24)
    {
      v25 = [objc_opt_self() secondaryLabelColor];
      v24 = sub_1BA4A6048();
    }

    v26 = swift_getKeyPath();
    v35 = v33;
    v36 = v19;
    v37 = KeyPath;
    v38 = v22;
    v39 = v26;
    v40 = v24;
    sub_1B9F64048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    v41 = *(v1 + 2);
    v28 = v41;
    *(v27 + 16) = xmmword_1BA4B9FD0;
    *(v27 + 32) = v28;
    *(v27 + 48) = 0x726564616548;
    *(v27 + 56) = 0xE600000000000000;
    *(v27 + 64) = 1702125892;
    *(v27 + 72) = 0xE400000000000000;
    sub_1B9F87E20(&v41, v34);

    v29 = sub_1BA4A6AE8();

    v30 = HKUIJoinStringsForAutomationIdentifier();

    if (v30)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1B9F84ED0(0, &qword_1EDC5F0A8, &qword_1EDC5F278, &type metadata for CellHeaderDetailTextView);
      sub_1B9F870EC();
      sub_1BA4A5F18();

      sub_1BA2C79A0(v18, a1, sub_1B9F8706C);
      (*(v32 + 56))(a1, 0, 1, v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v31 = *(v15 + 56);

    v31(a1, 1, 1, v13, v16);
  }
}

void sub_1BA2C7078(uint64_t a1@<X8>)
{
  sub_1BA2C7510(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA2C3F4C(0, &qword_1EDC5EF68, sub_1BA2C7510, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v12 = MEMORY[0x1EEE9AC00](v8, v9);
  v14 = v33 - v13;
  if (*v1 == 1)
  {
    v34 = v11;
    v35 = v10;
    v15 = type metadata accessor for AccessoryView(0);
    v16 = &v1[v15[8]];
    v17 = *v16;
    v18 = v16[1];
    v36 = a1;
    v37 = v17;
    v19 = *&v1[v15[6]];
    if (v19)
    {

      v20 = v19;
    }

    else
    {
      v22 = objc_opt_self();

      v23 = [v22 tertiaryLabelColor];
      v20 = sub_1BA4A6048();
    }

    KeyPath = swift_getKeyPath();
    v25 = *(v4 + 36);
    v33[1] = v4;
    v26 = (v7 + v25);
    sub_1B9F57FD4(0);

    sub_1BA4A54C8();
    *v26 = swift_getKeyPath();
    *v7 = v37;
    v7[1] = v18;
    v7[2] = KeyPath;
    v7[3] = v20;
    sub_1B9F64048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BA4B9FD0;
    v28 = &v1[v15[7]];
    v29 = v28[1];
    *(v27 + 32) = *v28;
    *(v27 + 40) = v29;
    *(v27 + 48) = 0x726564616548;
    *(v27 + 56) = 0xE600000000000000;
    *(v27 + 64) = 0x6E6F7474754258;
    *(v27 + 72) = 0xE700000000000000;

    v30 = sub_1BA4A6AE8();

    v31 = HKUIJoinStringsForAutomationIdentifier();

    if (v31)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA2C7880(&qword_1EDC5F0A0, sub_1BA2C7510, sub_1BA2C75E4);
      sub_1BA4A5F18();

      sub_1B9F20A8C(v7, sub_1BA2C7510);
      v32 = v36;
      sub_1BA2C76D8(v14, v36);
      (*(v34 + 56))(v32, 0, 1, v35);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = *(v11 + 56);

    v21(a1, 1, 1, v12);
  }
}

unint64_t sub_1BA2C7464()
{
  result = qword_1EDC6C6A0;
  if (!qword_1EDC6C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C6A0);
  }

  return result;
}

unint64_t sub_1BA2C74BC()
{
  result = qword_1EDC6C6A8;
  if (!qword_1EDC6C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C6A8);
  }

  return result;
}

void sub_1BA2C7558(uint64_t a1)
{
  if (!qword_1EDC5F268)
  {
    sub_1B9F868B4(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F268);
    }
  }
}

unint64_t sub_1BA2C75E4()
{
  result = qword_1EDC5F270;
  if (!qword_1EDC5F270)
  {
    sub_1BA2C7558(255);
    sub_1BA2C7684();
    sub_1B9F87878(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F270);
  }

  return result;
}

unint64_t sub_1BA2C7684()
{
  result = qword_1EDC646F0;
  if (!qword_1EDC646F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC646F0);
  }

  return result;
}

uint64_t sub_1BA2C76D8(uint64_t a1, uint64_t a2)
{
  sub_1BA2C3F4C(0, &qword_1EDC5EF68, sub_1BA2C7510, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA2C7780(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1B9F868B4(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA2C780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA2C7880(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1B9F85270(&qword_1EDC5EC70, sub_1B9F57FD4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2C7934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1BA4A52C8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA2C79A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA2C7A08()
{
  result = qword_1EDC5F0F0;
  if (!qword_1EDC5F0F0)
  {
    sub_1BA2C4140(255);
    sub_1B9F85270(&qword_1EDC5EA68, sub_1BA2C4188, MEMORY[0x1E6981870]);
    sub_1B9F85270(&qword_1EDC5EDB8, sub_1BA2C43F0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F0F0);
  }

  return result;
}

unint64_t sub_1BA2C7AE8()
{
  result = qword_1EDC5F2A0;
  if (!qword_1EDC5F2A0)
  {
    sub_1BA2C4120(255);
    sub_1B9F85270(&qword_1EDC694D8, type metadata accessor for AccessoryView, &unk_1BA4CDFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F2A0);
  }

  return result;
}

uint64_t sub_1BA2C7B98(uint64_t a1)
{
  sub_1BA2C446C(0, &qword_1EDC5F240, &type metadata for TitleView, MEMORY[0x1E697E5E0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA2C7C0C(uint64_t a1)
{
  if (!qword_1EDC5EF60)
  {
    sub_1BA2C3F4C(255, &qword_1EDC5EF68, sub_1BA2C7510, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EF60);
    }
  }
}

unint64_t sub_1BA2C7CA8()
{
  result = qword_1EDC5EF70;
  if (!qword_1EDC5EF70)
  {
    sub_1BA2C3F4C(255, &qword_1EDC5EF68, sub_1BA2C7510, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA2C7880(&qword_1EDC5F0A0, sub_1BA2C7510, sub_1BA2C75E4);
    sub_1B9F85270(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EF70);
  }

  return result;
}

uint64_t sub_1BA2C7DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2C7E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v48 = a7;
  v51 = a4;
  v52 = a2;
  v13 = sub_1BA4A3EA8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1BA4A64F8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v44[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v21 = sub_1BA4A7308();
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v22 = sub_1BA4A6528();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v25 = 136315650;
    *(v25 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, &v53);
    *(v25 + 12) = 2080;
    aBlock = v52;
    v55 = a3;
    sub_1BA2CDEB0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v47 = a8;

    v26 = sub_1BA4A6808();
    v45 = v24;
    v28 = sub_1B9F0B82C(v26, v27, &v53);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2080;
    aBlock = v51;
    v55 = a5;

    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, &v53);

    *(v25 + 24) = v31;
    a8 = v47;
    _os_log_impl(&dword_1B9F07000, v23, v45, "[%s] Received an error: %s, %s", v25, 0x20u);
    v32 = v46;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);

    (*(v49 + 8))(v16, v50);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v33 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  (*(v49 + 8))(v16, v50);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v33 = sub_1BA4A6758();
  if (a5)
  {
LABEL_5:
    v34 = sub_1BA4A6758();
    goto LABEL_9;
  }

LABEL_8:
  v34 = 0;
LABEL_9:
  v16 = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v36 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1BFAF2860](v36, a6);
      }

      else
      {
        if (v36 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v37 = *(a6 + 8 * v36 + 32);
      }

      v38 = v37;
      a8 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v16 addAction_];

      ++v36;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v39 = swift_allocObject();
  v40 = v48;
  *(v39 + 16) = v48;
  *(v39 + 24) = a8;
  sub_1B9F0F1B4(v40, a8);
  v41 = sub_1BA4A6758();

  v58 = sub_1BA2CDEA8;
  v59 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BA0B06D4;
  v57 = &block_descriptor_79;
  v42 = _Block_copy(&aBlock);

  v43 = [objc_opt_self() actionWithTitle:v41 style:0 handler:v42];
  _Block_release(v42);

  [v16 addAction_];
LABEL_26:
  [a1 presentViewController:v16 animated:1 completion:0];
}

void sub_1BA2C84D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v48 = a7;
  v51 = a4;
  v52 = a2;
  v13 = sub_1BA4A3EA8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1BA4A64F8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v44[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v21 = sub_1BA4A7308();
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v22 = sub_1BA4A6528();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v25 = 136315650;
    *(v25 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4FB650, &v53);
    *(v25 + 12) = 2080;
    aBlock = v52;
    v55 = a3;
    sub_1BA2CDEB0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v47 = a8;

    v26 = sub_1BA4A6808();
    v45 = v24;
    v28 = sub_1B9F0B82C(v26, v27, &v53);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2080;
    aBlock = v51;
    v55 = a5;

    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, &v53);

    *(v25 + 24) = v31;
    a8 = v47;
    _os_log_impl(&dword_1B9F07000, v23, v45, "[%s] Received an error: %s, %s", v25, 0x20u);
    v32 = v46;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);

    (*(v49 + 8))(v16, v50);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v33 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  (*(v49 + 8))(v16, v50);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v33 = sub_1BA4A6758();
  if (a5)
  {
LABEL_5:
    v34 = sub_1BA4A6758();
    goto LABEL_9;
  }

LABEL_8:
  v34 = 0;
LABEL_9:
  v16 = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v36 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1BFAF2860](v36, a6);
      }

      else
      {
        if (v36 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v37 = *(a6 + 8 * v36 + 32);
      }

      v38 = v37;
      a8 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v16 addAction_];

      ++v36;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v39 = swift_allocObject();
  v40 = v48;
  *(v39 + 16) = v48;
  *(v39 + 24) = a8;
  sub_1B9F0F1B4(v40, a8);
  v41 = sub_1BA4A6758();

  v58 = sub_1BA2CEA54;
  v59 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BA0B06D4;
  v57 = &block_descriptor_43_1;
  v42 = _Block_copy(&aBlock);

  v43 = [objc_opt_self() actionWithTitle:v41 style:0 handler:v42];
  _Block_release(v42);

  [v16 addAction_];
LABEL_26:
  [a1 presentViewController:v16 animated:1 completion:0];
}

void sub_1BA2C8B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v48 = a7;
  v51 = a4;
  v52 = a2;
  v13 = sub_1BA4A3EA8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1BA4A64F8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v44[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v21 = sub_1BA4A7308();
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v22 = sub_1BA4A6528();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v25 = 136315650;
    *(v25 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, &v53);
    *(v25 + 12) = 2080;
    aBlock = v52;
    v55 = a3;
    sub_1BA2CDEB0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v47 = a8;

    v26 = sub_1BA4A6808();
    v45 = v24;
    v28 = sub_1B9F0B82C(v26, v27, &v53);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2080;
    aBlock = v51;
    v55 = a5;

    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, &v53);

    *(v25 + 24) = v31;
    a8 = v47;
    _os_log_impl(&dword_1B9F07000, v23, v45, "[%s] Received an error: %s, %s", v25, 0x20u);
    v32 = v46;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);

    (*(v49 + 8))(v16, v50);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v33 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  (*(v49 + 8))(v16, v50);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v33 = sub_1BA4A6758();
  if (a5)
  {
LABEL_5:
    v34 = sub_1BA4A6758();
    goto LABEL_9;
  }

LABEL_8:
  v34 = 0;
LABEL_9:
  v16 = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v36 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1BFAF2860](v36, a6);
      }

      else
      {
        if (v36 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v37 = *(a6 + 8 * v36 + 32);
      }

      v38 = v37;
      a8 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v16 addAction_];

      ++v36;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v39 = swift_allocObject();
  v40 = v48;
  *(v39 + 16) = v48;
  *(v39 + 24) = a8;
  sub_1B9F0F1B4(v40, a8);
  v41 = sub_1BA4A6758();

  v58 = sub_1BA2CEA54;
  v59 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BA0B06D4;
  v57 = &block_descriptor_68;
  v42 = _Block_copy(&aBlock);

  v43 = [objc_opt_self() actionWithTitle:v41 style:0 handler:v42];
  _Block_release(v42);

  [v16 addAction_];
LABEL_26:
  [a1 presentViewController:v16 animated:1 completion:0];
}

void sub_1BA2C91F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v48 = a7;
  v51 = a4;
  v52 = a2;
  v13 = sub_1BA4A3EA8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1BA4A64F8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v44[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v21 = sub_1BA4A7308();
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v22 = sub_1BA4A6528();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v25 = 136315650;
    *(v25 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v53);
    *(v25 + 12) = 2080;
    aBlock = v52;
    v55 = a3;
    sub_1BA2CDEB0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v47 = a8;

    v26 = sub_1BA4A6808();
    v45 = v24;
    v28 = sub_1B9F0B82C(v26, v27, &v53);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2080;
    aBlock = v51;
    v55 = a5;

    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, &v53);

    *(v25 + 24) = v31;
    a8 = v47;
    _os_log_impl(&dword_1B9F07000, v23, v45, "[%s] Received an error: %s, %s", v25, 0x20u);
    v32 = v46;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);

    (*(v49 + 8))(v16, v50);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v33 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  (*(v49 + 8))(v16, v50);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v33 = sub_1BA4A6758();
  if (a5)
  {
LABEL_5:
    v34 = sub_1BA4A6758();
    goto LABEL_9;
  }

LABEL_8:
  v34 = 0;
LABEL_9:
  v16 = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v36 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1BFAF2860](v36, a6);
      }

      else
      {
        if (v36 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v37 = *(a6 + 8 * v36 + 32);
      }

      v38 = v37;
      a8 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v16 addAction_];

      ++v36;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v39 = swift_allocObject();
  v40 = v48;
  *(v39 + 16) = v48;
  *(v39 + 24) = a8;
  sub_1B9F0F1B4(v40, a8);
  v41 = sub_1BA4A6758();

  v58 = sub_1BA2CEA54;
  v59 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BA0B06D4;
  v57 = &block_descriptor_56_1;
  v42 = _Block_copy(&aBlock);

  v43 = [objc_opt_self() actionWithTitle:v41 style:0 handler:v42];
  _Block_release(v42);

  [v16 addAction_];
LABEL_26:
  [a1 presentViewController:v16 animated:1 completion:0];
}

id sub_1BA2C988C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 startAnimating];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA2C9980(double a1, double a2, double a3, double a4)
{
  sub_1B9F663F0(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v25 - v15;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_syncObserver] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner] = 0;
  v17 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item];
  v18 = type metadata accessor for AddNewSharingRelationshipCell();
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v25.receiver = v4;
  v25.super_class = v18;
  v19 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA4A4158();
  v20 = sub_1BA4A4168();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v16, 0, 1, v20);
  v22 = MEMORY[0x1BFAF1F10](v16);
  MEMORY[0x1BFAF1F00](v22);
  if ((*(v21 + 48))(v12, 1, v20))
  {
    sub_1B9F66128(v12, v16);
    MEMORY[0x1BFAF1F10](v16);

    sub_1BA2CDFCC(v12, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  }

  else
  {
    v23 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v12);
  }

  return v19;
}

uint64_t sub_1BA2C9C90()
{
  v1 = v0;
  sub_1B9F663F0(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v35 - v8;
  v10 = sub_1BA4A4428();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1BA2CDF00(&v1[v15], v36, sub_1B9F7B6F8);
  if (!v37)
  {
    return sub_1B9F44348(v36, sub_1B9F7B6F8);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  type metadata accessor for AddNewSharingRelationshipItem();
  result = swift_dynamicCast();
  if (result)
  {
    v35[0] = v11;
    v17 = v35[1];
    sub_1B9F0ADF8(0, &unk_1EDC5E3E0, 0x1E696BFE8);
    v18 = *(v17 + 104);
    v19 = sub_1BA4A7438();

    v36[0] = v19;
    sub_1B9F1146C(0);
    sub_1BA2CCBB4(&qword_1EDC5F478, 255, sub_1B9F1146C, MEMORY[0x1E695BED8]);
    v20 = sub_1BA4A4F98();

    v21 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_syncObserver;
    swift_beginAccess();
    *&v1[v21] = v20;

    [v1 setUserInteractionEnabled_];
    sub_1BA4A43A8();

    sub_1BA4A43B8();
    LODWORD(v20) = *(v17 + 112);
    v22 = objc_opt_self();
    v23 = [v22 linkColor];
    if (v20 != 2)
    {
      [v22 secondaryLabelColor];
    }

    v24 = sub_1BA4A4238();
    sub_1BA4A41F8();
    v24(v36, 0);
    v37 = v10;
    v38 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    v26 = v35[0];
    (*(v35[0] + 16))(boxed_opaque_existential_1, v14, v10);
    MEMORY[0x1BFAF1EF0](v36);
    v27 = [v1 contentView];
    v28 = v27;
    if (*(v17 + 112))
    {
      v29 = 0.75;
    }

    else
    {
      v29 = 1.0;
    }

    [v27 setAlpha_];

    MEMORY[0x1BFAF1F00]();
    v30 = sub_1BA4A4168();
    if ((*(*(v30 - 8) + 48))(v9, 1, v30))
    {
      sub_1B9F66128(v9, v5);
      MEMORY[0x1BFAF1F10](v5);
      sub_1BA2CDFCC(v9, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    }

    else
    {
      v31 = [v22 secondarySystemGroupedBackgroundColor];
      v32 = v31;
      if (*(v17 + 112))
      {
        v33 = 0.75;
      }

      else
      {
        v33 = 1.0;
      }

      v34 = [v31 colorWithAlphaComponent_];

      sub_1BA4A4118();
      MEMORY[0x1BFAF1F10](v9);
    }

    sub_1BA2CA1B0();

    return (*(v26 + 8))(v14, v10);
  }

  return result;
}

void sub_1BA2CA1B0()
{
  v1 = v0;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696F6774754F2ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x496E6F737265502ELL, 0xED0000657469766ELL);

  v2 = sub_1BA4A6758();
  [v1 setAccessibilityIdentifier_];

  v3 = sub_1BA2C988C();

  MEMORY[0x1BFAF1350](0x72656E6E6970532ELL, 0xE800000000000000);

  v4 = sub_1BA4A6758();

  [v3 setAccessibilityIdentifier_];
}

id sub_1BA2CA34C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AddNewSharingRelationshipCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA2CA408@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  swift_beginAccess();
  return sub_1BA2CDF00(v1 + v3, a1, sub_1B9F7B6F8);
}

uint64_t sub_1BA2CA474(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA2C9C90();
  return sub_1B9F44348(a1, sub_1B9F7B6F8);
}

uint64_t (*sub_1BA2CA4F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2CA558;
}

uint64_t sub_1BA2CA558(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA2C9C90();
  }

  return result;
}

uint64_t sub_1BA2CA5B4()
{
  v1 = v0;
  sub_1B9F663F0(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = aBlock - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = aBlock - v12;
  v14 = sub_1BA4A40A8();
  v15 = type metadata accessor for AddNewSharingRelationshipCell();
  v30.receiver = v1;
  v30.super_class = v15;
  objc_msgSendSuper2(&v30, sel__bridgedUpdateConfigurationUsingState_, v14);

  if ([v1 isHighlighted])
  {
    MEMORY[0x1BFAF1F00]();
    v16 = sub_1BA4A4168();
    if ((*(*(v16 - 8) + 48))(v13, 1, v16))
    {
      sub_1B9F66128(v13, v9);
      MEMORY[0x1BFAF1F10](v9);
      v17 = MEMORY[0x1E69DC0D8];
      v18 = v13;
      return sub_1BA2CDFCC(v18, &qword_1EDC6B770, v17);
    }

    v21 = objc_opt_self();
    v22 = [v21 systemGray5Color];
    v23 = [v21 tertiarySystemGroupedBackgroundColor];
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = v23;
    v24[4] = 0;
    v24[5] = v22;
    v25 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    aBlock[4] = sub_1B9FD7F54;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_49_0;
    v26 = _Block_copy(aBlock);
    [v25 initWithDynamicProvider_];
    _Block_release(v26);

    sub_1BA4A4118();
    v27 = v13;
  }

  else
  {
    MEMORY[0x1BFAF1F00]();
    v19 = sub_1BA4A4168();
    if ((*(*(v19 - 8) + 48))(v5, 1, v19))
    {
      sub_1B9F66128(v5, v9);
      MEMORY[0x1BFAF1F10](v9);
      v17 = MEMORY[0x1E69DC0D8];
      v18 = v5;
      return sub_1BA2CDFCC(v18, &qword_1EDC6B770, v17);
    }

    v28 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    v27 = v5;
  }

  return MEMORY[0x1BFAF1F10](v27);
}

uint64_t sub_1BA2CAA20()
{
  sub_1B9F663F0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v20 = &v17 - v2;
  v18 = sub_1BA4A3FD8();
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A3F98();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F663F0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  sub_1BA2C988C();
  sub_1B9FD7EE0(0);
  v12 = &v6[*(v11 + 48)];
  v13 = *MEMORY[0x1E69DBF28];
  v14 = sub_1BA4A3F18();
  (*(*(v14 - 8) + 104))(v6, v13, v14);
  *v12 = sub_1B9FF87F0;
  v12[1] = 0;
  (*(v3 + 104))(v6, *MEMORY[0x1E69DBF60], v18);
  v15 = sub_1BA4A3F48();
  (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  sub_1BA4A3F88();
  sub_1BA4A3EE8();
  (*(v7 + 8))(v10, v19);
  return sub_1BA4A75F8();
}

double sub_1BA2CADA0()
{
  swift_beginAccess();

  return result;
}

double sub_1BA2CADEC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_syncObserver;
  swift_beginAccess();
  *(v3 + v4) = a1;

  return result;
}

uint64_t sub_1BA2CAEFC(__int128 *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v19 = 0xD00000000000001ELL;
  v20 = 0x80000001BA4FB6B0;
  sub_1BA4A1788();
  sub_1BA2CCBB4(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v14 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v14);

  (*(v9 + 8))(v12, v8);
  v15 = v20;
  *(v4 + 16) = v19;
  *(v4 + 24) = v15;
  v19 = type metadata accessor for AddNewSharingRelationshipCell();
  sub_1BA2CE9F0();
  *(v4 + 32) = sub_1BA4A6808();
  *(v4 + 40) = v16;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v4 + 48) = sub_1BA4A1318();
  *(v4 + 56) = v17;
  *(v4 + 112) = 2;
  *(v4 + 128) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F25598(a1, v4 + 64);
  *(v4 + 104) = a2;
  *(v4 + 112) = v13;
  return v4;
}

uint64_t sub_1BA2CB14C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  sub_1B9FAB600(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2CB1E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA2CB28C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BA4A3EA8();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SummarySharingOnboardingError(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v37 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v37 - v24;
  sub_1BA4A75F8();
  sub_1BA2CDF00(a1, v12, sub_1BA02F428);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v26 = sub_1BA02F428;
    v27 = v12;
  }

  else
  {
    v37 = a3;
    sub_1BA2CDF68(v12, v25);
    sub_1BA4A3DD8();
    sub_1BA2CDF00(v25, v21, type metadata accessor for SummarySharingOnboardingError);
    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, &v40);
      *(v30 + 12) = 2080;
      sub_1BA2CDF00(v21, v17, type metadata accessor for SummarySharingOnboardingError);
      v32 = sub_1BA4A6828();
      v34 = v33;
      sub_1B9F44348(v21, type metadata accessor for SummarySharingOnboardingError);
      v35 = sub_1B9F0B82C(v32, v34, &v40);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1B9F07000, v28, v29, "[%s] Received error when presenting onboarding flow: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    else
    {

      sub_1B9F44348(v21, type metadata accessor for SummarySharingOnboardingError);
    }

    (*(v38 + 8))(v8, v39);
    sub_1BA0C6BA4(v37, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);
    v26 = type metadata accessor for SummarySharingOnboardingError;
    v27 = v25;
  }

  return sub_1B9F44348(v27, v26);
}

uint64_t sub_1BA2CB6B8(void *a1)
{
  sub_1BA2CDE2C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v13 = a1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = v4;
    v19 = v18;
    v31 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, &v31);
    *(v17 + 12) = 2080;
    v30 = a1;
    v20 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v21 = sub_1BA4A6828();
    v23 = sub_1B9F0B82C(v21, v22, &v31);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Received error when fetching suggested categories: %s", v17, 0x16u);
    swift_arrayDestroy();
    v24 = v19;
    v4 = v28;
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    v25 = v17;
    v3 = v29;
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v31 = &unk_1F37FDB28;
  sub_1BA2CDEB0(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA4A4E78();
  sub_1BA2CCBB4(&qword_1EBBF0160, 255, sub_1BA2CDE2C, MEMORY[0x1E695C008]);
  v26 = sub_1BA4A4F98();
  (*(v4 + 8))(v7, v3);
  return v26;
}

uint64_t sub_1BA2CBA08(void *a1)
{
  sub_1BA2CDE2C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v13 = a1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = v4;
    v19 = v18;
    v31 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, &v31);
    *(v17 + 12) = 2080;
    v30 = a1;
    v20 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v21 = sub_1BA4A6828();
    v23 = sub_1B9F0B82C(v21, v22, &v31);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Received error when fetching suggested categories: %s", v17, 0x16u);
    swift_arrayDestroy();
    v24 = v19;
    v4 = v28;
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    v25 = v17;
    v3 = v29;
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v31 = &unk_1F37FDB50;
  sub_1BA2CDEB0(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA4A4E78();
  sub_1BA2CCBB4(&qword_1EBBF0160, 255, sub_1BA2CDE2C, MEMORY[0x1E695C008]);
  v26 = sub_1BA4A4F98();
  (*(v4 + 8))(v7, v3);
  return v26;
}

uint64_t sub_1BA2CBD58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA2CB6B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BA2CBD84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA2CBA08(*a1);
  *a2 = result;
  return result;
}

double sub_1BA2CBDB0(void *a1)
{
  v2 = v1;
  sub_1B9F663F0(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v117 = &v89 - v6;
  sub_1BA2CDEB0(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v108 = v7;
  v107 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v105 = &v89 - v9;
  sub_1BA02DF24(0);
  v110 = v10;
  v109 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v106 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E124(0);
  v113 = v13;
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v111 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8(0);
  v115 = *(v16 - 8);
  v116 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v114 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v118 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BA4A3EA8();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v24);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1BA2CDF00(&v2[v33], &v122, sub_1B9F7B6F8);
  if (v123)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    type metadata accessor for AddNewSharingRelationshipItem();
    if (swift_dynamicCast())
    {
      v100 = v21;
      v101 = v20;
      v102 = v121;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v36 = Strong;
        v98 = a1;
        v37 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
        swift_beginAccess();
        (*(v29 + 16))(v32, v36 + v37, v28);
        v38 = sub_1BA4A4578();
        (*(v29 + 8))(v32, v28);
        v39 = *(v38 + 16);
        v40 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
        swift_beginAccess();
        if (v39)
        {
          v41 = 0;
          v42 = v38 + 40;
          v95 = v39 - 1;
          v99 = MEMORY[0x1E69E7CC0];
          v97 = v2;
          v96 = v38 + 40;
          while (1)
          {
            v43 = (v42 + 16 * v41);
            v2 = v41;
            while (1)
            {
              if (v2 >= *(v38 + 16))
              {
                __break(1u);
                goto LABEL_32;
              }

              v44 = *(v36 + v40);
              if (*(v44 + 16))
              {
                break;
              }

LABEL_7:
              ++v2;
              v43 += 2;
              if (v39 == v2)
              {
                v2 = v97;
                goto LABEL_24;
              }
            }

            v45 = *(v43 - 1);
            v46 = *v43;

            v47 = sub_1B9F24A34(v45, v46);
            if ((v48 & 1) == 0)
            {
              break;
            }

            v49 = (*(v44 + 56) + 48 * v47);
            v50 = v49[1];
            v93 = *v49;
            v51 = v49[2];
            v89 = v49[3];
            v52 = v49[5];
            v92 = v49[4];
            v90 = v50;

            v94 = v51;
            v53 = v89;

            v91 = v52;

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v54 = v90;
            }

            else
            {
              v54 = v90;
              v99 = sub_1B9F21540(0, *(v99 + 2) + 1, 1, v99);
            }

            v56 = *(v99 + 2);
            v55 = *(v99 + 3);
            if (v56 >= v55 >> 1)
            {
              v99 = sub_1B9F21540((v55 > 1), v56 + 1, 1, v99);
            }

            v41 = v2 + 1;
            v57 = v99;
            *(v99 + 2) = v56 + 1;
            v58 = &v57[48 * v56];
            *(v58 + 4) = v93;
            *(v58 + 5) = v54;
            *(v58 + 6) = v94;
            *(v58 + 7) = v53;
            v59 = v91;
            *(v58 + 8) = v92;
            *(v58 + 9) = v59;
            v60 = v95 == v2;
            v2 = v97;
            v42 = v96;
            if (v60)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_7;
        }

        v99 = MEMORY[0x1E69E7CC0];
LABEL_24:

        v62 = sub_1BA00A2A0(v99);

        if (v62 >> 62)
        {
LABEL_32:
          v61 = sub_1BA4A7CC8();
        }

        else
        {
          v61 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = v98;
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0;
      }

      v63 = *(v102 + 104);
      sub_1BA4A3DD8();
      v64 = sub_1BA4A3E88();
      v65 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v122 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, &v122);
        _os_log_impl(&dword_1B9F07000, v64, v65, "[%s]: Checking criteria for Sharing onboaring", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1BFAF43A0](v67, -1, -1);
        MEMORY[0x1BFAF43A0](v66, -1, -1);
      }

      (*(v103 + 8))(v26, v104);
      sub_1BA2CAA20();
      *&v122 = sub_1BA02E358();
      v120 = v61;
      v68 = v105;
      sub_1BA4A4E78();
      sub_1BA4A4D08();
      sub_1BA02DF60(0);
      sub_1BA02E060();
      sub_1BA2CCBB4(&qword_1EBBEA0F8, 255, sub_1BA02DF60, MEMORY[0x1E695BED8]);
      v69 = v106;
      v70 = v108;
      sub_1BA4A5168();
      (*(v107 + 8))(v68, v70);
      sub_1BA2CCBB4(&qword_1EBBEA7B0, 255, sub_1BA02DF24, MEMORY[0x1E695BE40]);
      v71 = v110;
      v72 = sub_1BA4A4F98();
      (*(v109 + 8))(v69, v71);
      v120 = v72;
      v119 = sub_1BA2B1C48(v63);
      v73 = v111;
      sub_1BA4A4AB8();
      sub_1BA2CCBB4(&qword_1EBBEA798, 255, sub_1BA02E124, MEMORY[0x1E695BC70]);
      v74 = v114;
      v75 = v113;
      sub_1BA4A5038();
      (*(v112 + 8))(v73, v75);
      sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
      v76 = sub_1BA4A7308();
      *&v122 = v76;
      v77 = sub_1BA4A72A8();
      v78 = v117;
      (*(*(v77 - 8) + 56))(v117, 1, 1, v77);
      sub_1BA2CCBB4(&qword_1EBBEA7A8, 255, sub_1BA02E1C8, MEMORY[0x1E695BDB8]);
      sub_1B9F3DC80();
      v79 = v118;
      v80 = v116;
      sub_1BA4A50A8();
      sub_1BA2CDFCC(v78, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

      (*(v115 + 8))(v74, v80);
      v81 = swift_allocObject();
      *(v81 + 16) = v2;
      *(v81 + 24) = a1;
      sub_1B9F0A534(v102 + 64, &v122);
      v82 = swift_allocObject();
      *(v82 + 16) = a1;
      *(v82 + 24) = v2;
      *(v82 + 32) = v63;
      sub_1B9F25598(&v122, v82 + 40);
      *(v82 + 80) = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_1BA2CCC04;
      *(v83 + 24) = v82;
      sub_1BA2CCBB4(&qword_1EBBEA7B8, 255, sub_1BA02E25C, MEMORY[0x1E695BE98]);
      v84 = v2;
      v85 = a1;
      v86 = v84;
      v87 = v63;
      v88 = v101;
      sub_1BA4A4F88();

      (*(v100 + 8))(v79, v88);
    }
  }

  else
  {
    sub_1B9F44348(&v122, sub_1B9F7B6F8);
  }

  return result;
}

uint64_t sub_1BA2CCBB4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BA2CCC24(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SummarySharingOnboardingError(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v38 - v23;
  sub_1BA2CDF00(a1, v11, sub_1BA02F428);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v25 = sub_1BA02F428;
    v26 = v11;
  }

  else
  {
    v39 = v4;
    sub_1BA2CDF68(v11, v24);
    sub_1BA4A3DD8();
    sub_1BA2CDF00(v24, v20, type metadata accessor for SummarySharingOnboardingError);
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = a2;
      v30 = v29;
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, &v41);
      *(v30 + 12) = 2080;
      sub_1BA2CDF00(v20, v16, type metadata accessor for SummarySharingOnboardingError);
      v32 = sub_1BA4A6828();
      v34 = v33;
      sub_1B9F44348(v20, type metadata accessor for SummarySharingOnboardingError);
      v35 = sub_1B9F0B82C(v32, v34, &v41);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Received error when presenting onboarding flow: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      v36 = v30;
      a2 = v38;
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    else
    {

      sub_1B9F44348(v20, type metadata accessor for SummarySharingOnboardingError);
    }

    (*(v40 + 8))(v7, v39);
    sub_1BA0C6BA4(a2, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);
    v25 = type metadata accessor for SummarySharingOnboardingError;
    v26 = v24;
  }

  return sub_1B9F44348(v26, v25);
}

void sub_1BA2CD048(char a1, char a2, int a3, void *a4, void *a5, uint64_t a6, int a7, int a8)
{
  LODWORD(v8) = a8;
  v68 = a3;
  v69 = a7;
  v70 = a6;
  v61 = a5;
  sub_1BA2CD9FC(0);
  v66 = v12;
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v62 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA2CDC1C(0);
  v67 = v15;
  v65 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1BA4A3EA8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3DD8();
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();
  v25 = os_log_type_enabled(v23, v24);
  v71 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60 = v8;
    v8 = v27;
    v72[0] = v27;
    *v26 = 136315650;
    *(v26 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, v72);
    *(v26 + 12) = 1024;
    *(v26 + 14) = a1 & 1;
    *(v26 + 18) = 1024;
    v28 = a2;
    *(v26 + 20) = a2 & 1;
    _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] iCloud sync eligible: %{BOOL}d, less than sharing limit: %{BOOL}d", v26, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v29 = v8;
    LOBYTE(v8) = v60;
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    v30 = v26;
    a4 = v71;
    MEMORY[0x1BFAF43A0](v30, -1, -1);
  }

  else
  {
    v28 = a2;
  }

  (*(v19 + 8))(v22, v18);
  if (a1 & 1) != 0 && (v28)
  {
    if (v8)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v60 = v31;
    v32 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
    v33 = v61;
    v34 = [v32 initWithHealthStore_];
    v72[0] = sub_1BA440AA8();
    sub_1BA2CDCF0(0);
    sub_1BA2CCBB4(&qword_1EBBF0148, 255, sub_1BA2CDCF0, MEMORY[0x1E695C038]);
    v35 = sub_1BA4A4F98();

    *(swift_allocObject() + 16) = v33;
    sub_1BA2CDDCC(0, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics);
    swift_allocObject();
    v36 = v33;
    v72[0] = sub_1BA4A4EA8();
    sub_1BA2CDD7C(&qword_1EBBEB548, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics);
    v37 = sub_1BA4A4F98();

    v72[0] = sub_1BA2896CC(v36, v70);
    sub_1BA2CDAEC(0);
    sub_1BA2CDB90(0);
    v38 = MEMORY[0x1E695BED8];
    sub_1BA2CCBB4(&qword_1EBBF0128, 255, sub_1BA2CDAEC, MEMORY[0x1E695BED8]);
    sub_1BA2CCBB4(&qword_1EBBE9D08, 255, sub_1BA2CDB90, v38);
    v39 = v62;
    sub_1BA4A5018();

    sub_1BA2CDEB0(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA2CCBB4(&qword_1EBBF0138, 255, sub_1BA2CD9FC, MEMORY[0x1E695BDA0]);
    v40 = v63;
    v41 = v66;
    sub_1BA4A4FE8();
    (*(v64 + 8))(v39, v41);
    sub_1BA2CCBB4(&qword_1EBBF0150, 255, sub_1BA2CDC1C, MEMORY[0x1E695BD60]);
    v42 = v67;
    v43 = sub_1BA4A4F98();
    (*(v65 + 8))(v40, v42);
    v44 = MEMORY[0x1E69E6158];
    sub_1BA2CDDCC(0, &qword_1EDC5F400, MEMORY[0x1E69E6158]);
    swift_allocObject();
    v72[0] = sub_1BA4A4EA8();
    sub_1BA2CDD7C(&qword_1EDC5F408, &qword_1EDC5F400, v44);
    v45 = sub_1BA4A4F98();

    LOBYTE(v72[0]) = v60;
    type metadata accessor for SummarySharingSelectionFlowContext();
    swift_allocObject();
    LOBYTE(v39) = v68;
    v46 = v69;
    v47 = sub_1B9FF2A10(v35, v37, v43, v45, v72, v69 & 1, v69 & 1u & v68);

    if (v39)
    {
      v48 = v71;
      if (v46)
      {
        sub_1B9F0A534(v70, v72);
        v49 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingSettingUpViewController());
        v50 = v36;

        v51 = sub_1BA2B2378(v72, v50, v47);
LABEL_19:
        v56 = v51;

        v57 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v57 setModalInPresentation_];
        [v48 presentViewController:v57 animated:1 completion:0];

        return;
      }
    }

    else
    {
      *(v47 + 72) = 1;
      v48 = v71;
      if (v46)
      {
        sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
        if (sub_1BA4A7028())
        {
          sub_1B9F0A534(v70, v72);
          v54 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController(0));
          v50 = v36;

          v51 = sub_1BA202D18(v50, v72, v47);
        }

        else
        {
          sub_1B9F0A534(v70, v72);
          v58 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());
          v50 = v36;

          v51 = sub_1BA1F1518(v50, v72, v47);
        }

        goto LABEL_19;
      }
    }

    sub_1B9F0A534(v70, v72);
    v55 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingInfoViewController());
    v50 = v36;

    v51 = sub_1BA294B44(v72, v50, v47);
    goto LABEL_19;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v52 = sub_1BA4A1318();
  sub_1BA2C7E48(a4, 0xD00000000000001ALL, 0x80000001BA4FB630, v52, v53, MEMORY[0x1E69E7CC0], 0, 0);
}

void sub_1BA2CD9FC(uint64_t a1)
{
  if (!qword_1EBBF0118)
  {
    sub_1BA2CDAEC(255);
    sub_1BA2CDB90(255);
    v1 = MEMORY[0x1E695BED8];
    sub_1BA2CCBB4(&qword_1EBBF0128, 255, sub_1BA2CDAEC, MEMORY[0x1E695BED8]);
    sub_1BA2CCBB4(&qword_1EBBE9D08, 255, sub_1BA2CDB90, v1);
    v2 = sub_1BA4A4BB8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF0118);
    }
  }
}

void sub_1BA2CDAEC(uint64_t a1)
{
  if (!qword_1EBBF0120)
  {
    sub_1BA2CDEB0(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0120);
    }
  }
}

void sub_1BA2CDB90(uint64_t a1)
{
  if (!qword_1EBBE9CE0)
  {
    sub_1BA2CDEB0(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9CE0);
    }
  }
}

void sub_1BA2CDC1C(uint64_t a1)
{
  if (!qword_1EBBF0130)
  {
    sub_1BA2CD9FC(255);
    sub_1BA2CDEB0(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA2CCBB4(&qword_1EBBF0138, 255, sub_1BA2CD9FC, MEMORY[0x1E695BDA0]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0130);
    }
  }
}

void sub_1BA2CDCF0(uint64_t a1)
{
  if (!qword_1EBBF0140)
  {
    sub_1BA2CDEB0(255, &qword_1EBBE9CD0, &type metadata for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics, MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0140);
    }
  }
}

uint64_t sub_1BA2CDD7C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BA2CDDCC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2CDDCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BA4A4E98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA2CDE2C(uint64_t a1)
{
  if (!qword_1EBBF0158)
  {
    sub_1BA2CDEB0(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A4E68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0158);
    }
  }
}

void sub_1BA2CDEB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA2CDF00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA2CDF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingOnboardingError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2CDFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F663F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA2CE03C(char a1, char a2, int a3, void *a4, void *a5, uint64_t a6, int a7, int a8)
{
  LODWORD(v8) = a8;
  v68 = a3;
  v69 = a7;
  v70 = a6;
  v61 = a5;
  sub_1BA2CD9FC(0);
  v66 = v12;
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v62 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA2CDC1C(0);
  v67 = v15;
  v65 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1BA4A3EA8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3DD8();
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();
  v25 = os_log_type_enabled(v23, v24);
  v71 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60 = v8;
    v8 = v27;
    v72[0] = v27;
    *v26 = 136315650;
    *(v26 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, v72);
    *(v26 + 12) = 1024;
    *(v26 + 14) = a1 & 1;
    *(v26 + 18) = 1024;
    v28 = a2;
    *(v26 + 20) = a2 & 1;
    _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] iCloud sync eligible: %{BOOL}d, less than sharing limit: %{BOOL}d", v26, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v29 = v8;
    LOBYTE(v8) = v60;
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    v30 = v26;
    a4 = v71;
    MEMORY[0x1BFAF43A0](v30, -1, -1);
  }

  else
  {
    v28 = a2;
  }

  (*(v19 + 8))(v22, v18);
  if (a1 & 1) != 0 && (v28)
  {
    if (v8)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v60 = v31;
    v32 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
    v33 = v61;
    v34 = [v32 initWithHealthStore_];
    v72[0] = sub_1BA440AA8();
    sub_1BA2CDCF0(0);
    sub_1BA2CCBB4(&qword_1EBBF0148, 255, sub_1BA2CDCF0, MEMORY[0x1E695C038]);
    v35 = sub_1BA4A4F98();

    *(swift_allocObject() + 16) = v33;
    sub_1BA2CDDCC(0, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics);
    swift_allocObject();
    v36 = v33;
    v72[0] = sub_1BA4A4EA8();
    sub_1BA2CDD7C(&qword_1EBBEB548, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics);
    v37 = sub_1BA4A4F98();

    v72[0] = sub_1BA2896CC(v36, v70);
    sub_1BA2CDAEC(0);
    sub_1BA2CDB90(0);
    v38 = MEMORY[0x1E695BED8];
    sub_1BA2CCBB4(&qword_1EBBF0128, 255, sub_1BA2CDAEC, MEMORY[0x1E695BED8]);
    sub_1BA2CCBB4(&qword_1EBBE9D08, 255, sub_1BA2CDB90, v38);
    v39 = v62;
    sub_1BA4A5018();

    sub_1BA2CDEB0(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA2CCBB4(&qword_1EBBF0138, 255, sub_1BA2CD9FC, MEMORY[0x1E695BDA0]);
    v40 = v63;
    v41 = v66;
    sub_1BA4A4FE8();
    (*(v64 + 8))(v39, v41);
    sub_1BA2CCBB4(&qword_1EBBF0150, 255, sub_1BA2CDC1C, MEMORY[0x1E695BD60]);
    v42 = v67;
    v43 = sub_1BA4A4F98();
    (*(v65 + 8))(v40, v42);
    v44 = MEMORY[0x1E69E6158];
    sub_1BA2CDDCC(0, &qword_1EDC5F400, MEMORY[0x1E69E6158]);
    swift_allocObject();
    v72[0] = sub_1BA4A4EA8();
    sub_1BA2CDD7C(&qword_1EDC5F408, &qword_1EDC5F400, v44);
    v45 = sub_1BA4A4F98();

    LOBYTE(v72[0]) = v60;
    type metadata accessor for SummarySharingSelectionFlowContext();
    swift_allocObject();
    LOBYTE(v39) = v68;
    v46 = v69;
    v47 = sub_1B9FF2A10(v35, v37, v43, v45, v72, v69 & 1, v69 & 1u & v68);

    if (v39)
    {
      v48 = v71;
      if (v46)
      {
        sub_1B9F0A534(v70, v72);
        v49 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingSettingUpViewController());
        v50 = v36;

        v51 = sub_1BA2B2378(v72, v50, v47);
LABEL_19:
        v56 = v51;

        v57 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v57 setModalInPresentation_];
        [v48 presentViewController:v57 animated:1 completion:0];

        return;
      }
    }

    else
    {
      *(v47 + 72) = 1;
      v48 = v71;
      if (v46)
      {
        sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
        if (sub_1BA4A7028())
        {
          sub_1B9F0A534(v70, v72);
          v54 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController(0));
          v50 = v36;

          v51 = sub_1BA202D18(v50, v72, v47);
        }

        else
        {
          sub_1B9F0A534(v70, v72);
          v58 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());
          v50 = v36;

          v51 = sub_1BA1F1518(v50, v72, v47);
        }

        goto LABEL_19;
      }
    }

    sub_1B9F0A534(v70, v72);
    v55 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingInfoViewController());
    v50 = v36;

    v51 = sub_1BA294B44(v72, v50, v47);
    goto LABEL_19;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v52 = sub_1BA4A1318();
  sub_1BA2C8B68(a4, 0xD00000000000001ALL, 0x80000001BA4FB630, v52, v53, MEMORY[0x1E69E7CC0], 0, 0);
}

unint64_t sub_1BA2CE9F0()
{
  result = qword_1EDC642A8[0];
  if (!qword_1EDC642A8[0])
  {
    type metadata accessor for AddNewSharingRelationshipCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC642A8);
  }

  return result;
}

uint64_t StandardWithChartDataTypeDetailConfigurationProvider.configuration(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BA4A1A48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A1A88();
  static DataTypeDetailConfiguration.standardWithChart(measureIdentifier:)(v8, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA2CEB88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BA4A1A48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A1A88();
  static DataTypeDetailConfiguration.standardWithChart(measureIdentifier:)(v8, a2);
  return (*(v5 + 8))(v8, v4);
}

HealthExperienceUI::DataTypeDetailConfiguration __swiftcall StandardWithSampleListDataTypeDetailConfigurationProvider.configuration(for:)(HKObjectType a1)
{
  v3 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v29 = a1.super.isa;
    static DataTypeDetailConfiguration.standardWithSampleList(sampleType:)(v10, v3);
    v11 = v29;
  }

  else
  {
    sub_1BA4A3D88();
    v13 = a1.super.isa;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = v15;
      v17 = v16;
      v29 = swift_slowAlloc();
      v30 = v29;
      *v17 = 136315394;
      *(v17 + 4) = sub_1B9F0B82C(0xD000000000000039, 0x80000001BA4CE290, &v30);
      *(v17 + 12) = 2080;
      v18 = v13;
      v19 = [(objc_class *)v18 description];
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v27 = v14;
      v21 = v13;
      v23 = v22;

      v24 = sub_1B9F0B82C(v20, v23, &v30);
      v13 = v21;

      *(v17 + 14) = v24;
      v25 = v27;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s]: Configuration error: Cannot use the Sample List configuration with a non-HKSampleType: %s", v17, 0x16u);
      v26 = v29;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    return static DataTypeDetailConfiguration.standardWithChart(hkType:)(v13, v3);
  }

  return result;
}

char *ListFeedItemsDataSource.__allocating_init(fetchedResultsController:sectionLayout:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[qword_1EBBF0168] = 0;
  *&v5[qword_1EBC09850] = a2;
  return _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(a1);
}

void sub_1BA2CF04C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EBC09850;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA2CF0AC()
{
  v1 = qword_1EBC09850;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA2CF100(uint64_t a1)
{
  v3 = qword_1EBC09850;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA2CF1B8()
{
  v1 = qword_1EBBF0168;
  v2 = *(v0 + qword_1EBBF0168);
  if (v2)
  {
    v3 = *(v0 + qword_1EBBF0168);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v5 = sub_1BA4A6758();
    [v4 setDateFormat_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t sub_1BA2CF274@<X0>(void *a1@<X8>)
{
  v43 = a1;
  v42 = sub_1BA4A4428();
  v2 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - v8;
  v41 = sub_1BA4A1728();
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v41 - v16;
  v18 = qword_1EDC84AD8;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = sub_1BA4A18F8();
  v21 = [v19 objectAtIndexPath_];

  v22 = [v21 relevantStartDate];
  if (v22)
  {
    sub_1BA4A16F8();

    v23 = v41;
    (*(v10 + 32))(v17, v13, v41);
    v24 = sub_1BA2CF1B8();
    v25 = sub_1BA4A16B8();
    v26 = [v24 stringFromDate_];

    v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v29 = v28;

    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v30 = v42;
    (*(v2 + 16))(v5, v9, v42);
    v31 = type metadata accessor for HeaderItem(0);
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v27, v29, 0, 0, 0, 0, v5, 0, 0);
    v33 = v32;
    (*(v2 + 8))(v9, v30);
    v34 = v43;
    v43[3] = v31;
    v34[4] = sub_1BA011754();
    *v34 = v33;
    return (*(v10 + 8))(v17, v23);
  }

  else
  {
    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v36 = v42;
    (*(v2 + 16))(v5, v9, v42);
    v37 = type metadata accessor for HeaderItem(0);
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(0, 0xE000000000000000, 0, 0, 0, 0, v5, 0, 0);
    v39 = v38;
    (*(v2 + 8))(v9, v36);
    v40 = v43;
    v43[3] = v37;
    result = sub_1BA011754();
    v40[4] = result;
    *v40 = v39;
  }

  return result;
}

char *ListFeedItemsDataSource.init(fetchedResultsController:sectionLayout:)(void *a1, uint64_t a2)
{
  *(v2 + qword_1EBBF0168) = 0;
  *(v2 + qword_1EBC09850) = a2;
  return _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(a1);
}

id sub_1BA2CF680()
{
  v1 = qword_1EBC09850;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA2CF700()
{
  v1 = *(v0 + qword_1EBBF0168);
}

id ListFeedItemsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListFeedItemsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ListFeedItemsDataSource(uint64_t a1)
{
  result = qword_1EBBF0170;
  if (!qword_1EBBF0170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA2CF7C4(uint64_t a1)
{
  v2 = *(a1 + qword_1EBBF0168);
}

id sub_1BA2CF834()
{
  v1 = *v0;
  v2 = qword_1EBC09850;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_1BA2CFAD4(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA2CFB6C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F6DEE0(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA2CFBD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(a1, v1 + v3);
  return swift_endAccess();
}

id DataTypeTileHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeTileHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataTypeTileHeaderView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint] = 0;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
  v4 = type metadata accessor for TileHeaderDetailKind(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_minimumViewHeight] = 0x4040800000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToTop] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToBottom] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToAccessory] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToDetail] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailToAccessory] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_glyphBaselineOffset] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DataTypeTileHeaderView(0);
  v6 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 defaultCenter];
    [v9 addObserver:v8 selector:sel_updateTitleText name:*MEMORY[0x1E69A40A0] object:0];

    a1 = v9;
  }

  return v6;
}

uint64_t sub_1BA2CFF40()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v11 = sub_1BA4A7308();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1BA2D1E98;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_80;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A9A4(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_1BA2D01F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = v3;
    sub_1B9F6F658();
    if (v5)
    {
      v6 = sub_1BA4A6758();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText_];
  }
}

id sub_1BA2D03A4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v16 = *(v0 + v7);
  v8 = v2;
  v9 = v4;
  v10 = v6;
  [v8 removeFromSuperview];
  [v9 removeFromSuperview];
  [v10 removeFromSuperview];
  [v16 removeFromSuperview];
  sub_1B9F6DF70(0, &unk_1EDC5E200, &qword_1EDC6B4A0, 0x1E69DD250, sub_1B9F0ADF8);
  swift_arrayDestroy();
  v11 = *(v0 + v1);
  *(v0 + v1) = 0;

  v12 = *(v0 + v3);
  *(v0 + v3) = 0;

  v13 = *(v0 + v5);
  *(v0 + v5) = 0;

  v14 = *(v0 + v7);
  *(v0 + v7) = 0;

  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint);
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

void sub_1BA2D0568(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA2D0620()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA2D066C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA2D0724(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA2D07DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA2D0894()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = &selRef_preferredContentSizeCategory;
  if (v8)
  {
    v10 = *MEMORY[0x1E69DDD80];
    v11 = *MEMORY[0x1E69DB980];
    v12 = v8;
    v13 = sub_1B9F6B774(v10, v11, 0, 0, 0, 0, 1);
    [v12 setFont_];
  }

  v14 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    v56 = v3;
    v16 = *MEMORY[0x1E69DDD28];
    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
    if (v19)
    {
      v20 = v19;
      v21 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
    }

    else
    {
      v54 = v2;
      sub_1BA4A3DD8();
      v22 = v16;
      v23 = sub_1BA4A3E88();
      v24 = sub_1BA4A6FB8();
      v55 = v22;

      v53 = v24;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v57 = v52;
        *v25 = 136315906;
        v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v28 = sub_1B9F0B82C(v26, v27, &v57);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2080;
        v58 = 0;
        v59 = 1;
        sub_1B9F0A9A4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v29 = sub_1BA4A6808();
        v31 = sub_1B9F0B82C(v29, v30, &v57);

        *(v25 + 14) = v31;
        *(v25 + 22) = 2080;
        LODWORD(v58) = 0;
        type metadata accessor for SymbolicTraits(0);
        v32 = sub_1BA4A6808();
        v34 = sub_1B9F0B82C(v32, v33, &v57);

        *(v25 + 24) = v34;
        *(v25 + 32) = 2112;
        v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v25 + 34) = v35;
        v36 = v51;
        *v51 = v35;
        _os_log_impl(&dword_1B9F07000, v23, v53, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v25, 0x2Au);
        sub_1B9F6F238(v36, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v36, -1, -1);
        v37 = v52;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v37, -1, -1);
        v38 = v25;
        v9 = &selRef_preferredContentSizeCategory;
        MEMORY[0x1BFAF43A0](v38, -1, -1);
      }

      (*(v56 + 8))(v6, v54);
      v20 = [v17 preferredFontDescriptorWithTextStyle_];
      v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    }

    v39 = v21;

    [v18 v9[98]];
  }

  v40 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v41 = *(v1 + v40);
  if (v41)
  {
    v42 = objc_opt_self();
    v43 = *MEMORY[0x1E69DDCF8];
    v44 = v41;
    v45 = [v42 _preferredFontForTextStyle_variant_];
    if (!v45)
    {
      __break(1u);
      return;
    }

    v46 = v45;
    [v44 v9[98]];
  }

  sub_1B9F711CC();
  v47 = *(v1 + v14);
  if (v47)
  {
    v48 = v47;
    sub_1B9F6F658();
    if (v49)
    {
      v50 = sub_1BA4A6758();
    }

    else
    {
      v50 = 0;
    }

    [v48 setText_];
  }

  sub_1B9F71D38();
}

void sub_1BA2D0F04(uint64_t a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v8, v21);
  if (!v22)
  {
    sub_1B9F6F238(v21, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_11;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  sub_1B9F0D950(0, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_11;
  }

  if (!*(&v24 + 1))
  {
LABEL_11:
    sub_1B9F6F238(&v23, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    goto LABEL_12;
  }

  sub_1B9F1134C(&v23, v26);
  v9 = v27;
  v10 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v11 = (*(v10 + 40))(v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 displayTypeController];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = [v13 displayTypeForObjectType_];

    if (v14)
    {
      v15 = [objc_opt_self() categoryWithID_];
      if (v15)
      {
        v16 = v15;
        [v15 color];

        __swift_destroy_boxed_opaque_existential_1(v26);
        return;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_12:
  sub_1BA4A3DD8();
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B9F07000, v17, v18, "Invalid configuration: unable to resolve hkType. If the DataTypeTileHeaderDataSource provides a hkType, it must also provide a healthStore", v19, 2u);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

void sub_1BA2D126C(uint64_t a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v8, v21);
  if (!v22)
  {
    sub_1B9F6F238(v21, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_10;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  sub_1B9F0D950(0, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_10;
  }

  if (!*(&v24 + 1))
  {
LABEL_10:
    sub_1B9F6F238(&v23, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    goto LABEL_11;
  }

  sub_1B9F1134C(&v23, v26);
  v9 = v27;
  v10 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v11 = (*(v10 + 40))(v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 displayTypeController];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = [v13 displayTypeForObjectType_];

    if (v14)
    {
      v15 = [v14 localization];
      v16 = [v15 displayName];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      __swift_destroy_boxed_opaque_existential_1(v26);
      return;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_11:
  sub_1BA4A3DD8();
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B9F07000, v17, v18, "Invalid configuration: unable to resolve hkType. If the DataTypeTileHeaderDataSource provides a hkType, it must also provide a healthStore", v19, 2u);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

id DataTypeTileHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeTileHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA2D16F4(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA2D17E0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA2D1840(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_chromeHostView;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t CellHeaderXMarkAccessoryView.init(tapAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B9F0E310(0, 0);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t CellHeaderXMarkAccessoryView.body.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1B9F0F1B4(v2, v1);
  sub_1BA2D20D0(0);
  sub_1BA2D2840(&qword_1EDC5EFE0, sub_1BA2D20D0, sub_1BA2D217C, sub_1BA2D221C);

  return sub_1BA4A61C8();
}

uint64_t sub_1BA2D1FD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A6128();
  sub_1BA4A5CF8();
  sub_1BA4A5CB8();
  v3 = sub_1BA4A5D08();

  KeyPath = swift_getKeyPath();
  sub_1BA2D20D0(0);
  v6 = a1 + *(v5 + 36);
  sub_1BA267DE4(0);
  v8 = *(v7 + 28);
  sub_1BA4A5898();
  v9 = sub_1BA4A58B8();
  (*(*(v9 - 8) + 56))(&v6[v8], 0, 1, v9);
  result = swift_getKeyPath();
  *v6 = result;
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  return result;
}

void sub_1BA2D2104(uint64_t a1)
{
  if (!qword_1EDC5F150)
  {
    sub_1B9F86930(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F150);
    }
  }
}

unint64_t sub_1BA2D217C()
{
  result = qword_1EDC5F158;
  if (!qword_1EDC5F158)
  {
    sub_1BA2D2104(255);
    sub_1B9F89514(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F158);
  }

  return result;
}

uint64_t sub_1BA2D2250()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1B9F0F1B4(v2, v1);
  sub_1BA2D20D0(0);
  sub_1BA2D2840(&qword_1EDC5EFE0, sub_1BA2D20D0, sub_1BA2D217C, sub_1BA2D221C);

  return sub_1BA4A61C8();
}

uint64_t CellHeaderDetailTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F252FC();

  v2 = sub_1BA4A5E18();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1BA2D23E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A56A8();
  *a1 = result;
  return result;
}

uint64_t sub_1BA2D245C(uint64_t a1)
{
  v2 = sub_1BA4A6188();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BA4A5518();
}

uint64_t sub_1BA2D2524(uint64_t a1, uint64_t a2)
{
  sub_1B9F89828(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2D2588@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA4A5668();
  *a1 = result;
  return result;
}

uint64_t sub_1BA2D25DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BA4A56C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BA2D2640(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA2D26DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1BA2D2738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1BA2D2798(uint64_t a1)
{
  if (!qword_1EDC5EB80)
  {
    sub_1BA2D20D0(255);
    sub_1BA2D2840(&qword_1EDC5EFE0, sub_1BA2D20D0, sub_1BA2D217C, sub_1BA2D221C);
    v1 = sub_1BA4A61F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB80);
    }
  }
}

uint64_t sub_1BA2D2840(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2D28CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA2D2974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA2D29BC()
{
  result = qword_1EDC5F1E0;
  if (!qword_1EDC5F1E0)
  {
    sub_1B9F88B28(255);
    sub_1B9F89514(&qword_1EDC5EC10, &qword_1EDC5EC08, &qword_1EDC6B640, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F1E0);
  }

  return result;
}

uint64_t sub_1BA2D2A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *UITraitCollection.presentation.getter()
{
  sub_1B9F3AEE8();

  return sub_1BA4A7358();
}

unint64_t sub_1BA2D2B18(char a1)
{
  result = 0x467972616D6D7573;
  switch(a1)
  {
    case 1:
      result = 0x446C6C41776F6873;
      break;
    case 2:
      result = 0x686372616573;
      break;
    case 3:
      result = 0x79726F6765746163;
      break;
    case 4:
      result = 0x6C6961746564;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x684368746C616568;
      break;
    case 7:
      result = 0x656C69666F7270;
      break;
    case 8:
      result = 0x4F676E6972616873;
      break;
    case 9:
      result = 0x50676E6972616873;
      break;
    case 10:
      result = 0x72616265646973;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x697461636964656DLL;
      break;
    case 13:
      result = 0x646E6572546C6C61;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BA2D2CE8(uint64_t a1)
{
  v2 = sub_1BA2D4490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2D24(uint64_t a1)
{
  v2 = sub_1BA2D4490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2D60(uint64_t a1)
{
  v2 = sub_1BA2D47D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2D9C(uint64_t a1)
{
  v2 = sub_1BA2D47D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2DE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA2D71E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA2D2E14(uint64_t a1)
{
  v2 = sub_1BA2D4928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2E50(uint64_t a1)
{
  v2 = sub_1BA2D4928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2E8C(uint64_t a1)
{
  v2 = sub_1BA2D4730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2EC8(uint64_t a1)
{
  v2 = sub_1BA2D4730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2F04(uint64_t a1)
{
  v2 = sub_1BA2D4784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2F40(uint64_t a1)
{
  v2 = sub_1BA2D4784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2F7C(uint64_t a1)
{
  v2 = sub_1BA2D443C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2FB8(uint64_t a1)
{
  v2 = sub_1BA2D443C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2FF4(uint64_t a1)
{
  v2 = sub_1BA2D46DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3030(uint64_t a1)
{
  v2 = sub_1BA2D46DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D306C(uint64_t a1)
{
  v2 = sub_1BA2D4538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D30A8(uint64_t a1)
{
  v2 = sub_1BA2D4538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D30E4(uint64_t a1)
{
  v2 = sub_1BA2D44E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3120(uint64_t a1)
{
  v2 = sub_1BA2D44E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D315C(uint64_t a1)
{
  v2 = sub_1BA2D4688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3198(uint64_t a1)
{
  v2 = sub_1BA2D4688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D31D4(uint64_t a1)
{
  v2 = sub_1BA2D482C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3210(uint64_t a1)
{
  v2 = sub_1BA2D482C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D324C(uint64_t a1)
{
  v2 = sub_1BA2D4634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3288(uint64_t a1)
{
  v2 = sub_1BA2D4634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D32C4(uint64_t a1)
{
  v2 = sub_1BA2D45E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3300(uint64_t a1)
{
  v2 = sub_1BA2D45E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D333C(uint64_t a1)
{
  v2 = sub_1BA2D4880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3378(uint64_t a1)
{
  v2 = sub_1BA2D4880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D33B4(uint64_t a1)
{
  v2 = sub_1BA2D458C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D33F0(uint64_t a1)
{
  v2 = sub_1BA2D458C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D342C(uint64_t a1)
{
  v2 = sub_1BA2D48D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3468(uint64_t a1)
{
  v2 = sub_1BA2D48D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Presentation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1BA2D5BD8(0, &qword_1EDC5DDE8, sub_1BA2D443C, &type metadata for Presentation.EditFavoritesViewCodingKeys, MEMORY[0x1E69E6F58]);
  v122 = *(v5 - 8);
  v123 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v121 = &v81 - v7;
  sub_1BA2D5BD8(0, &qword_1EDC5DE28, sub_1BA2D4490, &type metadata for Presentation.AllTrendsCodingKeys, v4);
  v119 = *(v8 - 8);
  v120 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v118 = &v81 - v10;
  sub_1BA2D5BD8(0, &qword_1EDC5DE08, sub_1BA2D44E4, &type metadata for Presentation.MedicationsRoomCodingKeys, v4);
  v116 = *(v11 - 8);
  v117 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v115 = &v81 - v13;
  sub_1BA2D5BD8(0, &qword_1EDC5DDF8, sub_1BA2D4538, &type metadata for Presentation.InternalSettingsCodingKeys, v4);
  v113 = *(v14 - 8);
  v114 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v112 = &v81 - v16;
  sub_1BA2D5BD8(0, &qword_1EDC5DE38, sub_1BA2D458C, &type metadata for Presentation.SidebarCodingKeys, v4);
  v110 = *(v17 - 8);
  v111 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v109 = &v81 - v19;
  sub_1BA2D5BD8(0, &qword_1EDC5DE10, sub_1BA2D45E0, &type metadata for Presentation.SharingPreviewCodingKeys, v4);
  v107 = *(v20 - 8);
  v108 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v106 = &v81 - v22;
  sub_1BA2D5BD8(0, &qword_1EDC5DE00, sub_1BA2D4634, &type metadata for Presentation.SharingOverviewCodingKeys, v4);
  v105 = v23;
  v104 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v103 = &v81 - v25;
  sub_1BA2D5BD8(0, &qword_1EDC5DE40, sub_1BA2D4688, &type metadata for Presentation.ProfileCodingKeys, v4);
  v102 = v26;
  v101 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v100 = &v81 - v28;
  sub_1BA2D5BD8(0, &qword_1EDC5DE60, sub_1BA2D46DC, &type metadata for Presentation.HealthChecklistCodingKeys, v4);
  v99 = v29;
  v98 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v97 = &v81 - v31;
  sub_1BA2D5BD8(0, &qword_1EDC5DDF0, sub_1BA2D4730, &type metadata for Presentation.CustomShowAllDataCodingKeys, v4);
  v96 = v32;
  v95 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v94 = &v81 - v34;
  sub_1BA2D5BD8(0, &qword_1EDC5DE50, sub_1BA2D4784, &type metadata for Presentation.DetailCodingKeys, v4);
  v93 = v35;
  v92 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v91 = &v81 - v37;
  sub_1BA2D5BD8(0, &qword_1EDC5DE30, sub_1BA2D47D8, &type metadata for Presentation.CategoryCodingKeys, v4);
  v90 = v38;
  v89 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v88 = &v81 - v40;
  sub_1BA2D5BD8(0, &qword_1EDC5DE48, sub_1BA2D482C, &type metadata for Presentation.SearchCodingKeys, v4);
  v87 = v41;
  v86 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v85 = &v81 - v43;
  sub_1BA2D5BD8(0, &qword_1EDC5DE20, sub_1BA2D4880, &type metadata for Presentation.ShowAllDataCodingKeys, v4);
  v84 = v44;
  v83 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v82 = &v81 - v46;
  sub_1BA2D5BD8(0, &qword_1EDC5DE18, sub_1BA2D48D4, &type metadata for Presentation.SummaryFeedCodingKeys, v4);
  v48 = v47;
  v81 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v81 - v50;
  sub_1BA2D5BD8(0, &qword_1EDC5DE58, sub_1BA2D4928, &type metadata for Presentation.CodingKeys, v4);
  v125 = v52;
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v81 - v55;
  v57 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA2D4928();
  v124 = v56;
  sub_1BA4A8548();
  v58 = (v53 + 8);
  switch(v57)
  {
    case 1:
      v127 = 1;
      sub_1BA2D4880();
      v76 = v82;
      v62 = v124;
      v63 = v125;
      sub_1BA4A81F8();
      (*(v83 + 8))(v76, v84);
      goto LABEL_15;
    case 2:
      v128 = 2;
      sub_1BA2D482C();
      v73 = v85;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v70 = *(v86 + 8);
      v71 = v73;
      v72 = &v119;
      goto LABEL_20;
    case 3:
      v129 = 3;
      sub_1BA2D47D8();
      v74 = v88;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v70 = *(v89 + 8);
      v71 = v74;
      v72 = &v122;
      goto LABEL_20;
    case 4:
      v130 = 4;
      sub_1BA2D4784();
      v69 = v91;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v70 = *(v92 + 8);
      v71 = v69;
      v72 = &v125;
      goto LABEL_20;
    case 5:
      v131 = 5;
      sub_1BA2D4730();
      v77 = v94;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v70 = *(v95 + 8);
      v71 = v77;
      v72 = v133;
      goto LABEL_20;
    case 6:
      v132 = 6;
      sub_1BA2D46DC();
      v79 = v97;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v70 = *(v98 + 8);
      v71 = v79;
      v72 = &v134;
      goto LABEL_20;
    case 7:
      v133[16] = 7;
      sub_1BA2D4688();
      v75 = v100;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v70 = *(v101 + 8);
      v71 = v75;
      v72 = &v135;
      goto LABEL_20;
    case 8:
      v133[17] = 8;
      sub_1BA2D4634();
      v80 = v103;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v70 = *(v104 + 8);
      v71 = v80;
      v72 = &v136;
LABEL_20:
      v70(v71, *(v72 - 32));
      goto LABEL_21;
    case 9:
      v133[18] = 9;
      sub_1BA2D45E0();
      v66 = v106;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v68 = v107;
      v67 = v108;
      goto LABEL_18;
    case 10:
      v133[19] = 10;
      sub_1BA2D458C();
      v66 = v109;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v68 = v110;
      v67 = v111;
      goto LABEL_18;
    case 11:
      v133[20] = 11;
      sub_1BA2D4538();
      v66 = v112;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v68 = v113;
      v67 = v114;
      goto LABEL_18;
    case 12:
      v133[21] = 12;
      sub_1BA2D44E4();
      v66 = v115;
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      v68 = v116;
      v67 = v117;
LABEL_18:
      (*(v68 + 8))(v66, v67);
      goto LABEL_21;
    case 13:
      v133[22] = 13;
      sub_1BA2D4490();
      v61 = v118;
      v62 = v124;
      v63 = v125;
      sub_1BA4A81F8();
      v65 = v119;
      v64 = v120;
      goto LABEL_14;
    case 14:
      v133[23] = 14;
      sub_1BA2D443C();
      v61 = v121;
      v62 = v124;
      v63 = v125;
      sub_1BA4A81F8();
      v65 = v122;
      v64 = v123;
LABEL_14:
      (*(v65 + 8))(v61, v64);
LABEL_15:
      result = (*v58)(v62, v63);
      break;
    default:
      v126 = 0;
      sub_1BA2D48D4();
      v60 = v124;
      v59 = v125;
      sub_1BA4A81F8();
      (*(v81 + 8))(v51, v48);
LABEL_21:
      result = (*v58)(v60, v59);
      break;
  }

  return result;
}

unint64_t sub_1BA2D443C()
{
  result = qword_1EDC6DC68;
  if (!qword_1EDC6DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC68);
  }

  return result;
}

unint64_t sub_1BA2D4490()
{
  result = qword_1EDC6DD28;
  if (!qword_1EDC6DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD28);
  }

  return result;
}