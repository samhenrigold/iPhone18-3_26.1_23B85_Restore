uint64_t sub_1BA1E5968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F0A534(v2 + v4, a2);
}

uint64_t sub_1BA1E59DC(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v6));
  a3(a1, v3 + v6);
  return swift_endAccess();
}

void sub_1BA1E5AA8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA1E5B08()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA1E5B54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA1E5C0C()
{
  sub_1BA090588(0);
  v2 = *(v1 - 8);
  v21 = v1;
  v22 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0906F8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_sharedProfileOverviewDataSource) + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_sharedProfileHeaderDataSource) + qword_1EDC6A560);
  v11 = MEMORY[0x1E69A3430];
  v12 = MEMORY[0x1E695BF98];
  sub_1BA1E8B20(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
  sub_1BA1E8B98(&qword_1EBBEB080, &qword_1EBBEE020, v12, MEMORY[0x1E695BFB0]);

  v23 = sub_1BA4A4F98();
  v13 = MEMORY[0x1E695BED0];
  sub_1BA1E8B20(0, &unk_1EBBEE000, &qword_1EBBEA318, v11, MEMORY[0x1E695BED0]);
  v14 = MEMORY[0x1E69A3340];
  sub_1BA1E8ACC(0, &qword_1EBBEB070, MEMORY[0x1E69A3340]);
  sub_1BA1E8B98(&qword_1EBBEE010, &unk_1EBBEE000, v13, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();

  sub_1BA1E8BFC(&unk_1EBBEE030, sub_1BA0906F8);
  v15 = sub_1BA4A4F98();

  (*(v7 + 8))(v10, v6);
  v23 = v15;
  sub_1BA1E8B20(0, &unk_1EBBEDFE0, &qword_1EBBEB070, v14, v13);
  sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  sub_1BA090668();
  v16 = v20;
  sub_1BA4A4FE8();
  sub_1BA1E8BFC(&qword_1EBBEB088, sub_1BA090588);
  v17 = v21;
  v18 = sub_1BA4A4F98();

  (*(v22 + 8))(v16, v17);
  return v18;
}

void sub_1BA1E6008(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *a1;
  *(v3 + v4) = *a1;
  v7 = v6;
}

id sub_1BA1E6070()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA1E60C4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

double sub_1BA1E6184(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA1E61EC()
{
  swift_beginAccess();

  return result;
}

double sub_1BA1E6234(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

char *SharedProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:profileGradientsProvider:pinnedContentManager:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BA1E87F4(a1, a2, a3, a4);

  return v10;
}

char *SharedProfileOverviewViewController.init(healthStore:healthExperienceStore:profileGradientsProvider:pinnedContentManager:)(void *a1, void *a2, void *a3, void *a4)
{
  v6 = sub_1BA1E87F4(a1, a2, a3, a4);

  return v6;
}

id sub_1BA1E6588()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SharedProfileOverviewViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  result = [v0 collectionView];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

    v11[4] = sub_1BA1E6D34();
    v5 = 0;
    v11[5] = sub_1B9F11914();
    v10 = MEMORY[0x1E69E7CC0];
    while (v5 != 2)
    {
      v6 = v11[v5++ + 4];
      if (v6)
      {
        v7 = v6;
        MEMORY[0x1BFAF1510]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
      }
    }

    sub_1BA1E8ACC(0, &qword_1EDC5E510, sub_1BA1E8C50);
    swift_arrayDestroy();
    sub_1BA17A294();
    sub_1BA17B6CC();
    v8 = [v1 navigationItem];
    sub_1BA1E8C50();
    v9 = sub_1BA4A6AE8();

    [v8 setRightBarButtonItems_];

    return sub_1BA17D748();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA1E67C4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SharedProfileOverviewViewController();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 contentOffset];
  v4 = v3;

  v5 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v6 = *&v0[v5];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;

  v11 = [v0 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v4 > 0.0)
  {
    v13 = -v4;
  }

  else
  {
    v13 = -0.0;
  }

  [v11 bounds];
  v15 = v14;

  [v6 setFrame_];
}

id sub_1BA1E6A20(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SharedProfileOverviewViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F7BC(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!v4)
  {
    return sub_1BA17D748();
  }

  type metadata accessor for ProfileNavigationBarView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return sub_1BA17D748();
  }

  v6 = v5;
  v7 = v4;
  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    sub_1BA17C3C8();
    v11 = v10;
    [v9 contentOffset];
    v13 = v12;
    [v9 adjustedContentInset];
    v15 = v14;

    if (v11 >= v13 + v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }

    [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
    if (v16 == v17)
    {
    }

    else
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v16;
      v19 = objc_opt_self();
      aBlock[4] = sub_1BA090900;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_49;
      v20 = _Block_copy(aBlock);
      v21 = v7;

      [v19 animateWithDuration:v20 animations:0.2];

      _Block_release(v20);
    }

    return sub_1BA17D748();
  }

  __break(1u);
  return result;
}

id sub_1BA1E6D34()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = type metadata accessor for SharedProfileOverviewViewController();
  v13[3] = v1;
  v13[0] = v0;
  v2 = v0;
  v3 = sub_1BA4A6758();

  if (v1)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v13, v1);
    v5 = *(v1 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4, v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1BA4A8328();
    (*(v5 + 8))(v8, v1);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v11 = [v10 initWithTitle:v3 style:0 target:v9 action:{sel_optionsButtonTapped_, v13[0]}];

  swift_unknownObjectRelease();
  return v11;
}

void sub_1BA1E6F58()
{
  v1 = v0;
  v2 = sub_1BA4A3678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1E8ACC(0, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = sub_1BA4A33C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v17 = [*&v1[v16] profileIdentifier];

  sub_1BA0CE620(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BA1E8C9C(v10, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_1BA4A2AB8();
    (*(v12 + 8))(v15, v11);
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69A2C30], v2);
  v18 = v17;
  v19 = sub_1BA4A35B8();

  (*(v3 + 8))(v6, v2);
  [v1 setUserActivity_];
}

id sub_1BA1E7298(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v72 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v70 - v7;
  sub_1BA1E8ACC(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v70 - v11;
  v13 = sub_1BA4A3678();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v70 - v21;
  v76 = a1;
  v23 = [a1 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BA1E8C9C(v12, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    sub_1BA4A3E48();
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v83[0] = v27;
      *v26 = 136446210;
      *&v90[0] = ObjectType;
      swift_getMetatypeMetadata();
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, v83);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1B9F07000, v24, v25, "[%{public}s] user activity passed in does not have a valid activity type", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v74 + 8))(v8, v75);
    v32 = v76;
    v31 = v77;
    v33 = type metadata accessor for SharedProfileOverviewViewController();
    v95.receiver = v31;
    v34 = &v95;
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    (*(v14 + 16))(v17, v22, v13);
    v35 = (*(v14 + 88))(v17, v13);
    if (v35 == *MEMORY[0x1E69A2C68])
    {
      v71 = v22;
      v36 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
      v37 = v77;
      swift_beginAccess();
      v38 = *&v37[v36];
      UIViewController.resolvedHealthExperienceStore.getter(v90);
      UIViewController.resolvedPresentation.getter(&v80);
      v39 = v80;
      v40 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
      *&v40[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables] = MEMORY[0x1E69E7CD0];
      *&v40[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] = v38;
      sub_1B9F0A534(v90, &v40[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore]);
      LOBYTE(v83[0]) = v39;
      v41 = Presentation.description.getter();
      v42 = &v40[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance];
      *v42 = v41;
      v42[1] = v43;
      sub_1B9F0A534(v90, v83);
      type metadata accessor for AllTrendsDataSource(0);
      v75 = swift_allocObject();
      sub_1B9F0A534(v83, v93);
      LOBYTE(v78) = v39;
      type metadata accessor for AllTrendsHeaderDataSource(0);
      swift_allocObject();
      v44 = v38;
      v45 = sub_1BA297AC0(v44, v93, &v78);

      sub_1B9F0A534(v83, v93);
      type metadata accessor for AllTrendsSectionedDataSource(0);
      swift_allocObject();
      v46 = v44;
      v47 = sub_1BA296558(v46, v93, MEMORY[0x1E69E7CC0]);
      type metadata accessor for NoDataDataSource(0);
      swift_allocObject();

      v48 = NoDataDataSource.init()();
      sub_1BA1E8DB4(0);
      swift_allocObject();
      v50 = sub_1BA063C54(v49, v47, v48);

      swift_beginAccess();
      v50[5] = sub_1BA29613C;
      v50[6] = 0;

      sub_1B9F1DEA0(0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1BA4B5460;
      *(v51 + 32) = v45;
      *(v51 + 40) = &protocol witness table for MutableArrayDataSource;
      *(v51 + 48) = v50;
      *(v51 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
      v52 = CompoundSectionedDataSource.init(_:)(v51);

      __swift_destroy_boxed_opaque_existential_1(v83);
      *&v40[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource] = v52;

      v54 = CompoundDataSourceCollectionViewController.init(dataSource:)(v53);

      __swift_destroy_boxed_opaque_existential_1(v90);
      v55 = [v37 navigationController];
      if (v55)
      {
        v56 = v55;
        [v55 pushViewController:v54 animated:0];
      }

      v32 = v76;
      [v54 restoreUserActivityState_];
    }

    else
    {
      if (v35 != *MEMORY[0x1E69A2C00])
      {
        v63 = *(v14 + 8);
        v63(v22, v13);
        v63(v17, v13);
        v33 = type metadata accessor for SharedProfileOverviewViewController();
        v32 = v76;
        v94 = v77;
        v34 = &v94;
        goto LABEL_19;
      }

      v71 = v22;
      v57 = v77;
      UIViewController.resolvedHealthExperienceStore.getter(v93);
      v58 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
      swift_beginAccess();
      v59 = *&v57[v58];
      v60 = [v59 profileIdentifier];
      LOBYTE(v83[0]) = 15;
      v61 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v60, v83);

      UIViewController.resolvedPinnedContentManager.getter(v89);
      sub_1B9F0A534(v93, v83);
      *(&v84 + 1) = v59;
      LOBYTE(v85) = v61;
      sub_1BA4A2488();
      swift_allocObject();
      v62 = v59;
      *(&v85 + 1) = sub_1BA4A2468();
      sub_1BA10F7B4(v89, &v78);
      v32 = v76;
      if (v79)
      {

        sub_1BA10F728(v89);
        __swift_destroy_boxed_opaque_existential_1(v93);
        sub_1B9F1134C(&v78, &v80);
      }

      else
      {
        v64 = sub_1BA4A22B8();
        v65 = sub_1BA4A22A8();
        v81 = v64;
        v82 = MEMORY[0x1E69A3CF8];
        *&v80 = v65;
        sub_1BA10F728(v89);
        __swift_destroy_boxed_opaque_existential_1(v93);
        if (v79)
        {
          sub_1BA10F728(&v78);
        }
      }

      sub_1B9F1134C(&v80, v86);
      v88 = 0;
      v90[4] = v86[0];
      v90[5] = v86[1];
      v90[0] = v83[0];
      v90[1] = v83[1];
      v90[2] = v84;
      v90[3] = v85;
      v91 = 0;
      v90[6] = v87;
      v66 = HKTDataTypeDetailFactory.createViewController(userActivity:context:)(v32, v90);
      v37 = v77;
      v67 = [v77 navigationController];
      if (v67)
      {
        v68 = v67;
        [v67 pushViewController:v66 animated:0];
      }

      [v66 restoreUserActivityState_];

      sub_1BA114E30(v90);
    }

    (*(v14 + 8))(v71, v13);
    v33 = type metadata accessor for SharedProfileOverviewViewController();
    v92 = v37;
    v34 = &v92;
  }

LABEL_19:
  v34->super_class = v33;
  return [(objc_super *)v34 restoreUserActivityState:v32, v70];
}

id SharedProfileOverviewViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA1E7ED0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthExperienceStore));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_pinnedContentManager));

  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientColorProvider));
}

id SharedProfileOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedProfileOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1E8038@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

id sub_1BA1E8090()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

uint64_t sub_1BA1E80E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_pinnedContentManager;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a1);
}

uint64_t sub_1BA1E81A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

void sub_1BA1E8200()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1BA1E8ACC(0, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v37 - v9 + 16;
  v11 = sub_1BA4A33C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v37 - v18 + 16;

  sub_1BA0CE620(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BA1E8C9C(v10, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
    sub_1BA4A3DD8();
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v22 = 136315138;
      v37[0] = ObjectType;
      swift_getMetatypeMetadata();
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v38);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1B9F07000, v20, v21, "[%s] could not find associated profile information", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    v27 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
    swift_beginAccess();
    v28 = *&v0[v27];
    v29 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthExperienceStore;
    swift_beginAccess();
    sub_1B9F0A534(v1 + v29, v37);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v12 + 16))(v15, v19, v11);
    v31 = v28;
    v32 = sub_1BA078438(v31, v37, v15, sub_1BA1E9498, v30);

    v33 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
    v34 = [v1 navigationController];
    if (v34)
    {
      v35 = v34;
      [v34 presentViewController:v33 animated:1 completion:0];

      (*(v12 + 8))(v19, v11);
    }

    else
    {
      (*(v12 + 8))(v19, v11);
    }
  }
}

void sub_1BA1E86C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v3 presentedViewController];
    if (v4)
    {

      [v3 dismissViewControllerAnimated:1 completion:0];
    }

    v5 = [v3 navigationController];

    if (v5)
    {
    }
  }
}

char *sub_1BA1E87F4(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation) = 8;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView) = 0;
  v11 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber) = 0;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore) = a1;
  sub_1B9F0A534(a2, v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthExperienceStore);
  v12 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientColorProvider);
  v12[3] = type metadata accessor for ProfileGradientsProvider();
  v12[4] = &protocol witness table for ProfileGradientsProvider;
  *v12 = a3;
  sub_1B9F0A534(a4, v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_pinnedContentManager);
  v13 = a1;
  v14 = a3;
  v15 = [v13 profileIdentifier];
  v16 = [v15 type];

  if (v16 == 1)
  {
    swift_beginAccess();
    *(v5 + v10) = 9;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v17 = sub_1BA4A1B68();
  sub_1B9F0A534(a2, v25);
  type metadata accessor for SharedProfileOverviewDataSource(0);
  swift_allocObject();
  v18 = sub_1BA4534BC(v17, v13, v25);

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_sharedProfileOverviewDataSource) = v18;

  v20 = CompoundDataSourceCollectionViewController.init(dataSource:)(v19);
  v21 = qword_1EDC5E100;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v23 = sub_1BA4A6758();

  [v22 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

void sub_1BA1E8ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA1E8B20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA1E8ACC(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA1E8B98(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA1E8B20(255, a2, &qword_1EBBEA318, MEMORY[0x1E69A3430], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA1E8BFC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_1BA1E8C50()
{
  result = qword_1EDC6B600;
  if (!qword_1EDC6B600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B600);
  }

  return result;
}

uint64_t sub_1BA1E8C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA1E8ACC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA1E8CF8()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation) = 8;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA1E8DB4(uint64_t a1)
{
  if (!qword_1EBBEE058)
  {
    v4[0] = type metadata accessor for AllTrendsSectionedDataSource(255);
    v4[1] = type metadata accessor for NoDataDataSource(255);
    v4[2] = &protocol witness table for CompoundSectionedDataSource;
    v4[3] = &protocol witness table for MutableArrayDataSource;
    v2 = type metadata accessor for PrimarySecondaryDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEE058);
    }
  }
}

uint64_t keypath_get_2Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B9F0A534(v4 + v5, a3);
}

void *sub_1BA1E94B4()
{
  sub_1BA0C6900(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A7938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A79A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA0FF550();
  sub_1BA4A7988();
  (*(v5 + 104))(v8, *MEMORY[0x1E69DC560], v4);
  sub_1BA4A7828();
  v15 = objc_opt_self();
  v16 = [v15 systemBackgroundColor];
  v17 = [v16 colorWithAlphaComponent_];

  sub_1BA4A78E8();
  v18 = [v15 systemBlueColor];
  sub_1BA4A78F8();
  (*(v10 + 16))(v3, v13, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  sub_1BA4A79D8();
  [v14 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v19 = [v14 titleLabel];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB970], 0, 0, 0, 0, 1);
    [v20 setFont_];
  }

  (*(v10 + 8))(v13, v9);
  return v14;
}

void sub_1BA1E97C8()
{
  v1 = objc_opt_self();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5890;
  v3 = sub_1BA0FD5B4();
  v4 = [v3 topAnchor];

  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:10.0];
  *(v2 + 32) = v7;
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v11 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] bottomAnchor];
  v12 = [v9 constraintEqualToAnchor_];

  *(v2 + 40) = v12;
  v13 = [*&v0[v10] centerYAnchor];
  v14 = [v0 contentView];
  v15 = [v14 centerYAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v2 + 48) = v16;
  v17 = [*&v0[v10] centerXAnchor];
  v18 = [v0 contentView];
  v19 = [v18 centerXAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v2 + 56) = v20;
  sub_1B9F740B0();
  v21 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

id CardStackMoreButtonCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CardStackMoreButtonCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CardStackMoreButtonCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CardStackMoreButtonCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardStackMoreButtonCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA1E9CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BA1E9D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1BA1E9DF0(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1BA4A5AD8();
  __break(1u);
}

id sub_1BA1E9E30(uint64_t a1)
{
  v1 = (*(*(a1 + 24) + 8))(*(a1 + 16));
  v2 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];

  return v2;
}

uint64_t sub_1BA1E9EB8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BA1E9F28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1BA1EA068(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id HealthExperienceStoreIncrementalCoreSpotlightDelegate.__allocating_init(forStoreWith:coordinator:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initForStoreWithDescription:a1 coordinator:a2];

  return v5;
}

id HealthExperienceStoreIncrementalCoreSpotlightDelegate.init(forStoreWith:coordinator:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate(0);
  v5 = objc_msgSendSuper2(&v7, sel_initForStoreWithDescription_coordinator_, a1, a2);

  return v5;
}

id HealthExperienceStoreIncrementalCoreSpotlightDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PrimarySecondaryDataSource.identifier.getter()
{
  v0 = sub_1B9F1E1B4();

  return v0;
}

__n128 sub_1BA1EA404@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *(a2 + a3 - 16);
  v11 = *(a2 + a3 - 32);
  v5 = (*(**a1 + 176))();
  v7 = v6;
  v8 = swift_allocObject();
  result = v10;
  *(v8 + 16) = v11;
  *(v8 + 32) = v10;
  *(v8 + 48) = v5;
  *(v8 + 56) = v7;
  *a4 = sub_1BA1EB2EC;
  a4[1] = v8;
  return result;
}

uint64_t sub_1BA1EA4A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v9 = *(v5 - 16);
  *(v8 + 16) = *(v5 - 32);
  *(v8 + 32) = v9;
  *(v8 + 48) = v7;
  *(v8 + 56) = v6;
  v10 = *(**a2 + 184);

  return v10(sub_1BA1EB2A8, v8);
}

uint64_t sub_1BA1EA598()
{
  sub_1B9F39CEC();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA1EA5C0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA1EA608()
{
  sub_1B9F40328();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA1EA630(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
  return swift_unknownObjectRelease();
}

void sub_1BA1EA678(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v5) = a4;
  v8 = *v4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6F88();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v5;
    v5 = v18;
    *&v30[0] = v18;
    *v17 = 136315394;
    v19 = sub_1BA4A85D8();
    v28 = v10;
    v21 = sub_1B9F0B82C(v19, v20, v30);
    v27 = v9;
    v22 = v8;
    v23 = v21;

    *(v17 + 4) = v23;
    v8 = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1B9F0B82C(v26, a2, v30);
    _os_log_impl(&dword_1B9F07000, v14, v15, "%s SanpshotDidChange, dataSourceID: %s", v17, 0x16u);
    swift_arrayDestroy();
    v24 = v5;
    LOBYTE(v5) = v29;
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    (*(v28 + 8))(v13, v27);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v25 = *(v8 + 96);
  v30[0] = *(v8 + 80);
  v30[1] = v25;
  type metadata accessor for PrimarySecondaryDataSource(0, v30);
  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(v5 & 1);
}

uint64_t sub_1BA1EA900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;
  sub_1BA4A45C8();

  sub_1BA1EA678(v12, v14, v15, a5);

  return (*(v8 + 8))(v11, v7);
}

