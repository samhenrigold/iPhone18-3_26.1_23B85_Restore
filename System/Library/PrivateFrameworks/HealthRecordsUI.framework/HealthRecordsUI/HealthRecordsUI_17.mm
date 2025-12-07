void _s15HealthRecordsUI28RecordCategoryViewControllerC016didDismissSearchG0yySo08UISearchG0CF_0()
{
  v1 = v0;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    goto LABEL_36;
  }

  v2 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentViewController;
  v3 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentViewController];
  v4 = v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_isSearching];
  v35 = v3;
  if (v4 == 1)
  {
    v5 = sub_1D11D1814();
  }

  else
  {
    v5 = sub_1D11D1250();
    if (!v5)
    {
      v9 = v35;
      goto LABEL_27;
    }
  }

  v6 = v5;
  if (!v3)
  {
    [v1 setEditing:0 animated:1];
    [v35 setEditing:0 animated:1];
    goto LABEL_12;
  }

  sub_1D106F934(0, &unk_1EC6099E0, 0x1E69DD258);
  v7 = v35;
  v34 = v6;
  v8 = sub_1D1390D8C();

  if ((v8 & 1) == 0)
  {
    [v1 setEditing:0 animated:1];
    v10 = v7;
    [v10 setEditing:0 animated:1];
    [v10 willMoveToParentViewController_];
    v11 = [v10 view];
    if (!v11)
    {
      goto LABEL_39;
    }

    v12 = v11;
    [v11 removeFromSuperview];

LABEL_12:
    [v35 removeFromParentViewController];

    v13 = *&v1[v2];
    *&v1[v2] = v6;
    v14 = v6;

    [v14 willMoveToParentViewController_];
    v15 = [v14 view];
    if (v15)
    {
      v16 = v15;
      [v15 setPreservesSuperviewLayoutMargins_];

      v17 = [v1 view];
      if (v17)
      {
        v18 = v17;
        v19 = [v14 view];
        if (v19)
        {
          v20 = v19;
          [v18 addSubview_];

          [v1 addChildViewController_];
          [v14 didMoveToParentViewController_];
          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (v21)
          {
            v22 = v21;
            v23 = v14;
            v24 = [v22 collectionView];
          }

          else
          {
            objc_opt_self();
            v25 = swift_dynamicCastObjCClass();
            if (!v25)
            {
              v33 = [v14 view];
              if (!v33)
              {
LABEL_22:
                v28 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientView;
                swift_beginAccess();
                v29 = [*&v1[v28] superview];
                if (v29)
                {

                  v38 = v14;
                  sub_1D106F934(0, &unk_1EC6099E0, 0x1E69DD258);
                  sub_1D11D45B0();
                  v30 = v14;
                  if (swift_dynamicCast())
                  {
                    sub_1D102CC18(v36, v39);
                    v31 = v40;
                    v32 = v41;
                    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
                    (*(v32 + 8))(v31, v32);

                    __swift_destroy_boxed_opaque_existential_1Tm(v39);
                  }

                  else
                  {

                    v37 = 0;
                    memset(v36, 0, sizeof(v36));
                    sub_1D11D3A44(v36, &unk_1EC60CF68, sub_1D11D45B0, MEMORY[0x1E69E6720], sub_1D11D3800);
                  }
                }

                else
                {
                }

                return;
              }

              v27 = v33;
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
LABEL_21:

                goto LABEL_22;
              }

              v23 = v27;
              v27 = v23;
LABEL_20:
              sub_1D139098C();

              goto LABEL_21;
            }

            v26 = v25;
            v23 = v14;
            v24 = [v26 tableView];
          }

          v27 = v24;
          goto LABEL_20;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = v34;
LABEL_27:
}

id sub_1D11D1250()
{
  v1 = sub_1D138F0BC();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_displayMode);
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      v8 = v7 & 0x3F;
      if (v8 <= 1)
      {
        if (v8)
        {
          return sub_1D11D2068();
        }

        else
        {

          return sub_1D11D1ED0();
        }
      }

      else if (v8 == 2)
      {
        return sub_1D11D2108();
      }

      else if (v8 == 3)
      {
        if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category) == 2)
        {
          return [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_factory) makeOutOfRangeLabsViewControllerUsingProfile_];
        }

        else
        {
          v21 = v3;
          sub_1D138F04C();
          v22 = sub_1D138F0AC();
          v23 = sub_1D13907FC();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&dword_1D101F000, v22, v23, "Invalid category kind for outOfRange segment", v24, 2u);
            MEMORY[0x1D38882F0](v24, -1, -1);
          }

          (*(v2 + 8))(v6, v21);
          return 0;
        }
      }

      else
      {

        return sub_1D11D1E98();
      }
    }

    else
    {
      v17 = type metadata accessor for NoDataCollectionViewController();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
      v18 = objc_allocWithZone(v17);
      return sub_1D136F594(1, 0, &v29);
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 16);
    v11 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 48);
    v31 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 32);
    v32 = v11;
    v12 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 16);
    v29 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category);
    v30 = v12;
    v13 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 48);
    v27[2] = v31;
    v27[3] = v13;
    v14 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile);
    v33 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64);
    v28 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64);
    v27[0] = v29;
    v27[1] = v10;
    if (v7)
    {
      v15 = objc_allocWithZone(type metadata accessor for PromotionListViewController(0));
      v16 = v14;
      sub_1D1082914(&v29, v26);
      return sub_1D11E03DC(v16, v27);
    }

    else
    {
      v19 = objc_allocWithZone(type metadata accessor for NoDataCollectionViewController());
      v20 = v14;
      sub_1D1082914(&v29, v26);
      return sub_1D136F594(0, v14, v27);
    }
  }
}

BOOL sub_1D11D15BC()
{
  v1 = sub_1D138F0BC();
  MEMORY[0x1EEE9AC00](v1);
  sub_1D139092C();
  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  v2 = sub_1D138D8BC();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  sub_1D138DB9C();
  v3 = MEMORY[0x1D38834C0]();
  LOBYTE(v9[0]) = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category);
  v4 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile) healthStore];
  v5 = [v4 profileIdentifier];

  v6 = static FeedItem.predicateForHealthRecordsData(categoryKind:sourceProfile:)(v9, v5);
  [v3 setPredicate_];

  v7 = sub_1D1390B7C();
  return v7 == 0;
}

id sub_1D11D1814()
{
  v1 = v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 16);
    v5 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 48);
    v19 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 32);
    v20 = v5;
    v6 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 16);
    v18[0] = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category);
    v18[1] = v6;
    v7 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 48);
    v16[2] = v19;
    v16[3] = v7;
    v21 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64);
    v17 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64);
    v16[0] = v18[0];
    v16[1] = v4;
    v8 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile);
    v9 = objc_allocWithZone(type metadata accessor for CategorySearchViewController(0));
    sub_1D1082914(v18, v15);
    v10 = v8;
    v11 = sub_1D12953B4(v16, v10);

    v12 = *v1;
    *v1 = v11;
    *(v1 + 8) = &off_1F4D10E50;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_1D11D191C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController);
  *v3 = a1;
  v3[1] = a2;
  return MEMORY[0x1EEE66BE0]();
}

void (*sub_1D11D1934(id *a1))(uint64_t a1)
{
  a1[2] = v1;
  *a1 = sub_1D11D1814();
  a1[1] = v3;
  return sub_1D11D197C;
}

void sub_1D11D197C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController);
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController) = *a1;
}

id sub_1D11D19B8(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_1D11D1A1C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) init];
  [v2 setDelegate_];
  v3 = [v2 searchBar];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v4 = sub_1D139012C();

  [v3 setPlaceholder_];

  [v2 setSearchResultsUpdater_];
  [v2 setObscuresBackgroundDuringPresentation_];
  [v2 setHidesNavigationBarDuringPresentation_];
  return v2;
}

void sub_1D11D1B7C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController) = a1;
}

void (*sub_1D11D1B90(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1D11D1998();
  return sub_1D11D1BD8;
}

void sub_1D11D1BD8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController) = v2;
}

uint64_t sub_1D11D1BF0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___listManager;
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___listManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___listManager);
  }

  else
  {
    if (qword_1EE06AF70 != -1)
    {
      swift_once();
    }

    v3 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile) healthStore];
    v4 = [v3 profileIdentifier];

    MEMORY[0x1EEE9AC00](v5);
    sub_1D138D96C();
    sub_1D138EF2C();
    sub_1D11D3AAC(&qword_1EE06B048, 255, MEMORY[0x1E69A3B50], MEMORY[0x1E69A3B48]);

    sub_1D138ED0C();

    v2 = v7;
    *(v0 + v1) = v7;
  }

  return v2;
}

uint64_t sub_1D11D1DC4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___viewDataPublisher;
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___viewDataPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___viewDataPublisher);
  }

  else
  {
    v3 = sub_1D11D1BF0();
    sub_1D1212790(v3, [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile) healthStore]);
    v5 = v4;
    v7 = v6;
    v2 = sub_1D120EAA0(v8, v4, v9, v6);

    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_1D11D1F08(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  v7 = v6;
  if (v6 == 1)
  {
    v7 = sub_1D11D1F74(v4, a2, a3, a4);
    v8 = *(v4 + v5);
    *(v4 + v5) = v7;
    v9 = v7;
    sub_1D11D4458(v8);
  }

  sub_1D11D4468(v6);
  return v7;
}

uint64_t sub_1D11D1F74(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v7 = *(a1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category);
  v8 = sub_1D11D1BF0();
  v9 = *(a1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile);
  v10 = sub_1D11D1DC4();
  type metadata accessor for LabsCategoryListDataProvider();
  v11 = swift_allocObject();
  *(v11 + 56) = MEMORY[0x1E69E7CD0];
  *(v11 + 48) = a2;
  *(v11 + 24) = v9;
  *(v11 + 16) = [v9 healthStore];
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = objc_allocWithZone(a3(0));

  return a4(v7, v11, v12);
}

id sub_1D11D2068()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___lastUpdatedViewController;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___lastUpdatedViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___lastUpdatedViewController);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_factory) makeTimelineViewControllerForCategory:*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64) showsInitialSearchBar:1 usingProfile:*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile) filterPredicatesByType:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D11D2108()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___alphabeticalViewController;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___alphabeticalViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___alphabeticalViewController);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_factory) makeAlphabeticalViewControllerForCategory:*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64) usingProfile:*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1D11D21A0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___labsOnboardingTileDisplayEvaluator;
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___labsOnboardingTileDisplayEvaluator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___labsOnboardingTileDisplayEvaluator);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile);
    v4 = [v3 healthStore];
    type metadata accessor for UserDomainConceptDataProvider();
    inited = swift_initStackObject();
    v6 = MEMORY[0x1E69E7CC8];
    inited[2] = MEMORY[0x1E69E7CC8];
    inited[3] = v6;
    inited[4] = v4;
    v7 = [v3 healthStore];
    v8 = sub_1D11D1DC4();
    swift_setDeallocating();
    UserDomainConceptDataProvider.deinit();
    swift_deallocClassInstance();
    type metadata accessor for LabsOnboardingTileDisplayEvaluator();
    v2 = swift_allocObject();
    v2[3] = v8;
    v2[4] = 0;
    v2[2] = v7;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1D11D22C0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___customEditButton;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___customEditButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___customEditButton);
  }

  else
  {
    v4 = sub_1D139012C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v5 style:0 target:v0 action:sel_customEditButtonTapped];
    [v6 setSharesBackground_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1D11D2414()
{
  if ([v0 isEditing])
  {
    v1 = [objc_opt_self() configurationWithPointSize:5 weight:17.0];
    v2 = sub_1D139012C();
    v8 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

    v3 = sub_1D11D22C0();
    [v3 setImage_];

    [*&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___customEditButton] setStyle_];
  }

  else
  {
    v4 = sub_1D11D22C0();
    v5 = sub_1D139012C();
    v6 = [objc_opt_self() systemImageNamed_];

    [v4 setImage_];
    v7 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___customEditButton];

    [v7 setStyle_];
  }
}

id sub_1D11D25C8()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category;
  if (!sub_1D12F9DC8(v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category], &unk_1F4D044B8) || v0[v1] == 2)
  {
    return 0;
  }

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v3 = type metadata accessor for RecordCategoryViewController();
  v14[3] = v3;
  v14[0] = v0;
  v4 = v0;
  v5 = sub_1D139012C();

  if (v3)
  {
    v6 = __swift_project_boxed_opaque_existential_1Tm(v14, v3);
    v7 = *(v3 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1D139161C();
    (*(v7 + 8))(v10, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v13 = [v12 initWithTitle:v5 style:0 target:v11 action:{sel_presentPDFViewController, v14[0]}];

  swift_unknownObjectRelease();
  return v13;
}

id sub_1D11D27F4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category;
  LOBYTE(v13[0]) = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category);
  v2 = sub_1D11AF4E4(v13);
  if (*(v2 + 2) && ((v3 = v2, v4 = (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_modePickerState) == 2) | *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_modePickerState), v5 = sub_1D12F9DC8(*(v0 + v1), &unk_1F4D044B8), v6 = v5, (v4 & 1) == 0) || v5))
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v6;
    *(v10 + 25) = v4 & 1;
    *(v10 + 32) = v3;
    v13[4] = sub_1D11D440C;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1D11D316C;
    v13[3] = &block_descriptor_95_0;
    v11 = _Block_copy(v13);

    v12 = [v8 elementWithUncachedProvider_];
    _Block_release(v11);
    return v12;
  }

  else
  {

    return 0;
  }
}

void sub_1D11D2988(void (*a1)(void, __n128), uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v12 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    sub_1D106F934(0, &unk_1EC60F6B0, 0x1E69DC628);
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v13 = sub_1D139012C();
    v14 = [objc_opt_self() systemImageNamed_];

    *(swift_allocObject() + 16) = v11;
    v15 = v11;
    v16 = sub_1D1390DCC();
    sub_1D106F934(0, &unk_1EC60CF20, 0x1E69DCC60);
    sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D139E810;
    *(v17 + 32) = v16;
    v18 = v16;
    v19 = sub_1D1390C7C();
    MEMORY[0x1D3885D90](v19, v20, v21, v22, v23);
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v12 = MEMORY[0x1E69E7CC0];
  }

  if (a5)
  {
    goto LABEL_32;
  }

  v24 = *(a6 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
    goto LABEL_29;
  }

  v39 = MEMORY[0x1E69E7CC0];
  sub_1D13912DC();
  sub_1D106F934(0, &unk_1EC60F6B0, 0x1E69DC628);
  v26 = (a6 + 32);
  do
  {
    v30 = *v26++;
    v29 = v30;
    if (v30 <= 1)
    {
      if (v29)
      {
        if (qword_1EE06AD00 != -1)
        {
          goto LABEL_26;
        }
      }

      else if (qword_1EE06AD00 != -1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v29 == 2 || v29 != 3)
      {
        if (qword_1EE06AD00 == -1)
        {
          goto LABEL_12;
        }

LABEL_26:
        swift_once();
        goto LABEL_12;
      }

      if (qword_1EE06AD00 != -1)
      {
        goto LABEL_26;
      }
    }

LABEL_12:
    sub_1D138D1CC();
    v27 = swift_allocObject();
    *(v27 + 16) = v11;
    *(v27 + 24) = v29;
    v28 = v11;
    sub_1D1390DCC();
    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    sub_1D13912BC();
    --v24;
  }

  while (v24);
  v25 = v39;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_29:
  if (v25 >> 62)
  {
    sub_1D106F934(0, &unk_1EC60CF10, 0x1E69DCC78);

    v32 = sub_1D13913DC();
  }

  else
  {

    sub_1D139165C();
    sub_1D106F934(0, &unk_1EC60CF10, 0x1E69DCC78);
    v32 = v25;
  }

  sub_1D11227A4(v32);
LABEL_32:
  if (v40 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v34 = a1;
    v35 = 0;
    a1 = (v40 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1D3886B70](v35, v40);
      }

      else
      {
        if (v35 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v36 = *(v40 + 8 * v35 + 32);
      }

      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      MEMORY[0x1D3885D90](v36);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      ++v35;
      if (v37 == i)
      {
        v38 = v12;
        a1 = v34;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_48:

  (a1)(v38);
}

void sub_1D11D30E0(uint64_t a1, _BYTE *a2, char a3)
{
  a2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment] = a3;
  if ([objc_opt_self() isMainThread])
  {
    if ([a2 isViewLoaded])
    {
      sub_1D11D08FC(a2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding], *&a2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount], a2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount + 8]);
      sub_1D11D0A2C();
      _s15HealthRecordsUI28RecordCategoryViewControllerC016didDismissSearchG0yySo08UISearchG0CF_0();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1D11D316C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D11D4420, v4);

  return result;
}

void sub_1D11D3200(uint64_t a1, uint64_t a2)
{
  sub_1D106F934(0, &unk_1EC60CF10, 0x1E69DCC78);
  v3 = sub_1D139044C();
  (*(a2 + 16))(a2, v3);
}

id RecordCategoryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RecordCategoryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordCategoryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D11D36E4(char a1, uint64_t a2, _BYTE *a3, uint64_t (*a4)(void))
{
  v15[3] = type metadata accessor for LabsCategoryListDataProvider();
  v8 = sub_1D11D3AAC(&qword_1EC60CF40, 255, type metadata accessor for LabsCategoryListDataProvider, &unk_1D13A0694);
  a3[qword_1EC60B198] = 1;
  v15[4] = v8;
  v15[0] = a2;
  a3[qword_1EC60B190] = a1;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v14.receiver = a3;
  v14.super_class = a4(0);
  v10 = objc_msgSendSuper2(&v14, sel_initWithCollectionViewLayout_, v9);

  sub_1D1072E70(v15, &v13);
  v11 = v10;
  sub_1D138EC5C();

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v11;
}

void sub_1D11D3800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D11D3864()
{
  result = qword_1EC60CCD0;
  if (!qword_1EC60CCD0)
  {
    sub_1D11D47E0(255, &qword_1EC60B3A8, sub_1D1125BE8, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60CCD0);
  }

  return result;
}

double block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D11D3914(uint64_t a1)
{
  if (!qword_1EC60CD08)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1D11D48B8(255, &unk_1EE06A770, MEMORY[0x1E695BED0]);
    sub_1D106F934(255, &qword_1EE06B760, 0x1E69E9610);
    sub_1D11D3A00(&qword_1EE06A780, &unk_1EE06A770, v1, MEMORY[0x1E695BED8]);
    sub_1D10EDC58();
    v2 = sub_1D138F5FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC60CD08);
    }
  }
}

