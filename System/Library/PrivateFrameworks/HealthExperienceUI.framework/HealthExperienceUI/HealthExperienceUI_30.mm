void sub_1BA22E724(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v10 = type metadata accessor for PromptTileViewModel(0);
  sub_1BA232990(&qword_1EDC67D08, type metadata accessor for PromptTileViewModel, &protocol conformance descriptor for PromptTileViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v11 = v2;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v31 = v15;
      *v14 = 136315394;
      v30 = v10;
      sub_1B9F2D04C(0, &qword_1EBBEEC90, type metadata accessor for PromptTileViewModel);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v31);
      v28 = a2;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v2;
      v21 = v2;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v31);

      *(v14 + 14) = v24;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to decode data for %s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v25 = v16;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v29);
    sub_1B9F21374();
    swift_allocError();
    *v26 = v2 | 0x4000000000000000;
    swift_willThrow();
    sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

void sub_1BA22EA64(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v10 = type metadata accessor for StandardCategoryTileViewModel(0);
  sub_1BA232990(&qword_1EDC6C088, type metadata accessor for StandardCategoryTileViewModel, &protocol conformance descriptor for StandardCategoryTileViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v11 = v2;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v31 = v15;
      *v14 = 136315394;
      v30 = v10;
      sub_1B9F2D04C(0, &qword_1EBBEEC98, type metadata accessor for StandardCategoryTileViewModel);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v31);
      v28 = a2;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v2;
      v21 = v2;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v31);

      *(v14 + 14) = v24;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to decode data for %s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v25 = v16;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v29);
    sub_1B9F21374();
    swift_allocError();
    *v26 = v2 | 0x4000000000000000;
    swift_willThrow();
    sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

void sub_1BA22EDA4(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA232C40();
  sub_1BA4A0E98();
  if (v3)
  {
    v33 = v7;

    sub_1BA4A3E28();
    v12 = v3;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = a1;
      v17 = v16;
      *&v34[0] = v16;
      *v15 = 136315394;
      v35 = &type metadata for HKTypeGroupCategoryTileViewModel;
      sub_1BA232C94();
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, v34);
      v32 = a2;
      v21 = v20;

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v35 = v3;
      v22 = v3;
      sub_1B9FED358();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, v34);

      *(v15 + 14) = v25;
      a2 = v32;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Failed to decode data for %s with error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      v26 = v17;
      a1 = v31;
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v8 + 8))(v11, v33);
    sub_1B9F21374();
    swift_allocError();
    *v27 = v3 | 0x4000000000000000;
    swift_willThrow();
    sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);

    v28 = v34[1];
    *a3 = v34[0];
    a3[1] = v28;
    v29 = v34[3];
    a3[2] = v34[2];
    a3[3] = v29;
  }
}

void sub_1BA22F0A4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v10 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0);
  sub_1BA232990(&qword_1EBBEECA8, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, &protocol conformance descriptor for FeatureInactiveWithNoDataTileView.ViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v11 = v2;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v31 = v15;
      *v14 = 136315394;
      v30 = v10;
      sub_1B9F2D04C(0, &qword_1EBBEECB0, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v31);
      v28 = a2;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v2;
      v21 = v2;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v31);

      *(v14 + 14) = v24;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to decode data for %s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v25 = v16;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v29);
    sub_1B9F21374();
    swift_allocError();
    *v26 = v2 | 0x4000000000000000;
    swift_willThrow();
    sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

void sub_1BA22F3E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v10 = type metadata accessor for AccountSidebarContentConfigurationModel(0);
  sub_1BA232990(&qword_1EBBEECB8, type metadata accessor for AccountSidebarContentConfigurationModel, &protocol conformance descriptor for AccountSidebarContentConfigurationModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v11 = v2;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v31 = v15;
      *v14 = 136315394;
      v30 = v10;
      sub_1B9F2D04C(0, &qword_1EBBEECC0, type metadata accessor for AccountSidebarContentConfigurationModel);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v31);
      v28 = a2;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v2;
      v21 = v2;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v31);

      *(v14 + 14) = v24;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to decode data for %s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v25 = v16;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v29);
    sub_1B9F21374();
    swift_allocError();
    *v26 = v2 | 0x4000000000000000;
    swift_willThrow();
    sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

void sub_1BA22F724()
{
  v1 = v0;
  v44 = sub_1BA4A3EA8();
  v2 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 72);
  if (v16 >> 60 == 15)
  {
    sub_1BA4A3E28();

    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46 = v21;
      *v20 = 136315650;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, &v46);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1B9F0B82C(0x63656C6553646964, 0xEB00000000292874, &v46);
      *(v20 + 22) = 2080;
      v25 = *(v1 + 72);
      v45[0] = *(v1 + 64);
      v45[1] = v25;
      sub_1B9F6AD84(v45[0], v25);
      sub_1B9F85D98(0, &unk_1EDC6E268, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v46);

      *(v20 + 24) = v28;
      _os_log_impl(&dword_1B9F07000, v18, v19, "%s %s Could not access action handler user data: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v2 + 8))(v5, v44);
  }

  else
  {
    v43 = v13;
    v17 = *(v1 + 64);
    sub_1B9F6AD84(v17, v16);
    sub_1B9F206D4(v17, v16);
    sub_1BA22DDAC(v17, v16, v45);
    v29 = [objc_opt_self() displayTypeWithIdentifier_];
    if (v29)
    {
      v30 = v29;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA4A4F28();

      v31 = v45[0];
      v32 = [objc_opt_self() sharedInstanceForHealthStore_];
      sub_1BA4A1718();
      v33 = sub_1BA4A16B8();
      (*(v11 + 8))(v15, v43);
      v34 = [v30 wd:v31 addDataViewControllerWithHealthStore:v32 healthToolBox:v33 initialStartDate:?];

      v35 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      [*(v1 + 88) presentViewController:v35 animated:1 completion:0];
      sub_1B9F6AC8C(v17, v16);
    }

    else
    {
      sub_1BA4A3E28();
      v36 = sub_1BA4A3E88();
      v37 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45[0] = v39;
        *v38 = 136315394;
        v40 = sub_1BA4A85D8();
        v42 = sub_1B9F0B82C(v40, v41, v45);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_1B9F0B82C(0x63656C6553646964, 0xEB00000000292874, v45);
        _os_log_impl(&dword_1B9F07000, v36, v37, "%s %s Could not access display type", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v39, -1, -1);
        MEMORY[0x1BFAF43A0](v38, -1, -1);

        sub_1B9F6AC8C(v17, v16);
      }

      else
      {
        sub_1B9F6AC8C(v17, v16);
      }

      (*(v2 + 8))(v9, v44);
    }
  }
}

id StandardDataLoggingActionHandler.UserData.displayType.getter()
{
  result = [objc_opt_self() displayTypeWithIdentifier_];
  if (!result)
  {
    sub_1BA231AD4();
    swift_allocError();
    swift_willThrow();
    return 0;
  }

  return result;
}

void StandardDataLoggingActionHandler.UserData.init(displayType:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 displayTypeIdentifier];

  *a2 = v4;
}

void sub_1BA22FE14(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001BA4F5C10 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1BA22FEA8(uint64_t a1)
{
  v2 = sub_1BA231B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA22FEE4(uint64_t a1)
{
  v2 = sub_1BA231B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StandardDataLoggingActionHandler.UserData.encode(to:)(void *a1)
{
  sub_1BA231B7C(0, &qword_1EBBEEAE0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA231B28();
  sub_1BA4A8548();
  sub_1BA4A8278();
  return (*(v4 + 8))(v7, v3);
}

uint64_t StandardDataLoggingActionHandler.UserData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA231B7C(0, &qword_1EBBEEAF0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA231B28();
  sub_1BA4A8528();
  if (!v2)
  {
    v11 = sub_1BA4A81B8();
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BA230200(void *a1)
{
  sub_1BA231B7C(0, &qword_1EBBEEAE0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA231B28();
  sub_1BA4A8548();
  sub_1BA4A8278();
  return (*(v4 + 8))(v7, v3);
}

__n128 StandardDataLoggingActionHandler.__allocating_init(content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = result;
  return result;
}

_OWORD *StandardDataLoggingActionHandler.init(content:)(_OWORD *a1)
{
  v2 = a1[3];
  v1[3] = a1[2];
  v1[4] = v2;
  v1[5] = a1[4];
  v3 = a1[1];
  v1[1] = *a1;
  v1[2] = v3;
  return v1;
}

uint64_t StandardDataLoggingActionHandler.__deallocating_deinit()
{
  sub_1BA00D7E8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t HostedDataLoggingQuickActionView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1BA232268(0, &qword_1EBBEEAF8, type metadata accessor for DataLoggingPluginViewModel, type metadata accessor for ViewModelState);
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  v9 = *(v8 + 28);
  v11 = type metadata accessor for HostedDataLoggingQuickActionView(0, a2, a3, v10);
  sub_1BA231BF8(a1 + v9, a4 + *(v11 + 36), type metadata accessor for DataLoggingPluginViewModel);
  return sub_1BA232DE8(a1, &qword_1EBBEEAF8, type metadata accessor for DataLoggingPluginViewModel, type metadata accessor for ViewModelState);
}

uint64_t HostedDataLoggingQuickActionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA231BF8(v2 + *(a1 + 36), a2, type metadata accessor for DataLoggingPluginViewModel);
  v4 = a2 + *(type metadata accessor for DataLoggingQuickActionView(0) + 20);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

void (*sub_1BA2305EC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = HostedDataLoggingQuickActionView.actionHandlerContent.modify();
  return sub_1B9FCDD98;
}

uint64_t sub_1BA230660()
{
  v1 = sub_1BA4A5398();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA232F38();
  v7 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v28 - v13;
  v15 = sub_1BA4A2BF8();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, v0, v15, v18);
  v21 = (*(v16 + 88))(v20, v15);
  if (v21 == *MEMORY[0x1E69A3280])
  {
    goto LABEL_2;
  }

  if (v21 == *MEMORY[0x1E69A3288])
  {
    v28[1] = v0;
    (*(v16 + 96))(v20, v15);
    v30 = sub_1BA4A6128();
    sub_1BA4A5388();
    sub_1BA4A5F28();
    (*(v2 + 8))(v5, v1);

    v23 = v29;
    (*(v29 + 16))(v10, v14, v7);
    if (swift_dynamicCast())
    {
      v24 = v30;
    }

    else
    {
      v24 = sub_1BA4A2BE8();
    }

    sub_1B9F2C258(0);
    v27 = *(v26 + 48);
    (*(v23 + 8))(v14, v7);
    sub_1BA232E44(&v20[v27], sub_1BA232FB8);
    return v24;
  }

  else
  {
    if (v21 == *MEMORY[0x1E69A3290])
    {
LABEL_2:
      (*(v16 + 8))(v20, v15);
      return sub_1BA4A2BE8();
    }

    v25 = sub_1BA4A2BE8();
    (*(v16 + 8))(v20, v15);
    return v25;
  }
}

id sub_1BA2309FC()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for DataLoggingQuickActionView(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {

    return v7;
  }

  else
  {
    v11[0] = *v6;

    sub_1BA4A6FB8();
    v9 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    v10 = sub_1BA232F2C(v11[0], 0);
    (*(v2 + 8))(v5, v1, v10);
    return v11[1];
  }
}

void DataLoggingQuickActionView.body.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA231CAC(0);
  sub_1BA230C48(v2, a1 + *(v4 + 44));
  v5 = sub_1BA4A5BD8();
  sub_1BA4A5188();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BA23242C(0, &qword_1EBBEEBA0, sub_1BA232498, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v15 = a1 + *(v14 + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
}

uint64_t sub_1BA230C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA231DBC(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v28 - v11);
  *v12 = sub_1BA4A63C8();
  v12[1] = v13;
  sub_1BA232CDC(0);
  sub_1BA2314C8(v12 + *(v14 + 44));
  sub_1BA4A63C8();
  sub_1BA4A5278();
  v15 = (v12 + *(v5 + 44));
  v16 = v32;
  *v15 = v31;
  v15[1] = v16;
  v15[2] = v33;
  v17 = sub_1BA4A5878();
  v30 = 1;
  sub_1BA230FE0(&v46, a1);
  v38 = *&v47[48];
  v39 = *&v47[64];
  v40 = *&v47[80];
  v41 = *&v47[96];
  v34 = v46;
  v35 = *v47;
  v36 = *&v47[16];
  v37 = *&v47[32];
  v42[0] = v46;
  v42[1] = *v47;
  v42[2] = *&v47[16];
  v42[3] = *&v47[32];
  v42[4] = *&v47[48];
  v42[5] = *&v47[64];
  v42[6] = *&v47[80];
  v43 = *&v47[96];
  v18 = MEMORY[0x1E6981F40];
  sub_1BA232D74(&v34, &v44, &qword_1EBBEEB68, sub_1BA2322CC, MEMORY[0x1E6981F40], sub_1BA232268);
  sub_1BA232DE8(v42, &qword_1EBBEEB68, sub_1BA2322CC, v18);
  *(&v29[4] + 7) = v38;
  *(&v29[5] + 7) = v39;
  *(&v29[6] + 7) = v40;
  *(v29 + 7) = v34;
  *(&v29[1] + 7) = v35;
  *(&v29[2] + 7) = v36;
  *(&v29[7] + 7) = v41;
  *(&v29[3] + 7) = v37;
  v19 = v30;
  sub_1BA231BF8(v12, v8, sub_1BA231DBC);
  sub_1BA231BF8(v8, a2, sub_1BA231DBC);
  sub_1BA231D44(0);
  v21 = (a2 + *(v20 + 48));
  v44 = v17;
  LOBYTE(v45[0]) = v19;
  *(&v45[1] + 1) = v29[1];
  *(v45 + 1) = v29[0];
  *(&v45[4] + 1) = v29[4];
  *(&v45[5] + 1) = v29[5];
  *(&v45[6] + 1) = v29[6];
  v45[7] = *(&v29[6] + 15);
  *(&v45[2] + 1) = v29[2];
  *(&v45[3] + 1) = v29[3];
  v22 = v45[2];
  v21[2] = v45[1];
  v21[3] = v22;
  v23 = v45[0];
  *v21 = v44;
  v21[1] = v23;
  v24 = v45[7];
  v21[7] = v45[6];
  v21[8] = v24;
  v25 = v45[5];
  v21[5] = v45[4];
  v21[6] = v25;
  v21[4] = v45[3];
  v26 = a2 + *(v20 + 64);
  *v26 = 0;
  *(v26 + 8) = 0;
  sub_1BA231BF8(&v44, &v46, sub_1BA2321B4);
  sub_1BA232E44(v12, sub_1BA231DBC);
  *&v47[65] = v29[4];
  *&v47[81] = v29[5];
  *&v47[97] = v29[6];
  *&v47[112] = *(&v29[6] + 15);
  *&v47[1] = v29[0];
  *&v47[17] = v29[1];
  *&v47[33] = v29[2];
  v46 = v17;
  v47[0] = v19;
  *&v47[49] = v29[3];
  sub_1BA232E44(&v46, sub_1BA2321B4);
  return sub_1BA232E44(v8, sub_1BA231DBC);
}

uint64_t sub_1BA230FE0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1BA231240(a2, &v36);
  sub_1B9FD88E4();
  if (v3)
  {
    *(&v28 + 1) = v3;
    sub_1B9F252FC();
    v4 = sub_1BA4A5E18();
    v6 = v5;
    v8 = v7;
    sub_1BA4A5D28();
    v9 = sub_1BA4A5DE8();
    v11 = v10;
    v13 = v12;

    sub_1BA102AF4(v4, v6, v8 & 1);

    *&v28 = sub_1BA4A6088();
    v14 = sub_1BA4A5DC8();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_1BA102AF4(v9, v11, v13 & 1);

    v21 = v18 & 1;
    sub_1BA1465C0(v14, v16, v18 & 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v21 = 0;
    v20 = 0;
  }

  v26[2] = v38;
  v26[3] = v39;
  v26[4] = v40;
  v27 = v41;
  v26[0] = v36;
  v26[1] = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  LOWORD(v33) = v41;
  v28 = v36;
  v29 = v37;
  sub_1BA231BF8(v26, v34, sub_1BA232360);
  sub_1BA232EA4(v14, v16, v21, v20);
  sub_1BA232EE8(v14, v16, v21, v20);
  v22 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v22;
  *(a1 + 64) = v32;
  v23 = v33;
  v24 = v29;
  *a1 = v28;
  *(a1 + 16) = v24;
  *(a1 + 80) = v23;
  *(a1 + 88) = v14;
  *(a1 + 96) = v16;
  *(a1 + 104) = v21;
  *(a1 + 112) = v20;
  sub_1BA232EE8(v14, v16, v21, v20);
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v35 = v41;
  v34[0] = v36;
  v34[1] = v37;
  return sub_1BA232E44(v34, sub_1BA232360);
}

uint64_t sub_1BA231240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A2C58();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v7 = *(a1 + 24);
  v39 = *(a1 + 16);
  v40 = v7;
  sub_1B9F252FC();

  v8 = sub_1BA4A5E18();
  v10 = v9;
  v12 = v11;
  sub_1BA4A5D28();
  v13 = sub_1BA4A5DE8();
  v15 = v14;
  v17 = v16;

  sub_1BA102AF4(v8, v10, v12 & 1);

  v18 = sub_1BA4A5DD8();
  v20 = v19;
  v22 = v21;
  sub_1BA102AF4(v13, v15, v17 & 1);

  type metadata accessor for DataLoggingPluginViewModel(0);
  sub_1BA2309FC();
  v23 = v35;
  sub_1BA4A2C48();
  v24 = sub_1BA4A2B78();
  (*(v37 + 8))(v23, v38);
  v39 = v24;
  v25 = sub_1BA4A5DC8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1BA102AF4(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v25;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0x3FF0000000000000;
  *(a2 + 80) = 256;
  return result;
}

uint64_t sub_1BA2314C8@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v52 = sub_1BA4A6138();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v1);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A2C58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA231F1C(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v51 - v15);
  type metadata accessor for DataLoggingPluginViewModel(0);
  sub_1BA2309FC();
  sub_1BA4A2C48();
  v17 = sub_1BA4A2B78();
  (*(v5 + 8))(v8, v4);
  v18 = v16 + *(v10 + 44);
  v19 = *(sub_1BA4A5438() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1BA4A5818();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #7.0 }

  *v18 = _Q0;
  sub_1B9F80620(0);
  *&v18[*(v27 + 36)] = 256;
  *v16 = v17;
  v28 = v16;
  sub_1BA230660();
  v29 = v51;
  v30 = v52;
  (*(v51 + 104))(v3, *MEMORY[0x1E6981630], v52);
  v31 = sub_1BA4A6198();

  (*(v29 + 8))(v3, v30);
  LOBYTE(v30) = sub_1BA4A5B78();
  sub_1BA4A5188();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  LOBYTE(v64[0]) = 1;
  LOBYTE(v59[0]) = 0;
  v40 = [objc_opt_self() systemBackgroundColor];
  v41 = sub_1BA4A6048();
  v42 = v53;
  sub_1BA231BF8(v28, v53, sub_1BA231F1C);
  v43 = v54;
  sub_1BA231BF8(v42, v54, sub_1BA231F1C);
  sub_1BA231EAC(0, v44);
  v46 = (v43 + *(v45 + 48));
  v59[0] = v31;
  v59[1] = 0;
  LOWORD(v60) = 1;
  *(&v60 + 2) = v56;
  WORD3(v60) = v57;
  BYTE8(v60) = v30;
  *(&v60 + 9) = *v55;
  HIDWORD(v60) = *&v55[3];
  *&v61 = v33;
  *(&v61 + 1) = v35;
  *&v62 = v37;
  *(&v62 + 1) = v39;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = *v58;
  DWORD1(v63) = *&v58[3];
  *(&v63 + 1) = v41;
  v47 = v60;
  v48 = v63;
  v49 = v61;
  v46[3] = v62;
  v46[4] = v48;
  v46[1] = v47;
  v46[2] = v49;
  *v46 = v31;
  sub_1BA231BF8(v59, v64, sub_1BA231FDC);
  sub_1BA232E44(v28, sub_1BA231F1C);
  v64[0] = v31;
  v64[1] = 0;
  v65 = 1;
  v66 = v56;
  v67 = v57;
  v68 = v30;
  *v69 = *v55;
  *&v69[3] = *&v55[3];
  v70 = v33;
  v71 = v35;
  v72 = v37;
  v73 = v39;
  v74 = 0;
  *v75 = *v58;
  *&v75[3] = *&v58[3];
  v76 = v41;
  sub_1BA232E44(v64, sub_1BA231FDC);
  return sub_1BA232E44(v42, sub_1BA231F1C);
}

void sub_1BA231A04(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA231CAC(0);
  sub_1BA230C48(v2, a1 + *(v4 + 44));
  v5 = sub_1BA4A5BD8();
  sub_1BA4A5188();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BA23242C(0, &qword_1EBBEEBA0, sub_1BA232498, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v15 = a1 + *(v14 + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
}

unint64_t sub_1BA231AD4()
{
  result = qword_1EBBEEAD8;
  if (!qword_1EBBEEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEAD8);
  }

  return result;
}

unint64_t sub_1BA231B28()
{
  result = qword_1EBBEEAE8;
  if (!qword_1EBBEEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEAE8);
  }

  return result;
}

void sub_1BA231B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA231B28();
    v7 = a3(a1, &type metadata for StandardDataLoggingActionHandler.UserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA231BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for DataLoggingQuickActionView(uint64_t a1)
{
  result = qword_1EBBEEC48;
  if (!qword_1EBBEEC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA231CAC(uint64_t a1)
{
  if (!qword_1EBBEEB00)
  {
    sub_1BA232268(255, &qword_1EBBEEB08, sub_1BA231D44, MEMORY[0x1E6981F40]);
    v1 = sub_1BA4A52C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEB00);
    }
  }
}

void sub_1BA231D44(uint64_t a1)
{
  if (!qword_1EBBEEB10)
  {
    sub_1BA231DBC(255);
    sub_1BA2321B4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBEEB10);
    }
  }
}

void sub_1BA231DF8(uint64_t a1)
{
  if (!qword_1EBBEEB20)
  {
    sub_1BA232268(255, &qword_1EBBEEB28, sub_1BA231EAC, MEMORY[0x1E6981F40]);
    sub_1BA232150(&qword_1EBBEEB58, &qword_1EBBEEB28, sub_1BA231EAC);
    v1 = sub_1BA4A6278();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEB20);
    }
  }
}

void sub_1BA231EAC(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBEEB30)
  {
    sub_1BA231F1C(255);
    sub_1BA231FDC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEEB30);
    }
  }
}