uint64_t PrimarySecondaryDataSource.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PrimarySecondaryDataSource.__deallocating_deinit()
{
  PrimarySecondaryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t PrimarySecondaryDataSource.description.getter()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4F3B60);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4F3B80);
  swift_beginAccess();
  sub_1BA4A8308();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4F3BA0);
  swift_beginAccess();
  sub_1BA4A8308();
  MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA4F3BC0);
  v0 = sub_1B9F1E1F0();
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1BFAF1350](v2, v3);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

Swift::Bool __swiftcall PrimarySecondaryDataSource.isReorderableItem(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v9 = sub_1B9F1E2C4();
  v10 = v3;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v8, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    *&v8[0] = countAndFlagsBits;
    *(&v8[0] + 1) = object;
    v6 = (*(v5 + 40))(v8, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t PrimarySecondaryDataSource.canMoveItem(from:to:)(uint64_t a1, uint64_t a2)
{
  v10 = sub_1B9F1E2C4();
  v11 = v4;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v9, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 56))(a1, a2, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Void __swiftcall PrimarySecondaryDataSource.applyReorder(sectionTransactions:)(Swift::OpaquePointer sectionTransactions)
{
  v6 = sub_1B9F1E2C4();
  v7 = v2;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v5, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 48))(sectionTransactions._rawValue, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }
}

uint64_t sub_1BA1EAFD0(uint64_t a1)
{
  sub_1BA1EB02C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA1EB02C(uint64_t a1)
{
  if (!qword_1EBBEBD40)
  {
    sub_1B9F0D9AC(255, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource, 1);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBD40);
    }
  }
}

uint64_t keypath_get_6Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  *a2 = a1();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA1EB2A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_1BA1EB2EC@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 48))(*a1, *a2);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1BA1EB328()
{
  result = qword_1EBBEE1A0;
  if (!qword_1EBBEE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE1A0);
  }

  return result;
}

double sub_1BA1EB37C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI33ContentConfigurationProviderErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BA1EB3C0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_1BA1EB3F4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t (*static AllHealthDataDataSource.cloudSyncStateObserverFactory.getter())()
{
  swift_beginAccess();
  v0 = off_1EE8FEEC8;

  return v0;
}

double static AllHealthDataDataSource.cloudSyncStateObserverFactory.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_1EE8FEEC8 = a1;
  qword_1EE8FEED0 = a2;

  return result;
}

double sub_1BA1EB53C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = off_1EE8FEEC8;
  v2 = qword_1EE8FEED0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1BA0FFE84;
  a1[1] = v4;

  return result;
}

double sub_1BA1EB5C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  off_1EE8FEEC8 = sub_1BA0FFE44;
  qword_1EE8FEED0 = v3;

  return result;
}

uint64_t sub_1BA1EB650@<X0>(uint64_t a1@<X8>)
{
  sub_1BA1ED6E4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource____lazy_storage___firstRestoreState;
  swift_beginAccess();
  sub_1BA1ED568(v1 + v11, v10);
  sub_1BA043790(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v10, 1, v12) != 1)
  {
    return (*(v14 + 32))(a1, v10, v13);
  }

  sub_1BA1ED334(v10);
  v15 = sub_1BA4A2D28();
  v16 = MEMORY[0x1BFAED490](a1, v15);
  v18 = v17;
  v19 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource_cloudSyncStateObserver);
  v20 = *MEMORY[0x1E69E7D40] & *v19;
  v25 = a1;
  v21 = *(v20 + 160);

  v22 = v21(v16, v18);
  (*((*MEMORY[0x1E69E7D40] & *v19) + 0x118))(v22);

  (*(v14 + 16))(v6, v25, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  swift_beginAccess();
  sub_1BA043A00(v6, v1 + v11);
  return swift_endAccess();
}

uint64_t AllHealthDataDataSource.__allocating_init(healthStore:healthExperienceStore:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1BA1ECE48(a1, a2);

  return v4;
}

uint64_t AllHealthDataDataSource.init(healthStore:healthExperienceStore:)(void *a1, void *a2)
{
  v3 = sub_1BA1ECE48(a1, a2);

  return v3;
}

double sub_1BA1EB9A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA1EBA00(a1);
  }

  return result;
}

void sub_1BA1EBA00(uint64_t a1)
{
  v2 = sub_1BA4A2D28();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  if (sub_1BA4A2D18())
  {
    sub_1BA1ECA34(1);
    sub_1BA1EC7FC(0);
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    (*(v3 + 8))(v7, v2);
    sub_1BA1ECA34(0);
    sub_1BA1EC7FC(1);
  }
}

double sub_1BA1EBB90()
{
  sub_1BA1ED334(v0 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource____lazy_storage___firstRestoreState);

  return result;
}

uint64_t AllHealthDataDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BA1ED334(v0 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource____lazy_storage___firstRestoreState);

  return v0;
}

uint64_t AllHealthDataDataSource.__deallocating_deinit()
{
  AllHealthDataDataSource.deinit();

  return swift_deallocClassInstance();
}

void *sub_1BA1EBD38()
{
  v0 = sub_1BA4A1798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_1BA4A1318();
  v8 = v7;

  v21 = type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();
  v9 = sub_1BA4A6808();
  v11 = v10;
  v12 = MEMORY[0x1E69E6F90];
  sub_1BA1ED6E4(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v20 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA1ED6E4(0, &qword_1EDC5DCA0, sub_1B9F32244, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v20;
  *(v14 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
  *(v14 + 64) = sub_1BA02090C();
  v15 = swift_allocObject();
  *(v14 + 32) = v15;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = 1;
  *(inited + 32) = v14;
  v21 = 0x3C53447961727241;
  v22 = 0xE800000000000000;
  sub_1BA4A1788();
  v16 = sub_1BA4A1748();
  v18 = v17;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x1BFAF1350](v16, v18);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return ArrayDataSource.init(_:identifier:)(inited, v21, v22);
}

uint64_t sub_1BA1EC060()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BA1EC154(char a1)
{
  v8 = type metadata accessor for SharingOnboardingDataSource(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v3 != (a1 & 1))
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    aBlock[4] = sub_1BA1ED608;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_31_2;
    v6 = _Block_copy(aBlock);

    v7 = v4;

    [v7 notifyObservers_];
    _Block_release(v6);
  }
}

void sub_1BA1EC38C(char a1)
{
  v8 = type metadata accessor for SharingWithYouLearnMoreDataSource(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v3 != (a1 & 1))
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    aBlock[4] = sub_1BA1ED5FC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_25_0;
    v6 = _Block_copy(aBlock);

    v7 = v4;

    [v7 notifyObservers_];
    _Block_release(v6);
  }
}

void sub_1BA1EC5C4(char a1)
{
  v8 = type metadata accessor for MutableArrayDataSourceWithLayout(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v3 != (a1 & 1))
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    aBlock[4] = sub_1BA1ED614;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_37_1;
    v6 = _Block_copy(aBlock);

    v7 = v4;

    [v7 notifyObservers_];
    _Block_release(v6);
  }
}

void sub_1BA1EC7FC(char a1)
{
  sub_1BA043BB8(0);
  v4 = v3;
  v15 = v3;
  swift_getKeyPath();
  v14 = v4;
  swift_getKeyPath();
  sub_1BA4A4F28();

  v5 = LOBYTE(aBlock[0]);
  v13 = v4;
  swift_getKeyPath();
  v12 = v4;
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  v11 = v4;
  swift_getKeyPath();
  v10 = v4;
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v5 != (a1 & 1))
  {
    swift_beginAccess();
    v6 = *(v1 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = 1;
    aBlock[4] = sub_1BA1ED550;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_50;
    v8 = _Block_copy(aBlock);

    v9 = v6;

    [v9 notifyObservers_];
    _Block_release(v8);
  }
}

void sub_1BA1ECA34(char a1)
{
  v8 = type metadata accessor for CloudSyncAllHealthDataDataSource(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v3 != (a1 & 1))
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    aBlock[4] = sub_1BA1ED55C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_19_0;
    v6 = _Block_copy(aBlock);

    v7 = v4;

    [v7 notifyObservers_];
    _Block_release(v6);
  }
}

id sub_1BA1ECC6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v25[0] = xmmword_1EDC6D388;
  v25[1] = xmmword_1EDC6D398;
  v25[2] = xmmword_1EDC6D3A8;
  v25[3] = xmmword_1EDC6D3B8;
  v25[4] = xmmword_1EDC6D3C8;
  v25[5] = unk_1EDC6D3D8;
  v25[6] = xmmword_1EDC6D3E8;
  v25[7] = unk_1EDC6D3F8;
  v2 = *(&xmmword_1EDC6D388 + 1);
  v3 = xmmword_1EDC6D388;
  v4 = xmmword_1EDC6D398;
  v6 = xmmword_1EDC6D3A8;
  v5 = xmmword_1EDC6D3B8;
  v24 = qword_1EDC6D400;
  v22 = *&qword_1EDC6D3E0;
  v23 = *(&xmmword_1EDC6D3E8 + 8);
  v20 = *(&xmmword_1EDC6D3B8 + 8);
  v21 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v25, &v11);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = sub_1BA4A7528();
  if (v7)
  {
    v9 = *(&v25[0] + 1);
    v2 = [objc_opt_self() estimatedDimension_];
  }

  sub_1B9F1DA18(*(&v4 + 1), v6, *(&v6 + 1), v5);
  sub_1BA0117AC();
  *&v11 = v3;
  v13 = 0u;
  v14 = 0u;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  *(&v11 + 1) = v2;
  v12 = v4;
  v19 = v24;
  v15 = v20;
  return sub_1B9F293A8(&v11);
}

uint64_t sub_1BA1ECE48(void *a1, void *a2)
{
  v3 = v2;
  sub_1BA043790(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v41 - v12;
  v41 = v14;
  v15 = *(v14 + 56);
  v44 = v16;
  v15(v2 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource____lazy_storage___firstRestoreState, 1, 1, v11);
  swift_beginAccess();
  v17 = off_1EE8FEEC8;

  v18 = (v17)(a1);

  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource_cloudSyncStateObserver) = v18;
  v43 = a2;
  sub_1B9F0A534(a2, v45);
  v19 = a1;
  v20 = sub_1BA4A3BB8();
  type metadata accessor for SnippetAllDataDataSource(0);
  swift_allocObject();
  v21 = sub_1BA28ED0C(v19, v45, v20, MEMORY[0x1E69E7CC0]);

  type metadata accessor for NoDataDataSource(0);
  v22 = qword_1EBBE8368;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1BA459ADC(qword_1EBBEC0D0, *algn_1EBBEC0D8);
  sub_1BA043BB8(0);
  swift_allocObject();
  sub_1BA063C54(v24, v21, v23);

  sub_1BA1ED620(0, &qword_1EBBEA9A8, sub_1BA043BB8, &protocol witness table for PrimarySecondaryDataSource<A, B>);
  swift_allocObject();

  v26 = sub_1BA2AE338(v25, 1);

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource_snippetsCompoundDataSource) = v26;

  v27 = sub_1B9F1E00C();
  v28 = *(v27 + 16);
  if (v28 >= *(v27 + 24) >> 1)
  {
    v27 = sub_1B9F1E00C();
  }

  *(v27 + 16) = v28 + 1;
  v29 = v27 + 16 * v28;
  *(v29 + 32) = v26;
  *(v29 + 40) = &protocol witness table for HideableDataSource<A>;
  type metadata accessor for CloudSyncAllHealthDataDataSource(0);
  swift_allocObject();
  v30 = sub_1BA1EBD38();
  sub_1BA1ED620(0, &unk_1EBBEE1D0, type metadata accessor for CloudSyncAllHealthDataDataSource, &protocol witness table for ArrayDataSource);
  swift_allocObject();
  v31 = sub_1BA2AE79C(v30, 0);

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource_cloudSyncDataSource) = v31;
  v33 = *(v27 + 16);
  v32 = *(v27 + 24);

  if (v33 >= v32 >> 1)
  {
    v27 = sub_1B9F1E00C();
  }

  *(v27 + 16) = v33 + 1;
  v34 = v27 + 16 * v33;
  *(v34 + 32) = v31;
  *(v34 + 40) = &protocol witness table for HideableDataSource<A>;
  v35 = CompoundSectionedDataSource.init(_:)(v27);

  v36 = v42;
  sub_1BA1EB650(v42);
  v37 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();
  sub_1BA1ED68C();
  v38 = v44;
  sub_1BA4A2D38();

  __swift_destroy_boxed_opaque_existential_1(v43);
  v39 = *(v41 + 8);
  v39(v36, v38);
  v39(v13, v38);
  return v35;
}

uint64_t sub_1BA1ED334(uint64_t a1)
{
  sub_1BA1ED6E4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA1ED3E8(uint64_t a1)
{
  sub_1BA1ED6E4(319, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA1ED568(uint64_t a1, uint64_t a2)
{
  sub_1BA1ED6E4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA1ED620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for HideableDataSource(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA1ED68C()
{
  result = qword_1EBBEA9B0;
  if (!qword_1EBBEA9B0)
  {
    sub_1BA043790(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA9B0);
  }

  return result;
}

void sub_1BA1ED6E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t HealthChecklistStagedFeatureStatusFeedItemProvider.considerOnboarded(featureStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v26 = sub_1BA4A3908();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3938();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A38E8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v16);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x1E69A3888])
  {
    (*(v9 + 96))(v12, v8);
    (*(v14 + 32))(v18, v12, v13);
    sub_1BA4A38A8();
    v19 = (*(v25 + 48))(v24);
    v20 = sub_1BA4A3918();

    (*(v4 + 8))(v7, v26);
    v21 = sub_1BA4A76B8();

    (*(v14 + 8))(v18, v13);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t HealthChecklistStagedFeatureStatusFeedItemProvider.makeActionHandlerUserData(for:featureStatus:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v7 = sub_1BA4A3EA8();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v45[1] = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v46 = v45 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, AssociatedTypeWitness);
  v47 = v45 - v14;
  v51 = v15;
  v16 = sub_1BA4A7AA8();
  v53 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = v45 - v23;
  if ((*(a4 + 64))(a2, a3, a4, v22))
  {
    v25 = (*(a4 + 48))(a3, a4);
    v26 = sub_1BA4A3948();

    (*(a4 + 88))(v26, v50, a2, a3, a4);
  }

  else
  {
    v27 = (*(a4 + 40))(a3, a4);
    v26 = sub_1BA4A3948();

    (*(a4 + 96))(v26, v50, a2, a3, a4);
  }

  v28 = v53;
  v29 = v16;
  (*(v53 + 16))(v19, v24, v16);
  v31 = v51;
  v30 = v52;
  if ((*(v52 + 48))(v19, 1, v51) == 1)
  {
    v50 = v24;
    v32 = *(v28 + 8);
    v32(v19, v29);
    v33 = v46;
    (*(a4 + 56))(a3, a4);
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      *v36 = 136446210;
      v38 = sub_1BA4A85D8();
      v40 = v33;
      v41 = sub_1B9F0B82C(v38, v39, &v54);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%{public}s] No user data specified", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);

      (*(v48 + 8))(v40, v49);
    }

    else
    {

      (*(v48 + 8))(v33, v49);
    }

    v32(v50, v29);
    return 0;
  }

  else
  {
    v42 = v47;
    (*(v30 + 32))();
    sub_1BA4A0EE8();
    swift_allocObject();
    sub_1BA4A0ED8();
    swift_getAssociatedConformanceWitness();
    v43 = sub_1BA4A0EC8();

    (*(v30 + 8))(v42, v31);
    (*(v53 + 8))(v24, v29);
    return v43;
  }
}

void HealthChecklistStagedFeatureStatusFeedItemProvider.makeConfiguration(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 64))())
  {
    v6 = (*(a3 + 48))(a2, a3);
    v8 = sub_1BA4A3948();

    (*(a3 + 72))(v8, a1, a2, a3);
  }

  else
  {
    v7 = (*(a3 + 40))(a2, a3);
    v8 = sub_1BA4A3948();

    (*(a3 + 80))(v8, a1, a2, a3);
  }
}

uint64_t sub_1BA1EE450()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEE1E0 = result;
  *algn_1EBBEE1E8 = v1;
  return result;
}

uint64_t sub_1BA1EE4E8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEE1F0 = result;
  *algn_1EBBEE1F8 = v1;
  return result;
}

void sub_1BA1EE580()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC84A30;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  qword_1EBBEE200 = v2;
}

uint64_t sub_1BA1EE640(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      v12[8] = 0;
      *&v12[9] = 0xE000000000000000;
      MEMORY[0x1BFAF1350](0x20726F727265, 0xE600000000000000);
      *v12 = a1 & 1;
      sub_1BA4A7FB8();
      return *&v12[1];
    }

    sub_1BA4A7DF8();

    *&v12[1] = 0xD000000000000012;
    *&v12[9] = 0x80000001BA4F3F20;
    v2 = [a1 description];
LABEL_17:
    v7 = v2;
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;

    MEMORY[0x1BFAF1350](v8, v10);

    return *&v12[1];
  }

  if (a2 == 2)
  {
    strcpy(&v12[1], "validating ");
    *&v12[13] = -352321536;
    v2 = [a1 description];
    goto LABEL_17;
  }

  if (a2 == 3)
  {
    strcpy(&v12[1], "notReachable ");
    *&v12[15] = -4864;
    v2 = [a1 description];
    goto LABEL_17;
  }

  if (a1 > 3)
  {
    v11 = 1701736292;
    if (a1 == 6)
    {
      v11 = 0xD000000000000010;
    }

    if (a1 <= 5)
    {
      return 0xD000000000000013;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0x50676E69776F6873;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0x6D6F7250776F6873;
    }

    if (a1 <= 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }
}

void sub_1BA1EE8E0()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for SummarySharingSystemContactsPickerViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 startAnimating];
  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = objc_opt_self();
  sub_1B9F232F8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B7510;
  v5 = [v1 centerXAnchor];
  v6 = [v0 contentView];
  v7 = [v6 centerXAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v1 topAnchor];

  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:0.0];
  *(v4 + 40) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v13 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  v14 = [objc_opt_self() authorizationStatusForEntityType_];
  if (v14 > 4)
  {
    LOBYTE(v16) = 0;
    v15 = 1;
  }

  else
  {
    v15 = qword_1BA4C65F0[v14];
    v16 = 0x40404uLL >> (8 * v14);
  }

  v17 = &v0[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  v18 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  *v17 = v15;
  v19 = v17[8];
  v17[8] = v16;
  sub_1BA1F1484(v18, v19);
}

