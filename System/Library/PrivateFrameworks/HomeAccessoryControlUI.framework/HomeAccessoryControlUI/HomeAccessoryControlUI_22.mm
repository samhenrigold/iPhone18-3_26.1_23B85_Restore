uint64_t sub_252580A60@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[11];
  v29 = a1[10];
  v30 = v3;
  v31 = a1[12];
  v4 = a1[7];
  v25 = a1[6];
  v26 = v4;
  v5 = a1[9];
  v27 = a1[8];
  v28 = v5;
  v6 = a1[3];
  v21 = a1[2];
  v22 = v6;
  v7 = a1[5];
  v23 = a1[4];
  v24 = v7;
  v8 = a1[1];
  v19 = *a1;
  v20 = v8;
  type metadata accessor for AnimationModel(0);
  sub_252583B30(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  v9 = sub_252690DF0();
  v10 = v30;
  *(a2 + 160) = v29;
  *(a2 + 176) = v10;
  *(a2 + 192) = v31;
  v11 = v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v11;
  v12 = v28;
  *(a2 + 128) = v27;
  *(a2 + 144) = v12;
  v13 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v13;
  v14 = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v14;
  v15 = v20;
  *a2 = v19;
  *(a2 + 16) = v15;
  *(a2 + 208) = v9;
  *(a2 + 216) = v16;
  return sub_25237153C(&v19, &v18, &qword_27F4E2CF8, &qword_2526A7F38);
}

uint64_t sub_252580B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D48, &qword_2526A7F50) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00, &unk_25269F1C0) + 28);
  v7 = *MEMORY[0x277CDF3C0];
  v8 = sub_252690850();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CF0, &unk_2526A7F00);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_252580C84(uint64_t a1, double *a2, uint64_t a3)
{
  result = type metadata accessor for AccessoryControlSheetView(0);
  v6 = *(a3 + *(result + 32));
  if (v6)
  {
    *(v6 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_allowsSwipeDownDismissal) = *a2 <= 1.0;
  }

  else
  {
    type metadata accessor for AccessoryControlLegacyViewModel(0);
    sub_252583B30(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel, &unk_2526AB130);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void sub_252580D3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_252583B30(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
  sub_25268DB30();

  *a2 = *(v3 + 16);
}

uint64_t sub_252580E0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = (a1 + *(type metadata accessor for AccessoryControlSheetView(0) + 28));
  v8 = v6[1];
  v16 = *v6;
  v7 = v16;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3060, &qword_2526A84E0);
  sub_2526924E0();
  v9 = v18;
  swift_getKeyPath();
  v16 = v9;
  sub_252583B30(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
  sub_25268DB30();

  v10 = *(v9 + 17);

  v16 = v7;
  v17 = v8;
  sub_2526924E0();
  v11 = v18;
  swift_getKeyPath();
  v16 = v11;
  sub_25268DB30();

  v12 = OBJC_IVAR____TtCV22HomeAccessoryControlUI25AccessoryControlSheetView31SettingsPresentationCoordinator__source;
  swift_beginAccess();
  sub_25237153C(v11 + v12, v5, &qword_27F4E3070, &qword_2526A8520);

  sub_2525840EC(v10, v5, &v18);
  result = sub_252372288(v5, &qword_27F4E3070, &qword_2526A8520);
  *v15 = v18;
  return result;
}

uint64_t sub_252581024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v42 = a2;
  v46 = a3;
  v47 = type metadata accessor for ControlModuleView(0);
  MEMORY[0x28223BE20](v47);
  v5 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3188, &qword_2526A8900);
  MEMORY[0x28223BE20](v43);
  v45 = &v40 - v6;
  v44 = type metadata accessor for ModuleLayoutView(0);
  MEMORY[0x28223BE20](v44);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0, &unk_2526A8D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for AccessoryControlModule.Layout(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Device.ControlModule(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8, &qword_2526A8040);
  v41 = a1;
  MEMORY[0x2530A4210](v20);
  sub_25237153C(v19 + *(v17 + 36), v11, &qword_27F4E2DC0, &unk_2526A8D70);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4E2DC0, &unk_2526A8D70);
    v21 = type metadata accessor for AccessoryControlSheetView.ControlsView(0);
    v22 = v42;
    v23 = v42 + v21[6];
    v49 = *v23;
    v50 = *(v23 + 8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B90, &unk_2526A7CE0);
    MEMORY[0x2530A4210](&v48, v24);
    v25 = sub_25257B384(v19, v48);
    v27 = v26;

    v28 = *v22;
    v29 = v47;
    sub_252582648(v22 + v21[5], v5 + *(v47 + 20), type metadata accessor for Device);
    sub_25237153C(v41, v5 + v29[6], &qword_27F4E2DD8, &qword_2526A8040);
    v30 = (v22 + v21[7]);
    v31 = *v30;
    v32 = v30[1];
    KeyPath = swift_getKeyPath();
    LOBYTE(v49) = 0;
    *v5 = v28;
    *(v5 + v29[7]) = (v25 == 0) & ~v27;
    v34 = (v5 + v29[8]);
    *v34 = v31;
    v34[1] = v32;
    v35 = v5 + v29[9];
    *v35 = KeyPath;
    v35[65] = 0;
    sub_252582648(v5, v45, type metadata accessor for ControlModuleView);
    swift_storeEnumTagMultiPayload();
    sub_252583B30(&qword_27F4E3168, type metadata accessor for ModuleLayoutView, &unk_2526A6274);
    sub_252583B30(&qword_27F4E3170, type metadata accessor for ControlModuleView, &unk_2526AA5A4);
    sub_252691470();
    v36 = type metadata accessor for ControlModuleView;
    v37 = v5;
  }

  else
  {
    sub_252582710(v11, v15, type metadata accessor for AccessoryControlModule.Layout);
    v38 = *v42;
    sub_252582648(v15, v8 + *(v44 + 20), type metadata accessor for AccessoryControlModule.Layout);
    *v8 = v38;
    sub_252582648(v8, v45, type metadata accessor for ModuleLayoutView);
    swift_storeEnumTagMultiPayload();
    sub_252583B30(&qword_27F4E3168, type metadata accessor for ModuleLayoutView, &unk_2526A6274);
    sub_252583B30(&qword_27F4E3170, type metadata accessor for ControlModuleView, &unk_2526AA5A4);
    sub_252691470();
    sub_2525826B0(v8, type metadata accessor for ModuleLayoutView);
    v36 = type metadata accessor for AccessoryControlModule.Layout;
    v37 = v15;
  }

  sub_2525826B0(v37, v36);
  return sub_2525826B0(v19, type metadata accessor for Device.ControlModule);
}

uint64_t sub_252581634(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = (v1 + *(v4 + 32));
  v6 = v5[1];
  v7 = v5[2];
  v11[1] = *v5;
  v11[2] = v6;
  v11[3] = v7;
  sub_252582648(v1, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryControlSheetView.ControlsView);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_252582710(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AccessoryControlSheetView.ControlsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B90, &unk_2526A7CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3138, &qword_2526A88E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3140, &unk_2526A88F0);
  sub_2525838A4();
  sub_252583990();
  sub_252583A7C();
  return sub_2526927B0();
}

uint64_t sub_25258180C()
{
  v1 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v27 - v5;
  v7 = sub_2526910F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v12 = *(v0 + 64);
  v38 = *(v0 + 48);
  v39 = v12;
  v40 = *(v0 + 80);
  v13 = *(v0 + 32);
  v36 = *(v0 + 16);
  v37 = v13;
  if (*(v0 + 104))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_252690680();

    v14 = v30;
    v35 = v30;
    if ((v40 & 0x100) != 0)
    {
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v30 = v36;
      v31 = v37;
    }

    else
    {

      sub_252692F00();
      v15 = sub_2526919C0();
      v28 = v7;
      v16 = v15;
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v36, &qword_27F4DC120, &qword_25269CED0);
      (*(v8 + 8))(v10, v28);
    }

    if (BYTE1(v30) == 1)
    {
      v27[1] = v11;
      v17 = *(v14 + 16);
      if (v17)
      {
        v18 = 0;
        v19 = MEMORY[0x277D84F90];
        v28 = v1;
        while (v18 < *(v14 + 16))
        {
          v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v21 = *(v2 + 72);
          sub_252582648(v14 + v20 + v21 * v18, v6, type metadata accessor for AccessoryControlDecorationButton.Config);
          if (v6[*(v1 + 44)])
          {
            sub_2525826B0(v6, type metadata accessor for AccessoryControlDecorationButton.Config);
          }

          else
          {
            sub_252582710(v6, v29, type metadata accessor for AccessoryControlDecorationButton.Config);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v30 = v19;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2523706D8(0, *(v19 + 16) + 1, 1);
              v19 = v30;
            }

            v24 = *(v19 + 16);
            v23 = *(v19 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_2523706D8((v23 > 1), v24 + 1, 1);
              v19 = v30;
            }

            *(v19 + 16) = v24 + 1;
            sub_252582710(v29, v19 + v20 + v24 * v21, type metadata accessor for AccessoryControlDecorationButton.Config);
            v1 = v28;
          }

          if (v17 == ++v18)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_21;
      }

      v19 = MEMORY[0x277D84F90];
LABEL_18:

      v35 = v19;
    }

    sub_2523C65DC(v25);
    return v35;
  }

LABEL_21:
  type metadata accessor for AccessoryControlLegacyViewModel(0);
  sub_252583B30(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel, &unk_2526AB130);
  result = sub_252690DE0();
  __break(1u);
  return result;
}

uint64_t sub_252581C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[5];
  v44 = v1[4];
  v45 = v7;
  v46 = v1[6];
  v47 = *(v1 + 14);
  v8 = v1[1];
  v40 = *v1;
  v41 = v8;
  v9 = v1[3];
  v42 = v1[2];
  v43 = v9;
  v35 = sub_252692310();
  v10 = sub_25258180C();
  KeyPath = swift_getKeyPath();
  v48 = 0;

  v33 = sub_252679C08(v11);

  v12 = *(&v45 + 1);
  v29 = v4;
  if (v46 == 1)
  {
    v39 = *(&v45 + 1);
  }

  else
  {

    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    v14 = sub_252583818(v12, 0);
    (*(v4 + 8))(v6, v3, v14);
    v12 = v39;
  }

  v15 = swift_getKeyPath();
  v38 = 0;
  type metadata accessor for AnimationModel(0);
  sub_252583B30(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  v32 = sub_252690DF0();
  v31 = v16;
  v30 = v40;
  v17 = sub_252690DF0();
  v19 = v18;
  result = swift_getKeyPath();
  if (BYTE1(v45))
  {
    v36[2] = v43;
    v36[3] = v44;
    v37 = v45;
    v36[1] = v42;
    v36[0] = v41;
  }

  else
  {
    v27[1] = v41;
    v28 = result;
    sub_25237153C(&v41, v36, &qword_27F4DC510, &qword_2526ABB60);
    sub_252692F00();
    v27[0] = v3;
    v21 = v17;
    v22 = v15;
    v23 = sub_2526919C0();
    sub_252690570();

    v15 = v22;
    v17 = v21;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v41, &qword_27F4DC510, &qword_2526ABB60);
    (*(v29 + 8))(v6, v27[0]);
    result = v28;
  }

  v24 = BYTE8(v36[0]);
  *a1 = v35;
  *(a1 + 8) = 256;
  v25 = v33;
  *(a1 + 16) = v10;
  *(a1 + 24) = v25;
  *(a1 + 32) = KeyPath;
  *(a1 + 97) = 0;
  *(a1 + 104) = v12;
  *(a1 + 112) = v15;
  *(a1 + 177) = 0;
  v26 = v31;
  *(a1 + 184) = v32;
  *(a1 + 192) = v26;
  *(a1 + 200) = v17;
  *(a1 + 208) = v19;
  *(a1 + 216) = v30;
  *(a1 + 224) = result;
  *(a1 + 232) = v24;
  return result;
}

void *sub_252582090@<X0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_252690680();

    if (v30)
    {
      v12 = v30;
      KeyPath = swift_getKeyPath();
      v28 = 0;
      type metadata accessor for AnimationModel(0);
      sub_252583B30(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
      v5 = v12;
      v6 = sub_252690DF0();
      v13 = v12;
      *&v14 = KeyPath;
      BYTE1(v18) = 0;
      *(&v18 + 2) = v30;
      WORD3(v18) = WORD2(v30);
      *(&v18 + 1) = v6;
      v19 = v7;
      v34 = v17;
      *v35 = v18;
      *&v35[16] = v7;
      v30 = v12;
      v31 = v14;
      v32 = v15;
      v33 = v16;
      v29 = 0;
      v35[24] = 0;
      sub_25237153C(&v13, &v20, &qword_27F4E3108, &qword_2526A8860);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3108, &qword_2526A8860);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3110, &qword_2526A8868);
      sub_252583660();
      sub_252583794();
      sub_252691470();

      result = sub_252372288(&v13, &qword_27F4E3108, &qword_2526A8860);
      v34 = v24;
      *v35 = *v25;
      *&v35[9] = *&v25[9];
      v30 = v20;
      v31 = v21;
      v32 = v22;
      v33 = v23;
    }

    else
    {
      sub_252692920();
      sub_2526909C0();
      v28 = 1;
      v27 = BYTE8(v13);
      v26 = BYTE8(v14);
      v29 = 1;
      *&v20 = 0;
      BYTE8(v20) = 1;
      *&v21 = v13;
      BYTE8(v21) = BYTE8(v13);
      *&v22 = v14;
      BYTE8(v22) = BYTE8(v14);
      v23 = v15;
      v25[24] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3108, &qword_2526A8860);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3110, &qword_2526A8868);
      sub_252583660();
      sub_252583794();
      result = sub_252691470();
    }

    v9 = *v35;
    a3[4] = v34;
    a3[5] = v9;
    *(a3 + 89) = *&v35[9];
    v10 = v31;
    *a3 = v30;
    a3[1] = v10;
    v11 = v33;
    a3[2] = v32;
    a3[3] = v11;
  }

  else
  {
    type metadata accessor for AccessoryControlLegacyViewModel(0);
    sub_252583B30(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel, &unk_2526AB130);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void sub_2525823F4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_252583B30(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
  sub_25268DB30();

  *a2 = *(v3 + 17);
}

uint64_t sub_2525824C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_252583B30(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
  sub_25268DB30();

  v4 = OBJC_IVAR____TtCV22HomeAccessoryControlUI25AccessoryControlSheetView31SettingsPresentationCoordinator__source;
  swift_beginAccess();
  return sub_25237153C(v3 + v4, a2, &qword_27F4E3070, &qword_2526A8520);
}

uint64_t sub_25258259C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_25237153C(a1, &v6 - v3, &qword_27F4E3070, &qword_2526A8520);
  return sub_252584F64(v4);
}

uint64_t sub_252582648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525826B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252582710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252582778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryControlSheetView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25257E178(a1, (v2 + v6), v7, a2);
}

unint64_t sub_252582830()
{
  result = qword_27F4E3028;
  if (!qword_27F4E3028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2FD8, &qword_2526A8420);
    sub_252400FC8(&qword_27F4E3030, &qword_27F4E2FD0, &qword_2526A8418, MEMORY[0x277CDD6E0]);
    sub_252583B30(&qword_27F4E3038, type metadata accessor for HeaderViewModifier.ScrollView, &unk_2526A77C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3028);
  }

  return result;
}

unint64_t sub_252582934()
{
  result = qword_27F4E3040;
  if (!qword_27F4E3040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2FF8, &qword_2526A8440);
    sub_2525829C0();
    sub_252573300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3040);
  }

  return result;
}

unint64_t sub_2525829C0()
{
  result = qword_27F4E3048;
  if (!qword_27F4E3048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2FF0, &qword_2526A8438);
    sub_252582A78();
    sub_252400FC8(&qword_27F4E2CE0, &qword_27F4E2CA8, &qword_2526A7EF0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3048);
  }

  return result;
}

unint64_t sub_252582A78()
{
  result = qword_27F4E3050;
  if (!qword_27F4E3050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2FE8, &qword_2526A8430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2FD8, &qword_2526A8420);
    sub_252582830();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4E2CD8, &qword_27F4E2C98, &qword_2526A7EE0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3050);
  }

  return result;
}

uint64_t sub_252582B6C(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for AccessoryControlSheetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252580C84(a1, a2, v6);
}

unint64_t sub_252582BEC()
{
  result = qword_27F4E3058;
  if (!qword_27F4E3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3058);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  v1 = type metadata accessor for AccessoryControlSheetView(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = v0 + v4 + *(v1 + 20);
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for Device(0);

  v9 = v6 + *(v8 + 24);

  v10 = *(type metadata accessor for IconDescriptor(0) + 20);
  v11 = sub_25268F910();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  v12 = v0 + v4 + *(v2 + 44);
  sub_252457A80(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 65));

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_252582F34()
{
  result = qword_27F4E3080;
  if (!qword_27F4E3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3080);
  }

  return result;
}

uint64_t sub_252582F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_252582FF8()
{
  v1 = *(type metadata accessor for AccessoryControlSheetView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);

  return sub_252580210(v0 + v2);
}

unint64_t sub_2525830F0()
{
  result = qword_27F4E30D0;
  if (!qword_27F4E30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E30D0);
  }

  return result;
}

unint64_t sub_252583144()
{
  result = qword_27F4E30D8;
  if (!qword_27F4E30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E30C8, &qword_2526A85F0);
    sub_2525830F0();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E30D8);
  }

  return result;
}

uint64_t sub_252583208(uint64_t a1, int a2)
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

uint64_t sub_252583250(uint64_t result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_252583478(uint64_t a1)
{
  type metadata accessor for Device(319);
  if (v1 <= 0x3F)
  {
    sub_25256CF1C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252583524()
{
  result = qword_27F4E30F8;
  if (!qword_27F4E30F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3100, qword_2526A8720);
    sub_252400FC8(&qword_27F4E2FC8, &qword_27F4E2FC0, &qword_2526A8410, MEMORY[0x277CDF7D8]);
    sub_252583B30(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E30F8);
  }

  return result;
}

unint64_t sub_252583660()
{
  result = qword_27F4E3118;
  if (!qword_27F4E3118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3108, &qword_2526A8860);
    sub_2525836EC();
    sub_252583740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3118);
  }

  return result;
}

unint64_t sub_2525836EC()
{
  result = qword_27F4E3120;
  if (!qword_27F4E3120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3120);
  }

  return result;
}

unint64_t sub_252583740()
{
  result = qword_27F4E3128;
  if (!qword_27F4E3128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3128);
  }

  return result;
}

unint64_t sub_252583794()
{
  result = qword_27F4E3130;
  if (!qword_27F4E3130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3110, &qword_2526A8868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3130);
  }

  return result;
}

double sub_252583818(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_252583824@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryControlSheetView.ControlsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_252581024(a1, v6, a2);
}

unint64_t sub_2525838A4()
{
  result = qword_27F4E3148;
  if (!qword_27F4E3148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2B90, &unk_2526A7CE0);
    sub_252400FC8(&qword_27F4E3150, &qword_27F4E2A48, &qword_2526A7A20, MEMORY[0x277D83960]);
    sub_252400FC8(&qword_27F4E3158, &qword_27F4E2A48, &qword_2526A7A20, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3148);
  }

  return result;
}

unint64_t sub_252583990()
{
  result = qword_27F4E3160;
  if (!qword_27F4E3160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3140, &unk_2526A88F0);
    sub_252583B30(&qword_27F4E3168, type metadata accessor for ModuleLayoutView, &unk_2526A6274);
    sub_252583B30(&qword_27F4E3170, type metadata accessor for ControlModuleView, &unk_2526AA5A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3160);
  }

  return result;
}

unint64_t sub_252583A7C()
{
  result = qword_27F4E3178;
  if (!qword_27F4E3178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2DD8, &qword_2526A8040);
    sub_252583B30(&qword_27F4E3180, type metadata accessor for Device.ControlModule, &protocol conformance descriptor for Device.ControlModule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3178);
  }

  return result;
}

uint64_t sub_252583B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_252583B78()
{
  result = qword_27F4E3198;
  if (!qword_27F4E3198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E31A0, &qword_2526A8918);
    sub_252583660();
    sub_252583794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3198);
  }

  return result;
}

unint64_t sub_252583C04()
{
  result = qword_27F4E31A8;
  if (!qword_27F4E31A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E31B0, &qword_2526A8920);
    sub_252583CBC();
    sub_252400FC8(&qword_27F4E3218, &qword_27F4E3220, &qword_2526A8950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E31A8);
  }

  return result;
}

unint64_t sub_252583CBC()
{
  result = qword_27F4E31B8;
  if (!qword_27F4E31B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E31C0, &unk_2526A8928);
    sub_252400FC8(&qword_27F4DD2E8, &qword_27F4DD2F0, &unk_25269CC00, MEMORY[0x277CDF3A0]);
    sub_252583D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E31B8);
  }

  return result;
}

unint64_t sub_252583D74()
{
  result = qword_27F4E31C8;
  if (!qword_27F4E31C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E31D0, &qword_2526A8938);
    sub_252583E00();
    sub_252584014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E31C8);
  }

  return result;
}

unint64_t sub_252583E00()
{
  result = qword_27F4E31D8;
  if (!qword_27F4E31D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E31E0, &qword_2526A8940);
    sub_252583E8C();
    sub_252583FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E31D8);
  }

  return result;
}

unint64_t sub_252583E8C()
{
  result = qword_27F4E31E8;
  if (!qword_27F4E31E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E31F0, &qword_2526A8948);
    sub_252583F18();
    sub_252583F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E31E8);
  }

  return result;
}

unint64_t sub_252583F18()
{
  result = qword_27F4E31F8;
  if (!qword_27F4E31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E31F8);
  }

  return result;
}

unint64_t sub_252583F6C()
{
  result = qword_27F4E3200;
  if (!qword_27F4E3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3200);
  }

  return result;
}

unint64_t sub_252583FC0()
{
  result = qword_27F4E3208;
  if (!qword_27F4E3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3208);
  }

  return result;
}

unint64_t sub_252584014()
{
  result = qword_27F4E3210;
  if (!qword_27F4E3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3210);
  }

  return result;
}