void sub_1BA231F50(uint64_t a1)
{
  if (!qword_1EBBEEB40)
  {
    sub_1BA2320FC(255, &qword_1EBBEC988, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEB40);
    }
  }
}

void sub_1BA231FDC(uint64_t a1)
{
  if (!qword_1EBBEEB48)
  {
    sub_1BA232070(255);
    sub_1BA2320FC(255, &qword_1EBBEC988, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEB48);
    }
  }
}

void sub_1BA232070(uint64_t a1)
{
  if (!qword_1EBBEEB50)
  {
    sub_1BA2320FC(255, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEB50);
    }
  }
}

void sub_1BA2320FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA232150(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA232268(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2321B4(uint64_t a1)
{
  if (!qword_1EBBEEB60)
  {
    sub_1BA232268(255, &qword_1EBBEEB68, sub_1BA2322CC, MEMORY[0x1E6981F40]);
    sub_1BA232150(&qword_1EBBEEB98, &qword_1EBBEEB68, sub_1BA2322CC);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEB60);
    }
  }
}

void sub_1BA232268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA2322CC(uint64_t a1)
{
  if (!qword_1EBBEEB70)
  {
    sub_1BA232360(255);
    sub_1B9F85D98(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEEB70);
    }
  }
}

void sub_1BA232360(uint64_t a1)
{
  if (!qword_1EBBEEB78)
  {
    sub_1B9F85C94(255, &qword_1EBBEEB80, sub_1B9F85838, sub_1BA2323F0);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEB78);
    }
  }
}

void sub_1BA23242C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1BA232498(uint64_t a1)
{
  if (!qword_1EBBEEBA8)
  {
    sub_1BA232268(255, &qword_1EBBEEB08, sub_1BA231D44, MEMORY[0x1E6981F40]);
    sub_1BA232150(&qword_1EBBEEBB0, &qword_1EBBEEB08, sub_1BA231D44);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEBA8);
    }
  }
}

unint64_t sub_1BA23254C(uint64_t a1)
{
  *(a1 + 16) = sub_1BA23257C();
  result = sub_1BA2325D0();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1BA23257C()
{
  result = qword_1EBBEEBB8;
  if (!qword_1EBBEEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEBB8);
  }

  return result;
}

unint64_t sub_1BA2325D0()
{
  result = qword_1EBBEEBC0[0];
  if (!qword_1EBBEEBC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEEBC0);
  }

  return result;
}

uint64_t sub_1BA232638(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA232674(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BA232780(uint64_t a1)
{
  sub_1B9F85D98(319, qword_1EDC6BB70, &type metadata for ConfigurationFeedItemActionContent, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DataLoggingPluginViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA232878(uint64_t a1)
{
  type metadata accessor for DataLoggingPluginViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BA232928(319, &qword_1EDC6B6C0, &qword_1EDC6B620, 0x1E696C1C0, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA232928(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA232990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA2329D8()
{
  result = qword_1EBBEEC60;
  if (!qword_1EBBEEC60)
  {
    sub_1BA23242C(255, &qword_1EBBEEBA0, sub_1BA232498, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1BA232990(&qword_1EBBEEC68, sub_1BA232498, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC60);
  }

  return result;
}

unint64_t sub_1BA232AE4()
{
  result = qword_1EBBEEC70;
  if (!qword_1EBBEEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC70);
  }

  return result;
}

unint64_t sub_1BA232B3C()
{
  result = qword_1EBBEEC78;
  if (!qword_1EBBEEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC78);
  }

  return result;
}

unint64_t sub_1BA232B94()
{
  result = qword_1EBBEEC80;
  if (!qword_1EBBEEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC80);
  }

  return result;
}

unint64_t sub_1BA232BEC()
{
  result = qword_1EBBEEC88;
  if (!qword_1EBBEEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEC88);
  }

  return result;
}

unint64_t sub_1BA232C40()
{
  result = qword_1EDC6BD28;
  if (!qword_1EDC6BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD28);
  }

  return result;
}

unint64_t sub_1BA232C94()
{
  result = qword_1EBBEECA0;
  if (!qword_1EBBEECA0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEECA0);
  }

  return result;
}

void sub_1BA232CDC(uint64_t a1)
{
  if (!qword_1EBBEECE0)
  {
    sub_1BA232268(255, &qword_1EBBEEB28, sub_1BA231EAC, MEMORY[0x1E6981F40]);
    v1 = sub_1BA4A52C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEECE0);
    }
  }
}

uint64_t sub_1BA232D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA232DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1BA232268(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1BA232E44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1BA232EA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BA1465C0(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1BA232EE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BA102AF4(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1BA232F2C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

void sub_1BA232F38()
{
  if (!qword_1EBBEECE8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEECE8);
    }
  }
}

void sub_1BA232FB8(uint64_t a1)
{
  if (!qword_1EDC5E8B0)
  {
    sub_1BA232928(255, &qword_1EDC5E8B8, &unk_1EDC5E2D0, 0x1E69DCAD8, MEMORY[0x1E696B370]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E8B0);
    }
  }
}

unint64_t sub_1BA23303C()
{
  result = qword_1EBBEECF0;
  if (!qword_1EBBEECF0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEECF0);
  }

  return result;
}

uint64_t sub_1BA233084(uint64_t a1, uint64_t *a2)
{
  sub_1BA04B338(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context;
  swift_beginAccess();
  sub_1BA2331A0(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA2330E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA233140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context;
  swift_beginAccess();
  sub_1BA2331A0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA2331A0(uint64_t a1, uint64_t a2)
{
  sub_1BA04B39C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1BA233264()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_headerImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA2332B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_headerImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA233378()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1BA233468(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView) = a1;
}

void (*sub_1BA23347C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA233378();
  return sub_1BA2334C4;
}

void sub_1BA2334C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView) = v2;
}

id sub_1BA2334DC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  }

  else
  {
    v4 = sub_1BA23353C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA23353C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v2 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  return v0;
}

void sub_1BA233640(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle) = a1;
}

void (*sub_1BA233654(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA2334DC();
  return sub_1BA23369C;
}

void sub_1BA23369C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle) = v2;
}

id sub_1BA2336DC(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setDistribution_];
    [v9 setSpacing_];
    [v9 setAlignment_];
    v10 = *(v3 + v4);
    *(v3 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

void sub_1BA2337B4(int a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout;
  v3 = v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout];
  if (a1 == 2)
  {
    if (v3 == 2)
    {
      return;
    }
  }

  else
  {
    if (v3 == 2)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (((v3 ^ a1) & 1) == 0)
    {
      return;
    }
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v3 & 1;
  *(v5 + 24) = v1;
  v11[4] = sub_1BA2357A8;
  v11[5] = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B9F0B040;
  v11[3] = &block_descriptor_28_1;
  v6 = _Block_copy(v11);
  v1;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
  v7 = v1[v2];
  if (v7 == 2)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = objc_opt_self();
  if (v7)
  {
    v9 = &selRef_activateConstraints_;
  }

  else
  {
    v9 = &selRef_deactivateConstraints_;
  }

  swift_beginAccess();
  sub_1B9F740B0();

  v10 = sub_1BA4A6AE8();

  [v8 *v9];
}

void sub_1BA233988()
{
  v1 = v0;
  v69.receiver = v0;
  v69.super_class = type metadata accessor for FeatureOnboardingTileViewController();
  objc_msgSendSuper2(&v69, sel_viewDidLoad);
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v4 = sub_1BA4A74F8();
  }

  v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout) = v4 & 1;
  sub_1BA2337B4(v7);
  sub_1B9F7A684(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  v9 = sub_1BA4A4858();
  v10 = MEMORY[0x1E69DC2B0];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v11 = sub_1BA4A4438();
  v12 = MEMORY[0x1E69DC130];
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))(v13);
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFAF2860](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = sub_1BA2336C8();
      [v21 addArrangedSubview_];

      ++v17;
      if (v20 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v23 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(v22);
  v24 = v23;
  v67 = v23 >> 62;
  if (v23 >> 62)
  {
    goto LABEL_29;
  }

  for (j = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1BA4A7CC8())
  {
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1BFAF2860](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v30 = sub_1BA2336B4();
      [v30 addArrangedSubview_];

      ++v26;
      if (v29 == j)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
  sub_1B9F109F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5890;
  *(inited + 32) = sub_1BA233378();
  *(inited + 40) = sub_1BA2334DC();
  *(inited + 48) = sub_1BA2336C8();
  *(inited + 56) = sub_1BA2336B4();
  v32 = inited & 0xFFFFFFFFFFFFFF8;
  v33 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_78;
  }

  for (k = *(inited + 32); ; k = MEMORY[0x1BFAF2860](0, inited))
  {
    v35 = k;
    v36 = [v1 view];
    if (!v36)
    {
      goto LABEL_88;
    }

    v37 = v36;
    [v36 addSubview_];

    if (v33)
    {
      v38 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*(v32 + 16) < 2uLL)
      {
        goto LABEL_78;
      }

      v38 = *(inited + 40);
    }

    v39 = v38;
    v40 = [v1 view];
    if (!v40)
    {
      goto LABEL_88;
    }

    v41 = v40;
    [v40 addSubview_];

    if (v33)
    {
      v42 = MEMORY[0x1BFAF2860](2, inited);
    }

    else
    {
      if (*(v32 + 16) < 3uLL)
      {
        goto LABEL_78;
      }

      v42 = *(inited + 48);
    }

    v43 = v42;
    v44 = [v1 view];
    if (!v44)
    {
      goto LABEL_88;
    }

    v45 = v44;
    [v44 addSubview_];

    if (v33)
    {
      v46 = MEMORY[0x1BFAF2860](3, inited);
    }

    else
    {
      if (*(v32 + 16) < 4uLL)
      {
        goto LABEL_78;
      }

      v46 = *(inited + 56);
    }

    v47 = v46;
    v48 = [v1 view];
    if (!v48)
    {
      goto LABEL_88;
    }

    v49 = v48;
    [v48 addSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();
    if (!j)
    {
      goto LABEL_53;
    }

    if ((v24 & 0xC000000000000001) == 0)
    {
      break;
    }

    v68 = MEMORY[0x1BFAF2860](0, v24);
    v50 = v67;
    if (j < 1)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (v50)
    {
      if (sub_1BA4A7CC8() < 1)
      {
        goto LABEL_87;
      }

      v51 = sub_1BA4A7CC8();
    }

    else
    {
      v51 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
        __break(1u);
LABEL_53:

LABEL_67:
        sub_1BA2343D4();
        return;
      }
    }

    if (v51 < j)
    {
      goto LABEL_86;
    }

    if ((v24 & 0xC000000000000001) == 0 || j == 1)
    {

      if (v50)
      {
        goto LABEL_64;
      }
    }

    else
    {
      type metadata accessor for FeatureOnboardingBulletListItemView();

      v52 = 1;
      do
      {
        v53 = v52 + 1;
        sub_1BA4A7E08();
        v52 = v53;
      }

      while (j != v53);
      if (v50)
      {
LABEL_64:

        v54 = sub_1BA4A8058();
        v55 = v57;
        v56 = v58;
        j = v59 >> 1;
        goto LABEL_65;
      }
    }

    v54 = v24 & 0xFFFFFFFFFFFFFF8;
    v55 = (v24 & 0xFFFFFFFFFFFFFF8) + 32;
    v56 = 1;
LABEL_65:
    v66 = v54;
    swift_unknownObjectRetain();

    v33 = j - v56;
    if (j == v56)
    {
LABEL_66:

      swift_unknownObjectRelease_n();
      goto LABEL_67;
    }

    v67 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel;
    v60 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_bulletTitleVerticalAlignmentConstraints;
    if (j <= v56)
    {
      v61 = v56;
    }

    else
    {
      v61 = j;
    }

    v32 = v61 - v56;
    inited = v55 + 8 * v56;
    while (v32)
    {
      v62 = *(*inited + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel);
      v24 = *inited;
      v63 = [v62 leadingAnchor];
      v64 = [*&v68[v67] leadingAnchor];
      j = [v63 constraintEqualToAnchor_];

      v65 = swift_beginAccess();
      MEMORY[0x1BFAF1510](v65);
      if (*((*(v1 + v60) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v60) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      swift_endAccess();

      --v32;
      inited += 8;
      if (!--v33)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v50 = v67;
  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  v68 = *(v24 + 32);
  if (j >= 1)
  {
    goto LABEL_50;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void sub_1BA2341D8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a1 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v9 = [a1 traitCollection];
      v10 = [v9 preferredContentSizeCategory];

      v8 = sub_1BA4A74F8();
    }

    v11 = v5[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout];
    v5[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout] = v8 & 1;
    sub_1BA2337B4(v11);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 view];

    if (!v14)
    {
      __break(1u);
      goto LABEL_14;
    }

    [v14 invalidateIntrinsicContentSize];
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = [v15 view];

  if (!v17)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v17 setNeedsLayout];
}

void sub_1BA2343D4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1 || (v4 = [v1 traitCollection], v5 = objc_msgSend(v4, sel_preferredContentSizeCategory), v4, LOBYTE(v4) = sub_1BA4A74F8(), v5, (v4 & 1) != 0))
  {
    v6 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_bulletTitleVerticalAlignmentConstraints;
    swift_beginAccess();
    v107 = *(v1 + v6);

    v7 = 1;
  }

  else
  {
    v7 = 0;
    v107 = MEMORY[0x1E69E7CC0];
  }

  if (_UISolariumEnabled())
  {
    v8 = 78.0;
  }

  else
  {
    v8 = 20.0;
  }

  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4C84A0;
  v10 = sub_1BA233378();
  v11 = [v10 topAnchor];

  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor:v14 constant:22.0];
  *(v9 + 32) = v15;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView;
  v17 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView) leadingAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  v106 = v7;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintGreaterThanOrEqualToAnchor:v20 constant:20.0];
  *(v9 + 40) = v21;
  v22 = [v1 view];
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [*(v1 + v16) trailingAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25 constant:20.0];

  *(v9 + 48) = v26;
  v27 = [*(v1 + v16) centerXAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = v28;
  v30 = [v28 centerXAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v9 + 56) = v31;
  v32 = [*(v1 + v16) heightAnchor];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  v33 = [v32 constraintEqualToConstant_];

  *(v9 + 64) = v33;
  v34 = [*(v1 + v16) widthAnchor];
  v35 = [*(v1 + v16) heightAnchor];
  [*(v1 + v16) bounds];
  v37 = v36;
  [*(v1 + v16) bounds];
  v39 = [v34 constraintEqualToAnchor:v35 multiplier:v37 / (v38 + -3.0)];

  *(v9 + 72) = v39;
  v40 = sub_1BA2334DC();
  v41 = [v40 topAnchor];

  v42 = [*(v1 + v16) bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:12.0];

  *(v9 + 80) = v43;
  v44 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle;
  v45 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle) leadingAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v45 constraintGreaterThanOrEqualToAnchor:v48 constant:20.0];
  *(v9 + 88) = v49;
  v50 = [v1 view];
  if (!v50)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = v50;
  v52 = [v50 trailingAnchor];

  v53 = [*(v1 + v44) trailingAnchor];
  v54 = [v52 constraintGreaterThanOrEqualToAnchor:v53 constant:20.0];

  *(v9 + 96) = v54;
  v55 = [*(v1 + v44) centerXAnchor];
  v56 = [v1 view];
  if (!v56)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v57 = v56;
  v58 = [v56 centerXAnchor];

  v59 = [v55 constraintEqualToAnchor_];
  *(v9 + 104) = v59;
  v60 = sub_1BA2336B4();
  v61 = [v60 leadingAnchor];

  v62 = [v1 view];
  if (!v62)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v61 constraintEqualToAnchor:v64 constant:20.0];
  *(v9 + 112) = v65;
  v66 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack;
  v67 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack) topAnchor];
  v68 = [*(v1 + v44) bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:20.0];

  *(v9 + 120) = v69;
  v70 = [v1 view];
  if (!v70)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v71 = v70;
  v72 = [v70 trailingAnchor];

  v73 = [*(v1 + v66) trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:20.0];

  *(v9 + 128) = v74;
  v75 = sub_1BA2336C8();
  v76 = [v75 leadingAnchor];

  v77 = [v1 view];
  if (!v77)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v78 = v77;
  v79 = [v77 leadingAnchor];

  v80 = [v76 constraintEqualToAnchor:v79 constant:v8];
  *(v9 + 136) = v80;
  v81 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack;
  v82 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack) topAnchor];
  v83 = [*(v1 + v66) bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:24.0];

  *(v9 + 144) = v84;
  v85 = [*(v1 + v81) centerXAnchor];
  v86 = [v1 view];
  if (!v86)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v87 = v86;
  v88 = [v86 centerXAnchor];

  v89 = [v85 constraintEqualToAnchor_];
  *(v9 + 152) = v89;
  v90 = [v1 view];
  if (!v90)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v91 = v90;
  v92 = [v90 trailingAnchor];

  v93 = [*(v1 + v81) trailingAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:v8];

  *(v9 + 160) = v94;
  v95 = [v1 view];
  if (v95)
  {
    v96 = v95;
    v97 = objc_opt_self();
    v98 = [v96 bottomAnchor];

    v99 = [*(v1 + v81) bottomAnchor];
    v100 = [v98 constraintEqualToAnchor:v99 constant:24.0];

    *(v9 + 168) = v100;
    sub_1B9F73B50(v107);
    sub_1B9F740B0();
    v101 = sub_1BA4A6AE8();

    [v97 activateConstraints_];

    v102 = objc_opt_self();
    v103 = swift_allocObject();
    *(v103 + 16) = v106;
    *(v103 + 24) = v1;
    aBlock[4] = sub_1BA235798;
    aBlock[5] = v103;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_61;
    v104 = _Block_copy(aBlock);
    v105 = v1;

    [v102 animateWithDuration:v104 animations:0.1];
    _Block_release(v104);
    return;
  }

LABEL_34:
  __break(1u);
}