void sub_1BA1EEC70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v130 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v130, v3);
  v131 = (&v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v126 - v12;
  v14 = sub_1BA4A64F8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v18 = sub_1BA4A7308();
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v19 = sub_1BA4A6528();
  v20 = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v128 = v9;
  sub_1BA4A3E28();
  v21 = v1;
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FC8();

  v24 = os_log_type_enabled(v22, v23);
  v25 = &unk_1EBBEE000;
  v129 = ObjectType;
  if (v24)
  {
    v26 = swift_slowAlloc();
    v127 = v5;
    v27 = v26;
    v126 = swift_slowAlloc();
    aBlock = v126;
    *v27 = 136315394;
    v28 = sub_1BA4A85D8();
    v29 = v21;
    v31 = sub_1B9F0B82C(v28, v30, &aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
    v33 = v21[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state + 8];
    sub_1BA1F14F8(*&v29[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state], v29[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state + 8]);
    v34 = sub_1BA1EE640(v32, v33);
    v35 = v6;
    v37 = v36;
    LOBYTE(v36) = v33;
    v21 = v29;
    sub_1BA1F1484(v32, v36);
    v38 = sub_1B9F0B82C(v34, v37, &aBlock);

    *(v27 + 14) = v38;
    _os_log_impl(&dword_1B9F07000, v22, v23, "%s state nextState(%s)", v27, 0x16u);
    v39 = v126;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v39, -1, -1);
    v40 = v27;
    v5 = v127;
    MEMORY[0x1BFAF43A0](v40, -1, -1);

    v41 = v35;
    v25 = &unk_1EBBEE000;
  }

  else
  {

    v41 = v6;
  }

  v42 = *(v41 + 8);
  v42(v13, v5);
  v43 = &v21[v25[68]];
  v13 = *v43;
  v44 = v43[8];
  switch(v44)
  {
    case 1:
      v129 = v21;
      v43[8] = 2;
      sub_1BA1F14F8(v13, 1u);
      ObjectType = v13;
      v65 = [ObjectType phoneNumbers];
      v19 = sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
      v66 = sub_1BA4A6B08();

      v20 = v66;
      if (!(v66 >> 62))
      {
        v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_23;
      }

LABEL_52:
      v116 = v20;
      v67 = sub_1BA4A7CC8();
      v20 = v116;
LABEL_23:
      v127 = v13;
      v130 = ObjectType;
      if (v67)
      {
        v54 = v20;
        v128 = v19;
        aBlock = MEMORY[0x1E69E7CC0];
        p_aBlock = &aBlock;
        sub_1B9F1C360(0, v67 & ~(v67 >> 63), 0);
        if (v67 < 0)
        {
          __break(1u);
          goto LABEL_58;
        }

        v68 = 0;
        v13 = aBlock;
        v69 = v54;
        v131 = (v54 & 0xC000000000000001);
        v70 = v54;
        do
        {
          if (v131)
          {
            v71 = MEMORY[0x1BFAF2860](v68, v69);
          }

          else
          {
            v71 = *(v69 + 8 * v68 + 32);
          }

          v72 = v71;
          v73 = [v71 value];
          v74 = [v73 stringValue];

          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v75 = sub_1BA4A6818();
          v77 = v76;

          aBlock = v13;
          v79 = *(v13 + 2);
          v78 = *(v13 + 3);
          if (v79 >= v78 >> 1)
          {
            sub_1B9F1C360((v78 > 1), v79 + 1, 1);
            v13 = aBlock;
          }

          ++v68;
          *(v13 + 2) = v79 + 1;
          v80 = &v13[16 * v79];
          *(v80 + 4) = v75;
          *(v80 + 5) = v77;
          v69 = v70;
        }

        while (v67 != v68);

        ObjectType = v130;
      }

      else
      {

        v13 = MEMORY[0x1E69E7CC0];
      }

      v81 = [ObjectType emailAddresses];
      v82 = sub_1BA4A6B08();

      if (v82 >> 62)
      {
        v83 = sub_1BA4A7CC8();
        if (v83)
        {
LABEL_36:
          v54 = v82;
          aBlock = MEMORY[0x1E69E7CC0];
          p_aBlock = &aBlock;
          sub_1B9F1C360(0, v83 & ~(v83 >> 63), 0);
          if ((v83 & 0x8000000000000000) == 0)
          {
            v84 = 0;
            v85 = aBlock;
            v86 = v54;
            v131 = (v54 & 0xC000000000000001);
            v87 = v54;
            do
            {
              if (v131)
              {
                v88 = MEMORY[0x1BFAF2860](v84, v86);
              }

              else
              {
                v88 = *(v86 + 8 * v84 + 32);
              }

              v89 = v88;
              v90 = [v88 value];
              v91 = [v90 lowercaseString];

              v92 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v94 = v93;

              aBlock = v85;
              v96 = *(v85 + 16);
              v95 = *(v85 + 24);
              if (v96 >= v95 >> 1)
              {
                sub_1B9F1C360((v95 > 1), v96 + 1, 1);
                v85 = aBlock;
              }

              ++v84;
              *(v85 + 16) = v96 + 1;
              v97 = v85 + 16 * v96;
              *(v97 + 32) = v92;
              *(v97 + 40) = v94;
              v86 = v87;
            }

            while (v83 != v84);

            ObjectType = v130;
            goto LABEL_55;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      else
      {
        v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v83)
        {
          goto LABEL_36;
        }
      }

      v85 = MEMORY[0x1E69E7CC0];
LABEL_55:
      aBlock = v13;
      sub_1B9FE271C(v85);
      v117 = v129;
      v118 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
      v119 = *&v117[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_sharingStore];
      *&v117[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_sharingStore] = v118;
      v120 = v118;

      [v120 setDelegate_];
      v121 = sub_1BA4A6AE8();

      v122 = swift_allocObject();
      *(v122 + 16) = v117;
      *(v122 + 24) = ObjectType;
      v138 = sub_1BA1F1510;
      v139 = v122;
      aBlock = MEMORY[0x1E69E9820];
      v135 = 1107296256;
      v136 = sub_1BA454240;
      v137 = &block_descriptor_51;
      v123 = _Block_copy(&aBlock);
      v124 = v117;
      v125 = v127;
      sub_1BA1F14F8(v127, 1u);

      [v120 beginObservingReachabilityStatusForIdentifiers:v121 isInitialQuery:1 completion:v123];
      _Block_release(v123);

      sub_1BA1F1484(v125, 1u);
      sub_1BA1F1484(v125, 1u);
      return;
    case 3:
      *v43 = 5;
      v43[8] = 4;
      v60 = sub_1BA4A7A08();
      v61 = v131;
      *v131 = v60;
      *(v61 + 8) = v62;
      swift_storeEnumTagMultiPayload();
      v63 = swift_allocObject();
      *(v63 + 16) = v21;
      v64 = v21;
      sub_1BA0C6BA4(v64, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], sub_1BA1F1438, v63);

      sub_1BA1F1484(v13, 3u);
      sub_1BA1F149C(v61);
      break;
    case 4:
      if (v13 == 1)
      {
        *v43 = 2;
        v43[8] = 4;
        v104 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
        v105 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v138 = sub_1BA1F16B4;
        v139 = v105;
        aBlock = MEMORY[0x1E69E9820];
        v135 = 1107296256;
        v136 = sub_1BA454240;
        v137 = &block_descriptor_22_0;
        v106 = _Block_copy(&aBlock);

        [v104 requestAccessForEntityType:0 completionHandler:v106];
        _Block_release(v106);
      }

      else if (v13 == 3)
      {
        *v43 = 4;
        v43[8] = 4;
        v98 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
        [v98 setDelegate_];
        sub_1B9F232F8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_1BA4B5460;
        *(v99 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        *(v99 + 40) = v100;
        *(v99 + 48) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        *(v99 + 56) = v101;
        v102 = sub_1BA4A6AE8();

        [v98 setDisplayedPropertyKeys_];

        sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
        v103 = sub_1BA4A6EE8();
        [v98 setPredicateForEnablingContact_];

        [v21 presentViewController:v98 animated:1 completion:0];
      }

      else if (v13 == 6)
      {
        *v43 = 7;
        v43[8] = 4;
        v45 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthStore];
        sub_1B9F0A534(&v21[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthExperienceStore], &aBlock);
        v46 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_selectionFlowContext];
        v47 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController(0));
        v48 = v45;

        v49 = sub_1BA202D18(v48, &aBlock, v46);

        v13 = v49;
        v50 = [v13 navigationItem];
        [v50 setHidesBackButton_];

        v51 = [v21 navigationController];
        if (v51)
        {
          ObjectType = v51;
          v52 = [v51 viewControllers];
          sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
          p_aBlock = sub_1BA4A6B08();

          v54 = p_aBlock >> 62;
          if (!(p_aBlock >> 62))
          {
            if (*((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_14:
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (v54 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
              {
                p_aBlock = sub_1B9F2A568(p_aBlock);
              }

              v56 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v56)
              {
                v57 = v56 - 1;
                v58 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 8 * v57 + 0x20);
                *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) = v57;

                v133 = p_aBlock;
                MEMORY[0x1BFAF1510]();
                if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_19:
                  sub_1BA4A6BB8();
                  memset(v132, 0, sizeof(v132));
                  aBlock = 0;
                  v135 = 0;
                  v136 = 0;
                  v137 = 6;
                  LOBYTE(v138) = 3;

                  sub_1B9FEEC64(v129, v132, 1, &aBlock);

                  sub_1B9FF3BFC(aBlock, v135, v136, v137);
                  sub_1B9F23224(v132);
                  v59 = sub_1BA4A6AE8();

                  [ObjectType setViewControllers:v59 animated:1];

                  return;
                }

LABEL_62:
                sub_1BA4A6B68();
                goto LABEL_19;
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_59:
          if (sub_1BA4A7CC8())
          {
            goto LABEL_14;
          }

          goto LABEL_60;
        }

        v107 = v128;
        sub_1BA4A3E28();
        v108 = sub_1BA4A3E88();
        v109 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          aBlock = v111;
          *v110 = 136315138;
          v112 = sub_1BA4A85D8();
          v114 = sub_1B9F0B82C(v112, v113, &aBlock);

          *(v110 + 4) = v114;
          _os_log_impl(&dword_1B9F07000, v108, v109, "[%s] not sure how to push contact picker", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v111);
          MEMORY[0x1BFAF43A0](v111, -1, -1);
          MEMORY[0x1BFAF43A0](v110, -1, -1);

          v115 = v128;
        }

        else
        {

          v115 = v107;
        }

        v42(v115, v5);
      }

      break;
  }
}

void *sub_1BA1EFBC0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v16 = sub_1BA4A7308();
    v21 = v9;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a1 & 1;
    *(v18 + 24) = v15;
    aBlock[4] = sub_1BA1F16BC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_28_0;
    v19 = _Block_copy(aBlock);
    v20 = v15;

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F31478();
    sub_1B9F0A814(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v13, v8, v19);
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v21);
  }

  return result;
}

uint64_t sub_1BA1EFEB4(char a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1BA4A6478();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A64C8();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v16 = sub_1BA4A7308();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  aBlock[4] = sub_1BA1F1718;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_34_2;
  v18 = _Block_copy(aBlock);
  v19 = a3;
  v20 = a4;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A814(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v15, v11, v18);
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v23);
}

void sub_1BA1F017C(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = a2 + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state;
    v4 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state);
    *v3 = a3;
    v5 = *(v3 + 8);
    *(v3 + 8) = 3;
    v6 = a3;
    sub_1BA1F1484(v4, v5);
    sub_1BA1EEC70();
  }
}

id sub_1BA1F01E0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v13 = sub_1BA4A7308();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v14 = sub_1BA4A6528();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    [a1 dismissViewControllerAnimated:1 completion:0];
    v16 = [v2 presentingViewController];
    if (v16 && (v16, ([v2 isBeingDismissed] & 1) == 0))
    {
      return [v2 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_1BA4A3E28();
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        v21 = sub_1BA4A85D8();
        v23 = sub_1B9F0B82C(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] not sure how to dismiss contact picker", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA1F06E0(_BYTE *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state + 8] != 2)
  {
    return;
  }

  v5 = a2;
  v76 = &a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  v6 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v81 = v6;
  sub_1BA1F14F8(v6, 2u);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(v5 + 6) + 16 * v16;
    v4 = *v17;
    v18 = *(v17 + 8);
    v19 = *(*(v5 + 7) + 8 * v16);

    v20 = v19;
    v21 = [v20 integerValue];

    if (v21 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1BA27EE34(0, *(v13 + 2) + 1, 1, v13);
      }

      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      if (v23 >= v22 >> 1)
      {
        v13 = sub_1BA27EE34((v22 > 1), v23 + 1, 1, v13);
      }

      *(v13 + 2) = v23 + 1;
      v24 = &v13[16 * v23];
      *(v24 + 4) = v4;
      *(v24 + 5) = v18;
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v14;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v25 = *(v13 + 2);
  if (v25)
  {
    v26 = 0;
    v27 = v13 + 40;
    v75 = v25 - 1;
    v79 = MEMORY[0x1E69E7CC0];
    v4 = &selRef_createListViewController_;
LABEL_18:
    v28 = &v27[16 * v26];
    v29 = v26;
    while (v29 < *(v13 + 2))
    {
      v31 = *(v28 - 1);
      v30 = *v28;
      v26 = v29 + 1;

      v5 = sub_1BA4A6758();
      v10 = [v5 _appearsToBeEmail];

      if (v10)
      {
        v5 = v79;
        *&v89 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B9F1C360(0, *(v79 + 16) + 1, 1);
          v5 = v89;
        }

        v33 = *(v5 + 2);
        v32 = *(v5 + 3);
        v10 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          sub_1B9F1C360((v32 > 1), v33 + 1, 1);
          v5 = v89;
        }

        *(v5 + 2) = v10;
        v79 = v5;
        v34 = &v5[16 * v33];
        *(v34 + 4) = v31;
        *(v34 + 5) = v30;
        v27 = v13 + 40;
        if (v75 != v29)
        {
          goto LABEL_18;
        }

LABEL_28:
        v35 = 0;
        v36 = v13 + 40;
        v5 = MEMORY[0x1E69E7CC0];
LABEL_29:
        v77 = v5;
        v5 = &v36[16 * v35];
        v37 = v35;
        while (v37 < *(v13 + 2))
        {
          v39 = *(v5 - 1);
          v38 = *v5;
          v35 = v37 + 1;

          v10 = sub_1BA4A6758();
          v4 = [v10 _appearsToBePhoneNumber];

          if (v4)
          {
            v5 = v77;
            *&v89 = v77;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B9F1C360(0, *(v77 + 2) + 1, 1);
              v5 = v89;
            }

            v4 = *(v5 + 2);
            v40 = *(v5 + 3);
            v10 = v4 + 1;
            if (v4 >= v40 >> 1)
            {
              sub_1B9F1C360((v40 > 1), v4 + 1, 1);
              v5 = v89;
            }

            *(v5 + 2) = v10;
            v41 = &v5[16 * v4];
            *(v41 + 4) = v39;
            *(v41 + 5) = v38;
            v36 = v13 + 40;
            if (v75 == v37)
            {
              v42 = v79;
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          v5 += 16;
          ++v37;
          if (v25 == v35)
          {
            v5 = v77;
            v42 = v79;
            goto LABEL_41;
          }
        }

        goto LABEL_66;
      }

      v28 += 16;
      ++v29;
      if (v25 == v26)
      {
        goto LABEL_28;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
LABEL_41:

  if (v42[2])
  {

    if (!v42[2])
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v43 = v42[4];
    goto LABEL_46;
  }

  if (*(v5 + 2))
  {
    v42 = v5;
    v43 = *(v5 + 4);
LABEL_46:
    v13 = v42[5];

    sub_1BA1F14F8(v81, 2u);

    if (v81)
    {

      *&v89 = v81;
      *(&v89 + 1) = v43;
      *&v90 = v13;
      *(&v90 + 1) = v43;
      v79 = v43;
      v91 = v13;
      v44 = *v76;
      *v76 = 7;
      v45 = v76[8];
      v76[8] = 4;
      v46 = v81;
      swift_bridgeObjectRetain_n();
      sub_1BA1F1484(v44, v45);
      v47 = sub_1BA4A7A28();
      v48 = OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_selectionFlowContext;
      memset(v88, 0, sizeof(v88));
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 6;
      v87 = 2;

      sub_1B9FEEC64(a3, v88, 1, &v83);

      sub_1B9FF3BFC(v83, v84, v85, v86);
      sub_1B9F23224(v88);
      sub_1B9F0A534(&a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthExperienceStore], &v83);
      v49 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthStore];
      v50 = *&a1[v48];
      v10 = type metadata accessor for SummarySharingOnboardingChooseSelectionFlowViewController();
      v4 = objc_allocWithZone(v10);
      sub_1B9F0A534(&v83, v4 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthExperienceStore);
      *(v4 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthStore) = v49;
      v51 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact);
      *(v51 + 4) = v91;
      v52 = v90;
      *v51 = v89;
      *(v51 + 1) = v52;
      *(v4 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher) = v47;
      *(v4 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext) = v50;
      *(v4 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedItems) = MEMORY[0x1E69E7CC0];
      v53 = qword_1EBBE8858;
      v54 = v46;
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v5 = v54;
      v55 = v49;
      if (v53 == -1)
      {
LABEL_48:
        v78 = v5;
        v56 = sub_1BA4A6758();
        if (qword_1EBBE8860 != -1)
        {
          swift_once();
        }

        sub_1B9F0A814(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1BA4B5480;
        v58 = sub_1BA1FAFCC(v57);
        v60 = v59;
        *(v57 + 56) = MEMORY[0x1E69E6158];
        *(v57 + 64) = sub_1B9F1BE20();
        *(v57 + 32) = v58;
        *(v57 + 40) = v60;
        sub_1BA4A6768();

        v61 = sub_1BA4A6758();

        v82.receiver = v4;
        v82.super_class = v10;
        v62 = objc_msgSendSuper2(&v82, sel_initWithTitle_detailText_icon_contentLayout_, v56, v61, 0, 3);

        v63 = v62;
        sub_1BA2011C0();
        if (qword_1EBBE8868 != -1)
        {
          swift_once();
        }

        v64 = sub_1BA4A6758();
        v65 = sub_1BA4A6758();

        if (qword_1EBBE8870 != -1)
        {
          swift_once();
        }

        v66 = sub_1BA4A6758();
        v67 = sub_1BA4A6758();

        v68 = [v63 hxui_addCancelButton];
        swift_bridgeObjectRelease_n();

        __swift_destroy_boxed_opaque_existential_1(&v83);
        v69 = [v63 navigationItem];
        [v69 setHidesBackButton_];

        v70 = [a1 navigationController];
        if (v70)
        {
          v71 = v70;
          [v70 pushViewController:v63 animated:1];
          sub_1BA1F1484(v81, 2u);
        }

        else
        {
          sub_1BA1F1484(v81, 2u);
        }

        swift_bridgeObjectRelease_n();

        sub_1BA1E5348(v81, v79, v13, v79, v13);
        return;
      }

LABEL_68:
      swift_once();
      goto LABEL_48;
    }

    goto LABEL_61;
  }

LABEL_61:
  v72 = *v76;
  *v76 = v81;
  v73 = v76[8];
  v76[8] = 3;
  sub_1BA1F14F8(v81, 2u);
  sub_1BA1F1484(v72, v73);
  sub_1BA1EEC70();

  sub_1BA1F1484(v81, 2u);
}

id sub_1BA1F128C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SummarySharingSystemContactsPickerViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI5State33_54F0D551205513B9B502D15FA1E45382LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1BA1F1384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BA1F13CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BA1F1410(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1BA1F1438()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state;
  v2 = *v1;
  *v1 = 3;
  v3 = *(v1 + 8);
  *(v1 + 8) = 4;
  sub_1BA1F1484(v2, v3);
  sub_1BA1EEC70();
}

void sub_1BA1F1484(id a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 2)
  {
  }
}