unint64_t sub_252584068()
{
  result = qword_27F4E3228;
  if (!qword_27F4E3228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3230, &qword_2526A8958);
    sub_252583990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3228);
  }

  return result;
}

uint64_t sub_2525840EC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v89 = a3;
  v78 = a1;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18, &qword_2526A1F30);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = v71 - v6;
  v7 = sub_2526904A0();
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v79 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ThermostatAutomationSettingsView(0);
  MEMORY[0x28223BE20](v81);
  v80 = (v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250, &unk_2526A2310);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v71 - v11;
  v13 = sub_252690490();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v13);
  v77 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = v71 - v16;
  MEMORY[0x28223BE20](v17);
  v84 = v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v71 - v20;
  v22 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v22);
  v24 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25268E060();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 == 2)
  {
    goto LABEL_10;
  }

  (*(v26 + 104))(v29, *MEMORY[0x277D15280], v25, v27);
  sub_252585C34(&qword_27F4DB268, MEMORY[0x277D15298], MEMORY[0x277D15270]);
  v30 = sub_25268DB80();
  (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_25237153C(a2, v21, &qword_27F4E3070, &qword_2526A8520);
  v31 = type metadata accessor for Device.Control.Source(0);
  if ((*(*(v31 - 8) + 48))(v21, 1, v31) == 1)
  {
    v32 = &qword_27F4E3070;
    v33 = &qword_2526A8520;
    v34 = v21;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_252585BC4(v21, type metadata accessor for Device.Control.Source);
      goto LABEL_10;
    }

    sub_252585FEC(v21, v24, type metadata accessor for MatterControlSolver.Source);
    sub_25268F8B0();
    v36 = v87;
    v35 = v88;
    if ((*(v87 + 48))(v12, 1, v88) != 1)
    {
      v76 = v24;
      v38 = *(v36 + 32);
      v74 = v36 + 32;
      v75 = v38;
      v39 = v84;
      v38(v84, v12, v35);
      v73 = *(v36 + 16);
      v73(v83, v39, v35);
      v40 = v86;
      v41 = v85;
      v42 = v79;
      (*(v85 + 104))(v79, *MEMORY[0x277D16E30], v86);
      KeyPath = swift_getKeyPath();
      v44 = v80;
      *v80 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70, &qword_2526A0A00);
      swift_storeEnumTagMultiPayload();
      v45 = v81;
      v46 = (v44 + *(v81 + 20));
      sub_25268E1B0();
      sub_25268E1A0();
      sub_252585C34(&qword_27F4DFA20, MEMORY[0x277D15458], &protocol conformance descriptor for DataModel);
      *v46 = sub_252690AD0();
      v46[1] = v47;
      v48 = v45[6];
      sub_25268DF30();
      *(v44 + v48) = sub_25268DF20();
      v72 = v45[7];
      v71[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA28, &unk_2526A1F70);
      sub_2526907D0();
      v49 = v44 + v45[8];
      v92 = 0;
      v90 = 0u;
      v91 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA30, &qword_2526A6A70);
      sub_2526924D0();
      v50 = v95;
      v51 = v96;
      v52 = v94;
      *v49 = v93;
      *(v49 + 1) = v52;
      v49[32] = v50;
      *(v49 + 5) = v51;
      v53 = v44 + v45[9];
      LOBYTE(v90) = 2;
      sub_2526924D0();
      v54 = *(&v93 + 1);
      *v53 = v93;
      *(v53 + 1) = v54;
      v55 = v44 + v45[10];
      LOBYTE(v90) = 0;
      sub_2526924D0();
      v56 = *(&v93 + 1);
      *v55 = v93;
      *(v55 + 1) = v56;
      v57 = v44 + v45[11];
      LOBYTE(v90) = 0;
      sub_2526924D0();
      v58 = *(&v93 + 1);
      *v57 = v93;
      *(v57 + 1) = v58;
      v59 = v44 + v45[12];
      LOBYTE(v90) = 0;
      sub_2526924D0();
      v60 = *(&v93 + 1);
      *v59 = v93;
      *(v59 + 1) = v60;
      v61 = (v44 + v45[16]);
      *(v44 + v45[14]) = v78 & 1;
      (*(v41 + 16))(v44 + v45[15], v42, v40);
      *v61 = 0;
      v61[1] = 0;
      v62 = v83;
      sub_252690400();
      v63 = v77;
      v64 = v88;
      v73(v77, v62, v88);
      v65 = v87;
      v66 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v67 = swift_allocObject();
      v75(v67 + v66, v63, v64);
      v68 = v82;
      sub_2526907D0();
      (*(v85 + 8))(v42, v86);
      v69 = *(v65 + 8);
      v69(v62, v64);
      sub_252377048(v68, v44 + v72, &qword_27F4DFA18, &qword_2526A1F30);
      sub_252585C34(&qword_27F4E2150, type metadata accessor for ThermostatAutomationSettingsView, &protocol conformance descriptor for ThermostatAutomationSettingsView);
      v70 = sub_252692690();
      v69(v84, v64);
      sub_252585BC4(v76, type metadata accessor for MatterControlSolver.Source);
      result = v70;
      goto LABEL_11;
    }

    sub_252585BC4(v24, type metadata accessor for MatterControlSolver.Source);
    v32 = &qword_27F4DB250;
    v33 = &unk_2526A2310;
    v34 = v12;
  }

  sub_252372288(v34, v32, v33);
LABEL_10:
  result = sub_252692690();
LABEL_11:
  *v89 = result;
  return result;
}

uint64_t sub_252584B10()
{
  swift_getKeyPath();
  sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
  sub_25268DB30();

  return *(v0 + 16);
}

void sub_252584BB0(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
    sub_25268DB20();
  }
}

uint64_t sub_252584CC0()
{
  swift_getKeyPath();
  sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
  sub_25268DB30();

  return *(v0 + 17);
}

double sub_252584D60(unsigned __int8 a1)
{
  v2 = *(v1 + 17);
  if (v2 != 2)
  {
    if (a1 == 2 || ((v2 ^ a1) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 17) = a1;
    return result;
  }

  if (a1 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
  sub_25268DB20();

  return result;
}

uint64_t sub_252584E8C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
  sub_25268DB30();

  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI25AccessoryControlSheetView31SettingsPresentationCoordinator__source;
  swift_beginAccess();
  return sub_25237153C(v5 + v3, a1, &qword_27F4E3070, &qword_2526A8520);
}

uint64_t sub_252584F64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV22HomeAccessoryControlUI25AccessoryControlSheetView31SettingsPresentationCoordinator__source;
  swift_beginAccess();
  sub_25237153C(v1 + v6, v5, &qword_27F4E3070, &qword_2526A8520);
  v7 = sub_252585C7C(v5, a1);
  sub_252372288(v5, &qword_27F4E3070, &qword_2526A8520);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
    sub_25268DB20();
  }

  else
  {
    sub_25237153C(a1, v5, &qword_27F4E3070, &qword_2526A8520);
    swift_beginAccess();
    sub_252377048(v5, v1 + v6, &qword_27F4E3070, &qword_2526A8520);
    swift_endAccess();
  }

  return sub_252372288(a1, &qword_27F4E3070, &qword_2526A8520);
}

uint64_t sub_25258516C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV22HomeAccessoryControlUI25AccessoryControlSheetView31SettingsPresentationCoordinator__source;
  swift_beginAccess();
  sub_252585F7C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2525851D8(uint64_t a1)
{
  v31 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v31);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - v17;
  v19 = type metadata accessor for Device.Control(0);
  sub_252585B5C(a1 + *(v19 + 24), v18, type metadata accessor for Device.Control.Source);
  v20 = type metadata accessor for Device.Control.Source(0);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  sub_252584F64(v18);
  sub_252585B5C(a1 + *(v19 + 20), v12, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    v23 = v12;
    return sub_252585BC4(v23, type metadata accessor for Device.Control.Kind);
  }

  v21 = swift_projectBox();
  sub_25237153C(v21, v6, &qword_27F4DB430, &qword_2526A9B30);
  v22 = *(v4 + 48);
  sub_252585FEC(v6, v15, type metadata accessor for Device.Control.Kind);
  sub_252585BC4(&v6[v22], type metadata accessor for AccessoryControl.DecorationControlConfig);

  sub_252585B5C(v15, v9, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_252585BC4(v15, type metadata accessor for Device.Control.Kind);
    v23 = v9;
    return sub_252585BC4(v23, type metadata accessor for Device.Control.Kind);
  }

  sub_252393F68(*v9, v9[1], v9[2], v9[3], v9[4]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
  v26 = v32;
  sub_252585FEC(v9 + *(v25 + 48), v32, type metadata accessor for AccessoryControl.BinaryViewConfig);
  v27 = *(v1 + 17);
  if (*(v26 + *(v31 + 36)))
  {
    if (*(v26 + *(v31 + 36)) == 1)
    {
      if (v27 != 2 && (v27 & 1) == 0)
      {
        *(v1 + 17) = 0;
LABEL_20:
        sub_252585BC4(v26, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v23 = v15;
        return sub_252585BC4(v23, type metadata accessor for Device.Control.Kind);
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v31 - 2) = v1;
      *(&v31 - 8) = 0;
      v33 = v1;
      sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
    }

    else
    {
      if (v27)
      {
        *(v1 + 17) = 1;
        goto LABEL_20;
      }

      v30 = swift_getKeyPath();
      MEMORY[0x28223BE20](v30);
      *(&v31 - 2) = v1;
      *(&v31 - 8) = 1;
      v33 = v1;
      sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
    }

    sub_25268DB20();

    goto LABEL_20;
  }

  if (v27 == 2)
  {
    sub_252585BC4(v26, type metadata accessor for AccessoryControl.BinaryViewConfig);
    result = sub_252585BC4(v15, type metadata accessor for Device.Control.Kind);
    *(v1 + 17) = 2;
  }

  else
  {
    v29 = swift_getKeyPath();
    MEMORY[0x28223BE20](v29);
    *(&v31 - 2) = v1;
    *(&v31 - 8) = 2;
    v33 = v1;
    sub_252585C34(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa, &unk_2526A8A38);
    sub_25268DB20();

    sub_252585BC4(v26, type metadata accessor for AccessoryControl.BinaryViewConfig);
    return sub_252585BC4(v15, type metadata accessor for Device.Control.Kind);
  }

  return result;
}

uint64_t sub_2525858AC()
{
  sub_252372288(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI25AccessoryControlSheetView31SettingsPresentationCoordinator__source, &qword_27F4E3070, &qword_2526A8520);
  v1 = OBJC_IVAR____TtCV22HomeAccessoryControlUI25AccessoryControlSheetView31SettingsPresentationCoordinator___observationRegistrar;
  v2 = sub_25268DB70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s31SettingsPresentationCoordinatorCMa(uint64_t a1)
{
  result = qword_27F4E3248;
  if (!qword_27F4E3248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2525859BC(uint64_t a1)
{
  sub_252585A9C(319);
  if (v1 <= 0x3F)
  {
    sub_25268DB70();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_252585A9C(uint64_t a1)
{
  if (!qword_27F4E3258)
  {
    type metadata accessor for Device.Control.Source(255);
    v1 = sub_252693130();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E3258);
    }
  }
}

unint64_t sub_252585B08()
{
  result = qword_27F4E3260;
  if (!qword_27F4E3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3260);
  }

  return result;
}

uint64_t sub_252585B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252585BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252585C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252585C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control.Source(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4E3268, &qword_2526A8AE8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_25237153C(a1, &v20 - v12, &qword_27F4E3070, &qword_2526A8520);
  sub_25237153C(a2, &v13[v15], &qword_27F4E3070, &qword_2526A8520);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_25237153C(v13, v10, &qword_27F4E3070, &qword_2526A8520);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_252585FEC(&v13[v15], v7, type metadata accessor for Device.Control.Source);
      v18 = static Device.Control.Source.== infix(_:_:)(v10, v7);
      sub_252585BC4(v7, type metadata accessor for Device.Control.Source);
      sub_252585BC4(v10, type metadata accessor for Device.Control.Source);
      sub_252372288(v13, &qword_27F4E3070, &qword_2526A8520);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_252585BC4(v10, type metadata accessor for Device.Control.Source);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_252372288(v13, qword_27F4E3268, &qword_2526A8AE8);
    v17 = 1;
    return v17 & 1;
  }

  sub_252372288(v13, &qword_27F4E3070, &qword_2526A8520);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_252585F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_252585FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_25258606C@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F4DAA00 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = byte_27F4DC910;
  v2 = word_27F4DC938;
  v3 = HIBYTE(word_27F4DC938);
  *a1 = 0;
  *(a1 + 8) = v1;
  result = *&qword_27F4DC918;
  v5 = *&qword_27F4DC928;
  *(a1 + 16) = *&qword_27F4DC918;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2;
  *(a1 + 49) = v3;
  *(a1 + 56) = 3;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_25258614C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for AccessoryControlViewController + 8), a1);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_252691380();
  sub_2523C3820(&v7[*(v4 + 44)], a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_252586268(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_252691380();
  __swift_assign_boxed_opaque_existential_1(&v9[*(v6 + 44)], a1, v10);
  sub_2525890E0(v9, v11, v12, v13);
  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void (*sub_252586394(uint64_t *a1))(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_25258614C(v4, v3);
  return sub_25258640C;
}

void sub_25258640C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (a2)
  {
    sub_2523C3820(*a1, (v4 + 5));
    sub_252586268(v4 + 5, v5, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_252586268(*a1, a2, a3, a4);
  }

  free(v4);
}

uint64_t sub_252586474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  sub_252691380();
  v9 = *(v6 + 8);

  v9(v8, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v11[1];
}

uint64_t sub_2525865E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  sub_252691380();
  v10 = *(v7 + 8);

  v10(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v12[1] = a1;
  return sub_252690690();
}

void (*sub_252586734(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = v4;
  *a1 = sub_252586474(a1, a2, a3, a4);
  return sub_25258677C;
}

void sub_25258677C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_2525865E0(v4, v5, v6, v7);
  }

  else
  {
    sub_2525865E0(*a1, a2, a3, a4);
  }
}

__n128 sub_2525867D4@<Q0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for AccessoryControlViewController + 8), a1);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  sub_252691380();
  v8 = &v7[*(v4 + 48)];
  v9 = *(v8 + 3);
  v15 = *(v8 + 2);
  v16 = v9;
  v17 = v8[64];
  v10 = *(v8 + 1);
  v13 = *v8;
  v14 = v10;
  (*(v5 + 8))(v7, v4);
  v11 = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v11;
  *(a2 + 64) = v17;
  result = v14;
  *a2 = v13;
  *(a2 + 16) = result;
  return result;
}

void sub_25258691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  sub_252691380();
  v10 = &v9[*(v6 + 48)];
  v11 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v11;
  v10[64] = *(a1 + 64);
  v12 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v12;
  sub_2525890E0(v9, v13, v14, v15);
  v16 = (*(v7 + 8))(v9, v6);
  sub_252588478(v16, v17, v18, v19);
}

void (*sub_252586A54(uint64_t *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  sub_2525867D4(v4, v3);
  return sub_252586ACC;
}

void sub_252586ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v7[2] = *(*a1 + 32);
  v7[3] = v5;
  v8 = v4[64];
  v6 = *(v4 + 1);
  v7[0] = *v4;
  v7[1] = v6;
  sub_25258691C(v7, a2, a3, a4);

  free(v4);
}

uint64_t (*sub_252586BCC(uint64_t a1))(uint64_t result)
{
  v2 = *MEMORY[0x277D85000] & *v1;
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + *(v2 + class metadata base offset for AccessoryControlViewController + 40)) + 41);
  return sub_252586C40;
}

uint64_t sub_252586C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_252691380();
  v9 = *(v6 + 8);

  v9(v8, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v11;
}

void sub_252586E04(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  sub_252691380();
  v14 = *(v8 + 8);

  v14(v13, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v15 = v17[0];
  if (v17[0])
  {
    [v17[0] removeFromParentViewController];
  }

  sub_252691380();

  v14(v10, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  v17[0] = a1;
  v17[1] = a2;
  v16 = a1;
  sub_252690690();
  if (a1)
  {
    [v4 addChildViewController_];
    [v16 didMoveToParentViewController_];
  }
}

void (*sub_252587060(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[2] = v4;
  *a1 = sub_252586C98(a1, a2, a3, a4);
  a1[1] = v6;
  return sub_2525870A8;
}

void sub_2525870A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v8 = v5;
    sub_252586E04(v5, v4, v6, v7);
  }

  else
  {
    sub_252586E04(*a1, v4, a3, a4);
  }
}

uint64_t sub_252587128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_252691380();
  v9 = *&v8[*(v5 + 64)];
  v10 = *(v6 + 8);

  v10(v8, v5);
  return v9;
}

double sub_252587244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2525891E4(a1, a2, a3, a4);

  return result;
}

double (*sub_25258727C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = v4;
  *a1 = sub_252587128(a1, a2, a3, a4);
  return sub_2525872C4;
}

double sub_2525872C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (a2)
  {

    sub_2525891E4(v5, v6, v7, v8);
  }

  else
  {
    sub_2525891E4(v4, a2, a3, a4);
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

id AccessoryControlViewController.__allocating_init(model:deviceIdentifier:tileHelper:alarmAndTimerUIViewBuilder:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_252589310(a1, a2, a3, a4, a5);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  return v13;
}

id AccessoryControlViewController.init(model:deviceIdentifier:tileHelper:alarmAndTimerUIViewBuilder:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = sub_252589310(a1, a2, a3, a4, a5);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  return v6;
}

void sub_252587748()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  *(*(v1 + *((*MEMORY[0x277D85000] & v2) + class metadata base offset for AccessoryControlViewController + 40)) + 24) = &off_28648D500;
  v4 = swift_unknownObjectWeakAssign();
  (*(**(v1 + *((*v3 & *v1) + class metadata base offset for AccessoryControlViewController + 16)) + 184))(v4);

  sub_252588030();
}

id AccessoryControlViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2525878B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccessoryControlViewController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v9.receiver = v4;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_252587998(void *a1)
{
  v4 = a1;
  sub_2525878B0(v4, v1, v2, v3);
}

double sub_2525879E0(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930, &qword_2526964E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v10 = type metadata accessor for AccessoryControlViewController(0, *(v5 + class metadata base offset for AccessoryControlViewController), *(v5 + class metadata base offset for AccessoryControlViewController + 8), v9);
  v19.receiver = v2;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, sel_viewWillAppear_, a1 & 1);
  v11 = *(v2 + *((*v4 & *v2) + class metadata base offset for AccessoryControlViewController + 16));
  v12 = (*(*v11 + 200))(1);
  (*(*v11 + 160))(v12);
  v13 = sub_252692E30();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_252692E00();
  v14 = v2;
  v15 = sub_252692DF0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  sub_2525738C0(0, 0, v8, &unk_2526A8BC0, v16);

  return result;
}

uint64_t sub_252587C04()
{
  v0[2] = sub_252692E00();
  v0[3] = sub_252692DF0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_25245E280;

  return sub_25258A2E8();
}

void sub_252587CB0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2525879E0(a3);
}

id sub_252587D04(char a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  (*(**(v1 + *(v3 + class metadata base offset for AccessoryControlViewController + 16)) + 200))(0);
  v5 = type metadata accessor for AccessoryControlViewController(0, *(v3 + class metadata base offset for AccessoryControlViewController), *(v3 + class metadata base offset for AccessoryControlViewController + 8), v4);
  v7.receiver = v1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
}

void sub_252587DE0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_252587D04(a3);
}

void sub_252587E34(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for AccessoryControlViewController(0, *((*MEMORY[0x277D85000] & *v6) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v6) + class metadata base offset for AccessoryControlViewController + 8), a6);
  v15.receiver = v6;
  v15.super_class = v10;
  objc_msgSendSuper2(&v15, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v14[4] = sub_252589A7C;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_25258819C;
  v14[3] = &block_descriptor_2;
  v12 = _Block_copy(v14);
  v13 = v6;

  [a1 animateAlongsideTransition:v12 completion:0];
  _Block_release(v12);
}

double sub_252587F8C(uint64_t a1)
{
  sub_252588030();
  type metadata accessor for TransitionTileHelper();
  sub_25241A480();
  sub_252690630();
  sub_252690650();

  return result;
}

void sub_252588030()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v0 + *(v1 + class metadata base offset for AccessoryControlViewController + 40));
  v3 = *(v0 + *(v1 + class metadata base offset for AccessoryControlViewController + 16));
  v4 = (*(*v3 + 192))();
  v5 = swift_beginAccess();
  *(v2 + 32) = v4;
  (*(*v3 + 112))(&v17, v5);
  v7 = v17;
  if (v17 != 2)
  {
    v8 = v20;
    sub_2525867D4(v6, v13);
    v13[8] = v7 & 1;
    v15 = v19;
    v14 = v18;
    v16 = v8 & 0x101;
    sub_25258691C(v13, v9, v10, v11);
  }

  sub_2525867D4(v6, &v17);
  v12 = v18;
  swift_beginAccess();
  *(v2 + 40) = v12;
}

uint64_t sub_25258819C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_2525881FC(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_252587E34(a5, a2, a3, v11, v9, v10);
  swift_unknownObjectRelease();
}

void sub_25258827C(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = aBlock - v11;
  if (a1)
  {
    sub_252691380();
    v13 = AccessoryControlModelView.dismiss(completion:)(a2, a3, v8);
    (*(v9 + 8))(v12, v8, v13);
  }

  else
  {
    v14 = [v4 presentingViewController];
    if (v14)
    {
      v15 = v14;
      [v14 dismissViewControllerAnimated:0 completion:0];
    }

    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_252576CB4;
      aBlock[3] = &block_descriptor_15;
      a2 = _Block_copy(aBlock);
    }

    [v4 dismissViewControllerAnimated:0 completion:a2];
    _Block_release(a2);
  }
}