uint64_t sub_1D11D3A00(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D11D48B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D11D3A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D11D3AAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1D11D3AF4()
{
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCanceller) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_aToZCanceller) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsCanceller) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_shouldShowPinnedLabsTip) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_cancellable) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding) = 0;
  v1 = v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_isSearching) = 0;
  v2 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientView);
  sub_1D138E37C();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = MEMORY[0x1E69A3658];
  *v2 = v3;
  v2[1] = v4;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentPalette) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_modePickerState) = 2;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___modePicker) = 0;
  v5 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___changeProvider) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___listManager) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___viewDataPublisher) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___udcListViewController) = 1;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___latestViewContoller) = 1;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___lastUpdatedViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___alphabeticalViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsOnboardingViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___labsOnboardingTileDisplayEvaluator) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___customEditButton) = 0;
  sub_1D13913BC();
  __break(1u);
}

void _s15HealthRecordsUI28RecordCategoryViewControllerC19updateSearchResults3forySo08UISearchG0C_tF_0()
{
  v1 = v0;
  v2 = sub_1D138CF3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D11D1998();
  v7 = [v6 searchBar];

  v8 = [v7 text];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = sub_1D139016C();
  v11 = v10;

  v21[0] = v9;
  v21[1] = v11;
  sub_1D138CF1C();
  sub_1D10940C8();
  v12 = sub_1D1390FAC();
  v14 = v13;
  (*(v3 + 8))(v5, v2);

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_11:
    *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_isSearching) = 0;
    goto LABEL_12;
  }

  v16 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_isSearching;
  if ((*(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_isSearching) & 1) == 0)
  {
    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    sub_1D1222B5C(1, 0);
  }

  v17 = sub_1D11D1814();
  v19 = v18;
  ObjectType = swift_getObjectType();
  (*(v19 + 16))(v12, v14, ObjectType, v19);

  *(v1 + v16) = 1;
LABEL_12:
  _s15HealthRecordsUI28RecordCategoryViewControllerC016didDismissSearchG0yySo08UISearchG0CF_0();
}

void sub_1D11D4458(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D11D4468(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1D11D4478(uint64_t a1)
{
  if (!qword_1EC60CF30)
  {
    v2 = type metadata accessor for UDCRecentItem(255);
    v3 = sub_1D11D3AAC(&qword_1EC60CF38, 255, type metadata accessor for UDCRecentItem, &unk_1D13A5A50);
    v5 = type metadata accessor for UDCListCollectionViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC60CF30);
    }
  }
}

void sub_1D11D4510(uint64_t a1)
{
  if (!qword_1EC60CF48)
  {
    v2 = type metadata accessor for UDCAlphabeticalItem(255);
    v3 = sub_1D11D3AAC(&unk_1EC60CF50, 255, type metadata accessor for UDCAlphabeticalItem, &unk_1D13ACDA8);
    v5 = type metadata accessor for UDCListCollectionViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC60CF48);
    }
  }
}

unint64_t sub_1D11D45B0()
{
  result = qword_1EC60CF60;
  if (!qword_1EC60CF60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60CF60);
  }

  return result;
}

void sub_1D11D4614(uint64_t a1)
{
  if (!qword_1EC60CF78)
  {
    sub_1D1165380(255);
    sub_1D106F934(255, &qword_1EE06B760, 0x1E69E9610);
    sub_1D11D3AAC(&qword_1EC60CF80, 255, sub_1D1165380, MEMORY[0x1E695BE98]);
    sub_1D10EDC58();
    v1 = sub_1D138F5AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60CF78);
    }
  }
}

void sub_1D11D46E4(uint64_t a1)
{
  if (!qword_1EC60CF88)
  {
    v1 = MEMORY[0x1E695BF98];
    sub_1D11D47E0(255, &qword_1EE06A740, sub_1D11D4854, MEMORY[0x1E695BF98]);
    sub_1D11D48B8(255, &qword_1EE06A738, v1);
    sub_1D11D4920();
    sub_1D11D3A00(&qword_1EC609A70, &qword_1EE06A738, v1, MEMORY[0x1E695BFB0]);
    v2 = sub_1D138F4FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC60CF88);
    }
  }
}

void sub_1D11D47E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D11D4854(uint64_t a1)
{
  if (!qword_1EE06A678)
  {
    sub_1D109D220();
    v1 = sub_1D139003C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06A678);
    }
  }
}

void sub_1D11D48B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D11D4920()
{
  result = qword_1EC60CF90;
  if (!qword_1EC60CF90)
  {
    sub_1D11D47E0(255, &qword_1EE06A740, sub_1D11D4854, MEMORY[0x1E695BF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60CF90);
  }

  return result;
}

void sub_1D11D49A8(uint64_t a1)
{
  if (!qword_1EC60CFA0)
  {
    sub_1D11D46E4(255);
    sub_1D106F934(255, &qword_1EE06B760, 0x1E69E9610);
    sub_1D11D3AAC(&qword_1EC60CFA8, 255, sub_1D11D46E4, MEMORY[0x1E695BC68]);
    sub_1D10EDC58();
    v1 = sub_1D138F5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60CFA0);
    }
  }
}

void sub_1D11D4AD4(unint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = sub_1D139135C() | 0x8000000000000000;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v2 = ~v5;
    v1 = a1 + 64;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v3 = v7 & *(a1 + 64);
    v4 = a1;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v22 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v8;
    v11 = v3;
    v12 = v8;
    if (!v3)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v11)));
    v15 = *(*(v4 + 48) + v14);
    v16 = *(*(v4 + 56) + v14);
    v17 = v15;
    v18 = v16;
    if (!v17)
    {
LABEL_22:
      sub_1D102CC30(v22);
      return;
    }

    while (1)
    {
      v3 = v13;
      v19 = sub_1D139071C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D10F9140(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_1D10F9140((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      *&v9[8 * v21 + 32] = v19;
      v8 = v12;
      v4 = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D139139C())
      {
        sub_1D106F934(0, &qword_1EE06A630, 0x1E696C388);
        swift_dynamicCast();
        v17 = v23;
        sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
        swift_dynamicCast();
        v18 = v23;
        v12 = v8;
        v13 = v3;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v2 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v1 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1D11D4D60(uint64_t a1)
{
  v1 = a1;
  v21 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D139108C();
    sub_1D106F934(0, &qword_1EE06B780, 0x1E696C3D0);
    sub_1D109D274(&qword_1EE06B778, &qword_1EE06B780, 0x1E696C3D0);
    sub_1D139070C();
    v1 = v16;
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D139110C() || (sub_1D106F934(0, &qword_1EE06B780, 0x1E696C3D0), swift_dynamicCast(), v13 = v15, v4 = v9, v5 = v10, !v15))
      {
LABEL_21:
        sub_1D102CC30(v1);
        return;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_17:
    v14 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v13 predicate:0];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x1D3885D90]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *UserDomainConceptDataProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  result[2] = MEMORY[0x1E69E7CC8];
  result[3] = v3;
  result[4] = a1;
  return result;
}

id sub_1D11D5060()
{
  result = [objc_opt_self() predicateForMedicalRecordWithState_];
  qword_1EC62FB40 = result;
  return result;
}

void *UserDomainConceptDataProvider.init(healthStore:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v1[2] = MEMORY[0x1E69E7CC8];
  v1[3] = v2;
  v1[4] = a1;
  return v1;
}

id UserDomainConceptDataProvider.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = [*(v0 + 32) stopQuery_])
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      v10 = MEMORY[0x1E69E7CC8];
      *(v0 + 24) = MEMORY[0x1E69E7CC8];

      swift_beginAccess();
      *(v0 + 16) = v10;

      return v0;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t UserDomainConceptDataProvider.__deallocating_deinit()
{
  UserDomainConceptDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D11D5248()
{
  v1 = v0;
  sub_1D11D53EC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D11D5574;
  *(v7 + 24) = v1;
  sub_1D11DC2A0(0, &qword_1EC60CFC8, &qword_1EC60B148, &qword_1EC60AAF0, 0x1E696C530);
  sub_1D11D5470();

  sub_1D138F75C();
  sub_1D11DBEA8(&qword_1EC60CFD8, sub_1D11D53EC, MEMORY[0x1E695C058]);
  v8 = sub_1D138F80C();
  (*(v4 + 8))(v6, v3);
  return v8;
}

void sub_1D11D53EC(uint64_t a1)
{
  if (!qword_1EC60CFC0)
  {
    sub_1D11DC2A0(255, &qword_1EC60CFC8, &qword_1EC60B148, &qword_1EC60AAF0, 0x1E696C530);
    sub_1D11D5470();
    v1 = sub_1D138F76C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60CFC0);
    }
  }
}

unint64_t sub_1D11D5470()
{
  result = qword_1EC60CFD0;
  if (!qword_1EC60CFD0)
  {
    sub_1D11DC2A0(255, &qword_1EC60CFC8, &qword_1EC60B148, &qword_1EC60AAF0, 0x1E696C530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60CFD0);
  }

  return result;
}

uint64_t sub_1D11D54E8@<X0>(uint64_t *a2@<X8>)
{
  sub_1D11DC2A0(0, &qword_1EC60CFC8, &qword_1EC60B148, &qword_1EC60AAF0, 0x1E696C530);
  swift_allocObject();

  result = sub_1D138F73C();
  *a2 = result;
  return result;
}

void sub_1D11D557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v8 = swift_allocObject();
  v8[2] = sub_1D11DD430;
  v8[3] = v6;
  v8[4] = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E696C548]);
  v14[4] = sub_1D11DD2E0;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D11D9F50;
  v14[3] = &block_descriptor_163;
  v10 = _Block_copy(v14);

  v11 = [v9 initWithPredicate:0 anchor:0 limit:0 sortDescriptors:0 resultsHandler:v10];
  _Block_release(v10);

  v12 = v11;
  v13 = sub_1D139012C();
  [v12 setDebugIdentifier_];

  [*(a3 + 32) executeQuery_];
}

double sub_1D11D574C(int a1, void *a2, int a3, char a4, id a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v10 = a5;
    a6(a5, 1);
  }

  else
  {
    if (a2)
    {
      v13 = a4;
      swift_beginAccess();
      v15 = a2;
      MEMORY[0x1D3885D90]();
      if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      swift_endAccess();
      a4 = v13;
    }

    if (a4)
    {
      swift_beginAccess();

      a6(v16, 0);
    }
  }

  return result;
}

uint64_t sub_1D11D589C(uint64_t a1)
{
  sub_1D11DBEF0(0, &qword_1EE069630, &qword_1EE069660, sub_1D11DBF7C, &qword_1EE069668);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D11DC18C;
  *(v9 + 24) = v8;
  sub_1D11DC5B8(0, &qword_1EE069660, sub_1D11DBF7C);
  sub_1D11DC13C(&qword_1EE069668, &qword_1EE069660, sub_1D11DBF7C);

  sub_1D138F75C();
  sub_1D11DC198();
  v10 = sub_1D138F80C();
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1D11D5A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D11DC5B8(0, &qword_1EE069660, sub_1D11DBF7C);
  swift_allocObject();

  result = sub_1D138F73C();
  *a3 = result;
  return result;
}

void sub_1D11D5B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v11 = swift_allocObject();

  *(v11 + 16) = sub_1D109E8D0(v10);
  if (a3)
  {
    v12 = *(a3 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v23 = a4;
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D13912DC();
      v14 = (a3 + 32);
      do
      {
        v15 = *v14++;
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
        --v12;
      }

      while (v12);
      a4 = v23;
      v13 = aBlock[0];
    }

    v16 = sub_1D12DF1E4(v13);
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  v17[2] = sub_1D11DD264;
  v17[3] = v8;
  v17[4] = v16;
  v17[5] = v9;
  v17[6] = v11;
  v18 = objc_allocWithZone(MEMORY[0x1E696C548]);
  aBlock[4] = sub_1D11DD2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11D9F50;
  aBlock[3] = &block_descriptor_151;
  v19 = _Block_copy(aBlock);

  v20 = [v18 initWithPredicate:0 anchor:0 limit:0 sortDescriptors:0 resultsHandler:v19];
  _Block_release(v19);

  v21 = v20;
  v22 = sub_1D139012C();
  [v21 setDebugIdentifier_];

  [*(a4 + 32) executeQuery_];
}

void sub_1D11D5DE8(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5, char *a6, char *a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = a10;
  v17 = sub_1D138D5EC();
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v22 = a5;
    (a6)(a5, 0, 1);

    return;
  }

  v82 = v21;
  v70 = v19;
  v67 = a9;
  if (a2)
  {
    v23 = v18;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v79 = v23;
    if (v24)
    {
      v25 = v24;
      if (a8)
      {
        v26 = a2;
        v27 = [v25 categoryTypes];
        sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
        v28 = sub_1D139045C();

        v29 = sub_1D12DF1E4(v28);

        sub_1D11D64B4(v29, a8);
        v31 = v30;

        if (v31)
        {

          v16 = a10;
        }

        else
        {
          v33 = v67;
          swift_beginAccess();
          v34 = v26;
          MEMORY[0x1D3885D90]();
          v16 = a10;
          if (*((*(v33 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v33 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          sub_1D13904FC();
          swift_endAccess();
        }
      }

      else
      {
        v32 = v67;
        swift_beginAccess();
        MEMORY[0x1D3885D90](a2);
        if (*((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        swift_endAccess();
      }
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = v35;
      v37 = a2;
      v38 = [v36 linkCollection];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 links];

        sub_1D106F934(0, &qword_1EC60D078, 0x1E696C538);
        v41 = sub_1D139045C();

        if (v41 >> 62)
        {
LABEL_44:
          v42 = sub_1D13910DC();
          if (v42)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42)
          {
LABEL_20:
            v43 = 0;
            v68 = v41 & 0xFFFFFFFFFFFFFF8;
            v69 = v70 + 16;
            v77 = (v70 + 8);
            v78 = v41 & 0xC000000000000001;
            v76 = a4;
            v74 = a6;
            v75 = a7;
            v72 = v42;
            v73 = v41;
            while (1)
            {
              if (v78)
              {
                v46 = MEMORY[0x1D3886B70](v43, v41);
                v47 = v43 + 1;
                if (__OFADD__(v43, 1))
                {
                  goto LABEL_40;
                }
              }

              else
              {
                if (v43 >= *(v68 + 16))
                {
                  goto LABEL_43;
                }

                v46 = *(v41 + 8 * v43 + 32);
                v47 = v43 + 1;
                if (__OFADD__(v43, 1))
                {
LABEL_40:
                  __break(1u);
LABEL_41:
                  __break(1u);
LABEL_42:
                  __break(1u);
LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }
              }

              v80 = v47;
              v81 = v46;
              v48 = [v46 targetUUID];
              a6 = v82;
              sub_1D138D5CC();

              swift_beginAccess();
              a7 = v37;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v83 = *(v16 + 16);
              v50 = v83;
              v41 = v16;
              *(v16 + 16) = 0x8000000000000000;
              v16 = sub_1D129E240(a6);
              v52 = v50[2];
              v53 = (v51 & 1) == 0;
              v54 = v52 + v53;
              if (__OFADD__(v52, v53))
              {
                goto LABEL_41;
              }

              v55 = v51;
              if (v50[3] >= v54)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D11833CC();
                }
              }

              else
              {
                sub_1D117DF38(v54, isUniquelyReferenced_nonNull_native);
                v56 = sub_1D129E240(v82);
                if ((v55 & 1) != (v57 & 1))
                {
                  sub_1D13916CC();
                  __break(1u);
                  return;
                }

                v16 = v56;
              }

              v58 = v79;
              v71 = a7;
              v59 = v83;
              if (v55)
              {
                v44 = v83[7];
                v45 = *(v44 + 8 * v16);
                *(v44 + 8 * v16) = v36;

                (*v77)(v82, v58);
              }

              else
              {
                a7 = v37;
                v83[(v16 >> 6) + 8] |= 1 << v16;
                a6 = v70;
                v37 = v82;
                (*(v70 + 16))(v59[6] + *(v70 + 72) * v16, v82, v58);
                *(v59[7] + 8 * v16) = v36;
                (*(a6 + 1))(v37, v58);
                v60 = v59[2];
                v61 = __OFADD__(v60, 1);
                v62 = v60 + 1;
                if (v61)
                {
                  goto LABEL_42;
                }

                v59[2] = v62;
                v37 = a7;
              }

              v16 = v41;
              *(v41 + 16) = v59;

              swift_endAccess();

              ++v43;
              v41 = v73;
              a6 = v74;
              a7 = v75;
              if (v80 == v72)
              {

                goto LABEL_46;
              }
            }
          }
        }

LABEL_46:
      }

      else
      {
      }
    }
  }

  if (a4)
  {
    swift_beginAccess();
    v63 = *(v16 + 16);
    v64 = v67;
    swift_beginAccess();
    v65 = *(v64 + 16);

    (a6)(v63, v65, 0);
  }
}

void sub_1D11D64B4(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_1D13910DC())
    {
      return;
    }
  }

  else if (!*(a2 + 16))
  {
    return;
  }

  v5 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_1D13910DC())
    {
      return;
    }
  }

  else if (!*(a1 + 16))
  {
    return;
  }

  if (!v4)
  {
    v6 = *(a2 + 16);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v7 = *(a1 + 16);
    goto LABEL_14;
  }

  v6 = sub_1D13910DC();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v7 = sub_1D13910DC();