id sub_1BA234F50(char a1, uint64_t a2)
{
  v4 = sub_1BA2336B4();
  v5 = v4;
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  [v4 setAxis_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack;
  [*(a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack) setDistribution_];
  [*(a2 + v8) setAlignment_];
  v9 = sub_1BA2336C8();
  [v9 setAxis_];

  v10 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack;
  [*(a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack) setDistribution_];
  v11 = *(a2 + v10);

  return [v11 setAlignment_];
}

id FeatureOnboardingTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FeatureOnboardingTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_headerImage] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout] = 2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_bulletTitleVerticalAlignmentConstraints] = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for FeatureOnboardingTileViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id FeatureOnboardingTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FeatureOnboardingTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_headerImage] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerImageView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___headerTitle] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___bulletStack] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController____lazy_storage___buttonStack] = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_isCompactVerticalLayout] = 2;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingTileViewController_bulletTitleVerticalAlignmentConstraints] = MEMORY[0x1E69E7CC0];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FeatureOnboardingTileViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id FeatureOnboardingTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureOnboardingTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void AllHighlightsForDataTypeViewController.__allocating_init(hkType:healthStore:healthExperienceStore:hideShowAllButton:provenance:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = a4;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType] = a1;
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore] = a2;
  sub_1B9F0A534(a3, &v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore]);
  v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton] = v10;
  v15 = &v14[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance];
  *v15 = a5;
  v15[1] = a6;
  sub_1B9F0A534(a3, v32);
  type metadata accessor for AllHighlightsForDataTypeDataSource(0);
  swift_allocObject();

  v16 = a1;
  v17 = a2;
  sub_1BA237ED8(v16, v17, v32, v10);

  v19 = CompoundDataSourceCollectionViewController.init(dataSource:)(v18);
  v20 = qword_1EDC5E100;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B5B8(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  v23 = [v17 displayTypeController];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 displayTypeForObjectType_];

    if (v25)
    {

      v26 = [v25 localization];

      v27 = [v26 displayName];
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v29;

      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1B9F1BE20();
      *(v22 + 32) = v28;
      *(v22 + 40) = v30;
      sub_1BA4A6768();

      v31 = sub_1BA4A6758();

      [v21 setTitle_];

      __swift_destroy_boxed_opaque_existential_1(a3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AllHighlightsForDataTypeViewController.init(hkType:healthStore:healthExperienceStore:hideShowAllButton:provenance:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_1BA238110(a1, a2, a3, a4, a5, a6);
  v9 = v8;

  return v9;
}

uint64_t AllHighlightsForDataTypeViewController.__allocating_init(userActivity:healthStore:healthExperienceStore:provenance:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v47 = sub_1BA4A3EA8();
  v9 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A35F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = [a1 userInfo];
  v19 = MEMORY[0x1E69E7CA0];
  if (!v18)
  {
    v51 = 0u;
    v52 = 0u;
    goto LABEL_15;
  }

  v45 = v5;
  v46 = a2;
  v20 = a1;
  v21 = a3;
  v22 = v18;
  v23 = sub_1BA4A6628();

  (*(v14 + 104))(v17, *MEMORY[0x1E69A2B88], v13);
  v24 = sub_1BA4A35E8();
  v26 = v25;
  (*(v14 + 8))(v17, v13);
  v48 = v24;
  v49 = v26;
  sub_1BA4A7D58();
  if (!*(v23 + 16) || (v27 = sub_1B9FDA8E4(v50), (v28 & 1) == 0))
  {

    sub_1B9FDC768(v50);
    v51 = 0u;
    v52 = 0u;
    a3 = v21;
    a1 = v20;
    a2 = v46;
    v19 = MEMORY[0x1E69E7CA0];
    goto LABEL_15;
  }

  sub_1B9F0AD9C(*(v23 + 56) + 32 * v27, &v51);
  sub_1B9FDC768(v50);

  a3 = v21;
  a1 = v20;
  a2 = v46;
  v19 = MEMORY[0x1E69E7CA0];
  if (!*(&v52 + 1))
  {
LABEL_15:
    sub_1B9F0DDA0(&v51, &qword_1EDC6E300, v19 + 8, MEMORY[0x1E69E6720], sub_1B9F234D4);
    goto LABEL_16;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v29 = v50[0];
    v30 = [objc_opt_self() dataTypeWithCode_];
    if (v30)
    {
      v31 = v30;
      v32 = [a1 userInfo];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1BA4A6628();

        *&v51 = 0xD000000000000011;
        *(&v51 + 1) = 0x80000001BA4F5D70;
        sub_1BA4A7D58();
        if (*(v34 + 16))
        {
          v35 = sub_1B9FDA8E4(v50);
          if (v36)
          {
            sub_1B9F0AD9C(*(v34 + 56) + 32 * v35, &v51);
            sub_1B9FDC768(v50);

            if (*(&v52 + 1))
            {
              v37 = swift_dynamicCast();
              v38 = v45;
              if (v37)
              {
                v39 = LOBYTE(v50[0]);
              }

              else
              {
                v39 = 0;
              }

              goto LABEL_24;
            }

LABEL_23:
            sub_1B9F0DDA0(&v51, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F234D4);
            v39 = 0;
            v38 = v45;
LABEL_24:
            sub_1B9F0A534(a3, v50);
            v44 = (*(v38 + 344))(v31, v46, v50, v39, 0x7463412072657355, 0xED00007974697669);

            __swift_destroy_boxed_opaque_existential_1(a3);
            return v44;
          }
        }

        sub_1B9FDC768(v50);
      }

      v51 = 0u;
      v52 = 0u;
      goto LABEL_23;
    }
  }

LABEL_16:
  sub_1BA4A3DD8();
  v40 = sub_1BA4A3E88();
  v41 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1B9F07000, v40, v41, "Could not get the type code from the NSUserActivity", v42, 2u);
    MEMORY[0x1BFAF43A0](v42, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v9 + 8))(v12, v47);
  return 0;
}

id sub_1BA23624C(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for AllHighlightsForDataTypeViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  result = [v1 collectionView];
  if (result)
  {
    v3 = result;
    v4 = sub_1BA4A6AE8();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v10 = 10;
    if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance + 8])
    {
      v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance];
      v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance + 8];
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7104878;
    }

    type metadata accessor for HealthAppAnalyticsManager();
    v9 = 0;
    memset(v8, 0, sizeof(v8));

    static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v10, v1, v6, v7, v8);

    return sub_1BA238640(v8, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AllHighlightsForDataTypeViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA2364E0()
{
  v1 = sub_1BA4A35F8();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v41 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A3678();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B5B8(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  v10 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore] displayTypeController];
  if (!v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v44 = v0;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType];
  v13 = [v10 displayTypeForObjectType_];

  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = [v13 localization];

  v15 = [v14 displayName];
  v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v17;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B9F1BE20();
  *(v9 + 32) = v16;
  *(v9 + 40) = v18;
  sub_1BA4A6768();

  (*(v5 + 104))(v8, *MEMORY[0x1E69A2BF8], v4);
  v19 = sub_1BA4A35B8();

  (*(v5 + 8))(v8, v4);
  v20 = [v19 userInfo];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1BA4A6628();

    v24 = v42;
    v23 = v43;
    v25 = v12;
    v26 = v41;
    (*(v42 + 104))(v41, *MEMORY[0x1E69A2B88], v43);
    v27 = sub_1BA4A35E8();
    v29 = v28;
    (*(v24 + 8))(v26, v23);
    *&v47 = v27;
    *(&v47 + 1) = v29;
    sub_1BA4A7D58();
    v30 = [v25 code];
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v48 = sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    *&v47 = v31;
    sub_1B9F46920(&v47, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v22;
    sub_1B9FF1AE4(v46, v49, isUniquelyReferenced_nonNull_native);
    sub_1B9FDC768(v49);
    if (v45)
    {
      v33 = sub_1BA4A6618();
    }

    else
    {
      v33 = 0;
    }

    v34 = v44;
    [v19 setUserInfo_];
  }

  else
  {
    [v19 setUserInfo_];
    v34 = v44;
  }

  v35 = [v19 userInfo];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1BA4A6628();

    *&v47 = 0xD000000000000011;
    *(&v47 + 1) = 0x80000001BA4F5D70;
    sub_1BA4A7D58();
    v38 = v34[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton];
    v48 = MEMORY[0x1E69E6370];
    LOBYTE(v47) = v38;
    sub_1B9F46920(&v47, v46);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v37;
    sub_1B9FF1AE4(v46, v49, v39);
    sub_1B9FDC768(v49);
    if (v45)
    {
      v40 = sub_1BA4A6618();
    }

    else
    {
      v40 = 0;
    }

    [v19 setUserInfo_];
  }

  else
  {
    [v19 setUserInfo_];
  }

  [v34 setUserActivity_];
}

id AllHighlightsForDataTypeViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

double sub_1BA236C1C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore));

  return result;
}

id AllHighlightsForDataTypeViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AllHighlightsForDataTypeViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA236D80(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  static GridLayoutEngine.largeCard.getter(&v16);
  v14 = v8;
  v15 = v2;
  v3 = GridLayoutEngine.layout(for:)(&v14);
  if (v1)
  {
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v9 = v16;
    v10 = v17;
    return sub_1B9F5A690(&v9);
  }

  else
  {
    v5 = v3;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v9 = v16;
    v10 = v17;
    sub_1B9F5A690(&v9);
    v6 = [objc_opt_self() estimatedDimension_];
    v7 = sub_1B9F5CA58(v6, 2);

    return v7;
  }
}

uint64_t sub_1BA236E80(uint64_t a1, uint64_t a2)
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

  if (sub_1BA4A2048() == a1 && v7 == a2)
  {
    goto LABEL_29;
  }

  v8 = sub_1BA4A8338();

  if (v8)
  {
    goto LABEL_10;
  }

  if (sub_1BA4A2038() == a1 && v9 == a2)
  {

    goto LABEL_16;
  }

  v10 = sub_1BA4A8338();

  if (v10)
  {
LABEL_16:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_33;
  }

  if (sub_1BA4A2078() == a1 && v11 == a2)
  {
    goto LABEL_29;
  }

  v12 = sub_1BA4A8338();

  if (v12)
  {
    goto LABEL_10;
  }

  if (sub_1BA4A2098() == a1 && v13 == a2)
  {

    goto LABEL_25;
  }

  v14 = sub_1BA4A8338();

  if (v14)
  {
LABEL_25:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_33;
  }

  if (sub_1BA4A2088() == a1 && v15 == a2)
  {
LABEL_29:

    goto LABEL_10;
  }

  v16 = sub_1BA4A8338();

  if ((v16 & 1) == 0)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_33;
  }

LABEL_10:
  if (qword_1EDC5E100 != -1)
  {
LABEL_33:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA237244(void *a1, uint64_t a2, void *a3)
{
  sub_1B9F0A534(a2, v11);
  *(objc_allocWithZone(type metadata accessor for AllHighlightsByCategoryViewController()) + OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance) = xmmword_1BA4C8530;
  v5 = [objc_opt_self() allCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0, 0x1E69A4368);
  v6 = sub_1BA4A6B08();

  sub_1B9F0A534(v11, v10);
  type metadata accessor for AllHighlightsByCategoryDataSource(0);
  swift_allocObject();
  v7 = a3;
  v8 = sub_1BA46DEFC(v6, v10, v7);

  v9 = CompoundDataSourceCollectionViewController.init(dataSource:)(v8);
  __swift_destroy_boxed_opaque_existential_1(v11);
  [a1 showViewController:v9 sender:a1];
}

uint64_t sub_1BA2373B4()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_healthExperienceStore);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t AllHighlightsForDataTypeDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_healthExperienceStore));
  return v0;
}

uint64_t AllHighlightsForDataTypeDataSource.__deallocating_deinit()
{
  AllHighlightsForDataTypeDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA23753C(void *a1, uint64_t a2)
{
  v68 = a2;
  v60 = a1;
  v2 = sub_1BA4A1798();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2385D0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v58 = &v55 - v7;
  v59 = sub_1BA4A3FB8();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BA4A3F18();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContentConfigurationItem(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A4428();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A4418();
  v62 = v23;
  sub_1BA4A43B8();
  sub_1B9F0A534(v68, &v69);
  v24 = swift_allocObject();
  v68 = v24;
  sub_1B9F1134C(&v69, v24 + 16);
  v25 = v60;
  *(v24 + 56) = v60;
  v26 = MEMORY[0x1E69DC110];
  v55 = 0x80000001BA4F5FE0;
  *(v18 + 12) = v19;
  *(v18 + 13) = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18 + 9);
  v63 = v20;
  (*(v20 + 16))(boxed_opaque_existential_1, v23, v19);
  sub_1BA2385D0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v61 = v19;
  v28 = swift_allocObject();
  v67 = xmmword_1BA4B5480;
  *(v28 + 16) = xmmword_1BA4B5480;
  v29 = v56;
  (*(v11 + 104))(v14, *MEMORY[0x1E69DBF28], v56);
  v30 = sub_1BA4A3F48();
  (*(*(v30 - 8) + 56))(v58, 1, 1, v30);
  v31 = v25;
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v57 + 8))(v10, v59);
  (*(v11 + 8))(v14, v29);
  v32 = v15[10];
  v33 = v68;

  sub_1BA4A4158();
  v34 = sub_1BA4A4168();
  (*(*(v34 - 8) + 56))(&v18[v32], 0, 1, v34);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_1BA238640(&v69, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v70 + 1) = &type metadata for BasicCellSelectionHandler;
  v71 = &off_1F381BCC8;
  *&v69 = sub_1BA238634;
  *(&v69 + 1) = v33;
  LOBYTE(v70) = 2;
  sub_1B9F2F698(&v69, (v18 + 16));
  *&v18[v15[12]] = 0;
  *&v18[v15[13]] = 0;
  *v18 = 0xD000000000000013;
  *(v18 + 1) = v55;
  v18[112] = 0;
  *(v18 + 15) = v28;
  *(v18 + 7) = 0;
  *(v18 + 8) = 0;
  v35 = &v18[v15[11]];
  *v35 = 0;
  *(v35 + 1) = 0;
  sub_1BA238640(&v69, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  sub_1B9F234D4(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = v67;
  sub_1B9F1B5B8(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = v67;
  *(v37 + 56) = v15;
  *(v37 + 64) = sub_1BA238EE8(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v38 = __swift_allocate_boxed_opaque_existential_1((v37 + 32));
  sub_1BA224BD0(v18, v38);
  v39 = v64;
  sub_1BA4A1788();
  *&v67 = sub_1BA4A1748();
  v41 = v40;
  v42 = v66;
  v43 = *(v65 + 8);
  v43(v39, v66);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v45 = Array<A>.identifierToIndexDict()(v44);

  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 48) = v37;
  *(v36 + 56) = v45;
  *(v36 + 64) = v67;
  *(v36 + 72) = v41;
  *&v69 = 0x3C53447961727241;
  *(&v69 + 1) = 0xE800000000000000;
  sub_1BA4A1788();
  v46 = sub_1BA4A1748();
  v48 = v47;
  v43(v39, v42);
  MEMORY[0x1BFAF1350](v46, v48);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v49 = v69;
  type metadata accessor for ArrayDataSource(0);
  swift_allocObject();
  v50 = sub_1B9F348D8(v36, v49, *(&v49 + 1));

  (*(v63 + 8))(v62, v61);
  v51 = swift_allocObject();
  v51[2] = sub_1B9F5AEA0;
  v51[3] = 0;
  v51[4] = v50;
  sub_1BA238F30(0, &qword_1EBBEAB10, type metadata accessor for ArrayDataSource, &protocol witness table for ArrayDataSource, type metadata accessor for DataSourceWithLayout);
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  v53 = v50[6];
  *(v52 + 24) = v50[5];
  *(v52 + 32) = v53;
  *(v52 + 40) = 0;
  *(v52 + 48) = sub_1BA2386B0;
  *(v52 + 56) = v51;

  sub_1BA224B74(v18);
  return v52;
}

uint64_t sub_1BA237ED8(void *a1, void *a2, void *a3, char a4)
{
  v9 = *v4;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_hkType) = a1;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_healthStore) = a2;
  sub_1B9F0A534(a3, v4 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_healthExperienceStore);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34AllHighlightsForDataTypeDataSource_hideShowAllButton) = a4;
  sub_1B9F234D4(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9A90;
  v11 = a1;
  v12 = a2;
  *(inited + 32) = sub_1BA4A2048();
  *(inited + 40) = v13;
  *(inited + 48) = sub_1BA4A2038();
  *(inited + 56) = v14;
  *(inited + 64) = sub_1BA4A2078();
  *(inited + 72) = v15;
  *(inited + 80) = sub_1BA4A2098();
  *(inited + 88) = v16;
  *(inited + 96) = sub_1BA4A2088();
  *(inited + 104) = v17;
  v28[2] = v11;
  v28[3] = v12;
  v28[4] = a3;
  v28[5] = v9;
  sub_1BA24AD10(sub_1BA238590, v28, inited);
  v19 = v18;
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((a4 & 1) == 0)
  {
    v20 = sub_1BA23753C(v12, a3);
    v22 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1B9F1E00C();
      v29 = v19;
    }

    v24 = *(v19 + 16);
    if (v24 >= *(v19 + 24) >> 1)
    {
      v19 = sub_1B9F1E00C();
      v29 = v19;
    }

    ObjectType = swift_getObjectType();
    sub_1BA1BA008(v24, v20, &v29, ObjectType, v22);
  }

  v26 = CompoundSectionedDataSource.init(_:)(v19);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v26;
}

void sub_1BA238110(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType) = a1;
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore) = a2;
  sub_1B9F0A534(a3, v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore);
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton) = a4;
  v14 = (v7 + OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance);
  *v14 = a5;
  v14[1] = a6;
  sub_1B9F0A534(a3, v31);
  type metadata accessor for AllHighlightsForDataTypeDataSource(0);
  swift_allocObject();

  v15 = a1;
  v16 = a2;
  sub_1BA237ED8(v15, v16, v31, a4);

  v18 = CompoundDataSourceCollectionViewController.init(dataSource:)(v17);
  v19 = qword_1EDC5E100;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B5B8(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5480;
  v22 = [v16 displayTypeController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 displayTypeForObjectType_];

    if (v24)
    {

      v25 = [v24 localization];

      v26 = [v25 displayName];
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v28;

      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1B9F1BE20();
      *(v21 + 32) = v27;
      *(v21 + 40) = v29;
      sub_1BA4A6768();

      v30 = sub_1BA4A6758();

      [v20 setTitle_];

      __swift_destroy_boxed_opaque_existential_1(a3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for AllHighlightsForDataTypeDataSource(uint64_t a1)
{
  result = qword_1EBBEED80;
  if (!qword_1EBBEED80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA238590@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA2386D0(*(v2 + 16), *a1, a1[1], *(v2 + 32));
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_1BA2385D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA238640(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F1B5B8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *sub_1BA2386D0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v74 = a4;
  v69 = a2;
  v70 = a3;
  v5 = sub_1BA4A4428();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v76 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v75 = &v65 - v10;
  v11 = MEMORY[0x1E6968130];
  v12 = MEMORY[0x1E69E6720];
  sub_1BA2385D0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v65 - v15;
  sub_1BA4A27B8();
  v73 = MEMORY[0x1BFAED110]();
  v17 = MEMORY[0x1E69E6F90];
  sub_1B9F234D4(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v68 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5470;
  *(v19 + 32) = a1;
  v20 = a1;
  v21 = MEMORY[0x1BFAED000](v19);

  sub_1BA2385D0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v22 = sub_1BA4A1C68();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5480;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x1E69A3BF8], v22);
  v26 = sub_1BA4A0FA8();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_1B9F234D4(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v17);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5460;
  *(v27 + 32) = sub_1BA4A1D78();
  *(v27 + 40) = 0;
  v29 = v69;
  v28 = v70;
  v30 = sub_1BA4A25F8();

  sub_1B9F0DDA0(v16, &qword_1EDC6E2A0, v11, v12, sub_1BA2385D0);
  v31 = swift_allocObject();
  v67 = xmmword_1BA4B7510;
  *(v31 + 16) = xmmword_1BA4B7510;
  *(v31 + 32) = v21;
  *(v31 + 40) = v30;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v72 = v21;
  v71 = v30;
  v32 = sub_1BA4A6AE8();

  v33 = [objc_opt_self() andPredicateWithSubpredicates_];
  v66 = v33;

  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v35 = sub_1BA4A6758();
  v36 = [v34 initWithKey:v35 ascending:1];

  sub_1BA4A2798();
  v37 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v38 = sub_1BA4A6758();

  v39 = [v37 initWithKey:v38 ascending:1];

  v40 = swift_allocObject();
  *(v40 + 16) = v67;
  *(v40 + 32) = v36;
  *(v40 + 40) = v39;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v68 = v36;
  *&v67 = v39;
  v41 = sub_1BA4A6AE8();

  v42 = v73;
  [v73 setSortDescriptors_];

  [v42 setPredicate_];
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v43 = v42;
  v44 = sub_1BA4A1B68();
  v45 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v43 managedObjectContext:v44 sectionNameKeyPath:0 cacheName:0];

  sub_1BA0649AC(0);
  v47 = objc_allocWithZone(v46);
  v48 = &v47[qword_1EDC61AF0];
  *v48 = sub_1BA236D80;
  v48[1] = 0;
  v49 = v45;
  v50 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v49);
  v51 = sub_1BA236E80(v29, v28);
  v53 = v52;
  v54 = v75;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v55 = v76;
  v56 = v77;
  v57 = v78;
  (*(v77 + 16))(v76, v54, v78);
  v58 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v51, v53, 0, 0, 0, 0, v55, 0, 0);
  v60 = v59;
  (*(v56 + 8))(v54, v57);
  v80[3] = v58;
  v80[4] = sub_1BA238EE8(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);

  v80[0] = v60;
  sub_1B9F0A534(v80, v79);
  v61 = swift_allocObject();
  sub_1B9F1134C(v79, v61 + 16);
  sub_1BA238F30(0, &qword_1EBBEED90, sub_1BA0649AC, &protocol witness table for FetchedResultsControllerDataSource<A>, type metadata accessor for Supplementary);
  v62 = swift_allocObject();
  v62[4] = v50;
  v62[5] = sub_1B9F79BC8;
  v62[6] = v61;
  v63 = *&v50[qword_1EDC84AD0 + 8];
  v62[2] = *&v50[qword_1EDC84AD0];
  v62[3] = v63;

  __swift_destroy_boxed_opaque_existential_1(v80);
  return v62;
}

uint64_t sub_1BA238EE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA238F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t PlaceholderVisibilityRule.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t InteractivePickerRow.init(hidePlaceholder:label:showClearButton:clearButtonOnRight:onInteract:placeholderVisibility:baseAutomationIdentifier:inputPickerView:placeholderView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = *a11;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a14;
  *(a9 + 72) = a15;
  *(a9 + 80) = a16;
  *(a9 + 88) = a17;
  *(a9 + 96) = v17;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  return result;
}

void *sub_1BA239084@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v4 = v2[4];
  v5 = v2[6];
  v27 = v2[5];
  v28 = v5;
  v6 = v2[1];
  v22 = *v2;
  v7 = v2[2];
  v8 = v2[3];
  v23 = v6;
  v24 = v7;
  v29 = *(v2 + 14);
  v25 = v8;
  v26 = v4;
  if ((BYTE8(v7) & 1) != 0 && (v9 = result, v20 = v22, v21 = v23 & 1, sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), result = MEMORY[0x1BFAF0CD0](&v30), v30 == 1))
  {
    v11 = *(&v28 + 1);
    v10 = v29;
    v12 = swift_allocObject();
    v13 = *(v9 + 2);
    *(v12 + 16) = *(v9 + 1);
    *(v12 + 32) = v13;
    v14 = v27;
    v15 = v28;
    v16 = v25;
    *(v12 + 112) = v26;
    *(v12 + 128) = v14;
    *(v12 + 144) = v15;
    v17 = v23;
    v18 = v24;
    *(v12 + 48) = v22;
    *(v12 + 64) = v17;
    *(v12 + 160) = v29;
    *(v12 + 80) = v18;
    *(v12 + 96) = v16;

    result = (*(*(v9 - 1) + 16))(&v20, &v22, v9);
    v19 = sub_1BA23E3C0;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v19 = 0;
    v12 = 0;
  }

  *a2 = v11;
  a2[1] = v10;
  a2[2] = v19;
  a2[3] = v12;
  return result;
}