void sub_252588478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v4;
  v8 = *(v7 + class metadata base offset for AccessoryControlViewController);
  v9 = *(v7 + class metadata base offset for AccessoryControlViewController + 8);
  v10 = type metadata accessor for AccessoryControlModelView(0, v8, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-v12 - 8];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v14 = sub_2526905A0();
  __swift_project_value_buffer(v14, qword_27F4E4B18);
  v15 = sub_252690580();
  v16 = sub_252692F10();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v6;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_252309000, v15, v16, "styleDidUpdate", v18, 2u);
    v19 = v18;
    v6 = v17;
    MEMORY[0x2530A5A40](v19, -1, -1);
  }

  sub_2525867D4(v20, v39);
  if ((v40 & 2) != 0)
  {
    v22 = (*v6 & *v5) + class metadata base offset for AccessoryControlViewController;
    if (!*(v5 + *(v22 + 48)))
    {
      v23 = *(v5 + *(v22 + 40));

      sub_252691380();
      v24 = *&v13[*(v10 + 52)];
      v25 = *(v11 + 8);

      v25(v13, v10);
      v26 = [v5 view];
      if (!v26)
      {
        __break(1u);
        return;
      }

      v28 = v26;
      _s28SwipeDownDismissalControllerCMa(0, v8, v9, v27);
      v29 = sub_25258BCCC(v23, v24, v28);
      v6 = MEMORY[0x277D85000];
      v30 = *((*MEMORY[0x277D85000] & *v5) + class metadata base offset for AccessoryControlViewController + 48);
      v31 = *(v5 + v30);
      *(v5 + v30) = v29;
    }
  }

  sub_2525867D4(v21, v39);
  if ((v40 & 2) == 0)
  {
    v32 = *v6 & *v5;
    v33 = class metadata base offset for AccessoryControlViewController;
    v34 = *(v5 + *(v32 + class metadata base offset for AccessoryControlViewController + 48));
    if (v34)
    {
      v35 = v34;
      sub_25258BEF8();

      v33 = class metadata base offset for AccessoryControlViewController;
      v32 = *v6 & *v5;
    }

    v36 = *(v32 + v33 + 48);
    v37 = *(v5 + v36);
    *(v5 + v36) = 0;
  }
}

void sub_252588910()
{
  v1 = MEMORY[0x277D85000];

  swift_unknownObjectRelease();
  v2 = *((*v1 & *v0) + class metadata base offset for AccessoryControlViewController + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v2], AssociatedTypeWitness);

  v4 = *&v0[*((*v1 & *v0) + class metadata base offset for AccessoryControlViewController + 48)];
}

id AccessoryControlViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccessoryControlViewController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_252588B5C(char *a1)
{
  v2 = MEMORY[0x277D85000];

  swift_unknownObjectRelease();
  v3 = *((*v2 & *a1) + class metadata base offset for AccessoryControlViewController + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v3], AssociatedTypeWitness);

  v5 = *&a1[*((*v2 & *a1) + class metadata base offset for AccessoryControlViewController + 48)];
}

double sub_252588DB8()
{
  (*(**(v0 + *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for AccessoryControlViewController + 16)) + 152))();
  type metadata accessor for TransitionTileHelper();
  sub_25241A480();
  sub_252690630();
  sub_252690650();

  return result;
}

void sub_252588F0C(char a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_252576CB4;
    v7[3] = &block_descriptor_40;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v4 dismissViewControllerAnimated:a1 & 1 completion:v6];
  _Block_release(v6);
}

double sub_252588FE0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_252589060(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_252690690();
}

uint64_t sub_2525890E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v11 - v8, a1, v7);
  return sub_252691390();
}

uint64_t sub_2525891E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessoryControlModelView(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AccessoryControlViewController + 8), a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;

  sub_252691380();
  v10 = *(v6 + 64);

  *&v9[v10] = a1;
  sub_2525890E0(v9, v11, v12, v13);
  return (*(v7 + 8))(v9, v6);
}

id sub_252589310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  v64 = a4;
  v63 = a3;
  v60 = a2;
  v9 = ((*MEMORY[0x277D85000] & *v6) + class metadata base offset for AccessoryControlViewController);
  v10 = *v9;
  v62 = v9[1];
  v61 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = &v56 - v13;
  v59 = type metadata accessor for AccessoryControlModelView(0, v10, v62, v14);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v56 - v15;
  v17 = a5[2];
  v18 = a5[3];
  v19 = *a5;
  v72 = a5[1];
  v73 = v17;
  v74 = v18;
  v75 = *(a5 + 64);
  v71 = v19;
  v20 = v9[5];
  type metadata accessor for AnimationModel(0);
  swift_allocObject();
  v21 = AnimationModel.init()();
  *&v6[v20] = v21;
  v22 = MEMORY[0x277D85000];
  *&v6[*((*MEMORY[0x277D85000] & *v6) + class metadata base offset for AccessoryControlViewController + 48)] = 0;
  v23 = v22;
  *&v6[*((*v22 & *v6) + class metadata base offset for AccessoryControlViewController + 24)] = a1;
  v24 = *(v12 + 16);
  v25 = v60;
  v24(&v6[*((*v22 & *v6) + class metadata base offset for AccessoryControlViewController + 32)], v60, AssociatedTypeWitness);
  *&v6[*((*v23 & *v6) + class metadata base offset for AccessoryControlViewController + 16)] = v63;
  v26 = v58;
  v24(v58, v25, AssociatedTypeWitness);
  v27 = v57;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  swift_unknownObjectRetain_n();
  swift_retain_n();

  sub_25258606C(&v65);
  v28 = v26;
  v29 = v59;
  sub_252574250(v28, v21, &v65, &v68, v61, v62, v16);
  v30 = sub_252691370();
  sub_252691380();
  v31 = *(v27 + 8);

  v32 = v31(v16, v29);
  v36 = sub_252586474(v32, v33, v34, v35);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v65 = v36;
  v37 = v64;
  sub_252690690();
  sub_25258A200(v37, &v68);
  if (*(&v69 + 1))
  {
    sub_25235E1A4(&v68, &v65);
  }

  else
  {
    v38 = type metadata accessor for EmptyAlarmAndTimerUIViewBuilder();
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0xE000000000000000;
    v39[4] = 0;
    v39[5] = 0xE000000000000000;
    v67 = &off_286488550;
    v66 = v38;
    *&v65 = v39;
  }

  sub_252691380();
  v40 = *(v29 + 44);
  __swift_destroy_boxed_opaque_existential_1Tm(&v16[v40]);
  sub_25235E1A4(&v65, &v16[v40]);
  sub_2525890E0(v16, v41, v42, v43);
  v31(v16, v29);
  sub_252691380();
  v44 = &v16[*(v29 + 48)];
  v45 = v72;
  v46 = v74;
  *(v44 + 2) = v73;
  *(v44 + 3) = v46;
  v44[64] = v75;
  *v44 = v71;
  *(v44 + 1) = v45;
  sub_2525890E0(v16, v47, v48, v49);
  v31(v16, v29);
  v50 = v30;
  sub_252690CC0();
  sub_252691360();
  [v50 setModalPresentationStyle_];

  sub_252588478(v51, v52, v53, v54);
  sub_252587748();

  sub_25258A270(v37);
  return v50;
}

void _s22HomeAccessoryControlUI0bC14ViewControllerC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for AccessoryControlViewController + 40);
  type metadata accessor for AnimationModel(0);
  swift_allocObject();
  *(v0 + v2) = AnimationModel.init()();
  *(v0 + *((*v1 & *v0) + class metadata base offset for AccessoryControlViewController + 48)) = 0;
  sub_252693260();
  __break(1u);
}

uint64_t sub_2525899C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2523E233C;

  return sub_252587C04();
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_252589AFC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25258A200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4E2E00, &qword_2526A8060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25258A270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4E2E00, &qword_2526A8060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25258A2E8()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF40, &qword_2526A8DC0);
  v1[3] = swift_task_alloc();
  v2 = sub_25268EBE0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_25268E8D0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB948, &unk_2526A81F0);
  v1[10] = swift_task_alloc();
  v4 = sub_25268DA10();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F58, &qword_2526A9110);
  v1[16] = swift_task_alloc();
  v5 = sub_25268F0A0();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4E32F0, &qword_2526A8C38);
  v1[20] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[21] = AssociatedTypeWitness;
  v1[22] = *(AssociatedTypeWitness - 8);
  v1[23] = swift_task_alloc();
  v7 = type metadata accessor for DataModel.ObjectIdentifier(0);
  v1[24] = v7;
  v1[25] = *(v7 - 8);
  v1[26] = swift_task_alloc();
  sub_252692E00();
  v1[27] = sub_252692DF0();
  v9 = sub_252692DE0();
  v1[28] = v9;
  v1[29] = v8;

  return MEMORY[0x2822009F8](sub_25258A6FC, v9, v8);
}

uint64_t sub_25258A6FC()
{
  (*(v0[22] + 16))(v0[23], v0[2] + *((*MEMORY[0x277D85000] & *v0[2]) + class metadata base offset for AccessoryControlViewController + 32), v0[21]);
  v1 = swift_dynamicCast();
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[20];
  if (v1)
  {
    v5 = v0[26];
    (*(v3 + 56))(v0[20], 0, 1, v0[24]);
    sub_25258B38C(v4, v5);
    v0[30] = sub_25268E1B0();
    v0[31] = sub_25268E1A0();
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_25258A9A4;
    v7 = v0[26];

    return sub_25257810C(v7);
  }

  else
  {

    (*(v3 + 56))(v4, 1, 1, v2);
    sub_252372288(v4, &unk_27F4E32F0, &qword_2526A8C38);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_25258A9A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  *(*v1 + 264) = a1;

  v4 = *(v2 + 232);
  v5 = *(v2 + 224);

  return MEMORY[0x2822009F8](sub_25258AAEC, v5, v4);
}

uint64_t sub_25258AAEC(uint64_t a1)
{
  v2 = v1[33];
  if (!v2)
  {
    sub_25258B3F0(v1[26]);

LABEL_19:

    v39 = v1[1];

    return v39();
  }

  v3 = v1[15];
  v4 = sub_25268E1A0();
  sub_2525C8F34(v3);
  v5 = sub_25268E160();

  v6 = v1[15];
  if (*(v5 + 16))
  {
    v7 = sub_252367880(v1[15]);
    v6 = v1[15];
    v8 = v1[11];
    v9 = v1[12];
    if (v10)
    {
      (*(v1[8] + 16))(v1[10], *(v5 + 56) + *(v1[8] + 72) * v7, v1[7]);
      v11 = *(v9 + 8);
      v11(v6, v8);

      v12 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = v1[11];
    v9 = v1[12];
  }

  v11 = *(v9 + 8);
  v11(v6, v8);
  v12 = 1;
LABEL_8:
  v1[34] = v11;
  v13 = v1[10];
  v14 = v1[7];
  v15 = v1[8];
  (*(v15 + 56))(v13, v12, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14))
  {
    v16 = v1[17];
    v17 = v1[18];
    v18 = v1[16];
    v19 = v1[10];
    sub_25258B3F0(v1[26]);

    sub_252372288(v19, &qword_27F4DB948, &unk_2526A81F0);
    (*(v17 + 56))(v18, 1, 1, v16);
LABEL_17:
    v36 = v1[16];
    v37 = &qword_27F4E2F58;
    v38 = &qword_2526A9110;
LABEL_18:
    sub_252372288(v36, v37, v38);
    goto LABEL_19;
  }

  v21 = v1[9];
  v20 = v1[10];
  v22 = v1[7];
  v23 = v1[8];
  (*(v23 + 16))(v21, v20, v22);
  sub_252372288(v20, &qword_27F4DB948, &unk_2526A81F0);
  v24 = sub_25268E890();
  (*(v23 + 8))(v21, v22);
  v25 = [v2 uniqueIdentifier];
  sub_25268D9E0();

  v26 = v1[14];
  if (*(v24 + 16))
  {
    v27 = sub_252367880(v1[14]);
    if (v28)
    {
      v29 = v1[14];
      v30 = v1[11];
      (*(v1[18] + 16))(v1[16], *(v24 + 56) + *(v1[18] + 72) * v27, v1[17]);
      v11(v29, v30);

      v31 = 0;
      goto LABEL_15;
    }

    v26 = v1[14];
  }

  v32 = v1[11];

  v11(v26, v32);
  v31 = 1;
LABEL_15:
  v33 = v1[17];
  v34 = v1[18];
  v35 = v1[16];
  (*(v34 + 56))(v35, v31, 1, v33);
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    sub_25258B3F0(v1[26]);

    goto LABEL_17;
  }

  v41 = v1[4];
  v42 = v1[5];
  v43 = v1[3];
  (*(v1[18] + 32))(v1[19], v1[16], v1[17]);
  sub_25268EEB0();
  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    v44 = v1[26];
    v46 = v1[18];
    v45 = v1[19];
    v47 = v1[17];
    v48 = v1[3];

    (*(v46 + 8))(v45, v47);
    sub_25258B3F0(v44);
    v37 = &qword_27F4DAF40;
    v38 = &qword_2526A8DC0;
    v36 = v48;
    goto LABEL_18;
  }

  v49 = v1[13];
  (*(v1[5] + 32))(v1[6], v1[3], v1[4]);
  sub_25268DF30();
  v1[35] = sub_25268DF20();
  sub_2525C8F34(v49);
  v50 = swift_task_alloc();
  v1[36] = v50;
  *v50 = v1;
  v50[1] = sub_25258B084;
  v51 = v1[13];
  v52 = v1[6];

  return MEMORY[0x28216E530](v52, v51);
}

uint64_t sub_25258B084()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 88);

  v3(v4, v5);
  v6 = *(v1 + 232);
  v7 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_25258B23C, v7, v6);
}

uint64_t sub_25258B23C()
{
  v1 = v0[33];
  v2 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_25258B3F0(v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25258B38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.ObjectIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25258B3F0(uint64_t a1)
{
  v2 = type metadata accessor for DataModel.ObjectIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGFloat AccessoryControlViewController.test_firstControlFrame(for:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5[16] = *a1;
  AccessoryControlViewController.test_firstControlFrame(_:)(COERCE_CGFLOAT(sub_25258B50C), COERCE_CGFLOAT(v5), v6);
  result = v6[0].x;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_25258B4B0(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for Device.Control(0);
  Device.Control.Kind.primitive.getter(&v5);
  v3 = v5;

  return sub_2523E2EAC(v3, a2);
}

id AccessoryControlViewController.test_firstControlFrame(_:)@<X0>(CGFloat a1@<X0>, CGFloat a2@<X1>, CGPoint *a3@<X8>)
{
  v4 = v3;
  origin.x = a2;
  size.width = a1;
  v58 = a3;
  v5 = *MEMORY[0x277D85000] & *v3;
  v53 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  MEMORY[0x28223BE20](v53);
  v52 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5 + class metadata base offset for AccessoryControlViewController;
  v8 = *(v5 + class metadata base offset for AccessoryControlViewController);
  v9 = *(v5 + class metadata base offset for AccessoryControlViewController + 8);
  v11 = type metadata accessor for AccessoryControlModelView(0, v8, v9, v10);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78, &qword_2526A9000);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v51 - v15;
  v17 = type metadata accessor for Device.Control(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(v9 + 32))(&v4[*(v7 + 32)], v8, v9, v19);
  v23 = v4;
  v25 = v54;
  v24 = v55;
  v51[1] = v22;
  _s22HomeAccessoryControlUI6DeviceV0C6ModuleV8controls2inSayAC0C0VGSayAEG_tFZ_0(v22);
  sub_2525F8D64(*&size.width, v26, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    result = sub_25258BA10(v16);
    v28 = 0;
    v29 = 1;
    v30 = 0;
LABEL_3:
    p_x = &v58->x;
    *v58 = v28;
    p_x[1] = v30;
    *(p_x + 32) = v29;
    return result;
  }

  v32 = v21;
  sub_25258BA78(v16, v21);
  v33 = v23;
  sub_252691380();
  v34 = *&v13[*(v24 + 52)];
  v35 = *(v25 + 8);

  v35(v13, v24);
  v36 = sub_25268DA10();
  v37 = v52;
  (*(*(v36 - 8) + 16))(v52, v32, v36);
  swift_storeEnumTagMultiPayload();
  v38 = *(v34 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlViewFrames);

  if (!*(v38 + 16) || (v39 = sub_2523679CC(v37), (v40 & 1) == 0))
  {

    sub_25258BADC(v37, type metadata accessor for AccessoryControl.ElementIdentifier);
    size = 0;
    origin = 0;
    v29 = 1;
    goto LABEL_9;
  }

  v41 = *(v38 + 56) + 32 * v39;
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  v45 = *(v41 + 24);
  sub_25258BADC(v37, type metadata accessor for AccessoryControl.ElementIdentifier);

  result = [v33 view];
  if (result)
  {
    v46 = result;

    [v46 safeAreaInsets];
    v48 = v47;

    v59.origin.x = v42;
    v59.origin.y = v43;
    v59.size.width = v44;
    v59.size.height = v45;
    v60 = CGRectOffset(v59, 0.0, v48);
    v29 = 0;
    height = v60.size.height;
    y = v60.origin.y;
    size = v60.size;
    origin = v60.origin;
LABEL_9:
    result = sub_25258BADC(v32, type metadata accessor for Device.Control);
    v30 = size;
    v28 = origin;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25258BA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78, &qword_2526A9000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25258BA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25258BADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25258BBA4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x2530A4D90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_252693270();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

char *sub_25258BD38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  v6 = *MEMORY[0x277D85000];
  swift_weakInit();
  swift_weakInit();
  *(v3 + qword_27F4E3320) = 1;
  *(v3 + qword_27F4E3328) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x277D757F8]) init];
  *(v3 + qword_27F4E3300) = v7;
  swift_weakAssign();
  swift_weakAssign();
  *(v3 + qword_27F4E3318) = a3;
  v9 = _s28SwipeDownDismissalControllerCMa(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v8);
  v16.receiver = v3;
  v16.super_class = v9;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = qword_27F4E3300;
  v13 = *&v11[qword_27F4E3300];
  v14 = v11;
  [v13 setDelegate_];
  [*&v11[v12] _setCanPanHorizontally_];
  [*&v11[v12] addTarget:v14 action:sel_panGestureRecognizerWithRecognized_];
  [v10 addGestureRecognizer_];

  return v14;
}

id sub_25258BEF8()
{
  v1 = *(v0 + qword_27F4E3300);
  [*(v0 + qword_27F4E3318) removeGestureRecognizer_];

  return [v1 removeTarget:v0 action:sel_panGestureRecognizerWithRecognized_];
}

void sub_25258BF64(void *a1)
{
  v3 = [a1 state];
  if (v3 > 3)
  {
    if ((v3 - 4) >= 2)
    {
      return;
    }

    v4 = a1;
    v5 = 1;
    goto LABEL_8;
  }

  switch(v3)
  {
    case 1:
      *(v1 + qword_27F4E3320) = 1;
      break;
    case 2:
      break;
    case 3:
      v4 = a1;
      v5 = 0;
LABEL_8:

      sub_25258C238(v4, v5);
      return;
    default:
      return;
  }

  sub_25258C084(a1);
}

void sub_25258C01C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_25258BF64(v4);
}

void sub_25258C084(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong && (v4 = *(Strong + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_allowsSwipeDownDismissal), , v4 == 1))
  {
    if (*(v1 + qword_27F4E3320) == 1)
    {
      [a1 setTranslation:*(v1 + qword_27F4E3318) inView:{0.0, 0.0}];
      *(v1 + qword_27F4E3320) = 0;
    }

    [a1 translationInView_];
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_252690690();
    }

    v5 = sub_25258C64C();
    [(SEL *)v5 setBounces:0];
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_252690690();
    }

    v6 = sub_25258C64C();
    [(SEL *)v6 setBounces:1];

    *(v1 + qword_27F4E3320) = 1;
  }
}

double sub_25258C238(void *a1, char a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ((a2 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_252690680(), , , fabs(v11) <= 100.0) || ([a1 velocityInView_], v8 <= 0.0))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_252690690();
    }

    else
    {
      swift_beginAccess();
      if (*(v7 + 40) == 2)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v7 + 24);
          ObjectType = swift_getObjectType();
          (*(v9 + 24))(0, 0, 0, ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        sub_252423D80(0, 0);
      }
    }
  }

  return result;
}