LABEL_14:
  v8 = v6 < v7;
  if (v6 >= v7)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (v8)
  {
    v10 = a1;
  }

  else
  {
    v10 = a2;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    sub_1D139108C();
    sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
    sub_1D109D274(&qword_1EE06B0C8, &qword_1EE06B6C0, 0x1E696AD98);
    sub_1D139070C();
    v9 = v37;
    v11 = v38;
    v12 = v39;
    v13 = v40;
    v14 = v41;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);

    v13 = 0;
  }

  sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
  v18 = (v12 + 64) >> 6;
  v19 = v10 & 0xC000000000000001;
  v33 = v9;
  v35 = v10 + 56;
  v32 = v10 & 0xC000000000000001;
  while (1)
  {
    while (1)
    {
      v21 = v14;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (!sub_1D139110C())
      {
LABEL_44:
        sub_1D102CC30(v9);

        return;
      }

      swift_dynamicCast();
      v24 = v36;
      v34 = v21;
      if (v19)
      {
        goto LABEL_27;
      }

LABEL_38:
      if (*(v10 + 16))
      {
        v25 = sub_1D1390D7C();
        v26 = -1 << *(v10 + 32);
        v27 = v25 & ~v26;
        if ((*(v35 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (1)
          {
            v29 = v10;
            v30 = *(*(v10 + 48) + 8 * v27);
            v31 = sub_1D1390D8C();

            if (v31)
            {
              break;
            }

            v27 = (v27 + 1) & v28;
            v10 = v29;
            if (((*(v35 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          sub_1D102CC30(v33);

          goto LABEL_48;
        }
      }

LABEL_43:

      v19 = v32;
      v9 = v33;
      v14 = v34;
    }

    v22 = v14;
    if (!v14)
    {
      break;
    }

LABEL_34:
    v34 = (v22 - 1) & v22;
    v36 = *(*(v9 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v22)))));
    v24 = v36;
    if (!v19)
    {
      goto LABEL_38;
    }

LABEL_27:
    v20 = sub_1D139111C();

    v14 = v34;
    if (v20)
    {
      sub_1D102CC30(v9);
LABEL_48:

      return;
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_44;
    }

    v22 = *(v11 + 8 * v13);
    ++v23;
    if (v22)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
}

uint64_t sub_1D11D6898()
{
  v1 = v0;
  sub_1D11DC21C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D11DC3A8;
  *(v8 + 24) = v7;
  sub_1D11DC2A0(0, &qword_1EE06A708, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260);
  sub_1D11DC330();

  sub_1D138F75C();
  sub_1D11DBEA8(&qword_1EE06A6F0, sub_1D11DC21C, MEMORY[0x1E695C058]);
  v9 = sub_1D138F80C();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1D11D6A68(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_1D11DC21C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = v4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D11DD3EC;
  *(v15 + 24) = v14;
  sub_1D11DC2A0(0, &qword_1EE06A708, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260);
  sub_1D11DC330();

  sub_1D138F75C();
  sub_1D11DBEA8(&qword_1EE06A6F0, sub_1D11DC21C, MEMORY[0x1E695C058]);
  v16 = sub_1D138F80C();
  (*(v10 + 8))(v12, v9);
  return v16;
}

uint64_t sub_1D11D6C44@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  sub_1D11DC2A0(0, &qword_1EE06A708, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260);
  swift_allocObject();

  result = sub_1D138F73C();
  *a5 = result;
  return result;
}

void sub_1D11D6D0C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];

  sub_1D13912DC();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D13912AC();
  sub_1D13912EC();
  sub_1D13912FC();
  sub_1D13912BC();
  v13 = objc_opt_self();
  sub_1D12DF1E4(aBlock[0]);

  sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
  sub_1D109D274(&qword_1EE06B0C8, &qword_1EE06B6C0, 0x1E696AD98);
  v14 = sub_1D13906AC();

  v15 = [v13 predicateForMedicalUserDomainConceptsWithCategoryTypes_];

  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D11DD430;
  *(v17 + 24) = v11;
  *(v17 + 32) = a5;
  *(v17 + 40) = v16;
  v18 = objc_allocWithZone(MEMORY[0x1E696C548]);
  aBlock[4] = sub_1D11DD1EC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11D9F50;
  aBlock[3] = &block_descriptor_135;
  v19 = _Block_copy(aBlock);

  v20 = [v18 initWithPredicate:v15 anchor:0 limit:a4 sortDescriptors:0 resultsHandler:v19];
  _Block_release(v19);

  v21 = v20;
  v22 = sub_1D139012C();
  [v21 setDebugIdentifier_];

  [*(a6 + 32) executeQuery_];
}

double sub_1D11D7004(int a1, void *a2, int a3, char a4, id a5, void (*a6)(id, uint64_t), int a7, char a8, uint64_t a9)
{
  if (a5)
  {
    v11 = a5;
    a6(a5, 1);
  }

  else
  {
    if (a2)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = v16;
        v18 = a2;
        if ((a8 & 1) != 0 && [v17 isLowUtility])
        {
        }

        else
        {
          swift_beginAccess();
          v19 = v18;
          MEMORY[0x1D3885D90]();
          if (*((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          sub_1D13904FC();
          swift_endAccess();
        }
      }
    }

    if (a4)
    {
      swift_beginAccess();

      a6(v20, 0);
    }
  }

  return result;
}

uint64_t sub_1D11D71AC(void *a1, void *a2)
{
  sub_1D11DC3BC(0);
  v18 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D11DC550;
  *(v10 + 24) = v9;
  v11 = MEMORY[0x1E69E6720];
  sub_1D11DC474(0, &qword_1EC60CFE8, &qword_1EC60CFF0, MEMORY[0x1E69E6720]);
  sub_1D11DC500(&qword_1EC60CFF8, &qword_1EC60CFE8, &qword_1EC60CFF0, v11);
  v12 = a1;
  v13 = a2;

  sub_1D138F75C();
  sub_1D11DBEA8(&qword_1EC60D000, sub_1D11DC3BC, MEMORY[0x1E695C058]);
  v14 = v18;
  v15 = sub_1D138F80C();
  (*(v6 + 8))(v8, v14);
  return v15;
}

uint64_t sub_1D11D73B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1D11DC474(0, &qword_1EC60CFE8, &qword_1EC60CFF0, MEMORY[0x1E69E6720]);
  swift_allocObject();
  v9 = a2;

  v10 = a1;
  result = sub_1D138F73C();
  *a4 = result;
  return result;
}

void sub_1D11D7480(void (*a1)(unint64_t *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1D106F934(0, &qword_1EC609F60, 0x1E696C100);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = *MEMORY[0x1E696B7B8];

  v13 = [ObjCClassFromMetadata diagnosticTestResultTypeForIdentifier_];
  if (v13)
  {
    v14 = v13;
    v34 = a5;
    v41[4] = [objc_opt_self() predicateForMedicalRecordsAssociatedWithMedicalUserDomainConcept_];
    v41[5] = a4;
    aBlock = MEMORY[0x1E69E7CC0];
    v15 = a4;
    for (i = 0; i != 2; ++i)
    {
      v17 = v41[i + 4];
      if (v17)
      {
        v18 = v17;
        MEMORY[0x1D3885D90]();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
      }
    }

    sub_1D11DC0D4(0, &qword_1EE06B788, &qword_1EE06B790, 0x1E696AE18, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
    v19 = sub_1D139044C();

    v20 = [objc_opt_self() andPredicateWithSubpredicates_];

    sub_1D11DD0B4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D139E810;
    *(v21 + 32) = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v14 predicate:v20];
    v22 = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696B9B8] ascending:0];
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D139E810;
    *(v23 + 32) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D11DD430;
    *(v24 + 24) = v10;
    v25 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
    sub_1D106F934(0, &qword_1EE06A630, 0x1E696C388);
    v26 = v22;
    v27 = sub_1D139044C();

    sub_1D106F934(0, &qword_1EE06B578, 0x1E696AEB0);
    v28 = sub_1D139044C();

    v39 = sub_1D11DD1D0;
    v40 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1D1324B28;
    v38 = &block_descriptor_120;
    v29 = _Block_copy(&aBlock);
    v30 = [v25 initWithQueryDescriptors:v27 limit:1 sortDescriptors:v28 resultsHandler:v29];

    _Block_release(v29);

    v31 = v30;
    v32 = sub_1D139012C();
    [v31 setDebugIdentifier_];

    [*(v34 + 32) executeQuery_];
  }

  else
  {

    sub_1D11DD060();
    v33 = swift_allocError();
    aBlock = v33;
    LOBYTE(v36) = 1;
    a1(&aBlock);
  }
}

void sub_1D11D7974(int a1, unint64_t a2, id a3, void (*a4)(uint64_t, uint64_t))
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v11 = a2;
    v12 = sub_1D13910DC();
    a2 = v11;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D3886B70](0);
  }

  else
  {
    if (!*(v6 + 16))
    {
      __break(1u);
      return;
    }

    v7 = *(a2 + 32);
  }

  v13 = v7;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    a4(v8, 0);
    v9 = v13;

LABEL_10:

    return;
  }

LABEL_12:
  if (a3)
  {
    v10 = a3;
    a4(a3, 1);
    v9 = a3;

    goto LABEL_10;
  }

  a4(0, 0);
}

uint64_t sub_1D11D7AC8(void *a1, void *a2)
{
  sub_1D11DBEF0(0, &qword_1EC60D008, &qword_1EC60D010, sub_1D11DC62C, &qword_1EC60D028);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D11DC6FC;
  *(v11 + 24) = v10;
  sub_1D11DC5B8(0, &qword_1EC60D010, sub_1D11DC62C);
  sub_1D11DC13C(&qword_1EC60D028, &qword_1EC60D010, sub_1D11DC62C);
  v12 = a1;
  v13 = a2;

  sub_1D138F75C();
  sub_1D11DC708();
  v14 = sub_1D138F80C();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1D11D7C9C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1D11DC5B8(0, &qword_1EC60D010, sub_1D11DC62C);
  swift_allocObject();
  v9 = a2;

  v10 = a1;
  result = sub_1D138F73C();
  *a4 = result;
  return result;
}

void sub_1D11D7D60(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v35 = v10;
  v11 = objc_opt_self();

  v36 = a3;
  aBlock[10] = [v11 predicateForMedicalRecordsAssociatedWithMedicalUserDomainConcept_];
  aBlock[11] = a4;
  v12 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v13 = a4;
  for (i = 0; i != 2; ++i)
  {
    v15 = aBlock[i + 10];
    if (v15)
    {
      v16 = v15;
      MEMORY[0x1D3885D90]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }
  }

  sub_1D11DC0D4(0, &qword_1EE06B788, &qword_1EE06B790, 0x1E696AE18, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
  v17 = sub_1D139044C();

  v38 = [objc_opt_self() andPredicateWithSubpredicates_];

  v18 = [objc_opt_self() medicalRecordTypesWithOptions_];
  sub_1D106F934(0, &qword_1EE06B780, 0x1E696C3D0);
  v19 = sub_1D139045C();

  aBlock[0] = v12;
  v37 = a5;
  if (v19 >> 62)
  {
LABEL_23:
    v20 = sub_1D13910DC();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (v20 != v21)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1D3886B70](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v23 predicate:v38];

    ++v21;
    if (v26)
    {
      MEMORY[0x1D3885D90]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v22 = aBlock[0];
      v21 = v25;
    }
  }

  sub_1D12DF1B4(v22);

  v27 = swift_allocObject();
  v27[2] = sub_1D11DD3F0;
  v27[3] = v35;
  v27[4] = v36;
  v28 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
  sub_1D106F934(0, &qword_1EE06A630, 0x1E696C388);
  sub_1D109D274(&qword_1EE06A628, &qword_1EE06A630, 0x1E696C388);
  v29 = v36;
  v30 = sub_1D13906AC();

  aBlock[4] = sub_1D11DD170;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1179344;
  aBlock[3] = &block_descriptor_108;
  v31 = _Block_copy(aBlock);
  v32 = [v28 initWithQueryDescriptors:v30 resultsHandler:v31];

  _Block_release(v31);

  v33 = v32;
  v34 = sub_1D139012C();
  [v33 setDebugIdentifier_];

  [*(v37 + 32) executeQuery_];
}

void sub_1D11D8260(int a1, unint64_t a2, id a3, void (*a4)(id, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  if (a3)
  {
    v8 = a3;
    a4(a3, 0, 1);

    return;
  }

  if (!a2)
  {
    v16 = 0;
LABEL_14:
    (a4)(v16, a2, 0, a4, a5, a6);
    return;
  }

  sub_1D11D4AD4(a2);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v12 = 0;
LABEL_13:

    v16 = a6;
    a2 = v12;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = (v10 + 32);
  while (1)
  {
    v14 = *v13++;
    v15 = __OFADD__(v12, v14);
    v12 += v14;
    if (v15)
    {
      break;
    }

    if (!--v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D11D8344(void *a1, void *a2)
{
  v3 = v2;
  sub_1D11DC78C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a1;
  v11[4] = v3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D11DC8DC;
  *(v12 + 24) = v11;
  v13 = MEMORY[0x1E695C028];
  sub_1D11DC840(0, &qword_1EE069640, MEMORY[0x1E695C028]);
  sub_1D11DC9D8(&qword_1EE069648, &qword_1EE069640, v13, MEMORY[0x1E695C038]);
  v14 = a2;
  v15 = a1;

  sub_1D138F75C();
  sub_1D11DBEA8(&qword_1EE069618, sub_1D11DC78C, MEMORY[0x1E695C058]);
  v16 = sub_1D138F80C();
  (*(v8 + 8))(v10, v7);
  return v16;
}

uint64_t sub_1D11D8548@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1D11DC840(0, &qword_1EE069640, MEMORY[0x1E695C028]);
  swift_allocObject();
  v9 = a1;
  v10 = a2;

  result = sub_1D138F73C();
  *a4 = result;
  return result;
}

void sub_1D11D860C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  if (a3)
  {
    sub_1D11DD0B4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D139E810;
    v12 = objc_allocWithZone(MEMORY[0x1E696C388]);

    v13 = a3;
    *(v11 + 32) = [v12 initWithSampleType:v13 predicate:a4];
  }

  else
  {
    v30 = a5;
    v14 = objc_opt_self();

    v15 = [v14 medicalRecordTypesWithOptions_];
    sub_1D106F934(0, &qword_1EE06B780, 0x1E696C3D0);
    v16 = sub_1D139045C();

    aBlock[0] = MEMORY[0x1E69E7CC0];
    if (v16 >> 62)
    {
LABEL_20:
      v17 = sub_1D13910DC();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (v17 != v18)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1D3886B70](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v22 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v19 predicate:a4];

      ++v18;
      if (v22)
      {
        MEMORY[0x1D3885D90]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        v11 = aBlock[0];
        v18 = v21;
      }
    }

    a5 = v30;
  }

  sub_1D12DF1B4(v11);

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D11DD118;
  *(v23 + 24) = v10;
  v24 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
  sub_1D106F934(0, &qword_1EE06A630, 0x1E696C388);
  sub_1D109D274(&qword_1EE06A628, &qword_1EE06A630, 0x1E696C388);
  v25 = sub_1D13906AC();

  aBlock[4] = sub_1D11DD15C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1179344;
  aBlock[3] = &block_descriptor_96;
  v26 = _Block_copy(aBlock);
  v27 = [v24 initWithQueryDescriptors:v25 resultsHandler:v26];

  _Block_release(v26);

  v28 = v27;
  v29 = sub_1D139012C();
  [v28 setDebugIdentifier_];

  [*(a5 + 32) executeQuery_];
}

void sub_1D11D8A34(int a1, unint64_t a2, id a3, void (*a4)(id, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    a4(a3, 256);

    return;
  }

  if (!a2)
  {
    v13 = 0;
    v14 = 1;
LABEL_14:
    a4(v13, v14);
    return;
  }

  sub_1D11D4AD4(a2);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = 0;
LABEL_13:

    v13 = v9;
    v14 = 0;
    goto LABEL_14;
  }

  v9 = 0;
  v10 = (v7 + 32);
  while (1)
  {
    v11 = *v10++;
    v12 = __OFADD__(v9, v11);
    v9 += v11;
    if (v12)
    {
      break;
    }

    if (!--v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D11D8B10(void *a1, void *a2)
{
  sub_1D11DC78C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11DC8E8(0);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D11DD3F8;
  *(v14 + 24) = v13;
  v15 = MEMORY[0x1E695C028];
  sub_1D11DC840(0, &qword_1EE069640, MEMORY[0x1E695C028]);
  sub_1D11DC9D8(&qword_1EE069648, &qword_1EE069640, v15, MEMORY[0x1E695C038]);
  v16 = a2;
  v17 = a1;

  sub_1D138F75C();
  sub_1D11DBEA8(&qword_1EE069618, sub_1D11DC78C, MEMORY[0x1E695C058]);
  v18 = sub_1D138F80C();
  (*(v7 + 8))(v9, v6);
  v27 = v18;
  v19 = MEMORY[0x1E695BED0];
  sub_1D11DC840(0, &qword_1EE0696A0, MEMORY[0x1E695BED0]);
  sub_1D11DD0B4(0, &qword_1EE0695B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  sub_1D11DC9D8(&qword_1EE0696A8, &qword_1EE0696A0, v19, MEMORY[0x1E695BED8]);
  v20 = v24;
  sub_1D138F88C();

  sub_1D11DBEA8(&qword_1EE0696B8, sub_1D11DC8E8, MEMORY[0x1E695BE28]);
  v21 = v25;
  v22 = sub_1D138F80C();
  (*(v26 + 8))(v20, v21);
  return v22;
}

uint64_t sub_1D11D8EE4(void *a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  sub_1D11DCA1C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a4;
  *(v16 + 25) = a3;
  *(v16 + 32) = a2;
  *(v16 + 40) = v5;
  *(v16 + 48) = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D11DCAD4;
  *(v17 + 24) = v16;
  v18 = MEMORY[0x1E69E62F8];
  sub_1D11DC474(0, &qword_1EC60D040, &qword_1EC60D048, MEMORY[0x1E69E62F8]);
  sub_1D11DC500(&qword_1EC60D050, &qword_1EC60D040, &qword_1EC60D048, v18);
  v19 = a1;

  sub_1D138F75C();
  sub_1D11DBEA8(&qword_1EC60D058, sub_1D11DCA1C, MEMORY[0x1E695C058]);
  v20 = sub_1D138F80C();
  (*(v13 + 8))(v15, v12);
  return v20;
}

uint64_t sub_1D11D911C@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 25) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  sub_1D11DC474(0, &qword_1EC60D040, &qword_1EC60D048, MEMORY[0x1E69E62F8]);
  swift_allocObject();
  v15 = a1;

  result = sub_1D138F73C();
  *a7 = result;
  return result;
}

void sub_1D11D9200(void (*a1)(void **), uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1D106F934(0, &qword_1EC609F60, 0x1E696C100);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = *MEMORY[0x1E696B7B8];

  v17 = [ObjCClassFromMetadata diagnosticTestResultTypeForIdentifier_];
  if (v17)
  {
    v18 = v17;
    v19 = objc_opt_self();
    v20 = [v19 predicateForMedicalRecordsAssociatedWithMedicalUserDomainConcept_];
    v21 = [v19 predicateForDiagnosticTestResultCategory_];
    sub_1D11DD0B4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D139E6E0;
    *(v22 + 32) = v20;
    *(v22 + 40) = v21;
    v57 = v22;
    v50 = a7;
    v48 = v21;
    v49 = v20;
    if (a4)
    {
      v23 = qword_1EC608D10;
      v24 = v20;
      v25 = v21;
      if (v23 != -1)
      {
        swift_once();
      }

      v26 = qword_1EC62FB40;
      MEMORY[0x1D3885D90]();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      v27 = a5;
      sub_1D13904FC();
    }

    else
    {
      v27 = a5;
      v29 = v20;
      v30 = v21;
    }

    sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
    v31 = sub_1D139044C();

    v47 = [objc_opt_self() andPredicateWithSubpredicates_];

    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D139E810;
    v33 = v18;
    *(v32 + 32) = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v18 predicate:v47];
    sub_1D139016C();
    v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v35 = sub_1D139012C();

    v36 = [v34 initWithKey:v35 ascending:v27 & 1];

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D139E810;
    *(v37 + 32) = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1D11DD05C;
    *(v38 + 24) = v14;
    v39 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
    sub_1D106F934(0, &qword_1EE06A630, 0x1E696C388);
    v40 = v36;
    v41 = sub_1D139044C();

    sub_1D106F934(0, &qword_1EE06B578, 0x1E696AEB0);
    v42 = sub_1D139044C();

    v55 = sub_1D11DD104;
    v56 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1D1324B28;
    v54 = &block_descriptor_84;
    v43 = _Block_copy(&aBlock);
    v44 = [v39 initWithQueryDescriptors:v41 limit:a6 sortDescriptors:v42 resultsHandler:v43];

    _Block_release(v43);

    v45 = v44;
    v46 = sub_1D139012C();
    [v45 setDebugIdentifier_];

    [*(v50 + 32) executeQuery_];
  }

  else
  {

    sub_1D11DD060();
    v28 = swift_allocError();
    aBlock = v28;
    LOBYTE(v52) = 1;
    a1(&aBlock);
  }
}

void sub_1D11D977C(int a1, unint64_t a2, id a3, void (*a4)(uint64_t, uint64_t))
{
  if (a2 && (v6 = sub_1D106E224(a2)) != 0)
  {
    a4(v6, 0);
  }

  else if (a3)
  {
    v7 = a3;
    a4(a3, 1);
  }

  else
  {
    a4(MEMORY[0x1E69E7CC0], 0);
  }
}

id UserDomainConceptDataProvider.recordChangePublisher(for:categories:since:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (*(v10 + 16))
  {

    v11 = sub_1D11362EC(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      return v13;
    }
  }

  *&aBlock = a4;
  sub_1D11DCB44(0);
  swift_allocObject();
  v14 = a4;
  v15 = sub_1D138F6EC();
  v16 = MEMORY[0x1E69E7CD0];
  v53 = MEMORY[0x1E69E7CD0];
  v17 = *(a3 + 16);
  if (!v17)
  {
LABEL_17:
    v41 = a1;
    sub_1D11D4D60(v16);

    v30 = v14;
    if (!a4)
    {
      v30 = [objc_opt_self() latestAnchor];
    }

    v31 = objc_allocWithZone(MEMORY[0x1E696BF08]);
    sub_1D106F934(0, &qword_1EE06A630, 0x1E696C388);
    v32 = v14;
    v33 = v30;

    v34 = sub_1D139044C();

    *&v50 = sub_1D11DCBD8;
    *(&v50 + 1) = v15;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v49 = sub_1D11D9E38;
    *(&v49 + 1) = &block_descriptor_32;
    v35 = _Block_copy(&aBlock);
    v36 = [v31 initWithQueryDescriptors:v34 anchor:v33 limit:0 resultsHandler:v35];

    _Block_release(v35);

    *&v50 = sub_1D11DD434;
    *(&v50 + 1) = v15;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v49 = sub_1D11D9E38;
    *(&v49 + 1) = &block_descriptor_55;
    v37 = _Block_copy(&aBlock);

    sub_1D102CE24(sub_1D11DD434, v15);

    [v36 setUpdateHandler_];
    _Block_release(v37);

    [*(v5 + 32) executeQuery_];
    swift_beginAccess();

    v38 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = *(v5 + 24);
    *(v5 + 24) = 0x8000000000000000;
    sub_1D11DB840(v38, a1, a2, isUniquelyReferenced_nonNull_native, sub_1D1183588, sub_1D117E240, sub_1D133945C);

    *(v5 + 24) = v43;
    swift_endAccess();
    *&aBlock = v15;
    sub_1D11DBEA8(&qword_1EE069690, sub_1D11DCB44, MEMORY[0x1E695BFB0]);
    v13 = sub_1D138F80C();
    swift_beginAccess();

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_1D11DB2AC(v13, v41, a2, v40);

    *(v5 + 16) = v43;
    swift_endAccess();

    return v13;
  }

  v18 = a3 + 32;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  while (1)
  {
    ++v18;
    swift_beginAccess();
    v19 = off_1EE069F80;
    if (!*(off_1EE069F80 + 2))
    {
      break;
    }

    v20 = sub_1D12A2F78();
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = v19[7] + 72 * v20;
    v43 = *v22;
    v24 = *(v22 + 32);
    v23 = *(v22 + 48);
    v25 = *(v22 + 64);
    v44 = *(v22 + 16);
    v45 = v24;
    v47 = v25;
    v46 = v23;
    swift_endAccess();
    v50 = v45;
    v51 = v46;
    v52 = v47;
    aBlock = v43;
    v49 = v44;
    sub_1D1082914(&v43, v42);
LABEL_14:
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v43 = aBlock;
    v44 = v49;
    v27 = [v52 sampleTypes];
    if (v27)
    {
      v28 = v27;
      sub_1D106F934(0, &qword_1EE06B780, 0x1E696C3D0);
      v29 = sub_1D139045C();

      sub_1D1185968(v29);
    }

    sub_1D1080D98(&v43);
    if (!--v17)
    {
      v16 = v53;
      goto LABEL_17;
    }
  }

  swift_endAccess();
  result = [objc_opt_self() unknownRecordCategory];
  if (result)
  {
    sub_1D123E1C4(result, &aBlock);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double sub_1D11D9E38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_1D106F934(0, &qword_1EE06B0D0, 0x1E696C3A8);
    v9 = sub_1D139045C();
  }

  if (a4)
  {
    sub_1D106F934(0, &qword_1EE069588, 0x1E696C0B0);
    a4 = sub_1D139045C();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(v12, v9, a4, a5, a6);

  return result;
}

void sub_1D11D9F50(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v15 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(v15, a3, a4, a5, a6);
}

void sub_1D11DA01C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D11362EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D11811C8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D117A254(v16, a4 & 1);
    v11 = sub_1D11362EC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_1D133945C();
  }
}