uint64_t sub_1BA1F149C(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingOnboardingError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA1F14F8(id result, unsigned __int8 a2)
{
  if (a2 - 1 <= 2)
  {
    return result;
  }

  return result;
}

id sub_1BA1F1518(void *a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  *v7 = 0;
  v7[8] = 4;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_sharingStore] = 0;
  sub_1B9F0A534(a2, &v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthExperienceStore]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthStore] = a1;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_selectionFlowContext] = a3;
  v8 = qword_1EBBE84E0;
  v9 = a1;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BA4A6758();
  if (qword_1EBBE84E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1BA4A6758();
  if (qword_1EBBE84F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBBEE200;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for SummarySharingSystemContactsPickerViewController();
  v13 = objc_msgSendSuper2(&v15, sel_initWithTitle_detailText_icon_contentLayout_, v10, v11, v12, 2);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v13;
}

void sub_1BA1F16BC()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state;
  v2 = *v1;
  v3 = 3;
  if (*(v0 + 16))
  {
    v3 = 6;
  }

  *v1 = v3;
  v4 = *(v1 + 8);
  *(v1 + 8) = 4;
  sub_1BA1F1484(v2, v4);
  sub_1BA1EEC70();
}

uint64_t sub_1BA1F1724(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A64C8();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v13 = sub_1BA4A7308();
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = a1;
  v14[4] = ObjectType;
  aBlock[4] = sub_1BA1F19F8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_40_3;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A814(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v12, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v19);
}

unint64_t sub_1BA1F1A18()
{
  result = qword_1EBBEE310;
  if (!qword_1EBBEE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE310);
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.DataManagementComponent.init(hkType:includeShowAllData:additionalContentConstructor:contentInsetsReference:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1BA1F1AA0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  swift_beginAccess();
  a2(0);
  sub_1B9F0D9AC(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);

  if (swift_dynamicCast())
  {
    v6 = *(&v12 + 1);
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v7 + 8))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1B9F399C0(&v11);
  }

  swift_beginAccess();
  a3(0);

  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, v8, v9);
    return __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_1B9F399C0(&v11);
  }
}

uint64_t sub_1BA1F1D20@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA1F2B8C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3, v4);
}

uint64_t sub_1BA1F1DA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA1F2B54;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v7, v8);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t DataTypeDetailConfiguration.DataManagementComponent.additionalContentConstructor.getter()
{
  v1 = *(v0 + 16);
  sub_1B9F0F1B8(v1, *(v0 + 24));
  return v1;
}

uint64_t DataTypeDetailConfiguration.DataManagementComponent.additionalContentConstructor.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DataTypeDetailConfiguration.DataManagementComponent.makeDataSource(context:)(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFE) != 2)
  {
    v6 = *v1;
    v7 = *(v1 + 8);
    v8 = v1[2];
    v9 = v1[4];
    v10 = objc_opt_self();
    v11 = *(a1 + 40);
    v12 = [v10 sharedInstanceForHealthStore_];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 displayTypeForObjectType_];
      if (v14)
      {
        v15 = v14;
        v57 = v13;
        v16 = [objc_opt_self() sharedInstanceForHealthStore_];
        v17 = [v16 createHKUnitPreferenceController];

        type metadata accessor for DataTypeDetailDataManagementDataSource(0);
        swift_allocObject();
        v18 = v17;
        v19 = v11;
        v20 = v15;
        v21 = sub_1BA1B63CC(v20, v19, v7, v9);
        v56 = v20;

        v58 = v18;
        v22 = MEMORY[0x1E69E7CC0];
        if (v8)
        {
          v23 = v8(a1);
        }

        else
        {
          v23 = MEMORY[0x1E69E7CC0];
        }

        v28 = *(v23 + 16);
        v29 = v57;
        if (v28)
        {
          v55 = v21;
          v70 = v22;
          sub_1BA066BEC(0, v28, 0);
          v30 = v22;
          v54[1] = v23;
          v31 = v23 + 32;
          v32 = v23 + 32;
          v33 = v28;
          do
          {
            sub_1BA1F28EC(v32, &v63);
            v60 = v63;
            v61 = v64;
            *v62 = v65;
            *&v62[16] = v66;
            sub_1B9F25598(&v60, v67);
            v70 = v30;
            v35 = *(v30 + 16);
            v34 = *(v30 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_1BA066BEC((v34 > 1), v35 + 1, 1);
            }

            v36 = v68;
            v37 = v69;
            v38 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
            v39 = MEMORY[0x1EEE9AC00](v38, v38);
            v41 = v54 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v42 + 16))(v41, v39);
            sub_1BA1F2854(v35, v41, &v70, v36, v37);
            __swift_destroy_boxed_opaque_existential_1(v67);
            v30 = v70;
            v32 += 56;
            --v33;
          }

          while (v33);
          v67[0] = MEMORY[0x1E69E7CC0];
          sub_1BA066BB8(0, v28, 0);
          v43 = v67[0];
          do
          {
            sub_1BA1F28EC(v31, &v63);
            v61 = v64;
            *v62 = v65;
            *&v62[16] = v66;
            v60 = v63;
            v59 = *&v62[8];
            __swift_destroy_boxed_opaque_existential_1(&v60);
            v67[0] = v43;
            v45 = *(v43 + 16);
            v44 = *(v43 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_1BA066BB8((v44 > 1), v45 + 1, 1);
              v43 = v67[0];
            }

            *(v43 + 16) = v45 + 1;
            *(v43 + 16 * v45 + 32) = v59;
            v31 += 56;
            --v28;
          }

          while (v28);

          v21 = v55;
        }

        else
        {

          v43 = MEMORY[0x1E69E7CC0];
          v30 = MEMORY[0x1E69E7CC0];
        }

        v46 = sub_1B9FE4F98(v30);

        sub_1BA1F2640(0);
        v47 = swift_allocObject();
        *(v47 + 32) = v21;
        *(v47 + 40) = v46;

        v49 = Array<A>.identifierToIndexDict()(v48);

        *(v47 + 48) = v49;
        *(v47 + 56) = 1;
        v27 = *(v21 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
        v26 = *(v21 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

        *(v47 + 16) = v27;
        *(v47 + 24) = v26;
        v50 = swift_allocObject();
        *(v50 + 16) = v43;
        sub_1BA1F267C(0, &qword_1EDC69058, sub_1BA1F2640, &protocol witness table for AdditionalItemsDataSource<A>, type metadata accessor for CellRegistering);
        v51 = swift_allocObject();
        v51[3] = v26;
        v51[4] = v47;
        v51[2] = v27;
        v52 = swift_allocObject();
        v52[2] = v47;
        v52[3] = sub_1BA1F2A34;
        v52[4] = v50;
        v51[5] = sub_1BA1F2A3C;
        v51[6] = v52;
        sub_1BA1F2584(0);
        v25 = swift_allocObject();
        *(v25 + 16) = v27;
        *(v25 + 24) = v26;
        *(v25 + 32) = v51;
        *(v25 + 40) = 0;
        swift_bridgeObjectRetain_n();

        goto LABEL_22;
      }
    }

    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v24 = EmptyDataSource.init()();
    sub_1BA1F2584(0);
    v25 = swift_allocObject();
    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    *(v25 + 16) = v27;
    *(v25 + 24) = v26;
    *(v25 + 32) = v24;
    *(v25 + 40) = 1;

LABEL_22:
    sub_1BA1F26E8(0);
    v3 = swift_allocObject();
    *(v3 + 16) = v27;
    *(v3 + 24) = v26;
    *(v3 + 32) = v25;
    *(v3 + 40) = 1;
    goto LABEL_23;
  }

  type metadata accessor for EmptyDataSource(0);
  swift_allocObject();
  v2 = EmptyDataSource.init()();
  sub_1BA1F26E8(0);
  v3 = swift_allocObject();
  v4 = *(v2 + 24);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
LABEL_23:

  return v3;
}

void sub_1BA1F2510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 40);
    do
    {
      UICollectionView.registerCell<A>(_:)(*(v3 - 1), *(v3 - 1), *v3);
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1BA1F2584(uint64_t a1)
{
  if (!qword_1EDC66CD0)
  {
    sub_1BA1F267C(255, &qword_1EDC69058, sub_1BA1F2640, &protocol witness table for AdditionalItemsDataSource<A>, type metadata accessor for CellRegistering);
    v5[0] = v2;
    v5[1] = type metadata accessor for EmptyDataSource(255);
    v5[2] = &protocol witness table for CellRegistering<A>;
    v5[3] = &protocol witness table for EmptyDataSource;
    v3 = type metadata accessor for _ConditionalDataSource(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDC66CD0);
    }
  }
}

void sub_1BA1F267C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA1F26E8(uint64_t a1)
{
  if (!qword_1EDC66CF0)
  {
    v2 = type metadata accessor for EmptyDataSource(255);
    sub_1BA1F2584(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = &protocol witness table for EmptyDataSource;
    v6[3] = &protocol witness table for _ConditionalDataSource<A, B>;
    v4 = type metadata accessor for _ConditionalDataSource(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDC66CF0);
    }
  }
}

uint64_t sub_1BA1F2854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B9F25598(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1BA1F28EC(uint64_t a1, uint64_t a2)
{
  sub_1BA1F2950(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA1F2950(uint64_t a1)
{
  if (!qword_1EBBEE320)
  {
    sub_1B9F0D9AC(255, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    sub_1BA1F29D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEE320);
    }
  }
}

unint64_t sub_1BA1F29D8()
{
  result = qword_1EBBEE328;
  if (!qword_1EBBEE328)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEAC78, &protocol descriptor for ReusableView, 0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBEE328);
  }

  return result;
}