uint64_t sub_1BA239208(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[6];
  if (v10)
  {
    v10();
  }

  v11 = *a1;
  v12 = a1[1];
  v22 = *(a1 + 16);
  v20 = *(a1 + 81);
  *v21 = *(a1 + 97);
  *&v21[15] = a1[14];
  v16 = *(a1 + 17);
  v17 = *(a1 + 33);
  v18 = *(a1 + 49);
  v19 = *(a1 + 65);
  v23 = a2;
  v24 = a3;
  *v25 = a4;
  *&v25[8] = a5;
  v13 = type metadata accessor for InteractivePickerRow(0, &v23);
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v23, a1, v13);
  v23 = v11;
  v24 = v12;
  v25[0] = v22;
  v31 = 0;
  sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1BA4A62A8();
  v28 = v19;
  v29 = v20;
  *v30 = *v21;
  *&v25[1] = v16;
  v26 = v17;
  v23 = v11;
  v24 = v12;
  v25[0] = v22;
  *&v30[15] = *&v21[15];
  v27 = v18;
  return (*(v14 + 8))(&v23, v13);
}

uint64_t InteractivePickerRow.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  sub_1B9F892AC(255, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  *&v78 = a1 + 5;
  v4 = a1[2];
  v74 = a1;
  v75 = v4;
  *&v77 = a1[4];
  *&v80 = v4;
  *(&v80 + 1) = v77;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  v5 = a1[3];
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v6 = sub_1BA4A6218();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A5268();
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v7 = sub_1BA4A6268();
  WitnessTable = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  *&v80 = v6;
  *(&v80 + 1) = v7;
  v8 = v6;
  *&v81 = WitnessTable;
  *(&v81 + 1) = v69;
  v9 = type metadata accessor for AXLayoutView(0, &v80);
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v58 - v11);
  v13 = sub_1BA4A5418();
  v71 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v66 = v58 - v15;
  sub_1BA239CE0(255);
  v61 = v13;
  v16 = sub_1BA4A5418();
  v73 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v63 = v58 - v18;
  v59 = swift_getWitnessTable();
  v79[17] = v59;
  v79[18] = MEMORY[0x1E697FB50];
  v19 = swift_getWitnessTable();
  v58[1] = v19;
  v20 = sub_1BA23E13C(&qword_1EBBEEDB8, sub_1BA239CE0, MEMORY[0x1E697FD58]);
  v79[15] = v19;
  v79[16] = v20;
  v64 = v16;
  v65 = swift_getWitnessTable();
  *&v80 = v16;
  *(&v80 + 1) = v65;
  v67 = MEMORY[0x1E6981218];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v22);
  v60 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = v58 - v26;
  v27 = v2[5];
  v84 = v2[4];
  v85 = v27;
  v86 = v2[6];
  v87 = *(v2 + 14);
  v28 = v2[1];
  v80 = *v2;
  v81 = v28;
  v29 = v2[3];
  v82 = v2[2];
  v83 = v29;
  v30 = swift_allocObject();
  *&v31 = v77;
  *(&v31 + 1) = *v78;
  *&v32 = v75;
  *(&v32 + 1) = v5;
  v77 = v31;
  v78 = v32;
  *(v30 + 16) = v32;
  *(v30 + 32) = v31;
  v33 = v2[5];
  *(v30 + 112) = v2[4];
  *(v30 + 128) = v33;
  *(v30 + 144) = v2[6];
  *(v30 + 160) = *(v2 + 14);
  v34 = v2[1];
  *(v30 + 48) = *v2;
  *(v30 + 64) = v34;
  v35 = v2[3];
  *(v30 + 80) = v2[2];
  *(v30 + 96) = v35;
  v36 = swift_allocObject();
  v37 = v77;
  *(v36 + 16) = v78;
  *(v36 + 32) = v37;
  v38 = v2[5];
  *(v36 + 112) = v2[4];
  *(v36 + 128) = v38;
  *(v36 + 144) = v2[6];
  *(v36 + 160) = *(v2 + 14);
  v39 = v2[1];
  *(v36 + 48) = *v2;
  *(v36 + 64) = v39;
  v40 = v2[3];
  *(v36 + 80) = v2[2];
  *(v36 + 96) = v40;
  v41 = v12;
  sub_1BA23C4F0(sub_1BA23A068, v30, sub_1BA23B680, v36, v8, v7, WitnessTable, v69, v12);
  v42 = v74;
  v43 = *(*(v74 - 1) + 16);
  v43(v79, &v80, v74);
  v43(v79, &v80, v42);
  v44 = v66;
  sub_1BA4A5ED8();
  (*(v72 + 8))(v41, v9);
  sub_1B9F58524();
  v45 = v63;
  v46 = v61;
  sub_1BA4A5EE8();
  (*(v71 + 8))(v44, v46);
  v47 = swift_allocObject();
  v48 = v77;
  *(v47 + 16) = v78;
  *(v47 + 32) = v48;
  v49 = v85;
  *(v47 + 112) = v84;
  *(v47 + 128) = v49;
  *(v47 + 144) = v86;
  *(v47 + 160) = v87;
  v50 = v81;
  *(v47 + 48) = v80;
  *(v47 + 64) = v50;
  v51 = v83;
  *(v47 + 80) = v82;
  *(v47 + 96) = v51;
  v43(v79, &v80, v42);
  v52 = v60;
  v54 = v64;
  v53 = v65;
  sub_1BA4A5F08();

  (*(v73 + 8))(v45, v54);
  v79[0] = v54;
  v79[1] = v53;
  swift_getOpaqueTypeConformance2();
  v55 = v62;
  sub_1B9F51AA8(v52, OpaqueTypeMetadata2, v62);
  v56 = *(v68 + 8);
  v56(v52, OpaqueTypeMetadata2);
  sub_1B9F51AA8(v55, OpaqueTypeMetadata2, v76);
  return (v56)(v55, OpaqueTypeMetadata2);
}

void sub_1BA239CE0(uint64_t a1)
{
  if (!qword_1EBBEEDB0)
  {
    sub_1B9F58524();
    v1 = sub_1BA4A5958();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEDB0);
    }
  }
}

uint64_t sub_1BA239D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  v22 = a6;
  sub_1B9F892AC(255, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  v28 = a2;
  v29 = a4;
  swift_getOpaqueTypeMetadata2();
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A5268();
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata2();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v10 = sub_1BA4A6268();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - v17;
  sub_1BA4A5878();
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = v21;
  v27 = a1;
  sub_1BA4A6258();
  swift_getWitnessTable();
  sub_1B9F51AA8(v14, v10, v18);
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_1B9F51AA8(v18, v10, v22);
  return (v19)(v18, v10);
}

void sub_1BA23A080(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v91 = a4;
  v98 = a5;
  v79 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v77 = &v76 - v10;
  v88 = v11;
  v104 = v11;
  v105 = v12;
  v90 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  swift_getTupleTypeMetadata2();
  v13 = sub_1BA4A6428();
  WitnessTable = swift_getWitnessTable();
  v83 = v13;
  v82 = WitnessTable;
  v15 = sub_1BA4A5268();
  v86 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v85 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v81 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v84 = &v76 - v23;
  v89 = a3;
  v93 = sub_1BA4A58F8();
  v97 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v24);
  v96 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v95 = &v76 - v28;
  sub_1B9F892AC(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  v92 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v94 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v76 - v34;
  v36 = *(a1 + 32);
  v104 = *(a1 + 24);
  v105 = v36;
  sub_1B9F252FC();

  v37 = MEMORY[0x1E69E6158];
  v38 = sub_1BA4A5E18();
  v40 = v39;
  v104 = v38;
  v105 = v39;
  v42 = v41 & 1;
  LOBYTE(v106) = v41 & 1;
  v107 = v43;
  sub_1BA23E420(0, &qword_1EDC6E330, v37, MEMORY[0x1E69E6F90]);
  v44 = swift_allocObject();
  v80 = xmmword_1BA4B5460;
  *(v44 + 16) = xmmword_1BA4B5460;
  v45 = *(a1 + 112);
  *(v44 + 32) = *(a1 + 104);
  *(v44 + 40) = v45;
  *(v44 + 48) = 0x656C746954;
  *(v44 + 56) = 0xE500000000000000;

  v46 = sub_1BA4A6AE8();

  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (v47)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v87 = v35;
    sub_1BA4A5F18();

    sub_1BA102AF4(v38, v40, v42);

    v48 = *a1;
    v49 = *(a1 + 8);
    v50 = *(a1 + 16);
    v51 = v89;
    v104 = v88;
    v105 = v89;
    v52 = v91;
    v106 = v90;
    v107 = v91;
    type metadata accessor for InteractivePickerRow(0, &v104);
    v104 = v48;
    v105 = v49;
    LOBYTE(v106) = v50 & 1;
    sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v53 = MEMORY[0x1BFAF0CD0](v103);
    if ((v103[0] & 1) != 0 || !*(a1 + 96))
    {
      MEMORY[0x1EEE9AC00](v53, v54);
      *(&v76 - 6) = v61;
      *(&v76 - 5) = v51;
      *(&v76 - 4) = v62;
      *(&v76 - 3) = v52;
      *(&v76 - 2) = a1;
      sub_1BA23E420(0, &qword_1EBBEEF50, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v80;
      v64 = sub_1BA4A5B38();
      *(inited + 32) = v64;
      v65 = sub_1BA4A5B58();
      *(inited + 33) = v65;
      sub_1BA4A5B48();
      sub_1BA4A5B48();
      if (sub_1BA4A5B48() != v64)
      {
        sub_1BA4A5B48();
      }

      sub_1BA4A5B48();
      if (sub_1BA4A5B48() != v65)
      {
        sub_1BA4A5B48();
      }

      v60 = v87;
      v66 = v81;
      sub_1BA4A5258();
      v67 = swift_getWitnessTable();
      v68 = v84;
      sub_1B9F51AA8(v66, v15, v84);
      v69 = *(v86 + 8);
      v69(v66, v15);
      v70 = v85;
      sub_1B9F51AA8(v68, v15, v85);
      v59 = v95;
      sub_1BA100874(v70, v15, v51, v67, v52);
      v69(v70, v15);
      v69(v68, v15);
    }

    else
    {
      v55 = v78;
      (*(a1 + 80))(v53);
      v56 = v77;
      sub_1B9F51AA8(v55, v51, v77);
      v57 = *(v79 + 8);
      v57(v55, v51);
      sub_1B9F51AA8(v56, v51, v55);
      v58 = swift_getWitnessTable();
      v59 = v95;
      sub_1B9F511C0(v55, v15, v51, v58, v52);
      v57(v55, v51);
      v57(v56, v51);
      v60 = v87;
    }

    v71 = v94;
    sub_1BA23E0B4(v60, v94);
    v104 = v71;
    v73 = v96;
    v72 = v97;
    v74 = v93;
    (*(v97 + 16))(v96, v59, v93);
    v105 = v73;
    v103[0] = v92;
    v103[1] = v74;
    v101 = sub_1BA102EC0();
    v99 = swift_getWitnessTable();
    v100 = v52;
    v102 = swift_getWitnessTable();
    sub_1B9F50770(&v104, 2uLL, v103);
    v75 = *(v72 + 8);
    v75(v59, v74);
    sub_1BA23E184(v60);
    v75(v73, v74);
    sub_1BA23E184(v71);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA23AA50@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  WitnessTable = a3;
  v52 = a6;
  v51 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v10;
  v62 = v11;
  v49 = MEMORY[0x1E697CEA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v48 = &v39 - v17;
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v18 = sub_1BA4A6218();
  v41 = *(v18 - 8);
  v19 = v41;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v39 - v25;
  v42 = &v39 - v25;
  v53 = a2;
  v54 = WitnessTable;
  v55 = a4;
  v56 = v47;
  v57 = a1;
  sub_1BA4A5798();
  sub_1BA4A6208();
  v40 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_1B9F51AA8(v22, v18, v26);
  v27 = *(v19 + 8);
  v43 = v19 + 8;
  v47 = v27;
  v28 = (v27)(v22, v18);
  v29 = v44;
  (*(a1 + 64))(v28);
  sub_1BA4A5EF8();
  (*(v51 + 8))(v29, a2);
  v61 = a2;
  v62 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v48;
  v32 = OpaqueTypeMetadata2;
  sub_1B9F51AA8(v14, OpaqueTypeMetadata2, v48);
  v33 = v50;
  v34 = *(v50 + 8);
  v34(v14, v32);
  v35 = v42;
  v36 = v40;
  (*(v41 + 16))(v22, v42, v40);
  v61 = v22;
  (*(v33 + 16))(v14, v31, v32);
  v62 = v14;
  v60[0] = v36;
  v60[1] = v32;
  v58 = WitnessTable;
  v59 = OpaqueTypeConformance2;
  sub_1B9F50770(&v61, 2uLL, v60);
  v34(v31, v32);
  v37 = v47;
  v47(v35, v36);
  v34(v14, v32);
  return v37(v22, v36);
}

uint64_t sub_1BA23AF34@<X0>(void (**a1)(__n128)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a5;
  v41 = a3;
  v48 = a6;
  v9 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v53 = v12;
  *(&v53 + 1) = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v41 - v21;
  a1[8](v20);
  sub_1BA4A5EF8();
  (*(v9 + 8))(v11, a2);
  *&v53 = a2;
  v42 = a4;
  *(&v53 + 1) = a4;
  v23 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v22;
  v45 = OpaqueTypeConformance2;
  sub_1B9F51AA8(v17, OpaqueTypeMetadata2, v22);
  v46 = *(v23 + 8);
  v46(v17, OpaqueTypeMetadata2);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  if (*(a1 + 96) == 1)
  {
    v30 = *(a1 + 5);
    v57 = *(a1 + 4);
    v58 = v30;
    v59 = *(a1 + 6);
    v60 = a1[14];
    v31 = *(a1 + 1);
    v53 = *a1;
    v32 = *(a1 + 2);
    v33 = *(a1 + 3);
    v54 = v31;
    v55 = v32;
    v56 = v33;
    v49 = a2;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v34 = type metadata accessor for InteractivePickerRow(0, &v49);
    sub_1BA239084(v34, &v49);
    v26 = v49;
    v29 = v50;
    v27 = v51;
    v28 = v52;
    v25.n128_f64[0] = sub_1BA1AE4BC(v49, v50, v51, v52);
  }

  v35 = v47;
  (*(v23 + 16))(v17, v47, OpaqueTypeMetadata2, v25);
  v65 = 0;
  v66 = 1;
  v49 = v17;
  v50 = &v65;
  *&v53 = v26;
  *(&v53 + 1) = v29;
  *&v54 = v27;
  *(&v54 + 1) = v28;
  v51 = &v53;
  v64[0] = OpaqueTypeMetadata2;
  v64[1] = MEMORY[0x1E6981840];
  sub_1BA23D8A8(0, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  v64[2] = v36;
  v61 = v45;
  v62 = MEMORY[0x1E6981838];
  v63 = sub_1BA23E21C();
  sub_1B9F50770(&v49, 3uLL, v64);
  v37 = sub_1BA23E3B0(v26, v29, v27, v28);
  v38 = v46;
  (v46)(v35, OpaqueTypeMetadata2, v37);
  v39 = sub_1BA23E3B0(v53, *(&v53 + 1), v54, *(&v54 + 1));
  return v38(v17, OpaqueTypeMetadata2, v39);
}

uint64_t sub_1BA23B394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  v22 = a6;
  sub_1B9F892AC(255, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  v28 = a2;
  v29 = a4;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  sub_1BA4A58F8();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v10 = sub_1BA4A6218();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - v17;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = v21;
  v27 = a1;
  sub_1BA4A5798();
  sub_1BA4A6208();
  swift_getWitnessTable();
  sub_1B9F51AA8(v14, v10, v18);
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_1B9F51AA8(v18, v10, v22);
  return (v19)(v18, v10);
}

void sub_1BA23B6B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a5;
  v93 = a6;
  v76 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v75 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v74 = &v73 - v13;
  sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  v83 = a2;
  v102 = a2;
  v103 = a4;
  v85 = a4;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  v14 = sub_1BA4A6428();
  WitnessTable = swift_getWitnessTable();
  v78 = v14;
  v77 = WitnessTable;
  v16 = sub_1BA4A6218();
  v81 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v80 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v79 = &v73 - v21;
  v84 = a3;
  v22 = sub_1BA4A58F8();
  v91 = *(v22 - 8);
  v92 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v90 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v89 = &v73 - v27;
  sub_1B9F892AC(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  v87 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v88 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v73 - v33;
  v35 = *(a1 + 32);
  v102 = *(a1 + 24);
  v103 = v35;
  sub_1B9F252FC();

  v36 = MEMORY[0x1E69E6158];
  v37 = sub_1BA4A5E18();
  v39 = v38;
  v102 = v37;
  v103 = v38;
  v41 = v40 & 1;
  LOBYTE(v104) = v40 & 1;
  v105 = v42;
  sub_1BA23E420(0, &qword_1EDC6E330, v36, MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BA4B5460;
  v44 = *(a1 + 112);
  *(v43 + 32) = *(a1 + 104);
  *(v43 + 40) = v44;
  *(v43 + 48) = 0x656C746954;
  *(v43 + 56) = 0xE500000000000000;

  v45 = sub_1BA4A6AE8();

  v46 = HKUIJoinStringsForAutomationIdentifier();

  if (v46)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v82 = v34;
    sub_1BA4A5F18();

    sub_1BA102AF4(v37, v39, v41);

    v47 = *a1;
    v48 = *(a1 + 8);
    v49 = *(a1 + 16);
    v50 = v84;
    v102 = v83;
    v103 = v84;
    v51 = v86;
    v104 = v85;
    v105 = v86;
    type metadata accessor for InteractivePickerRow(0, &v102);
    v102 = v47;
    v103 = v48;
    LOBYTE(v104) = v49 & 1;
    sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v52 = MEMORY[0x1BFAF0CD0](v99);
    v54 = v51;
    if ((v99[0] & 1) != 0 || !*(a1 + 96))
    {
      MEMORY[0x1EEE9AC00](v52, v53);
      *(&v73 - 6) = v61;
      *(&v73 - 5) = v50;
      *(&v73 - 4) = v62;
      *(&v73 - 3) = v51;
      *(&v73 - 2) = a1;
      sub_1BA4A5798();
      v63 = v80;
      sub_1BA4A6208();
      v64 = swift_getWitnessTable();
      v65 = v79;
      sub_1B9F51AA8(v63, v16, v79);
      v66 = *(v81 + 8);
      v66(v63, v16);
      sub_1B9F51AA8(v65, v16, v63);
      v60 = v89;
      sub_1BA100874(v63, v16, v50, v64, v51);
      v66(v63, v16);
      v66(v65, v16);
    }

    else
    {
      v55 = *(a1 + 80);
      v56 = v75;
      v55(v52);
      v57 = v74;
      sub_1B9F51AA8(v56, v50, v74);
      v58 = *(v76 + 8);
      v58(v56, v50);
      sub_1B9F51AA8(v57, v50, v56);
      v59 = swift_getWitnessTable();
      v60 = v89;
      sub_1B9F511C0(v56, v16, v50, v59, v54);
      v58(v56, v50);
      v58(v57, v50);
    }

    v67 = v82;
    v68 = v88;
    sub_1BA23E0B4(v82, v88);
    v100 = 0;
    v101 = 1;
    v102 = v68;
    v103 = &v100;
    v70 = v90;
    v69 = v91;
    v71 = v92;
    (*(v91 + 16))(v90, v60, v92);
    v104 = v70;
    v99[0] = v87;
    v99[1] = MEMORY[0x1E6981840];
    v99[2] = v71;
    v96 = sub_1BA102EC0();
    v97 = MEMORY[0x1E6981838];
    v94 = swift_getWitnessTable();
    v95 = v54;
    v98 = swift_getWitnessTable();
    sub_1B9F50770(&v102, 3uLL, v99);
    v72 = *(v69 + 8);
    v72(v60, v71);
    sub_1BA23E184(v67);
    v72(v70, v71);
    sub_1BA23E184(v68);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BA23BF64@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a3;
  v59 = a6;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v64 = v13;
  *(&v64 + 1) = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v15);
  v61 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v50 - v20;
  v22 = *(a1 + 41);
  v50 = a5;
  if ((v22 & 1) != 0 || *(a1 + 96) != 1)
  {
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 1;
  }

  else
  {
    v23 = a1[5];
    v68 = a1[4];
    v69 = v23;
    v70 = a1[6];
    v71 = *(a1 + 14);
    v24 = a1[1];
    v64 = *a1;
    v65 = v24;
    v25 = a1[3];
    v66 = a1[2];
    v67 = v25;
    v76 = a2;
    v77 = v51;
    v78 = a4;
    v79 = a5;
    v26 = type metadata accessor for InteractivePickerRow(0, &v76);
    sub_1BA239084(v26, &v76);
    v58 = v76;
    v55 = v77;
    v57 = v78;
    v56 = v79;
    v19.n128_f64[0] = sub_1BA1AE4BC(v76, v77, v78, v79);
  }

  (*(a1 + 8))(v19);
  v27 = v61;
  sub_1BA4A5EF8();
  (*(v10 + 8))(v12, a2);
  *&v64 = a2;
  *(&v64 + 1) = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v21;
  v29 = OpaqueTypeMetadata2;
  v53 = OpaqueTypeConformance2;
  sub_1B9F51AA8(v27, OpaqueTypeMetadata2, v21);
  v54 = *(v63 + 8);
  v52 = v63 + 8;
  v54(v27, v29);
  if ((v22 & 1) != 0 && *(a1 + 96) == 1)
  {
    v31 = a1[5];
    v68 = a1[4];
    v69 = v31;
    v70 = a1[6];
    v71 = *(a1 + 14);
    v32 = a1[1];
    v64 = *a1;
    v65 = v32;
    v33 = a1[3];
    v66 = a1[2];
    v67 = v33;
    v76 = a2;
    v77 = v51;
    v78 = a4;
    v79 = v50;
    v34 = type metadata accessor for InteractivePickerRow(0, &v76);
    sub_1BA239084(v34, &v76);
    v35 = v76;
    v36 = v77;
    v37 = v78;
    v38 = v79;
    v30.n128_f64[0] = sub_1BA1AE4BC(v76, v77, v78, v79);
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 1;
  }

  v39 = v58;
  *&v64 = v58;
  v40 = v55;
  *(&v64 + 1) = v55;
  v41 = v57;
  *&v65 = v57;
  v42 = v56;
  *(&v65 + 1) = v56;
  v80[0] = &v64;
  v43 = v61;
  v44 = OpaqueTypeMetadata2;
  (*(v63 + 16))(v61, v60, OpaqueTypeMetadata2, v30);
  v76 = v35;
  v77 = v36;
  v78 = v37;
  v79 = v38;
  v80[1] = v43;
  v80[2] = &v76;
  sub_1BA23D8A8(0, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
  v75[0] = v45;
  v75[1] = v44;
  v75[2] = v45;
  v72 = sub_1BA23E21C();
  v73 = v53;
  v74 = v72;
  sub_1B9F50770(v80, 3uLL, v75);
  sub_1BA23E3B0(v39, v40, v41, v42);
  v46 = sub_1BA23E3B0(v35, v36, v37, v38);
  v47 = v54;
  (v54)(v60, v44, v46);
  v48 = sub_1BA23E3B0(v76, v77, v78, v79);
  v47(v43, v44, v48);
  return sub_1BA23E3B0(v64, *(&v64 + 1), v65, *(&v65 + 1));
}

uint64_t sub_1BA23C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = swift_getKeyPath();
  sub_1BA23CB10(0, &qword_1EDC6B6E0, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  result = type metadata accessor for AXLayoutView(0, v21);
  v19 = (a9 + *(result + 52));
  *v19 = a3;
  v19[1] = a4;
  v20 = (a9 + *(result + 56));
  *v20 = a1;
  v20[1] = a2;
  return result;
}

double sub_1BA23C5F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 96);
  if (*(result + 96))
  {
    v7 = *result;
    v8 = result[1];
    v9 = *(result + 16);
    *&v16 = a2;
    *(&v16 + 1) = a3;
    *&v17 = a4;
    *(&v17 + 1) = a5;
    v10 = type metadata accessor for InteractivePickerRow(0, &v16);
    *&v16 = v7;
    *(&v16 + 1) = v8;
    LOBYTE(v17) = v9 & 1;
    sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x1BFAF0CD0](&v24);
    if ((v24 & 1) == 0 || v5 == 1)
    {
      v13 = *(result + 5);
      v20 = *(result + 4);
      v21 = v13;
      v22 = *(result + 6);
      v23 = result[14];
      v14 = *(result + 1);
      v16 = *result;
      v17 = v14;
      v15 = *(result + 3);
      v18 = *(result + 2);
      v19 = v15;
      return sub_1BA23C760(v10, v11);
    }
  }

  return v12;
}

unint64_t sub_1BA23C6F4()
{
  result = qword_1EBBEEDC0[0];
  if (!qword_1EBBEEDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEEDC0);
  }

  return result;
}