void sub_1D11DA164(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D11362EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D1181358();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D117A51C(v16, a4 & 1);
    v11 = sub_1D11362EC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_1D133945C();
  }
}

void sub_1D11DA2AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D11362EC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1D1181374();
      goto LABEL_7;
    }

    sub_1D117A538(v15, a4 & 1);
    v25 = sub_1D11362EC(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1D13916CC();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1D138E52C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1D13385E4(v12, a2, a3, a1, v18);
}

void sub_1D11DA46C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D11362EC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D118164C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D117ABF4(v16, a4 & 1);
    v11 = sub_1D11362EC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    sub_1D11DD2EC(a1, v22);
  }

  else
  {
    sub_1D1338694(v11, a2, a3, a1, v21);
  }
}

void sub_1D11DA5F4(uint64_t a1, char a2, void (*a3)(void), void (*a4)(uint64_t, void), void (*a5)(uint64_t, uint64_t, uint64_t, __n128), double a6)
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_1D129E314(a6);
  v17 = *(v13 + 16);
  v18 = (v15 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v15;
  v22 = *(v13 + 24);
  if (v22 < v20 || (a2 & 1) == 0)
  {
    if (v22 >= v20 && (a2 & 1) == 0)
    {
      v23 = v14;
      a3();
      v14 = v23;
      goto LABEL_8;
    }

    a4(v20, a2 & 1);
    v14 = sub_1D129E314(a6);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v9;
  if (v21)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v14);
    *(v26 + 8 * v14) = a1;
  }

  else
  {
    v16.n128_f64[0] = a6;

    a5(v14, a1, v25, v16);
  }
}

void sub_1D11DA750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1D129E12C(a2, a3, a4, a5);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = v14;
      sub_1D1181990();
      v14 = v22;
      goto LABEL_8;
    }

    sub_1D117B180(v19, a6 & 1);
    v14 = sub_1D129E12C(a2, a3, a4, a5);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    *(v24[7] + 8 * v14) = a1;
  }

  else
  {
    sub_1D133873C(v14, a2, a3, a4, a5, a1, v24);
    v25 = a5;

    v26 = a4;
  }
}

uint64_t sub_1D11DA8D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D129E240(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
      return sub_1D11DCED8(a1, v20[7] + 72 * v14, &qword_1EE06AED0, &type metadata for AccountIcon);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D1181CB4();
    goto LABEL_7;
  }

  sub_1D117BB48(v17, a3 & 1);
  v22 = sub_1D129E240(a2);
  if ((v18 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1D13916CC();
    __break(1u);
    return result;
  }

  v14 = v22;
  v20 = *v4;
  if (v18)
  {
    return sub_1D11DCED8(a1, v20[7] + 72 * v14, &qword_1EE06AED0, &type metadata for AccountIcon);
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D1338788(v14, v11, a1, v20);
}

unint64_t sub_1D11DAA88(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1D129E444(a2, a3, a4, a5 & 1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1D1181FA4();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1D117BF78(v20, a6 & 1);
    v15 = sub_1D129E444(a2, a3, a4, a5 & 1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1D13916CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 48 * v15;

    return sub_1D11DCE7C(a1, v26);
  }

  else
  {

    return sub_1D133885C(v15, a2, a3, a4, a5 & 1, a1, v25);
  }
}

void sub_1D11DABF4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D11362EC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D11825B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D117C9F4(v16, a4 & 1);
    v11 = sub_1D11362EC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    sub_1D109E39C(a1, v22);
  }

  else
  {
    sub_1D13388C4(v11, a2, a3, a1, v21);
  }
}

void sub_1D11DAD84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D129E400(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D1182914();
      goto LABEL_7;
    }

    sub_1D117CF98(v13, a3 & 1);
    v17 = sub_1D129E400(a2);
    if ((v14 & 1) == (v18 & 1))
    {
      v10 = v17;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D1186A80(a2, v19);
      sub_1D1338930(v10, v19, a1, v16);
      return;
    }

LABEL_15:
    sub_1D13916CC();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

void sub_1D11DAEC4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D129E520(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D1182AC8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D117D268(v13, a3 & 1);
    v8 = sub_1D129E520(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1D106F934(0, &unk_1EC6096D0, 0x1E696C510);
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v14)
  {
    v18 = *(*v4 + 56);
    v19 = *(v18 + 8 * v8);
    *(v18 + 8 * v8) = a1;
  }

  else
  {
    sub_1D1339458();

    v20 = a2;
  }
}

_OWORD *sub_1D11DB008(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D12A2F74();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D1182C60();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D117D51C(v13, a3 & 1);
    v8 = sub_1D12A2F74();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1D13916CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1D109E39C(a1, v19);
  }

  else
  {
    sub_1D1338988(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1D11DB188(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v8 = *v3;
  v9 = sub_1D12A2F78();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D118327C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D117DF20(v14, a3 & 1);
    v9 = sub_1D12A2F78();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1D13389F0(v9, v6, a1, v19);
  }
}

void sub_1D11DB2AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D11362EC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D11833F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D117DF78(v16, a4 & 1);
    v11 = sub_1D11362EC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1D1338A34(v11, a2, a3, a1, v21);
  }
}

void sub_1D11DB3F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D12A2F7C();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D11835A4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D117E25C(v14, a3 & 1);
    v9 = sub_1D12A2F7C();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for HKTimeScope(0);
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1D13385A0(v9, a2, a1, v19);
  }
}

uint64_t sub_1D11DB518(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BrowseCategory(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D129E5D8(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
      return sub_1D11DCED8(a1, v19[7] + 72 * v13, &qword_1EE06AEE0, &type metadata for BrowseIcon);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_1D1183994();
    goto LABEL_7;
  }

  sub_1D117EB5C(v16, a3 & 1);
  v21 = sub_1D129E5D8(a2);
  if ((v17 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1D13916CC();
    __break(1u);
    return result;
  }

  v13 = v21;
  v19 = *v4;
  if (v17)
  {
    return sub_1D11DCED8(a1, v19[7] + 72 * v13, &qword_1EE06AEE0, &type metadata for BrowseIcon);
  }

LABEL_11:
  sub_1D10F3604(a2, v10);
  return sub_1D1338A7C(v13, v10, a1, v19);
}

unint64_t sub_1D11DB694(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1D129E444(a2, a3, a4, a5 & 1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1D1183C34();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1D117EF58(v20, a6 & 1);
    v15 = sub_1D129E444(a2, a3, a4, a5 & 1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1D13916CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 48 * v15;

    return sub_1D11DCFA8(a1, v26);
  }

  else
  {

    return sub_1D133885C(v15, a2, a3, a4, a5 & 1, a1, v25);
  }
}

void sub_1D11DB840(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1D11362EC(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1D11362EC(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

void sub_1D11DB9A8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D129DF64(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D1184280();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D117FB20(v14, a3 & 1);
    v9 = sub_1D129DF64(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1D1338540(v9, a2, a1, v19);
    sub_1D1082914(a2, v20);
  }
}

uint64_t sub_1D11DBAD8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D129DF64(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D1184458();
    result = v17;
    goto LABEL_8;
  }

  sub_1D1180094(v14, a3 & 1);
  result = sub_1D129DF64(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1D13916CC();
    __break(1u);
    return result;
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {
    sub_1D1338540(result, a2, a1, v19);
    return sub_1D1082914(a2, v20);
  }

  return result;
}

void sub_1D11DBBDC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D129E8A8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D11845F8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D1180860(v13, a3 & 1);
    v8 = sub_1D129E8A8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1D106F934(0, &unk_1EE06B748, 0x1E696C338);
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 48 * v8;
    v24 = *v19;
    v20 = *(v19 + 24);
    v21 = a1[1];
    *v19 = *a1;
    *(v19 + 16) = v21;
    *(v19 + 32) = a1[2];
  }

  else
  {
    sub_1D1338B38(v8, a2, a1, v18);

    v22 = a2;
  }
}

void sub_1D11DBD64(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D129E8A8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D11847B4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D1180B2C(v13, a3 & 1);
    v8 = sub_1D129E8A8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1D106F934(0, &unk_1EE06B748, 0x1E696C338);
      sub_1D13916CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v14)
  {
    v18 = *(*v4 + 56);
    v19 = *(v18 + 8 * v8);
    *(v18 + 8 * v8) = a1;
  }

  else
  {
    sub_1D1339458();

    v20 = a2;
  }
}

uint64_t sub_1D11DBEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D11DBEF0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D11DC5B8(255, a3, a4);
    sub_1D11DC13C(a5, a3, a4);
    v9 = sub_1D138F76C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D11DBF7C(uint64_t a1)
{
  if (!qword_1EE069600)
  {
    sub_1D11DC018(255);
    sub_1D11DC0D4(255, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE069600);
    }
  }
}

void sub_1D11DC018(uint64_t a1)
{
  if (!qword_1EE069608)
  {
    sub_1D138D5EC();
    sub_1D106F934(255, &unk_1EE06A5F8, 0x1E696C218);
    sub_1D11DBEA8(&qword_1EE06B4F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1D139003C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE069608);
    }
  }
}

void sub_1D11DC0D4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D11DC13C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D11DC5B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D11DC198()
{
  result = qword_1EE069638;
  if (!qword_1EE069638)
  {
    sub_1D11DBEF0(255, &qword_1EE069630, &qword_1EE069660, sub_1D11DBF7C, &qword_1EE069668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069638);
  }

  return result;
}

void sub_1D11DC21C(uint64_t a1)
{
  if (!qword_1EE06A6E8)
  {
    sub_1D11DC2A0(255, &qword_1EE06A708, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260);
    sub_1D11DC330();
    v1 = sub_1D138F76C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06A6E8);
    }
  }
}

void sub_1D11DC2A0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1D11DC0D4(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    sub_1D10922EC();
    v6 = sub_1D138F72C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D11DC330()
{
  result = qword_1EE06A710;
  if (!qword_1EE06A710)
  {
    sub_1D11DC2A0(255, &qword_1EE06A708, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06A710);
  }

  return result;
}

void sub_1D11DC3BC(uint64_t a1)
{
  if (!qword_1EC60CFE0)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1D11DC474(255, &qword_1EC60CFE8, &qword_1EC60CFF0, MEMORY[0x1E69E6720]);
    sub_1D11DC500(&qword_1EC60CFF8, &qword_1EC60CFE8, &qword_1EC60CFF0, v1);
    v2 = sub_1D138F76C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC60CFE0);
    }
  }
}

void sub_1D11DC474(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D11DC0D4(255, a3, &qword_1EC60B0A8, 0x1E696C0F8, a4);
    sub_1D10922EC();
    v5 = sub_1D138F72C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D11DC500(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D11DC474(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D11DC55C(void (*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  a1(&v6);
  v5 = v6;
  objc_autoreleasePoolPop(v4);
  *a2 = v5;
}

void sub_1D11DC5B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D10922EC();
    v4 = sub_1D138F72C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D11DC62C(uint64_t a1)
{
  if (!qword_1EC60D018)
  {
    sub_1D11DC684(255);
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60D018);
    }
  }
}

void sub_1D11DC684(uint64_t a1)
{
  if (!qword_1EC60D020)
  {
    sub_1D106F934(255, &qword_1EE06A5C0, 0x1E696C260);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60D020);
    }
  }
}

unint64_t sub_1D11DC708()
{
  result = qword_1EC60D030;
  if (!qword_1EC60D030)
  {
    sub_1D11DBEF0(255, &qword_1EC60D008, &qword_1EC60D010, sub_1D11DC62C, &qword_1EC60D028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D030);
  }

  return result;
}