uint64_t sub_1BA1F2A3C(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_1B9FF50C0();
  return v3(a1);
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI27DataTypeDetailConfigurationV7ContextVSay0aB009SectionedD10SourceItem_p4item_AA12ReusableView_pXp04cellE0tGIegno_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA1F2AB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BA1F2AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA1F2B8C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t PDFVStack.init(spacing:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

void PDFVStack.render(context:document:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (!v4)
  {
    return;
  }

  v7 = v2[1];
  v8 = *(v2 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v9 = 0;
  v10 = v3 + 32;
  while (1)
  {
    v11 = 0uLL;
    v12 = v4;
    v13 = 0uLL;
    v14 = 0uLL;
    if (v9 == v4)
    {
      goto LABEL_7;
    }

    if (v9 >= *(v3 + 16))
    {
      break;
    }

    v12 = v9 + 1;
    *&v68 = v9;
    sub_1B9F0A534(v10 + 40 * v9, &v68 + 8);
    v11 = v68;
    v13 = v69;
    v14 = v70;
LABEL_7:
    v71[0] = v11;
    v71[1] = v13;
    v71[2] = v14;
    if (!v14)
    {
      return;
    }

    v66 = v11;
    sub_1B9F25598((v71 + 8), &v68);
    if (v8)
    {
      v15 = *(&v69 + 1);
      v16 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
      v17 = (*(v16 + 32))(a2, v15, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v72.origin.x = PDFBuilder.Document.drawingContext.getter();
      v84.origin.x = v17;
      v84.origin.y = v19;
      v84.size.width = v21;
      v84.size.height = v23;
      if (!CGRectContainsRect(v72, v84))
      {
        v24 = *(&v69 + 1);
        v25 = v70;
        __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
        v26 = (*(v25 + 32))(a2, v24, v25);
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v73.origin.x = PDFBuilder.Document.bodyBox.getter();
        Height = CGRectGetHeight(v73);
        v74.origin.x = v26;
        v74.origin.y = v28;
        v74.size.width = v30;
        v74.size.height = v32;
        if (CGRectGetHeight(v74) <= Height)
        {
          v34 = *(a2 + 120);
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_29;
          }

          if (v35 == *(a2 + 104))
          {
            if (*(a2 + 201))
            {
              v63 = v10;
              v65 = v8;
              if (v35 >= 2)
              {
                type metadata accessor for PDFBuilder.Document();
                v49 = 1;
                do
                {
                  swift_initStackObject();
                  v50 = sub_1BA20F244(a2);
                  *(v50 + 168) = PDFBuilder.Document.bodyBox.getter();
                  *(v50 + 176) = v51;
                  *(v50 + 184) = v52;
                  *(v50 + 192) = v53;
                  *(v50 + 200) = 0;
                  v79.origin.x = PDFBuilder.Document.bodyBox.getter();
                  v54 = (CGRectGetWidth(v79) + (*(a2 + 104) + -1.0) * -36.0) / *(a2 + 104) * v49 + 18.0;
                  v80.origin.x = PDFBuilder.Document.drawingContext.getter();
                  x = v80.origin.x;
                  y = v80.origin.y;
                  width = v80.size.width;
                  v58 = v80.size.height;
                  v59 = CGRectGetMinX(v80) + v54;
                  v81.origin.x = x;
                  v81.origin.y = y;
                  v81.size.width = width;
                  v81.size.height = v58;
                  v60 = CGRectGetMinY(v81) + 0.0;
                  v82.origin.x = x;
                  v82.origin.y = y;
                  v82.size.width = width;
                  v82.size.height = v58;
                  v61 = CGRectGetWidth(v82) - v54;
                  v83.origin.x = x;
                  v83.origin.y = y;
                  v83.size.width = width;
                  v83.size.height = v58;
                  v62 = CGRectGetHeight(v83);
                  *(v50 + 168) = v59;
                  *(v50 + 176) = v60;
                  *(v50 + 184) = v61;
                  *(v50 + 192) = v62;
                  *(v50 + 200) = 0;
                  if (*(a2 + 112) == 1)
                  {
                    if (qword_1EBBE8468 != -1)
                    {
                      swift_once();
                    }

                    v67 = [qword_1EBBED280 CGColor];
                    PDFVerticalSeparator.render(context:document:)(a1, v50);
                  }

                  else
                  {
                  }

                  ++v49;
                }

                while (v49 - v34 != 1);
              }

              [a1 beginPage];
              v36 = *(a2 + 160);
              v37 = __OFADD__(v36, 1);
              v38 = v36 + 1;
              if (v37)
              {
                goto LABEL_30;
              }

              *(a2 + 160) = v38;
              sub_1BA20DD08(a1);
              *(a2 + 120) = 0;
              sub_1BA20F060();
              sub_1BA20DE40(a1);
              v8 = v65;
              v10 = v64;
            }
          }

          else
          {
            *(a2 + 120) = v35;
            sub_1BA20F060();
          }
        }
      }
    }

    v39 = *(&v69 + 1);
    v40 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    (*(v40 + 16))(a1, a2, v39, v40);
    if (v66 < *(v3 + 16) - 1)
    {
      v75.origin.x = PDFBuilder.Document.drawingContext.getter();
      v41 = v75.origin.x;
      v42 = v75.origin.y;
      v43 = v75.size.width;
      v44 = v75.size.height;
      v45 = CGRectGetMinX(v75) + 0.0;
      v76.origin.x = v41;
      v76.origin.y = v42;
      v76.size.width = v43;
      v76.size.height = v44;
      v46 = v7 + CGRectGetMinY(v76);
      v77.origin.x = v41;
      v77.origin.y = v42;
      v77.size.width = v43;
      v77.size.height = v44;
      v47 = CGRectGetWidth(v77);
      v78.origin.x = v41;
      v78.origin.y = v42;
      v78.size.width = v43;
      v78.size.height = v44;
      v48 = CGRectGetHeight(v78);
      *(a2 + 168) = v45;
      *(a2 + 176) = v46;
      *(a2 + 184) = v47;
      *(a2 + 192) = v48 - v7;
      *(a2 + 200) = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v68);
    v9 = v12;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void PDFVStack.boundingRectForContent(in:)(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (!v5)
  {
    PDFBuilder.Document.drawingContext.getter();
    return;
  }

  v6 = v2[1];
  v7 = *(v2 + 17);
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v8 = sub_1BA20F244(a1);
  v9 = *(v4 + 16);
  v10 = 0.0;
  v11 = 0.0;
  if (v9 >= 2)
  {
    v12 = v4 + 32;

    v13 = v9 - 1;
    v43 = v6;
    do
    {
      sub_1B9F0A534(v12, v44);
      v14 = v45;
      v15 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v16 = (*(v15 + 24))(v8, v14, v15);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v44);
      v47.origin.x = v16;
      v47.origin.y = v18;
      v47.size.width = v20;
      v47.size.height = v22;
      v41 = v11 + CGRectGetHeight(v47);
      v48.origin.x = v16;
      v48.origin.y = v18;
      v48.size.width = v20;
      v48.size.height = v22;
      Width = CGRectGetWidth(v48);
      if (v10 <= Width)
      {
        v10 = Width;
      }

      v42 = v10;
      v49.origin.x = v16;
      v49.origin.y = v18;
      v49.size.width = v20;
      v49.size.height = v22;
      Height = CGRectGetHeight(v49);
      v50.origin.x = PDFBuilder.Document.drawingContext.getter();
      x = v50.origin.x;
      y = v50.origin.y;
      v27 = v50.size.width;
      v28 = v50.size.height;
      v29 = CGRectGetMinX(v50) + 0.0;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = v27;
      v51.size.height = v28;
      v30 = Height + CGRectGetMinY(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = v27;
      v52.size.height = v28;
      v31 = CGRectGetWidth(v52);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = v27;
      v53.size.height = v28;
      v32 = CGRectGetHeight(v53) - Height;
      *(v8 + 168) = v29;
      *(v8 + 176) = v30;
      *(v8 + 184) = v31;
      *(v8 + 192) = v32;
      *(v8 + 200) = 0;
      v54.origin.x = v29;
      v54.origin.y = v30;
      v54.size.width = v31;
      v54.size.height = v32;
      v33 = CGRectGetMinX(v54) + 0.0;
      v55.origin.x = v29;
      v55.origin.y = v30;
      v55.size.width = v31;
      v55.size.height = v32;
      v34 = v43 + CGRectGetMinY(v55);
      v56.origin.x = v29;
      v56.origin.y = v30;
      v56.size.width = v31;
      v56.size.height = v32;
      v35 = CGRectGetWidth(v56);
      v57.origin.x = v29;
      v57.origin.y = v30;
      v57.size.width = v31;
      v57.size.height = v32;
      v10 = v42;
      v36 = CGRectGetHeight(v57);
      *(v8 + 168) = v33;
      *(v8 + 176) = v34;
      *(v8 + 184) = v35;
      *(v8 + 192) = v36 - v43;
      *(v8 + 200) = 0;
      v11 = v43 + v41;
      v12 += 40;
      --v13;
    }

    while (v13);
    swift_unknownObjectRelease();
  }

  if (v5 > *(v4 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1B9F0A534(v4 + 40 * v5 - 8, v44);
  v37 = v45;
  v38 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v58.origin.x = (*(v38 + 24))(v8, v37, v38);
  CGRectGetHeight(v58);
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (v5 > *(v4 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_1B9F0A534(v4 + 40 * v5 - 8, v44);
  v39 = v45;
  v40 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v59.origin.x = (*(v40 + 24))(v8, v39, v40);
  CGRectGetWidth(v59);
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (!v7)
  {
    v60.origin.x = PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(v60);
  }

  PDFBuilder.Document.drawingContext.getter();
}

void PDFVStack.minimumBoundingRectForContent(in:)(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(v2 + 8);
  if (*(v2 + 16) == 1)
  {
    sub_1BA1F3704(a1, a2);
  }

  else
  {
    PDFVStack.boundingRectForContent(in:)(a1, a2);
  }
}

uint64_t PDFVStack.init(spacing:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = 0;
  result = a1();
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t PDFVStack.init(spacing:allowsMultiplePages:sizeWidthToContent:_:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  result = a3();
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 17) = a2;
  *(a4 + 16) = a1;
  return result;
}

uint64_t PDFVStack.init(spacing:allowsMultiplePages:sizeWidthToContent:_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a3;
  *(a4 + 8) = a5;
  *(a4 + 17) = a2;
  *(a4 + 16) = result;
  return result;
}

unint64_t sub_1BA1F36C0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

void sub_1BA1F3704(uint64_t a1, __n128 a2)
{
  if (*(*v2 + 16))
  {
    sub_1B9F0A534(*v2 + 32, v7);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v4 = sub_1BA20F244(a1);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 32))(v4, v5, v6);
    PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(*(a1 + 168));

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    PDFBuilder.Document.drawingContext.getter();
  }
}

void sub_1BA1F381C(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(v2 + 8);
  if (*(v2 + 16) == 1)
  {
    sub_1BA1F3704(a1, a2);
  }

  else
  {
    PDFVStack.boundingRectForContent(in:)(a1, a2);
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BA1F38A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1BA1F38EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HeaderItem.__allocating_init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t HeaderItem.__allocating_init(hkType:title:showShowAll:configuration:automationIdentifier:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a6;
  v25 = a2;
  v26 = a3;
  v10 = sub_1BA4A4428();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    v19 = 0;
    v17 = 0;
    goto LABEL_5;
  }

  type metadata accessor for DefaultHeaderCollectionReusableView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_1BA4A1318();
  v19 = v18;

  if (!a1)
  {
LABEL_5:
    v22 = 0;
    v20 = 0;
    goto LABEL_6;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = a1;

  v22 = sub_1BA1F42C8;
LABEL_6:
  (*(v11 + 16))(v14, a5, v10);
  type metadata accessor for HeaderItem(0);
  v23 = swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v25, v26, v17, v19, v22, v20, v14, v28, v27);
  sub_1B9F0E310(v22, v20);

  (*(v11 + 8))(a5, v10);
  return v23;
}

uint64_t HeaderItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t HeaderItem.buttonText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t HeaderItem.buttonWasTapped.getter()
{
  v1 = *(v0 + 72);
  sub_1B9F0F1B8(v1, *(v0 + 80));
  return v1;
}

uint64_t HeaderItem.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration;
  v4 = sub_1BA4A4428();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_1BA1F3D44(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA1F3DB0()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA1F3E08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1BA1F3EC8(void *a1, void *a2)
{
  v4 = [a1 viewController];
  if (v4)
  {
    v5 = v4;
    v6 = UIViewController.resolvedHealthStore.getter();
    if (v6)
    {
      v7 = v6;
      v8 = [a1 viewController];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 navigationController];

        if (v10)
        {
          v28 = v10;
          v11 = v7;
          UIViewController.resolvedHealthExperienceStore.getter(v30);
          v12 = objc_allocWithZone(type metadata accessor for AllHighlightsForDataTypeViewController());
          *&v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType] = a2;
          *&v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore] = v11;
          sub_1B9F0A534(v30, &v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore]);
          v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton] = 0;
          *&v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance] = xmmword_1BA4C6710;
          sub_1B9F0A534(v30, v29);
          type metadata accessor for AllHighlightsForDataTypeDataSource(0);
          swift_allocObject();
          v13 = v11;
          v14 = a2;
          sub_1BA237ED8(v14, v13, v29, 0);

          v16 = CompoundDataSourceCollectionViewController.init(dataSource:)(v15);
          v17 = qword_1EDC5E100;
          v7 = v16;
          if (v17 != -1)
          {
            swift_once();
          }

          sub_1BA4A1318();
          sub_1B9F2EAC0(0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1BA4B5480;
          v19 = [v13 displayTypeController];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 displayTypeForObjectType_];

            if (v21)
            {
              v22 = [v21 localization];

              v23 = [v22 displayName];
              v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v26 = v25;

              *(v18 + 56) = MEMORY[0x1E69E6158];
              *(v18 + 64) = sub_1B9F1BE20();
              *(v18 + 32) = v24;
              *(v18 + 40) = v26;
              sub_1BA4A6768();

              v27 = sub_1BA4A6758();

              [v7 setTitle_];

              __swift_destroy_boxed_opaque_existential_1(v30);
              [v28 pushViewController:v7 animated:1];

              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }
      }
    }
  }

  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA1F42D0(uint64_t a1)
{
  sub_1BA4A68C8();
  if (*(v1 + 56))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  swift_beginAccess();
  return sub_1BA4A84A8();
}

char *HeaderItem.deinit()
{

  sub_1B9F0E310(*(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration;
  v2 = sub_1BA4A4428();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t HeaderItem.__deallocating_deinit()
{

  sub_1B9F0E310(*(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration;
  v2 = sub_1BA4A4428();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1F44C0()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  if (*(v0 + 56))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  swift_beginAccess();
  sub_1BA4A84A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1F45B0(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA1F42D0(v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1F45F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA1F464C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1BA1F4720()
{
  v0 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A1D18();
  v6 = v5;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  type metadata accessor for HeaderItem(0);
  v7 = swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v4, v6, 0, 0, 0, 0, v3, 0, 0);
  qword_1EBBEE338 = v7;
}

double static HeaderItem.headerItemForCategories.getter()
{
  if (qword_1EBBE84F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static HeaderItem.headerItemForCategories.setter(uint64_t a1)
{
  if (qword_1EBBE84F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBBEE338 = a1;

  return result;
}

uint64_t (*static HeaderItem.headerItemForCategories.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EBBE84F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t _s18HealthExperienceUI10HeaderItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v4 && (sub_1BA4A8338() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5)
  {
    if (v6)
    {
      v7 = *(a1 + 48) == *(a2 + 48) && v5 == v6;
      if (v7 || (sub_1BA4A8338() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v9 = 0;
    return v9 & 1;
  }

  if (v6)
  {
    goto LABEL_15;
  }

LABEL_13:
  swift_beginAccess();
  v8 = *(a1 + 64);
  swift_beginAccess();
  v9 = v8 ^ *(a2 + 64) ^ 1;
  return v9 & 1;
}

uint64_t sub_1BA1F4C60(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0791A0(a1, a2, &v29);
  if (v30)
  {
    sub_1B9F1134C(&v29, v32);
    sub_1B9F0A534(v32, &v29);
    sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v9 = v28[0];
      v10 = [v28[0] pinnedContentIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        __swift_destroy_boxed_opaque_existential_1(v32);
        return v12;
      }

      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      sub_1BA4A3D68();
      sub_1B9F0A534(v32, &v29);
      sub_1B9F0A534(v32, v28);
      v14 = sub_1BA4A3E88();
      v15 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315650;
        *(v16 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C68C0, &v27);
        *(v16 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v29, v30);
        v26[0] = swift_getDynamicType();
        v26[1] = v31;
        sub_1BA051D44();
        v18 = sub_1BA4A6808();
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_1(&v29);
        v21 = sub_1B9F0B82C(v18, v20, &v27);

        *(v16 + 14) = v21;
        *(v16 + 22) = 2080;
        sub_1B9F0A534(v28, v26);
        v22 = sub_1BA4A6808();
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_1(v28);
        v25 = sub_1B9F0B82C(v22, v24, &v27);

        *(v16 + 24) = v25;
        _os_log_impl(&dword_1B9F07000, v14, v15, "[%s]: Expected FeedItem but got %s. Item: %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v17, -1, -1);
        MEMORY[0x1BFAF43A0](v16, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v28);
        __swift_destroy_boxed_opaque_existential_1(&v29);
      }

      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }
  }

  else
  {
    sub_1B9FCD638(&v29);
  }

  return 0;
}

uint64_t sub_1BA1F4FF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0791A0(a1, a2, &v29);
  if (v30)
  {
    sub_1B9F1134C(&v29, v32);
    sub_1B9F0A534(v32, &v29);
    sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v9 = v28[0];
      v10 = [v28[0] pinnedContentIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        __swift_destroy_boxed_opaque_existential_1(v32);
        return v12;
      }

      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      sub_1BA4A3D68();
      sub_1B9F0A534(v32, &v29);
      sub_1B9F0A534(v32, v28);
      v14 = sub_1BA4A3E88();
      v15 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315650;
        *(v16 + 4) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4E5BC0, &v27);
        *(v16 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v29, v30);
        v26[0] = swift_getDynamicType();
        v26[1] = v31;
        sub_1BA051D44();
        v18 = sub_1BA4A6808();
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_1(&v29);
        v21 = sub_1B9F0B82C(v18, v20, &v27);

        *(v16 + 14) = v21;
        *(v16 + 22) = 2080;
        sub_1B9F0A534(v28, v26);
        v22 = sub_1BA4A6808();
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_1(v28);
        v25 = sub_1B9F0B82C(v22, v24, &v27);

        *(v16 + 24) = v25;
        _os_log_impl(&dword_1B9F07000, v14, v15, "[%s]: Expected FeedItem but got %s. Item: %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v17, -1, -1);
        MEMORY[0x1BFAF43A0](v16, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v28);
        __swift_destroy_boxed_opaque_existential_1(&v29);
      }

      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }
  }

  else
  {
    sub_1B9FCD638(&v29);
  }

  return 0;
}

uint64_t sub_1BA1F5388(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = qword_1EBC096C0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA1F53F4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBC096C0;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA1F544C(__int128 *a1)
{
  v3 = qword_1EBC096C0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

char *PinnedContentDataLoggingDataSource.init(pinnedContentManager:context:)(void *a1, void *a2)
{
  v3 = v2;
  sub_1BA4A27B8();
  v4 = sub_1BA4A26E8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5460;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B9F1BE20();
  *(v5 + 64) = v7;
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x80000001BA4F41D0;
  v8 = sub_1BA4A2738();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v8;
  *(v5 + 80) = v9;
  v10 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5460;
  *(v11 + 32) = sub_1BA4A1D78();
  *(v11 + 40) = 0;
  v12 = MEMORY[0x1BFAED1E0](v11);

  v14 = MEMORY[0x1BFAED110](v13);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B8B60;
  *(v15 + 32) = v4;
  *(v15 + 40) = v10;
  *(v15 + 48) = v12;
  v16 = v4;
  v17 = v10;
  v18 = v12;
  v19 = sub_1BA4A6AE8();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v14 setPredicate_];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B7510;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = sub_1BA4A6758();
  v24 = [v22 initWithKey:v23 ascending:1];

  *(v21 + 32) = v24;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v26 = sub_1BA4A6758();
  v27 = [v25 initWithKey:v26 ascending:1 selector:sel_localizedStandardCompare_];

  *(v21 + 40) = v27;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v28 = sub_1BA4A6AE8();

  [v14 setSortDescriptors_];

  v29 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v14 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F0A534(a1, v3 + qword_1EBC096C0);
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v30;
}

id PinnedContentDataLoggingDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinnedContentDataLoggingDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PinnedContentDataLoggingDataSource(uint64_t a1)
{
  result = qword_1EBBEE348;
  if (!qword_1EBBEE348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1F5A18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EBC096C0;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a1);
}

uint64_t sub_1BA1F5A74(__int128 *a1)
{
  v3 = *v1;
  v4 = qword_1EBC096C0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(a1, v3 + v4);
  return swift_endAccess();
}

id sub_1BA1F5B98(__int128 *a1)
{
  v10 = *a1;
  v2 = *(a1 + 2);
  v3 = sub_1B9FDBA04(&unk_1F37FC1B8);
  v4 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
  *&v18 = 0x4062C00000000000;
  *(&v18 + 1) = v4;
  v19 = 0uLL;
  *&v20 = 0x405D800000000000;
  *(&v20 + 1) = sub_1BA4A7648();
  *&v21 = 2;
  *(&v21 + 1) = v3;
  *&v22 = sub_1B9F58BC4;
  *(&v22 + 1) = 0;
  v16 = v10;
  v17 = v2;
  v5 = GridLayoutEngine.layout(for:)(&v16);
  if (v1)
  {
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v11 = v18;
    v12 = v19;
    return sub_1B9F5A690(&v11);
  }

  else
  {
    v7 = v5;
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v11 = v18;
    v12 = v19;
    sub_1B9F5A690(&v11);
    v8 = [objc_opt_self() estimatedDimension_];
    v9 = sub_1B9F5CA58(v8, 2);

    return v9;
  }
}

Swift::String __swiftcall LocalizedGeminiString(_:value:comment:)(Swift::String _, Swift::String value, Swift::String comment)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v3 = sub_1BA4A1318();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t LocalizedGeminiString(_:defaultValue:comment:options:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v32 = a8;
  v33 = a7;
  v34 = a1;
  v35 = a6;
  v36 = a2;
  v37 = a3;
  v30 = a4;
  v31 = a9;
  v38 = sub_1BA4A1198();
  MEMORY[0x1EEE9AC00](v38, v9);
  sub_1BA1F6640(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - v12;
  v14 = sub_1BA4A11C8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A6738();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v21 = sub_1BA4A12C8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1BA4A6748();
  (*(v15 + 16))(v18, v31, v14);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDC84A30;
  v27 = sub_1BA4A17C8();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  v28 = v26;
  sub_1BA4A12B8();
  sub_1BA4A1188();
  (*(v22 + 8))(v25, v21);
  sub_1BA1F65E8();
  return sub_1BA4A69C8();
}

Swift::String __swiftcall LocalizedGeminiHealthAlertTitle(_:value:)(HKObjectType _, Swift::String value)
{
  sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = [(objc_class *)_.super.isa identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1B9F1BE20();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1BA4A67D8();
  v8 = [(objc_class *)_.super.isa identifier];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  if (v9 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1BA4A8338();

    if ((v14 & 1) == 0)
    {
      if (qword_1EDC5E100 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  v15 = sub_1BA4A1318();
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

Swift::String __swiftcall LocalizedChamomileString(_:value:comment:)(Swift::String _, Swift::String value, Swift::String comment)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v3 = sub_1BA4A1318();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_1BA1F65E8()
{
  result = qword_1EBBEE358;
  if (!qword_1EBBEE358)
  {
    sub_1BA4A1198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE358);
  }

  return result;
}

void sub_1BA1F6640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1BA1F66C0(uint64_t a1, unint64_t *a2, void *a3, void *a4)
{
  sub_1B9F0ADF8(0, a2, a3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a4 = result;
  return result;
}

id sub_1BA1F6734()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC84A30;
  qword_1EDC5E1B0 = qword_1EDC84A30;

  return v1;
}

id static NSBundle.healthExperienceUI.getter()
{
  if (qword_1EDC5E1A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E1B0;

  return v1;
}

void sub_1BA1F67F4()
{
  sub_1B9F12538();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v25 = v0;
  v8(v6, v0 + v7, v2);
  v9 = sub_1BA4A4578();
  (*(v3 + 8))(v6, v2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v10, 0);
    v11 = 0;
    v12 = v30;
    v13 = (v9 + 40);
    while (v11 < *(v9 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1BA1F6EF8(v14, v15, v25, &v26);

      v16 = v26;
      v17 = v27;
      v18 = v28;
      v19 = v29;
      v30 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = v27;
        v24 = v26;
        sub_1B9F277B0((v20 > 1), v21 + 1, 1);
        v17 = v23;
        v16 = v24;
        v12 = v30;
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 48 * v21;
      *(v22 + 32) = v16;
      *(v22 + 48) = v17;
      *(v22 + 64) = v18;
      *(v22 + 72) = v19;
      v13 += 2;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

void sub_1BA1F6A3C()
{
  sub_1B9F12538();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v25 = v0;
  v8(v6, v0 + v7, v2);
  v9 = sub_1BA4A4578();
  (*(v3 + 8))(v6, v2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v10, 0);
    v11 = 0;
    v12 = v30;
    v13 = (v9 + 40);
    while (v11 < *(v9 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1BA1F7B4C(v14, v15, v25, &v26);

      v16 = v26;
      v17 = v27;
      v18 = v28;
      v19 = v29;
      v30 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = v27;
        v24 = v26;
        sub_1B9F277B0((v20 > 1), v21 + 1, 1);
        v17 = v23;
        v16 = v24;
        v12 = v30;
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 48 * v21;
      *(v22 + 32) = v16;
      *(v22 + 48) = v17;
      *(v22 + 64) = v18;
      *(v22 + 72) = v19;
      v13 += 2;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

void sub_1BA1F6C64()
{
  sub_1B9F12538();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EDC84AC8;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v25 = v0;
  v8(v6, &v0[v7], v2);
  v9 = sub_1BA4A4578();
  (*(v3 + 8))(v6, v2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v10, 0);
    v11 = 0;
    v12 = v30;
    v13 = (v9 + 40);
    while (v11 < *(v9 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1BA1F81A0(v14, v15, v25, &v26);

      v16 = v26;
      v17 = v27;
      v18 = v28;
      v19 = v29;
      v30 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = v27;
        v24 = v26;
        sub_1B9F277B0((v20 > 1), v21 + 1, 1);
        v17 = v23;
        v16 = v24;
        v12 = v30;
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 48 * v21;
      *(v22 + 32) = v16;
      *(v22 + 48) = v17;
      *(v22 + 64) = v18;
      *(v22 + 72) = v19;
      v13 += 2;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

uint64_t ProfileAvatarDataSource.__allocating_init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  swift_allocObject();
  return ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(a1, a2, a3, a4, v5);
}

void sub_1BA1F6EF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55[0] = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v15 = v9 + 16;
  v14 = *(v9 + 16);
  v14(v12, a3 + v13, v8);
  *&v56 = a1;
  *&v74[0] = a1;
  *(&v74[0] + 1) = a2;
  *(&v56 + 1) = a2;
  sub_1BA4A44E8();
  LOBYTE(a1) = v16;
  v19 = *(v9 + 8);
  v17 = v9 + 8;
  v18 = v19;
  v19(v12, v8);
  v67 = v15;
  v66 = v14;
  v65 = v13;
  if (a1)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14(v12, a3 + v13, v8);
    v74[0] = v56;
    v20 = sub_1BA4A4528();
    v18(v12, v8);
  }

  v21 = v17;
  v22 = *(v20 + 16);
  v59 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  v64 = v22;
  if (!v22)
  {
    v68 = MEMORY[0x1E69E7CC0];
LABEL_30:

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v51 = v55[0];
    *v55[0] = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = v68;

    v53 = Array<A>.identifierToIndexDict()(v52);

    v54 = v56;
    *(v51 + 24) = v53;
    *(v51 + 32) = __PAIR128__(*(&v56 + 1), v54);

    return;
  }

  v61 = v18;
  v62 = v21;
  v23 = 0;
  v24 = (v20 + 40);
  v68 = MEMORY[0x1E69E7CC0];
  v63 = v8;
  v25 = v66;
  v58 = a3;
  v60 = v20;
  while (v23 < *(v20 + 16))
  {
    v27 = *(v24 - 1);
    v26 = *v24;
    v25(v12, a3 + v65, v8);
    v69 = v27;
    v70 = v26;

    sub_1BA4A4568();
    v61(v12, v8);
    v28 = *(&v74[0] + 1);
    if (!*(&v74[0] + 1))
    {
      goto LABEL_19;
    }

    v29 = *(a3 + v59);
    if (!*(v29 + 16))
    {

LABEL_19:
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      goto LABEL_20;
    }

    v30 = *&v74[0];

    v31 = sub_1B9F24A34(v30, v28);
    v33 = v32;

    if ((v33 & 1) == 0)
    {

      a3 = v58;
      v8 = v63;
      goto LABEL_19;
    }

    v34 = (*(v29 + 56) + 48 * v31);
    v35 = v34[2];
    v36 = v34[3];
    v57 = v34[1];

    if (*(v36 + 16) && (v37 = sub_1B9F24A34(v27, v26), (v38 & 1) != 0))
    {
      v39 = *(*(v36 + 56) + 8 * v37);
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v39 >= *(v35 + 16))
      {
        goto LABEL_33;
      }

      sub_1B9F0A534(v35 + 40 * v39 + 32, &v71);
    }

    else
    {
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
    }

    a3 = v58;
    v8 = v63;
LABEL_20:

    if (*(&v72 + 1))
    {
      sub_1B9F25598(&v71, v74);
      sub_1B9F25598(v74, &v71);
      v40 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_1B9F281E8(0, v40[2] + 1, 1, v40);
        v75 = v40;
      }

      v43 = v40[2];
      v42 = v40[3];
      if (v43 >= v42 >> 1)
      {
        v68 = sub_1B9F281E8((v42 > 1), v43 + 1, 1, v40);
        v75 = v68;
      }

      else
      {
        v68 = v40;
      }

      v44 = *(&v72 + 1);
      v45 = v73;
      v46 = __swift_mutable_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      v47 = MEMORY[0x1EEE9AC00](v46, v46);
      v49 = v55 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v49, v47);
      sub_1B9F1C4F4(v43, v49, &v75, v44, v45);
      __swift_destroy_boxed_opaque_existential_1(&v71);
      v8 = v63;
    }

    else
    {
      sub_1B9F44090(&v71, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    }

    ++v23;
    v24 += 2;
    v25 = v66;
    v20 = v60;
    if (v64 == v23)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1BA1F7548(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v55 = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v64 = *(v9 + 16);
  v64(v12, a3 + v13, v8);
  v60 = a1;
  *&v70 = a1;
  *(&v70 + 1) = a2;
  sub_1BA4A44E8();
  LOBYTE(a1) = v14;
  v15 = *(v9 + 8);
  v15(v12, v8);
  v59 = a3;
  if (a1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v60;
  }

  else
  {
    v64(v12, a3 + v13, v8);
    v18 = v60;
    *&v70 = v60;
    *(&v70 + 1) = a2;
    v16 = sub_1BA4A4528();
    v15(v12, v8);
    v17 = v18;
  }

  v58 = *(v16 + 16);
  if (v58)
  {
    v19 = 0;
    v20 = (v16 + 40);
    v61 = MEMORY[0x1E69E7CC0];
    v57 = a2;
    v56 = v16;
    while (v19 < *(v16 + 16))
    {
      v24 = *(v20 - 1);
      v23 = *v20;
      *&v70 = v24;
      *(&v70 + 1) = v23;
      v65 = 0x2A5F5F5F2ALL;
      v66 = 0xE500000000000000;
      sub_1BA164F44();
      v64 = v23;

      v25 = sub_1BA4A6E08();
      if (!v25[2])
      {
        goto LABEL_21;
      }

      v62 = v20;
      v63 = v19;
      v26 = v25[4];
      v27 = v25[5];
      v28 = v25[6];
      v29 = v25[7];

      v30 = MEMORY[0x1BFAF12A0](v26, v27, v28, v29);
      v32 = v31;

      *&v70 = v24;
      *(&v70 + 1) = v64;
      v65 = 0x2A5F5F5F2ALL;
      v66 = 0xE500000000000000;
      v33 = sub_1BA4A6E08();
      v34 = *(v33 + 16);
      if (!v34)
      {
        goto LABEL_22;
      }

      *&v70 = v33;
      *(&v70 + 1) = v33 + 32;
      v71 = 1;
      v72 = (2 * v34) | 1;
      sub_1BA1F9960(0, &qword_1EDC5E068, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
      sub_1B9F407D0();
      sub_1B9F439FC();
      v35 = sub_1BA4A6A48();
      v37 = v36;

      *&v70 = v35;
      *(&v70 + 1) = v37;
      v38 = sub_1BA4A69D8();
      sub_1B9F3A3B4(v30, v32, v38, v39, &v67);

      if (v68)
      {
        sub_1B9F25598(&v67, &v70);
        sub_1B9F25598(&v70, &v67);
        v40 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v40;
        a2 = v57;
        v21 = v63;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = sub_1B9F281E8(0, v40[2] + 1, 1, v40);
          v73 = v40;
        }

        v43 = v40[2];
        v42 = v40[3];
        v22 = v62;
        if (v43 >= v42 >> 1)
        {
          v61 = sub_1B9F281E8((v42 > 1), v43 + 1, 1, v40);
          v73 = v61;
        }

        else
        {
          v61 = v40;
        }

        v44 = v68;
        v45 = v69;
        v46 = __swift_mutable_project_boxed_opaque_existential_1(&v67, v68);
        v47 = MEMORY[0x1EEE9AC00](v46, v46);
        v49 = &v54 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v50 + 16))(v49, v47);
        sub_1B9F1C4F4(v43, v49, &v73, v44, v45);
        __swift_destroy_boxed_opaque_existential_1(&v67);
        v17 = v60;
        v16 = v56;
      }

      else
      {
        sub_1B9F44090(&v67, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
        a2 = v57;
        v17 = v60;
        v16 = v56;
        v22 = v62;
        v21 = v63;
      }

      v19 = v21 + 1;
      v20 = (v22 + 2);
      if (v58 == v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC0];
LABEL_19:

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v51 = v55;
    *v55 = 0;
    v51[1] = 0;
    v51[2] = v61;

    v53 = Array<A>.identifierToIndexDict()(v52);

    v51[3] = v53;
    v51[4] = v17;
    v51[5] = a2;
  }
}

void sub_1BA1F7B4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56[0] = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v15 = v9 + 16;
  v14 = *(v9 + 16);
  v14(v12, a3 + v13, v8);
  *&v57 = a1;
  *&v75[0] = a1;
  *(&v75[0] + 1) = a2;
  *(&v57 + 1) = a2;
  sub_1BA4A44E8();
  LOBYTE(a1) = v16;
  v19 = *(v9 + 8);
  v17 = v9 + 8;
  v18 = v19;
  v19(v12, v8);
  v68 = v15;
  v67 = v14;
  v66 = v13;
  if (a1)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14(v12, a3 + v13, v8);
    v75[0] = v57;
    v20 = sub_1BA4A4528();
    v18(v12, v8);
  }

  v21 = v17;
  v22 = *(v20 + 16);
  v60 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  v65 = v22;
  if (!v22)
  {
    v69 = MEMORY[0x1E69E7CC0];
LABEL_30:

    v51 = *(&v57 + 1);

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v52 = v56[0];
    *v56[0] = 0;
    v52[1] = 0;
    v52[2] = v69;

    v54 = Array<A>.identifierToIndexDict()(v53);

    v55 = v57;
    v52[3] = v54;
    v52[4] = v55;
    v52[5] = v51;
    return;
  }

  v62 = v18;
  v63 = v21;
  v23 = 0;
  v24 = (v20 + 40);
  v69 = MEMORY[0x1E69E7CC0];
  v64 = v8;
  v25 = v67;
  v59 = a3;
  v61 = v20;
  while (v23 < *(v20 + 16))
  {
    v27 = *(v24 - 1);
    v26 = *v24;
    v25(v12, a3 + v66, v8);
    v70 = v27;
    v71 = v26;

    sub_1BA4A4568();
    v62(v12, v8);
    v28 = *(&v75[0] + 1);
    if (!*(&v75[0] + 1))
    {
      goto LABEL_19;
    }

    v29 = *(a3 + v60);
    if (!*(v29 + 16))
    {

LABEL_19:
      v74 = 0;
      v72 = 0u;
      v73 = 0u;
      goto LABEL_20;
    }

    v30 = *&v75[0];

    v31 = sub_1B9F24A34(v30, v28);
    v33 = v32;

    if ((v33 & 1) == 0)
    {

      a3 = v59;
      v8 = v64;
      goto LABEL_19;
    }

    v34 = (*(v29 + 56) + 48 * v31);
    v35 = v34[2];
    v36 = v34[3];
    v58 = v34[1];

    if (*(v36 + 16) && (v37 = sub_1B9F24A34(v27, v26), (v38 & 1) != 0))
    {
      v39 = *(*(v36 + 56) + 8 * v37);
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v39 >= *(v35 + 16))
      {
        goto LABEL_33;
      }

      sub_1B9F0A534(v35 + 40 * v39 + 32, &v72);
    }

    else
    {
      v74 = 0;
      v72 = 0u;
      v73 = 0u;
    }

    a3 = v59;
    v8 = v64;
LABEL_20:

    if (*(&v73 + 1))
    {
      sub_1B9F25598(&v72, v75);
      sub_1B9F25598(v75, &v72);
      v40 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_1B9F281E8(0, v40[2] + 1, 1, v40);
        v76 = v40;
      }

      v43 = v40[2];
      v42 = v40[3];
      if (v43 >= v42 >> 1)
      {
        v69 = sub_1B9F281E8((v42 > 1), v43 + 1, 1, v40);
        v76 = v69;
      }

      else
      {
        v69 = v40;
      }

      v44 = *(&v73 + 1);
      v45 = v74;
      v46 = __swift_mutable_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
      v47 = MEMORY[0x1EEE9AC00](v46, v46);
      v49 = v56 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v49, v47);
      sub_1B9F1C4F4(v43, v49, &v76, v44, v45);
      __swift_destroy_boxed_opaque_existential_1(&v72);
      v8 = v64;
    }

    else
    {
      sub_1B9F44090(&v72, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    }

    ++v23;
    v24 += 2;
    v25 = v67;
    v20 = v61;
    if (v65 == v23)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1BA1F81A0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v41 = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EDC84AC8;
  swift_beginAccess();
  v43 = *(v9 + 16);
  v43(v12, &a3[v13], v8);
  *&v49[0] = a1;
  *(&v49[0] + 1) = a2;
  sub_1BA4A44E8();
  v15 = v14;
  v40 = *(v9 + 8);
  v40(v12, v8);
  v42 = a2;
  v44 = a1;
  v45 = a3;
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v43(v12, &a3[v13], v8);
    *&v49[0] = a1;
    *(&v49[0] + 1) = v42;
    v16 = sub_1BA4A4528();
    v40(v12, v8);
  }

  v43 = *(v16 + 16);
  if (v43)
  {
    v17 = 0;
    v18 = (v16 + 40);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v42;
    v21 = v45;
    while (v17 < *(v16 + 16))
    {
      v23 = *(v18 - 1);
      v24 = *v18;
      v25 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x128);

      v25(&v46, v23, v24);

      if (v47)
      {
        sub_1B9F25598(&v46, v49);
        sub_1B9F25598(v49, &v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1B9F281E8(0, v19[2] + 1, 1, v19);
          v50 = v19;
        }

        v28 = v19[2];
        v27 = v19[3];
        if (v28 >= v27 >> 1)
        {
          v19 = sub_1B9F281E8((v27 > 1), v28 + 1, 1, v19);
          v50 = v19;
        }

        v29 = v47;
        v30 = v48;
        v31 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v47);
        v32 = MEMORY[0x1EEE9AC00](v31, v31);
        v34 = &v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34, v32);
        sub_1B9F1C4F4(v28, v34, &v50, v29, v30);
        __swift_destroy_boxed_opaque_existential_1(&v46);
        v20 = v42;
      }

      else
      {
        sub_1B9F44090(&v46, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      }

      v17 = (v17 + 1);
      v18 += 2;
      v22 = v44;
      v21 = v45;
      if (v43 == v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v42;
    v22 = v44;
LABEL_16:

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v36 = v41;
    *v41 = 0;
    v36[1] = 0;
    v36[2] = v19;

    v38 = Array<A>.identifierToIndexDict()(v37);

    v36[3] = v38;
    v36[4] = v22;
    v36[5] = v20;
  }
}

uint64_t ProfileInformationConsuming.healthKitProfileAvatarInformation.getter(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 8) + 16) + 8))(v4, a1);
  if (v4[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    sub_1B9F0D9AC(0, &qword_1EBBEE370, MEMORY[0x1E69A3450], 1);
    if (swift_dynamicCast())
    {
      if (*(&v6 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
        v2 = sub_1BA4A3418();
        __swift_destroy_boxed_opaque_existential_1(&v5);
        return v2;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }
  }

  else
  {
    sub_1B9F44090(v4, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
  }

  sub_1B9F44090(&v5, &qword_1EBBEE368, &qword_1EBBEE370, MEMORY[0x1E69A3450]);
  return 0;
}

uint64_t ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v39 = a1;
  v40 = a2;
  v11 = *v6;
  sub_1BA1F8B70(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v37 - v14;
  v16 = qword_1EBC096D8;
  sub_1BA1F8B70(0, &qword_1EBBEE378, sub_1BA1F8BD4, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5460;
  *(v17 + 32) = type metadata accessor for ProfileAvatarImageCell();
  *(v17 + 40) = &protocol witness table for ProfileAvatarImageCell;
  *(v17 + 48) = type metadata accessor for ProfileNameCell();
  *(v17 + 56) = &protocol witness table for ProfileNameCell;
  *(v6 + v16) = v17;
  *(v6 + qword_1EBC096E0) = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = v11;

  v19 = sub_1BA2B8BC0(a2);
  *(v6 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = (v6 + qword_1EDC84CF0);
  v37 = a3;
  v38 = a4;
  *v20 = a3;
  v20[1] = a4;
  v21 = (v6 + qword_1EDC84CE0);
  sub_1BA1F9960(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *v21 = 0;
  v21[1] = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5470;
  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  sub_1B9F0F1B8(a3, a4);
  v24 = sub_1BA4A6758();
  v25 = [v23 initWithKey:v24 ascending:1 selector:sel_localizedStandardCompare_];

  *(v22 + 32) = v25;
  v26 = v39;
  v27 = sub_1BA4A7558();

  sub_1B9F126E0(0);
  v29 = objc_allocWithZone(v28);
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v27);
  v31 = sub_1BA4A2888();
  (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
  sub_1BA1F9800(0);
  swift_allocObject();
  *(v6 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v32 = v30;
  v33 = sub_1B9F17A68(v32, sub_1BA1F8E5C, v18, 0);

  v34 = *(*v33 + 760);

  v34(v35);
  sub_1BA4A4DA8();

  sub_1B9F0E30C(v37, v38);

  sub_1BA06F9D0(v15);
  return v33;
}

void sub_1BA1F8B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA1F8BD4()
{
  result = qword_1EBBEE380;
  if (!qword_1EBBEE380)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEE388, &protocol descriptor for ProfileInformationConsuming, 0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBEE380);
  }

  return result;
}

uint64_t sub_1BA1F8C30(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1BA4A2888();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - v12;
  sub_1BA0CD788(a1);
  sub_1B9F0D3C4(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  v15 = sub_1BA4A27F8();
  v16 = sub_1BA4A2E48();
  v17 = MEMORY[0x1E69A3330];
  *(v14 + 56) = v16;
  *(v14 + 64) = v17;
  *(v14 + 32) = v15;
  if (a3)
  {
    v18 = *(v6 + 16);
    v18(v9, v13, v5);
    v14 = sub_1B9F281E8(1, 2, 1, v14);
    v19 = *(v6 + 8);
    v19(v13, v5);
    v24 = v5;
    v25 = MEMORY[0x1E69A30F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
    v18(boxed_opaque_existential_1, v9, v5);
    *(v14 + 16) = 2;
    sub_1B9F25598(&v23, v14 + 72);
    v19(v9, v5);
  }

  else
  {
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_1BA1F8E68@<X0>(uint64_t a1@<X8>)
{
  sub_1BA1F8B70(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v68 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v60 - v16;
  if (*(v1 + qword_1EBC096E0) != 1)
  {
LABEL_7:
    v22 = sub_1BA4A2888();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }

  sub_1BA1F67F4();
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_6:

    goto LABEL_7;
  }

  v66 = v18 + 32;
  v20 = 48;
  v21 = v19;
  while (!*(*(v18 + v20) + 16))
  {
    v20 += 48;
    if (!--v21)
    {
      goto LABEL_6;
    }
  }

  v60 = v10;
  v61 = v6;
  v62 = v17;
  v63 = a1;
  v25 = 0;
  v26 = 0;
  v27 = 48;
  v67 = v18;
  do
  {
    if (*(*(v18 + v27) + 16))
    {

      v28 = 0;
      v65 = v19;
      do
      {
        v29 = v26 >= v19;
        if (v26 >= v19)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v25)
        {
          goto LABEL_46;
        }

        v30 = v66 + 48 * v26;
        v33 = *(v30 + 16);
        v32 = (v30 + 16);
        v31 = v33;
        v34 = *(v33 + 16);
        v29 = v28 >= v34;
        if (v28 >= v34)
        {
          goto LABEL_42;
        }

        v69 = v28;
        v70 = v26;
        sub_1B9F0A534(v31 + 40 * v28 + 32, v72);
        sub_1B9F0A534(v72, v71);
        v35 = sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        v36 = sub_1BA4A2888();
        v37 = v68;
        v64 = v35;
        v38 = swift_dynamicCast();
        v39 = *(v36 - 8);
        v40 = *(v39 + 56);
        v40(v37, v38 ^ 1u, 1, v36);
        __swift_destroy_boxed_opaque_existential_1(v72);
        v19 = v39 + 48;
        v41 = *(v39 + 48);
        v42 = v41(v37, 1, v36);
        sub_1BA06F9D0(v37);
        v43 = v67;
        v44 = *(v67 + 16);
        if (v42 != 1)
        {
          v68 = (v36 - 8);
          if (v70 >= v44)
          {
            goto LABEL_50;
          }

          v51 = *v32;
          v52 = *(*v32 + 16);
          v29 = v69 >= v52;
          v54 = v60;
          v53 = v61;
          if (v69 < v52)
          {
            sub_1B9F0A534(v51 + 40 * v69 + 32, v72);
            sub_1B9F0A534(v72, v71);
            v55 = swift_dynamicCast();
            v40(v54, v55 ^ 1u, 1, v36);
            __swift_destroy_boxed_opaque_existential_1(v72);
            sub_1BA06FE18(v54, v53);
            v56 = v41(v53, 1, v36);
            v29 = v56 != 0;
            if (v56 != 1)
            {
              v19 = v62;
              (*(v39 + 32))(v62, v53, v36);
              sub_1BA06F9D0(v54);
              v40(v19, 0, 1, v36);
              goto LABEL_39;
            }

            goto LABEL_47;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v26 = v70;
        v29 = v70 >= v44;
        v19 = v65;
        if (v70 >= v44)
        {
          goto LABEL_43;
        }

        v28 = v69 + 1;
        if (v69 + 1 == *(*v32 + 16))
        {
          v26 = v70 + 1;
          while (1)
          {
            v25 = v26 == v44;
            if (v26 == v44)
            {
              v28 = 0;
              v26 = v44;
              goto LABEL_22;
            }

            v45 = v43;
            sub_1BA0CF724(0);
            sub_1BA0CF8C4();
            v46 = sub_1BA1F9630(v72, v26, v45, sub_1BA0CECC0);
            v48 = *v47;

            (v46)(v72, 0);
            v49 = *(v48 + 16);

            if (v49)
            {
              break;
            }

            v29 = __CFADD__(v26, 1);
            v50 = __OFADD__(v26++, 1);
            v43 = v67;
            if (v50)
            {
              goto LABEL_45;
            }
          }

          v28 = 0;
          v43 = v67;
        }

        else
        {
          v25 = 0;
        }

LABEL_22:
        ;
      }

      while (v26 != v19 || !v25);
      v57 = *(v43 + 16);
      v29 = v19 >= v57;
      if (v19 == v57)
      {
        goto LABEL_38;
      }

LABEL_48:
      if (!v29)
      {
        __break(1u);
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    ++v26;
    v27 += 48;
    v25 = v19 == v26;
  }

  while (v19 != v26);

LABEL_38:
  v36 = sub_1BA4A2888();
  v19 = v62;
  (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
LABEL_39:
  v58 = v63;

  sub_1BA4A2888();
  v59 = *(v36 - 8);
  if ((*(v59 + 48))(v19, 1, v36) != 1)
  {

    (*(v59 + 32))(v58, v19, v36);
    return (*(v59 + 56))(v58, 0, 1, v36);
  }

LABEL_51:
  sub_1BA06F9D0(v19);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t ProfileAvatarDataSource.deinit()
{
  v0 = _s18HealthExperienceUI0A31KitProfileInformationDataSourceCfd_0();

  return v0;
}

uint64_t ProfileAvatarDataSource.__deallocating_deinit()
{
  _s18HealthExperienceUI0A31KitProfileInformationDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1BA1F9630(uint64_t *a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *, __n128)))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  *(v8 + 32) = sub_1BA1F9710(v8, a2, a3, a4);
  return sub_1BA1F96C8;
}

void sub_1BA1F96C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1BA1F9710(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *, __n128)))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v14[12] = v4;
    v14[13] = v5;
    v7 = (a3 + 48 * a2);
    v8 = v7[5];
    v9 = v7[6];
    v10 = v7[7];
    v11 = v7[8];
    v12 = v7[9];
    v14[0] = v7[4];
    v14[1] = v8;
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = v11;
    v14[5] = v12;

    (a4)(v14);

    return sub_1BA1F97F8;
  }

  __break(1u);
  return result;
}

void sub_1BA1F9800(uint64_t a1)
{
  if (!qword_1EDC6B720)
  {
    sub_1BA1F8B70(255, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A4DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B720);
    }
  }
}

uint64_t type metadata accessor for ProfileAvatarDataSource(uint64_t a1)
{
  result = qword_1EBBEE390;
  if (!qword_1EBBEE390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA1F9960(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA1F99C8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC60088 = result;
  unk_1EDC60090 = v1;
  return result;
}

uint64_t static HighlightsFetchedResultsControllerDataSource.defaultHeaderTitle.getter()
{
  if (qword_1EDC60080 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC60088;

  return v0;
}

char *HighlightsFetchedResultsControllerDataSource.__allocating_init(managedObjectContext:objectType:sortDescriptors:sourceProfiles:headerTitle:keyword:relevantDateRange:initialFetchLimit:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v53 = a8;
  v49 = a7;
  v55 = a4;
  v57 = a1;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v48 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v47 - v21;
  v23 = sub_1BA4A1C48();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_allocWithZone(v12);
  sub_1BA4A1C28();
  v51 = sub_1BA4A1C38();
  (*(v24 + 8))(v27, v23);
  v50 = a9;
  sub_1BA1FA3F8(a9, v22);
  *&v28[qword_1EDC84A78] = a2;
  v56 = v28;
  v29 = &v28[qword_1EDC84A80];
  *v29 = a5;
  *(v29 + 1) = a6;
  sub_1BA4A27B8();
  v30 = a2;
  v31 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v32 = sub_1BA4A6AE8();

  [v31 setSortDescriptors_];

  if (a2)
  {
    sub_1B9F109F8();
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1BA4B5470;
    *(a2 + 32) = v30;
  }

  v52 = a11;
  v54 = v30;
  v33 = MEMORY[0x1BFAED020](v51, a2, v22, v55);

  sub_1B9F109F8();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BA4B5470;
  *(v34 + 32) = v33;
  v58 = v34;
  if (v53)
  {
    v35 = sub_1BA4A0FA8();
    v36 = v48;
    (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
    v37 = v33;
    v38 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v36);
    v39 = v38;
    MEMORY[0x1BFAF1510]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
    v40 = v33;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v41 = sub_1BA4A6AE8();

  v42 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v31 setPredicate_];
  if ((v52 & 1) == 0)
  {
    [v31 setFetchLimit_];
  }

  v43 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v44 = v57;
  v45 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v43 initWithFetchRequest:v31 managedObjectContext:v57 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v50);
  sub_1B9F1C1B0(v22);
  return v45;
}

char *HighlightsFetchedResultsControllerDataSource.init(managedObjectContext:objectType:sortDescriptors:sourceProfiles:headerTitle:keyword:relevantDateRange:initialFetchLimit:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v52 = a8;
  v48 = a7;
  v54 = a4;
  v55 = a1;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - v21;
  v23 = sub_1BA4A1C48();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1C28();
  v50 = sub_1BA4A1C38();
  (*(v24 + 8))(v27, v23);
  v49 = a9;
  v56 = v22;
  sub_1BA1FA3F8(a9, v22);
  *(v12 + qword_1EDC84A78) = a2;
  v28 = (v12 + qword_1EDC84A80);
  *v28 = a5;
  v28[1] = a6;
  sub_1BA4A27B8();
  v29 = a2;
  v30 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v31 = sub_1BA4A6AE8();

  [v30 setSortDescriptors_];

  if (a2)
  {
    sub_1B9F109F8();
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1BA4B5470;
    *(a2 + 32) = v29;
  }

  v51 = a11;
  v53 = v29;
  v32 = MEMORY[0x1BFAED020](v50, a2, v56, v54);

  sub_1B9F109F8();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1BA4B5470;
  *(v33 + 32) = v32;
  v57 = v33;
  if (v52)
  {
    v34 = sub_1BA4A0FA8();
    v35 = v47;
    (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
    v36 = v32;
    v37 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v35);
    v38 = v37;
    MEMORY[0x1BFAF1510]();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
    v39 = v32;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v40 = sub_1BA4A6AE8();

  v41 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v30 setPredicate_];
  if ((v51 & 1) == 0)
  {
    [v30 setFetchLimit_];
  }

  v42 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v43 = v55;
  v44 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v42 initWithFetchRequest:v30 managedObjectContext:v55 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v49);
  sub_1B9F1C1B0(v56);
  return v44;
}

uint64_t sub_1BA1FA3F8(uint64_t a1, uint64_t a2)
{
  sub_1BA170230(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA1FA45C@<X0>(void *a1@<X8>)
{
  v29 = a1;
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v11 = *(v1 + qword_1EDC84A78);
  v12 = *(v1 + qword_1EDC84A80);
  v27 = *(v1 + qword_1EDC84A80 + 8);
  v28 = v12;

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  type metadata accessor for DefaultHeaderCollectionReusableView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v26 = sub_1BA4A1318();
  v16 = v15;

  if (v11)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v11;

    v18 = sub_1BA1F42C8;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  (*(v3 + 16))(v6, v10, v2);
  v19 = v2;
  v20 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  v21 = v11;
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v28, v27, v26, v16, v18, v17, v6, 0, 0);
  v23 = v22;
  sub_1B9F0E310(v18, v17);
  (*(v3 + 8))(v10, v19);
  v24 = v29;
  v29[3] = v20;
  result = sub_1BA011754();
  v24[4] = result;
  *v24 = v23;
  return result;
}

id HighlightsFetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsFetchedResultsControllerDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HighlightsFetchedResultsControllerDataSource(uint64_t a1)
{
  result = qword_1EDC60068;
  if (!qword_1EDC60068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA1FA864()
{
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v53 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v52 = v50 - v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v50 - v8;
  v10 = sub_1BA4A1728();
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v50 - v16;
  v18 = sub_1BA4A15D8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_allocWithZone(MEMORY[0x1E69A2D90]) init];
  v24 = sub_1BA4A37C8();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 identifier];

    v54 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v28 = v27;
  }

  else
  {
    v29 = sub_1BA4A37E8();
    if (v30)
    {
      v54 = v29;
      v28 = v30;
    }

    else
    {
      sub_1BA4A3818();
      v54 = sub_1BA4A1518();
      v32 = v31;
      (*(v19 + 8))(v22, v18);
      v28 = v32;
    }
  }

  sub_1BA4A3868();
  v33 = v55;
  v34 = *(v55 + 48);
  if (v34(v9, 1, v10) == 1)
  {
    goto LABEL_9;
  }

  v50[0] = v13;
  v50[1] = v28;
  v51 = v23;
  v35 = *(v33 + 32);
  v35(v17, v9, v10);
  v9 = v52;
  sub_1BA4A3858();
  if (v34(v9, 1, v10) != 1)
  {
    v39 = v50[0];
    v35(v50[0], v9, v10);
    sub_1BA4A1628();
    v41 = v40;
    sub_1BA4A1628();
    v43 = round((v41 - v42) / 3600.0);
    if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v43 > -9.22337204e18)
    {
      if (v43 < 9.22337204e18)
      {
        v44 = v17;
        v56 = v43;
        sub_1BA4A82D8();
        v45 = v39;
        v38 = v46;
        v47 = *(v55 + 8);
        v47(v45, v10);
        v47(v44, v10);
        v23 = v51;
        goto LABEL_16;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v33 + 8))(v17, v10);
  v23 = v51;
LABEL_9:
  sub_1BA05DB44(v9);
  v36 = v53;
  sub_1BA4A3838();
  v37 = v34(v36, 1, v10);
  sub_1BA05DB44(v36);
  if (v37 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 0xE100000000000000;
  }

LABEL_16:
  v48 = sub_1BA4A6758();

  if (v38)
  {
    v49 = sub_1BA4A6758();
  }

  else
  {
    v49 = 0;
  }

  [v23 submitHealthEventWithDescription:v48 requestInterval:v49];
}

uint64_t sub_1BA1FAD58(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1BA4A7F08();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFAF2860](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1BA4A7CC8();
    sub_1BA4A7F08();
  }

  return v8;
}

uint64_t sub_1BA1FAEC0(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1BA4A7F08();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1B9F0AD9C(i, v5);
    sub_1B9F0ADF8(0, &qword_1EBBE9970, 0x1E6996408);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1BA4A7ED8();
    sub_1BA4A7F18();
    sub_1BA4A7F28();
    sub_1BA4A7EE8();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1BA1FAFCC(uint64_t a1)
{
  v2 = sub_1BA4A7A08();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return sub_1BA4A7A08();
  }

  if (v1[4])
  {
    v7 = v1[3];

    return v7;
  }

  else
  {
    if (v1[2])
    {
      v8 = v1[1];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }
}

uint64_t sub_1BA1FB06C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v1;
}

id sub_1BA1FB0E0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1FB158()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView);
  }

  else
  {
    type metadata accessor for SummarySharingContactSelectionSplashView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1FB1D0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView);
  }

  else
  {
    type metadata accessor for VerticallyCenteredContentScrollView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setKeyboardDismissMode_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1FB298()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v65.receiver = v0;
  v65.super_class = type metadata accessor for SummarySharingOnboardingContactPickerViewController(0);
  objc_msgSendSuper2(&v65, sel_viewDidLoad);
  sub_1BA1FCC80();
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v7 = sub_1BA1FB1D0();
  [v6 addSubview_];

  v8 = sub_1BA1FB158();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v64 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView;
  v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView;
  v11 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView];
  v12 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v13 = *&v9[v12];
  *&v9[v12] = v11;
  v14 = v11;
  v15 = v9;
  sub_1BA104BF4(v13);

  v16 = *&v1[v10];
  v17 = swift_allocObject();
  *(v17 + 16) = ObjectType;
  v18 = &v16[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler];
  v19 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler];
  v20 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler + 8];
  *v18 = sub_1BA205704;
  v18[1] = v17;
  v21 = v16;
  sub_1B9F0E310(v19, v20);

  v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController];
  [v22 setDelegate_];
  [v1 addChildViewController_];
  result = [v22 tableView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v63 = v10;
  v23 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView;
  v24 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView] = result;
  v25 = result;

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v23] setKeyboardDismissMode_];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = result;
  [result addSubview_];

  [*&v1[v23] setHidden_];
  v27 = [v1 navigationItem];
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonTapped_];
  [v27 setRightBarButtonItem_];

  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v1;
  sub_1BA4A4F38();
  sub_1BA2057F0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4C27A0;
  v31 = [*&v1[v23] leadingAnchor];
  result = [v29 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = result;
  v33 = [result leadingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v30 + 32) = v34;
  v35 = [*&v1[v23] trailingAnchor];
  result = [v29 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = result;
  v37 = [result trailingAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v30 + 40) = v38;
  v39 = [*&v1[v23] topAnchor];
  result = [v29 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v40 = result;
  v41 = [result safeAreaLayoutGuide];

  v42 = [v41 topAnchor];
  v43 = [v39 constraintEqualToAnchor_];

  *(v30 + 48) = v43;
  v44 = [*&v1[v23] bottomAnchor];
  result = [v29 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v45 = result;
  v46 = [result bottomAnchor];

  v47 = [v44 constraintEqualToAnchor_];
  *(v30 + 56) = v47;
  v48 = [*&v1[v64] leadingAnchor];
  result = [v29 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v49 = result;
  v50 = [result leadingAnchor];

  v51 = [v48 constraintEqualToSystemSpacingAfterAnchor:v50 multiplier:1.0];
  *(v30 + 64) = v51;
  result = [v29 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v52 = result;
  v53 = [result trailingAnchor];

  v54 = [*&v1[v64] trailingAnchor];
  v55 = [v53 constraintEqualToSystemSpacingAfterAnchor:v54 multiplier:1.0];

  *(v30 + 72) = v55;
  v56 = [*&v1[v64] topAnchor];
  result = [v29 &selRef_textFieldShouldBeginEditing_];
  if (result)
  {
    v57 = result;
    v58 = objc_opt_self();
    v59 = [v57 safeAreaLayoutGuide];

    v60 = [v59 topAnchor];
    v61 = [v56 constraintEqualToSystemSpacingBelowAnchor:v60 multiplier:1.0];

    *(v30 + 80) = v61;
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v62 = sub_1BA4A6AE8();

    [v58 activateConstraints_];

    [*&v1[v63] setHidden_];
    return [*&v1[v23] setHidden_];
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1BA1FBAC0(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v3 = sub_1BA201CF8(0xD00000000000001BLL, 0x80000001BA4F48A0, 1);
  if (v3)
  {
    v14 = v3;
    v4 = [objc_opt_self() defaultWorkspace];
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(MEMORY[0x1E696B090]);
      v7 = sub_1BA4A6758();
      v8 = [v6 initWithActivityType_];

      v9 = objc_allocWithZone(MEMORY[0x1E69636B8]);
      v10 = v14;
      v11 = [v9 init];
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      aBlock[4] = sub_1BA20570C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA454240;
      aBlock[3] = &block_descriptor_118;
      v13 = _Block_copy(aBlock);

      [v5 openUserActivity:v8 usingApplicationRecord:v10 configuration:v11 completionHandler:v13];

      _Block_release(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_1BA1FBCF8(char a1, void *a2, uint64_t a3)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v10 = a2;
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315650;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2080;
    v26 = a2;
    v19 = a2;
    sub_1B9F6A85C(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], sub_1B9F0D950);
    v20 = sub_1BA4A6808();
    v22 = sub_1B9F0B82C(v20, v21, &v27);

    *(v14 + 20) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "%s Open Contacts app, success = %{BOOL}d, error = %s", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    return (*(v6 + 8))(v9, v25);
  }

  else
  {

    return (*(v6 + 8))(v9, v5);
  }
}

void sub_1BA1FBFA8(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SummarySharingOnboardingContactPickerViewController(0);
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  [v3 setTitle_];

  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 keyboardLayoutGuide];

    v8 = [v7 topAnchor];
    v9 = sub_1BA1FB1D0();
    v10 = [v9 bottomAnchor];

    v11 = [v8 constraintEqualToSystemSpacingBelowAnchor:v10 multiplier:1.0];
    [v11 setActive_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA1FC1F4(char a1)
{
  v2 = v1;
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SummarySharingOnboardingContactPickerViewController(0);
  v21.receiver = v2;
  v21.super_class = v14;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v15 = sub_1BA4A7308();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  aBlock[4] = sub_1BA2056FC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_109;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void sub_1BA1FC500()
{
  v0 = sub_1BA1FB0E0();
  v1 = [v0 searchBar];

  [v1 becomeFirstResponder];
}

uint64_t sub_1BA1FC5C4()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable])
  {

    sub_1BA4A4D48();
  }

  v2 = [v0 presentedViewController];
  if (v2)
  {
    v3 = v2;
    if (([v2 isBeingDismissed] & 1) == 0)
    {
      [v1 dismissViewControllerAnimated:1 completion:0];

      goto LABEL_11;
    }
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachableContactIdentifiers;
  swift_beginAccess();
  if (*(*&v1[v4] + 16))
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  v12 = v5;

  sub_1B9FEF9F4(v1, &v8);

  sub_1BA2056EC(v8, v9, v10, v11);
LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v8) = 0;
  v6 = v1;
  return sub_1BA4A4F38();
}

double sub_1BA1FC780(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = sub_1BA4A7A28();
  v7 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_selectionFlowContext;
  memset(v40, 0, sizeof(v40));
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 5;
  v39 = 6;

  sub_1B9FEEC64(ObjectType, v40, 1, &v35);

  sub_1B9FF3BFC(v35, v36, v37, v38);
  sub_1B9F0DD40(v40, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA2057F0);
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_healthExperienceStore], &v35);
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_healthStore];
  v9 = *&v2[v7];
  v10 = type metadata accessor for SummarySharingOnboardingChooseSelectionFlowViewController();
  v11 = objc_allocWithZone(v10);
  sub_1B9F0A534(&v35, &v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthExperienceStore]);
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthStore] = v8;
  v40[0] = *(a1 + 8);
  v41 = *(a1 + 24);
  v12 = &v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact];
  v13 = *a1;
  v14 = a1[1];
  *(v12 + 4) = *(a1 + 4);
  *v12 = v13;
  *(v12 + 1) = v14;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher] = v6;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext] = v9;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedItems] = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  swift_retain_n();
  v15 = v8;
  v16 = v5;
  sub_1B9F87F44(v40, v34);
  sub_1B9F87F44(&v41, v34);
  if (qword_1EBBE8858 != -1)
  {
    swift_once();
  }

  v17 = sub_1BA4A6758();
  if (qword_1EBBE8860 != -1)
  {
    swift_once();
  }

  sub_1B9F2EAC0(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5480;
  v19 = sub_1BA1FAFCC(v18);
  v21 = v20;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1B9F1BE20();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_1BA4A6768();

  v22 = sub_1BA4A6758();

  v33.receiver = v11;
  v33.super_class = v10;
  v23 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_icon_contentLayout_, v17, v22, 0, 3);

  v24 = v23;
  sub_1BA2011C0();
  if (qword_1EBBE8868 != -1)
  {
    swift_once();
  }

  v25 = sub_1BA4A6758();
  v26 = sub_1BA4A6758();

  if (qword_1EBBE8870 != -1)
  {
    swift_once();
  }

  v27 = sub_1BA4A6758();
  v28 = sub_1BA4A6758();

  v29 = [v24 hxui_addCancelButton];

  __swift_destroy_boxed_opaque_existential_1(&v35);
  v30 = [v2 navigationController];
  if (v30)
  {
    v31 = v30;
    [v30 pushViewController:v24 animated:1];
  }

  return result;
}

uint64_t sub_1BA1FCC80()
{
  sub_1BA204E7C(0);
  v1 = *(v0 - 8);
  v61 = v0;
  v62 = v1;
  MEMORY[0x1EEE9AC00](v0, v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1E6969FF0];
  v56 = MEMORY[0x1E69E6720];
  sub_1B9F0A878(0, &qword_1EBBEE5F8, MEMORY[0x1E6969FF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - v6;
  v54 = sub_1BA4A7A58();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA204F38(0);
  v47 = v11;
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA205008(0);
  v53 = v15;
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BA4A7488();
  v59 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v18);
  v58 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v45 - v22;
  v51 = objc_opt_self();
  v24 = [v51 defaultCenter];
  v25 = sub_1BA1FB0E0();
  v26 = [v25 searchBar];

  v27 = [v26 searchTextField];
  v49 = v23;
  sub_1BA4A7498();

  sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1B9F28F00(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1BA4A4FE8();
  sub_1BA4A7A48();
  v28 = [objc_opt_self() mainRunLoop];
  v63 = v28;
  v29 = sub_1BA4A7A38();
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  sub_1B9F0ADF8(0, &qword_1EBBEE610, 0x1E695DFD0);
  sub_1B9F28F00(&qword_1EBBEE618, sub_1BA204F38, MEMORY[0x1E695BD60]);
  sub_1BA2050D4();
  v31 = v46;
  v30 = v47;
  sub_1BA4A50C8();
  sub_1B9F0DD40(v7, &qword_1EBBEE5F8, v57, v56, sub_1B9F0A878);

  (*(v52 + 8))(v10, v54);
  (*(v50 + 8))(v14, v30);
  v32 = swift_allocObject();
  v33 = v45;
  *(v32 + 16) = v45;
  sub_1B9F28F00(&qword_1EBBEE628, sub_1BA205008, MEMORY[0x1E695BE50]);
  v34 = v33;
  v35 = v53;
  sub_1BA4A5148();

  (*(v55 + 8))(v31, v35);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();

  v36 = [v51 defaultCenter];
  v37 = [*&v34[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController] searchBar];
  v38 = [v37 searchTextField];

  v39 = v58;
  sub_1BA4A7498();

  sub_1B9F0ADF8(0, &unk_1EBBEE5E8, 0x1E69DCF28);
  v40 = v60;
  v41 = v48;
  sub_1BA4A4FA8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F28F00(&unk_1EBBEE630, sub_1BA204E7C, MEMORY[0x1E695BC80]);
  v42 = v61;
  sub_1BA4A5148();

  (*(v62 + 8))(v40, v42);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();

  v43 = *(v59 + 8);
  v43(v39, v41);
  return (v43)(v49, v41);
}

void sub_1BA1FD514(uint64_t *a1@<X8>)
{
  sub_1BA4A0FF8();
  if (!v8)
  {
    sub_1B9F0DD40(v7, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA2057F0);
    goto LABEL_6;
  }

  sub_1B9F0ADF8(0, &unk_1EBBEE5E8, 0x1E69DCF28);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v2 = [v6 text];

  if (v2)
  {
    v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
}

double sub_1BA1FD62C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable))
  {

    sub_1BA4A4D48();
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v8 = sub_1BA1FB158();
    [v8 setHidden_];

    [*(a2 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView) setHidden_];
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults;
  swift_beginAccess();
  *(a2 + v9) = MEMORY[0x1E69E7CC0];

  sub_1BA1FD738(v5, v6);

  return result;
}

void sub_1BA1FD738(uint64_t a1, unint64_t a2)
{
  v2[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  sub_1BA4A4F38();
  v6 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID;
  if (*&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID])
  {
    [*&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager] cancelTaskWithID_];
    v8 = *&v5[v7];
    *&v5[v7] = 0;
  }

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E6996330]) init];
    v11 = sub_1BA4A6AE8();
    [v10 setBundleIdentifiers_];

    [v10 setPredictsBasedOnOutgoingInteraction_];
    v12 = sub_1BA4A6758();
    v13 = [v6 searchForText:v12 withAutocompleteFetchContext:v10 consumer:v5];

    v14 = *&v5[v7];
    *&v5[v7] = v13;
  }

  else
  {
    v15 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController];
    sub_1B9F0ADF8(0, &qword_1EBBE9970, 0x1E6996408);
    v14 = sub_1BA4A6AE8();
    [v15 updateRecipients:v14 disambiguatingRecipient:0];
  }
}

uint64_t sub_1BA1FD918@<X0>(void *a1@<X8>)
{
  sub_1BA4A0FF8();
  if (!v3[3])
  {
    result = sub_1B9F0DD40(v3, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA2057F0);
    goto LABEL_5;
  }

  sub_1B9F0ADF8(0, &unk_1EBBEE5E8, 0x1E69DCF28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 0;
  }

  return result;
}

void sub_1BA1FD9DC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong presentedViewController];

    if (v5)
    {
      if (([v5 isBeingDismissed] & 1) != 0 || (swift_beginAccess(), (v6 = swift_unknownObjectWeakLoadStrong()) == 0))
      {
      }

      else
      {
        v7 = v6;
        v9[3] = sub_1B9F0ADF8(0, &unk_1EBBEE5E8, 0x1E69DCF28);
        v9[0] = v2;
        v8 = v2;
        sub_1BA1FC5C4();

        __swift_destroy_boxed_opaque_existential_1(v9);
      }
    }
  }
}

id sub_1BA1FDAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingOnboardingContactPickerViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingOnboardingContactPickerViewController(uint64_t a1)
{
  result = qword_1EBBEE4D0;
  if (!qword_1EBBEE4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA1FDD1C(uint64_t a1)
{
  sub_1BA2057F0(319, &qword_1EBBEE4E0, &type metadata for QueryState, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA1FDE34(uint64_t a1, char *a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);

    v17 = v16;
    sub_1BA20379C(v14, v15, v17, a2);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      v18 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController];
      [v18 invalidatePreferredRecipients];
      [v18 invalidateAddressTintColors];
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = a2;
      sub_1BA4A4F38();
      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1BA1FE078(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v94 = sub_1BA4A3EA8();
  v3 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v4);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_74:
    v7 = sub_1BA4A7CC8();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = sub_1BA1FB158();
  v9 = v8;
  if (!v7)
  {
    [v8 setHidden_];

    v69 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView);

    [v69 setHidden_];
    return;
  }

  v100 = v3;
  v95 = v6;
  [v8 setHidden_];

  v88 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView;
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView) setHidden_];
  v6 = 0;
  v89 = v1;
  v101 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_meContactIdentifier);
  v102 = a1 & 0xC000000000000001;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v102)
    {
      v12 = MEMORY[0x1BFAF2860](v6, a1);
    }

    else
    {
      if (v6 >= *(v10 + 16))
      {
        goto LABEL_69;
      }

      v12 = *(a1 + 8 * v6 + 32);
    }

    v13 = v12;
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v15 = [v12 contact];
    if (!v15)
    {
      goto LABEL_6;
    }

    v1 = v15;
    v16 = v7;
    v17 = a1;
    v18 = [v15 identifier];
    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v3 = v20;

    v21 = v101[1];
    if (!v21)
    {

      a1 = v17;
      v7 = v16;
LABEL_6:
      v1 = aBlock;
      sub_1BA4A7ED8();
      v3 = *(aBlock[0] + 16);
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      goto LABEL_7;
    }

    v22 = v19 == *v101 && v21 == v3;
    a1 = v17;
    if (v22)
    {

      v7 = v16;
    }

    else
    {
      v23 = sub_1BA4A8338();

      v7 = v16;
      if ((v23 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    ++v6;
  }

  while (v14 != v7);
  v24 = aBlock[0];
  v104 = MEMORY[0x1E69E7CC0];
  if (aBlock[0] < 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    v3 = sub_1BA4A7CC8();
    v25 = v95;
    if (!v3)
    {
      goto LABEL_76;
    }

LABEL_25:
    v26 = 0;
    v98 = v24 & 0xC000000000000001;
    v92 = (v100 + 8);
    v93 = v24 + 32;
    *&v11 = 136315394;
    v90 = v11;
    v96 = v3;
    v97 = v24;
    while (1)
    {
      while (1)
      {
        if (v98)
        {
          v27 = MEMORY[0x1BFAF2860](v26, v24);
        }

        else
        {
          if (v26 >= *(v24 + 16))
          {
            goto LABEL_73;
          }

          v27 = *(v93 + 8 * v26);
        }

        v28 = v27;
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_70;
        }

        v30 = [v27 contact];
        if (v30)
        {
          break;
        }

        sub_1BA4A3E28();
        v44 = v28;
        v1 = v25;
        v45 = sub_1BA4A3E88();
        v6 = sub_1BA4A6FA8();

        if (os_log_type_enabled(v45, v6))
        {
          v1 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          aBlock[0] = v47;
          *v1 = v90;
          v48 = sub_1BA4A85D8();
          a1 = sub_1B9F0B82C(v48, v49, aBlock);

          *(v1 + 4) = a1;
          *(v1 + 6) = 2112;
          *(v1 + 14) = v44;
          *v46 = v44;
          v50 = v44;
          _os_log_impl(&dword_1B9F07000, v45, v6, "%s Unable to get contact from recipient: %@.", v1, 0x16u);
          sub_1B9F8C6C8(v46);
          v51 = v46;
          v24 = v97;
          MEMORY[0x1BFAF43A0](v51, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v47);
          v52 = v47;
          v3 = v96;
          MEMORY[0x1BFAF43A0](v52, -1, -1);
          MEMORY[0x1BFAF43A0](v1, -1, -1);
        }

        else
        {
        }

        (*v92)(v25, v94);
        if (v26 == v3)
        {
          goto LABEL_76;
        }
      }

      v6 = v30;
      v31 = [v30 emailAddresses];
      v32 = sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
      v33 = sub_1BA4A6B08();

      if (v33 >> 62)
      {
        v3 = sub_1BA4A7CC8();
      }

      else
      {
        v3 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v99 = v28;
      v100 = v26;
      v101 = v6;
      if (v3)
      {
        aBlock[0] = MEMORY[0x1E69E7CC0];
        v1 = aBlock;
        sub_1B9F1C360(0, v3 & ~(v3 >> 63), 0);
        if (v3 < 0)
        {
          goto LABEL_71;
        }

        v102 = v32;
        v34 = 0;
        v35 = aBlock[0];
        do
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x1BFAF2860](v34, v33);
          }

          else
          {
            v36 = *(v33 + 8 * v34 + 32);
          }

          v37 = v36;
          v38 = [v36 value];
          v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v41 = v40;

          aBlock[0] = v35;
          v6 = *(v35 + 16);
          v42 = *(v35 + 24);
          a1 = v6 + 1;
          if (v6 >= v42 >> 1)
          {
            sub_1B9F1C360((v42 > 1), v6 + 1, 1);
            v35 = aBlock[0];
          }

          ++v34;
          *(v35 + 16) = a1;
          v43 = v35 + 16 * v6;
          *(v43 + 32) = v39;
          *(v43 + 40) = v41;
        }

        while (v3 != v34);

        v26 = v100;
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      v53 = [v101 phoneNumbers];
      v54 = sub_1BA4A6B08();

      if (v54 >> 62)
      {
        v55 = sub_1BA4A7CC8();
        if (!v55)
        {
LABEL_64:

          v58 = MEMORY[0x1E69E7CC0];
          goto LABEL_26;
        }
      }

      else
      {
        v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v55)
        {
          goto LABEL_64;
        }
      }

      v56 = v54;
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v1 = aBlock;
      sub_1B9F1C360(0, v55 & ~(v55 >> 63), 0);
      if (v55 < 0)
      {
        goto LABEL_72;
      }

      v57 = 0;
      v58 = aBlock[0];
      v59 = v56;
      v102 = v56 & 0xC000000000000001;
      do
      {
        if (v102)
        {
          v60 = MEMORY[0x1BFAF2860](v57, v59);
        }

        else
        {
          v60 = *(v59 + 8 * v57 + 32);
        }

        v61 = v60;
        v62 = [v60 value];
        v63 = [v62 stringValue];

        v64 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v66 = v65;

        aBlock[0] = v58;
        v6 = *(v58 + 16);
        v67 = *(v58 + 24);
        a1 = v6 + 1;
        if (v6 >= v67 >> 1)
        {
          sub_1B9F1C360((v67 > 1), v6 + 1, 1);
          v58 = aBlock[0];
        }

        ++v57;
        *(v58 + 16) = a1;
        v68 = v58 + 16 * v6;
        *(v68 + 32) = v64;
        *(v68 + 40) = v66;
        v59 = v56;
      }

      while (v55 != v57);

      v26 = v100;
LABEL_26:
      v1 = &v104;
      sub_1B9FE271C(v35);
      sub_1B9FE271C(v58);

      v25 = v95;
      v3 = v96;
      v24 = v97;
      if (v26 == v96)
      {
        goto LABEL_76;
      }
    }
  }

  v3 = *(aBlock[0] + 16);
  v25 = v95;
  if (v3)
  {
    goto LABEL_25;
  }

LABEL_76:
  v70 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults;
  v71 = v89;
  swift_beginAccess();
  v72 = *(v71 + v70);
  if (v72 >> 62)
  {
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_80;
    }

LABEL_78:
    v73 = v89;
    swift_beginAccess();

    sub_1B9FE2934(v74);
    swift_endAccess();
  }

  else
  {
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_78;
    }

LABEL_80:
    v73 = v89;
    *(v89 + v70) = v24;
  }

  v75 = *(v73 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController);
  sub_1B9F0ADF8(0, &qword_1EBBE9970, 0x1E6996408);

  v76 = sub_1BA4A6AE8();

  [v75 setRecipients_];

  v77 = [v75 tableView];
  if (v77)
  {
    v78 = v77;

    v79 = *(v73 + v88);
    *(v73 + v88) = v78;

    v80 = *(v73 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_sharingEntryStore);
    v81 = sub_1BA4A6AE8();

    v82 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_isInitialReachabilityQuery;
    v83 = *(v73 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_isInitialReachabilityQuery);
    v84 = swift_allocObject();
    v85 = ObjectType;
    *(v84 + 16) = v73;
    *(v84 + 24) = v85;
    aBlock[4] = sub_1BA204E04;
    aBlock[5] = v84;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA454240;
    aBlock[3] = &block_descriptor_73;
    v86 = _Block_copy(aBlock);
    v87 = v73;

    [v80 beginObservingReachabilityStatusForIdentifiers:v81 isInitialQuery:v83 completion:v86];
    _Block_release(v86);

    *(v73 + v82) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA1FEBFC(char a1, void *a2, void *a3, uint64_t a4)
{
  v66 = a4;
  v67 = a3;
  v6 = sub_1BA4A6478();
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3EA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v64 - v25;
  if (a1)
  {
    sub_1BA4A3E28();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      v31 = sub_1BA4A85D8();
      v65 = v14;
      v33 = sub_1B9F0B82C(v31, v32, aBlock);
      v66 = v6;
      v34 = v15;
      v35 = v33;

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1B9F07000, v27, v28, "%s Successfully started reachability query for contacts", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);

      (*(v34 + 8))(v26, v65);
      v6 = v66;
    }

    else
    {

      (*(v15 + 8))(v26, v14);
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v50 = sub_1BA4A7308();
    v51 = swift_allocObject();
    v52 = v67;
    *(v51 + 16) = v67;
    aBlock[4] = sub_1BA204E0C;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_79;
    v53 = _Block_copy(aBlock);
    v54 = v52;

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v13, v9, v53);
    _Block_release(v53);

    (*(v70 + 8))(v9, v6);
    return (*(v68 + 8))(v13, v69);
  }

  else if (a2)
  {
    v36 = v15;
    v37 = a2;
    sub_1BA4A3E28();
    v38 = a2;
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315394;
      v43 = sub_1BA4A85D8();
      v45 = sub_1B9F0B82C(v43, v44, aBlock);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      aBlock[6] = a2;
      v46 = a2;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v47 = sub_1BA4A6828();
      v49 = sub_1B9F0B82C(v47, v48, aBlock);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_1B9F07000, v39, v40, "%s Could not fetch reachable contacts with error: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    else
    {
    }

    return (*(v36 + 8))(v22, v14);
  }

  else
  {
    sub_1BA4A3E28();
    v56 = sub_1BA4A3E88();
    v57 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = v15;
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v58 = 136315138;
      v61 = sub_1BA4A85D8();
      v63 = sub_1B9F0B82C(v61, v62, aBlock);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_1B9F07000, v56, v57, "%s Could not fetch reachable contacts.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v58, -1, -1);

      return (*(v59 + 8))(v18, v14);
    }

    else
    {

      return (*(v15 + 8))(v18, v14);
    }
  }
}