double sub_1BA23C760(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    a1 = (v3)(a1, a2);
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  sub_1BA4A6408();
  sub_1BA4A52D8();

  return result;
}

double sub_1BA23C840(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v13 = v2;
  v9 = v2;
  v10 = v1;
  v11 = v3;
  sub_1BA23DFEC(&v13, v7);
  sub_1BA23E420(0, &qword_1EBBEEF30, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v5 = v4;

  MEMORY[0x1BFAF0CD0](&v12, v5);
  v7[0] = v2;
  v7[1] = v1;
  v8 = v3;
  sub_1BA4A62A8();
  sub_1BA23E048(&v13);

  return result;
}

uint64_t sub_1BA23C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BA23C998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1BA23C9E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA23CA5C(uint64_t a1)
{
  sub_1BA23CB10(319, &qword_1EDC6B6D0, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1B9F37BB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA23CB10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA4A53C8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA23CBB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a1;
  v45 = a3;
  v8 = a1;
  v43[1] = a5;
  sub_1BA23E588(0, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v43 - v12;
  sub_1BA23DAFC(0, &qword_1EBBEEF00, sub_1BA23DB58);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v43 - v17;
  v19 = swift_allocObject();
  v19[2] = v8;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  sub_1BA23D798(0);
  sub_1BA23D924();

  v20 = v15;
  sub_1BA4A61C8();
  LOBYTE(v8) = sub_1BA4A5B78();
  sub_1BA4A5188();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1BA23DAFC(0, &qword_1EBBEEED0, sub_1BA23D734);
  v30 = &v13[*(v29 + 36)];
  *v30 = v8;
  *(v30 + 1) = v22;
  *(v30 + 2) = v24;
  *(v30 + 3) = v26;
  *(v30 + 4) = v28;
  v30[40] = 0;
  v13[*(v10 + 36)] = 0;
  v31 = swift_allocObject();
  v33 = v44;
  v32 = v45;
  v31[2] = v44;
  v31[3] = a2;
  v31[4] = v32;
  v31[5] = a4;
  sub_1BA23DC14();

  sub_1BA4A5F08();

  sub_1BA23DE30(v13);
  v34 = sub_1BA4A5B78();
  sub_1BA4A5188();
  v35 = &v18[*(v20 + 36)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  sub_1BA23E420(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BA4B5460;
  *(v40 + 32) = v33;
  *(v40 + 40) = a2;
  *(v40 + 48) = 0x7475427261656C43;
  *(v40 + 56) = 0xEB000000006E6F74;

  v41 = sub_1BA4A6AE8();

  v42 = HKUIJoinStringsForAutomationIdentifier();

  if (v42)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA23DEC4();
    sub_1BA4A5F18();

    sub_1B9F9B98C(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA23CF78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A6128();
  v3 = [objc_opt_self() systemGray3Color];
  v4 = sub_1BA4A6048();
  v5 = sub_1BA4A5C18();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v5;
  return result;
}

uint64_t sub_1BA23D004@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A5718();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA23CB10(0, &qword_1EDC6B6E0, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  sub_1BA23D6B4(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BA4A53C8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_1BA4A6FB8();
    v15 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BA23D254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = *(a1 + 16);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = &v39 - v10;
  v12 = *(v11 + 24);
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v39 = &v39 - v18;
  v19 = sub_1BA4A53C8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (&v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1BA4A58F8();
  v44 = *(v24 - 8);
  v45 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v43 = &v39 - v26;
  v27 = v3;
  sub_1BA23D004(v23);
  v28 = sub_1BA4A53B8();
  v29 = (*(v20 + 8))(v23, v19);
  if (v28)
  {
    (*(v27 + *(a1 + 56)))(v29);
    v30 = *(a1 + 40);
    v31 = v39;
    sub_1B9F51AA8(v15, v12, v39);
    v32 = *(v40 + 8);
    v32(v15, v12);
    sub_1B9F51AA8(v31, v12, v15);
    v33 = *(a1 + 32);
    v34 = v43;
    sub_1BA100874(v15, v12, v5, v30, v33);
    v32(v15, v12);
    v32(v31, v12);
  }

  else
  {
    (*(v27 + *(a1 + 52)))(v29);
    v33 = *(a1 + 32);
    v35 = v41;
    sub_1B9F51AA8(v7, v5, v41);
    v36 = *(v42 + 8);
    v36(v7, v5);
    sub_1B9F51AA8(v35, v5, v7);
    v30 = *(a1 + 40);
    v34 = v43;
    sub_1B9F511C0(v7, v12, v5, v30, v33);
    v36(v7, v5);
    v36(v35, v5);
  }

  v47 = v30;
  v48 = v33;
  v37 = v45;
  swift_getWitnessTable();
  sub_1B9F51AA8(v34, v37, v46);
  return (*(v44 + 8))(v34, v37);
}

uint64_t sub_1BA23D6B4(uint64_t a1, uint64_t a2)
{
  sub_1BA23CB10(0, &qword_1EDC6B6E0, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA23D734(uint64_t a1)
{
  if (!qword_1EBBEEED8)
  {
    sub_1BA23D798(255);
    sub_1BA23D924();
    v1 = sub_1BA4A61F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEED8);
    }
  }
}

void sub_1BA23D798(uint64_t a1)
{
  if (!qword_1EBBEEEE0)
  {
    sub_1B9F892AC(255, &qword_1EBBEEEE8, sub_1BA23D850, MEMORY[0x1E6981748]);
    sub_1BA23D8A8(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEEEE0);
    }
  }
}

void sub_1BA23D850()
{
  if (!qword_1EBBEC988)
  {
    v0 = sub_1BA4A59F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC988);
    }
  }
}

void sub_1BA23D8A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BA23E420(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA23D924()
{
  result = qword_1EBBEEEF0;
  if (!qword_1EBBEEEF0)
  {
    sub_1BA23D798(255);
    sub_1BA23D9A4();
    sub_1BA23DA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEEF0);
  }

  return result;
}

unint64_t sub_1BA23D9A4()
{
  result = qword_1EBBEEEF8;
  if (!qword_1EBBEEEF8)
  {
    sub_1B9F892AC(255, &qword_1EBBEEEE8, sub_1BA23D850, MEMORY[0x1E6981748]);
    sub_1BA23E13C(&qword_1EBBEC9F0, sub_1BA23D850, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEEF8);
  }

  return result;
}

unint64_t sub_1BA23DA78()
{
  result = qword_1EDC5EC50;
  if (!qword_1EDC5EC50)
  {
    sub_1BA23D8A8(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EC50);
  }

  return result;
}

void sub_1BA23DAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1BA23DB58(uint64_t a1)
{
  if (!qword_1EBBEEF08)
  {
    sub_1BA23E588(255, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
    sub_1BA23DC14();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEEF08);
    }
  }
}

unint64_t sub_1BA23DC14()
{
  result = qword_1EBBEEF10;
  if (!qword_1EBBEEF10)
  {
    sub_1BA23E588(255, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
    sub_1BA23DCFC();
    sub_1BA23E13C(&qword_1EBBEEDB8, sub_1BA239CE0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF10);
  }

  return result;
}

unint64_t sub_1BA23DCFC()
{
  result = qword_1EBBEEF18;
  if (!qword_1EBBEEF18)
  {
    sub_1BA23DAFC(255, &qword_1EBBEEED0, sub_1BA23D734);
    sub_1BA23E13C(&qword_1EBBEEF20, sub_1BA23D734, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF18);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA23DE30(uint64_t a1)
{
  sub_1BA23E588(0, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA23DEC4()
{
  result = qword_1EBBEEF28;
  if (!qword_1EBBEEF28)
  {
    sub_1BA23DAFC(255, &qword_1EBBEEF00, sub_1BA23DB58);
    sub_1BA23E588(255, &qword_1EBBEEEC8, &qword_1EBBEEED0, sub_1BA23D734, sub_1BA239CE0);
    sub_1BA23DC14();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF28);
  }

  return result;
}

uint64_t sub_1BA23E0B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F892AC(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA23E13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA23E184(uint64_t a1)
{
  sub_1B9F892AC(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA23E21C()
{
  result = qword_1EBBEEF38;
  if (!qword_1EBBEEF38)
  {
    sub_1BA23D8A8(255, &qword_1EBBEEDA0, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
    sub_1BA23E2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF38);
  }

  return result;
}

unint64_t sub_1BA23E2C0()
{
  result = qword_1EBBEEF40;
  if (!qword_1EBBEEF40)
  {
    sub_1BA23E420(255, &qword_1EBBEEDA8, &type metadata for ClearButtonView, MEMORY[0x1E69E6720]);
    sub_1BA23E35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF40);
  }

  return result;
}

unint64_t sub_1BA23E35C()
{
  result = qword_1EBBEEF48;
  if (!qword_1EBBEEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF48);
  }

  return result;
}

double sub_1BA23E3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    return sub_1BA1AE55C(a1, a2, a3, a4);
  }

  return result;
}

void sub_1BA23E420(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BA23E4A0()
{
  result = qword_1EBBEEF58;
  if (!qword_1EBBEEF58)
  {
    sub_1BA23E588(255, &qword_1EBBEEF60, &qword_1EBBEEF00, sub_1BA23DB58, MEMORY[0x1E697CBE8]);
    sub_1BA23DEC4();
    sub_1BA23E13C(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF58);
  }

  return result;
}

void sub_1BA23E588(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA23DAFC(255, a3, a4);
    a5(255);
    v7 = sub_1BA4A5418();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t AttributedString.mapOutUIFonts()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A1278();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A12C8();
  (*(*(v8 - 8) + 16))(a1, v1, v8);
  sub_1BA4A1288();
  sub_1B9F4D364(v7, a1);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BA23E720(uint64_t *a1)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI31SummarySharingContactPickerCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v8);
  swift_endAccess();
  sub_1B9F68124(v1 + v8, v15);
  if (v16)
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v9 = v14[2];
      MEMORY[0x1BFAF2040]();
      v10 = v9;
      sub_1BA4A43D8();

      sub_1BA4A43B8();
      v16 = v3;
      v17 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
      (*(v4 + 16))(boxed_opaque_existential_1, v7, v3);
      MEMORY[0x1BFAF1EF0](v15);

      sub_1B9F7B644(a1);
      return (*(v4 + 8))(v7, v3);
    }

    v13 = a1;
  }

  else
  {
    sub_1B9F7B644(a1);
    v13 = v15;
  }

  return sub_1B9F7B644(v13);
}

void (*sub_1BA23E90C(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 128) = v1;
  v6 = sub_1BA4A4428();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI31SummarySharingContactPickerCell_item;
  v5[19] = v8;
  v5[20] = v9;
  swift_beginAccess();
  return sub_1BA23E9FC;
}

void sub_1BA23E9FC(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1B9F68124(*(v3 + 128) + *(v3 + 160), v3);
    if (*(v3 + 24))
    {
      sub_1B9FCD918();
      if (swift_dynamicCast())
      {
        v5 = *(v3 + 144);
        v4 = *(v3 + 152);
        v6 = *(v3 + 136);
        v7 = *(v3 + 120);
        MEMORY[0x1BFAF2040]();
        v8 = v7;
        sub_1BA4A43D8();

        sub_1BA4A43B8();
        v9 = MEMORY[0x1E69DC110];
        *(v3 + 64) = v6;
        *(v3 + 72) = v9;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 40));
        (*(v5 + 16))(boxed_opaque_existential_1, v4, v6);
        MEMORY[0x1BFAF1EF0](v3 + 40);

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      sub_1B9F7B644(v3);
    }
  }

  free(*(v3 + 152));

  free(v3);
}

id sub_1BA23EC74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingContactPickerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA23ECDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31SummarySharingContactPickerCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

void (*sub_1BA23ED38(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1BA23E90C(v2);
  return sub_1B9FCDD98;
}

unint64_t sub_1BA23EDB8(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v4 = [a3 CGImage];
  if (v4)
  {
    v5 = v4;
    v6 = CGImageGetDataProvider(v4);

    if (v6)
    {
      v7 = CGDataProviderCopyData(v6);

      sub_1B9F0D430(0, &qword_1EBBEEF88, type metadata accessor for CFData);
      sub_1BA23F0C0();
      sub_1BA4A7AB8();
    }
  }

  sub_1BA23F070();
  v8 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v8);

  return 0xD00000000000001ALL;
}

uint64_t sub_1BA23EEF0()
{
  type metadata accessor for SummarySharingContactPickerCell();
  sub_1BA23EFD8();
  return sub_1BA4A6808();
}

uint64_t sub_1BA23EF34(uint64_t a1)
{
  v2 = sub_1BA23F01C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

unint64_t sub_1BA23EF84()
{
  result = qword_1EBBEEF70;
  if (!qword_1EBBEEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF70);
  }

  return result;
}

unint64_t sub_1BA23EFD8()
{
  result = qword_1EBBEEF78;
  if (!qword_1EBBEEF78)
  {
    type metadata accessor for SummarySharingContactPickerCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEEF78);
  }

  return result;
}

unint64_t sub_1BA23F01C()
{
  result = qword_1EBBEEF80;
  if (!qword_1EBBEEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEF80);
  }

  return result;
}

void sub_1BA23F070()
{
  if (!qword_1EDC6B640)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B640);
    }
  }
}

unint64_t sub_1BA23F0C0()
{
  result = qword_1EBBE9468;
  if (!qword_1EBBE9468)
  {
    type metadata accessor for CFData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9468);
  }

  return result;
}

void sub_1BA23F118(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *&a3[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_sharingEntryStore];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v11[4] = sub_1BA243474;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BA454240;
  v11[3] = &block_descriptor_83_0;
  v8 = _Block_copy(v11);
  v9 = v6;

  v10 = a3;

  [v9 fetchSharingEntriesWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_1BA23F224(uint64_t a1, void *a2, __objc2_class **a3, unint64_t a4, uint64_t a5)
{
  sub_1BA243838(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v33 - v13;
  sub_1BA243480(0);
  v16 = v15;
  *&v18 = MEMORY[0x1EEE9AC00](v15, v17).n128_u64[0];
  v20 = (&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v21 = a2;
    SummarySharingOnboardingError.init(error:)(a2, v20);
LABEL_30:
    swift_storeEnumTagMultiPayload();
    goto LABEL_31;
  }

  v40 = v14;
  v22 = [*(a5 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_sharingEntryStore) sharingEntries];
  sub_1B9F0ADF8(0, &qword_1EBBE9FC0, 0x1E696C4E8);
  v23 = sub_1BA4A6B08();

  v42 = MEMORY[0x1E69E7CC0];
  if (v23 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v34 = v11;
    v35 = v10;
    v36 = v16;
    v37 = v20;
    v38 = a4;
    v39 = a3;
    v11 = 0;
    v10 = v23 & 0xC000000000000001;
    v16 = v23 & 0xFFFFFFFFFFFFFF8;
    a3 = &off_1E7EEF000;
    v41 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v25 = MEMORY[0x1BFAF2860](v11, v23);
      }

      else
      {
        if (v11 >= *(v16 + 16))
        {
          goto LABEL_19;
        }

        v25 = *(v23 + 8 * v11 + 32);
      }

      v26 = v25;
      a4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v25 direction] == 1 && objc_msgSend(v26, sel_status) == 1 && (v27 = objc_msgSend(v26, sel_profileIdentifier)) != 0)
      {

        sub_1BA4A7ED8();
        v20 = i;
        sub_1BA4A7F18();
        sub_1BA4A7F28();
        sub_1BA4A7EE8();
        v16 = v41;
      }

      else
      {
      }

      ++v11;
      if (a4 == i)
      {
        v28 = v42;
        a3 = v39;
        v20 = v37;
        v11 = v34;
        v10 = v35;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v29 = sub_1BA4A7CC8();
  }

  else
  {
    v29 = *(v28 + 16);
  }

  v30 = v40;

  if (qword_1EBBE8328 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v10, qword_1EBBEB818);
  (*(v11 + 16))(v30, v31, v10);
  sub_1BA4A1CA8();
  (*(v11 + 8))(v30, v10);
  if (v29 >= v42)
  {
    *v20 = 1;
    type metadata accessor for SummarySharingOnboardingError(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_30;
  }

  type metadata accessor for SummarySharingOnboardingError(0);
  sub_1BA2425AC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
  sub_1BA4A84E8();
LABEL_31:
  (a3)(v20);
  return sub_1BA2437D8(v20, sub_1BA243480);
}

uint64_t sub_1BA23F6A4()
{
  sub_1BA2432D8(0);
  v13 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  sub_1BA2433F8(0);
  swift_allocObject();
  v6 = v0;
  v14 = sub_1BA4A4EA8();
  v7 = MEMORY[0x1E695C038];
  sub_1BA2425AC(&qword_1EBBEF080, sub_1BA2433F8, MEMORY[0x1E695C038]);
  v8 = sub_1BA4A4F98();

  v14 = v8;
  *(swift_allocObject() + 16) = v6;
  v9 = v6;
  sub_1BA4A4D08();
  sub_1BA2433C4(0);
  sub_1BA242584(0);
  sub_1BA2425AC(&qword_1EBBEF070, sub_1BA2433C4, MEMORY[0x1E695BED8]);
  sub_1BA2425AC(&qword_1EBBEF058, sub_1BA242584, v7);
  sub_1BA4A5088();

  sub_1BA2425AC(&qword_1EBBEF088, sub_1BA2432D8, MEMORY[0x1E695BE40]);
  v10 = v13;
  v11 = sub_1BA4A4F98();
  (*(v2 + 8))(v5, v10);
  return v11;
}

void sub_1BA23F970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v28 = a6;
  v29 = a7;
  v26 = a1;
  v27 = a5;
  v9 = sub_1BA4A1798();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A33C8();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_sharingEntryStore);
  (*(v15 + 16))(v19, a3 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation, v14, v17);
  v21 = v20;
  sub_1BA4A3358();
  (*(v15 + 8))(v19, v14);
  v22 = sub_1BA4A1758();
  (*(v10 + 8))(v13, v9);
  v23 = swift_allocObject();
  v24 = v27;
  *(v23 + 16) = v26;
  *(v23 + 24) = a2;
  aBlock[4] = v24;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = v28;
  v25 = _Block_copy(aBlock);

  [v21 *v29];
  _Block_release(v25);
}

uint64_t sub_1BA23FBDC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEF90 = result;
  *algn_1EBBEEF98 = v1;
  return result;
}

uint64_t sub_1BA23FC88()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFA0 = result;
  *algn_1EBBEEFA8 = v1;
  return result;
}