void sub_1D11DC78C(uint64_t a1)
{
  if (!qword_1EE069610)
  {
    v1 = MEMORY[0x1E695C028];
    sub_1D11DC840(255, &qword_1EE069640, MEMORY[0x1E695C028]);
    sub_1D11DC9D8(&qword_1EE069648, &qword_1EE069640, v1, MEMORY[0x1E695C038]);
    v2 = sub_1D138F76C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE069610);
    }
  }
}

void sub_1D11DC840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_1D11DD0B4(255, &qword_1EE0695B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v7 = v6;
    v8 = sub_1D10922EC();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D11DC8E8(uint64_t a1)
{
  if (!qword_1EE0696B0)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1D11DC840(255, &qword_1EE0696A0, MEMORY[0x1E695BED0]);
    sub_1D11DD0B4(255, &qword_1EE0695B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1D11DC9D8(&qword_1EE0696A8, &qword_1EE0696A0, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1D138F57C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0696B0);
    }
  }
}

uint64_t sub_1D11DC9D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D11DC840(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D11DCA1C(uint64_t a1)
{
  if (!qword_1EC60D038)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1D11DC474(255, &qword_1EC60D040, &qword_1EC60D048, MEMORY[0x1E69E62F8]);
    sub_1D11DC500(&qword_1EC60D050, &qword_1EC60D040, &qword_1EC60D048, v1);
    v2 = sub_1D138F76C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC60D038);
    }
  }
}

void sub_1D11DCAEC(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = objc_autoreleasePoolPush();
  v3(&v6);
  v5 = v6;
  objc_autoreleasePoolPop(v4);
  *a1 = v5;
}

void sub_1D11DCB44(uint64_t a1)
{
  if (!qword_1EE069688)
  {
    sub_1D11DC0D4(255, &qword_1EE0695A0, &qword_1EE0695A8, 0x1E696C380, MEMORY[0x1E69E6720]);
    v1 = sub_1D138F6DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE069688);
    }
  }
}

double block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1D11DCC1C()
{
  result = qword_1EC60D060;
  if (!qword_1EC60D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D060);
  }

  return result;
}

unint64_t sub_1D11DCC74()
{
  result = qword_1EC60D068;
  if (!qword_1EC60D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D068);
  }

  return result;
}

uint64_t sub_1D11DCED8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D11DCF44(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1D11DCF44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v6 = sub_1D109FEE8();
    v7 = type metadata accessor for UnboundedCache(a1, &type metadata for AccountIcon.Size, a3, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t objectdestroy_48Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1D11DD060()
{
  result = qword_1EC60D070;
  if (!qword_1EC60D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D070);
  }

  return result;
}

void sub_1D11DD0B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D11DD118(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 0x1FF;
  return v3(&v5);
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_2Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D11DD268(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_1D11DD2EC(uint64_t a1, uint64_t a2)
{
  sub_1D11DD350(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D11DD350(uint64_t a1)
{
  if (!qword_1EE06AEE8[0])
  {
    v2 = sub_1D106F934(255, &qword_1EE06A540, 0x1E69DCAB8);
    v3 = sub_1D10A0968();
    v4 = type metadata accessor for UnboundedCache(a1, MEMORY[0x1E69E7DE0], v2, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1EE06AEE8);
    }
  }
}

id sub_1D11DD56C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v2 layer];
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = sub_1D1282884(v5);
  [v3 setCornerRadius_];

  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v7 secondarySystemBackgroundColor];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v15[4] = sub_1D1096DDC;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D120E4B8;
  v15[3] = &block_descriptor_33;
  v12 = _Block_copy(v15);
  v13 = [v11 initWithDynamicProvider_];
  _Block_release(v12);

  [v2 setBackgroundColor_];

  [v2 setHidden_];
  return v2;
}

id sub_1D11DD7A8(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_1D11DD80C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v2 layer];
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = sub_1D1282884(v5);
  [v3 setCornerRadius_];

  v7 = [objc_opt_self() labelColor];
  [v2 setBackgroundColor_];

  [v2 setHidden_];
  return v2;
}

id sub_1D11DD944(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
  *v4 = 0;
  v4[1] = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_dotConstraints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___dotView] = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___innerDotView] = 0;
  v2[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_style] = 1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RangePillView();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1D11DDA24();
  }

  return v6;
}

double sub_1D11DDA24()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_1D1282884(v3);
  [v1 setCornerRadius_];

  v5 = [v0 layer];
  [v5 setMasksToBounds_];

  v6 = [v0 layer];
  [v6 setCornerCurve_];

  v7 = sub_1D11DD54C();
  [v0 addSubview_];

  v8 = sub_1D11DD788();
  [v0 addSubview_];

  sub_1D1195238(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E700;
  v10 = sub_1D138F4EC();
  v11 = MEMORY[0x1E69DC2B0];
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D11DE830();
  sub_1D1390CBC();
  swift_unknownObjectRelease();

  return result;
}

void sub_1D11DDC30(void *a1, id a2, uint64_t a3)
{
  v4 = [a2 preferredContentSizeCategory];
  v5 = sub_1D1282884(v4);

  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_1D1282884(v7);
  if (v5 != v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_1D11DD54C();
      v12 = [v11 layer];

      v13 = v10;
      v14 = [v13 traitCollection];
      v15 = [v14 preferredContentSizeCategory];

      v16 = sub_1D1282884(v15);
      [v12 setCornerRadius_];

      v17 = sub_1D11DD788();
      v18 = [v17 layer];

      v19 = [v13 traitCollection];
      v20 = [v19 preferredContentSizeCategory];

      v21 = sub_1D1282884(v20);
      [v18 setCornerRadius_];

      v22 = [v13 layer];
      v23 = [v13 traitCollection];

      v24 = [v23 preferredContentSizeCategory];
      v25 = sub_1D1282884(v24);

      [v22 setCornerRadius_];
    }
  }
}

void sub_1D11DDEA4(double a1)
{
  v2 = v1;
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_dotConstraints;
  sub_1D1071940();

  v5 = sub_1D139044C();

  [v3 deactivateConstraints_];

  sub_1D106F424();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E6E0;
  *(inited + 32) = sub_1D11DD788();
  *(inited + 40) = sub_1D11DD54C();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_11;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1D3886B70](0, inited))
  {
    v8 = i;
    [i setHidden_];

    v52 = v3;
    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v9 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    ;
  }

  v9 = MEMORY[0x1D3886B70](1, inited);
LABEL_7:
  v10 = v9;
  [v9 setHidden_];

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D11DE7D4();
  sub_1D139009C();
  v11 = [v2 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = sub_1D1282884(v12);
  v14 = 0.5;
  if (v53 > 0.5)
  {
    v14 = -0.5;
  }

  v15 = v14 * (v13 * 10.0 + -4.0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D13A72C0;
  v17 = OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___dotView;
  v18 = [*&v2[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___dotView] centerXAnchor];
  v19 = [v2 leadingAnchor];
  [v2 frame];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v53 * (v15 + CGRectGetWidth(v54))];

  *(v16 + 32) = v20;
  v21 = [*&v2[v17] centerYAnchor];
  v22 = [v2 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v16 + 40) = v23;
  v24 = [*&v2[v17] heightAnchor];
  v25 = [v2 traitCollection];
  v26 = [v25 preferredContentSizeCategory];

  v27 = sub_1D1282884(v26);
  v28 = [v24 constraintEqualToConstant_];

  *(v16 + 48) = v28;
  v29 = [*&v2[v17] widthAnchor];
  v30 = [v2 traitCollection];
  v31 = [v30 preferredContentSizeCategory];

  v32 = sub_1D1282884(v31);
  v33 = [v29 constraintEqualToConstant_];

  *(v16 + 56) = v33;
  v34 = OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___innerDotView;
  v35 = [*&v2[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___innerDotView] centerXAnchor];
  v36 = [*&v2[v17] centerXAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v16 + 64) = v37;
  v38 = [*&v2[v34] centerYAnchor];
  v39 = [*&v2[v17] centerYAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v16 + 72) = v40;
  v41 = [*&v2[v34] heightAnchor];
  v42 = [v2 traitCollection];
  v43 = [v42 preferredContentSizeCategory];

  v44 = sub_1D1282884(v43);
  v45 = [v41 constraintEqualToConstant_];

  *(v16 + 80) = v45;
  v46 = [*&v2[v34] widthAnchor];
  v47 = [v2 traitCollection];
  v48 = [v47 preferredContentSizeCategory];

  v49 = sub_1D1282884(v48);
  v50 = [v46 constraintEqualToConstant_];

  *(v16 + 88) = v50;
  *&v2[v4] = v16;

  v51 = sub_1D139044C();

  [v52 activateConstraints_];
}

void sub_1D11DE504()
{
  sub_1D106F424();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E6E0;
  *(inited + 32) = sub_1D11DD788();
  *(inited + 40) = sub_1D11DD54C();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1D3886B70](0, inited))
  {
    v2 = i;
    [i setHidden_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v3 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v3 = MEMORY[0x1D3886B70](1, inited);
LABEL_7:
  v4 = v3;
  [v3 setHidden_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v5 = objc_opt_self();
  sub_1D1071940();

  v6 = sub_1D139044C();

  [v5 deactivateConstraints_];
}

id sub_1D11DE6A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RangePillView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1D11DE780()
{
  result = qword_1EC60D0B0;
  if (!qword_1EC60D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D0B0);
  }

  return result;
}

unint64_t sub_1D11DE7D4()
{
  result = qword_1EC60D0B8;
  if (!qword_1EC60D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D0B8);
  }

  return result;
}

unint64_t sub_1D11DE830()
{
  result = qword_1EC60DFA0;
  if (!qword_1EC60DFA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60DFA0);
  }

  return result;
}

double block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D11DE8AC(uint64_t a1)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v29 - v5;
  v7 = [v1 minValue];
  if (!v7)
  {
LABEL_7:
    v11 = [v1 minValue];
    if (!v11)
    {
      v11 = [v1 maxValue];
      if (!v11)
      {
        return 0;
      }
    }

    v12 = v11;
    v13 = [objc_opt_self() localizedStringFromNumber:v11 numberStyle:a1];
    v14 = sub_1D139016C();

    return v14;
  }

  v8 = v7;
  v9 = [v1 maxValue];
  if (!v9)
  {
    v10 = v8;
    goto LABEL_6;
  }

  v10 = v9;
  sub_1D11DEC9C();
  if (sub_1D1390D8C())
  {

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_self();
  v16 = [v15 localizedStringFromNumber:v8 numberStyle:a1];
  v17 = sub_1D139016C();
  v31 = v18;
  v32 = v17;

  v19 = [v15 localizedStringFromNumber:v10 numberStyle:a1];
  v30 = sub_1D139016C();
  v21 = v20;

  v22 = sub_1D138D67C();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  if (qword_1EC608CB0 != -1)
  {
    swift_once();
  }

  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D139E710;
  v24 = MEMORY[0x1E69E6158];
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1D1089930();
  v26 = v31;
  *(v23 + 32) = v32;
  *(v23 + 40) = v26;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  v27 = v30;
  *(v23 + 64) = v25;
  *(v23 + 72) = v27;
  *(v23 + 80) = v21;
  v14 = sub_1D138D1CC();
  if (*(v23 + 16))
  {
    v14 = sub_1D139019C();
  }

  else
  {
  }

  sub_1D10CD608(v6);
  return v14;
}

unint64_t sub_1D11DEC9C()
{
  result = qword_1EE06B6C0;
  if (!qword_1EE06B6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06B6C0);
  }

  return result;
}

HealthRecordsUI::DisplayCategory::Kind HKMedicalRecord.categoryKind.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_1D138D5EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DisplayCategory.Kind.init(rawValue:)([v1 recordCategoryType]).value;
  v13 = v31;
  if (v31 == 11)
  {
    v29 = v4;
    sub_1D138F06C();
    v14 = v1;
    v15 = sub_1D138F0AC();
    v16 = sub_1D13907FC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = a1;
      v18 = v17;
      v27 = swift_slowAlloc();
      v30 = v27;
      *v18 = 136446210;
      v19 = [v14 UUID];
      sub_1D138D5CC();

      sub_1D10B81E8();
      v20 = sub_1D13915CC();
      v22 = v21;
      (*(v29 + 8))(v6, v3);
      v23 = sub_1D11DF718(v20, v22, &v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D101F000, v15, v16, "HKMedicalRecord %{public}s is reporting record category type INVALID", v18, 0xCu);
      v24 = v27;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1D38882F0](v24, -1, -1);
      v25 = v18;
      a1 = v28;
      MEMORY[0x1D38882F0](v25, -1, -1);
    }

    result = (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  *a1 = v13;
  return result;
}

uint64_t HKMedicalRecord.displayNameFromFHIR.getter()
{
  v1 = [v0 medicalRecordCodings];
  sub_1D106F934(0, &qword_1EC609D38, 0x1E696C230);
  v2 = sub_1D139045C();

  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_1D13910DC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D3886B70](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = [v5 codingSystem];
    v9 = [objc_opt_self() textSystem];
    v10 = v9;
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_19;
    }
  }

  sub_1D106F934(0, &qword_1EC60D0D8, 0x1E696C238);
  v11 = sub_1D1390D8C();

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [v6 displayString];

  if (v12)
  {
    v13 = sub_1D139016C();

    return v13;
  }

  return 0;
}

uint64_t HKMedicalRecord.firstDisplayText.getter()
{
  v1 = [v0 medicalRecordCodings];
  sub_1D106F934(0, &qword_1EC609D38, 0x1E696C230);
  v2 = sub_1D139045C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v3 = sub_1D13910DC();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D3886B70](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v5 displayString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1D139016C();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  v14 = [v6 displayString];

  if (v14)
  {
    v15 = sub_1D139016C();

    return v15;
  }

  return 0;
}

uint64_t HKMedicalRecord.preferredDisplayName.getter()
{
  if ([v0 recordCategoryType] == 8)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = v0;
      v4 = [v2 displayName];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1D139016C();

        v3 = v5;
LABEL_22:

        return v6;
      }

      if (qword_1EE06AD08 != -1)
      {
        swift_once();
      }

      v18 = sub_1D138D1CC();
LABEL_21:
      v6 = v18;
      goto LABEL_22;
    }
  }

  v7 = [v0 primaryConcept];
  v8 = [v7 localizedPreferredName];

  if (v8)
  {
    v9 = sub_1D139016C();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      return v9;
    }
  }

  result = HKMedicalRecord.displayNameFromFHIR.getter();
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    result = HKMedicalRecord.firstDisplayText.getter();
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {

      v3 = [v0 fallbackDisplayString];
      v18 = sub_1D139016C();
      goto LABEL_21;
    }
  }

  return result;
}

id sub_1D11DF594(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1D139012C();

  return v5;
}

uint64_t HKMedicalRecord.displayNameForGroupByConcept.getter()
{
  v1 = [v0 primaryConcept];
  v2 = [v1 groupByConcept];

  v3 = [v2 localizedPreferredName];
  if (v3)
  {
    v4 = sub_1D139016C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }
  }

  v9 = [v0 preferredDisplayName];
  v10 = sub_1D139016C();

  return v10;
}

unint64_t sub_1D11DF718(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D11DF7E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D109F94C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D11DF7E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D11DF8F0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D139128C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1D11DF8F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D11DF93C(a1, a2);
  sub_1D11DFA6C(&unk_1F4D04430);
  return v3;
}

void *sub_1D11DF93C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D12C486C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D139128C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D13902CC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D12C486C(v10, 0);
        result = sub_1D13911CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1D11DFA6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D11DFB58(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_1D11DFB58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D11DFC40();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1D11DFC40()
{
  if (!qword_1EE06A4C8)
  {
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A4C8);
    }
  }
}

uint64_t CancellationToken.__allocating_init(cancelBlock:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a2;
  return result;
}

double sub_1D11DFD08@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D1080D80;
  a2[1] = v6;

  return result;
}

double sub_1D11DFD88(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 24) = sub_1D11E0290;
  *(v6 + 32) = v5;

  return result;
}

uint64_t sub_1D11DFE18()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

double sub_1D11DFE64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return result;
}

uint64_t CancellationToken.init(cancelBlock:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t CancellationToken.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  type metadata accessor for CancellationToken();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = sub_1D11E00B4;
  *(result + 32) = v2;
  return result;
}

void sub_1D11DFF7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1D3886B70](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

LABEL_8:
      swift_beginAccess();
      if ((*(v4 + 16) & 1) == 0)
      {
        *(v4 + 16) = 1;
        swift_beginAccess();
        v6 = *(v4 + 24);

        v6(v7);
      }

      ++v3;
      if (v5 == i)
      {
        return;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

double sub_1D11E00E0()
{
  swift_beginAccess();
  if ((*(v0 + 16) & 1) == 0)
  {
    *(v0 + 16) = 1;
    swift_beginAccess();
    v2 = *(v0 + 24);

    v2(v3);
  }

  return result;
}

uint64_t CancellationToken.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PromotionListViewController(uint64_t a1)
{
  result = qword_1EC60D0E0;
  if (!qword_1EC60D0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D11E0324@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1EC60AAC0);
  sub_1D139092C();
  v4 = type metadata accessor for PromotionListViewDataSourceProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  sub_1D102CC18(&v8, v5 + 24);
  a1[3] = v4;
  result = sub_1D11E0C5C(&qword_1EC60D0F8, v6, type metadata accessor for PromotionListViewDataSourceProvider, &unk_1D13A8014);
  a1[4] = result;
  *a1 = v5;
  return result;
}

id sub_1D11E03DC(void *a1, char *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 8);
  v7 = [a1 healthStore];
  v8 = [v7 profileIdentifier];

  v18 = v4;
  v9 = _s14HealthPlatform8FeedItemC0A9RecordsUIE012predicateForaE10Onboarding9profileId12categoryKindSo11NSPredicateCSo19HKProfileIdentifierC_AD15DisplayCategoryV0M0OSgtFZ_0(v8, &v18);

  *&v2[qword_1EC60AAC0] = v9;
  *&v2[qword_1EC60AAC8] = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EC60AAB8] = a1;
  v10 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v11 = v9;
  v12 = a1;
  v13 = [v10 init];
  v17.receiver = v2;
  v17.super_class = type metadata accessor for FeedItemListViewController(0);
  v14 = objc_msgSendSuper2(&v17, sel_initWithCollectionViewLayout_, v13);

  v15 = v14;
  [v15 setTitle_];

  return v15;
}