void sub_1BA1FF364()
{
  if ((*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController);
    sub_1B9F0ADF8(0, &qword_1EBBE9970, 0x1E6996408);
    v2 = sub_1BA4A6AE8();
    [v1 updateRecipients:v2 disambiguatingRecipient:0];

    v3 = sub_1BA1FB158();
    [v3 setHidden_];

    [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView) setHidden_];
  }

  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID) = 0;
}

uint64_t sub_1BA1FF488(void *a1)
{
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - v13;
  swift_beginAccess();

  v16 = sub_1BA201EC4(v15);

  v17 = [a1 normalizedAddress];
  if (!v17)
  {
    sub_1BA4A3E28();
    v41 = a1;
    v42 = sub_1BA4A3E88();
    v43 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v2;
      v46 = v45;
      v47 = swift_slowAlloc();
      v57 = v16;
      v58[0] = v47;
      v48 = v3;
      v49 = v47;
      *v44 = 136315394;
      v50 = sub_1BA4A85D8();
      v52 = sub_1B9F0B82C(v50, v51, v58);

      *(v44 + 4) = v52;
      *(v44 + 12) = 2112;
      *(v44 + 14) = v41;
      *v46 = v41;
      v53 = v41;
      _os_log_impl(&dword_1B9F07000, v42, v43, "%s Recipient address is nil: %@", v44, 0x16u);
      sub_1B9F8C6C8(v46);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      MEMORY[0x1BFAF43A0](v44, -1, -1);

      (*(v48 + 8))(v6, v56);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  v57 = v3;
  v18 = v17;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v19 = sub_1BA4A6818();
  v21 = v20;

  if (!v16[2] || (sub_1B9F24A34(v19, v21), (v22 & 1) == 0))
  {
    sub_1BA4A3E28();

    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v56 = v2;
      v36 = v35;
      v58[0] = v35;
      *v34 = 136315394;
      v37 = sub_1BA4A85D8();
      v39 = sub_1B9F0B82C(v37, v38, v58);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v40 = sub_1B9F0B82C(v19, v21, v58);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_1B9F07000, v32, v33, "%s Recipient with address: %s is not reachable", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      (v57[1])(v10, v56);
    }

    else
    {

      (v57[1])(v10, v2);
    }

    return 0;
  }

  sub_1BA4A3E28();

  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v58[0] = v26;
    *v25 = 136315394;
    v27 = sub_1BA4A85D8();
    v29 = sub_1B9F0B82C(v27, v28, v58);
    v56 = v2;
    v30 = v29;

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = sub_1B9F0B82C(v19, v21, v58);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_1B9F07000, v23, v24, "%s Recipient with address: %s is reachable", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);

    (v57[1])(v14, v56);
  }

  else
  {

    (v57[1])(v14, v2);
  }

  return 1;
}