uint64_t sub_1BA23FD34()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFB0 = result;
  *algn_1EBBEEFB8 = v1;
  return result;
}

uint64_t sub_1BA23FDE0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFC0 = result;
  *algn_1EBBEEFC8 = v1;
  return result;
}

uint64_t sub_1BA23FE8C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFD0 = result;
  *algn_1EBBEEFD8 = v1;
  return result;
}

uint64_t sub_1BA23FF38()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFE0 = result;
  *algn_1EBBEEFE8 = v1;
  return result;
}

uint64_t sub_1BA23FFE4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEEFF0 = result;
  *algn_1EBBEEFF8 = v1;
  return result;
}

uint64_t sub_1BA240090@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BA4A79E8();
  *a2 = result;
  return result;
}

double sub_1BA2400CC()
{
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton] showsBusyIndicator];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
  if (v1)
  {
    [v1 setEnabled_];
  }

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
  if (v2)
  {
    [v2 setEnabled_];
  }

  v3 = sub_1BA23F6A4();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v4 = sub_1BA4A1318();
  v6 = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA00B570(v3, v0, v4, v6, v0, v7);

  return result;
}

void sub_1BA24024C(char a1, uint64_t a2)
{
  v3 = sub_1BA4A33C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [*(Strong + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton) hidesBusyIndicator];
    v10 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
    if (v10)
    {
      [v10 setEnabled_];
    }

    v11 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
    if (v11)
    {
      [v11 setEnabled_];
    }

    if (a1)
    {
      type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
      v12 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthStore;
      v13 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthStore];
      v21 = 1;
      LOWORD(v20[0]) = 0;
      static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v13, &v21, v14, v20);
      (*(v4 + 16))(v7, &v9[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation], v3);
      v15 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_selectedContactPhotoPublisher];
      sub_1B9F0A534(&v9[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore], v20);
      v16 = *&v9[v12];
      objc_allocWithZone(type metadata accessor for SummarySharingInvitationEnableUpdatesViewController(0));

      v17 = v16;
      v18 = sub_1BA12A050(v7, v15, v20, v17);

      [v9 showViewController:v18 sender:0];
      v9 = v18;
    }
  }
}

double sub_1BA2404A0()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton];
  if (v1)
  {
    [v1 setEnabled_];
  }

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
  if (v2)
  {
    [v2 setEnabled_];
  }

  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
  if (v3)
  {
    [v3 setEnabled_];
  }

  *(swift_allocObject() + 16) = v0;
  sub_1BA242584(0);
  swift_allocObject();
  v4 = v0;
  sub_1BA4A4EA8();
  sub_1BA2425AC(&qword_1EBBEF058, sub_1BA242584, MEMORY[0x1E695C038]);
  v5 = sub_1BA4A4F98();

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA00BBF0(v5, v4, v6, v8, v4, v9);

  return result;
}

void sub_1BA2406C8(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton);
    if (v5)
    {
      [v5 setEnabled_];
    }

    v6 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
    if (v6)
    {
      [v6 setEnabled_];
    }

    v7 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
    if (v7)
    {
      [v7 setEnabled_];
    }

    if (a1)
    {
      type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
      v8 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthStore];
      v11 = 1;
      v10 = 256;
      static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v8, &v11, v9, &v10);
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1BA240858()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore));

  v1 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton);
}

uint64_t type metadata accessor for OBKSummarySharingInvitationTopicsViewController(uint64_t a1)
{
  result = qword_1EBBEF018;
  if (!qword_1EBBEF018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA240A9C(uint64_t a1)
{
  result = sub_1BA4A33C8();
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

unint64_t sub_1BA240B64(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v135 = a5;
  ObjectType = swift_getObjectType();
  v11 = MEMORY[0x1E69E6720];
  sub_1B9F1B620(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v153 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v154 = (&v135 - v17);
  v18 = sub_1BA4A1C68();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v159 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v147 = &v135 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v158 = &v135 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v164 = &v135 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v148 = &v135 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v165 = &v135 - v36;
  v161 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v37);
  v155 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v157 = &v135 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v156 = (&v135 - v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v163 = &v135 - v47;
  sub_1B9F1B620(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v11);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v140 = &v135 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v135 - v53;
  v55 = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_cancellables) = MEMORY[0x1E69E7CC0];
  v143 = a4;
  sub_1B9F0A534(a4, v6 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_healthExperienceStore);
  v56 = type metadata accessor for SummarySharingSelectionFlow(0);
  v57 = *(v56 - 8);
  v58 = *(v57 + 56);
  v139 = v56;
  v138 = v58;
  v137 = v57 + 56;
  (v58)(v54, 1, 1);
  type metadata accessor for SummarySharingSelectedDataTypesContext(0);
  swift_allocObject();

  v141 = v54;
  v60 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(v59, v54);
  v142 = v6;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_selectedDataTypesContext) = v60;
  v172 = v55;
  v61 = a3;
  if (a2)
  {
    v62 = sub_1BA4A33A8();
    v64 = sub_1BA4676CC(v62, v63);

    v65 = sub_1B9F1E00C();
    v172 = v65;
    v66 = *(v65 + 16);
    if (v66 >= *(v65 + 24) >> 1)
    {
      v65 = sub_1B9F1E00C();
      v172 = v65;
    }

    sub_1BA2438CC(0, &qword_1EBBEF0C0, sub_1BA243890, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
    sub_1BA1BA008(v66, v64, &v172, v67, &protocol witness table for DataSourceWithLayout<A>);
    v172 = v65;
  }

  v136 = v61;
  v68 = *(a1 + 16);
  v162 = a1;
  ObjectType = v68;
  if (!v68)
  {
LABEL_22:

    v69 = v141;
    v138(v141, 1, 1, v139);
    sub_1B9F0A534(v143, &v169);
    if (qword_1EBBE83E0 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_23;
  }

  v69 = 0;
  v146 = (v19 + 16);
  v145 = (v19 + 32);
  v144 = *MEMORY[0x1E69A3B68];
  LODWORD(v150) = *MEMORY[0x1E69A3B90];
  v70 = (v19 + 8);
  v71 = MEMORY[0x1E69E7CC0];
  v151 = (v19 + 104);
  v149 = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v72 = v154;
  v73 = v165;
  v152 = v19;
  while (v69 < *(a1 + 16))
  {
    v74 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v75 = *(v160 + 72);
    v76 = v163;
    sub_1BA025290(a1 + v74 + v75 * v69, v163);
    sub_1BA2436E8(v76 + *(v161 + 40), v72, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v77 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    if ((*(*(v77 - 8) + 48))(v72, 1, v77) == 1)
    {
      sub_1BA243768(v72, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v78 = *v151;
      (*v151)(v73, v144, v18);
    }

    else
    {
      v79 = v72 + *(v77 + 40);
      v80 = v148;
      (*v146)(v148, v79, v18);
      sub_1BA2437D8(v72, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      (*v145)(v73, v80, v18);
      v78 = *v151;
    }

    (v78)(v164, v150, v18);
    sub_1BA2425AC(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C20]);
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    if (v169 == v167 && v170 == v168)
    {
      v81 = *v70;
      (*v70)(v164, v18);
      v81(v165, v18);

      a1 = v162;
LABEL_17:
      sub_1BA025350(v163, v156);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BA066E50(0, *(v71 + 16) + 1, 1);
        v71 = v171;
      }

      v86 = *(v71 + 16);
      v85 = *(v71 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1BA066E50((v85 > 1), v86 + 1, 1);
        v71 = v171;
      }

      *(v71 + 16) = v86 + 1;
      sub_1BA025350(v156, v71 + v74 + v86 * v75);
      goto LABEL_8;
    }

    v82 = sub_1BA4A8338();
    v83 = *v70;
    (*v70)(v164, v18);
    v83(v165, v18);
    a1 = v162;

    if (v82)
    {
      goto LABEL_17;
    }

    sub_1BA2437D8(v163, type metadata accessor for SummarySharingSelectableDataTypeItem);
LABEL_8:
    v72 = v154;
    ++v69;
    v73 = v165;
    v19 = v152;
    if (ObjectType == v69)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  swift_once();
LABEL_23:
  v88 = qword_1EBBECA08;
  v87 = unk_1EBBECA10;
  v89 = v140;
  sub_1BA2436E8(v69, v140, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  sub_1B9F1B620(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v90 = (v19[80] + 32) & ~v19[80];
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1BA4B5480;
  v92 = *MEMORY[0x1E69A3B90];
  v164 = *(v19 + 13);
  v165 = v19 + 104;
  (v164)(v91 + v90, v92, v18);
  type metadata accessor for SummarySharingSelectedDataTypesDataSource(0);
  v93 = swift_allocObject();
  *(v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(&v169, v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v94 = (v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v94 = v88;
  v94[1] = v87;
  sub_1BA2436E8(v89, v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  *(v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v91;
  *(v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 0;
  v95 = (v93 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v95 = 0;
  v95[1] = 0;

  v96 = MEMORY[0x1E69E7CC0];
  v97 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  sub_1BA243768(v89, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(&v169);
  sub_1BA243768(v69, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v150 = OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedAlertsDataSource;
  *(v142 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedAlertsDataSource) = v97;
  if (ObjectType)
  {
    v69 = 0;
    v154 = (v19 + 16);
    v151 = (v19 + 32);
    v98 = *MEMORY[0x1E69A3B68];
    v156 = (v19 + 8);
    v99 = v153;
    v19 = v164;
    LODWORD(v163) = v98;
    while (1)
    {
      if (v69 >= *(a1 + 16))
      {
        goto LABEL_54;
      }

      v100 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v101 = a1 + v100;
      v102 = *(v160 + 72);
      v103 = v157;
      sub_1BA025290(v101 + v102 * v69, v157);
      sub_1BA2436E8(v103 + *(v161 + 40), v99, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v104 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v104 - 8) + 48))(v99, 1, v104) == 1)
      {
        sub_1BA243768(v99, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v105 = v163;
        (v19)(v158, v163, v18);
      }

      else
      {
        (*v154)(v147, v99 + *(v104 + 40), v18);
        sub_1BA2437D8(v99, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*v151)(v158);
        v105 = v163;
      }

      (v19)(v159, v105, v18);
      sub_1BA2425AC(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C20]);
      sub_1BA4A6A58();
      sub_1BA4A6A58();
      if (v169 == v167 && v170 == v168)
      {
        break;
      }

      v107 = sub_1BA4A8338();
      v108 = *v156;
      (*v156)(v159, v18);
      v108(v158, v18);

      if (v107)
      {
        goto LABEL_35;
      }

      sub_1BA2437D8(v157, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v99 = v153;
LABEL_26:
      v19 = v164;
      ++v69;
      a1 = v162;
      if (ObjectType == v69)
      {
        goto LABEL_40;
      }
    }

    v106 = *v156;
    (*v156)(v159, v18);
    v106(v158, v18);

LABEL_35:
    sub_1BA025350(v157, v155);
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v96;
    if ((v109 & 1) == 0)
    {
      sub_1BA066E50(0, *(v96 + 16) + 1, 1);
      v96 = v171;
    }

    v99 = v153;
    v111 = *(v96 + 16);
    v110 = *(v96 + 24);
    if (v111 >= v110 >> 1)
    {
      sub_1BA066E50((v110 > 1), v111 + 1, 1);
      v96 = v171;
    }

    *(v96 + 16) = v111 + 1;
    sub_1BA025350(v155, v96 + v100 + v111 * v102);
    goto LABEL_26;
  }

LABEL_40:

  _s18HealthExperienceUI031SummarySharingSelectedDataTypesG6SourceC31withCategorySectionsIfNecessary5items5storeSayACGSayAA0de10SelectableG8TypeItemVG_0A8Platform0aB5Store_ptFZ_0(v96, v143);
  v113 = v112;

  v114 = v142;
  *(v142 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedTopicsDataSources) = v113;
  sub_1BA243838(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = *(v114 + v150);
  v169 = inited;

  sub_1B9FE2414(v116);
  v117 = sub_1B9FE98D4();

  sub_1B9FE20B8(v117);
  v118 = v172;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();

  v120 = CompoundSectionedDataSource.init(_:)(v119);
  v121 = CompoundDataSourceCollectionViewController.init(dataSource:)(v120);
  v122 = OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v167 = *(*&v121[v122] + 48);
  v123 = MEMORY[0x1E695BF70];
  sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
  sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v123, MEMORY[0x1E695BF88]);
  v69 = v121;
  v167 = sub_1BA4A4F98();
  v124 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = swift_allocObject();
  *(v125 + 16) = sub_1BA243888;
  *(v125 + 24) = v124;
  v126 = MEMORY[0x1E695BED0];
  sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
  sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v126, MEMORY[0x1E695BED8]);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1B9F1B620(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v19 = &off_1F3810808;
  *(*(v69 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedAlertsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = &off_1F3810808;
  swift_unknownObjectWeakAssign();

  sub_1BA146CA4();

  v127 = *(v69 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_sharedTopicsDataSources);
  ObjectType = v118;
  if (v127 >> 62)
  {
    v128 = sub_1BA4A7CC8();
  }

  else
  {
    v128 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v128)
  {
    v129 = 0;
    v18 = v127 & 0xC000000000000001;
    a1 = v127 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v18)
      {
        v130 = MEMORY[0x1BFAF2860](v129, v127);
        v131 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v129 >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v130 = *(v127 + 8 * v129 + 32);

        v131 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
LABEL_51:
          __break(1u);
          break;
        }
      }

      *(v130 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = &off_1F3810808;
      swift_unknownObjectWeakAssign();
      v132 = v69;
      sub_1BA146CA4();

      ++v129;
    }

    while (v131 != v128);
  }

  __swift_destroy_boxed_opaque_existential_1(v143);
  v133 = sub_1BA4A33C8();
  (*(*(v133 - 8) + 8))(v136, v133);

  return v69;
}

void sub_1BA24204C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
    v3 = Strong;
    swift_beginAccess();
    v4 = *&v3[v2];

    if (v4)
    {
      sub_1BA10BB30(1);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BA242158()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SummarySharingInvitationTopicsViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setPreservesSuperviewLayoutMargins_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1BA2422DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_healthExperienceStore));

  return result;
}

id sub_1BA242364(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1BA24243C()
{
  swift_beginAccess();

  return result;
}

double sub_1BA242484(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI44SummarySharingInvitationTopicsViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1BA2425AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA2425F8@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_1BA242584(0);
  swift_allocObject();
  v4 = a1;
  result = sub_1BA4A4EA8();
  *a2 = result;
  return result;
}

uint64_t sub_1BA242680()
{
  sub_1BA4A33C8();
  v0 = sub_1BA4A2AF8();
  v2 = v1;
  if ((sub_1BA4A33B8() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (qword_1EBBE8530 != -1)
    {
      swift_once();
    }

    sub_1B9F1B620(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B9F1BE20();
    *(v4 + 32) = v0;
    *(v4 + 40) = v2;
    v5 = sub_1BA4A6768();
  }

  else
  {
LABEL_8:

    if (qword_1EBBE8538 != -1)
    {
      swift_once();
    }

    v5 = qword_1EBBEEFA0;
  }

  return v5;
}

uint64_t sub_1BA242808()
{
  sub_1BA4A33C8();
  v0 = sub_1BA4A2AE8();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (sub_1BA4A33B8())
    {
      if (qword_1EBBE8540 != -1)
      {
        swift_once();
      }

      sub_1B9F1B620(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BA4B5460;
      v5 = sub_1BA4A2AF8();
      v7 = v6;
      v8 = MEMORY[0x1E69E6158];
      *(v4 + 56) = MEMORY[0x1E69E6158];
      v9 = sub_1B9F1BE20();
      *(v4 + 64) = v9;
      *(v4 + 32) = v5;
      *(v4 + 40) = v7;
      v10 = MEMORY[0x1BFAEDD10]();
      *(v4 + 96) = v8;
      *(v4 + 104) = v9;
    }

    else
    {
      if (qword_1EBBE8548 != -1)
      {
        swift_once();
      }

      sub_1B9F1B620(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BA4B5460;
      v16 = MEMORY[0x1BFAEDD10]();
      v18 = v17;
      v19 = MEMORY[0x1E69E6158];
      *(v4 + 56) = MEMORY[0x1E69E6158];
      v20 = sub_1B9F1BE20();
      *(v4 + 64) = v20;
      *(v4 + 32) = v16;
      *(v4 + 40) = v18;
      v10 = sub_1BA4A2AE8();
      *(v4 + 96) = v19;
      *(v4 + 104) = v20;
    }

    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
  }

  else
  {
    if (qword_1EBBE8550 != -1)
    {
      swift_once();
    }

    sub_1B9F1B620(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4B5480;
    v13 = MEMORY[0x1BFAEDD10]();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1B9F1BE20();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
  }

  v21 = sub_1BA4A6768();

  return v21;
}

char *sub_1BA242B14(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v6 = v5;
  v61 = a4;
  v58 = a3;
  v57 = a2;
  v10 = sub_1BA4A33C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA243558(0);
  v55 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton] = 0;
  sub_1B9F0A534(a4, &v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore]);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthStore] = a5;
  v17 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
  v54 = a5;
  v18 = [v17 initWithHealthStore_];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_sharingEntryStore] = v18;
  v59 = v11;
  v19 = *(v11 + 16);
  v19(&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation], a1, v10);
  v52 = v19;
  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  v20 = sub_1BA4A7068();
  v63[3] = v10;
  v63[4] = MEMORY[0x1E69A3410];
  v63[5] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v19(boxed_opaque_existential_1, a1, v10);
  sub_1BA4A6FF8();
  v22 = sub_1BA4A7058();

  __swift_destroy_boxed_opaque_existential_1(v63);
  v63[0] = v22;
  sub_1BA243680(0, &qword_1EBBEF0A0, &qword_1EBBEE5C8, 0x1E695CD58);
  sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
  v23 = a1;
  sub_1BA243624(&qword_1EBBEF0A8, &qword_1EBBEF0A0, &qword_1EBBEE5C8, 0x1E695CD58);
  v24 = v53;
  sub_1BA4A4FE8();

  sub_1BA2425AC(&qword_1EBBEF0B0, sub_1BA243558, MEMORY[0x1E695BD60]);
  v25 = v55;
  v26 = sub_1BA4A4F98();
  (*(v60 + 8))(v24, v25);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_selectedContactPhotoPublisher] = v26;
  v27 = v56;
  v60 = v10;
  v52(v56, v23, v10);
  sub_1B9F0A534(v61, v63);
  v28 = objc_allocWithZone(type metadata accessor for SummarySharingInvitationTopicsViewController());
  v29 = v54;
  v30 = sub_1BA240B64(v57, v58, v27, v63, v29);
  sub_1BA242680();
  sub_1BA242808();
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v31 = &v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v32 = 0;
  v32[8] = 1;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v30;
  v33 = v30;
  v34 = sub_1BA4A6758();

  v35 = sub_1BA4A6758();

  v36 = type metadata accessor for OnboardingCollectionViewController();
  v62.receiver = v6;
  v62.super_class = v36;
  v37 = objc_msgSendSuper2(&v62, sel_initWithTitle_detailText_icon_contentLayout_, v34, v35, 0, 3);

  v63[0] = *&v37[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_selectedContactPhotoPublisher];
  *(swift_allocObject() + 16) = v37;
  sub_1BA243680(0, &qword_1EBBEC120, &qword_1EDC6E370, 0x1E69DCAB8);
  sub_1BA243624(&qword_1EBBEE650, &qword_1EBBEC120, &qword_1EDC6E370, 0x1E69DCAB8);
  v38 = v37;

  sub_1BA4A4F88();

  if (qword_1EBBE8558 != -1)
  {
    swift_once();
  }

  v39 = sub_1BA4A6758();
  v40 = sub_1BA4A6758();
  v41 = [v38 hxui:v39 addPrimaryFooterButtonWithTitle:v40 accessibilityIdentifier:?];

  v42 = *&v38[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton];
  *&v38[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_acceptButton] = v41;

  if (qword_1EBBE8560 != -1)
  {
    swift_once();
  }

  v43 = sub_1BA4A6758();
  v44 = sub_1BA4A6758();
  v45 = [v38 hxui:v43 addSecondaryFooterButtonWithTitle:0 bold:v44 accessibilityIdentifier:?];

  v46 = *&v38[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton];
  *&v38[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_declineButton] = v45;

  v47 = [v38 hxui_addCancelButton];
  v48 = *&v38[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton];
  *&v38[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_cancelButton] = v47;

  v49 = [v38 navigationItem];
  v50 = sub_1BA35F6F8();
  [v49 setTitleView_];

  __swift_destroy_boxed_opaque_existential_1(v61);
  (*(v59 + 8))(v23, v60);
  return v38;
}

void sub_1BA2432D8(uint64_t a1)
{
  if (!qword_1EBBEF060)
  {
    sub_1BA242584(255);
    sub_1BA2433C4(255);
    sub_1BA2425AC(&qword_1EBBEF058, sub_1BA242584, MEMORY[0x1E695C038]);
    sub_1BA2425AC(&qword_1EBBEF070, sub_1BA2433C4, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF060);
    }
  }
}

void sub_1BA2434AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for SummarySharingOnboardingError(255);
    v9 = sub_1BA2425AC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
    v10 = a4(a1, a3, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA243558(uint64_t a1)
{
  if (!qword_1EBBEF098)
  {
    sub_1BA243680(255, &qword_1EBBEF0A0, &qword_1EBBEE5C8, 0x1E695CD58);
    sub_1B9F0ADF8(255, &qword_1EDC6E370, 0x1E69DCAB8);
    sub_1BA243624(&qword_1EBBEF0A8, &qword_1EBBEF0A0, &qword_1EBBEE5C8, 0x1E695CD58);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF098);
    }
  }
}

uint64_t sub_1BA243624(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA243680(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA243680(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3, a4);
    v5 = sub_1BA4A4D18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA2436E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F1B620(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA243768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F1B620(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA2437D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA243838(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BA2438CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

HealthExperienceUI::SummarySharingSetupUIErrorsEvent __swiftcall SummarySharingSetupUIErrorsEvent.init(operation:errorReason:)(HealthExperienceUI::SummarySharingOnboardingError::SharingOperation operation, Swift::String errorReason)
{
  v3 = v2;
  v4 = *operation;
  sub_1BA0B2740();
  if (v4 <= 1)
  {
    if (v4)
    {
      v6 = "accept";
    }

    else
    {
      v6 = "invite";
    }

    v5 = sub_1BA4A77C8(v6, 6, 2);
  }

  else if (v4 == 2)
  {
    v5 = sub_1BA4A77C8("decline", 7, 2);
  }

  else if (v4 == 3)
  {
    v5 = sub_1BA4A77C8("modifyPending", 13, 2);
  }

  else
  {
    v5 = sub_1BA4A77C8("modifyAccepted", 14, 2);
  }

  *v3 = v5;
  v7 = sub_1BA4A6758();

  v3[1] = v7;
  result.errorReason = v9;
  result.operation = v8;
  return result;
}

unint64_t sub_1BA243A3C()
{
  result = qword_1EBBEF0C8;
  if (!qword_1EBBEF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF0C8);
  }

  return result;
}

unint64_t sub_1BA243A94()
{
  result = qword_1EBBEF0D0;
  if (!qword_1EBBEF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF0D0);
  }

  return result;
}

id UIView.roundCorners(radius:curve:maskedCorners:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = [v3 layer];
  [v7 setCornerCurve_];

  v8 = [v3 layer];
  [v8 setCornerRadius_];

  v9 = [v3 layer];
  [v9 setMaskedCorners_];

  return [v3 setClipsToBounds_];
}

Swift::Void __swiftcall UIView.resetCornerRadius()()
{
  v1 = [v0 layer];
  [v1 setCornerCurve_];

  v2 = [v0 layer];
  [v2 setCornerRadius_];

  [v0 setClipsToBounds_];
}

uint64_t sub_1BA243CC8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF0D8 = result;
  unk_1EBBEF0E0 = v1;
  return result;
}

uint64_t sub_1BA243D74()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF0E8 = result;
  unk_1EBBEF0F0 = v1;
  return result;
}

id sub_1BA243E20()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v66 - v9;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel];
  if (!v12)
  {
    v71 = v8;
    v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    [v14 setNumberOfLines_];
    v15 = [objc_opt_self() secondaryLabelColor];
    [v14 setTextColor_];

    [v14 setAdjustsFontForContentSizeCategory_];
    v16 = [v0 traitCollection];
    v17 = [v16 preferredContentSizeCategory];

    v72 = v17;
    v18 = sub_1BA4A74F8();
    v19 = *MEMORY[0x1E69DDD80];
    v20 = objc_opt_self();
    v21 = [v20 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
    v22 = v21;
    if (v18)
    {
      v23 = [v21 fontDescriptorWithSymbolicTraits_];

      if (v23)
      {
        v24 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];

LABEL_15:
        [v14 setFont_];

        LODWORD(v61) = 1148846080;
        [v14 setContentCompressionResistancePriority:1 forAxis:v61];
        LODWORD(v62) = 1148846080;
        [v14 setContentHuggingPriority:1 forAxis:v62];
        v63 = *&v0[v11];
        *&v0[v11] = v14;
        v13 = v14;

        v12 = 0;
        goto LABEL_16;
      }

      v70 = v0;
      sub_1BA4A3DD8();
      v25 = v19;
      v26 = sub_1BA4A3E88();
      v27 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v75 = v68;
        *v28 = 136315906;
        v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v31 = sub_1B9F0B82C(v29, v30, &v75);
        v69 = v25;
        v32 = v31;

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v73 = 0;
        v74 = 1;
        sub_1B9F47F20(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v33 = sub_1BA4A6808();
        v35 = sub_1B9F0B82C(v33, v34, &v75);

        *(v28 + 14) = v35;
        *(v28 + 22) = 2080;
        LODWORD(v73) = 0x8000;
        type metadata accessor for SymbolicTraits(0);
        v36 = sub_1BA4A6808();
        v38 = sub_1B9F0B82C(v36, v37, &v75);
        v25 = v69;

        *(v28 + 24) = v38;
        *(v28 + 32) = 2112;
        v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v28 + 34) = v39;
        v40 = v67;
        *v67 = v39;
        _os_log_impl(&dword_1B9F07000, v26, v27, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v28, 0x2Au);
        sub_1B9F8C6C8(v40);
        MEMORY[0x1BFAF43A0](v40, -1, -1);
        v41 = v68;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v41, -1, -1);
        MEMORY[0x1BFAF43A0](v28, -1, -1);
      }

      (*(v2 + 8))(v10, v71);
      v0 = v70;
      v42 = [v20 preferredFontDescriptorWithTextStyle_];
      v43 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
    }

    else
    {
      if (v21)
      {
        v24 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];

        goto LABEL_15;
      }

      v70 = v0;
      sub_1BA4A3DD8();
      v44 = v19;
      v45 = sub_1BA4A3E88();
      v46 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v75 = v68;
        *v47 = 136315906;
        v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v50 = sub_1B9F0B82C(v48, v49, &v75);
        v69 = v44;
        v51 = v50;

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v73 = 0;
        v74 = 1;
        sub_1B9F47F20(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v52 = sub_1BA4A6808();
        v54 = sub_1B9F0B82C(v52, v53, &v75);

        *(v47 + 14) = v54;
        *(v47 + 22) = 2080;
        LODWORD(v73) = 0;
        type metadata accessor for SymbolicTraits(0);
        v55 = sub_1BA4A6808();
        v57 = sub_1B9F0B82C(v55, v56, &v75);
        v44 = v69;

        *(v47 + 24) = v57;
        *(v47 + 32) = 2112;
        v58 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v47 + 34) = v58;
        v59 = v67;
        *v67 = v58;
        _os_log_impl(&dword_1B9F07000, v45, v46, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v47, 0x2Au);
        sub_1B9F8C6C8(v59);
        MEMORY[0x1BFAF43A0](v59, -1, -1);
        v60 = v68;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v60, -1, -1);
        MEMORY[0x1BFAF43A0](v47, -1, -1);
      }

      (*(v2 + 8))(v5, v71);
      v0 = v70;
      v42 = [v20 preferredFontDescriptorWithTextStyle_];
      v43 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
    }

    v24 = v43;

    goto LABEL_15;
  }

  v13 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel];
LABEL_16:
  v64 = v12;
  return v13;
}

id sub_1BA244604()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton);
  }

  else
  {
    v4 = sub_1BA244664();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA244664()
{
  sub_1B9F47F20(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_1BA4A7838();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A79A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7988();
  if (qword_1EBBE8568 != -1)
  {
    swift_once();
  }

  sub_1BA4A7978();
  (*(v5 + 104))(v8, *MEMORY[0x1E69DC508], v4);
  sub_1BA4A7848();
  v14 = [objc_opt_self() buttonWithType_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v10 + 16))(v3, v13, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  sub_1BA4A79D8();
  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:1 forAxis:v15];
  (*(v10 + 8))(v13, v9);
  return v14;
}

void sub_1BA2449EC()
{
  sub_1BA1925B0();
  v1 = sub_1BA191D10();
  v2 = sub_1BA243E20();
  [v1 addSubview_];

  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView);
  v4 = sub_1BA244604();
  [v3 addSubview_];
}

void sub_1BA244A8C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA192798(v2);
  sub_1BA191E60(v3);
  v4 = sub_1BA1946B4();
  sub_1BA19452C(v4);
  v5 = sub_1BA191DB4();
  [v5 setHidden_];

  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] stopAnimating];
  v34 = objc_opt_self();
  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4C27A0;
  v7 = sub_1BA243E20();
  v8 = [v7 topAnchor];

  v9 = sub_1BA191D10();
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel;
  v13 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel] leadingAnchor];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  v15 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] &selRef__totalDistance + 1];
  v16 = [v13 constraintEqualToAnchor_];

  *(v6 + 40) = v16;
  v17 = [*&v0[v12] trailingAnchor];
  v18 = [*&v0[v14] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v6 + 48) = v19;
  v20 = sub_1BA244604();
  v21 = [v20 topAnchor];

  v22 = [*&v0[v12] bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:7.0];

  *(v6 + 56) = v23;
  v24 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton;
  v25 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton] leadingAnchor];
  v26 = [*&v0[v14] leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v6 + 64) = v27;
  v28 = [*&v0[v24] trailingAnchor];
  v29 = [*&v0[v14] trailingAnchor];
  v30 = [v28 constraintLessThanOrEqualToAnchor_];

  *(v6 + 72) = v30;
  v31 = [*&v0[v24] bottomAnchor];
  v32 = [*&v0[v14] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-5.0];

  *(v6 + 80) = v33;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v35 = sub_1BA4A6AE8();

  [v34 activateConstraints_];
}