uint64_t sub_1D11E0574()
{
  v1 = sub_1D138E35C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D11E0BF8(0, &qword_1EC60B290, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  sub_1D138DB9C();
  sub_1D11E0BF8(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v5 = sub_1D138D97C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v36 = xmmword_1D139E710;
  *(v9 + 16) = xmmword_1D139E710;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E69A3C00], v5);
  v11(v10 + v7, *MEMORY[0x1E69A3BD0], v5);
  v12 = sub_1D138CFBC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_1D10A5C9C(0, &qword_1EC60A0A8, MEMORY[0x1E69A3C58]);
  v13 = swift_allocObject();
  *(v13 + 16) = v36;
  *(v13 + 32) = sub_1D138D99C();
  *(v13 + 40) = 0;
  v14 = MEMORY[0x1D3883480](v9, 0, v4, v13);

  sub_1D111C068(v4);
  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D139E6E0;
  v16 = v0[2];
  *(v15 + 32) = v14;
  *(v15 + 40) = v16;
  sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
  v17 = v14;
  v18 = v16;
  v19 = sub_1D139044C();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  v21 = MEMORY[0x1D38834C0]();
  [v21 setPredicate_];
  v37 = v0;
  v22 = type metadata accessor for PromotionListViewDataSourceProvider();
  v24 = sub_1D11E0C5C(&qword_1EC60D0F0, v23, type metadata accessor for PromotionListViewDataSourceProvider, &unk_1D13A7FD4);
  MEMORY[0x1D3883750](v22, v24);
  sub_1D106F934(0, &qword_1EE06B578, 0x1E696AEB0);
  v25 = sub_1D139044C();

  [v21 setSortDescriptors_];

  v26 = v0[6];
  v27 = __swift_project_boxed_opaque_existential_1Tm(v0 + 3, v26);
  v28 = *(v26 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, v29);
  v32 = v21;
  v33 = sub_1D138D8BC();
  (*(v28 + 8))(v31, v26);
  [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v32 managedObjectContext:v33 sectionNameKeyPath:0 cacheName:0];

  sub_1D10A5CE8(0);
  sub_1D138E30C();
  v34 = sub_1D138E0DC();

  sub_1D11E0C5C(&qword_1EC60A0C0, 255, sub_1D10A5CE8, MEMORY[0x1E69A37E0]);
  return v34;
}

uint64_t sub_1D11E0B14()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D11E0B78(__n128 a1)
{
  sub_1D11E0BF8(0, &qword_1EC60A098, sub_1D10A5C3C, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D139E700;
  *(v1 + 32) = sub_1D11E0574();
  *(v1 + 40) = v2;
  return v1;
}

void sub_1D11E0BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D11E0C5C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D11E0CA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1D106F934(0, &qword_1EC609A00, 0x1E69A3F00);
    **(*(v4 + 64) + 40) = sub_1D139045C();

    return swift_continuation_throwingResume();
  }
}

id sub_1D11E0D98(void *a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR___HRInternalStateProvider_healthExperienceStore];
  v7 = sub_1D138D8AC();
  v8 = sub_1D138D89C();
  v9 = MEMORY[0x1E69A3B38];
  v6[3] = v7;
  v6[4] = v9;
  *v6 = v8;
  *&v3[OBJC_IVAR___HRInternalStateProvider_recordCounts] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR___HRInternalStateProvider_sub] = 0;
  v10 = OBJC_IVAR___HRInternalStateProvider_loadState;
  _s9LoadStateCMa();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 120) = 1;
  *(v11 + 128) = v12;
  *&v3[v10] = v11;
  v13 = &v3[OBJC_IVAR___HRInternalStateProvider_changeHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR___HRInternalStateProvider_isObserving;
  v24 = 0;
  sub_1D11E70B8(0, &unk_1EC60D1E0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v3[v14] = sub_1D138DB1C();
  v15 = [a2 healthStore];
  v16 = [objc_allocWithZone(MEMORY[0x1E69A3F10]) initWithHealthStore_];

  *&v3[OBJC_IVAR___HRInternalStateProvider_accountStore] = v16;
  *&v3[OBJC_IVAR___HRInternalStateProvider_conceptStore] = a1;
  *&v3[OBJC_IVAR___HRInternalStateProvider_healthRecordsStore] = a2;
  v17 = a1;
  v18 = a2;
  v19 = [v18 healthStore];
  v20 = [objc_allocWithZone(MEMORY[0x1E69A3F38]) initWithHealthStore_];

  *&v3[OBJC_IVAR___HRInternalStateProvider_ingestionStore] = v20;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for InternalStateProvider();
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_1D11E48EC();

  return v21;
}

id sub_1D11E1128()
{

  sub_1D138DB0C();

  if (*&v0[OBJC_IVAR___HRInternalStateProvider_sub])
  {

    sub_1D138F64C();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalStateProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D11E12E0()
{
  v1 = *(v0[23] + OBJC_IVAR___HRInternalStateProvider_accountStore);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1D11E1418;
  v2 = swift_continuation_init();
  sub_1D11E6AE4(0, &qword_1EC60D1B0, sub_1D10EDA50);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D11E0CA4;
  v0[13] = &block_descriptor_34_0;
  v0[14] = v2;
  [v1 fetchAllAccountsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D11E1418()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1D11E18E0;
  }

  else
  {
    v2 = sub_1D11E1528;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D11E1528()
{
  v1 = v0[21];
  v0[25] = v1;
  if (v1 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[23];
    v3 = swift_allocObject();
    v0[26] = v3;
    *(v3 + 16) = v2;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[27] = v5;
    v6 = sub_1D106F934(0, &qword_1EC609A00, 0x1E69A3F00);
    v7 = type metadata accessor for InternalStateSection();
    *v5 = v0;
    v5[1] = sub_1D11E17A4;

    return MEMORY[0x1EEE0DDA8](&unk_1D13A80B8, v3, v1, v6, v7);
  }

  type metadata accessor for InternalStateItem();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0xE000000000000000;
  v8[4] = 0xD000000000000013;
  v8[5] = 0x80000001D13C2C90;
  sub_1D11E70B8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E810;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D139E810;
  *(v10 + 32) = v8;
  type metadata accessor for InternalStateSection();
  v11 = swift_allocObject();
  strcpy((v11 + 16), "Account Status");
  *(v11 + 31) = -18;
  *(v11 + 32) = v10;
  *(v9 + 32) = v11;
  v12 = v0[1];

  return v12(v9);
}

uint64_t sub_1D11E17A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D11E18E0(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();
  swift_getErrorValue();
  v3 = sub_1D13916FC();
  v5 = v4;
  type metadata accessor for InternalStateItem();
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000016;
  v6[3] = 0x80000001D13C2C70;
  v6[4] = v3;
  v6[5] = v5;
  sub_1D11E70B8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E810;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E810;
  *(v8 + 32) = v6;
  type metadata accessor for InternalStateSection();
  v9 = swift_allocObject();
  strcpy((v9 + 16), "Account Status");
  *(v9 + 31) = -18;
  *(v9 + 32) = v8;
  *(v7 + 32) = v9;

  v10 = *(v1 + 8);

  return v10(v7);
}

uint64_t sub_1D11E1A70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[30] = a1;
  v3[31] = a3;
  v5 = sub_1D138D57C();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  sub_1D11E640C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v6 = sub_1D138D5EC();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v3[40] = v7;
  v3[41] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D11E1C08, 0, 0);
}

uint64_t sub_1D11E1C08()
{
  v1 = *(v0 + 328);
  v2 = [v1 identifier];
  sub_1D138D5CC();

  v3 = [v1 provenance];
  v4 = [v3 title];

  v5 = sub_1D139016C();
  v7 = v6;

  MEMORY[0x1D3885C10](0x6E756F6363415B20, 0xEA00000000002074);
  sub_1D11E6A9C(&qword_1EC60D1C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v8 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v8);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  *(v0 + 336) = v5;
  *(v0 + 344) = v7;
  v9 = [v1 lastFetchDate];
  if (v9)
  {
    v10 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v14 = v9;
    sub_1D138D52C();

    v15 = *(v13 + 56);
    v15(v11, 0, 1, v12);
    sub_1D11E6ED8(v11, &qword_1EE06B500, MEMORY[0x1E6969530]);
    v16 = sub_1D11E5E00();
    v17 = [v10 lastFetchDate];
    if (!v17)
    {
      __break(1u);
      goto LABEL_13;
    }

    v18 = v17;
    v19 = *(v0 + 280);
    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    sub_1D138D52C();

    v22 = sub_1D138D4EC();
    (*(v21 + 8))(v19, v20);
    v23 = [v16 stringFromDate_];

    v24 = sub_1D139016C();
    v26 = v25;
  }

  else
  {
    v24 = 0x726576656ELL;
    v27 = *(v0 + 296);
    v15 = *(*(v0 + 264) + 56);
    v15(v27, 1, 1, *(v0 + 256));
    sub_1D11E6ED8(v27, &qword_1EE06B500, MEMORY[0x1E6969530]);
    v26 = 0xE500000000000000;
  }

  *(v0 + 352) = v24;
  *(v0 + 360) = v26;
  v28 = [*(v0 + 328) lastFullFetchDate];
  if (v28)
  {
    v29 = *(v0 + 328);
    v30 = *(v0 + 288);
    v31 = *(v0 + 256);
    v32 = v28;
    sub_1D138D52C();

    v15(v30, 0, 1, v31);
    sub_1D11E6ED8(v30, &qword_1EE06B500, MEMORY[0x1E6969530]);
    v33 = sub_1D11E5E00();
    v17 = [v29 lastFullFetchDate];
    if (v17)
    {
      v34 = v17;
      v36 = *(v0 + 264);
      v35 = *(v0 + 272);
      v37 = *(v0 + 256);
      sub_1D138D52C();

      v38 = sub_1D138D4EC();
      (*(v36 + 8))(v35, v37);
      v39 = [v33 stringFromDate_];

      v40 = sub_1D139016C();
      v42 = v41;

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v17);
  }

  v40 = 0x726576656ELL;
  v43 = *(v0 + 288);
  v15(v43, 1, 1, *(v0 + 256));
  sub_1D11E6ED8(v43, &qword_1EE06B500, MEMORY[0x1E6969530]);
  v42 = 0xE500000000000000;
LABEL_9:
  *(v0 + 368) = v40;
  *(v0 + 376) = v42;
  v44 = *(*(v0 + 248) + OBJC_IVAR___HRInternalStateProvider_healthRecordsStore);
  v45 = sub_1D138D5AC();
  *(v0 + 384) = v45;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_1D11E2164;
  v46 = swift_continuation_init();
  sub_1D11E6AE4(0, &qword_1EC60D1C8, sub_1D11E6B68);
  *(v0 + 136) = v47;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D11E2940;
  *(v0 + 104) = &block_descriptor_42;
  *(v0 + 112) = v46;
  [v44 fetchFHIRJSONDocumentWithAccountIdentifier:v45 completion:v0 + 80];
  v17 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v17);
}

uint64_t sub_1D11E2164()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_1D11E26C4;
  }

  else
  {
    v2 = sub_1D11E2274;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D11E2274()
{
  v1 = *(v0 + 224);

  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    v9 = v6;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_1D109F94C(*(v1 + 56) + ((v6 << 11) | (32 * v10)), v0 + 144);
    sub_1D109F94C(v0 + 144, v0 + 176);
    sub_1D11E70B8(0, &qword_1EC60D1D8, v8 + 8, MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      v41 = *(*(v0 + 232) + 16);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D10F9140(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v14 = sub_1D10F9140((v11 > 1), v12 + 1, 1, v7);
        v13 = v12 + 1;
        v7 = v14;
      }

      *(v7 + 2) = v13;
      *&v7[8 * v12 + 32] = v41;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    }
  }

  while (1)
  {
    v6 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v6);
    ++v9;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v15 = *(v7 + 2);
  if (v15)
  {
    v16 = 0;
    v17 = (v7 + 32);
    while (1)
    {
      v18 = *v17++;
      v19 = __OFADD__(v16, v18);
      v16 += v18;
      if (v19)
      {
        goto LABEL_25;
      }

      if (!--v15)
      {
        goto LABEL_21;
      }
    }
  }

  v16 = 0;
LABEL_21:

  v35 = *(v0 + 368);
  v36 = *(v0 + 376);
  v21 = *(v0 + 352);
  v20 = *(v0 + 360);
  v39 = *(v0 + 336);
  v40 = *(v0 + 344);
  v22 = *(v0 + 320);
  v23 = *(v0 + 328);
  v24 = *(v0 + 312);
  v37 = *(v0 + 304);
  v38 = *(v0 + 240);
  *(v0 + 208) = v16;
  *(v0 + 216) = 0;
  sub_1D11E70B8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D139F5B0;
  v26 = [v23 displayableStatus];
  v27 = sub_1D139016C();
  v29 = v28;

  type metadata accessor for InternalStateItem();
  v30 = swift_allocObject();
  v30[2] = 0x6574617453;
  v30[3] = 0xE500000000000000;
  v30[4] = v27;
  v30[5] = v29;
  *(v25 + 32) = v30;
  v31 = swift_allocObject();
  v31[2] = 0x746546207473614CLL;
  v31[3] = 0xEA00000000006863;
  v31[4] = v21;
  v31[5] = v20;
  *(v25 + 40) = v31;
  v32 = swift_allocObject();
  v32[2] = 0x6C7546207473614CLL;
  v32[3] = 0xEF6863746546206CLL;
  v32[4] = v35;
  v32[5] = v36;
  *(v25 + 48) = v32;
  *(v25 + 56) = sub_1D10F4910(0xD000000000000014, 0x80000001D13C2CE0, (v0 + 208));
  (*(v24 + 8))(v22, v37);
  type metadata accessor for InternalStateSection();
  v33 = swift_allocObject();
  v33[2] = v39;
  v33[3] = v40;
  v33[4] = v25;
  *v38 = v33;

  v34 = *(v0 + 8);

  v34();
}

uint64_t sub_1D11E26C4(uint64_t a1)
{
  v2 = *(v1 + 384);
  v3 = *(v1 + 392);
  swift_willThrow();

  v20 = *(v1 + 368);
  v21 = *(v1 + 376);
  v5 = *(v1 + 352);
  v4 = *(v1 + 360);
  v24 = *(v1 + 336);
  v25 = *(v1 + 344);
  v6 = *(v1 + 320);
  v7 = *(v1 + 328);
  v8 = *(v1 + 312);
  v22 = *(v1 + 304);
  v23 = *(v1 + 240);
  *(v1 + 208) = 0;
  *(v1 + 216) = 0;
  sub_1D11E70B8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139F5B0;
  v10 = [v7 displayableStatus];
  v11 = sub_1D139016C();
  v13 = v12;

  type metadata accessor for InternalStateItem();
  v14 = swift_allocObject();
  v14[2] = 0x6574617453;
  v14[3] = 0xE500000000000000;
  v14[4] = v11;
  v14[5] = v13;
  *(v9 + 32) = v14;
  v15 = swift_allocObject();
  v15[2] = 0x746546207473614CLL;
  v15[3] = 0xEA00000000006863;
  v15[4] = v5;
  v15[5] = v4;
  *(v9 + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = 0x6C7546207473614CLL;
  v16[3] = 0xEF6863746546206CLL;
  v16[4] = v20;
  v16[5] = v21;
  *(v9 + 48) = v16;
  *(v9 + 56) = sub_1D10F4910(0xD000000000000014, 0x80000001D13C2CE0, (v1 + 208));
  (*(v8 + 8))(v6, v22);
  type metadata accessor for InternalStateSection();
  v17 = swift_allocObject();
  v17[2] = v24;
  v17[3] = v25;
  v17[4] = v9;
  *v23 = v17;

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_1D11E2940(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1D138FFFC();

    return swift_continuation_throwingResume();
  }
}

double sub_1D11E2A34(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v5 = (v2 + OBJC_IVAR___HRInternalStateProvider_changeHandler);
  v6 = *(v2 + OBJC_IVAR___HRInternalStateProvider_changeHandler);
  v7 = *(v2 + OBJC_IVAR___HRInternalStateProvider_changeHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_1D102CE24(a1, a2);
  sub_1D102CE24(a1, a2);
  v8 = sub_1D102CC60(v6, v7);
  if (a1)
  {
    v9 = sub_1D102CC60(a1, a2);
    MEMORY[0x1EEE9AC00](v9);

    sub_1D138DB0C();

    a1(v2);
    sub_1D102CC60(a1, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);

    sub_1D138DB0C();
  }

  return result;
}

uint64_t sub_1D11E2BA0()
{
  v1[6] = v0;
  sub_1D13901DC();
  v1[7] = swift_task_alloc();
  sub_1D138CECC();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D11E2C5C, 0, 0);
}

uint64_t sub_1D11E2C5C()
{
  v1 = *(v0 + 48);
  *(swift_task_alloc() + 16) = v1;

  sub_1D138DB0C();

  v2 = *(v1 + OBJC_IVAR___HRInternalStateProvider_loadState);
  *(v0 + 72) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D11E2D24, v2, 0);
}

uint64_t sub_1D11E2D24()
{
  v1 = *(v0 + 72);
  if ((*(v1 + 120) & 1) != 0 || *(v1 + 121) != 1)
  {
    sub_1D11E6A9C(&unk_1EC60D190, _s9LoadStateCMa, &unk_1D13A227C);
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_1D11E3250;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D11E2E8C, 0, 0);
  }
}

uint64_t sub_1D11E2E8C()
{
  sub_1D138CF0C();
  swift_allocObject();
  *(v0 + 80) = sub_1D138CEFC();
  sub_1D138CEBC();
  sub_1D138CEDC();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D11E2F54;

  return sub_1D11E3724();
}

uint64_t sub_1D11E2F54(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D11E3054, 0, 0);
}

uint64_t sub_1D11E3054()
{
  v0[4] = v0[12];
  sub_1D11E640C(0, &qword_1EC60B0B8, type metadata accessor for InternalStateSection, MEMORY[0x1E69E62F8]);
  sub_1D11E68E4();
  v1 = sub_1D138CEEC();
  v3 = v2;

  sub_1D13901BC();
  v4 = sub_1D139018C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0xD000000000000023;
    v7 = 0x80000001D13C2C40;
  }

  sub_1D1083DAC(v1, v3);

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t sub_1D11E3250()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D11E3360, v1, 0);
}