id sub_1BA1FFBBC(void *a1)
{
  v2 = sub_1BA4A6478();
  v52 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 contact];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v17 = result;
  if (![a1 kind])
  {
    v22 = [a1 address];
    if (v22)
    {
      v23 = v22;
      v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = v24;
    }

    else
    {
      v47 = 0;
      v21 = 0;
    }

    v33 = [a1 address];
    if (!v33)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ([a1 kind] == 1)
  {
    v18 = [a1 normalizedAddress];
    if (v18)
    {
      v19 = v18;
      v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = v20;
    }

    else
    {
      v47 = 0;
      v21 = 0;
    }

    v33 = [a1 address];
    if (!v33)
    {
LABEL_17:
      v48 = v2;
      v34 = v17;
      v36 = 0;
      v38 = 0;
      goto LABEL_18;
    }

LABEL_14:
    v48 = v2;
    v34 = v17;
    v35 = v33;
    v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v38 = v37;

LABEL_18:
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);

    v39 = sub_1BA4A7308();
    v40 = swift_allocObject();
    v41 = v49;
    v40[2] = v49;
    v40[3] = v34;
    v40[4] = v47;
    v40[5] = v21;
    v40[6] = v36;
    v40[7] = v38;
    aBlock[4] = sub_1BA204D70;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_58;
    v42 = _Block_copy(aBlock);
    v43 = v41;
    v44 = v34;

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    v45 = v48;
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v9, v5, v42);
    _Block_release(v42);

    (*(v52 + 8))(v5, v45);
    return (*(v50 + 8))(v9, v51);
  }

  sub_1BA4A3E28();
  v25 = a1;
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136642819;
    aBlock[6] = [v25 contact];
    sub_1B9F6A85C(0, &qword_1EBBEE5C0, &qword_1EBBEE5C8, 0x1E695CD58, sub_1B9F0ADF8);
    v30 = sub_1BA4A6808();
    v32 = sub_1B9F0B82C(v30, v31, aBlock);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1B9F07000, v26, v27, "%{sensitive}s Selected contact address was not of kind iCloud or phone number.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  else
  {
  }

  return (*(v11 + 8))(v15, v10);
}