void sub_1BA244EB0()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A33C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA193198();
  v11 = sub_1BA244604();
  [v11 addTarget:v0 action:sel_viewPendingInvitation forControlEvents:64];

  v12 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1BA246AD0(v0 + v12, v26, sub_1B9F7B6F8);
  if (v26[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    type metadata accessor for SummarySharingPendingProfileTileItem(0);
    if (swift_dynamicCast())
    {
      v13 = v25[1];
      v14 = sub_1BA243E20();
      (*(v7 + 16))(v10, v13 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation, v6);
      sub_1BA246B98(v10);
      (*(v7 + 8))(v10, v6);
      v15 = sub_1BA4A6758();

      [v14 setText_];

      [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton) setEnabled_];
      sub_1BA2452E0();

      return;
    }
  }

  else
  {
    sub_1BA246B38(v26, sub_1B9F7B6F8);
  }

  v16 = sub_1BA243E20();
  if (qword_1EBBE8570 != -1)
  {
    swift_once();
  }

  v17 = sub_1BA4A6758();
  [v16 setText_];

  sub_1BA4A3DD8();
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    *v20 = 136315138;
    v22 = sub_1BA4A85D8();
    v24 = sub_1B9F0B82C(v22, v23, v26);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1B9F07000, v18, v19, "[%s] Couldn't find SummarySharingPendingProfileTileItem to view pending invitation for", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
    MEMORY[0x1BFAF43A0](v20, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_1BA2452E0()
{
  v0 = sub_1BA243E20();

  MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4F68A0);
  v1 = sub_1BA4A6758();

  [v0 setAccessibilityIdentifier_];

  v2 = sub_1BA244604();

  MEMORY[0x1BFAF1350](0x6E6F747475422ELL, 0xE700000000000000);
  v3 = sub_1BA4A6758();

  [v2 setAccessibilityIdentifier_];
}

void sub_1BA245410()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A33C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v49[-v9];
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49[-v18];
  v20 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1BA246AD0(v1 + v20, v56, sub_1B9F7B6F8);
  if (v57)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    type metadata accessor for SummarySharingPendingProfileTileItem(0);
    if (swift_dynamicCast())
    {
      v53 = v3;
      v21 = v55[0];
      sub_1BA4A3DD8();

      v22 = sub_1BA4A3E88();
      v23 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v52 = v6;
        v25 = v24;
        v51 = swift_slowAlloc();
        v56[0] = v51;
        *v25 = 136315394;
        v26 = sub_1BA4A85D8();
        ObjectType = v22;
        v28 = sub_1B9F0B82C(v26, v27, v56);
        v50 = v23;
        v29 = v28;

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v30 = v53;
        v31 = (*(v53 + 16))(v10, v21 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation, v2);
        v32 = MEMORY[0x1BFAEDD10](v31);
        v34 = v33;
        (*(v30 + 8))(v10, v2);
        v35 = sub_1B9F0B82C(v32, v34, v56);

        *(v25 + 14) = v35;
        v22 = ObjectType;
        _os_log_impl(&dword_1B9F07000, ObjectType, v50, "[%s] Viewing invitation for: %s", v25, 0x16u);
        v36 = v51;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v36, -1, -1);
        v37 = v25;
        v6 = v52;
        MEMORY[0x1BFAF43A0](v37, -1, -1);
      }

      (*(v12 + 8))(v19, v11);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v39 = Strong;
        v40 = v53;
        (*(v53 + 16))(v6, v21 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation, v2);
        v41 = qword_1EDC84AF8;
        swift_beginAccess();
        sub_1BA246AD0(v39 + v41, v56, sub_1BA1A29E0);
        if (v57)
        {
          sub_1B9F0A534(v56, v55);
          sub_1BA246B38(v56, sub_1BA1A29E0);
          __swift_project_boxed_opaque_existential_1(v55, v55[3]);
          sub_1BA0068DC(v6);

          swift_unknownObjectRelease();
          (*(v40 + 8))(v6, v2);
          __swift_destroy_boxed_opaque_existential_1(v55);
        }

        else
        {
          swift_unknownObjectRelease();

          (*(v40 + 8))(v6, v2);
          sub_1BA246B38(v56, sub_1BA1A29E0);
        }
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    sub_1BA246B38(v56, sub_1B9F7B6F8);
  }

  sub_1BA4A3DD8();
  v42 = sub_1BA4A3E88();
  v43 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v56[0] = v45;
    *v44 = 136315138;
    v46 = sub_1BA4A85D8();
    v48 = sub_1B9F0B82C(v46, v47, v56);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_1B9F07000, v42, v43, "[%s] Couldn't find SummarySharingPendingProfileTileItem to view pending invitation for", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1BFAF43A0](v45, -1, -1);
    MEMORY[0x1BFAF43A0](v44, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
}

void sub_1BA245A68(void *a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v62 - v10;
  v12 = type metadata accessor for SummarySharingPendingProfileTileCell();
  v70.receiver = v1;
  v70.super_class = v12;
  objc_msgSendSuper2(&v70, sel_traitCollectionDidChange_, a1);
  if (!a1 || (v13 = [a1 preferredContentSizeCategory], v14 = sub_1BA4A74F8() & 1, v13, v15 = objc_msgSend(v1, sel_traitCollection), v16 = objc_msgSend(v15, sel_preferredContentSizeCategory), v15, LODWORD(v15) = sub_1BA4A74F8() & 1, v16, v14 != v15))
  {
    v17 = sub_1BA243E20();
    v18 = [v1 traitCollection];
    v19 = [v18 preferredContentSizeCategory];

    v20 = sub_1BA4A74F8();
    v21 = *MEMORY[0x1E69DDD80];
    v22 = objc_opt_self();
    v23 = [v22 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
    v24 = v23;
    if (v20)
    {
      v25 = [v23 fontDescriptorWithSymbolicTraits_];

      if (v25)
      {
        v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
        v24 = v25;
      }

      else
      {
        sub_1BA4A3DD8();
        v27 = v21;
        v28 = sub_1BA4A3E88();
        v29 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v69 = v64;
          *v30 = 136315906;
          v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v66 = v4;
          v33 = sub_1B9F0B82C(v31, v32, &v69);
          v65 = v27;
          v34 = v33;

          *(v30 + 4) = v34;
          *(v30 + 12) = 2080;
          v67 = 0;
          v68 = 1;
          sub_1B9F47F20(0, &qword_1EBBECB00, type metadata accessor for Weight);
          v35 = sub_1BA4A6808();
          v37 = sub_1B9F0B82C(v35, v36, &v69);

          *(v30 + 14) = v37;
          *(v30 + 22) = 2080;
          LODWORD(v67) = 0x8000;
          type metadata accessor for SymbolicTraits(0);
          v38 = sub_1BA4A6808();
          v40 = sub_1B9F0B82C(v38, v39, &v69);
          v27 = v65;

          *(v30 + 24) = v40;
          *(v30 + 32) = 2112;
          v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v30 + 34) = v41;
          v42 = v63;
          *v63 = v41;
          _os_log_impl(&dword_1B9F07000, v28, v29, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v30, 0x2Au);
          sub_1B9F8C6C8(v42);
          MEMORY[0x1BFAF43A0](v42, -1, -1);
          v43 = v64;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v43, -1, -1);
          MEMORY[0x1BFAF43A0](v30, -1, -1);

          (*(v66 + 8))(v11, v3);
        }

        else
        {

          (*(v4 + 8))(v11, v3);
        }

        v24 = [v22 preferredFontDescriptorWithTextStyle_];
        v26 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];
      }
    }

    else if (v23)
    {
      v26 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v44 = v21;
      v45 = sub_1BA4A3E88();
      v46 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v69 = v64;
        *v47 = 136315906;
        v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v66 = v4;
        v50 = sub_1B9F0B82C(v48, v49, &v69);
        v65 = v44;
        v51 = v50;

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v67 = 0;
        v68 = 1;
        sub_1B9F47F20(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v52 = sub_1BA4A6808();
        v54 = sub_1B9F0B82C(v52, v53, &v69);

        *(v47 + 14) = v54;
        *(v47 + 22) = 2080;
        LODWORD(v67) = 0;
        type metadata accessor for SymbolicTraits(0);
        v55 = sub_1BA4A6808();
        v57 = sub_1B9F0B82C(v55, v56, &v69);
        v44 = v65;

        *(v47 + 24) = v57;
        *(v47 + 32) = 2112;
        v58 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v47 + 34) = v58;
        v59 = v63;
        *v63 = v58;
        _os_log_impl(&dword_1B9F07000, v45, v46, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v47, 0x2Au);
        sub_1B9F8C6C8(v59);
        MEMORY[0x1BFAF43A0](v59, -1, -1);
        v60 = v64;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v60, -1, -1);
        MEMORY[0x1BFAF43A0](v47, -1, -1);

        (*(v66 + 8))(v7, v3);
      }

      else
      {

        (*(v4 + 8))(v7, v3);
      }

      v24 = [v22 preferredFontDescriptorWithTextStyle_];
      v26 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];
    }

    v61 = v26;

    [v17 setFont_];
  }
}

void sub_1BA246260()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton);
}

id sub_1BA2462A0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingPendingProfileTileCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA246344()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 80);
  if (v7)
  {
    v8 = *(v0 + 80);
  }

  else
  {
    type metadata accessor for ProfileGradientsProviderFactory();
    swift_initStaticObject();
    (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_uuid, v2);
    v9 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v10 = v9;
    if (*(v0 + 72))
    {
      [v9 setProfileIdentifier_];
    }

    [v10 resume];
    v11 = sub_1B9FE19E8(v6, v10);

    (*(v3 + 8))(v6, v2);
    v12 = *(v1 + 80);
    *(v1 + 80) = v11;
    v8 = v11;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

uint64_t sub_1BA2464D0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  sub_1BA05DB44(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_lastUpdatedDate);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_uuid;
  v4 = sub_1BA4A1798();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_viewPendingInviteDelegate);
  return v0;
}