BOOL sub_25258C3CC(uint64_t a1, uint64_t a2)
{
  sub_252422940(0, &qword_27F4E0E30, 0x277D82BB8);
  result = 0;
  if (sub_252693090())
  {
    v3 = sub_25258C64C();
    if (v3)
    {
      v4 = v3;
      v5 = [(SEL *)v3 gestureRecognizers];

      if (v5)
      {
        sub_252422940(0, &unk_27F4E3420, 0x277D75548);
        v6 = sub_252692D80();

        v11 = a2;
        MEMORY[0x28223BE20](v7);
        v10[2] = &v11;
        v8 = sub_25258BBA4(sub_25258CB9C, v10, v6);

        if (v8)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_25258C508(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_25258C3CC(v6, v7);

  return v9;
}

id sub_25258C58C(id result)
{
  if (*(v1 + qword_27F4E3320) == 1)
  {
    result = [result setTranslation:*(v1 + qword_27F4E3318) inView:{0.0, 0.0}];
    *(v1 + qword_27F4E3320) = 0;
  }

  return result;
}

void sub_25258C5E4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_25258C64C();
  [(SEL *)v2 setBounces:v1 & 1];
}

SEL *sub_25258C64C()
{
  v1 = *(v0 + qword_27F4E3328);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(v0 + qword_27F4E3318);
  v3 = v1;
  v4 = v2;
  v5 = [(SEL *)v3 superview];
  if (!v5)
  {
LABEL_6:

LABEL_7:
    v1 = sub_25258C72C(0);
    v6 = *(v0 + qword_27F4E3328);
    *(v0 + qword_27F4E3328) = v1;
    v8 = v1;
    goto LABEL_8;
  }

  v6 = v5;
  while (v6 != v4)
  {
    v7 = [v6 superview];

    v6 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  return v1;
}

SEL *sub_25258C72C(SEL *a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = *(v1 + qword_27F4E3318);
  }

  v4 = a1;
  v5 = &off_27970C000;
  v6 = [(SEL *)v3 subviews];
  sub_252422940(0, &unk_27F4E3410, 0x277D75D18);
  v7 = sub_252692D80();

  if (v7 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252693270())
  {

    if (!i)
    {

      return 0;
    }

    v9 = [v3 v5[260]];
    v10 = sub_252692D80();

    if (v10 >> 62)
    {
      break;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_26;
    }

LABEL_9:
    v18 = v3;
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530A4D90](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v5 = v13;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;

        return v16;
      }

      v3 = v5;
      v5 = sub_25258C72C(v5);

      if (v5)
      {

        return v5;
      }

      ++v12;
      if (v14 == v11)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v11 = sub_252693270();
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_26:

LABEL_27:

  return 0;
}

id sub_25258C99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s28SwipeDownDismissalControllerCMa(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_25258CA0C(uint64_t a1)
{
  swift_weakDestroy();
  swift_weakDestroy();

  v2 = *(a1 + qword_27F4E3328);
}

double sub_25258CAA0@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25258CB20(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252690690();
}

void *sub_25258CC34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B88, &qword_2526A7CD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Device.ControlModule(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_25268EBE0() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    sub_25258EE64(v18, a3, v9);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_252372288(v9, &qword_27F4E2B88, &qword_2526A7CD8);
    }

    else
    {
      v20 = v28;
      sub_252599CF8(v9, v28, type metadata accessor for Device.ControlModule);
      sub_252599CF8(v20, v30, type metadata accessor for Device.ControlModule);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_252369B5C(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_252369B5C((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_252599CF8(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for Device.ControlModule);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void sub_25258CF54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v2 - 8);
  v234 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v233 = &v199 - v5;
  v236 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v236);
  v235 = (&v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v199 - v8);
  MEMORY[0x28223BE20](v10);
  v204 = (&v199 - v11);
  v243 = type metadata accessor for Device.Control(0);
  v202 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v237 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v199 - v14;
  MEMORY[0x28223BE20](v16);
  v242 = &v199 - v17;
  MEMORY[0x28223BE20](v18);
  v239 = &v199 - v19;
  MEMORY[0x28223BE20](v20);
  v203 = &v199 - v21;
  v218 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v218);
  v217 = (&v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v206 = type metadata accessor for Device.ControlGroup(0);
  v229 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v216 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v208 = (&v199 - v25);
  v215 = sub_25268E8D0();
  v199 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v214 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25268E040();
  MEMORY[0x28223BE20](v27 - 8);
  v213 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for HAPControlSolver.Source(0);
  MEMORY[0x28223BE20](v29 - 8);
  v212 = (&v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD90, &unk_2526A8D90);
  MEMORY[0x28223BE20](v31 - 8);
  v211 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v199 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v199 - v37;
  v241 = sub_25268EBE0();
  v238 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v210 = &v199 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v227 = &v199 - v41;
  MEMORY[0x28223BE20](v42);
  v232 = &v199 - v43;
  v44 = sub_25268E530();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v209 = &v199 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v226 = &v199 - v48;
  MEMORY[0x28223BE20](v49);
  v240 = &v199 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v199 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v199 - v55;
  v57 = sub_25268EF80();
  v244 = v15;
  v207 = v45;
  v228 = v38;
  if (v57)
  {
    sub_25268EF90();
    (*(v45 + 13))(v53, *MEMORY[0x277D15870], v44);
    sub_252599E28(&qword_27F4DADD8, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
    sub_252692D40();
    sub_252692D40();
    if (v247[0] == v245 && v247[1] == v246)
    {
      v200 = 1;
    }

    else
    {
      v200 = sub_2526933B0();
    }

    v45 = v207 + 8;
    v58 = *(v207 + 1);
    v58(v53, v44);
    v58(v56, v44);

    v15 = v244;
    v38 = v228;
  }

  else
  {
    v200 = 0;
  }

  v59 = sub_25268EEC0();
  v60 = *(v59 + 16);
  v231 = v9;
  v225 = v60;
  if (!v60)
  {
    v63 = MEMORY[0x277D84F98];
LABEL_39:

    v247[0] = sub_25268EF40();

    sub_25258F870(v247);

    v89 = v247[0];
    v90 = MEMORY[0x277D84F90];
    v247[0] = MEMORY[0x277D84F90];
    v91 = sub_25258CC34(v89, v201, v247);

    v245 = v91;
    v92 = v247[0];
    v93 = *(v247[0] + 16);
    v230 = v247[0];
    v94 = v227;
    v228 = v93;
    if (v93)
    {
      v95 = 0;
      v232 = (v238 + 16);
      v96 = (v207 + 48);
      v221 = (v207 + 32);
      v226 = v207 + 8;
      v225 = (v199 + 8);
      v224 = (v238 + 8);
      v45 = MEMORY[0x277D84F90];
      v223 = v44;
      v222 = (v207 + 48);
      while (1)
      {
        if (v95 >= *(v92 + 16))
        {
          goto LABEL_114;
        }

        v240 = v45;
        v45 = *(v238 + 16);
        (v45)(v94, v92 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v95, v241);
        v97 = v211;
        sub_25268E8F0();
        v98 = *v96;
        if ((*v96)(v97, 1, v44) == 1)
        {
          v99 = v209;
          sub_25268E970();
          if (v98(v97, 1, v44) != 1)
          {
            sub_252372288(v97, &qword_27F4DAD90, &unk_2526A8D90);
          }

          if (!*(v63 + 16))
          {
LABEL_51:
            v101 = *v226;
            goto LABEL_52;
          }
        }

        else
        {
          v99 = v209;
          (*v221)(v209, v97, v44);
          if (!*(v63 + 16))
          {
            goto LABEL_51;
          }
        }

        v100 = sub_2523675BC(v99);
        v101 = *v226;
        if (v102)
        {
          v103 = *(*(v63 + 56) + 8 * v100);
          v101(v99, v44);
          v104 = v103 > 1;
          goto LABEL_53;
        }

LABEL_52:
        v101(v99, v44);
        v104 = 0;
LABEL_53:
        v105 = v210;
        v106 = v94;
        v107 = v94;
        v108 = v241;
        (v45)(v210, v106, v241);
        sub_25268E1B0();
        v109 = sub_25268E1A0();
        v110 = v214;
        sub_25268E140();

        v111 = v213;
        sub_25268E870();
        (*v225)(v110, v215);
        v112 = v212;
        sub_25259A3AC(v105, v111, v212);
        v113 = sub_252595348(v112, v104);
        sub_252599D60(v112, type metadata accessor for HAPControlSolver.Source);
        (*v224)(v107, v108);
        v114 = *(v113 + 16);
        v115 = *(v240 + 2);
        v116 = v115 + v114;
        if (__OFADD__(v115, v114))
        {
          goto LABEL_115;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v240;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v116 > *(v240 + 3) >> 1)
        {
          if (v115 <= v116)
          {
            v119 = v115 + v114;
          }

          else
          {
            v119 = v115;
          }

          v118 = sub_252369B0C(isUniquelyReferenced_nonNull_native, v119, 1, v240);
        }

        v15 = v244;
        v92 = v230;
        v94 = v227;
        v44 = v223;
        v96 = v222;
        if (*(v113 + 16))
        {
          if ((*(v118 + 3) >> 1) - *(v118 + 2) < v114)
          {
            goto LABEL_117;
          }

          v45 = v118;
          swift_arrayInitWithCopy();

          if (v114)
          {
            v120 = *(v45 + 2);
            v87 = __OFADD__(v120, v114);
            v121 = v120 + v114;
            if (v87)
            {
              goto LABEL_120;
            }

            *(v45 + 2) = v121;
          }
        }

        else
        {
          v45 = v118;

          if (v114)
          {
            goto LABEL_116;
          }
        }

        if (v228 == ++v95)
        {
          goto LABEL_66;
        }
      }
    }

    v45 = v90;
LABEL_66:
    v240 = v45;

    if (v200)
    {
      v122 = *(v240 + 2);
      if (v122)
      {
        v249 = MEMORY[0x277D84F90];
        sub_252370650(0, v122, 0);
        v123 = v240;
        v45 = 0;
        v124 = v249;
        v223 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v222 = &v240[v223];
        LODWORD(v232) = *MEMORY[0x277D16578];
        v125 = v235;
        v126 = v231;
        v127 = v204;
        v128 = v203;
        v224 = v122;
        while (1)
        {
          if (v45 >= *(v123 + 2))
          {
            goto LABEL_119;
          }

          v227 = *(v229 + 72);
          v129 = v216;
          sub_252599DC0(v222 + v227 * v45, v216, type metadata accessor for Device.ControlGroup);
          v130 = v208;
          sub_252599DC0(v129, v208, type metadata accessor for Device.ControlGroup);
          sub_252599DC0(v130, v217, type metadata accessor for Device.ControlGroup.LayoutType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v228 = v45;
          if (EnumCaseMultiPayload)
          {
            LODWORD(v226) = EnumCaseMultiPayload;
            v132 = v243;
            if (EnumCaseMultiPayload == 1)
            {
              v225 = v124;
              v133 = *v217;
              v134 = (*v217)[2];
              v135 = v242;
              if (v134)
              {
                v248 = MEMORY[0x277D84F90];
                sub_25237060C(0, v134, 0);
                v136 = v248;
                v137 = (*(v202 + 80) + 32) & ~*(v202 + 80);
                v221 = v133;
                v241 = v137;
                v138 = v133 + v137;
                v238 = *(v202 + 72);
                v139 = v239;
                do
                {
                  sub_252599DC0(v138, v135, type metadata accessor for Device.Control);
                  sub_252599DC0(v135, v139, type metadata accessor for Device.Control);
                  v140 = v243;
                  sub_252599DC0(v139 + *(v243 + 20), v126, type metadata accessor for Device.Control.Kind);
                  if (swift_getEnumCaseMultiPayload())
                  {
                    sub_252599D60(v135, type metadata accessor for Device.Control);
                    v141 = type metadata accessor for Device.Control.Kind;
                    v142 = v126;
                  }

                  else
                  {
                    sub_252393F68(*v126, v126[1], v126[2], v126[3], v126[4]);
                    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
                    sub_252599D60(v126 + *(v143 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);
                    *(v139 + *(v140 + 36)) = 514;
                    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
                    v145 = v233;
                    v146 = &v233[*(v144 + 28)];
                    v147 = type metadata accessor for IconDescriptor(0);
                    v148 = *(v147 + 20);
                    v149 = sub_25268F910();
                    (*(*(v149 - 8) + 104))(&v146[v148], v232, v149);
                    *v146 = 0x7265776F70;
                    *(v146 + 1) = 0xE500000000000000;
                    v146[*(v147 + 24)] = 0;
                    sub_252599DC0(v146, v145, type metadata accessor for IconDescriptor);
                    (*(*(v144 - 8) + 56))(v145, 0, 1, v144);
                    v150 = v234;
                    sub_25237153C(v145, v234, &qword_27F4DADB8, &qword_2526A6E60);
                    sub_252612854(v150);
                    v151 = v145;
                    v125 = v235;
                    v126 = v231;
                    sub_252372288(v151, &qword_27F4DADB8, &qword_2526A6E60);
                    v141 = type metadata accessor for Device.Control;
                    v142 = v242;
                  }

                  sub_252599D60(v142, v141);
                  v248 = v136;
                  v153 = *(v136 + 16);
                  v152 = *(v136 + 24);
                  if (v153 >= v152 >> 1)
                  {
                    sub_25237060C((v152 > 1), v153 + 1, 1);
                    v136 = v248;
                  }

                  *(v136 + 16) = v153 + 1;
                  v154 = v238;
                  v155 = v136 + v241 + v153 * v238;
                  v139 = v239;
                  sub_252599CF8(v239, v155, type metadata accessor for Device.Control);
                  v138 += v154;
                  --v134;
                  v135 = v242;
                }

                while (v134);
                sub_252599D60(v216, type metadata accessor for Device.ControlGroup);

                v127 = v204;
                v128 = v203;
                v130 = v208;
              }

              else
              {

                sub_252599D60(v216, type metadata accessor for Device.ControlGroup);
                v136 = MEMORY[0x277D84F90];
              }

              sub_252599D60(v130, type metadata accessor for Device.ControlGroup.LayoutType);
              *v130 = v136;
              v124 = v225;
              v181 = v228;
              goto LABEL_100;
            }

            sub_252599CF8(v217, v128, type metadata accessor for Device.Control);
            sub_252599DC0(v128 + *(v132 + 20), v127, type metadata accessor for Device.Control.Kind);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_252599D60(v216, type metadata accessor for Device.ControlGroup);
              v179 = type metadata accessor for Device.Control.Kind;
              v180 = v127;
            }

            else
            {
              sub_252393F68(*v127, v127[1], v127[2], v127[3], v127[4]);
              v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
              sub_252599D60(v127 + *(v182 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);
              *(v128 + *(v132 + 36)) = 514;
              v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
              v184 = v233;
              v185 = &v233[*(v183 + 28)];
              v186 = type metadata accessor for IconDescriptor(0);
              v187 = *(v186 + 20);
              v188 = sub_25268F910();
              (*(*(v188 - 8) + 104))(&v185[v187], v232, v188);
              *v185 = 0x7265776F70;
              *(v185 + 1) = 0xE500000000000000;
              v185[*(v186 + 24)] = 0;
              sub_252599DC0(v185, v184, type metadata accessor for IconDescriptor);
              (*(*(v183 - 8) + 56))(v184, 0, 1, v183);
              v189 = v234;
              sub_25237153C(v184, v234, &qword_27F4DADB8, &qword_2526A6E60);
              sub_252612854(v189);
              v130 = v208;
              v190 = v184;
              v125 = v235;
              sub_252372288(v190, &qword_27F4DADB8, &qword_2526A6E60);
              v179 = type metadata accessor for Device.ControlGroup;
              v180 = v216;
            }

            sub_252599D60(v180, v179);
            sub_252599D60(v130, type metadata accessor for Device.ControlGroup.LayoutType);
            sub_252599CF8(v128, v130, type metadata accessor for Device.Control);
          }

          else
          {
            v225 = v124;
            v156 = *v217;
            v157 = (*v217)[2];
            if (v157)
            {
              LODWORD(v226) = 0;
              v248 = MEMORY[0x277D84F90];
              v158 = v156;
              sub_25237060C(0, v157, 0);
              v159 = v248;
              v160 = (*(v202 + 80) + 32) & ~*(v202 + 80);
              v221 = v158;
              v241 = v160;
              v161 = v158 + v160;
              v238 = *(v202 + 72);
              do
              {
                v162 = v237;
                sub_252599DC0(v161, v237, type metadata accessor for Device.Control);
                sub_252599DC0(v162, v15, type metadata accessor for Device.Control);
                v163 = v243;
                sub_252599DC0(&v15[*(v243 + 20)], v125, type metadata accessor for Device.Control.Kind);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_252599D60(v162, type metadata accessor for Device.Control);
                  v164 = type metadata accessor for Device.Control.Kind;
                  v165 = v125;
                }

                else
                {
                  sub_252393F68(*v125, v125[1], v125[2], v125[3], v125[4]);
                  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
                  sub_252599D60(v125 + *(v166 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);
                  *&v15[*(v163 + 36)] = 514;
                  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
                  v168 = v233;
                  v169 = &v233[*(v167 + 28)];
                  v170 = type metadata accessor for IconDescriptor(0);
                  v171 = *(v170 + 20);
                  v172 = sub_25268F910();
                  (*(*(v172 - 8) + 104))(&v169[v171], v232, v172);
                  *v169 = 0x7265776F70;
                  *(v169 + 1) = 0xE500000000000000;
                  v169[*(v170 + 24)] = 0;
                  sub_252599DC0(v169, v168, type metadata accessor for IconDescriptor);
                  (*(*(v167 - 8) + 56))(v168, 0, 1, v167);
                  v173 = v234;
                  sub_25237153C(v168, v234, &qword_27F4DADB8, &qword_2526A6E60);
                  sub_252612854(v173);
                  v174 = v168;
                  v125 = v235;
                  v126 = v231;
                  sub_252372288(v174, &qword_27F4DADB8, &qword_2526A6E60);
                  v164 = type metadata accessor for Device.Control;
                  v165 = v162;
                }

                sub_252599D60(v165, v164);
                v248 = v159;
                v176 = *(v159 + 16);
                v175 = *(v159 + 24);
                if (v176 >= v175 >> 1)
                {
                  sub_25237060C((v175 > 1), v176 + 1, 1);
                  v159 = v248;
                }

                *(v159 + 16) = v176 + 1;
                v177 = v238;
                v15 = v244;
                sub_252599CF8(v244, v159 + v241 + v176 * v238, type metadata accessor for Device.Control);
                v161 += v177;
                --v157;
              }

              while (v157);
              sub_252599D60(v216, type metadata accessor for Device.ControlGroup);

              v127 = v204;
              v128 = v203;
              v130 = v208;
            }

            else
            {

              sub_252599D60(v216, type metadata accessor for Device.ControlGroup);
              v159 = MEMORY[0x277D84F90];
            }

            sub_252599D60(v130, type metadata accessor for Device.ControlGroup.LayoutType);
            *v130 = v159;
            v124 = v225;
          }

          v181 = v228;
LABEL_100:
          swift_storeEnumTagMultiPayload();
          v249 = v124;
          v192 = *(v124 + 2);
          v191 = *(v124 + 3);
          if (v192 >= v191 >> 1)
          {
            sub_252370650((v191 > 1), v192 + 1, 1);
            v130 = v208;
            v124 = v249;
          }

          v45 = v181 + 1;
          *(v124 + 2) = v192 + 1;
          sub_252599CF8(v130, &v124[v223 + v192 * v227], type metadata accessor for Device.ControlGroup);
          v15 = v244;
          v123 = v240;
          if (v45 == v224)
          {

            if (*(v124 + 2))
            {
              goto LABEL_105;
            }

            goto LABEL_107;
          }
        }
      }

      v124 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_107;
      }
    }

    else
    {
      v124 = v240;
      if (!*(v240 + 2))
      {
LABEL_107:

        goto LABEL_108;
      }
    }

LABEL_105:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v193 = (type metadata accessor for Device.ControlModule(0) - 8);
    v194 = (*(*v193 + 80) + 32) & ~*(*v193 + 80);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_252694E90;
    v196 = (v195 + v194);
    *(v196 + 3) = 0;
    *(v196 + 4) = 0;
    v197 = v193[9];
    v198 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v198 - 8) + 56))(&v196[v197], 1, 1, v198);
    *(v196 + 1) = 0;
    *(v196 + 2) = v124;
    *v196 = 0;
    sub_2523C65B0(v195);
LABEL_108:

    return;
  }

  v61 = 0;
  v224 = (v59 + ((*(v238 + 80) + 32) & ~*(v238 + 80)));
  v223 = v238 + 16;
  v62 = (v207 + 48);
  v222 = (v207 + 32);
  v230 = (v207 + 8);
  v205 = v207 + 16;
  v63 = MEMORY[0x277D84F98];
  v221 = (v238 + 8);
  v220 = v35;
  v219 = v59;
  while (v61 < *(v59 + 16))
  {
    (*(v238 + 16))(v232, &v224[*(v238 + 72) * v61], v241);
    sub_25268E8F0();
    v65 = *v62;
    if ((*v62)(v38, 1, v44) == 1)
    {
      sub_25268E970();
      v66 = v65(v38, 1, v44);
      v67 = v226;
      if (v66 != 1)
      {
        sub_252372288(v38, &qword_27F4DAD90, &unk_2526A8D90);
      }
    }

    else
    {
      (*v222)(v240, v38, v44);
      v67 = v226;
    }

    sub_25268E8F0();
    if (v65(v35, 1, v44) == 1)
    {
      sub_25268E970();
      if (v65(v35, 1, v44) != 1)
      {
        sub_252372288(v35, &qword_27F4DAD90, &unk_2526A8D90);
      }

      if (!*(v63 + 16))
      {
        goto LABEL_25;
      }
    }

    else
    {
      (*v222)(v67, v35, v44);
      if (!*(v63 + 16))
      {
        goto LABEL_25;
      }
    }

    v68 = sub_2523675BC(v67);
    if (v69)
    {
      v70 = *(*(v63 + 56) + 8 * v68);
      goto LABEL_26;
    }

LABEL_25:
    v70 = 0;
LABEL_26:
    v71 = *v230;
    (*v230)(v67, v44);
    v45 = (v70 + 1);
    if (__OFADD__(v70, 1))
    {
      goto LABEL_112;
    }

    v72 = v63;
    v73 = v62;
    v74 = a1;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v247[0] = v72;
    v77 = sub_2523675BC(v240);
    v78 = *(v72 + 16);
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_113;
    }

    v81 = v76;
    if (*(v72 + 24) >= v80)
    {
      if (v75)
      {
        v84 = v247[0];
        if (v76)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_25236C78C();
        v84 = v247[0];
        if (v81)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_25236A13C(v80, v75);
      v82 = sub_2523675BC(v240);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_121;
      }

      v77 = v82;
      v84 = v247[0];
      if (v81)
      {
LABEL_10:
        v64 = v84;
        *(v84[7] + 8 * v77) = v45;
        v71(v240, v44);
        (*v221)(v232, v241);
        goto LABEL_11;
      }
    }

    v84[(v77 >> 6) + 8] |= 1 << v77;
    v85 = v240;
    (*(v207 + 2))(v84[6] + *(v207 + 9) * v77, v240, v44);
    *(v84[7] + 8 * v77) = v45;
    v71(v85, v44);
    (*v221)(v232, v241);
    v86 = v84[2];
    v87 = __OFADD__(v86, 1);
    v88 = v86 + 1;
    if (v87)
    {
      goto LABEL_118;
    }

    v64 = v84;
    v84[2] = v88;
LABEL_11:
    ++v61;
    v15 = v244;
    a1 = v74;
    v35 = v220;
    v59 = v219;
    v62 = v73;
    v63 = v64;
    v38 = v228;
    if (v225 == v61)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  sub_2526933E0();
  __break(1u);

  __break(1u);
}

uint64_t sub_25258EE64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a2;
  v48 = a3;
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_25268E8D0();
  v7 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268E040();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25268EBE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for HAPControlSolver.Source(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v14;
  v23 = *(v14 + 16);
  v44 = v13;
  v45 = a1;
  v41 = v23;
  (v23)(v18, a1, v13, v20);
  sub_25268E1B0();
  v24 = sub_25268E1A0();
  sub_25268E140();

  sub_25268E870();
  (*(v7 + 8))(v9, v47);
  sub_25259A3AC(v18, v12, v22);
  v25 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  v26 = sub_252594D38(v22, v6);
  sub_252599D60(v6, type metadata accessor for AccessoryControl.ValueDestination);
  if (v26)
  {
    if (*(v26 + 16))
    {
      v27 = type metadata accessor for Device.ControlModule(0);
      v28 = *(v27 - 8);
      v29 = v48;
      sub_252599DC0(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v48, type metadata accessor for Device.ControlModule);

      sub_252599D60(v22, type metadata accessor for HAPControlSolver.Source);
      return (*(v28 + 56))(v29, 0, 1, v27);
    }

    sub_252599D60(v22, type metadata accessor for HAPControlSolver.Source);
  }

  else
  {
    v32 = v42;
    v31 = v43;
    v33 = v44;
    v41(v43, v45, v44);
    v34 = v46;
    v35 = *v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_252369BAC(0, v35[2] + 1, 1, v35);
      *v34 = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      *v34 = sub_252369BAC((v37 > 1), v38 + 1, 1, v35);
    }

    sub_252599D60(v22, type metadata accessor for HAPControlSolver.Source);
    v39 = *v34;
    *(v39 + 16) = v38 + 1;
    (*(v32 + 32))(v39 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v38, v31, v33);
  }

  v40 = type metadata accessor for Device.ControlModule(0);
  return (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
}

uint64_t sub_25258F388()
{
  v1 = sub_25268DA10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_25268EA20();
  if ((v8 & 0x10000) != 0 || (LOWORD(v9) = v8, v10 = sub_25268EA20(), (v10 & 0x10000) != 0))
  {
    v9 = sub_25268EBD0();
    if (((v9 ^ sub_25268EBD0()) & 1) == 0)
    {
      v21 = v2;
      v22 = v0;
      v11 = sub_25268E9D0();
      if (!v12)
      {
        v11 = sub_25268EBA0();
      }

      v13 = v11;
      v14 = v12;
      v15 = sub_25268E9D0();
      if (!v16)
      {
        v15 = sub_25268EBA0();
      }

      if (v13 == v15 && v14 == v16)
      {
      }

      else
      {
        if (sub_2526933B0())
        {

          LOBYTE(v9) = 1;
          return v9 & 1;
        }

        v18 = sub_2526933B0();

        if (v18)
        {
          LOBYTE(v9) = 0;
          return v9 & 1;
        }
      }

      sub_25268EB50();
      sub_25268EB50();
      LOBYTE(v9) = MEMORY[0x25309F530](v7, v4);
      v17 = *(v21 + 8);
      v17(v4, v1);
      v17(v7, v1);
    }
  }

  else
  {
    LOBYTE(v9) = v9 < v10;
  }

  return v9 & 1;
}

uint64_t sub_25258F5E8()
{
  v1 = sub_25268DA10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_25268E840();
  if (((v8 ^ sub_25268E840()) & 1) == 0)
  {
    v19 = v2;
    v20 = v0;
    v9 = sub_25268E780();
    if (!v10)
    {
      v9 = sub_25268E830();
    }

    v11 = v9;
    v12 = v10;
    v13 = sub_25268E780();
    if (!v14)
    {
      v13 = sub_25268E830();
    }

    if (v11 == v13 && v12 == v14)
    {
    }

    else
    {
      if (sub_2526933B0())
      {

        LOBYTE(v8) = 1;
        return v8 & 1;
      }

      v16 = sub_2526933B0();

      if (v16)
      {
        LOBYTE(v8) = 0;
        return v8 & 1;
      }
    }

    sub_25268E810();
    sub_25268E810();
    LOBYTE(v8) = MEMORY[0x25309F530](v7, v4);
    v15 = *(v19 + 8);
    v15(v4, v1);
    v15(v7, v1);
  }

  return v8 & 1;
}

void sub_25258F870(uint64_t *a1)
{
  v2 = *(sub_25268EBE0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2526242BC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_25258FB1C(v5, MEMORY[0x277D15AC0], sub_252590944, sub_25258FC6C);
  *a1 = v3;
}

void sub_25258F954(uint64_t *a1)
{
  v2 = *(sub_25268DA10() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_252624334(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_25258FB1C(v5, MEMORY[0x277CC95F0], sub_252591898, sub_252590178);
  *a1 = v3;
}

void sub_25258FA38(uint64_t *a1)
{
  v2 = *(sub_25268E850() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_252624348(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_25258FB1C(v5, MEMORY[0x277D159C8], sub_2525922C0, sub_25259043C);
  *a1 = v3;
}

void sub_25258FB1C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_252693360();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_252692DC0();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_25258FC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v66 = sub_25268DA10();
  v8 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - v11;
  v12 = sub_25268EBE0();
  MEMORY[0x28223BE20](v12);
  v72 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v20 = MEMORY[0x28223BE20](v17);
  v21 = &v55 - v18;
  v57 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v25 = *(v23 + 56);
    v62 = &v55 - v18;
    v63 = (v8 + 8);
    v73 = (v23 - 8);
    v74 = v24;
    v75 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v69 = -v25;
    v70 = (v23 + 16);
    v27 = a1 - a3;
    v71 = v22;
    v56 = v25;
    v28 = v22 + v25 * a3;
    v67 = v16;
LABEL_6:
    v60 = v26;
    v61 = a3;
    v58 = v28;
    v59 = v27;
    v30 = v27;
    while (1)
    {
      v31 = v74;
      (v74)(v21, v28, v12, v20);
      v31(v16, v26, v12);
      v32 = sub_25268EA20();
      if ((v32 & 0x10000) != 0 || (v33 = v32, v34 = sub_25268EA20(), (v34 & 0x10000) != 0))
      {
        v36 = sub_25268EBD0();
        if ((v36 ^ sub_25268EBD0()))
        {
          if ((v36 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        v37 = sub_25268E9D0();
        if (v38)
        {
          v39 = v38;
          v68 = v37;
        }

        else
        {
          v68 = sub_25268EBA0();
          v39 = v40;
        }

        v41 = sub_25268E9D0();
        if (!v42)
        {
          v41 = sub_25268EBA0();
        }

        if (v68 == v41 && v39 == v42)
        {
        }

        else
        {
          if (sub_2526933B0())
          {

            v16 = v67;
LABEL_23:
            v43 = *v73;
            (*v73)(v16, v12);
            v43(v21, v12);
            goto LABEL_27;
          }

          v44 = sub_2526933B0();

          v16 = v67;
          if (v44)
          {
LABEL_4:
            v29 = *v73;
            (*v73)(v16, v12);
            v29(v21, v12);
LABEL_5:
            a3 = v61 + 1;
            v26 = &v60[v56];
            v27 = v59 - 1;
            v28 = v58 + v56;
            if (v61 + 1 == v57)
            {
              return;
            }

            goto LABEL_6;
          }
        }

        v45 = v64;
        sub_25268EB50();
        v46 = v65;
        sub_25268EB50();
        v35 = MEMORY[0x25309F530](v45, v46);
        v47 = *v63;
        v48 = v46;
        v49 = v66;
        (*v63)(v48, v66);
        v50 = v45;
        v16 = v67;
        v47(v50, v49);
        v21 = v62;
      }

      else
      {
        v35 = v33 < v34;
      }

      v51 = *v73;
      (*v73)(v16, v12);
      v51(v21, v12);
      if ((v35 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_27:
      if (!v71)
      {
        __break(1u);
        return;
      }

      v52 = *v70;
      v53 = v72;
      (*v70)(v72, v28, v12);
      swift_arrayInitWithTakeFrontToBack();
      v52(v26, v53, v12);
      v26 += v69;
      v28 += v69;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_252590178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25268DA10();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_252599E28(&qword_27F4E3450, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
      v26 = sub_252692B50();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_25259043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_25268DA10();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v63 - v11;
  v84 = sub_25268E850();
  MEMORY[0x28223BE20](v84);
  v79 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v63 - v17;
  v65 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v23 = *(v18 + 16);
    v22 = v18 + 16;
    v24 = *(v22 + 56);
    v80 = (v22 - 8);
    v81 = v23;
    v70 = (v8 + 8);
    v82 = v22;
    v25 = (v21 + v24 * (a3 - 1));
    v76 = -v24;
    v77 = (v22 + 16);
    v26 = a1 - a3;
    v78 = v21;
    v64 = v24;
    v27 = v21 + v24 * a3;
    v74 = &v63 - v17;
    v75 = v15;
LABEL_6:
    v68 = v25;
    v69 = a3;
    v66 = v27;
    v67 = v26;
    v30 = v26;
    while (1)
    {
      v83 = v30;
      v31 = v84;
      v32 = v81;
      (v81)(v20, v27, v84, v19);
      v32(v15, v25, v31);
      v33 = sub_25268E840();
      if (((v33 ^ sub_25268E840()) & 1) == 0)
      {
        v34 = sub_25268E780();
        if (!v35)
        {
          v34 = sub_25268E830();
        }

        v36 = v34;
        v37 = v35;
        v38 = sub_25268E780();
        if (!v39)
        {
          v38 = sub_25268E830();
        }

        if (v36 == v38 && v37 == v39)
        {
        }

        else
        {
          if (sub_2526933B0())
          {

            v40 = *v80;
            v15 = v75;
            v41 = v84;
            (*v80)(v75, v84);
            v20 = v74;
            v40(v74, v41);
            v42 = v83;
            goto LABEL_20;
          }

          v43 = sub_2526933B0();

          if (v43)
          {
            v28 = *v80;
            v15 = v75;
            v29 = v84;
            (*v80)(v75, v84);
            v20 = v74;
            v28(v74, v29);
LABEL_5:
            a3 = v69 + 1;
            v25 = &v68[v64];
            v26 = v67 - 1;
            v27 = v66 + v64;
            if (v69 + 1 == v65)
            {
              return;
            }

            goto LABEL_6;
          }
        }

        v44 = v71;
        v45 = v74;
        sub_25268E810();
        v46 = v72;
        v47 = v75;
        sub_25268E810();
        LOBYTE(v33) = MEMORY[0x25309F530](v44, v46);
        v48 = *v70;
        v49 = v46;
        v50 = v73;
        (*v70)(v49, v73);
        v51 = v44;
        v15 = v47;
        v48(v51, v50);
        v20 = v45;
      }

      v52 = *v80;
      v53 = v84;
      (*v80)(v15, v84);
      v52(v20, v53);
      v42 = v83;
      if ((v33 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_20:
      if (!v78)
      {
        __break(1u);
        return;
      }

      v54 = v20;
      v55 = *v77;
      v56 = v79;
      v57 = v27;
      v58 = v27;
      v59 = v84;
      (*v77)(v79, v57, v84);
      swift_arrayInitWithTakeFrontToBack();
      v60 = v59;
      v61 = v58;
      v55(v25, v56, v60);
      v20 = v54;
      v25 += v76;
      v27 = v61 + v76;
      v62 = __CFADD__(v42, 1);
      v30 = v42 + 1;
      if (v62)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_252590944(unint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v162 = a4;
  v163 = a1;
  v181 = sub_25268DA10();
  v7 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v179 = &v160 - v10;
  v11 = sub_25268EBE0();
  MEMORY[0x28223BE20](v11);
  v166 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v185 = &v160 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v160 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v160 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v160 - v22;
  MEMORY[0x28223BE20](v24);
  v175 = &v160 - v25;
  MEMORY[0x28223BE20](v26);
  v161 = &v160 - v27;
  v31 = MEMORY[0x28223BE20](v28);
  v176 = a3;
  v32 = *(a3 + 1);
  v173 = v30;
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_135:
    v7 = *v163;
    if (!*v163)
    {
      goto LABEL_177;
    }

    a3 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v173;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_171;
    }

    v154 = a3;
LABEL_138:
    v191 = v154;
    a3 = *(v154 + 2);
    if (a3 >= 2)
    {
      while (*v176)
      {
        v155 = *&v154[16 * a3];
        v156 = v154;
        v157 = *&v154[16 * (a3 - 1) + 40];
        sub_2525931F4(*v176 + *(v11 + 72) * v155, *v176 + *(v11 + 72) * *&v154[16 * (a3 - 1) + 32], *v176 + *(v11 + 72) * v157, v7);
        if (v5)
        {
          goto LABEL_149;
        }

        if (v157 < v155)
        {
          goto LABEL_164;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = sub_252624154(v156);
        }

        if ((a3 - 2) >= *(v156 + 2))
        {
          goto LABEL_165;
        }

        v158 = &v156[16 * a3];
        *v158 = v155;
        *(v158 + 1) = v157;
        v191 = v156;
        sub_2526240C8((a3 - 1));
        v154 = v191;
        a3 = *(v191 + 2);
        if (a3 <= 1)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_175;
    }

LABEL_149:

    return;
  }

  v160 = &v160 - v29;
  v33 = 0;
  v188 = (v30 + 8);
  v189 = v30 + 16;
  v178 = (v7 + 8);
  v187 = (v30 + 32);
  v34 = MEMORY[0x277D84F90];
  v190 = v17;
  v182 = v20;
  v174 = v23;
  while (1)
  {
    v168 = v34;
    v167 = v33;
    if (v33 + 1 >= v32)
    {
      v49 = v33 + 1;
      v69 = v162;
      goto LABEL_40;
    }

    v177 = v32;
    v35 = *v176;
    v36 = *(v173 + 72);
    v37 = *v176 + v36 * (v33 + 1);
    v38 = *(v173 + 16);
    v39 = v160;
    v186 = v37;
    (v38)(v160, v31);
    v184 = v35;
    v40 = v35 + v36 * v167;
    v41 = v161;
    v172 = v38;
    (v38)(v161, v40, v11);
    LODWORD(v183) = sub_25258F388();
    if (v5)
    {
      v159 = *v188;
      (*v188)(v41, v11);
      v159(v39, v11);
      goto LABEL_149;
    }

    v164 = 0;
    v7 = v188;
    v42 = *v188;
    (*v188)(v41, v11);
    v171 = v42;
    (v42)(v39, v11);
    v43 = v167 + 2;
    v44 = v184 + v36 * (v167 + 2);
    v45 = v175;
    v46 = v36;
    v184 = v36;
    a3 = v186;
    while (1)
    {
      v49 = v177;
      if (v177 == v43)
      {
        break;
      }

      v50 = v172;
      (v172)(v45, v44, v11);
      v186 = a3;
      v50(v23, a3, v11);
      v51 = sub_25268EA20();
      v52 = v23;
      if ((v51 & 0x10000) != 0 || (v53 = v51, v54 = sub_25268EA20(), (v54 & 0x10000) != 0))
      {
        v45 = v175;
        v47 = sub_25268EBD0();
        v23 = v52;
        if (((v47 ^ sub_25268EBD0()) & 1) == 0)
        {
          v55 = sub_25268E9D0();
          if (!v56)
          {
            v55 = sub_25268EBA0();
          }

          v57 = v55;
          v58 = v56;
          v59 = sub_25268E9D0();
          if (!v60)
          {
            v59 = sub_25268EBA0();
          }

          if (v57 == v59 && v58 == v60)
          {
          }

          else
          {
            if (sub_2526933B0())
            {

              v47 = 1;
              v17 = v190;
              goto LABEL_7;
            }

            v68 = sub_2526933B0();

            if (v68)
            {
              v47 = 0;
              v17 = v190;
              v23 = v174;
              goto LABEL_7;
            }
          }

          v61 = v179;
          sub_25268EB50();
          v62 = v180;
          v63 = v174;
          sub_25268EB50();
          v47 = MEMORY[0x25309F530](v61, v62);
          v64 = *v178;
          v65 = v62;
          v66 = v181;
          (*v178)(v65, v181);
          v67 = v66;
          v23 = v63;
          v64(v61, v67);
          v45 = v175;
          v17 = v190;
        }
      }

      else
      {
        v47 = v53 < v54;
        v23 = v52;
        v45 = v175;
      }

LABEL_7:
      v7 = v188;
      v48 = v171;
      (v171)(v23, v11);
      v48(v45, v11);
      ++v43;
      v46 = v184;
      v44 += v184;
      a3 = &v186[v184];
      if ((v183 ^ v47))
      {
        v49 = v43 - 1;
        break;
      }
    }

    v5 = v164;
    v69 = v162;
    v70 = v168;
    v20 = v182;
    v33 = v167;
    if ((v183 & 1) == 0)
    {
      goto LABEL_40;
    }

    if (v49 < v167)
    {
      goto LABEL_170;
    }

    if (v167 < v49)
    {
      v71 = v49;
      a3 = (v46 * (v49 - 1));
      v72 = v49 * v46;
      v177 = v49;
      v73 = v167;
      v74 = v167 * v46;
      do
      {
        if (v73 != --v71)
        {
          v75 = *v176;
          if (!*v176)
          {
            goto LABEL_174;
          }

          v7 = v75 + v74;
          v76 = *v187;
          (*v187)(v166, v75 + v74, v11, v70);
          if (v74 < a3 || v7 >= v75 + v72)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v74 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v76(&a3[v75], v166, v11);
          v5 = v164;
          v70 = v168;
          v33 = v167;
          v46 = v184;
        }

        ++v73;
        a3 -= v46;
        v72 -= v46;
        v74 += v46;
      }

      while (v73 < v71);
      v69 = v162;
      v17 = v190;
      v20 = v182;
      v23 = v174;
      v49 = v177;
    }

LABEL_40:
    v77 = v176[1];
    if (v49 >= v77)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v49, v33))
    {
      goto LABEL_167;
    }

    if (v49 - v33 >= v69)
    {
LABEL_49:
      v7 = v49;
      if (v49 < v33)
      {
        goto LABEL_166;
      }

      goto LABEL_50;
    }

    if (__OFADD__(v33, v69))
    {
      goto LABEL_168;
    }

    if (v33 + v69 >= v77)
    {
      v7 = v176[1];
    }

    else
    {
      v7 = v33 + v69;
    }

    if (v7 < v33)
    {
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      v154 = sub_252624154(a3);
      goto LABEL_138;
    }

    if (v49 == v7)
    {
      goto LABEL_49;
    }

    v164 = v5;
    v123 = *v176;
    v124 = *(v173 + 72);
    v186 = *(v173 + 16);
    v125 = v33;
    v126 = (v123 + v124 * (v49 - 1));
    v183 = -v124;
    v184 = v123;
    v127 = (v125 - v49);
    v165 = v124;
    v128 = v123 + v49 * v124;
    v169 = v7;
LABEL_106:
    v177 = v49;
    v170 = v128;
    v171 = v127;
    v130 = v128;
    v172 = v126;
LABEL_107:
    v131 = v186;
    (v186)(v20, v130, v11, v31);
    (v131)(v17, v126, v11);
    v132 = sub_25268EA20();
    if ((v132 & 0x10000) == 0)
    {
      v133 = v132;
      v134 = sub_25268EA20();
      if ((v134 & 0x10000) == 0)
      {
        break;
      }
    }

    v135 = sub_25268EBD0();
    if ((v135 ^ sub_25268EBD0()))
    {
      if ((v135 & 1) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_122;
    }

    v136 = sub_25268E9D0();
    if (!v137)
    {
      v136 = sub_25268EBA0();
    }

    v138 = v136;
    v139 = v137;
    v140 = sub_25268E9D0();
    if (!v141)
    {
      v140 = sub_25268EBA0();
    }

    if (v138 == v140 && v139 == v141)
    {

LABEL_124:
      v144 = v179;
      sub_25268EB50();
      v145 = v180;
      sub_25268EB50();
      a3 = MEMORY[0x25309F530](v144, v145);
      v146 = *v178;
      v147 = v145;
      v148 = v181;
      (*v178)(v147, v181);
      v149 = v144;
      v17 = v190;
      v146(v149, v148);
      v20 = v182;
      goto LABEL_125;
    }

    if (sub_2526933B0())
    {

      v17 = v190;
      v20 = v182;
LABEL_122:
      v142 = *v188;
      (*v188)(v17, v11);
      v142(v20, v11);
      goto LABEL_126;
    }

    v143 = sub_2526933B0();

    v17 = v190;
    v20 = v182;
    if ((v143 & 1) == 0)
    {
      goto LABEL_124;
    }

LABEL_104:
    a3 = v188;
    v129 = *v188;
    (*v188)(v17, v11);
    v129(v20, v11);
LABEL_105:
    v49 = v177 + 1;
    v126 = &v172[v165];
    v127 = v171 - 1;
    v128 = v170 + v165;
    v7 = v169;
    if (v177 + 1 != v169)
    {
      goto LABEL_106;
    }

    v5 = v164;
    v23 = v174;
    v33 = v167;
    if (v169 < v167)
    {
      goto LABEL_166;
    }

LABEL_50:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v34 = v168;
    }

    else
    {
      v34 = sub_252368690(0, *(v168 + 2) + 1, 1, v168);
    }

    v79 = *(v34 + 2);
    v78 = *(v34 + 3);
    a3 = (v79 + 1);
    if (v79 >= v78 >> 1)
    {
      v34 = sub_252368690((v78 > 1), v79 + 1, 1, v34);
    }

    *(v34 + 2) = a3;
    v80 = &v34[16 * v79];
    *(v80 + 4) = v33;
    *(v80 + 5) = v7;
    v169 = v7;
    v7 = *v163;
    if (!*v163)
    {
      goto LABEL_176;
    }

    if (v79)
    {
      v20 = v182;
      while (1)
      {
        v81 = (a3 - 1);
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v82 = *(v34 + 4);
          v83 = *(v34 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_70:
          if (v85)
          {
            goto LABEL_155;
          }

          v98 = &v34[16 * a3];
          v100 = *v98;
          v99 = *(v98 + 1);
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_158;
          }

          v104 = &v34[16 * v81 + 32];
          v106 = *v104;
          v105 = *(v104 + 1);
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_161;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_162;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              v81 = (a3 - 2);
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v108 = &v34[16 * a3];
        v110 = *v108;
        v109 = *(v108 + 1);
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_84:
        if (v103)
        {
          goto LABEL_157;
        }

        v111 = &v34[16 * v81];
        v113 = *(v111 + 4);
        v112 = *(v111 + 5);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_160;
        }

        if (v114 < v102)
        {
          goto LABEL_101;
        }

LABEL_91:
        v119 = v81 - 1;
        if (v81 - 1 >= a3)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (!*v176)
        {
          goto LABEL_173;
        }

        v120 = v34;
        a3 = *&v34[16 * v119 + 32];
        v121 = *&v34[16 * v81 + 40];
        sub_2525931F4(*v176 + *(v173 + 72) * a3, *v176 + *(v173 + 72) * *&v34[16 * v81 + 32], *v176 + *(v173 + 72) * v121, v7);
        if (v5)
        {
          goto LABEL_149;
        }

        if (v121 < a3)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = sub_252624154(v120);
        }

        if (v119 >= *(v120 + 2))
        {
          goto LABEL_152;
        }

        v122 = &v120[16 * v119];
        *(v122 + 4) = a3;
        *(v122 + 5) = v121;
        v191 = v120;
        sub_2526240C8(v81);
        v34 = v191;
        a3 = *(v191 + 2);
        v20 = v182;
        v23 = v174;
        if (a3 <= 1)
        {
          goto LABEL_101;
        }
      }

      v86 = &v34[16 * a3 + 32];
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_153;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_154;
      }

      v93 = &v34[16 * a3];
      v95 = *v93;
      v94 = *(v93 + 1);
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_156;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_159;
      }

      if (v97 >= v89)
      {
        v115 = &v34[16 * v81 + 32];
        v117 = *v115;
        v116 = *(v115 + 1);
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_163;
        }

        if (v84 < v118)
        {
          v81 = (a3 - 2);
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

    v20 = v182;
LABEL_101:
    v32 = v176[1];
    v33 = v169;
    if (v169 >= v32)
    {
      goto LABEL_135;
    }
  }

  a3 = (v133 < v134);
LABEL_125:
  v150 = *v188;
  (*v188)(v17, v11);
  v150(v20, v11);
  if ((a3 & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_126:
  if (v184)
  {
    a3 = *v187;
    v151 = v185;
    (*v187)(v185, v130, v11);
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v126, v151, v11);
    v126 += v183;
    v130 += v183;
    if (__CFADD__(v127++, 1))
    {
      goto LABEL_105;
    }

    goto LABEL_107;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}

void sub_252591898(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_25268DA10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_252624154(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_252593C2C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_252624154(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_2526240C8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_252599E28(&qword_27F4E3450, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
      LODWORD(v133) = sub_252692B50();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_252692B50() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_252368690(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_252368690((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_252593C2C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_252624154(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_2526240C8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_252599E28(&qword_27F4E3450, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
    v109 = sub_252692B50();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_2525922C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v153 = a4;
  v151 = a1;
  v171 = sub_25268DA10();
  v8 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v169 = &v149 - v11;
  v12 = sub_25268E850();
  MEMORY[0x28223BE20](v12);
  v155 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v175 = &v149 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v149 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v149 - v20;
  MEMORY[0x28223BE20](v22);
  v162 = &v149 - v23;
  MEMORY[0x28223BE20](v24);
  v167 = &v149 - v25;
  MEMORY[0x28223BE20](v26);
  v150 = &v149 - v27;
  v30 = MEMORY[0x28223BE20](v28);
  v149 = &v149 - v31;
  v164 = a3;
  v32 = *(a3 + 8);
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_124:
    a3 = *v151;
    if (!*v151)
    {
      goto LABEL_164;
    }

    v5 = v29;
    v8 = v34;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v143 = v8;
LABEL_127:
      v144 = v6;
      v182 = v143;
      v8 = *(v143 + 2);
      if (v8 >= 2)
      {
        while (*v164)
        {
          v6 = *&v143[16 * v8];
          v145 = v143;
          v146 = *&v143[16 * v8 + 24];
          sub_252594234((*v164 + *(v5 + 72) * v6), (*v164 + *(v5 + 72) * *&v143[16 * v8 + 16]), *v164 + *(v5 + 72) * v146, a3);
          if (v144)
          {
            goto LABEL_135;
          }

          if (v146 < v6)
          {
            goto LABEL_151;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v145 = sub_252624154(v145);
          }

          if (v8 - 2 >= *(v145 + 2))
          {
            goto LABEL_152;
          }

          v147 = &v145[16 * v8];
          *v147 = v6;
          *(v147 + 1) = v146;
          v182 = v145;
          sub_2526240C8(v8 - 1);
          v143 = v182;
          v8 = *(v182 + 2);
          if (v8 <= 1)
          {
            goto LABEL_135;
          }
        }

        goto LABEL_162;
      }

LABEL_135:

      return;
    }

LABEL_158:
    v143 = sub_252624154(v8);
    goto LABEL_127;
  }

  v33 = 0;
  v179 = v29 + 16;
  v180 = (v29 + 8);
  v168 = (v8 + 8);
  v177 = (v29 + 32);
  v34 = MEMORY[0x277D84F90];
  v163 = v29;
  v178 = v18;
  v172 = v21;
LABEL_4:
  v158 = v6;
  v156 = v34;
  v152 = v33;
  if (v33 + 1 >= v32)
  {
    v53 = v33 + 1;
    v63 = v153;
    v6 = v158;
    goto LABEL_39;
  }

  v35 = v33;
  v165 = v32;
  v36 = *v164;
  v5 = *(v29 + 72);
  v37 = *(v29 + 16);
  v38 = v149;
  v181 = (*v164 + v5 * (v33 + 1));
  (v37)(v149, v30);
  v39 = v150;
  v161 = v37;
  (v37)(v150, v36 + v5 * v35, v12);
  v40 = v158;
  LODWORD(v173) = sub_25258F5E8();
  if (v40)
  {
    v148 = *v180;
    (*v180)(v39, v12);
    v148(v38, v12);

    return;
  }

  a3 = v180;
  v158 = 0;
  v41 = *v180;
  (*v180)(v39, v12);
  v160 = v41;
  (v41)(v38, v12);
  v42 = (v35 + 2);
  v43 = v36 + v5 * (v35 + 2);
  v44 = v162;
  v8 = v167;
  v6 = v158;
  v174 = v5;
  v45 = v181;
  while (1)
  {
    v53 = v165;
    if (v165 == v42)
    {
      break;
    }

    v176 = v42;
    v54 = v161;
    (v161)(v8, v43, v12);
    v181 = v45;
    v54(v44, v45, v12);
    v48 = sub_25268E840();
    v55 = sub_25268E840();
    v8 = v167;
    if (((v48 ^ v55) & 1) == 0)
    {
      v56 = sub_25268E780();
      if (!v57)
      {
        v56 = sub_25268E830();
      }

      v58 = v56;
      v59 = v57;
      v60 = sub_25268E780();
      if (!v61)
      {
        v60 = sub_25268E830();
      }

      v8 = v167;
      if (v58 == v60 && v59 == v61)
      {
      }

      else
      {
        if (sub_2526933B0())
        {

          LOBYTE(v48) = 1;
LABEL_22:
          v6 = v158;
          v18 = v178;
          v44 = v162;
          goto LABEL_9;
        }

        v62 = sub_2526933B0();

        if (v62)
        {
          LOBYTE(v48) = 0;
          goto LABEL_22;
        }
      }

      v46 = v169;
      sub_25268E810();
      v47 = v170;
      v44 = v162;
      sub_25268E810();
      LOBYTE(v48) = MEMORY[0x25309F530](v46, v47);
      v49 = *v168;
      v50 = v47;
      v51 = v171;
      (*v168)(v50, v171);
      v49(v46, v51);
      v8 = v167;
      v6 = v158;
      v18 = v178;
    }

LABEL_9:
    a3 = v160;
    (v160)(v44, v12);
    (a3)(v8, v12);
    v52 = v173 ^ v48;
    v42 = v176 + 1;
    v5 = v174;
    v43 += v174;
    v45 = &v181[v174];
    if (v52)
    {
      v53 = v176;
      break;
    }
  }

  v29 = v163;
  v63 = v153;
  v64 = v156;
  v21 = v172;
  if ((v173 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v53 < v152)
  {
    goto LABEL_157;
  }

  if (v152 < v53)
  {
    a3 = v5 * (v53 - 1);
    v65 = v53 * v5;
    v66 = v53;
    v67 = v152;
    v68 = v152 * v5;
    do
    {
      if (v67 != --v66)
      {
        v69 = *v164;
        if (!*v164)
        {
          goto LABEL_161;
        }

        v70 = v53;
        v8 = v69 + v68;
        v181 = *v177;
        (v181)(v155, v69 + v68, v12, v64);
        if (v68 < a3 || v8 >= v69 + v65)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v68 != a3)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        (v181)(v69 + a3, v155, v12);
        v29 = v163;
        v63 = v153;
        v64 = v156;
        v53 = v70;
        v5 = v174;
      }

      ++v67;
      a3 -= v5;
      v65 -= v5;
      v68 += v5;
    }

    while (v67 < v66);
    v6 = v158;
    v18 = v178;
    v21 = v172;
  }

LABEL_39:
  v71 = v164[1];
  if (v53 >= v71)
  {
    goto LABEL_48;
  }

  if (__OFSUB__(v53, v152))
  {
    goto LABEL_154;
  }

  if (v53 - v152 >= v63)
  {
LABEL_48:
    v72 = v6;
    v5 = v53;
    goto LABEL_49;
  }

  if (__OFADD__(v152, v63))
  {
    goto LABEL_155;
  }

  if (v152 + v63 >= v71)
  {
    v5 = v164[1];
  }

  else
  {
    v5 = v152 + v63;
  }

  if (v5 < v152)
  {
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (v53 == v5)
  {
    goto LABEL_48;
  }

  v158 = v6;
  v116 = *v164;
  v117 = *(v29 + 72);
  v176 = *(v29 + 16);
  v118 = (v116 + v117 * (v53 - 1));
  v173 = -v117;
  v119 = (v152 - v53);
  v174 = v116;
  v154 = v117;
  v120 = v116 + v53 * v117;
  v166 = v12;
  v157 = v5;
  while (2)
  {
    v165 = v53;
    v159 = v120;
    v121 = v120;
    v160 = v119;
    v122 = v119;
    v161 = v118;
LABEL_103:
    v181 = v122;
    a3 = v176;
    (v176)(v21, v121, v12, v30);
    (a3)(v18, v118, v12);
    v123 = sub_25268E840();
    if ((v123 ^ sub_25268E840()))
    {
      goto LABEL_115;
    }

    v124 = sub_25268E780();
    if (!v125)
    {
      v124 = sub_25268E830();
    }

    v126 = v124;
    v127 = v125;
    v128 = sub_25268E780();
    if (!v129)
    {
      v128 = sub_25268E830();
    }

    if (v126 == v128 && v127 == v129)
    {

      break;
    }

    if (sub_2526933B0())
    {

      v130 = *v180;
      v18 = v178;
      (*v180)(v178, v12);
      v21 = v172;
      v130(v172, v12);
      goto LABEL_116;
    }

    v131 = sub_2526933B0();

    if (v131)
    {
      v8 = v180;
      a3 = *v180;
      v18 = v178;
      (*v180)(v178, v12);
      v21 = v172;
      (a3)(v172, v12);
LABEL_101:
      v53 = v165 + 1;
      v118 = &v161[v154];
      v119 = v160 - 1;
      v120 = v159 + v154;
      v5 = v157;
      if (v165 + 1 != v157)
      {
        continue;
      }

      v72 = v158;
LABEL_49:
      v6 = v152;
      if (v5 < v152)
      {
        goto LABEL_153;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v34 = v156;
      }

      else
      {
        v34 = sub_252368690(0, *(v156 + 2) + 1, 1, v156);
      }

      a3 = *(v34 + 2);
      v73 = *(v34 + 3);
      v8 = a3 + 1;
      if (a3 >= v73 >> 1)
      {
        v34 = sub_252368690((v73 > 1), a3 + 1, 1, v34);
      }

      *(v34 + 2) = v8;
      v74 = &v34[16 * a3];
      *(v74 + 4) = v6;
      *(v74 + 5) = v5;
      v157 = v5;
      v5 = *v151;
      if (!*v151)
      {
        goto LABEL_163;
      }

      v6 = v72;
      if (a3)
      {
        while (2)
        {
          v75 = v8 - 1;
          if (v8 >= 4)
          {
            v80 = &v34[16 * v8 + 32];
            v81 = *(v80 - 64);
            v82 = *(v80 - 56);
            v86 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            if (v86)
            {
              goto LABEL_140;
            }

            v85 = *(v80 - 48);
            v84 = *(v80 - 40);
            v86 = __OFSUB__(v84, v85);
            v78 = v84 - v85;
            v79 = v86;
            if (v86)
            {
              goto LABEL_141;
            }

            v87 = &v34[16 * v8];
            v89 = *v87;
            v88 = *(v87 + 1);
            v86 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v86)
            {
              goto LABEL_143;
            }

            v86 = __OFADD__(v78, v90);
            v91 = v78 + v90;
            if (v86)
            {
              goto LABEL_146;
            }

            if (v91 >= v83)
            {
              v109 = &v34[16 * v75 + 32];
              v111 = *v109;
              v110 = *(v109 + 1);
              v86 = __OFSUB__(v110, v111);
              v112 = v110 - v111;
              if (v86)
              {
                goto LABEL_150;
              }

              if (v78 < v112)
              {
                v75 = v8 - 2;
              }
            }

            else
            {
LABEL_69:
              if (v79)
              {
                goto LABEL_142;
              }

              v92 = &v34[16 * v8];
              v94 = *v92;
              v93 = *(v92 + 1);
              v95 = __OFSUB__(v93, v94);
              v96 = v93 - v94;
              v97 = v95;
              if (v95)
              {
                goto LABEL_145;
              }

              v98 = &v34[16 * v75 + 32];
              v100 = *v98;
              v99 = *(v98 + 1);
              v86 = __OFSUB__(v99, v100);
              v101 = v99 - v100;
              if (v86)
              {
                goto LABEL_148;
              }

              if (__OFADD__(v96, v101))
              {
                goto LABEL_149;
              }

              if (v96 + v101 < v78)
              {
                goto LABEL_83;
              }

              if (v78 < v101)
              {
                v75 = v8 - 2;
              }
            }
          }

          else
          {
            if (v8 == 3)
            {
              v76 = *(v34 + 4);
              v77 = *(v34 + 5);
              v86 = __OFSUB__(v77, v76);
              v78 = v77 - v76;
              v79 = v86;
              goto LABEL_69;
            }

            v102 = &v34[16 * v8];
            v104 = *v102;
            v103 = *(v102 + 1);
            v86 = __OFSUB__(v103, v104);
            v96 = v103 - v104;
            v97 = v86;
LABEL_83:
            if (v97)
            {
              goto LABEL_144;
            }

            v105 = &v34[16 * v75];
            v107 = *(v105 + 4);
            v106 = *(v105 + 5);
            v86 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v86)
            {
              goto LABEL_147;
            }

            if (v108 < v96)
            {
              break;
            }
          }

          a3 = v75 - 1;
          if (v75 - 1 >= v8)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (!*v164)
          {
            goto LABEL_160;
          }

          v113 = v34;
          v8 = *&v34[16 * a3 + 32];
          v114 = *&v34[16 * v75 + 40];
          sub_252594234((*v164 + *(v163 + 72) * v8), (*v164 + *(v163 + 72) * *&v34[16 * v75 + 32]), *v164 + *(v163 + 72) * v114, v5);
          if (v6)
          {
            goto LABEL_135;
          }

          if (v114 < v8)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_252624154(v113);
          }

          if (a3 >= *(v113 + 2))
          {
            goto LABEL_139;
          }

          v115 = &v113[16 * a3];
          *(v115 + 4) = v8;
          *(v115 + 5) = v114;
          v182 = v113;
          sub_2526240C8(v75);
          v34 = v182;
          v8 = *(v182 + 2);
          v21 = v172;
          if (v8 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v29 = v163;
      v32 = v164[1];
      v33 = v157;
      if (v157 >= v32)
      {
        goto LABEL_124;
      }

      goto LABEL_4;
    }

    break;
  }

  v132 = v169;
  v133 = v172;
  sub_25268E810();
  v134 = v170;
  v135 = v178;
  sub_25268E810();
  LOBYTE(v123) = MEMORY[0x25309F530](v132, v134);
  a3 = v168;
  v136 = *v168;
  v137 = v134;
  v138 = v171;
  (*v168)(v137, v171);
  v139 = v132;
  v18 = v135;
  v136(v139, v138);
  v21 = v133;
  v12 = v166;
LABEL_115:
  v8 = *v180;
  (*v180)(v18, v12);
  (v8)(v21, v12);
  if ((v123 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_116:
  v140 = v181;
  if (v174)
  {
    a3 = v177;
    v8 = *v177;
    v141 = v175;
    (*v177)(v175, v121, v12);
    swift_arrayInitWithTakeFrontToBack();
    (v8)(v118, v141, v12);
    v118 += v173;
    v121 += v173;
    v142 = __CFADD__(v140, 1);
    v122 = v140 + 1;
    if (v142)
    {
      goto LABEL_101;
    }

    goto LABEL_103;
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
}

void sub_2525931F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v98 = a3;
  v103 = a1;
  v90 = sub_25268DA10();
  v6 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v84 - v9;
  v10 = sub_25268EBE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v87 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v84 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v23 = a2 - v103;
  if (a2 - v103 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_97;
  }

  v24 = v98 - a2;
  if (v98 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v106 = v103;
    v105 = a4;
    v101 = v22;
    if (v23 / v22 < v24 / v22)
    {
      v25 = v23 / v22 * v22;
      if (a4 < v103 || v103 + v25 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != v103)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v97 = a4 + v25;
      v104 = a4 + v25;
      if (v25 >= 1 && a2 < v98)
      {
        v29 = *(v11 + 16);
        v93 = (v6 + 8);
        v94 = v11 + 16;
        v95 = (v11 + 8);
        v96 = v29;
        while (1)
        {
          v30 = v96;
          v96(v20, a2, v10);
          v102 = a4;
          v30(v17, a4, v10);
          v31 = sub_25268EA20();
          if ((v31 & 0x10000) != 0 || (v32 = v31, v33 = sub_25268EA20(), (v33 & 0x10000) != 0))
          {
            v35 = sub_25268EBD0();
            if ((v35 ^ sub_25268EBD0()))
            {
              if ((v35 & 1) == 0)
              {
                goto LABEL_26;
              }

              goto LABEL_45;
            }

            v99 = a2;
            v37 = sub_25268E9D0();
            if (!v38)
            {
              v37 = sub_25268EBA0();
            }

            v39 = v37;
            v40 = v38;
            v41 = sub_25268E9D0();
            if (!v42)
            {
              v41 = sub_25268EBA0();
            }

            if (v39 == v41 && v40 == v42)
            {

              a2 = v99;
            }

            else
            {
              if (sub_2526933B0())
              {

                a2 = v99;
LABEL_45:
                v50 = *v95;
                (*v95)(v17, v10);
                v50(v20, v10);
                goto LABEL_46;
              }

              v52 = sub_2526933B0();

              a2 = v99;
              if (v52)
              {
LABEL_26:
                v36 = *v95;
                (*v95)(v17, v10);
                v36(v20, v10);
LABEL_36:
                v49 = v101;
                a4 = v102 + v101;
                if (v103 < v102 || v103 >= a4)
                {
                  swift_arrayInitWithTakeFrontToBack();
LABEL_41:
                  v49 = v101;
                }

                else if (v103 != v102)
                {
                  swift_arrayInitWithTakeBackToFront();
                  goto LABEL_41;
                }

                v105 = a4;
                goto LABEL_53;
              }
            }

            v43 = v88;
            sub_25268EB50();
            v44 = v89;
            sub_25268EB50();
            v34 = MEMORY[0x25309F530](v43, v44);
            v45 = *v93;
            v46 = v44;
            v47 = v90;
            (*v93)(v46, v90);
            v45(v43, v47);
          }

          else
          {
            v34 = v32 < v33;
          }

          v48 = *v95;
          (*v95)(v17, v10);
          v48(v20, v10);
          if ((v34 & 1) == 0)
          {
            goto LABEL_36;
          }

LABEL_46:
          v49 = v101;
          a4 = v102;
          v51 = a2 + v101;
          if (v103 < a2 || v103 >= v51)
          {
            swift_arrayInitWithTakeFrontToBack();
            goto LABEL_51;
          }

          if (v103 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_51:
            v49 = v101;
          }

          a2 = v51;
LABEL_53:
          v103 += v49;
          v106 = v103;
          if (a4 >= v97 || a2 >= v98)
          {
            goto LABEL_95;
          }
        }
      }

      goto LABEL_95;
    }

    v26 = v24 / v22 * v22;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v22 = v101;
      v27 = v87;
    }

    else
    {
      v27 = v87;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
        v22 = v101;
      }
    }

    v53 = a4 + v26;
    if (v26 < 1)
    {
LABEL_93:
      v106 = a2;
      v104 = v53;
LABEL_95:
      sub_252594C50(&v106, &v105, &v104, MEMORY[0x277D15AC0]);
      return;
    }

    v54 = -v22;
    v86 = (v6 + 8);
    v92 = (v11 + 8);
    v93 = (v11 + 16);
    v55 = a4 + v26;
    v101 = -v22;
    v102 = a4;
    v56 = v98;
    v100 = v10;
LABEL_61:
    v85 = v53;
    v57 = a2 + v54;
    v58 = v95;
    v99 = a2 + v54;
    v94 = a2;
    while (1)
    {
      if (a2 <= v103)
      {
        v106 = a2;
        v104 = v85;
        goto LABEL_95;
      }

      v97 = v56;
      v98 = v55;
      v91 = v53;
      v59 = *v93;
      v96 = (v55 + v54);
      v60 = v100;
      (v59)(v58);
      (v59)(v27, v57, v60);
      v61 = sub_25268EA20();
      if ((v61 & 0x10000) == 0)
      {
        v62 = v61;
        v63 = sub_25268EA20();
        if ((v63 & 0x10000) == 0)
        {
          v64 = v58;
          LOBYTE(v65) = v62 < v63;
          goto LABEL_82;
        }
      }

      v64 = v58;
      v65 = sub_25268EBD0();
      if (((v65 ^ sub_25268EBD0()) & 1) == 0)
      {
        v66 = sub_25268E9D0();
        if (!v67)
        {
          v66 = sub_25268EBA0();
        }

        v68 = v66;
        v69 = v67;
        v70 = sub_25268E9D0();
        if (!v71)
        {
          v70 = sub_25268EBA0();
        }

        if (v68 == v70 && v69 == v71)
        {

LABEL_76:
          v72 = v88;
          v64 = v95;
          sub_25268EB50();
          v73 = v89;
          sub_25268EB50();
          LOBYTE(v65) = MEMORY[0x25309F530](v72, v73);
          v74 = *v86;
          v75 = v90;
          (*v86)(v73, v90);
          v76 = v72;
          v27 = v87;
          v74(v76, v75);
          a4 = v102;
          goto LABEL_82;
        }

        if (sub_2526933B0())
        {

          LOBYTE(v65) = 1;
        }

        else
        {
          v77 = sub_2526933B0();

          if ((v77 & 1) == 0)
          {
            goto LABEL_76;
          }

          LOBYTE(v65) = 0;
        }

        a4 = v102;
        v64 = v95;
      }

LABEL_82:
      v78 = v100;
      v79 = v97;
      v80 = v97 + v101;
      v81 = *v92;
      (*v92)();
      (v81)(v64, v78);
      if (v65)
      {
        v56 = v80;
        if (v79 < v94 || v80 >= v94)
        {
          a2 = v99;
          swift_arrayInitWithTakeFrontToBack();
          v53 = v91;
        }

        else
        {
          v83 = v79 == v94;
          a2 = v99;
          v53 = v91;
          if (!v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = v98;
        v54 = v101;
        if (v98 <= a4)
        {
          goto LABEL_93;
        }

        goto LABEL_61;
      }

      v82 = v96;
      v53 = v96;
      v56 = v80;
      if (v79 < v98 || v80 >= v98)
      {
        swift_arrayInitWithTakeFrontToBack();
        v57 = v99;
        v58 = v95;
      }

      else
      {
        v57 = v99;
        v58 = v95;
        if (v79 != v98)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v55 = v53;
      v54 = v101;
      a2 = v94;
      if (v82 <= a4)
      {
        goto LABEL_93;
      }
    }
  }

LABEL_98:
  __break(1u);
}

void sub_252593C2C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_25268DA10();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_252599E28(&qword_27F4E3450, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
          LOBYTE(v34) = sub_252692B50();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_252599E28(&qword_27F4E3450, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
        LOBYTE(v21) = sub_252692B50();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_252594C50(&v54, &v53, &v52, MEMORY[0x277CC95F0]);
}

void sub_252594234(char *a1, char *a2, unint64_t a3, char *a4)
{
  v86 = sub_25268DA10();
  v95 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v79 - v10;
  v11 = sub_25268E850();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v79 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v79 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_89;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_90;
  }

  v25 = (a2 - a1) / v23;
  v99 = a1;
  v98 = a4;
  v96 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || &a2[v27] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v23 = v96;
      v28 = v83;
    }

    else
    {
      v28 = v83;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
        v23 = v96;
      }
    }

    if (v27 < 1)
    {
      v55 = &a4[v27];
      goto LABEL_85;
    }

    v52 = -v23;
    v88 = (v12 + 16);
    v89 = v11;
    v53 = (v12 + 8);
    v54 = &a4[v27];
    v55 = &a4[v27];
    v94 = a4;
    v96 = -v23;
    v81 = (v12 + 8);
    v82 = (v95 + 8);
    while (1)
    {
      v80 = v55;
      v56 = &a2[v52];
      v95 = &a2[v52];
      v90 = a2;
      while (1)
      {
        if (a2 <= a1)
        {
          v99 = a2;
          v97 = v80;
          goto LABEL_87;
        }

        v58 = a3;
        v87 = v55;
        v59 = *v88;
        v60 = v11;
        v61 = v91;
        v92 = &v54[v52];
        v93 = v54;
        v59(v91);
        (v59)(v28, v56, v60);
        v62 = sub_25268E840();
        if (((v62 ^ sub_25268E840()) & 1) == 0)
        {
          v63 = sub_25268E780();
          if (!v64)
          {
            v63 = sub_25268E830();
          }

          v65 = v63;
          v66 = v64;
          v67 = sub_25268E780();
          if (!v68)
          {
            v67 = sub_25268E830();
          }

          if (v65 == v67 && v66 == v68)
          {

LABEL_66:
            v69 = v84;
            v61 = v91;
            sub_25268E810();
            v70 = v85;
            sub_25268E810();
            LOBYTE(v62) = MEMORY[0x25309F530](v69, v70);
            v71 = *v82;
            v72 = v86;
            (*v82)(v70, v86);
            v73 = v69;
            v28 = v83;
            v71(v73, v72);
            v53 = v81;
            goto LABEL_72;
          }

          if (sub_2526933B0())
          {

            LOBYTE(v62) = 1;
          }

          else
          {
            v74 = sub_2526933B0();

            if ((v74 & 1) == 0)
            {
              goto LABEL_66;
            }

            LOBYTE(v62) = 0;
          }

          v61 = v91;
        }

LABEL_72:
        a3 = v58 + v96;
        v75 = *v53;
        v76 = v89;
        (*v53)(v28, v89);
        v77 = v61;
        v11 = v76;
        v75(v77, v76);
        if (v62)
        {
          break;
        }

        v78 = v92;
        v55 = v92;
        if (v58 < v93 || a3 >= v93)
        {
          swift_arrayInitWithTakeFrontToBack();
          v56 = v95;
        }

        else
        {
          v56 = v95;
          if (v58 != v93)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v54 = v55;
        v57 = v78 > v94;
        v52 = v96;
        a2 = v90;
        if (!v57)
        {
          goto LABEL_85;
        }
      }

      if (v58 < v90 || a3 >= v90)
      {
        a2 = v95;
        swift_arrayInitWithTakeFrontToBack();
        v55 = v87;
      }

      else
      {
        a2 = v95;
        v55 = v87;
        if (v58 != v90)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v54 = v93;
      v52 = v96;
      if (v93 <= v94)
      {
LABEL_85:
        v99 = a2;
        v97 = v55;
        goto LABEL_87;
      }
    }
  }

  v26 = v25 * v23;
  if (a4 < a1 || &a1[v26] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v93 = &a4[v26];
  v97 = &a4[v26];
  if (v26 >= 1 && a2 < a3)
  {
    v90 = *(v12 + 16);
    v91 = (v12 + 16);
    v30 = (v12 + 8);
    v88 = (v95 + 8);
    v89 = v11;
    v92 = a3;
    do
    {
      v31 = v90;
      (v90)(v21, a2, v11);
      (v31)(v18, a4, v11);
      v32 = sub_25268E840();
      if (((v32 ^ sub_25268E840()) & 1) == 0)
      {
        v94 = a4;
        v95 = a2;
        v33 = sub_25268E780();
        if (!v34)
        {
          v33 = sub_25268E830();
        }

        v35 = v33;
        v36 = v34;
        v37 = sub_25268E780();
        if (!v38)
        {
          v37 = sub_25268E830();
        }

        if (v35 == v37 && v36 == v38)
        {
        }

        else
        {
          if (sub_2526933B0())
          {

            v48 = *v30;
            (*v30)(v18, v11);
            v48(v21, v11);
            a4 = v94;
            a2 = v95;
            goto LABEL_37;
          }

          v50 = sub_2526933B0();

          if (v50)
          {
            v51 = *v30;
            (*v30)(v18, v11);
            v51(v21, v11);
            a4 = v94;
            a2 = v95;
LABEL_31:
            v45 = v96;
            v46 = &a4[v96];
            if (a1 < a4 || a1 >= v46)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v96;
              v47 = v92;
            }

            else
            {
              v47 = v92;
              if (a1 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v45 = v96;
              }
            }

            v98 = v46;
            a4 = v46;
            goto LABEL_44;
          }
        }

        v39 = v84;
        sub_25268E810();
        v40 = v85;
        sub_25268E810();
        LOBYTE(v32) = MEMORY[0x25309F530](v39, v40);
        v41 = *v88;
        v42 = v40;
        v43 = v86;
        (*v88)(v42, v86);
        (v41)(v39, v43);
        v11 = v89;
        a4 = v94;
        a2 = v95;
      }

      v44 = *v30;
      (*v30)(v18, v11);
      v44(v21, v11);
      if ((v32 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_37:
      v45 = v96;
      v49 = &a2[v96];
      if (a1 < a2 || a1 >= v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v45 = v96;
        a2 = v49;
        v47 = v92;
      }

      else
      {
        v47 = v92;
        if (a1 == a2)
        {
          a2 += v96;
        }

        else
        {
          swift_arrayInitWithTakeBackToFront();
          v45 = v96;
          a2 = v49;
        }
      }

LABEL_44:
      a1 += v45;
      v99 = a1;
    }

    while (a4 < v93 && a2 < v47);
  }

LABEL_87:
  sub_252594C50(&v99, &v98, &v97, MEMORY[0x277D159C8]);
}

uint64_t sub_252594C50(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_252594D38(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v38 = a2;
  v35 = type metadata accessor for Device.ControlModule(0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControlSolver.Context(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268E530();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB288, &qword_2526952B8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v19);
  v40 = &v34 - v20;
  v21 = type metadata accessor for HAPControlSolver.Source(0);
  (*(v10 + 16))(v12, a1 + *(v21 + 20), v9);
  v22 = (*(v10 + 88))(v12, v9);
  if (v22 == *MEMORY[0x277D15698])
  {
    sub_252599DC0(v38, v8, type metadata accessor for AccessoryControl.ValueDestination);
    v8[*(v6 + 20)] = 0;
    sub_252386CC4(a1, v8, v18);
LABEL_5:
    sub_252599D60(v8, type metadata accessor for AccessoryControlSolver.Context);
    v23 = v40;
    v24 = v41;
    v25 = v39;
    goto LABEL_7;
  }

  v34 = a1;
  if (v22 == *MEMORY[0x277D15640])
  {
    sub_252599DC0(v38, v8, type metadata accessor for AccessoryControl.ValueDestination);
    v8[*(v6 + 20)] = 0;
    sub_2523ABD3C(v34, v8, v18);
    goto LABEL_5;
  }

  v25 = v39;
  v24 = v41;
  (*(v39 + 56))(v18, 1, 1, v41);
  (*(v10 + 8))(v12, v9);
  v23 = v40;
LABEL_7:
  sub_2523714D4(v18, v23, &qword_27F4DB288, &qword_2526952B8);
  sub_25237153C(v23, v15, &qword_27F4DB288, &qword_2526952B8);
  if ((*(v25 + 48))(v15, 1, v24) == 1)
  {
    sub_252372288(v23, &qword_27F4DB288, &qword_2526952B8);
    sub_252372288(v15, &qword_27F4DB288, &qword_2526952B8);
    return 0;
  }

  else
  {
    v27 = v36;
    sub_252599CF8(v15, v36, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    v28 = *(v35 + 28);
    v29 = type metadata accessor for AccessoryControlModule.Layout(0);
    v30 = *(*(v29 - 8) + 56);
    v30(&v4[v28], 1, 1, v29);
    v31 = MEMORY[0x277D84F90];
    *(v4 + 1) = 0;
    *(v4 + 2) = v31;
    *v4 = 0;
    sub_252372288(&v4[v28], &qword_27F4E2DC0, &unk_2526A8D70);
    sub_252599DC0(v27, &v4[v28], type metadata accessor for AccessoryControlModule.Layout.Thermostat);
    swift_storeEnumTagMultiPayload();
    v30(&v4[v28], 0, 1, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_252694E90;
    sub_252599CF8(v4, v33 + v32, type metadata accessor for Device.ControlModule);
    sub_252599D60(v27, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
    sub_252372288(v23, &qword_27F4DB288, &qword_2526952B8);
    return v33;
  }
}

uint64_t sub_252595348(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v65 = type metadata accessor for Device.Control(0);
  v57 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  MEMORY[0x28223BE20](v9);
  v54 = &v51 - v10;
  v11 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2525A3AB4(a1);
  v16 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = (*(v15 + 8))(a1, v14, v15);
  v62 = v17[2];
  if (v62)
  {
    v53 = a2;
    v18 = 0;
    v19 = *(type metadata accessor for HAPControlSolver.Source(0) + 40);
    v52 = a1;
    v20 = *(a1 + v19);
    v56 = v11;
    v58 = v13;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_25261EF88(v17);
      }

      if (v18 >= v17[2])
      {
        __break(1u);
        goto LABEL_37;
      }

      a2 = type metadata accessor for Device.ControlGroup(0);
      v27 = *(a2 - 8);
      v61 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v63 = (v17 + v61 + *(v27 + 72) * v18);
      sub_252599DC0(v63, v13, type metadata accessor for Device.ControlGroup.LayoutType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v64 = v18;
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v29 = *v13;
        v30 = *(*v13 + 16);
        if (v30)
        {
          v59 = a2;
          v60 = v17;
          v66 = v16;
          v31 = v29;
          sub_25237060C(0, v30, 0);
          v32 = v66;
          v33 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v55 = v31;
          v34 = v31 + v33;
          v35 = *(v57 + 72);
          do
          {
            sub_252599DC0(v34, v8, type metadata accessor for Device.Control);
            v8[*(v65 + 44)] = v20;
            v66 = v32;
            v37 = *(v32 + 16);
            v36 = *(v32 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_25237060C((v36 > 1), v37 + 1, 1);
              v32 = v66;
            }

            *(v32 + 16) = v37 + 1;
            sub_252599CF8(v8, v32 + v33 + v37 * v35, type metadata accessor for Device.Control);
            v34 += v35;
            --v30;
          }

          while (v30);
          goto LABEL_16;
        }

LABEL_23:

        v32 = v16;
        goto LABEL_24;
      }

      a1 = type metadata accessor for Device.Control;
      v21 = v54;
      sub_252599CF8(v13, v54, type metadata accessor for Device.Control);
      *(v21 + *(v65 + 44)) = v20;
      v22 = v17;
      v23 = a2;
      v24 = v11;
      v25 = v16;
      v26 = v63;
      sub_252599D60(v63, type metadata accessor for Device.ControlGroup.LayoutType);
      sub_252599CF8(v21, v26, type metadata accessor for Device.Control);
      v16 = v25;
      v11 = v24;
      a2 = v23;
      v17 = v22;
      v13 = v58;
LABEL_5:
      swift_storeEnumTagMultiPayload();
      v18 = v64 + 1;
      if (v64 + 1 == v62)
      {
        if (v17[2] == 1 && (v53 & 1) != 0)
        {
          v46 = type metadata accessor for HAPControlSolver.Source(0);
          v47 = (v52 + *(v46 + 32));
          if (v47[1])
          {
            v18 = *v47;
            a1 = v47[1];
          }

          else
          {
            v48 = (v52 + *(v46 + 28));
            v18 = *v48;
            a1 = v48[1];
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if (v17[2])
            {
LABEL_34:
              v50 = (v17 + v61 + *(a2 + 20));
              *v50 = v18;
              v50[1] = a1;

              return v17;
            }

            goto LABEL_38;
          }

LABEL_37:
          result = sub_25261EF88(v17);
          v17 = result;
          if (*(result + 16))
          {
            goto LABEL_34;
          }

LABEL_38:
          __break(1u);
          return result;
        }

        return v17;
      }
    }

    v38 = *v13;
    v39 = *(*v13 + 16);
    if (!v39)
    {
      goto LABEL_23;
    }

    v59 = a2;
    v60 = v17;
    v66 = v16;
    v40 = v38;
    sub_25237060C(0, v39, 0);
    v32 = v66;
    v41 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v55 = v40;
    v42 = v40 + v41;
    v43 = *(v57 + 72);
    do
    {
      sub_252599DC0(v42, v5, type metadata accessor for Device.Control);
      v5[*(v65 + 44)] = v20;
      v66 = v32;
      v45 = *(v32 + 16);
      v44 = *(v32 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_25237060C((v44 > 1), v45 + 1, 1);
        v32 = v66;
      }

      *(v32 + 16) = v45 + 1;
      sub_252599CF8(v5, v32 + v41 + v45 * v43, type metadata accessor for Device.Control);
      v42 += v43;
      --v39;
    }

    while (v39);
LABEL_16:

    a2 = v59;
    v17 = v60;
    v11 = v56;
    v13 = v58;
    v16 = MEMORY[0x277D84F90];
LABEL_24:
    a1 = v63;
    sub_252599D60(v63, type metadata accessor for Device.ControlGroup.LayoutType);
    *a1 = v32;
    goto LABEL_5;
  }

  return v17;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV8controls4withSayAC0C6ModuleVG0A9DataModel13StaticServiceV_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268E8D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268E040();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268EBE0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HAPControlSolver.Source(0);
  MEMORY[0x28223BE20](v16 - 8);
  v41 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v38 - v20);
  v22 = *(v13 + 16);
  v43 = a1;
  v39 = v22;
  v40 = v12;
  (v22)(v15, a1, v12, v19);
  sub_25268E1B0();
  v23 = sub_25268E1A0();
  sub_25268E140();

  sub_25268E870();
  v24 = *(v6 + 8);
  v42 = v5;
  v25 = v5;
  v26 = v24;
  v24(v8, v25);
  sub_25259A3AC(v15, v11, v21);
  v27 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
  v28 = sub_252594D38(v21, v4);
  sub_252599D60(v4, type metadata accessor for AccessoryControl.ValueDestination);
  if (!v28)
  {
    v39(v15, v43, v40);
    v29 = sub_25268E1A0();
    sub_25268E140();

    sub_25268E870();
    v26(v8, v42);
    v30 = v41;
    sub_25259A3AC(v15, v11, v41);
    v31 = sub_252595348(v30, 0);
    sub_252599D60(v30, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v32 = (type metadata accessor for Device.ControlModule(0) - 8);
    v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_252694E90;
    v34 = (v28 + v33);
    *(v34 + 3) = 0;
    *(v34 + 4) = 0;
    v35 = v32[9];
    v36 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v36 - 8) + 56))(&v34[v35], 1, 1, v36);
    *(v34 + 1) = 0;
    *(v34 + 2) = v31;
    *v34 = 0;
  }

  sub_252599D60(v21, type metadata accessor for HAPControlSolver.Source);
  return v28;
}

uint64_t sub_252595E74(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE0, &unk_252695960);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v61 - v4;
  v5 = sub_25268E2F0();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Device.ControlGroup(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v61 - v11;
  MEMORY[0x28223BE20](v12);
  v64 = &v61 - v13;
  MEMORY[0x28223BE20](v14);
  v73 = &v61 - v15;
  MEMORY[0x28223BE20](v16);
  v75 = &v61 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B80, &qword_2526A7CD0);
  MEMORY[0x28223BE20](v21 - 8);
  v74 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v70 = v8;
  v30 = *(v8 + 56);
  v29 = v8 + 56;
  v28 = v30;
  v80 = &v61 - v31;
  v30(v27);
  v32 = *(a1 + 16);
  v77 = v7;
  if (v32)
  {
    v33 = a1 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v34 = (v70 + 48);
    v76 = *(v70 + 72);
    v78 = (v70 + 48);
    v71 = v28;
    v72 = v29;
    do
    {
      *&v79 = v32;
      sub_252599DC0(v33, v20, type metadata accessor for Device.ControlGroup);
      sub_25237153C(v80, v25, &qword_27F4E2B80, &qword_2526A7CD0);
      v37 = *v34;
      if ((*v34)(v25, 1, v7) == 1)
      {
        sub_252372288(v25, &qword_27F4E2B80, &qword_2526A7CD0);
        v35 = v20;
      }

      else
      {
        v38 = v7;
        v39 = v25;
        v40 = v75;
        sub_252599CF8(v25, v75, type metadata accessor for Device.ControlGroup);
        v41 = v74;
        sub_252616468(v40, v20, v74);
        sub_252599D60(v40, type metadata accessor for Device.ControlGroup);
        sub_252599D60(v20, type metadata accessor for Device.ControlGroup);
        if (v37(v41, 1, v7) == 1)
        {
          sub_252372288(v41, &qword_27F4E2B80, &qword_2526A7CD0);
          v42 = v80;
          sub_252372288(v80, &qword_27F4E2B80, &qword_2526A7CD0);
          (v71)(v42, 1, 1, v38);
          break;
        }

        v35 = v73;
        sub_252599CF8(v41, v73, type metadata accessor for Device.ControlGroup);
        v28 = v71;
        v25 = v39;
      }

      v36 = v80;
      sub_252372288(v80, &qword_27F4E2B80, &qword_2526A7CD0);
      sub_252599CF8(v35, v36, type metadata accessor for Device.ControlGroup);
      v7 = v77;
      (v28)(v36, 0, 1, v77);
      v33 += v76;
      v34 = v78;
      v32 = v79 - 1;
    }

    while (v79 != 1);
  }

  v43 = v67;
  sub_25237153C(v66, v67, &qword_27F4DADE0, &unk_252695960);
  v44 = v68;
  v45 = v69;
  if ((*(v68 + 48))(v43, 1, v69) == 1)
  {
    sub_252372288(v43, &qword_27F4DADE0, &unk_252695960);
  }

  else
  {
    v46 = v65;
    (*(v44 + 32))(v65, v43, v45);
    v47 = v70;
    if (!(*(v70 + 48))(v80, 1, v77))
    {
      v50 = v62;
      sub_252599DC0(v80, v62, type metadata accessor for Device.ControlGroup);
      v51 = v63;
      sub_2525C77D8(v63);
      v52 = v44;
      sub_252599D60(v50, type metadata accessor for Device.ControlGroup);
      v53 = v64;
      sub_252599CF8(v51, v64, type metadata accessor for Device.ControlGroup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
      v54 = (type metadata accessor for Device.ControlModule(0) - 8);
      v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
      v48 = swift_allocObject();
      v79 = xmmword_252694E90;
      *(v48 + 16) = xmmword_252694E90;
      v56 = (v48 + v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
      v57 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = v79;
      sub_252599DC0(v53, v58 + v57, type metadata accessor for Device.ControlGroup);
      *(v56 + 3) = 0;
      *(v56 + 4) = 0;
      v59 = v54[9];
      v60 = type metadata accessor for AccessoryControlModule.Layout(0);
      (*(*(v60 - 8) + 56))(&v56[v59], 1, 1, v60);
      *(v56 + 1) = 0;
      *(v56 + 2) = v58;
      *v56 = 0;
      sub_252599D60(v53, type metadata accessor for Device.ControlGroup);
      (*(v52 + 8))(v65, v45);
      goto LABEL_14;
    }

    (*(v44 + 8))(v46, v45);
  }

  v48 = MEMORY[0x277D84F90];
LABEL_14:
  sub_252372288(v80, &qword_27F4E2B80, &qword_2526A7CD0);
  return v48;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV8controls4withSayAC0C6ModuleVG0A9DataModel18StaticServiceGroupV_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58, &qword_252696550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v78 - v3;
  v109 = sub_25268EE60();
  v5 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50, &unk_2526A8D80);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  MEMORY[0x28223BE20](v14);
  v107 = &v78 - v15;
  v106 = sub_25268E8D0();
  v112 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_25268E040();
  v111 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v114 = &v78 - v19;
  v20 = type metadata accessor for HAPControlSolver.Source(0);
  MEMORY[0x28223BE20](v20 - 8);
  v102 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Device.ControlGroup(0);
  v101 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v84 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v100 = &v78 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE0, &unk_252695960);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v78 - v27;
  v29 = sub_25268EBE0();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v99 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v113 = &v78 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v78 - v35;
  sub_25268F810();
  sub_252599E28(&qword_27F4DADF8, MEMORY[0x277D164A0], MEMORY[0x277D16498]);
  v115 = sub_25268EE70();

  sub_25258F870(&v115);

  v37 = *(v115 + 16);
  if (v37)
  {
    v79 = v28;
    v98 = v13;
    v80 = a1;
    v38 = v115;
    v94 = sub_25268E1B0();
    v39 = v5;
    v42 = *(v30 + 16);
    v40 = v30 + 16;
    v41 = v42;
    v43 = (*(v40 + 64) + 32) & ~*(v40 + 64);
    v78 = v38;
    v44 = v38 + v43;
    v92 = *(v40 + 56);
    v91 = (v112 + 8);
    v90 = (v39 + 48);
    v83 = (v39 + 32);
    v82 = (v39 + 16);
    v81 = (v39 + 8);
    v89 = (v111 + 2);
    v88 = (v111 + 1);
    v87 = (v40 - 8);
    v45 = MEMORY[0x277D84F90];
    v46 = v109;
    v95 = v36;
    v96 = v40;
    v97 = v4;
    v93 = v42;
    do
    {
      v110 = v44;
      v111 = v45;
      v41(v36);
      (v41)(v113, v36, v29);
      v48 = sub_25268E1A0();
      v49 = v105;
      sub_25268E140();

      sub_25268E870();
      (*v91)(v49, v106);
      StaticService.staticEndpoint.getter(v4);
      v50 = (*v90)(v4, 1, v46);
      v112 = v37;
      if (v50 == 1)
      {
        sub_252372288(v4, &qword_27F4DAD58, &qword_252696550);
        v51 = 1;
        v52 = v98;
      }

      else
      {
        v53 = v85;
        (*v83)(v85, v4, v46);
        v54 = v86;
        (*v82)(v86, v53, v46);
        v52 = v98;
        MatterControlSolver.Source.init(with:)(v54, v98);
        (*v81)(v53, v46);
        v51 = 0;
      }

      v55 = type metadata accessor for MatterControlSolver.Source(0);
      (*(*(v55 - 8) + 56))(v52, v51, 1, v55);
      v56 = v52;
      v57 = v107;
      sub_2523714D4(v56, v107, &qword_27F4DAD50, &unk_2526A8D80);
      v58 = v99;
      v59 = v113;
      (v41)(v99, v113, v29);
      v60 = v108;
      sub_25237153C(v57, v108, &qword_27F4DAD50, &unk_2526A8D80);
      v61 = v103;
      v62 = v104;
      v63 = v29;
      v64 = v114;
      (*v89)(v103, v114, v104);
      v65 = v102;
      sub_25259AF74(v58, v60, v61, v102);
      v66 = v64;
      v29 = v63;
      (*v88)(v66, v62);
      v67 = *v87;
      (*v87)(v59, v63);
      sub_252372288(v57, &qword_27F4DAD50, &unk_2526A8D80);
      v68 = sub_252595348(v65, 0);
      sub_252599D60(v65, type metadata accessor for HAPControlSolver.Source);
      if (*(v68 + 16) == 1)
      {
        v69 = v97;
        v70 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v71 = v84;
        sub_252599DC0(v68 + v70, v84, type metadata accessor for Device.ControlGroup);

        v36 = v95;
        v67(v95, v29);
        sub_252599CF8(v71, v100, type metadata accessor for Device.ControlGroup);
        v45 = v111;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v112;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = sub_252369B0C(0, v45[2] + 1, 1, v45);
        }

        v74 = v45[2];
        v73 = v45[3];
        if (v74 >= v73 >> 1)
        {
          v45 = sub_252369B0C((v73 > 1), v74 + 1, 1, v45);
        }

        v45[2] = v74 + 1;
        sub_252599CF8(v100, v45 + v70 + *(v101 + 72) * v74, type metadata accessor for Device.ControlGroup);
        v4 = v69;
      }

      else
      {
        v36 = v95;
        v67(v95, v63);

        v4 = v97;
        v45 = v111;
        v47 = v112;
      }

      v46 = v109;
      v44 = v110 + v92;
      v37 = v47 - 1;
      v41 = v93;
    }

    while (v37);

    v28 = v79;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  sub_25268F760();
  v75 = sub_25268E2F0();
  (*(*(v75 - 8) + 56))(v28, 0, 1, v75);
  v76 = sub_252595E74(v45, v28);

  sub_252372288(v28, &qword_27F4DADE0, &unk_252695960);
  return v76;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV8controls4with11currentUserSayAC0C6ModuleVG0A9DataModel18StaticMediaProfileV_AJ0mI0VtFZ_0(uint64_t a1, uint64_t a2)
{
  v122 = a2;
  v3 = sub_25268E220();
  v125 = *(v3 - 8);
  v126 = v3;
  MEMORY[0x28223BE20](v3);
  v124 = v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v123 = v115 - v6;
  v127 = type metadata accessor for Device.Control(0);
  v131 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v128 = v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v129 = v115 - v9;
  MEMORY[0x28223BE20](v10);
  v120 = v115 - v11;
  MEMORY[0x28223BE20](v12);
  v121 = v115 - v13;
  MEMORY[0x28223BE20](v14);
  v119 = (v115 - v15);
  MEMORY[0x28223BE20](v16);
  v117 = v115 - v17;
  MEMORY[0x28223BE20](v18);
  v118 = (v115 - v19);
  MEMORY[0x28223BE20](v20);
  v116 = v115 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3458, &qword_2526A8DA8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v115 - v26;
  v28 = sub_25268EFC0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v130 = v115 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3440, &qword_2526A8DA0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v115 - v35;
  v37 = sub_25268EF60();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_25268DA10();
  *&v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v134 = v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268F670();
  sub_25268F6D0();
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    v42 = &qword_27F4E3440;
    v43 = &qword_2526A8DA0;
    v44 = v36;
LABEL_5:
    sub_252372288(v44, v42, v43);
    v45 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v38 + 32))(v40, v36, v37);
  sub_25268F620();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    (*(v38 + 8))(v40, v37);
    v42 = &qword_27F4E3458;
    v43 = &qword_2526A8DA8;
    v44 = v27;
    goto LABEL_5;
  }

  v115[1] = a1;
  v46 = v130;
  (*(v29 + 32))();
  if (sub_25268EFA0())
  {
    (*(v29 + 16))(v31, v46, v28);
    if ((*(v29 + 88))(v31, v28) == *MEMORY[0x277D15D10])
    {
      (*(v29 + 96))(v31, v28);
      v47 = v31[1];
      v48 = v116;
      sub_25268F690();
      v49 = sub_25268EF50();
      v50 = (v47 & 1) == 0;
      v51 = v127;
      v52 = v48 + *(v127 + 20);
      *v52 = v49;
      *(v52 + 8) = v53;
      *(v52 + 16) = v50;
      type metadata accessor for Device.Control.Kind(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Device.Control.Source(0);
      swift_storeEnumTagMultiPayload();
      v54 = (v48 + v51[8]);
      v55 = v51[10];
      *(v48 + v55) = 16;
      *(v48 + v51[7]) = 0;
      *v54 = 0;
      v54[1] = 0;
      *(v48 + v51[9]) = 1028;
      *(v48 + v55) = 16;
      *(v48 + v51[11]) = 1;
      sub_252599DC0(v48, v118, type metadata accessor for Device.Control);
      v45 = sub_252369B34(0, 1, 1, MEMORY[0x277D84F90]);
      v57 = v45[2];
      v56 = v45[3];
      if (v57 >= v56 >> 1)
      {
        v45 = sub_252369B34((v56 > 1), v57 + 1, 1, v45);
      }

      sub_252599D60(v116, type metadata accessor for Device.Control);
      (*(v29 + 8))(v130, v28);
      (*(v38 + 8))(v40, v37);
      v45[2] = v57 + 1;
      v58 = v45 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v57;
      v59 = v118;
    }

    else
    {
      v118 = *(v29 + 8);
      v118(v31, v28);
      v60 = v117;
      sub_25268F690();
      v61 = sub_25268EF50();
      v62 = v127;
      v63 = v60 + *(v127 + 20);
      *v63 = v61;
      *(v63 + 8) = v64;
      *(v63 + 16) = 0;
      type metadata accessor for Device.Control.Kind(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Device.Control.Source(0);
      swift_storeEnumTagMultiPayload();
      v65 = (v60 + v62[8]);
      v66 = v62[10];
      *(v60 + v66) = 16;
      *(v60 + v62[7]) = 0;
      *v65 = 0;
      v65[1] = 0;
      *(v60 + v62[9]) = 1028;
      *(v60 + v66) = 16;
      *(v60 + v62[11]) = 1;
      sub_252599DC0(v60, v119, type metadata accessor for Device.Control);
      v45 = sub_252369B34(0, 1, 1, MEMORY[0x277D84F90]);
      v68 = v45[2];
      v67 = v45[3];
      if (v68 >= v67 >> 1)
      {
        v45 = sub_252369B34((v67 > 1), v68 + 1, 1, v45);
      }

      sub_252599D60(v117, type metadata accessor for Device.Control);
      v118(v130, v28);
      (*(v38 + 8))(v40, v37);
      v45[2] = v68 + 1;
      v58 = v45 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v68;
      v59 = v119;
    }

    sub_252599CF8(v59, v58, type metadata accessor for Device.Control);
  }

  else
  {
    (*(v29 + 8))(v46, v28);
    (*(v38 + 8))(v40, v37);
    v45 = MEMORY[0x277D84F90];
  }

LABEL_16:
  sub_25268F620();
  v69 = (*(v29 + 48))(v24, 1, v28);
  v70 = v133;
  if (v69 == 1)
  {
    sub_252372288(v24, &qword_27F4E3458, &qword_2526A8DA8);
  }

  else
  {
    v71 = sub_25268EFB0();
    (*(v29 + 8))(v24, v28);
    if (v71)
    {
      v72 = v123;
      sub_25268E230();
      v74 = v124;
      v73 = v125;
      v75 = v126;
      (*(v125 + 104))(v124, *MEMORY[0x277D154C0], v126);
      sub_252599E28(&qword_27F4E3448, MEMORY[0x277D154C8], MEMORY[0x277D154D0]);
      v76 = sub_252692B70();
      v77 = *(v73 + 8);
      v77(v74, v75);
      v77(v72, v75);
      v78 = v132;
      if ((v76 & 1) == 0)
      {
        v79 = *(v132 + 16);
        v80 = v121;
        v81 = v134;
        v79(v121, v134, v70);
        v82 = v127;
        v79((v80 + *(v127 + 20)), v81, v70);
        type metadata accessor for Device.Control.Kind(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for Device.Control.Source(0);
        swift_storeEnumTagMultiPayload();
        v83 = (v80 + v82[8]);
        v84 = v82[10];
        *(v80 + v84) = 16;
        *(v80 + v82[7]) = 0;
        *v83 = 0;
        v83[1] = 0;
        *(v80 + v82[9]) = 1028;
        *(v80 + v84) = 16;
        *(v80 + v82[11]) = 1;
        v85 = v120;
        sub_252599DC0(v80, v120, type metadata accessor for Device.Control);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_252369B34(0, v45[2] + 1, 1, v45);
        }

        v87 = v45[2];
        v86 = v45[3];
        if (v87 >= v86 >> 1)
        {
          v45 = sub_252369B34((v86 > 1), v87 + 1, 1, v45);
        }

        v45[2] = v87 + 1;
        sub_252599CF8(v85, v45 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v87, type metadata accessor for Device.Control);
        sub_252599D60(v80, type metadata accessor for Device.Control);
      }

      v88 = v45[2];
      if (!v88)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }
  }

  v78 = v132;
  v88 = v45[2];
  if (!v88)
  {
LABEL_29:

    v93 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_26:
  if (v88 == 1)
  {
    v89 = v128;
    sub_252599DC0(v45 + ((*(v131 + 80) + 32) & ~*(v131 + 80)), v128, type metadata accessor for Device.Control);

    v90 = v129;
    sub_252599CF8(v89, v129, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v91 = (type metadata accessor for Device.ControlModule(0) - 8);
    v92 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
    v93 = swift_allocObject();
    v132 = xmmword_252694E90;
    *(v93 + 16) = xmmword_252694E90;
    v94 = (v93 + v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
    v95 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v96 = (*(*v95 + 80) + 32) & ~*(*v95 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = v132;
    v98 = v97 + v96;
    sub_252599DC0(v90, v98, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v99 = (v98 + v95[7]);
    v100 = (v98 + v95[8]);
    *v99 = 0;
    v99[1] = 0;
    *v100 = 0;
    v100[1] = 0;
    *(v94 + 3) = 0;
    *(v94 + 4) = 0;
    v101 = v91[9];
    v102 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v102 - 8) + 56))(&v94[v101], 1, 1, v102);
    *(v94 + 1) = 0;
    *(v94 + 2) = v97;
    *v94 = 0;
    sub_252599D60(v90, type metadata accessor for Device.Control);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v103 = (type metadata accessor for Device.ControlModule(0) - 8);
    v104 = (*(*v103 + 80) + 32) & ~*(*v103 + 80);
    v93 = swift_allocObject();
    v132 = xmmword_252694E90;
    *(v93 + 16) = xmmword_252694E90;
    v105 = (v93 + v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
    v106 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v107 = (*(*v106 + 80) + 32) & ~*(*v106 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = v132;
    v109 = (v108 + v107);
    *v109 = v45;
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v110 = (v109 + v106[7]);
    v111 = (v109 + v106[8]);
    *v110 = 0;
    v110[1] = 0;
    *v111 = 0;
    v111[1] = 0;
    *(v105 + 3) = 0;
    *(v105 + 4) = 0;
    v112 = v103[9];
    v113 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v113 - 8) + 56))(&v105[v112], 1, 1, v113);
    *(v105 + 1) = 0;
    *(v105 + 2) = v108;
    *v105 = 0;
  }

LABEL_31:
  (*(v78 + 8))(v134, v70);
  return v93;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV8controls4with11currentUserSayAC0C6ModuleVG0A9DataModel17StaticMediaSystemV_AJ0mI0VtFZ_0(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v3 = sub_25268E220();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v103 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v94 - v6;
  v8 = type metadata accessor for Device.Control(0);
  *&v109 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v98 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = v94 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v94 - v13;
  MEMORY[0x28223BE20](v15);
  v106 = v94 - v16;
  MEMORY[0x28223BE20](v17);
  v101 = v94 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v94 - v20;
  v108 = sub_25268DA10();
  v22 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v100 = v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v107 = v94 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3440, &qword_2526A8DA0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v94 - v27;
  v29 = sub_25268EF60();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v112 = v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25268F3A0();
  sub_2525C8618(v32, v28);

  v110 = v30;
  v111 = v29;
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_252372288(v28, &qword_27F4E3440, &qword_2526A8DA0);
    return MEMORY[0x277D84F90];
  }

  v96 = v8;
  v95 = v14;
  (*(v110 + 32))(v112, v28, v111);
  v33 = sub_25268F320();
  v34 = *(v33 + 16);
  v94[1] = a1;
  v97 = v22;
  if (v34)
  {
    v94[0] = v7;
    v35 = sub_2525EED9C(v34, 0);
    sub_2525EF40C(v113, &v35[(*(v22 + 80) + 32) & ~*(v22 + 80)], v34, v33);
    v37 = v36;
    v7 = v113[0];
    v38 = v113[1];
    v39 = v113[2];

    sub_2523A4D1C(v7);
    if (v37 != v34)
    {
      __break(1u);
      goto LABEL_25;
    }

    v7 = v94[0];
    v22 = v97;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v113[0] = v35;
  sub_25258F954(v113);
  v38 = v101;

  if (*(v113[0] + 16))
  {
    v41 = *(v22 + 16);
    v42 = v113[0] + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v43 = v100;
    v44 = v22;
    v45 = v108;
    v41(v100, v42, v108);

    v46 = v107;
    (*(v44 + 32))(v107, v43, v45);
    v47 = sub_25268EF50();
    v49 = v48;
    v41(v21, v46, v45);
    v34 = v96;
    v50 = &v21[v96[5]];
    *v50 = v47;
    *(v50 + 1) = v49;
    v50[16] = 0;
    type metadata accessor for Device.Control.Kind(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Device.Control.Source(0);
    swift_storeEnumTagMultiPayload();
    v51 = &v21[v34[8]];
    v52 = v34[10];
    v21[v52] = 16;
    v21[v34[7]] = 0;
    *v51 = 0;
    *(v51 + 1) = 0;
    *&v21[v34[9]] = 1028;
    v21[v52] = 16;
    v21[v34[11]] = 1;
    sub_252599DC0(v21, v38, type metadata accessor for Device.Control);
    v35 = sub_252369B34(0, 1, 1, MEMORY[0x277D84F90]);
    v39 = *(v35 + 2);
    v40 = *(v35 + 3);
    v33 = v39 + 1;
    if (v39 < v40 >> 1)
    {
LABEL_9:
      sub_252599D60(v21, type metadata accessor for Device.Control);
      (*(v97 + 8))(v107, v108);
      *(v35 + 2) = v33;
      sub_252599CF8(v38, &v35[((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v39], type metadata accessor for Device.Control);
      goto LABEL_11;
    }

LABEL_25:
    v35 = sub_252369B34((v40 > 1), v33, 1, v35);
    goto LABEL_9;
  }

  v35 = MEMORY[0x277D84F90];
  v34 = v96;
LABEL_11:
  sub_25268E230();
  v53 = v7;
  v55 = v103;
  v54 = v104;
  v56 = v105;
  (*(v104 + 104))(v103, *MEMORY[0x277D154C0], v105);
  sub_252599E28(&qword_27F4E3448, MEMORY[0x277D154C8], MEMORY[0x277D154D0]);
  v57 = sub_252692B70();
  v58 = *(v54 + 8);
  v58(v55, v56);
  v58(v53, v56);
  if ((v57 & 1) == 0)
  {
    v59 = v34;
    v60 = v106;
    sub_25268F350();
    sub_25268F350();
    type metadata accessor for Device.Control.Kind(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Device.Control.Source(0);
    swift_storeEnumTagMultiPayload();
    v61 = (v60 + v59[8]);
    v62 = v59[10];
    *(v60 + v62) = 16;
    *(v60 + v59[7]) = 0;
    *v61 = 0;
    v61[1] = 0;
    *(v60 + v59[9]) = 1028;
    *(v60 + v62) = 16;
    *(v60 + v59[11]) = 1;
    v63 = v60;
    v64 = v95;
    sub_252599DC0(v63, v95, type metadata accessor for Device.Control);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_252369B34(0, *(v35 + 2) + 1, 1, v35);
    }

    v66 = *(v35 + 2);
    v65 = *(v35 + 3);
    if (v66 >= v65 >> 1)
    {
      v35 = sub_252369B34((v65 > 1), v66 + 1, 1, v35);
    }

    *(v35 + 2) = v66 + 1;
    sub_252599CF8(v64, &v35[((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v66], type metadata accessor for Device.Control);
    sub_252599D60(v106, type metadata accessor for Device.Control);
  }

  v67 = *(v35 + 2);
  if (!v67)
  {

    (*(v110 + 8))(v112, v111);
    return MEMORY[0x277D84F90];
  }

  if (v67 == 1)
  {
    v68 = v98;
    sub_252599DC0(&v35[(*(v109 + 80) + 32) & ~*(v109 + 80)], v98, type metadata accessor for Device.Control);

    v69 = v99;
    sub_252599CF8(v68, v99, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v70 = (type metadata accessor for Device.ControlModule(0) - 8);
    v71 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
    v72 = swift_allocObject();
    v109 = xmmword_252694E90;
    *(v72 + 16) = xmmword_252694E90;
    v73 = (v72 + v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
    v74 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v75 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v109;
    v77 = v76 + v75;
    sub_252599DC0(v69, v77, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v78 = (v77 + v74[7]);
    v79 = (v77 + v74[8]);
    *v78 = 0;
    v78[1] = 0;
    *v79 = 0;
    v79[1] = 0;
    *(v73 + 3) = 0;
    *(v73 + 4) = 0;
    v80 = v70[9];
    v81 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v81 - 8) + 56))(&v73[v80], 1, 1, v81);
    *(v73 + 1) = 0;
    *(v73 + 2) = v76;
    *v73 = 0;
    sub_252599D60(v69, type metadata accessor for Device.Control);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v83 = (type metadata accessor for Device.ControlModule(0) - 8);
    v84 = (*(*v83 + 80) + 32) & ~*(*v83 + 80);
    v72 = swift_allocObject();
    v109 = xmmword_252694E90;
    *(v72 + 16) = xmmword_252694E90;
    v85 = (v72 + v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
    v86 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v87 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = v109;
    v89 = (v88 + v87);
    *v89 = v35;
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v90 = (v89 + v86[7]);
    v91 = (v89 + v86[8]);
    *v90 = 0;
    v90[1] = 0;
    *v91 = 0;
    v91[1] = 0;
    *(v85 + 3) = 0;
    *(v85 + 4) = 0;
    v92 = v83[9];
    v93 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v93 - 8) + 56))(&v85[v92], 1, 1, v93);
    *(v85 + 1) = 0;
    *(v85 + 2) = v88;
    *v85 = 0;
  }

  (*(v110 + 8))(v112, v111);
  return v72;
}