uint64_t sub_1D11E3514(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D11E35BC;

  return sub_1D11E2BA0();
}

uint64_t sub_1D11E35BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = sub_1D139012C();

  (v3)[2](v3, v5);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1D11E3724()
{
  v1[69] = v0;
  sub_1D11E640C(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D11E37F0, 0, 0);
}

uint64_t sub_1D11E37F0()
{
  v1 = v0[69];
  sub_1D11E70B8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0[72] = v2;
  v3 = swift_allocObject();
  v0[73] = v3;
  *(v3 + 16) = xmmword_1D139E810;
  v4 = swift_allocObject();
  v0[74] = v4;
  *(v4 + 16) = xmmword_1D139E6E0;
  v5 = *(v1 + OBJC_IVAR___HRInternalStateProvider_loadState);
  v0[75] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D11E38D4, v5, 0);
}

uint64_t sub_1D11E38D4()
{
  v1 = *(v0 + 600);
  *(v0 + 608) = *(v1 + 112);
  *(v0 + 648) = *(v1 + 120);
  return MEMORY[0x1EEE6DFA0](sub_1D11E3904, 0, 0);
}

uint64_t sub_1D11E3904()
{
  if (*(v0 + 648))
  {
    v1 = 0xEE0064656E696D72;
    v2 = 0x6574654420746F4ELL;
    goto LABEL_3;
  }

  v9 = *(v0 + 608);
  if (v9 > 1)
  {
    if (v9 != 3)
    {
      if (v9 == 2)
      {
        v1 = 0x80000001D13B99E0;
        v2 = 0xD000000000000013;
        goto LABEL_3;
      }

      goto LABEL_20;
    }

    v1 = 0xE900000000000067;
    v2 = 0x6E69747365676E49;
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v1 = 0xED0000676E697473;
        v2 = 0x65676E4920746F4ELL;
        goto LABEL_3;
      }

LABEL_20:
      v2 = 0x206E776F6E6B6E55;
      v1 = 0xEE002E6574617453;
      goto LABEL_3;
    }

    v1 = 0xED00006574617453;
    v2 = 0x206E776F6E6B6E55;
  }

LABEL_3:
  v3 = *(v0 + 592);
  v4 = *(v0 + 552);
  *(v0 + 616) = type metadata accessor for InternalStateItem();
  v5 = swift_allocObject();
  v5[2] = 0x6F69747365676E49;
  v5[3] = 0xEF6574617453206ELL;
  v5[4] = v2;
  v5[5] = v1;
  *(v3 + 32) = v5;
  v6 = [*(v4 + OBJC_IVAR___HRInternalStateProvider_conceptStore) currentConceptIndexerState];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0xE400000000000000;
      v8 = 1701602377;
    }

    else if (v6 == 2)
    {
      v7 = 0xE800000000000000;
      v8 = 0x676E697865646E49;
    }

    else
    {
      v8 = 0x206E776F6E6B6E55;
      v7 = 0xEE002E6574617453;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x6C616974696E49;
  }

  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v12 = swift_allocObject();
  v12[2] = 0x7453207865646E49;
  v12[3] = 0xEB00000000657461;
  v12[4] = v8;
  v12[5] = v7;
  *(v10 + 40) = v12;
  *(v0 + 624) = type metadata accessor for InternalStateSection();
  v13 = swift_allocObject();
  strcpy((v13 + 16), "System States");
  *(v13 + 30) = -4864;
  *(v13 + 32) = v10;
  *(v11 + 32) = v13;
  *(v0 + 536) = v11;
  v14 = swift_task_alloc();
  *(v0 + 632) = v14;
  *v14 = v0;
  v14[1] = sub_1D11E3BFC;

  return sub_1D11E12C0();
}

uint64_t sub_1D11E3BFC(uint64_t a1)
{
  *(*v1 + 640) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D11E3CFC, 0, 0);
}

uint64_t sub_1D11E3CFC()
{
  v86 = v0;
  v1 = *(v0 + 552);
  sub_1D1122370(*(v0 + 640));
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E6F0;
  v3 = v1;
  v4 = sub_1D10F4580(0xD000000000000012, 0x80000001D13C2BB0);

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E810;
  *(v5 + 32) = v4;
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000034;
  v6[3] = 0x80000001D13C2B70;
  v6[4] = v5;
  v76 = inited;
  *(inited + 32) = v6;
  v7 = _s15HealthRecordsUI19DisplayItemProviderC19supportedCategoriesShyAA0D8CategoryVGvgZ_0();
  v8 = v7;
  v9 = *(v7 + 2);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v10 = sub_1D129F7B8(*(v7 + 2), 0);
    v11 = sub_1D12A1754(&v85, v10 + 32, v9, v8);
    v12 = v85;

    result = sub_1D102CC30(v12);
    if (v11 != v9)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }
  }

  v84 = v10;
  sub_1D129D9EC(&v84);

  v14 = v84;
  v15 = *(v84 + 2);
  if (v15)
  {
    v16 = 0x206E776F6E6B6E55;
    v17 = *(v0 + 552);
    v84 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v18 = OBJC_IVAR___HRInternalStateProvider_healthExperienceStore;
    v19 = v15 - 1;
    v20 = v17;
    v21 = 32;
    v77 = OBJC_IVAR___HRInternalStateProvider_healthExperienceStore;
    while (1)
    {
      v80 = v21;
      v22 = *&v14[v21 + 16];
      v23 = *&v14[v21 + 32];
      v24 = *&v14[v21 + 48];
      *(v0 + 152) = *&v14[v21 + 64];
      *(v0 + 136) = v24;
      *(v0 + 120) = v23;
      *(v0 + 88) = *&v14[v21];
      *(v0 + 104) = v22;
      v25 = *(v0 + 128);
      v82 = *(v0 + 120);
      sub_1D1072E70(v20 + v18, v0 + 432);
      v26 = *(v0 + 456);
      v27 = *(v0 + 464);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 432), v26);
      LOBYTE(v85) = *(v0 + 88);
      sub_1D1082914(v0 + 88, v0 + 160);

      v28 = sub_1D10DD46C(&v85, v26, v27);
      v79 = v19;
      v29 = *(v0 + 568);
      v30 = sub_1D138D67C();
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      sub_1D10F48A8(0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D139E700;
      *(v31 + 56) = MEMORY[0x1E69E6530];
      *(v31 + 64) = MEMORY[0x1E69E65A8];
      *(v31 + 32) = v28;
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v32 = sub_1D138D1CC();
      v34 = v33;
      v35 = *(v0 + 568);
      if (*(v31 + 16))
      {
        v32 = sub_1D139019C();
        v36 = v20;
        v37 = v16;
        v38 = v14;
        v40 = v39;

        sub_1D11E6ED8(v35, &qword_1EC60DF40, MEMORY[0x1E6969770]);
        v34 = v40;
        v14 = v38;
        v16 = v37;
        v20 = v36;
        v18 = v77;
      }

      else
      {
        sub_1D11E6ED8(*(v0 + 568), &qword_1EC60DF40, MEMORY[0x1E6969770]);
      }

      v41 = swift_allocObject();
      v41[2] = v82;
      v41[3] = v25;
      v41[4] = v32;
      v41[5] = v34;
      sub_1D1080D98(v0 + 88);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      if (!v79)
      {
        break;
      }

      v19 = v79 - 1;
      v21 = v80 + 72;
    }

    v42 = v84;
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
  }

  v43 = swift_allocObject();
  v43[2] = 0xD00000000000001BLL;
  v43[3] = 0x80000001D13C2BD0;
  v43[4] = v42;
  *(v76 + 40) = v43;
  v44 = _s15HealthRecordsUI19DisplayItemProviderC19supportedCategoriesShyAA0D8CategoryVGvgZ_0();
  v45 = v44;
  v46 = *(v44 + 2);
  v47 = MEMORY[0x1E69E7CC0];
  if (v46)
  {
    v47 = sub_1D129F7B8(*(v44 + 2), 0);
    v48 = sub_1D12A1754(&v85, v47 + 32, v46, v45);
    v49 = v85;

    result = sub_1D102CC30(v49);
    if (v48 != v46)
    {
      goto LABEL_36;
    }
  }

  v84 = v47;
  sub_1D129D9EC(&v84);

  v78 = v84;
  v50 = *(v84 + 2);
  if (v50)
  {
    v51 = (v0 + 472);
    v52 = 0xED0000746E756F43;
    v83 = *(v0 + 552);
    v85 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v81 = OBJC_IVAR___HRInternalStateProvider_recordCounts;
    v53 = v78 + 64;
    while (1)
    {
      *(v0 + 16) = *(v53 - 2);
      v57 = *(v53 - 1);
      v58 = *v53;
      v59 = *(v53 + 1);
      *(v0 + 80) = *(v53 + 4);
      *(v0 + 48) = v58;
      *(v0 + 64) = v59;
      *(v0 + 32) = v57;
      *v51 = *v53;
      v60 = *(v83 + v81);
      if (*(v60 + 16))
      {
        sub_1D1082914(v0 + 16, v0 + 232);
        sub_1D1144324(v0 + 472, v0 + 504);

        v61 = sub_1D129DF64((v0 + 16));
        if (v62)
        {
          v63 = v52;
          v64 = *(v0 + 560);
          v65 = *(*(v60 + 56) + 8 * v61);

          v66 = sub_1D138D67C();
          (*(*(v66 - 8) + 56))(v64, 1, 1, v66);
          sub_1D10F48A8(0);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_1D139E700;
          *(v67 + 56) = MEMORY[0x1E69E6530];
          *(v67 + 64) = MEMORY[0x1E69E65A8];
          *(v67 + 32) = v65;
          if (qword_1EE06AD00 != -1)
          {
            swift_once();
          }

          v54 = sub_1D138D1CC();
          v55 = v68;
          v69 = *(v0 + 560);
          if (*(v67 + 16))
          {
            v54 = sub_1D139019C();
            v71 = v70;

            sub_1D11E6ED8(v69, &qword_1EC60DF40, MEMORY[0x1E6969770]);
            v55 = v71;
          }

          else
          {
            sub_1D11E6ED8(*(v0 + 560), &qword_1EC60DF40, MEMORY[0x1E6969770]);
          }

          v52 = v63;
          goto LABEL_20;
        }
      }

      else
      {
        sub_1D1082914(v0 + 16, v0 + 304);
        sub_1D1144324(v0 + 472, v0 + 520);
      }

      v54 = 0x206E776F6E6B6E55;
      v55 = v52;
LABEL_20:
      v56 = swift_allocObject();
      *(v56 + 16) = *v51;
      sub_1D1080D98(v0 + 16);
      *(v56 + 32) = v54;
      *(v56 + 40) = v55;
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v53 += 72;
      if (!--v50)
      {

        v72 = v85;
        goto LABEL_32;
      }
    }
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v73 = swift_allocObject();
  strcpy((v73 + 16), "Record Counts");
  *(v73 + 30) = -4864;
  *(v73 + 32) = v72;
  *(v76 + 48) = v73;
  sub_1D1122370(v76);
  v74 = *(v0 + 536);

  v75 = *(v0 + 8);

  return v75(v74);
}

void sub_1D11E4720(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1D138FEDC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    [*(a2 + OBJC_IVAR___HRInternalStateProvider_ingestionStore) addIngestionStateListener_];
    v9 = *(a2 + OBJC_IVAR___HRInternalStateProvider_conceptStore);
    sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
    (*(v5 + 104))(v8, *MEMORY[0x1E69E7F98], v4);
    v10 = sub_1D1390ACC();
    (*(v5 + 8))(v8, v4);
    [v9 registerAsConceptObserver:a2 onQueue:v10];
  }
}

id sub_1D11E488C(_BYTE *a1, uint64_t a2)
{
  [*(a2 + OBJC_IVAR___HRInternalStateProvider_ingestionStore) removeIngestionStateListener_];
  result = [*(a2 + OBJC_IVAR___HRInternalStateProvider_conceptStore) unregisterAsConceptObserver_];
  *a1 = 0;
  return result;
}

double sub_1D11E48EC()
{
  sub_1D11E640C(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v44 = v33 - v2;
  v45 = sub_1D1390A5C();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11E6530(0);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11E662C(0);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1390A6C();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v10);
  v33[1] = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE06BB58;
  v14 = [*&v0[OBJC_IVAR___HRInternalStateProvider_healthRecordsStore] healthStore];
  v37 = v0;
  v15 = v14;
  v16 = [v14 profileIdentifier];

  v48 = *(v13 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v17);
  v33[-2] = v13;
  v33[-1] = v16;
  sub_1D138D96C();
  type metadata accessor for CountProviderCollection();
  sub_1D11E6A9C(&qword_1EE06B048, MEMORY[0x1E69A3B50], MEMORY[0x1E69A3B48]);

  sub_1D138ED0C();

  v18 = v49;
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  sub_1D138FEEC();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1D11E6A9C(&qword_1EE06B770, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v19 = MEMORY[0x1E69E8030];
  sub_1D11E640C(0, &qword_1EE06B7A8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D11E6700(&qword_1EE06B7A0, &qword_1EE06B7A8, v19);
  sub_1D139103C();
  (*(v35 + 104))(v34, *MEMORY[0x1E69E8090], v36);
  v20 = sub_1D1390ABC();
  v49 = *(v18[3] + 32);
  sub_1D11E65C4(0);
  sub_1D11E6A9C(&qword_1EC60CF90, sub_1D11E65C4, MEMORY[0x1E695BFB0]);
  sub_1D11E6764();
  v21 = v38;
  sub_1D138F8FC();
  v22 = v41;
  sub_1D1390A4C();
  v49 = v20;
  v23 = sub_1D1390A2C();
  v24 = v44;
  (*(*(v23 - 8) + 56))(v44, 1, 1, v23);
  sub_1D11E6A9C(&unk_1EC60D168, sub_1D11E6530, MEMORY[0x1E695BD38]);
  sub_1D10EDC58();
  v25 = v43;
  v26 = v40;
  sub_1D138F8CC();
  sub_1D11E6ED8(v24, &qword_1EE06A620, MEMORY[0x1E69E8050]);
  (*(v42 + 8))(v22, v45);
  (*(v39 + 8))(v21, v26);
  v27 = swift_allocObject();
  v28 = v37;
  *(v27 + 16) = v37;
  sub_1D11E6A9C(&unk_1EC60D180, sub_1D11E662C, MEMORY[0x1E695BE50]);
  v29 = v28;
  v30 = v47;
  v31 = sub_1D138F90C();

  (*(v46 + 8))(v25, v30);
  *&v29[OBJC_IVAR___HRInternalStateProvider_sub] = v31;

  return result;
}

double sub_1D11E5110(uint64_t *a1, char *a2)
{
  sub_1D11E640C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  *&a2[OBJC_IVAR___HRInternalStateProvider_recordCounts] = *a1;

  v7 = *&a2[OBJC_IVAR___HRInternalStateProvider_changeHandler];
  if (v7)
  {
    v8 = *&a2[OBJC_IVAR___HRInternalStateProvider_changeHandler + 8];

    v7(a2);
    sub_1D102CC60(v7, v8);
  }

  v9 = sub_1D13905DC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v11 = a2;
  sub_1D107877C(0, 0, v6, &unk_1D13A80A8, v10);

  return result;
}

uint64_t sub_1D11E52B8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___HRInternalStateProvider_loadState);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D11E52E4, v1, 0);
}

uint64_t sub_1D11E52E4()
{
  *(*(v0 + 24) + 121) = 1;
  sub_1D11247E8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D11E53A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D11E53C0, 0, 0);
}

uint64_t sub_1D11E53C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___HRInternalStateProvider_loadState);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D11E53EC, v1, 0);
}

uint64_t sub_1D11E53EC()
{
  v1 = *(v0 + 32);
  *(v1 + 112) = *(v0 + 24);
  *(v1 + 120) = 0;
  sub_1D11247E8();

  return MEMORY[0x1EEE6DFA0](sub_1D11E545C, 0, 0);
}

uint64_t sub_1D11E545C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___HRInternalStateProvider_changeHandler);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR___HRInternalStateProvider_changeHandler + 8);

    v2(v1);
    sub_1D102CC60(v2, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D11E562C(uint64_t result)
{
  v1 = *(result + OBJC_IVAR___HRInternalStateProvider_changeHandler);
  if (v1)
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR___HRInternalStateProvider_changeHandler + 8);

    v1(v2);

    return sub_1D102CC60(v1, v3);
  }

  return result;
}

uint64_t sub_1D11E570C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D10819BC;

  return v6();
}

uint64_t sub_1D11E57F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D108077C;

  return v7();
}

uint64_t sub_1D11E58DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D11E640C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1D11E6E44(a3, v23 - v10);
  v12 = sub_1D13905DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D11E6ED8(v11, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D13905CC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1D139055C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1D139021C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1D11E6ED8(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0]);

    return v21;
  }

LABEL_8:
  sub_1D11E6ED8(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D11E5C10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D11E5D08;

  return v6(a1);
}

uint64_t sub_1D11E5D08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1D11E5E00()
{
  v0 = sub_1D138D68C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D138D76C();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138D67C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1D138D5FC();
  v12 = sub_1D138D62C();
  (*(v8 + 8))(v10, v7);
  [v11 setLocale_];

  v13 = sub_1D139012C();
  [v11 setDateFormat_];

  (*(v1 + 104))(v3, *MEMORY[0x1E6969868], v0);
  sub_1D138D69C();
  (*(v1 + 8))(v3, v0);
  v14 = sub_1D138D6DC();
  (*(v4 + 8))(v6, v17);
  [v11 setCalendar_];

  return v11;
}

uint64_t sub_1D11E60E8()
{
  v1 = sub_1D138FECC();
  v14 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D138FF0C();
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v7 = sub_1D1390A7C();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1D11E63EC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_34;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D11E6A9C(&qword_1EE06B7E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v11 = MEMORY[0x1E69E7F60];
  sub_1D11E640C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D11E6700(&qword_1EE06B7B0, &qword_1EE06B7C0, v11);
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v6, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v13);
}

double block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D11E640C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D11E6470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D108077C;

  return sub_1D11E53A0(a1, v4, v5, v7, v6);
}

void sub_1D11E6530(uint64_t a1)
{
  if (!qword_1EC60D158)
  {
    sub_1D11E65C4(255);
    sub_1D11E6A9C(&qword_1EC60CF90, sub_1D11E65C4, MEMORY[0x1E695BFB0]);
    v1 = sub_1D138F53C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60D158);
    }
  }
}