uint64_t sub_1BA2465CC()
{
  sub_1BA2464D0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingPendingProfileTileItem(uint64_t a1)
{
  result = qword_1EBBEF108;
  if (!qword_1EBBEF108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA246678(uint64_t a1)
{
  sub_1B9F47F20(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_1BA4A33C8();
    if (v2 <= 0x3F)
    {
      sub_1BA4A1798();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void *sub_1BA2467F0()
{
  v1 = *(*v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA246840@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_lastUpdatedDate;
  swift_beginAccess();
  return sub_1BA246A0C(v3 + v4, a1);
}

uint64_t sub_1BA24689C()
{
  type metadata accessor for SummarySharingPendingProfileTileCell();
  sub_1BA246A8C();
  return sub_1BA4A6808();
}

uint64_t sub_1BA2468EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA246984(uint64_t a1)
{
  result = sub_1BA2469C8(&qword_1EBBED550, &unk_1BA4C8DA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA2469C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SummarySharingPendingProfileTileItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA246A0C(uint64_t a1, uint64_t a2)
{
  sub_1B9F47F20(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA246A8C()
{
  result = qword_1EDC60D20;
  if (!qword_1EDC60D20)
  {
    type metadata accessor for SummarySharingPendingProfileTileCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC60D20);
  }

  return result;
}

uint64_t sub_1BA246AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA246B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA246B98(uint64_t a1)
{
  v2 = sub_1BA4A11C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  v7 = sub_1BA4A7068();
  v8 = sub_1BA4A33C8();
  v24[3] = v8;
  v24[4] = MEMORY[0x1E69A3410];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  v10 = sub_1BA4A7008();
  v11 = sub_1BA4A7038();
  v23 = v10;
  sub_1B9FE260C(v11);
  v12 = sub_1BA4A6FE8();

  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v12)
  {
    v13 = sub_1BA4A79F8();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_1BA4A7A18();
      LocalizedGeminiString(_:defaultValue:comment:options:)("SHARING_TOPICS_LABEL_%@", 23, 2u, 0, 0xE000000000000000, "", 0, 2, v6);
      (*(v3 + 8))(v6, v2);
      sub_1B9F2EAC0(0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BA4B5480;
      v18 = sub_1BA4A2AE8();
      v20 = v19;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1B9F1BE20();
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      v21 = sub_1BA4A6768();

      return v21;
    }
  }

  if (qword_1EBBE8570 != -1)
  {
    swift_once();
  }

  v21 = qword_1EBBEF0E8;

  return v21;
}

void sub_1BA246E78(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1BA246EE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v55 = a5;
  v56 = a4;
  v58 = a3;
  v59 = a2;
  sub_1BA2474C0(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47F20(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v50 = &v48 - v15;
  v16 = sub_1BA4A1798();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *a6;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_lastUpdatedDate;
  v22 = sub_1BA4A1728();
  v49 = *(*(v22 - 8) + 56);
  v49(&v6[v21], 1, 1, v22);
  v6[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_disabledState] = 2;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_viewPendingInviteDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v60 = sub_1BA4A85D8();
  *(&v60 + 1) = v23;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A3358();
  v24 = sub_1BA4A1748();
  v26 = v25;
  v53 = v17;
  v54 = v16;
  (*(v17 + 8))(v20, v16);
  MEMORY[0x1BFAF1350](v24, v26);

  v27 = *(&v60 + 1);
  *(v6 + 2) = v60;
  *(v6 + 3) = v27;
  sub_1B9F0A534(v59, (v6 + 32));
  v28 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_sharingEntryProfileInformation;
  v29 = sub_1BA4A33C8();
  v30 = *(v29 - 8);
  v51 = *(v30 + 16);
  v51(&v7[v28], a1, v29);
  v31 = v50;
  v32 = v22;
  v33 = a1;
  v49(v50, 1, 1, v32);
  v34 = v52;
  v35 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_lastUpdatedDate;
  swift_beginAccess();
  sub_1B9F7B4F4(v31, &v7[v35]);
  swift_endAccess();
  sub_1BA4A32E8();
  sub_1BA246E78(0, &qword_1EBBEADE8, &qword_1EDC5E3D8, 0x1E696C338, MEMORY[0x1E696B370]);
  v37 = v36;
  v38 = *(v36 - 8);
  if ((*(v38 + 48))(v34, 1, v36) == 1)
  {
    sub_1BA246B38(v34, sub_1BA2474C0);
    v39 = 0;
  }

  else
  {
    v39 = sub_1BA4A65C8();
    (*(v38 + 8))(v34, v37);
  }

  v40 = *(v7 + 9);
  *(v7 + 9) = v39;

  sub_1BA4A3358();
  v41 = (*(v53 + 32))(&v7[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_uuid], v20, v54);
  v42 = MEMORY[0x1BFAEDD10](v41);
  v43 = &v7[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_accountIdentifier];
  *v43 = v42;
  v43[1] = v44;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_viewPendingInviteDelegate + 8] = v55;
  swift_unknownObjectWeakAssign();
  v61 = v29;
  v62 = MEMORY[0x1E69A3410];
  v63 = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
  v51(boxed_opaque_existential_1, v33, v29);
  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  sub_1BA4A6FF8();
  v46 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(&v60);
  sub_1BA4A3328();
  sub_1BA4A79E8();
  v61 = sub_1BA4A2FF8();
  v62 = MEMORY[0x1E69A3390];
  __swift_allocate_boxed_opaque_existential_1(&v60);
  sub_1BA4A2FE8();

  __swift_destroy_boxed_opaque_existential_1(v59);
  (*(v30 + 8))(v33, v29);
  sub_1B9F1134C(&v60, (v7 + 88));
  v7[OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileItem_disabledState] = v57;
  return v7;
}

void sub_1BA2474C0(uint64_t a1)
{
  if (!qword_1EBBEADE0)
  {
    sub_1BA246E78(255, &qword_1EBBEADE8, &qword_1EDC5E3D8, 0x1E696C338, MEMORY[0x1E696B370]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEADE0);
    }
  }
}

uint64_t sub_1BA247544(void *a1, void *a2)
{
  v39 = a1;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v37 - v5;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v7 = sub_1BA4A1C68();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v41 = xmmword_1BA4B5480;
  *(v10 + 16) = xmmword_1BA4B5480;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x1E69A3B80], v7);
  v11 = sub_1BA4A0FA8();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v12 = swift_allocObject();
  *(v12 + 16) = v41;
  *(v12 + 32) = a2;
  *&v41 = a2;
  v13 = MEMORY[0x1BFAED020](v10, 0, v6, v12);

  sub_1B9F1C1B0(v6);
  sub_1BA4A1FE8();
  v14 = sub_1BA4A2628();

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B7510;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v40 = v13;
  v38 = v14;
  v16 = sub_1BA4A6AE8();

  v17 = [objc_opt_self() andPredicateWithSubpredicates_];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5470;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  swift_getKeyPath();
  *(v18 + 32) = sub_1BA4A71B8();
  v19 = v17;
  v20 = sub_1BA4A26C8();

  v21 = sub_1BA4A6AE8();

  [v20 setSortDescriptors_];

  [v20 setFetchLimit_];
  v22 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v23 = v39;
  v24 = [v22 initWithFetchRequest:v20 managedObjectContext:? sectionNameKeyPath:? cacheName:?];
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v50[4] = xmmword_1EDC6D458;
  v50[5] = *&qword_1EDC6D468;
  v50[6] = xmmword_1EDC6D478;
  v50[7] = xmmword_1EDC6D488;
  v50[0] = xmmword_1EDC6D418;
  v50[1] = *&qword_1EDC6D428;
  v50[2] = xmmword_1EDC6D438;
  v50[3] = xmmword_1EDC6D448;
  v49 = qword_1EDC6D428;
  v48 = xmmword_1EDC6D418;
  v25 = unk_1EDC6D430;
  v27 = xmmword_1EDC6D438;
  v26 = xmmword_1EDC6D448;
  v47 = qword_1EDC6D470;
  v45 = *(&xmmword_1EDC6D448 + 8);
  v46 = *(&xmmword_1EDC6D458 + 8);
  v44 = *(&xmmword_1EDC6D488 + 1);
  v43 = *(&xmmword_1EDC6D478 + 8);
  sub_1B9F1D9A4(v50, &v54);
  sub_1B9F1DA18(v25, v27, *(&v27 + 1), v26);
  v51 = v48;
  *(&v52[2] + 8) = v45;
  *(v52 + 8) = 0u;
  *(&v52[1] + 8) = 0u;
  *(&v52[3] + 8) = v46;
  *&v52[0] = v49;
  *(&v52[4] + 1) = v47;
  *&v53[0] = 0x4034000000000000;
  *(&v53[1] + 1) = v44;
  *(v53 + 8) = v43;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  *&v55[48] = v52[3];
  *&v55[64] = v52[4];
  *v56 = v53[0];
  *&v56[16] = v53[1];
  v54 = v51;
  *v55 = v52[0];
  *&v55[16] = v52[1];
  *&v55[32] = v52[2];
  v28 = v24;
  sub_1B9F1D9A4(&v51, &v42);
  v29 = sub_1B9F293A8(&v54);
  sub_1BA0649AC(0);
  v31 = objc_allocWithZone(v30);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  v33 = &v31[qword_1EDC61AF0];
  *v33 = sub_1BA064A10;
  v33[1] = v32;
  v34 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v28);
  v35 = sub_1BA0488BC();

  v54 = v48;
  memset(&v55[8], 0, 32);
  *&v55[40] = v45;
  *&v55[56] = v46;
  *v55 = v49;
  *&v55[72] = v47;
  *v56 = 0x4034000000000000;
  *&v56[24] = v44;
  *&v56[8] = v43;
  sub_1B9F1DA58(&v54);
  return v35;
}

void sub_1BA247BC0(id *a1)
{
  v1 = [*a1 dateSubmitted];
  sub_1BA4A16F8();
}

uint64_t type metadata accessor for PluginVersionMismatchAlertDataSource(uint64_t a1)
{
  result = qword_1EBBEF120;
  if (!qword_1EBBEF120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA247C78()
{

  sub_1BA061448(v0 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudSyncDataSourceItem(uint64_t a1)
{
  result = qword_1EBBEF130;
  if (!qword_1EBBEF130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA247D70(uint64_t a1)
{
  sub_1BA06138C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1BA247E24()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0xD000000000000018;
  v23 = 0x80000001BA4F6A00;
  sub_1BA4A1788();
  sub_1BA2482DC(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  (*(v3 + 8))(v6, v2);
  v8 = v23;
  v0[2] = v22;
  v0[3] = v8;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action;
  v10 = type metadata accessor for CloudSyncAction(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_animateCloudSync) = 2;
  v11 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_reuseIdentifier);
  v22 = type metadata accessor for CloudSyncCollectionViewCell();
  sub_1BA248324();
  *v11 = sub_1BA4A6808();
  v11[1] = v12;
  sub_1B9F25350();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v13 + 40) = v14;
  *(v13 + 48) = 0x6E795364756F6C43;
  *(v13 + 56) = 0xEF73757461745363;
  v15 = sub_1BA4A6AE8();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_baseIdentifier);
  *v20 = v17;
  v20[1] = v19;
  return v1;
}

uint64_t sub_1BA2480CC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1BA24810C()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA248168(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1BA248230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA2482DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA248324()
{
  result = qword_1EBBE9DA8;
  if (!qword_1EBBE9DA8)
  {
    type metadata accessor for CloudSyncCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DA8);
  }

  return result;
}

uint64_t sub_1BA248374(uint64_t a1)
{
  v2 = sub_1BA2486AC();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA2483C0(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0xD000000000000023;
  v24 = 0x80000001BA4F6A20;
  sub_1BA4A1788();
  sub_1B9FD9EDC();
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  (*(v3 + 8))(v6, v2);
  v8 = v23;
  v9 = v24;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v10 = sub_1BA4A1318();
  v12 = v11;
  v23 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  v13 = sub_1BA4A6808();
  v15 = v14;
  sub_1B9F25350();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5460;
  *(v16 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v16 + 40) = v17;
  *(v16 + 48) = 0xD000000000000018;
  *(v16 + 56) = 0x80000001BA4F6A90;
  v18 = sub_1BA4A6AE8();

  v19 = HKUIJoinStringsForAutomationIdentifier();

  if (v19)
  {
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15;
  *(a1 + 72) = v20;
  *(a1 + 80) = v22;
}

unint64_t sub_1BA248684(uint64_t a1)
{
  result = sub_1BA2486AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA2486AC()
{
  result = qword_1EBBEF140;
  if (!qword_1EBBEF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF140);
  }

  return result;
}

unint64_t sub_1BA248704()
{
  result = qword_1EBBEF148;
  if (!qword_1EBBEF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF148);
  }

  return result;
}

void sub_1BA248758(void *a1)
{
  UIViewController.resolvedHealthExperienceStore.getter(v7);
  sub_1B9F0A534(v7, v6);
  v2 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());
  v3 = NotificationSettingsViewController.init(healthExperienceStore:)(v6);
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v3 animated:1];

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }
}

void __swiftcall MultiselectItem.init(title:subtitle:accessibilityIdentifierPrefix:state:identifier:)(HealthExperienceUI::MultiselectItem *__return_ptr retstr, Swift::String title, Swift::String subtitle, Swift::String_optional accessibilityIdentifierPrefix, Swift::Bool state, Swift::String identifier)
{
  countAndFlagsBits = identifier._countAndFlagsBits;
  object = accessibilityIdentifierPrefix.value._object;
  v9 = accessibilityIdentifierPrefix.value._countAndFlagsBits;
  v15 = title._object;
  v10 = title._countAndFlagsBits;
  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v12;

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);

  if (!object)
  {
    v9 = 0x6C657369746C754DLL;
    object = 0xEF6D657449746365;
  }

  MEMORY[0x1BFAF1350](v9, object);

  if (state)
  {
    v13 = 0x44455443454C4553;
  }

  else
  {
    v13 = 0x5443454C45534E55;
  }

  if (state)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xEA00000000004445;
  }

  MEMORY[0x1BFAF1350](v13, v14);

  retstr->uniqueIdentifier._countAndFlagsBits = countAndFlagsBits;
  retstr->uniqueIdentifier._object = identifier._object;
  retstr->title._countAndFlagsBits = v10;
  retstr->title._object = v15;
  retstr->subtitle = subtitle;
  retstr->baseIdentifier.value._countAndFlagsBits = v17;
  retstr->baseIdentifier.value._object = v18;
  retstr->state = state;
}

uint64_t MultiselectItem.reuseIdentifier.getter()
{
  type metadata accessor for MultiselectTableViewCell();
  sub_1BA2489D0();
  return sub_1BA4A6808();
}

unint64_t sub_1BA2489D0()
{
  result = qword_1EBBE9720;
  if (!qword_1EBBE9720)
  {
    type metadata accessor for MultiselectTableViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9720);
  }

  return result;
}

uint64_t MultiselectItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void MultiselectItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MultiselectItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MultiselectItem.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MultiselectItem.baseIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void MultiselectItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

unint64_t sub_1BA248B94()
{
  result = qword_1EBBEF150[0];
  if (!qword_1EBBEF150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEF150);
  }

  return result;
}

uint64_t sub_1BA248BE8()
{
  type metadata accessor for MultiselectTableViewCell();
  sub_1BA2489D0();
  return sub_1BA4A6808();
}

void sub_1BA248C24(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1BA248C5C(uint64_t a1)
{
  v2 = sub_1BA120A24();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA248CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1BA248CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA248D80()
{
  v1 = *v0;
  v2 = 96;
  if (*(v0 + 40))
  {
    v2 = 104;
  }

  v3 = *(v1 + v2);
  if (*(v0 + 40))
  {
    v4 = 88;
  }

  else
  {
    v4 = 80;
  }

  v5 = *(v3 + 40);
  v6 = *(v1 + v4);
  swift_unknownObjectRetain();
  v7 = v5(v6, v3);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t _ConditionalDataSource.identifier.getter()
{
  v0 = sub_1B9F25DF0();

  return v0;
}

uint64_t _ConditionalDataSource.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  return swift_unknownObjectRetain();
}

uint64_t _ConditionalDataSource.__allocating_init(storage:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  _ConditionalDataSource.init(storage:)(a1);
  return v2;
}

void *_ConditionalDataSource.init(storage:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v3 + 96);
  v13[0] = *(v3 + 80);
  v13[1] = v6;
  v7 = type metadata accessor for _ConditionalDataSource.Storage(0, v13);
  v8 = 32;
  if (v5)
  {
    v8 = 40;
  }

  v9 = *(v7 + v8);
  if (v5)
  {
    v10 = 24;
  }

  else
  {
    v10 = 16;
  }

  v2[2] = (*(v9 + 8))(*(v7 + v10));
  v2[3] = v11;
  v2[4] = v4;
  *(v2 + 40) = v5;
  return v2;
}

uint64_t _ConditionalDataSource.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t _ConditionalDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall _ConditionalDataSource.isReorderable()()
{
  v1 = 96;
  if (*(v0 + 40))
  {
    v1 = 104;
  }

  v2 = *(*v0 + v1);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 32);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t _ConditionalDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_1BA4A3EA8();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 96;
  if (*(v5 + 40))
  {
    v15 = 104;
  }

  v16 = *(v10 + v15);
  v42 = v5[4];
  v43 = v16;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v40, v44);
    v17 = v45;
    v18 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v18 + 8))(a1, a2, a3, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_1BA1EAFD0(v40);
    sub_1BA4A3D88();
    swift_retain_n();
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v40[0] = v37;
      *v22 = 136315650;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, v40);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = 104;
      if (!*(v5 + 40))
      {
        v26 = 96;
      }

      v27 = *(*v5 + v26);
      v44[0] = v5[4];
      v44[1] = v27;
      swift_unknownObjectRetain();
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, v40);

      *(v22 + 14) = v30;
      *(v22 + 22) = 2080;
      v31 = _ConditionalDataSource.description.getter();
      v33 = v32;

      v34 = sub_1B9F0B82C(v31, v33, v40);

      *(v22 + 24) = v34;
      _os_log_impl(&dword_1B9F07000, v20, v21, "%s asked for a supplementaryItem, but currentDataSource=%s does not conform to SupplementaryItemDataSource. %s", v22, 0x20u);
      v35 = v37;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    else
    {
    }

    (*(v38 + 8))(v14, v39);
    a4[3] = &type metadata for FallbackHeaderItem;
    a4[4] = sub_1BA1BA0F8();
    *a4 = swift_allocObject();
    return FallbackHeaderItem.init()();
  }
}

uint64_t _ConditionalDataSource.description.getter()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000018, 0x80000001BA4F6AB0);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0x203A676E69737520, 0xE800000000000000);
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1BA4A7FB8();
  return 0;
}

Swift::Bool __swiftcall _ConditionalDataSource.isReorderableItem(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v5 = *v2;
  v6 = v2[4];
  v7 = *(v2 + 40) == 0;
  v8 = 96;
  if (!v7)
  {
    v8 = 104;
  }

  v9 = *(v5 + v8);
  v15 = v6;
  v16 = v9;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v14, v17);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    *&v14[0] = countAndFlagsBits;
    *(&v14[0] + 1) = object;
    v12 = (*(v11 + 40))(v14, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t _ConditionalDataSource.canMoveItem(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[4];
  v8 = *(v3 + 40) == 0;
  v9 = 96;
  if (!v8)
  {
    v9 = 104;
  }

  v10 = *(v6 + v9);
  v16 = v7;
  v17 = v10;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v15, v18);
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = (*(v12 + 56))(a1, a2, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

Swift::Void __swiftcall _ConditionalDataSource.applyReorder(sectionTransactions:)(Swift::OpaquePointer sectionTransactions)
{
  v3 = 96;
  if (*(v1 + 40))
  {
    v3 = 104;
  }

  v4 = *(*v1 + v3);
  v8 = *(v1 + 32);
  v9 = v4;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v7, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 48))(sectionTransactions._rawValue, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

uint64_t sub_1BA249B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BA249B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BA249BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void static ProfileDeepLinkRouter.openMedicalID(presentingViewController:)(void *a1)
{
  v2 = UIViewController.resolvedHealthStore.getter();
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v3 = v2;
  sub_1BA4A22B8();
  v4 = v3;
  v5 = sub_1BA4A22A8();
  v6 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  swift_retain_n();
  v7 = v4;
  v8 = sub_1BA249DB8(v7, v5, v6);

  v10 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v9 = [v10 navigationBar];
  [v9 setPrefersLargeTitles_];

  v11 = xmmword_1BA4C92B0;
  v12 = 2;
  ProfileViewController.handleRestoration(restorationType:)(&v11);

  [a1 presentViewController:v10 animated:0 completion:0];
}

id sub_1BA249DB8(void *a1, uint64_t a2, char *a3)
{
  v13[3] = sub_1BA4A22B8();
  v13[4] = MEMORY[0x1E69A3CF8];
  v13[0] = a2;
  v6 = &a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  v6[16] = -1;
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView] = 0;
  *&a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore] = a1;
  sub_1B9F0A534(v13, &a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_pinnedContentManager]);
  v7 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v8 = a1;
  v9 = [v7 init];
  v12.receiver = a3;
  v12.super_class = type metadata accessor for ProfileViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCollectionViewLayout_, v9);

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

void _s18HealthExperienceUI21ProfileDeepLinkRouterV07restoreD8Activity04userI024presentingViewControllerySo06NSUserI0C_So06UIViewM0CtFZ_0(uint64_t a1, void *a2)
{
  v4 = UIViewController.resolvedHealthStore.getter();
  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v5 = v4;
  sub_1BA4A22B8();
  v6 = v5;
  v7 = sub_1BA4A22A8();
  v8 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  v9 = v6;

  v10 = sub_1BA249DB8(v9, v7, v8);

  v12 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v11 = [v12 navigationBar];
  [v11 setPrefersLargeTitles_];

  [v12 restoreUserActivityState_];
  [a2 presentViewController:v12 animated:0 completion:0];
}

void _s18HealthExperienceUI21ProfileDeepLinkRouterV7openURL24presentingViewController7urlTypeySo06UIViewL0C_0A11AppServices7URLTypeOtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A3898();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = UIViewController.resolvedHealthStore.getter();
  if (!v9)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v10 = v9;
  (*(v5 + 16))(v8, a2, v4);
  v11 = (*(v5 + 88))(v8, v4);
  if (v11 == *MEMORY[0x1E69A2CB8])
  {
    v12 = 0;
LABEL_7:
    sub_1BA4A22B8();
    v13 = v10;
    v14 = sub_1BA4A22A8();
    v15 = objc_allocWithZone(type metadata accessor for ProfileViewController());
    swift_retain_n();
    v16 = v13;
    v17 = sub_1BA249DB8(v16, v14, v15);

    v18 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    v19 = [v18 navigationBar];
    [v19 setPrefersLargeTitles_];

    v21 = v12;
    v22 = 0;
    v23 = 2;
    ProfileViewController.handleRestoration(restorationType:)(&v21);

    [a1 dismissViewControllerAnimated:0 completion:{0, sub_1BA24A460(v21, v22, v23)}];
    [a1 presentViewController:v18 animated:0 completion:0];

    return;
  }

  if (v11 == *MEMORY[0x1E69A2D38])
  {
    v12 = 1;
    goto LABEL_7;
  }

  (*(v5 + 8))(v8, v4);
}

void sub_1BA24A2B0(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = UIViewController.resolvedHealthStore.getter();
  if (!v8)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v9 = v8;
  sub_1BA4A22B8();
  v10 = v9;
  v11 = sub_1BA4A22A8();
  v12 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  swift_retain_n();
  v13 = v10;
  v14 = sub_1BA249DB8(v13, v11, v12);

  v16 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v15 = [v16 navigationBar];
  [v15 setPrefersLargeTitles_];

  v17 = a2;
  v18 = a3;
  v19 = a4;

  ProfileViewController.handleRestoration(restorationType:)(&v17);

  [a1 dismissViewControllerAnimated:0 completion:{0, sub_1BA24A460(v17, v18, v19)}];
  [a1 presentViewController:v16 animated:0 completion:0];
}

double sub_1BA24A460(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1BA24A478(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B9F39554(0, v4, 0);
    v7 = v14;
    for (i = a3 + 32; ; i += 40)
    {
      a1(&v13, i);
      if (v3)
      {
        break;
      }

      v9 = v13;
      v14 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v13;
        sub_1B9F39554((v10 > 1), v11 + 1, 1);
        v9 = v12;
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 16 * v11 + 32) = v9;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}