void sub_1D11E65C4(uint64_t a1)
{
  if (!qword_1EE06A740)
  {
    sub_1D11D4854(255);
    v1 = sub_1D138F6DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06A740);
    }
  }
}

void sub_1D11E662C(uint64_t a1)
{
  if (!qword_1EC60D160)
  {
    sub_1D11E6530(255);
    sub_1D106F934(255, &qword_1EE06B760, 0x1E69E9610);
    sub_1D11E6A9C(&unk_1EC60D168, sub_1D11E6530, MEMORY[0x1E695BD38]);
    sub_1D10EDC58();
    v1 = sub_1D138F5AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60D160);
    }
  }
}

uint64_t sub_1D11E6700(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D11E640C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D11E6764()
{
  result = qword_1EC60D178;
  if (!qword_1EC60D178)
  {
    sub_1D11D4854(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D178);
  }

  return result;
}

uint64_t objectdestroy_18Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D11E6828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D11E5298(a1, v4, v5, v6);
}

unint64_t sub_1D11E68E4()
{
  result = qword_1EC60D1A0;
  if (!qword_1EC60D1A0)
  {
    sub_1D11E640C(255, &qword_1EC60B0B8, type metadata accessor for InternalStateSection, MEMORY[0x1E69E62F8]);
    sub_1D11E6A9C(&qword_1EC60D1A8, type metadata accessor for InternalStateSection, &unk_1D13A11B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D1A0);
  }

  return result;
}

uint64_t sub_1D11E69EC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D10819BC;

  return sub_1D11E1A70(a1, a2, v6);
}

uint64_t sub_1D11E6A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D11E6AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D1080EA4(255, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    v4 = sub_1D139061C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D11E6B68()
{
  if (!qword_1EC60D1D0)
  {
    v0 = sub_1D139003C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D1D0);
    }
  }
}

uint64_t sub_1D11E6BCC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D10819BC;

  return sub_1D11E3514(v2, v3);
}

uint64_t sub_1D11E6C78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D10819BC;

  return sub_1D11E570C(v2, v3, v4);
}

uint64_t objectdestroy_48Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D11E6D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D11E57F4(a1, v4, v5, v6);
}

uint64_t sub_1D11E6E44(uint64_t a1, uint64_t a2)
{
  sub_1D11E640C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D11E6ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D11E640C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D11E6F48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D10819BC;

  return sub_1D11E5C10(a1, v4);
}

uint64_t sub_1D11E7000(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D108077C;

  return sub_1D11E5C10(a1, v4);
}

void sub_1D11E70B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1D11E7108(_BYTE *a1)
{
  v3 = *(v1 + 16);
  [*(v3 + OBJC_IVAR___HRInternalStateProvider_ingestionStore) removeIngestionStateListener_];
  result = [*(v3 + OBJC_IVAR___HRInternalStateProvider_conceptStore) unregisterAsConceptObserver_];
  *a1 = 0;
  return result;
}

uint64_t sub_1D11E7184()
{
  sub_1D139177C();
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D11E71EC(uint64_t a1)
{
  sub_1D139177C();
  sub_1D1390D9C();
  return sub_1D13917CC();
}

double sub_1D11E7280(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_item) = *a3;
  swift_retain_n();

  sub_1D11E8D78();

  return result;
}

uint64_t sub_1D11E72E8()
{
  v1 = v0;
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1D13911EC();
  v6 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData);
  v7 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData) UUID];
  sub_1D138D5CC();

  v8 = sub_1D138D59C();
  v10 = v9;
  (*(v3 + 8))(v5, v2);

  v18 = v8;
  v19 = v10;
  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  MEMORY[0x1D3885C10](v6[2], v6[3]);
  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  v11 = v6[5];
  if (v11)
  {
    v12 = v6[4];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v6[5];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1D3885C10](v12, v13);

  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  MEMORY[0x1D3885C10](v6[7], v6[8]);
  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  v14 = v6[10];
  if (v14)
  {
    v15 = v6[9];
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v6[10];
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  MEMORY[0x1D3885C10](v15, v16);

  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  MEMORY[0x1D3885C10](*(v1 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_reuseIdentifier), *(v1 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_reuseIdentifier + 8));
  return v18;
}

uint64_t sub_1D11E74E0()
{
  sub_1D116DEF0(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_cellResolution);
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData);
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1D11E75EC(uint64_t a1)
{
  result = sub_1D138DC8C();
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

uint64_t sub_1D11E76CC()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D139177C();
  v6 = [*(v5 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData) UUID];
  sub_1D138D5CC();

  sub_1D11E9D5C(&qword_1EE06B4F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D139007C();
  (*(v2 + 8))(v4, v1);
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D11E7830(uint64_t a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*v1 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData) UUID];
  sub_1D138D5CC();

  sub_1D11E9D5C(&qword_1EE06B4F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D139007C();
  (*(v3 + 8))(v6, v2);
  return sub_1D139027C();
}

uint64_t sub_1D11E7980(uint64_t a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D139177C();
  v6 = [*(*v1 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData) UUID];
  sub_1D138D5CC();

  sub_1D11E9D5C(&qword_1EE06B4F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D139007C();
  (*(v3 + 8))(v5, v2);

  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D11E7B00(void *a1, void *a2)
{
  v2 = *a1 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData;
  v3 = *v2;
  v4 = *(v2 + 48);
  v5 = *a2 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData;
  v12 = *v5;
  v13 = *(v5 + 48);
  sub_1D106F934(0, &qword_1EE06B0C0, 0x1E69E58C0);

  v6 = v3;

  v7 = v4;

  v8 = v12;

  v9 = v13;

  v10 = sub_1D1390D8C();

  return v10 & 1;
}

id sub_1D11E7CB4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  v2 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v0 setFont_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_1D11E7DA0(SEL *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = [objc_opt_self() *a1];
  [v4 setTextColor_];

  v6 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v4 setFont_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setNumberOfLines_];
  return v4;
}

id sub_1D11E7EA0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_titleLabel;
  *&v4[v9] = sub_1D11E7CB4();
  v10 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_subtitleLabel;
  *&v4[v10] = sub_1D11E7DA0(&selRef_secondaryLabelColor, 0);
  v11 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueTitleLabel;
  *&v4[v11] = sub_1D11E7DA0(&selRef_secondaryLabelColor, 0);
  v12 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueLabel;
  *&v4[v12] = sub_1D11E7DA0(&selRef_labelColor, 2);
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_item] = 0;
  v13 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_sectionContext;
  v14 = sub_1D138DF1C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for MedicalRecordTimelineChartValueItemCell(0);
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D11E81B4();

  return v15;
}

id sub_1D11E800C(void *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_titleLabel;
  *&v1[v3] = sub_1D11E7CB4();
  v4 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_subtitleLabel;
  *&v1[v4] = sub_1D11E7DA0(&selRef_secondaryLabelColor, 0);
  v5 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueTitleLabel;
  *&v1[v5] = sub_1D11E7DA0(&selRef_secondaryLabelColor, 0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueLabel;
  *&v1[v6] = sub_1D11E7DA0(&selRef_labelColor, 2);
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_item] = 0;
  v7 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_sectionContext;
  v8 = sub_1D138DF1C();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for MedicalRecordTimelineChartValueItemCell(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_1D11E81B4()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1D11EA370(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v26 - v3;
  v4 = sub_1D138F15C();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D138F0FC();
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11EA370(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], v1);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v27 = sub_1D138F20C();
  v13 = *(v27 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v27).n128_u64[0];
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v0 contentView];
  [v17 addSubview_];

  v18 = [v0 contentView];
  [v18 addSubview_];

  v19 = [v0 contentView];
  [v19 addSubview_];

  v20 = [v0 contentView];
  [v20 addSubview_];

  sub_1D138D84C();
  sub_1D1390C8C();
  sub_1D11E8728();
  v21 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4(v16);
  v22 = sub_1D138F27C();
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
  MEMORY[0x1D38864A0](v12);
  (*(v13 + 8))(v16, v27);
  sub_1D11EA370(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1D138F17C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  v23 = v28;
  (*(v7 + 104))(v9, *MEMORY[0x1E69DBF28], v28);
  v24 = sub_1D138F10C();
  (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
  sub_1D138F14C();
  sub_1D138F11C();
  (*(v30 + 8))(v6, v31);
  (*(v7 + 8))(v9, v23);
  return sub_1D1390B8C();
}

void sub_1D11E8728()
{
  sub_1D106F424();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D13A6B80;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_titleLabel];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 &selRef_hrui_insurance + 1];

  v6 = [v3 constraintEqualToAnchor:v5 constant:14.0];
  *(v1 + 32) = v6;
  v7 = [v2 trailingAnchor];
  v8 = [v0 &selRef_batches];
  v9 = [v8 trailingAnchor];

  v10 = [v7 &selRef:v9 deactivateConstraints:-16.0 + 6];
  *(v1 + 40) = v10;
  v11 = [v2 topAnchor];
  v12 = [v0 &selRef_batches];
  v13 = [v12 &selRef_setTitle_forState_];

  v14 = [v11 &selRef:v13 deactivateConstraints:16.0 + 6];
  *(v1 + 48) = v14;
  v15 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_subtitleLabel];
  v16 = [v15 &selRef_hrui_insurance + 1];
  v17 = [v2 &selRef_hrui_insurance + 1];
  v18 = [v16 constraintEqualToAnchor_];

  *(v1 + 56) = v18;
  v19 = [v15 trailingAnchor];
  v20 = [v2 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v1 + 64) = v21;
  v22 = [v15 &selRef_setTitle_forState_];
  v23 = [v2 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v1 + 72) = v24;
  v25 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueTitleLabel];
  v26 = [v25 &selRef_hrui_insurance + 1];
  v27 = [v2 &selRef_hrui_insurance + 1];
  v28 = [v26 constraintEqualToAnchor_];

  *(v1 + 80) = v28;
  v29 = [v25 trailingAnchor];
  v30 = [v2 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v1 + 88) = v31;
  v32 = [v25 topAnchor];
  v33 = [v15 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:7.0];

  *(v1 + 96) = v34;
  v35 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueLabel];
  v36 = [v35 &selRef_hrui_insurance + 1];
  v37 = [v2 &selRef_hrui_insurance + 1];
  v38 = [v36 constraintEqualToAnchor_];

  *(v1 + 104) = v38;
  v39 = [v35 trailingAnchor];
  v40 = [v2 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v1 + 112) = v41;
  v42 = [v35 topAnchor];
  v43 = [v25 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v1 + 120) = v44;
  v45 = [v35 bottomAnchor];
  v46 = [v0 contentView];
  v47 = [v46 bottomAnchor];

  v48 = [v45 constraintEqualToAnchor:v47 constant:-16.0];
  *(v1 + 128) = v48;
  v49 = objc_opt_self();
  sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);
  v50 = sub_1D139044C();

  [v49 activateConstraints_];
}

void sub_1D11E8D78()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_item);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_titleLabel);
    v3 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData);

    v4 = sub_1D139012C();

    [v2 setText_];

    v5 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_subtitleLabel);
    if (v3[6])
    {
      [v5 setAttributedText_];
    }

    else
    {
      if (v3[5])
      {
        v6 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_subtitleLabel);

        v7 = sub_1D139012C();

        v5 = v6;
      }

      else
      {
        v7 = 0;
      }

      [v5 setText_];
    }

    v8 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueTitleLabel);

    v9 = sub_1D139012C();

    [v8 setText_];

    v10 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueLabel);
    if (v3[10])
    {

      v11 = sub_1D139012C();
    }

    else
    {
      v11 = 0;
    }

    [v10 setText_];
  }
}

uint64_t sub_1D11E9048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D82C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11EA370(0, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1D138DF1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_sectionContext;
  swift_beginAccess();
  sub_1D10DCAC4(a1, v2 + v15);
  swift_endAccess();
  sub_1D118C460(v2 + v15, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D10DCA4C(a1);
    return sub_1D10DCA4C(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1D138DF0C();
    sub_1D11E95D4();
    sub_1D10DCA4C(a1);
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }
}

void (*sub_1D11E92DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1D138D82C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  sub_1D11EA370(0, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v5[7] = v11;
  v12 = sub_1D138DF1C();
  v5[8] = v12;
  v13 = *(v12 - 8);
  v5[9] = v13;
  if (v3)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_sectionContext;
  v5[10] = v14;
  v5[11] = v15;
  swift_beginAccess();
  return sub_1D11E9494;
}

void sub_1D11E9494(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);
    v6 = *(v3 + 56);
    sub_1D118C460(*(v3 + 24) + *(v3 + 88), v6);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_1D10DCA4C(*(v3 + 56));
    }

    else
    {
      v8 = *(v3 + 72);
      v7 = *(v3 + 80);
      v9 = *(v3 + 64);
      v11 = *(v3 + 40);
      v10 = *(v3 + 48);
      v12 = *(v3 + 32);
      (*(v8 + 32))(v7, *(v3 + 56), v9);
      sub_1D138DF0C();
      sub_1D11E95D4();
      (*(v11 + 8))(v10, v12);
      (*(v8 + 8))(v7, v9);
    }
  }

  v14 = *(v3 + 48);
  v13 = *(v3 + 56);
  free(*(v3 + 80));
  free(v13);
  free(v14);

  free(v3);
}

void sub_1D11E95D4()
{
  v1 = v0;
  sub_1D13911EC();
  sub_1D139016C();

  MEMORY[0x1D3885C10](0xD000000000000011, 0x80000001D13C02A0);
  sub_1D138D81C();
  v2 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v2);

  MEMORY[0x1D3885C10](0x2E6D6574492ELL, 0xE600000000000000);
  sub_1D138D80C();
  v3 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v3);

  v4 = sub_1D139012C();
  [v1 setAccessibilityIdentifier_];

  v5 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_titleLabel];

  MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);
  v6 = sub_1D139012C();

  [v5 setAccessibilityIdentifier_];

  v7 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_subtitleLabel];

  MEMORY[0x1D3885C10](0x6C7469746275532ELL, 0xE900000000000065);
  v8 = sub_1D139012C();

  [v7 setAccessibilityIdentifier_];

  v9 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueTitleLabel];

  MEMORY[0x1D3885C10](0x695465756C61562ELL, 0xEB00000000656C74);
  v10 = sub_1D139012C();

  [v9 setAccessibilityIdentifier_];

  v11 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_valueLabel];

  MEMORY[0x1D3885C10](0x65756C61562ELL, 0xE600000000000000);

  v12 = sub_1D139012C();

  [v11 setAccessibilityIdentifier_];
}

id sub_1D11E98B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineChartValueItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D11E99A0(uint64_t a1)
{
  sub_1D11EA370(319, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D11E9A9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D11E9AE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D11E9B50()
{
  result = qword_1EC60D238;
  if (!qword_1EC60D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D238);
  }

  return result;
}

unint64_t sub_1D11E9BA4(uint64_t a1)
{
  result = sub_1D11E9BCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D11E9BCC()
{
  result = qword_1EC60D240;
  if (!qword_1EC60D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D240);
  }

  return result;
}

uint64_t sub_1D11E9C48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_sectionContext;
  swift_beginAccess();
  return sub_1D118C460(v1 + v3, a1);
}

void (*sub_1D11E9CA4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1D11E92DC(v2);
  return sub_1D10B0564;
}

uint64_t sub_1D11E9D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D11E9DA4(void *a1)
{
  v3 = sub_1D138FF3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineChartValueItemCell_item);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData);
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v40 = a1;
      v37 = v4;
      v38 = v3;
      v11 = qword_1EE06AF70;
      v39 = v8;

      if (v11 != -1)
      {
        v12 = swift_once();
      }

      v47 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
      MEMORY[0x1EEE9AC00](v12);
      *(&v36 - 2) = v13;
      sub_1D138D96C();
      sub_1D106F934(0, &qword_1EE06B6B0, off_1E83DAC90);
      sub_1D11E9D5C(&qword_1EE06B048, MEMORY[0x1E69A3B50], MEMORY[0x1E69A3B48]);

      sub_1D138ED0C();

      v14 = aBlock;
      if (qword_1EE069ED0 != -1)
      {
        swift_once();
      }

      sub_1D1299750(v10, v40, v14);
      HKMedicalRecord.categoryKind.getter(&aBlock);
      v15 = aBlock;
      v16 = [v10 primaryConcept];
      v17 = [v16 groupByConcept];

      if (qword_1EE06A170 != -1)
      {
        swift_once();
      }

      v18 = qword_1EE06AEB8;
      v19 = [v17 identifier];
      if (v19)
      {
        v20 = v19;
        v21 = *&v18[OBJC_IVAR___CHRAnalyticsManager_conceptStore];
        v22 = swift_allocObject();
        *(v22 + 16) = v18;
        *(v22 + 24) = xmmword_1D13A5FF0;
        *(v22 + 40) = 0;
        *(v22 + 48) = v15;
        v45 = sub_1D1080D88;
        v46 = v22;
        aBlock = MEMORY[0x1E69E9820];
        v42 = 1107296256;
        v43 = sub_1D1226920;
        v44 = &block_descriptor_21_2;
        v23 = _Block_copy(&aBlock);
        v24 = v20;
        v25 = v18;

        [v21 fetchConceptForIdentifier:v24 loadRelationships:0 completionHandler:v23];

        _Block_release(v23);
        return;
      }

      v26 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
      v27 = *&v18[OBJC_IVAR___CHRAnalyticsManager_managerQueue];
      *v6 = v27;
      v29 = v37;
      v28 = v38;
      (*(v37 + 104))(v6, *MEMORY[0x1E69E8018], v38);
      v30 = v27;
      LOBYTE(v27) = sub_1D138FF5C();
      (*(v29 + 8))(v6, v28);
      if (v27)
      {
        v31 = *&v18[v26];
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1D13A5FF0;
        *(v32 + 32) = 0;
        *(v32 + 40) = v15;
        *(v32 + 48) = 0;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_1D1080D6C;
        *(v33 + 24) = v32;
        v45 = sub_1D1080D80;
        v46 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v42 = 1107296256;
        v43 = sub_1D10DD3BC;
        v44 = &block_descriptor_35;
        v34 = _Block_copy(&aBlock);

        dispatch_sync(v31, v34);

        _Block_release(v34);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
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