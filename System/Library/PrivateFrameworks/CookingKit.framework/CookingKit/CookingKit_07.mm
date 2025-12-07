uint64_t sub_21A1D8FB8()
{
  v1 = *(type metadata accessor for InstructionsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21A1D72AC(v0 + v2, v3);
}

unint64_t sub_21A1D9058()
{
  result = qword_27CD00748;
  if (!qword_27CD00748)
  {
    sub_21A176D98(&qword_27CD00740, &qword_21A3008D8);
    sub_21A1D8C4C(&qword_27CD00750, &qword_27CD00758, &qword_21A3008E0, sub_21A1D9140);
    sub_21A1D922C(&qword_27CCFF558, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00748);
  }

  return result;
}

unint64_t sub_21A1D9170()
{
  result = qword_27CD00770;
  if (!qword_27CD00770)
  {
    sub_21A176D98(&qword_27CCFFB20, &qword_21A3008F0);
    sub_21A1D922C(&qword_27CCFEFC8, type metadata accessor for RecipeLabelVibrancyViewModifier, &unk_21A2FBDF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00770);
  }

  return result;
}

uint64_t sub_21A1D922C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21A1D9274()
{
  result = qword_27CD00788;
  if (!qword_27CD00788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00788);
  }

  return result;
}

uint64_t CookingSessionCommand.recipeID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_21A2F5434();
}

uint64_t CookingSessionCommand.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CookingSessionCommand(0) + 20);

  return sub_21A1D9334(v3, a1);
}

uint64_t sub_21A1D9334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSessionCommandAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CookingSessionCommand.init(recipeID:action:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v5 = a3 + *(type metadata accessor for CookingSessionCommand(0) + 20);

  return sub_21A1D93E8(a2, v5);
}

uint64_t sub_21A1D93E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSessionCommandAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1D94D4(char a1)
{
  v1 = sub_21A2F4664();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = sub_21A2F7894();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_21A2F7884();
  sub_21A2F4A54();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return sub_21A2F4674();
}

unint64_t sub_21A1D97A0()
{
  result = qword_27CD00790;
  if (!qword_27CD00790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00790);
  }

  return result;
}

uint64_t type metadata accessor for RecipeCardButtonBackgroundView(uint64_t a1)
{
  result = qword_27CD00798;
  if (!qword_27CD00798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1D9868(uint64_t a1)
{
  sub_21A1D9924(319, &qword_27CCFEE40, type metadata accessor for RecipeTheme);
  if (v1 <= 0x3F)
  {
    sub_21A1D9924(319, &qword_27CCFF420, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A1D9924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F5664();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21A1D9994@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = sub_21A176C98(&qword_27CD007A8, &qword_21A300BE0);
  MEMORY[0x28223BE20](v35, v1);
  v3 = (&v35 - v2);
  v4 = sub_21A176C98(&qword_27CD007B0, &qword_21A300BE8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v35 - v6;
  v8 = sub_21A2F5654();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A1AC424(v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for RecipeCardButtonBackgroundView(0);
    sub_21A1AC5F4(v16);
    (*(v9 + 104))(v12, *MEMORY[0x277CDF3D0], v8);
    v22 = sub_21A2F5644();
    v23 = *(v9 + 8);
    v23(v12, v8);
    v23(v16, v8);
    v24 = objc_opt_self();
    v25 = &selRef_tertiarySystemBackgroundColor;
    if ((v22 & 1) == 0)
    {
      v25 = &selRef_secondarySystemBackgroundColor;
    }

    v26 = [v24 *v25];
    v27 = sub_21A2F6EF4();
    v28 = *(sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50) + 48);
    *v7 = v27;
    *(v7 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    sub_21A176C98(&qword_27CCFF760, &qword_21A2FCCC0);
    sub_21A1D9E58();
    sub_21A1D9EBC();
    sub_21A2F6114();
    return sub_21A1427A8(v20 + v28, &qword_27CCFEDC0, &unk_21A2FAEE0);
  }

  else
  {

    v30 = *(sub_21A176C98(&qword_27CCFEEA8, &qword_21A2FB130) + 64);
    sub_21A2F6F24();
    v31 = sub_21A2F6F44();

    v32 = *(v35 + 36);
    v33 = *MEMORY[0x277CE13B8];
    v34 = sub_21A2F73B4();
    (*(*(v34 - 8) + 104))(v3 + v32, v33, v34);
    *v3 = v31;
    sub_21A1D9DE8(v3, v7);
    swift_storeEnumTagMultiPayload();
    sub_21A176C98(&qword_27CCFF760, &qword_21A2FCCC0);
    sub_21A1D9E58();
    sub_21A1D9EBC();
    sub_21A2F6114();
    sub_21A1427A8(v3, &qword_27CD007A8, &qword_21A300BE0);
    return sub_21A183894(v20 + v30);
  }
}

uint64_t sub_21A1D9DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD007A8, &qword_21A300BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A1D9E58()
{
  result = qword_27CCFF758;
  if (!qword_27CCFF758)
  {
    sub_21A176D98(&qword_27CCFF760, &qword_21A2FCCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF758);
  }

  return result;
}

unint64_t sub_21A1D9EBC()
{
  result = qword_27CD007B8;
  if (!qword_27CD007B8)
  {
    sub_21A176D98(&qword_27CD007A8, &qword_21A300BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD007B8);
  }

  return result;
}

unint64_t sub_21A1D9F40()
{
  result = qword_27CD007C0;
  if (!qword_27CD007C0)
  {
    sub_21A176D98(&qword_27CD007C8, &unk_21A300BF0);
    sub_21A1D9E58();
    sub_21A1D9EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD007C0);
  }

  return result;
}

uint64_t sub_21A1DA004(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CD00828, &qword_21A300D18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  sub_21A142764(a1, a1[3]);
  sub_21A1DACD0();
  sub_21A2F84B4();
  v12 = *v3;
  v11[7] = 0;
  sub_21A176C98(&qword_27CCFE9A0, &qword_21A300D10);
  sub_21A1DADE4(&qword_27CD00830, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_21A2F8324();
  if (!v2)
  {
    type metadata accessor for PersistentSelectedIngredients.Entry(0);
    v11[6] = 1;
    sub_21A2F49B4();
    sub_21A1DAE50(&qword_27CCFF188, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_21A2F8324();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21A1DA20C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_21A2F49B4();
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21A176C98(&qword_27CD00810, &qword_21A300D08);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for PersistentSelectedIngredients.Entry(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A142764(a1, a1[3]);
  sub_21A1DACD0();
  sub_21A2F8494();
  if (v2)
  {
    return sub_21A142808(a1);
  }

  v24 = a1;
  v14 = v13;
  v16 = v27;
  v15 = v28;
  sub_21A176C98(&qword_27CCFE9A0, &qword_21A300D10);
  v31 = 0;
  sub_21A1DADE4(&qword_27CD00820, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  v17 = v29;
  sub_21A2F8284();
  v22 = v14;
  v23 = v32;
  *v14 = v32;
  v30 = 1;
  sub_21A1DAE50(&qword_27CCFF1B0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_21A2F8284();
  (*(v16 + 8))(v9, v17);
  v18 = *(v10 + 20);
  v19 = v22;
  (*(v25 + 32))(&v22[v18], v6, v15);
  sub_21A1DAD24(v19, v26);
  sub_21A142808(v24);
  return sub_21A1DAD88(v19);
}

uint64_t sub_21A1DA574()
{
  if (*v0)
  {
    return 0x4164657461647075;
  }

  else
  {
    return 0x6569646572676E69;
  }
}

uint64_t sub_21A1DA5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569646572676E69 && a2 == 0xED0000734449746ELL;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A2F8394();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21A1DA6AC(uint64_t a1)
{
  v2 = sub_21A1DACD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A1DA6E8(uint64_t a1)
{
  v2 = sub_21A1DACD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A1DA754(void *a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD007D0, &qword_21A300CF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  sub_21A142764(a1, a1[3]);
  sub_21A1DA970();
  sub_21A2F84B4();
  v10[1] = a2;
  sub_21A176C98(&qword_27CD007E0, &qword_21A300CF8);
  sub_21A1DA9C4();
  sub_21A2F8324();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A1DA8B0(uint64_t a1)
{
  v2 = sub_21A1DA970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A1DA8EC(uint64_t a1)
{
  v2 = sub_21A1DA970();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21A1DA928@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21A1DAA80(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_21A1DA970()
{
  result = qword_27CD007D8;
  if (!qword_27CD007D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD007D8);
  }

  return result;
}

unint64_t sub_21A1DA9C4()
{
  result = qword_27CD007E8;
  if (!qword_27CD007E8)
  {
    sub_21A176D98(&qword_27CD007E0, &qword_21A300CF8);
    sub_21A1921B4();
    sub_21A1DAE50(&qword_27CD007F0, type metadata accessor for PersistentSelectedIngredients.Entry, &unk_21A300C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD007E8);
  }

  return result;
}

void *sub_21A1DAA80(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD007F8, &qword_21A300D00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  sub_21A144FEC(MEMORY[0x277D84F90]);

  v8 = sub_21A142764(a1, a1[3]);
  sub_21A1DA970();
  sub_21A2F8494();
  if (v1)
  {
    sub_21A142808(a1);
  }

  else
  {
    sub_21A176C98(&qword_27CD007E0, &qword_21A300CF8);
    sub_21A1DAC14();
    sub_21A2F8284();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_21A142808(a1);
  }

  return v8;
}

unint64_t sub_21A1DAC14()
{
  result = qword_27CD00800;
  if (!qword_27CD00800)
  {
    sub_21A176D98(&qword_27CD007E0, &qword_21A300CF8);
    sub_21A1922B0();
    sub_21A1DAE50(&qword_27CD00808, type metadata accessor for PersistentSelectedIngredients.Entry, &unk_21A300C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00800);
  }

  return result;
}

unint64_t sub_21A1DACD0()
{
  result = qword_27CD00818;
  if (!qword_27CD00818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00818);
  }

  return result;
}

uint64_t sub_21A1DAD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentSelectedIngredients.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1DAD88(uint64_t a1)
{
  v2 = type metadata accessor for PersistentSelectedIngredients.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1DADE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CCFE9A0, &qword_21A300D10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A1DAE50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21A1DAEBC()
{
  result = qword_27CD00838;
  if (!qword_27CD00838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00838);
  }

  return result;
}

unint64_t sub_21A1DAF14()
{
  result = qword_27CD00840;
  if (!qword_27CD00840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00840);
  }

  return result;
}

unint64_t sub_21A1DAF6C()
{
  result = qword_27CD00848;
  if (!qword_27CD00848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00848);
  }

  return result;
}

unint64_t sub_21A1DAFC4()
{
  result = qword_27CD00850;
  if (!qword_27CD00850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00850);
  }

  return result;
}

unint64_t sub_21A1DB01C()
{
  result = qword_27CD00858;
  if (!qword_27CD00858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00858);
  }

  return result;
}

unint64_t sub_21A1DB074()
{
  result = qword_27CD00860;
  if (!qword_27CD00860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00860);
  }

  return result;
}

void *ImportedRecipe.__allocating_init(recipeToken:jsonLDData:dataSource:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = v4;
  v32 = a4;
  v28 = a1;
  v9 = type metadata accessor for ImportedRecipe.RawRecipe(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A2F4F24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F4464();
  swift_allocObject();
  sub_21A2F4454();
  sub_21A1DB3A0(v17);
  v29 = a2;
  v30 = a3;
  sub_21A2F4434();
  if (v5)
  {
    sub_21A142808(v32);

    sub_21A180748(v29, v30);
  }

  else
  {
    v18 = v13;
    v19 = *(v13 + 16);
    v20 = v27;
    v19(v27, v16, v12);
    sub_21A142AEC(v32, v31);
    v6 = swift_allocObject();
    sub_21A176C98(&qword_27CD00870, &qword_21A300F40);
    swift_allocObject();
    v21 = v28;

    v22 = sub_21A2F52F4();
    sub_21A176C98(&qword_27CD00878, &qword_21A3146D0);
    v23 = swift_allocObject();
    *(v23 + 24) = 0;
    *(v23 + 16) = v22;
    v24 = *(v21 + 24);
    v6[2] = *(v21 + 16);
    v6[3] = v24;
    v6[4] = v23;
    sub_21A1DB3F8(v20, v6 + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_rawRecipe);
    sub_21A14274C(v31, v6 + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_dataSource);
    sub_21A2F5434();

    sub_21A180748(v29, v30);
    sub_21A142808(v32);
    (*(v18 + 8))(v16, v12);
  }

  return v6;
}

unint64_t sub_21A1DB3A0(__n128 a1)
{
  result = qword_27CD00868;
  if (!qword_27CD00868)
  {
    sub_21A2F4F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00868);
  }

  return result;
}

uint64_t sub_21A1DB3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportedRecipe.RawRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImportedRecipe.deinit()
{

  sub_21A1DB4A4(v0 + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_rawRecipe);
  sub_21A142808((v0 + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_dataSource));
  return v0;
}

uint64_t sub_21A1DB4A4(uint64_t a1)
{
  v2 = type metadata accessor for ImportedRecipe.RawRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImportedRecipe.__deallocating_deinit()
{

  sub_21A1DB4A4(v0 + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_rawRecipe);
  sub_21A142808((v0 + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_dataSource));

  return swift_deallocClassInstance();
}

uint64_t sub_21A1DB5AC(uint64_t a1, __n128 a2)
{
  result = sub_21A2F4F24();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A1DB674(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_21A2F4F24();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_21A1DB6E0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_21A2F4F24();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a3, v7);
}

uint64_t sub_21A1DB75C(uint64_t a1, __n128 a2)
{
  result = sub_21A2F4F24();
  if (v4 <= 0x3F)
  {
    v5 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ProcessingPipelineType.process(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A145E2C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21A1DB934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  type metadata accessor for Recipe(0);
  v4[32] = swift_task_alloc();
  v5 = sub_21A2F4F24();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A1DBA3C, v3, 0);
}

uint64_t sub_21A1DBA3C()
{
  v79 = v0;
  if (qword_27CCFE7D8 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[29];
  v6 = sub_21A2F53E4();
  v0[38] = sub_21A177CBC(v6, qword_27CD23CC8);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);

  v8 = sub_21A2F53C4();
  v9 = sub_21A2F7DF4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[33];
  v14 = v0[34];
  if (v10)
  {
    v76 = v7;
    v15 = v0[30];
    v16 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v78[0] = v75;
    *v16 = 136446722;
    *(v16 + 4) = sub_21A25B5DC(*(v15 + 16), *(v15 + 24), v78);
    *(v16 + 12) = 2048;
    v17 = *(sub_21A2F4E24() + 16);

    v18 = *(v14 + 8);
    v18(v11, v13);
    *(v16 + 14) = v17;
    v7 = v76;
    *(v16 + 22) = 2048;
    v19 = *(sub_21A2F4E14() + 16);

    v18(v12, v13);
    *(v16 + 24) = v19;
    _os_log_impl(&dword_21A137000, v8, v9, "Will process recipe id=%{public}s, stepCount=%ld, ingredientCount=%ld", v16, 0x20u);
    sub_21A142808(v75);
    MEMORY[0x21CED7BA0](v75, -1, -1);
    MEMORY[0x21CED7BA0](v16, -1, -1);
  }

  else
  {
    v20 = *(v14 + 8);
    v20(v0[36], v0[33]);
    v20(v11, v13);
  }

  v21 = v0[35];
  v22 = v0[33];
  v23 = v0[30];
  v24 = v0[31];
  v26 = v0[28];
  v25 = v0[29];
  v27 = *(v23 + 16);
  v0[39] = v27;
  v28 = *(v23 + 24);
  v0[40] = v28;
  v78[0] = v27;
  v78[1] = v28;
  v7(v21, v25, v22);
  sub_21A2F5434();
  result = sub_21A272600(v78, v21, v26);
  v30 = *(v24 + 112);
  v0[41] = v30;
  v31 = *(v30 + 16);
  v32 = OBJC_IVAR____TtC10CookingKit14ImportedRecipe_dataSource;
  v0[42] = v31;
  v0[43] = v32;
  if (v31)
  {
    v0[44] = 0;
    if (!*(v30 + 16))
    {
      __break(1u);
      return result;
    }

    v33 = v0[30];
    sub_21A142AEC(v30 + 32, (v0 + 2));
    v34 = *(v33 + 32);
    os_unfair_lock_lock(v34 + 6);
    v35 = sub_21A2F52E4();
    v0[45] = v35;
    os_unfair_lock_unlock(v34 + 6);
    v36 = (v0 + 2);
    if (v35)
    {
      sub_21A142AEC(v36, (v0 + 12));

      v37 = sub_21A2F53C4();
      v38 = sub_21A2F7DF4();

      if (os_log_type_enabled(v37, v38))
      {
        v40 = v0[39];
        v39 = v0[40];
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v78[0] = v42;
        *v41 = 136315394;
        sub_21A142764(v0 + 12, v0[15]);
        DynamicType = swift_getDynamicType();
        v44 = v0[16];
        v0[26] = DynamicType;
        v0[27] = v44;
        sub_21A176C98(&qword_27CD008A0, &unk_21A301070);
        v45 = sub_21A2F7944();
        v47 = v46;
        sub_21A142808(v0 + 12);
        v48 = sub_21A25B5DC(v45, v47, v78);

        *(v41 + 4) = v48;
        *(v41 + 12) = 2082;
        *(v41 + 14) = sub_21A25B5DC(v40, v39, v78);
        _os_log_impl(&dword_21A137000, v37, v38, "[%s] Will process step for recipe id=%{public}s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CED7BA0](v42, -1, -1);
        MEMORY[0x21CED7BA0](v41, -1, -1);
      }

      else
      {

        sub_21A142808(v0 + 12);
      }

      v61 = v0[43];
      v62 = v0[30];
      v63 = v0[5];
      v64 = v0[6];
      sub_21A142764(v0 + 2, v63);
      v77 = (*(v64 + 8) + **(v64 + 8));
      v65 = swift_task_alloc();
      v0[46] = v65;
      *v65 = v0;
      v65[1] = sub_21A1DC26C;
      v66 = v0[32];
      v67 = v0[28];

      return v77(v66, v67, v35, v62 + v61, v63, v64);
    }

    sub_21A142AEC(v36, (v0 + 7));

    v49 = sub_21A2F53C4();
    v50 = sub_21A2F7DF4();

    if (os_log_type_enabled(v49, v50))
    {
      v52 = v0[39];
      v51 = v0[40];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v78[0] = v54;
      *v53 = 136315394;
      sub_21A142764(v0 + 7, v0[10]);
      v55 = swift_getDynamicType();
      v56 = v0[11];
      v0[22] = v55;
      v0[23] = v56;
      sub_21A176C98(&qword_27CD008A0, &unk_21A301070);
      v57 = sub_21A2F7944();
      v59 = v58;
      sub_21A142808(v0 + 7);
      v60 = sub_21A25B5DC(v57, v59, v78);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2082;
      *(v53 + 14) = sub_21A25B5DC(v52, v51, v78);
      _os_log_impl(&dword_21A137000, v49, v50, "[%s] Early exit processing. Encountered nil token for recipe id=%{public}s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED7BA0](v54, -1, -1);
      MEMORY[0x21CED7BA0](v53, -1, -1);
    }

    else
    {

      sub_21A142808(v0 + 7);
    }

    sub_21A142808(v0 + 2);
  }

  v68 = sub_21A2F53C4();
  v69 = sub_21A2F7DF4();

  if (os_log_type_enabled(v68, v69))
  {
    v71 = v0[39];
    v70 = v0[40];
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v78[0] = v73;
    *v72 = 136446210;
    *(v72 + 4) = sub_21A25B5DC(v71, v70, v78);
    _os_log_impl(&dword_21A137000, v68, v69, "Did process recipe id=%{public}s", v72, 0xCu);
    sub_21A142808(v73);
    MEMORY[0x21CED7BA0](v73, -1, -1);
    MEMORY[0x21CED7BA0](v72, -1, -1);
  }

  v74 = v0[1];

  return v74();
}

uint64_t sub_21A1DC26C()
{
  v1 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_21A1DC37C, v1, 0);
}

uint64_t sub_21A1DC37C()
{
  v62 = v0;
  v1 = v0[32];
  v2 = v0[28];
  sub_21A1DCF2C(v2);
  sub_21A1996D4(v1, v2);
  sub_21A142AEC((v0 + 2), (v0 + 17));

  v3 = sub_21A2F53C4();
  v4 = sub_21A2F7DF4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[39];
    v5 = v0[40];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v61 = v8;
    *v7 = 136315394;
    sub_21A142764(v0 + 17, v0[20]);
    v0[24] = swift_getDynamicType();
    v0[25] = v0[21];
    sub_21A176C98(&qword_27CD008A0, &unk_21A301070);
    v9 = sub_21A2F7944();
    v11 = v10;
    sub_21A142808(v0 + 17);
    v12 = sub_21A25B5DC(v9, v11, &v61);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_21A25B5DC(v6, v5, &v61);
    _os_log_impl(&dword_21A137000, v3, v4, "[%s] Did process step for recipe id=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED7BA0](v8, -1, -1);
    MEMORY[0x21CED7BA0](v7, -1, -1);
  }

  else
  {

    sub_21A142808(v0 + 17);
  }

  v13 = v0[42];
  v14 = v0[44] + 1;
  result = sub_21A142808(v0 + 2);
  if (v14 != v13)
  {
    v16 = v0[44] + 1;
    v0[44] = v16;
    v17 = v0[41];
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v18 = v0[30];
    sub_21A142AEC(v17 + 40 * v16 + 32, (v0 + 2));
    v19 = *(v18 + 32);
    os_unfair_lock_lock(v19 + 6);
    v20 = sub_21A2F52E4();
    v0[45] = v20;
    os_unfair_lock_unlock(v19 + 6);
    v21 = (v0 + 2);
    if (v20)
    {
      sub_21A142AEC(v21, (v0 + 12));

      v22 = sub_21A2F53C4();
      v23 = sub_21A2F7DF4();

      if (os_log_type_enabled(v22, v23))
      {
        v25 = v0[39];
        v24 = v0[40];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v61 = v27;
        *v26 = 136315394;
        sub_21A142764(v0 + 12, v0[15]);
        DynamicType = swift_getDynamicType();
        v29 = v0[16];
        v0[26] = DynamicType;
        v0[27] = v29;
        sub_21A176C98(&qword_27CD008A0, &unk_21A301070);
        v30 = sub_21A2F7944();
        v32 = v31;
        sub_21A142808(v0 + 12);
        v33 = sub_21A25B5DC(v30, v32, &v61);

        *(v26 + 4) = v33;
        *(v26 + 12) = 2082;
        *(v26 + 14) = sub_21A25B5DC(v25, v24, &v61);
        _os_log_impl(&dword_21A137000, v22, v23, "[%s] Will process step for recipe id=%{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CED7BA0](v27, -1, -1);
        MEMORY[0x21CED7BA0](v26, -1, -1);
      }

      else
      {

        sub_21A142808(v0 + 12);
      }

      v46 = v0[43];
      v47 = v0[30];
      v48 = v0[5];
      v49 = v0[6];
      sub_21A142764(v0 + 2, v48);
      v60 = (*(v49 + 8) + **(v49 + 8));
      v50 = swift_task_alloc();
      v0[46] = v50;
      *v50 = v0;
      v50[1] = sub_21A1DC26C;
      v51 = v0[32];
      v52 = v0[28];

      return v60(v51, v52, v20, v47 + v46, v48, v49);
    }

    sub_21A142AEC(v21, (v0 + 7));

    v34 = sub_21A2F53C4();
    v35 = sub_21A2F7DF4();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = v0[39];
      v36 = v0[40];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v61 = v39;
      *v38 = 136315394;
      sub_21A142764(v0 + 7, v0[10]);
      v40 = swift_getDynamicType();
      v41 = v0[11];
      v0[22] = v40;
      v0[23] = v41;
      sub_21A176C98(&qword_27CD008A0, &unk_21A301070);
      v42 = sub_21A2F7944();
      v44 = v43;
      sub_21A142808(v0 + 7);
      v45 = sub_21A25B5DC(v42, v44, &v61);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_21A25B5DC(v37, v36, &v61);
      _os_log_impl(&dword_21A137000, v34, v35, "[%s] Early exit processing. Encountered nil token for recipe id=%{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED7BA0](v39, -1, -1);
      MEMORY[0x21CED7BA0](v38, -1, -1);
    }

    else
    {

      sub_21A142808(v0 + 7);
    }

    sub_21A142808(v0 + 2);
  }

  v53 = sub_21A2F53C4();
  v54 = sub_21A2F7DF4();

  if (os_log_type_enabled(v53, v54))
  {
    v56 = v0[39];
    v55 = v0[40];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_21A25B5DC(v56, v55, &v61);
    _os_log_impl(&dword_21A137000, v53, v54, "Did process recipe id=%{public}s", v57, 0xCu);
    sub_21A142808(v58);
    MEMORY[0x21CED7BA0](v58, -1, -1);
    MEMORY[0x21CED7BA0](v57, -1, -1);
  }

  v59 = v0[1];

  return v59();
}

uint64_t sub_21A1DCB28()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21A1DCB60(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_21A2F4F24();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for ImportedRecipe.RawRecipe(0);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_21A1DCC4C, v7, 0);
}

uint64_t sub_21A1DCC4C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_21A1DCEC8(v0[3] + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_rawRecipe, v2);
  (*(v4 + 32))(v1, v2, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21A1DCD30;
  v6 = v0[6];
  v7 = v0[2];
  v8 = v0[3];

  return sub_21A1DB934(v7, v6, v8);
}

uint64_t sub_21A1DCD30()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_21A1DCE40, v1, 0);
}

uint64_t sub_21A1DCE40()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21A1DCEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportedRecipe.RawRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1DCF2C(uint64_t a1)
{
  v2 = type metadata accessor for Recipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShareableRecipe.identifier.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t ShareableRecipe.title.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

void *ShareableRecipe.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ShareableRecipe.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareableRecipe(0) + 28);
  v4 = sub_21A2F4794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareableRecipe.init(identifier:title:image:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  *(a7 + 4) = a5;
  v9 = *(type metadata accessor for ShareableRecipe(0) + 28);
  v10 = sub_21A2F4794();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a7[v9], a6, v10);
}

uint64_t sub_21A1DD120()
{
  v1 = v0;
  v2 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v119 = (&v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v118 = (&v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v117 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21A176C98(&qword_27CCFEDC0, &unk_21A2FAEE0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v125 = &v116 - v13;
  v126 = type metadata accessor for ImageAsset(0);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v14);
  v121 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v122 = &v116 - v18;
  v19 = sub_21A176C98(&qword_27CCFEA80, &unk_21A2FD6C0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v131 = (&v116 - v21);
  v134 = sub_21A2F4794();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v22);
  v129 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Recipe(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v133 = (&v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for ExternalRecipeSource(0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v123 = (&v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for RecipeSourceType(0);
  v130 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32);
  v127 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21A176C98(&qword_27CCFF040, &qword_21A2FB420);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v116 - v40;
  v137 = type metadata accessor for ShareableRecipeSource(0);
  MEMORY[0x28223BE20](v137, v42);
  v120 = &v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v128 = &v116 - v46;
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v116 - v49;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v116 - v53;
  v55 = sub_21A176C98(&qword_27CCFF058, &unk_21A2FC890);
  MEMORY[0x28223BE20](v55 - 8, v56);
  v58 = &v116 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v60);
  v62 = &v116 - v61;
  v136 = v1;
  sub_21A1DE514(v1, v54, type metadata accessor for ShareableRecipeSource);
  sub_21A176C98(&qword_27CCFFA38, &unk_21A2FEB60);
  sub_21A2F7594();
  v63 = v54;
  v64 = v24;
  sub_21A1DE4B4(v63, type metadata accessor for ShareableRecipeSource);
  v65 = *(v25 + 48);
  v135 = v25 + 48;
  if (v65(v62, 1, v64) == 1)
  {
    v66 = v64;
    sub_21A1427A8(v62, &qword_27CCFF058, &unk_21A2FC890);
LABEL_5:
    v67 = 0;
    v68 = 0;
    v69 = v136;
    v70 = v137;
    goto LABEL_6;
  }

  sub_21A183960(&v62[*(v64 + 48)], v41, &qword_27CCFF040, &qword_21A2FB420);
  sub_21A1DE4B4(v62, type metadata accessor for Recipe);
  sub_21A1DE57C(v41, v37);
  if ((*(v130 + 48))(v37, 1, v31) == 1)
  {
    v66 = v64;
    goto LABEL_5;
  }

  v82 = v37;
  v83 = v127;
  sub_21A1DE44C(v82, v127, type metadata accessor for RecipeSourceType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v69 = v136;
  v70 = v137;
  v66 = v64;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v85 = v123;
      sub_21A1DE44C(v83, v123, type metadata accessor for ExternalRecipeSource);
      v67 = *v85;
      v68 = v85[1];
      sub_21A2F5434();
      sub_21A1DE4B4(v85, type metadata accessor for ExternalRecipeSource);
      goto LABEL_6;
    }
  }

  else
  {
    sub_21A1DE4B4(v83, type metadata accessor for RecipeSourceType);
  }

  v67 = 0;
  v68 = 0;
LABEL_6:
  sub_21A1DE514(v69, v50, type metadata accessor for ShareableRecipeSource);
  sub_21A2F7594();
  sub_21A1DE4B4(v50, type metadata accessor for ShareableRecipeSource);
  if (v65(v58, 1, v66) != 1)
  {
    v71 = v66;
    v72 = v133;
    sub_21A1DE44C(v58, v133, type metadata accessor for Recipe);
    v73 = (v69 + *(v70 + 28));
    v74 = v69;
    v75 = v73[4];
    sub_21A142764(v73, v73[3]);
    v76 = *v72;
    v77 = v72[1];
    v138 = v67;
    v139 = v68;
    v78 = *(v75 + 8);
    v79 = v131;
    v130 = v76;
    v135 = v77;
    v78();

    v80 = v132;
    v81 = v134;
    if ((*(v132 + 48))(v79, 1, v134) == 1)
    {
      sub_21A1DE4B4(v72, type metadata accessor for Recipe);
      sub_21A1427A8(v79, &qword_27CCFEA80, &unk_21A2FD6C0);
      v69 = v74;
      goto LABEL_17;
    }

    v86 = v129;
    v131 = *(v80 + 32);
    v131(v129, v79, v81);
    v87 = v128;
    sub_21A1DE514(v74, v128, type metadata accessor for ShareableRecipeSource);
    sub_21A176C98(&qword_27CCFF110, &unk_21A301100);
    sub_21A2F7594();
    sub_21A1DE4B4(v87, type metadata accessor for ShareableRecipeSource);
    v88 = BYTE1(v138);
    sub_21A18F700(v139, v140, v141, v142);
    v69 = v74;
    if (v88 != 1)
    {
      (*(v80 + 8))(v86, v81);
      sub_21A1DE4B4(v72, type metadata accessor for Recipe);
      v70 = v137;
      goto LABEL_17;
    }

    v89 = v125;
    sub_21A183960(v72 + *(v71 + 32), v125, &qword_27CCFEDC0, &unk_21A2FAEE0);
    if ((*(v124 + 48))(v89, 1, v126) == 1)
    {
      sub_21A1427A8(v89, &qword_27CCFEDC0, &unk_21A2FAEE0);
      v90 = 0;
LABEL_34:
      v111 = (v69 + *(v137 + 32));
      sub_21A1427A8(v111, &qword_27CCFEBC0, &unk_21A2FB780);
      v113 = v72[2];
      v112 = v72[3];
      v114 = type metadata accessor for ShareableRecipe(0);
      v131(&v111[*(v114 + 28)], v86, v81);
      v115 = v135;
      *v111 = v130;
      *(v111 + 1) = v115;
      *(v111 + 2) = v113;
      *(v111 + 3) = v112;
      *(v111 + 4) = v90;
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A1DE4B4(v72, type metadata accessor for Recipe);
      return (*(*(v114 - 8) + 56))(v111, 0, 1, v114);
    }

    v94 = v122;
    sub_21A1DE44C(v89, v122, type metadata accessor for ImageAsset);
    v95 = v69;
    v96 = v120;
    sub_21A1DE514(v95, v120, type metadata accessor for ShareableRecipeSource);
    sub_21A176C98(&qword_27CCFEDD0, &qword_21A2FAF18);
    sub_21A2F7594();
    sub_21A1DE4B4(v96, type metadata accessor for ShareableRecipeSource);
    v97 = v138;
    v98 = v121;
    sub_21A1DE514(v94, v121, type metadata accessor for ImageAsset);
    v99 = swift_getEnumCaseMultiPayload();
    if (v99)
    {
      if (v99 == 1)
      {
        v100 = v118;
        sub_21A1DE44C(v98, v118, type metadata accessor for WebImageAsset);
        v101 = sub_21A2F46A4();
        v103 = v102;
        v104 = type metadata accessor for WebImageAsset;
      }

      else
      {
        v100 = v119;
        sub_21A1DE44C(v98, v119, type metadata accessor for LocalImageAsset);
        v101 = sub_21A2F46A4();
        v103 = v105;
        v104 = type metadata accessor for LocalImageAsset;
      }
    }

    else
    {
      v100 = v117;
      sub_21A1DE44C(v98, v117, type metadata accessor for ExternalImageAsset);
      v101 = *v100;
      v103 = v100[1];
      sub_21A2F5434();
      v104 = type metadata accessor for ExternalImageAsset;
    }

    sub_21A1DE4B4(v100, v104);
    if (*(v97 + 16))
    {
      v106 = sub_21A261F58(v101, v103);
      v108 = v107;

      if (v108)
      {
        v109 = *(v97 + 56) + 16 * v106;
        v90 = *v109;
        v110 = *(v109 + 8);
        sub_21A17FE08(*v109, *(v109 + 8));
        sub_21A1DE4B4(v94, type metadata accessor for ImageAsset);

        if (v110 == 1)
        {
LABEL_33:
          v69 = v136;
          goto LABEL_34;
        }

        sub_21A17FE30(v90, v110);
LABEL_32:
        v90 = 0;
        goto LABEL_33;
      }
    }

    else
    {
    }

    sub_21A1DE4B4(v94, type metadata accessor for ImageAsset);
    goto LABEL_32;
  }

  sub_21A1427A8(v58, &qword_27CCFF058, &unk_21A2FC890);
LABEL_17:
  v91 = *(v70 + 32);
  sub_21A1427A8(v69 + v91, &qword_27CCFEBC0, &unk_21A2FB780);
  v92 = type metadata accessor for ShareableRecipe(0);
  return (*(*(v92 - 8) + 56))(v69 + v91, 1, 1, v92);
}

void *sub_21A1DDF78()
{
  sub_21A17A260();
  sub_21A17A2B4();

  return sub_21A2F7624();
}

uint64_t sub_21A1DDFD4()
{
  v0 = sub_21A176C98(&qword_27CCFEBC0, &unk_21A2FB780);
  sub_21A177DCC(v0, qword_27CD008A8);
  v1 = sub_21A177CBC(v0, qword_27CD008A8);
  v2 = type metadata accessor for ShareableRecipe(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_21A1DE074@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CCFE808 != -1)
  {
    swift_once();
  }

  v2 = sub_21A176C98(&qword_27CCFEBC0, &unk_21A2FB780);
  v3 = sub_21A177CBC(v2, qword_27CD008A8);
  return sub_21A183960(v3, a1, &qword_27CCFEBC0, &unk_21A2FB780);
}

uint64_t sub_21A1DE104@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD008C8, &unk_21A3011D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ShareableRecipeSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD008C8, &unk_21A3011D0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A1DE404(&qword_27CD008D0, type metadata accessor for ShareableRecipeSource, &unk_21A301158);
    v8 = sub_21A156050(a1);
    return sub_21A1DE44C(v5, v8, type metadata accessor for ShareableRecipeSource);
  }

  return result;
}

uint64_t _s10CookingKit15ShareableRecipeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  sub_21A13DAA4();
  v8 = v7;
  v9 = v6;
  v10 = sub_21A2F7E74();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  type metadata accessor for ShareableRecipe(0);

  return sub_21A2F4724();
}

uint64_t sub_21A1DE404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A1DE44C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1DE4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A1DE514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1DE57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF040, &qword_21A2FB420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RecipeCardExpandedExcerptView(uint64_t a1)
{
  result = qword_27CD008D8;
  if (!qword_27CD008D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1DE660(uint64_t a1)
{
  sub_21A17D508(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21A1DE6F8@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v55 = sub_21A2F6394();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v2);
  v52 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A176C98(&qword_27CD008E8, &qword_21A301260);
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v44 = &v38 - v6;
  v48 = sub_21A176C98(&qword_27CD008F0, &qword_21A301268);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v7);
  v45 = &v38 - v8;
  v50 = sub_21A176C98(&qword_27CD008F8, &qword_21A301270);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v9);
  v47 = &v38 - v10;
  v59 = v1;
  sub_21A2F65E4();
  sub_21A176C98(&qword_27CD00900, &qword_21A301278);
  sub_21A1DFD2C();
  sub_21A2F5634();
  sub_21A2F72F4();
  v43 = v1;
  v58 = v1;
  v57 = v1;
  v42 = sub_21A176C98(&qword_27CD00910, &qword_21A301280);
  v40 = sub_21A176C98(&qword_27CD00918, &qword_21A301288);
  v11 = sub_21A1772F8(&qword_27CD00920, &qword_27CD008E8, &qword_21A301260, MEMORY[0x277CDD6E0]);
  v12 = sub_21A176D98(&qword_27CD00928, &qword_21A301290);
  v13 = sub_21A176D98(&qword_27CD00930, &qword_21A301298);
  v14 = MEMORY[0x277CDD7A8];
  v39 = MEMORY[0x277CDD7A8];
  v15 = sub_21A1772F8(&qword_27CD00938, &qword_27CD00930, &qword_21A301298, MEMORY[0x277CDD7A8]);
  v60 = v13;
  v61 = v15;
  v38 = MEMORY[0x277CDE130];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v4;
  v61 = v12;
  v62 = v11;
  v63 = OpaqueTypeConformance2;
  v41 = MEMORY[0x277CDEEF8];
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_21A176D98(&qword_27CCFED48, &qword_21A2FAB40);
  v19 = sub_21A176D98(&qword_27CCFED58, &qword_21A2FAB48);
  v20 = sub_21A1772F8(&qword_27CCFED60, &qword_27CCFED58, &qword_21A2FAB48, v14);
  v60 = v19;
  v61 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v60 = v4;
  v61 = v18;
  v62 = v11;
  v63 = v21;
  v37 = swift_getOpaqueTypeConformance2();
  v22 = v40;
  v23 = MEMORY[0x277CE1350];
  v24 = v45;
  v25 = v42;
  v26 = v44;
  sub_21A2F6E84();
  (*(v46 + 8))(v26, v4);
  v56 = v43;
  v27 = sub_21A176C98(&qword_27CD00940, &qword_21A3012A0);
  v60 = v4;
  v61 = v23;
  v62 = v25;
  v63 = v22;
  v64 = v11;
  v65 = MEMORY[0x277CE1340];
  v66 = v17;
  v67 = v37;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_21A176D98(&qword_27CD00948, &qword_21A3012A8);
  v30 = sub_21A1772F8(&qword_27CD00950, &qword_27CD00948, &qword_21A3012A8, v39);
  v60 = v29;
  v61 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v47;
  v33 = v48;
  sub_21A2F6E44();
  (*(v49 + 8))(v24, v33);
  v34 = v52;
  sub_21A2F6384();
  v60 = v33;
  v61 = v27;
  v62 = v28;
  v63 = v31;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  sub_21A2F6D44();
  (*(v53 + 8))(v34, v55);
  return (*(v51 + 8))(v32, v35);
}

void sub_21A1DEE08(uint64_t a2@<X8>)
{
  type metadata accessor for RecipeCardExpandedExcerptView(0);
  sub_21A1834FC();
  sub_21A2F5434();
  v3 = sub_21A2F69B4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_21A2F6604();
  sub_21A2F55A4();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
  *(a2 + 72) = 0;
}

uint64_t sub_21A1DEEC8(uint64_t a1, uint64_t a2)
{
  sub_21A176C98(&qword_27CD008E8, &qword_21A301260);
  sub_21A176C98(&qword_27CD00928, &qword_21A301290);
  sub_21A1772F8(&qword_27CD00920, &qword_27CD008E8, &qword_21A301260, MEMORY[0x277CDD6E0]);
  sub_21A176D98(&qword_27CD00930, &qword_21A301298);
  sub_21A1772F8(&qword_27CD00938, &qword_27CD00930, &qword_21A301298, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return sub_21A2F6E44();
}

uint64_t sub_21A1DF010(uint64_t a1)
{
  v2 = sub_21A2F6204();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A176C98(&qword_27CD00930, &qword_21A301298);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_21A2F61D4();
  v12 = a1;
  sub_21A176C98(&qword_27CD00958, &qword_21A3012B0);
  sub_21A1772F8(&qword_27CD00960, &qword_27CD00958, &qword_21A3012B0, MEMORY[0x277CDF028]);
  sub_21A2F56B4();
  v9 = sub_21A1772F8(&qword_27CD00938, &qword_27CD00930, &qword_21A301298, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CED4CD0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A1DF1FC(uint64_t a1)
{
  v2 = type metadata accessor for RecipeCardExpandedExcerptView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = sub_21A2F5584();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5574();
  sub_21A1DFDE0(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21A1DFE44(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return MEMORY[0x21CED5B40](v9, sub_21A1DFEB8, v11);
}

uint64_t sub_21A1DF350(uint64_t a1, uint64_t a2)
{
  sub_21A176C98(&qword_27CD008E8, &qword_21A301260);
  sub_21A176C98(&qword_27CCFED48, &qword_21A2FAB40);
  sub_21A1772F8(&qword_27CD00920, &qword_27CD008E8, &qword_21A301260, MEMORY[0x277CDD6E0]);
  sub_21A176D98(&qword_27CCFED58, &qword_21A2FAB48);
  sub_21A1772F8(&qword_27CCFED60, &qword_27CCFED58, &qword_21A2FAB48, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return sub_21A2F6E44();
}

uint64_t sub_21A1DF498(uint64_t a1)
{
  v2 = sub_21A2F6204();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A176C98(&qword_27CCFED58, &qword_21A2FAB48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_21A2F61E4();
  v12 = a1;
  sub_21A176C98(&qword_27CCFED78, &unk_21A2FAC60);
  sub_21A1772F8(&qword_27CCFED80, &qword_27CCFED78, &unk_21A2FAC60, MEMORY[0x277CDF028]);
  sub_21A2F56B4();
  v9 = sub_21A1772F8(&qword_27CCFED60, &qword_27CCFED58, &qword_21A2FAB48, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CED4CD0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A1DF684(uint64_t a1)
{
  v2 = type metadata accessor for RecipeCardExpandedExcerptView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  sub_21A1DFDE0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21A1DFE44(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return sub_21A2F7094();
}

uint64_t sub_21A1DF7B0(uint64_t a1)
{
  v2 = sub_21A2F5ED4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CCFECA8, &qword_21A311AB0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = sub_21A2F57F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A17E180(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    sub_21A2F7DE4();
    v16 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21A2F57E4();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21A1DFA18@<X0>(uint64_t a1@<X8>)
{
  sub_21A2F5F54();
  result = sub_21A2F69A4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21A1DFA8C(uint64_t a1)
{
  v2 = sub_21A2F6204();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A176C98(&qword_27CD00948, &qword_21A3012A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_21A2F61F4();
  v12 = a1;
  sub_21A2F56B4();
  v9 = sub_21A1772F8(&qword_27CD00950, &qword_27CD00948, &qword_21A3012A8, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CED4CD0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A1DFC30@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for RecipeCardExpandedExcerptView(0);
  sub_21A1834FC();
  sub_21A2F5434();
  v3 = sub_21A2F69B4();
  v5 = v4;
  v7 = v6;
  sub_21A2F66F4();
  v8 = sub_21A2F6814();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_21A1834EC(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

unint64_t sub_21A1DFD2C()
{
  result = qword_27CD00908;
  if (!qword_27CD00908)
  {
    sub_21A176D98(&qword_27CD00900, &qword_21A301278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00908);
  }

  return result;
}

uint64_t sub_21A1DFDE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeCardExpandedExcerptView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1DFE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeCardExpandedExcerptView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1DFF14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A2F5ED4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFECD8, &unk_21A2FB250);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for CookingModeView(0);
  sub_21A183960(v1 + *(v12 + 20), v11, &qword_27CCFECD8, &unk_21A2FB250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21A2F5654();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_21A2F7DE4();
    v15 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t CookingModeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD00968, &qword_21A3012E0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (v13 - v4);
  *v5 = sub_21A2F7344();
  v5[1] = v6;
  v7 = sub_21A176C98(&qword_27CD00970, &qword_21A3012E8);
  sub_21A1E02B8(v5 + *(v7 + 44));
  v8 = sub_21A2F73A4();
  sub_21A176C98(&qword_27CD00978, &qword_21A3012F0);
  v9 = sub_21A2F7714();
  swift_getKeyPath();
  v13[1] = v9;
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v10 = *(v9 + 40) != 0;

  sub_21A149B18(v5, a1, &qword_27CD00968, &qword_21A3012E0);
  result = sub_21A176C98(&qword_27CD00980, &qword_21A301320);
  v12 = a1 + *(result + 36);
  *v12 = v8;
  *(v12 + 8) = v10;
  return result;
}

uint64_t sub_21A1E02B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD00D30, &unk_21A301910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v11 - v5;
  sub_21A176C98(&qword_27CD00978, &qword_21A3012F0);
  v7 = sub_21A2F7714();
  swift_getKeyPath();
  v11[1] = v7;
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v8 = *(v7 + 40);

  if (v8)
  {
    sub_21A1E0468(v6);
    sub_21A149B18(v6, a1, &qword_27CD00D30, &unk_21A301910);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(v3 + 56))(a1, v9, 1, v2);
}

uint64_t sub_21A1E0468@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v2 = sub_21A176C98(&qword_27CCFF3E0, &qword_21A2FE6A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v84 = &v66 - v4;
  v72 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v72, v5);
  v69 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v8);
  v71 = &v66 - v9;
  v10 = sub_21A176C98(&qword_27CD00D38, &qword_21A301920);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v80 = &v66 - v12;
  v13 = type metadata accessor for CookingModeView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_21A176C98(&qword_27CD00D40, &qword_21A301928);
  MEMORY[0x28223BE20](v70, v18);
  v20 = (&v66 - v19);
  v21 = sub_21A176C98(&qword_27CD00D48, &qword_21A301930);
  v73 = *(v21 - 8);
  v74 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v66 = &v66 - v23;
  v76 = sub_21A176C98(&qword_27CD00D50, &qword_21A301938);
  MEMORY[0x28223BE20](v76, v24);
  v77 = &v66 - v25;
  v83 = sub_21A176C98(&qword_27CD00D58, &qword_21A301940);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v26);
  v79 = &v66 - v27;
  v78 = sub_21A176C98(&qword_27CD00D60, &qword_21A301948);
  MEMORY[0x28223BE20](v78, v28);
  v82 = &v66 - v29;
  sub_21A1E9C2C(v1, v17, type metadata accessor for CookingModeView);
  v30 = *(v14 + 80);
  v31 = (v30 + 16) & ~v30;
  v85 = v15;
  v75 = v30;
  v32 = swift_allocObject();
  v67 = v31;
  v86 = v17;
  sub_21A1EB0DC(v17, v32 + v31, type metadata accessor for CookingModeView);
  KeyPath = swift_getKeyPath();
  v33 = sub_21A176C98(&qword_27CD00978, &qword_21A3012F0);
  v34 = v1;
  v35 = sub_21A2F7714();
  swift_getKeyPath();
  v88 = v35;
  v36 = sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v37 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme;
  v38 = (v20 + *(v70 + 36));
  v39 = sub_21A176C98(&qword_27CD00D68, &qword_21A301950);
  sub_21A1E9C2C(v35 + v37, v38 + *(v39 + 28), type metadata accessor for RecipeTheme);

  *v38 = KeyPath;
  v40 = v66;
  *v20 = sub_21A1EB144;
  v20[1] = v32;
  swift_getKeyPath();
  LOBYTE(v88) = 1;
  sub_21A1EB208();
  sub_21A2F6A24();

  sub_21A1427A8(v20, &qword_27CD00D40, &qword_21A301928);
  v70 = v33;
  v41 = sub_21A2F7714();
  swift_getKeyPath();
  v88 = v41;
  KeyPath = v36;
  sub_21A2F5094();

  v42 = v71;
  sub_21A1E9C2C(v41 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme, v71, type metadata accessor for RecipeTheme);

  v43 = v42;
  v44 = v69;
  sub_21A1EB0DC(v43, v69, type metadata accessor for RecipeTheme);
  LODWORD(v41) = swift_getEnumCaseMultiPayload();

  if (v41 == 1)
  {
    v45 = sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50);
    sub_21A1427A8(v44 + *(v45 + 48), &qword_27CCFEDC0, &unk_21A2FAEE0);
    v46 = v80;
    sub_21A1DFF14(v80);
  }

  else
  {

    v47 = sub_21A176C98(&qword_27CCFEEA8, &qword_21A2FB130);
    sub_21A1EB5B8(v44 + *(v47 + 64), type metadata accessor for ImageAsset);
    v48 = *MEMORY[0x277CDF3C0];
    v49 = sub_21A2F5654();
    v46 = v80;
    (*(*(v49 - 8) + 104))(v80, v48, v49);
  }

  v50 = sub_21A2F5654();
  (*(*(v50 - 8) + 56))(v46, 0, 1, v50);
  v52 = v76;
  v51 = v77;
  sub_21A149B18(v46, &v77[*(v76 + 36)], &qword_27CD00D38, &qword_21A301920);
  (*(v73 + 32))(v51, v40, v74);
  v53 = sub_21A2F7714();
  swift_getKeyPath();
  v88 = v53;
  sub_21A2F5094();

  v54 = v84;
  sub_21A183960(v53 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__appEntityIdentifier, v84, &qword_27CCFF3E0, &qword_21A2FE6A0);

  v55 = sub_21A1EB2EC();
  v56 = v79;
  MEMORY[0x21CED5470](v54, v52, v55);
  sub_21A1427A8(v54, &qword_27CCFF3E0, &qword_21A2FE6A0);
  sub_21A1427A8(v51, &qword_27CD00D50, &qword_21A301938);
  v57 = v86;
  sub_21A1E9C2C(v34, v86, type metadata accessor for CookingModeView);
  v58 = v67;
  v59 = swift_allocObject();
  sub_21A1EB0DC(v57, v59 + v58, type metadata accessor for CookingModeView);
  v60 = v82;
  (*(v81 + 32))(v82, v56, v83);
  v61 = (v60 + *(v78 + 36));
  *v61 = sub_21A1EB544;
  v61[1] = v59;
  v61[2] = 0;
  v61[3] = 0;
  sub_21A1E9C2C(v34, v57, type metadata accessor for CookingModeView);
  v62 = swift_allocObject();
  sub_21A1EB0DC(v57, v62 + v58, type metadata accessor for CookingModeView);
  v63 = v87;
  sub_21A149B18(v60, v87, &qword_27CD00D60, &qword_21A301948);
  result = sub_21A176C98(&qword_27CD00D30, &unk_21A301910);
  v65 = (v63 + *(result + 36));
  *v65 = 0;
  v65[1] = 0;
  v65[2] = sub_21A1EB5B0;
  v65[3] = v62;
  return result;
}

uint64_t sub_21A1E0E40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for CookingModeView(0);
  v78 = *(v3 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A2F62F4();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v75 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CD00DA8, &qword_21A3019C0);
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v69 - v15;
  v71 = &v69 - v15;
  v74 = sub_21A176C98(&qword_27CD00DB0, &qword_21A3019C8);
  MEMORY[0x28223BE20](v74, v17);
  v19 = &v69 - v18;
  sub_21A2F5814();
  v21 = v20;
  v23 = v22;
  sub_21A2F5804();
  v73 = v27 + v23 + v26 < v25 + v21 + v24;
  sub_21A176C98(&qword_27CD00978, &qword_21A3012F0);
  v72 = sub_21A2F7714();
  v82 = a1;
  sub_21A2F7724();
  swift_getKeyPath();
  v70 = type metadata accessor for CookingModeContentView(0);
  sub_21A2F7734();

  v28 = v83 + 8;
  v29 = *(v83 + 8);
  v29(v16, v9);
  v83 = v28;
  sub_21A2F7724();
  swift_getKeyPath();
  sub_21A2F7734();

  v30 = v9;
  v29(v12, v9);
  v31 = v29;
  v32 = v84[0];
  v33 = v84[1];
  v34 = v85;
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  memset(v87, 0, 24);
  v87[24] = 1;
  sub_21A176C98(&qword_27CD00380, &unk_21A2FF810);
  sub_21A2F7014();
  v35 = *&v94[16];
  v36 = v95;
  v37 = v96;
  *(v19 + 1) = *v94;
  *(v19 + 4) = v35;
  v19[40] = v36;
  *(v19 + 6) = v37;
  *v87 = sub_21A260194(MEMORY[0x277D84F90]);
  sub_21A176C98(&qword_27CD009E8, &qword_21A301410);
  sub_21A2F7014();
  v38 = *&v94[8];
  *(v19 + 7) = *v94;
  *(v19 + 8) = v38;
  *v87 = 0;
  sub_21A2F7014();
  v39 = *&v94[8];
  *(v19 + 9) = *v94;
  *(v19 + 10) = v39;
  v87[0] = 0;
  sub_21A2F7014();
  v40 = *&v94[8];
  v19[88] = v94[0];
  v41 = v72;
  *(v19 + 12) = v40;
  *(v19 + 13) = v41;
  v42 = v70;
  v43 = &v19[*(v70 + 44)];
  *v43 = v32;
  *(v43 + 1) = v33;
  v43[16] = v34;
  v19[*(v42 + 48)] = v73;
  v44 = sub_21A2F6004();
  v45 = sub_21A2F7714();
  v46 = v71;
  sub_21A2F7724();
  swift_getKeyPath();
  sub_21A2F7734();

  v31(v46, v30);
  v47 = *v94;
  v48 = v94[16];
  LOBYTE(v32) = sub_21A2F6614();
  sub_21A2F55A4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v94[0] = 0;
  v57 = sub_21A2F5754();
  LOBYTE(v46) = MEMORY[0x21CED5110]((2 * v57));
  v58 = sub_21A2F5B24();
  *v87 = v45;
  *&v87[8] = v47;
  v87[24] = v48;
  LOBYTE(v88) = v32;
  *(&v88 + 1) = v50;
  *&v89 = v52;
  *(&v89 + 1) = v54;
  *&v90 = v56;
  BYTE8(v90) = 0;
  v91 = v58;
  v92 = 0;
  LOBYTE(v93) = 1;
  BYTE1(v93) = v46;
  *(&v93 + 1) = v44;
  v59 = &v19[*(v74 + 36)];
  v60 = v89;
  v61 = v93;
  *(v59 + 4) = v90;
  *(v59 + 5) = v58;
  v62 = *&v87[16];
  v63 = v88;
  *v59 = *v87;
  *(v59 + 1) = v62;
  *(v59 + 2) = v63;
  *(v59 + 3) = v60;
  v86 = 1;
  *(v59 + 6) = v61;
  *v94 = v45;
  *&v94[8] = v47;
  v95 = v48;
  LOBYTE(v96) = v32;
  v97 = v50;
  v98 = v52;
  v99 = v54;
  v100 = v56;
  v101 = 0;
  v102 = v58;
  v103 = 0;
  v104 = 1;
  v105 = v46;
  v106 = v44;
  sub_21A183960(v87, v84, &qword_27CD00DB8, &unk_21A3019D0);
  sub_21A1427A8(v94, &qword_27CD00DB8, &unk_21A3019D0);
  v64 = v75;
  sub_21A2F62E4();
  v65 = v76;
  sub_21A1E9C2C(v82, v76, type metadata accessor for CookingModeView);
  v66 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v67 = swift_allocObject();
  sub_21A1EB0DC(v65, v67 + v66, type metadata accessor for CookingModeView);
  sub_21A1EB644();
  sub_21A2F6C74();

  (*(v79 + 8))(v64, v80);
  return sub_21A1427A8(v19, &qword_27CD00DB0, &qword_21A3019C8);
}

uint64_t sub_21A1E1528@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v4 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollPosition;
  v5 = sub_21A2F59E4();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21A1E160C(uint64_t a1)
{
  v2 = sub_21A2F59E4();
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_21A1EF248(v6);
}

uint64_t sub_21A1E16D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region);
  return result;
}

void sub_21A1E17B0()
{
  sub_21A176C98(&qword_27CD00978, &qword_21A3012F0);
  v0 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();

    sub_21A18FAD4(v2, v1, 0, 0, 0, 0, 0x60u);
  }

  else
  {
  }
}

void sub_21A1E18E4(uint64_t a1, uint64_t a2)
{
  sub_21A176C98(&qword_27CD00978, &qword_21A3012F0);
  v3 = sub_21A2F7714();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_21A14FB78();
  sub_21A2F5434();
  sub_21A2F75E4();

  sub_21A18FAD4(v4, v5, 0, 0, 0, a2, 0x60u);
}

uint64_t sub_21A1E199C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a1;
  v95 = a3;
  v4 = sub_21A2F5F04();
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v92 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v96 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21A2F6274();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v10);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A176C98(&qword_27CD00A88, &qword_21A301538);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v79 - v15);
  v84 = sub_21A176C98(&qword_27CD00A90, &qword_21A301540);
  MEMORY[0x28223BE20](v84, v17);
  v19 = &v79 - v18;
  v97 = sub_21A176C98(&qword_27CD00A98, &qword_21A301548);
  MEMORY[0x28223BE20](v97, v20);
  v98 = &v79 - v21;
  v22 = sub_21A176C98(&qword_27CD00AA0, &qword_21A301550);
  v23 = *(v22 - 8);
  v90 = v22;
  v91 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v89 = &v79 - v25;
  *v16 = sub_21A2F7334();
  v16[1] = v26;
  v27 = v16 + *(sub_21A176C98(&qword_27CD00AA8, &qword_21A301558) + 44);
  v86 = a2;
  sub_21A1E23C8(a2, v27);
  v99 = a2;
  sub_21A176C98(&qword_27CD00AB0, &qword_21A301560);
  sub_21A1772F8(&qword_27CD00AB8, &qword_27CD00A88, &qword_21A301538, MEMORY[0x277CE11A8]);
  sub_21A1772F8(&qword_27CD00AC0, &qword_27CD00AB0, &qword_21A301560, MEMORY[0x277CDDF68]);
  sub_21A2F6E44();
  sub_21A1427A8(v16, &qword_27CD00A88, &qword_21A301538);
  v28 = sub_21A2F6004();
  v29 = v84;
  v30 = &v19[*(v84 + 36)];
  sub_21A1E4888(v30);
  v31 = sub_21A2F5754();
  v32 = MEMORY[0x21CED5110]((2 * v31));
  v33 = sub_21A2F5B24();
  v34 = v30 + *(sub_21A176C98(&qword_27CD00AC8, &qword_21A301568) + 36);
  *v34 = v33;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  *(v34 + 17) = v32;
  *(v34 + 24) = v28;
  v35 = sub_21A2F6624();
  sub_21A2F5804();
  v37 = v36;
  sub_21A2F6264();
  v38 = sub_21A1E9850();
  v39 = v98;
  MEMORY[0x21CED5620](v35, v37, 0, v12, v29, v38);
  (*(v85 + 1))(v12, v87);
  sub_21A1427A8(v19, &qword_27CD00A90, &qword_21A301540);
  *&v39[*(sub_21A176C98(&qword_27CD00AE0, &qword_21A301570) + 36)] = 256;
  LOBYTE(v35) = sub_21A2F6624();
  v40 = sub_21A2F5B14();
  v41 = &v39[*(sub_21A176C98(&qword_27CD00AE8, &qword_21A301578) + 36)];
  *v41 = v40;
  v41[8] = v35;
  v42 = sub_21A2F7344();
  v87 = v43;
  v88 = v42;
  v44 = &v39[*(sub_21A176C98(&qword_27CD00AF0, &qword_21A301580) + 36)];
  v45 = v86;
  v46 = *(v86 + 104);
  swift_getKeyPath();
  v47 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel___observationRegistrar;
  v100 = v46;
  v48 = sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  v83 = v47;
  v82 = v48;
  sub_21A2F5094();

  v49 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme;
  sub_21A1E9C2C(v46 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme, v44, type metadata accessor for RecipeTheme);
  swift_getKeyPath();
  v100 = v46;
  sub_21A2F5094();

  v50 = v96;
  sub_21A1E9C2C(v46 + v49, v96, type metadata accessor for RecipeTheme);
  LOBYTE(v35) = sub_21A22E3D4();
  v85 = type metadata accessor for RecipeTheme;
  sub_21A1EB5B8(v50, type metadata accessor for RecipeTheme);
  LOBYTE(v50) = *(v45 + *(type metadata accessor for CookingModeContentView(0) + 48));
  LODWORD(v86) = v50;
  v51 = type metadata accessor for CookingModeBackgroundView(0);
  *(v44 + v51[5]) = v35 & 1;
  *(v44 + v51[6]) = v50;
  v52 = v51[7];
  *(v44 + v52) = swift_getKeyPath();
  v84 = sub_21A176C98(&qword_27CCFECD8, &unk_21A2FB250);
  swift_storeEnumTagMultiPayload();
  v53 = sub_21A2F5B14();
  LOBYTE(v50) = sub_21A2F6604();
  v81 = sub_21A176C98(&qword_27CD00AF8, &qword_21A3015E8);
  v54 = v44 + *(v81 + 36);
  *v54 = v53;
  *(v54 + 8) = v50;
  v80 = sub_21A176C98(&qword_27CD00B00, &qword_21A3015F0);
  v55 = (v44 + *(v80 + 36));
  v56 = v87;
  *v55 = v88;
  v55[1] = v56;
  v57 = sub_21A2F7344();
  v87 = v58;
  v88 = v57;
  v59 = &v98[*(v97 + 36)];
  swift_getKeyPath();
  v100 = v46;
  sub_21A2F5094();

  sub_21A1E9C2C(v46 + v49, v59, type metadata accessor for RecipeTheme);
  swift_getKeyPath();
  v100 = v46;
  sub_21A2F5094();

  v60 = v46 + v49;
  v61 = v96;
  sub_21A1E9C2C(v60, v96, type metadata accessor for RecipeTheme);
  LOBYTE(v50) = sub_21A22E3D4();
  sub_21A1EB5B8(v61, v85);
  *(v59 + v51[5]) = v50 & 1;
  *(v59 + v51[6]) = v86;
  v62 = v51[7];
  *(v59 + v62) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v63 = sub_21A2F5B14();
  v64 = sub_21A2F6604();
  v65 = v59 + *(v81 + 36);
  *v65 = v63;
  *(v65 + 8) = v64;
  v66 = (v59 + *(v80 + 36));
  v67 = v87;
  *v66 = v88;
  v66[1] = v67;
  v69 = v92;
  v68 = v93;
  v70 = v94;
  (*(v93 + 104))(v92, *MEMORY[0x277CDDDC0], v94);
  v71 = sub_21A1E9D6C(&qword_27CD00B08, &qword_27CD00A98, &qword_21A301548, sub_21A1E9CB4);
  v72 = v89;
  v74 = v97;
  v73 = v98;
  sub_21A2F6DB4();
  (*(v68 + 8))(v69, v70);
  sub_21A1427A8(v73, &qword_27CD00A98, &qword_21A301548);
  sub_21A176C98(&qword_27CCFF500, &qword_21A2FC748);
  sub_21A2F5C04();
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_21A2FC020;
  sub_21A2F5BF4();
  v100 = v74;
  v101 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = v90;
  MEMORY[0x21CED5840](2, v75, v90, OpaqueTypeConformance2);

  return (*(v91 + 8))(v72, v77);
}

uint64_t sub_21A1E23C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_21A176C98(&qword_27CD00BA8, &qword_21A3016B8);
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v54 = v49 - v6;
  v59 = sub_21A176C98(&qword_27CD00BB0, &qword_21A3016C0) - 8;
  MEMORY[0x28223BE20](v59, v7);
  v60 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v56 = v49 - v11;
  v12 = sub_21A176C98(&qword_27CD00BB8, &qword_21A3016C8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v49 - v15;
  v17 = sub_21A176C98(&qword_27CD00BC0, &qword_21A3016D0);
  v18 = *(v17 - 8);
  v52 = v17;
  v53 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = v49 - v20;
  v22 = sub_21A176C98(&qword_27CD00BC8, &qword_21A3016D8);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22, v24);
  v55 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v50 = v49 - v28;
  v51 = *(a1 + *(type metadata accessor for CookingModeContentView(0) + 48));
  v62 = a1;
  v49[1] = a1;
  v63 = v51;
  sub_21A2F65E4();
  sub_21A176C98(&qword_27CD00BD0, &qword_21A3016E0);
  sub_21A1EA508();
  sub_21A2F5634();
  v29 = sub_21A1772F8(&qword_27CD00BF0, &qword_27CD00BB8, &qword_21A3016C8, MEMORY[0x277CDD6E0]);
  sub_21A2F6C44();
  (*(v13 + 8))(v16, v12);
  v30 = *(a1 + 104);
  swift_getKeyPath();
  v64 = v30;
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v31 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region;
  v64 = v12;
  v65 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v50;
  v33 = v52;
  sub_21A2F6C84();
  (*(v53 + 8))(v21, v33);
  swift_getKeyPath();
  v64 = v30;
  sub_21A2F5094();

  LOBYTE(v33) = *(v30 + v31);
  v32[*(sub_21A176C98(&qword_27CD00BF8, &qword_21A301718) + 36)] = v33;
  v32[*(v23 + 44)] = v33;
  v34 = v32;
  v35 = v54;
  sub_21A1E2AC4(v51, v54);
  swift_getKeyPath();
  v64 = v30;
  sub_21A2F5094();

  v36 = sub_21A176D98(&qword_27CD00C00, &qword_21A301720);
  v37 = sub_21A176D98(&qword_27CD00380, &unk_21A2FF810);
  v38 = sub_21A1EA5C0();
  v39 = sub_21A1CDF7C();
  v64 = v36;
  v65 = v37;
  v66 = v38;
  v67 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v56;
  v41 = v57;
  sub_21A2F6C84();
  (*(v58 + 8))(v35, v41);
  swift_getKeyPath();
  v64 = v30;
  sub_21A2F5094();

  LOBYTE(v41) = *(v30 + v31);
  v42 = sub_21A176C98(&qword_27CD00C98, &qword_21A301778);
  v43 = (v41 & 1) == 0;
  *(v40 + *(v42 + 36)) = v43;
  *(v40 + *(v59 + 44)) = v43;
  v44 = v55;
  sub_21A183960(v34, v55, &qword_27CD00BC8, &qword_21A3016D8);
  v45 = v60;
  sub_21A183960(v40, v60, &qword_27CD00BB0, &qword_21A3016C0);
  v46 = v61;
  sub_21A183960(v44, v61, &qword_27CD00BC8, &qword_21A3016D8);
  v47 = sub_21A176C98(&qword_27CD00CA0, &qword_21A301780);
  sub_21A183960(v45, v46 + *(v47 + 48), &qword_27CD00BB0, &qword_21A3016C0);
  sub_21A1427A8(v40, &qword_27CD00BB0, &qword_21A3016C0);
  sub_21A1427A8(v34, &qword_27CD00BC8, &qword_21A3016D8);
  sub_21A1427A8(v45, &qword_27CD00BB0, &qword_21A3016C0);
  return sub_21A1427A8(v44, &qword_27CD00BC8, &qword_21A3016D8);
}

uint64_t sub_21A1E2AC4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v147 = a2;
  v144 = sub_21A2F5B44();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v5);
  v142 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_21A2F5B74();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v7);
  v141 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_21A176C98(&qword_27CD009C0, &qword_21A3130D0);
  MEMORY[0x28223BE20](v151, v9);
  v137 = &v115 - v10;
  v11 = type metadata accessor for CookingModeContentView(0);
  v12 = v11 - 8;
  v133 = *(v11 - 8);
  v155 = *(v133 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v154 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_21A2F59E4();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v15);
  v17 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_21A176C98(&qword_27CD00C50, &qword_21A301758);
  v126 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v18);
  v117 = &v115 - v19;
  v127 = sub_21A176C98(&qword_27CD00C48, &qword_21A301750);
  v153 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v20);
  v120 = &v115 - v21;
  v128 = sub_21A176C98(&qword_27CD00C40, &qword_21A301748);
  v130 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v22);
  v124 = &v115 - v23;
  v131 = sub_21A176C98(&qword_27CD00C38, &qword_21A301740);
  v132 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v24);
  v148 = &v115 - v25;
  v134 = sub_21A176C98(&qword_27CD00C28, &qword_21A301738);
  MEMORY[0x28223BE20](v134, v26);
  v129 = &v115 - v27;
  v135 = sub_21A176C98(&qword_27CD00C18, &qword_21A301730);
  MEMORY[0x28223BE20](v135, v28);
  v149 = &v115 - v29;
  v138 = sub_21A176C98(&qword_27CD00C10, &qword_21A301728);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v30);
  v150 = &v115 - v31;
  v140 = sub_21A176C98(&qword_27CD00C00, &qword_21A301720);
  MEMORY[0x28223BE20](v140, v32);
  v136 = &v115 - v33;
  v156 = v3;
  v157 = a1;
  sub_21A2F65E4();
  sub_21A176C98(&qword_27CD00CA8, &qword_21A301788);
  v34 = sub_21A176D98(&qword_27CD00CB0, &qword_21A301790);
  type metadata accessor for CGRect(255);
  v36 = v35;
  v37 = sub_21A176D98(&qword_27CD00CB8, &qword_21A301798);
  v38 = sub_21A1772F8(&qword_27CD00CC0, &qword_27CD00CB8, &qword_21A301798, MEMORY[0x277CE1198]);
  *&v165 = v37;
  *(&v165 + 1) = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_21A1E90DC(&qword_27CD00CC8, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  *&v165 = v34;
  *(&v165 + 1) = v36;
  *&v166 = OpaqueTypeConformance2;
  *(&v166 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v117;
  sub_21A2F5634();
  v119 = *(v12 + 48);
  MEMORY[0x21CED5C20](v151);
  sub_21A1BEE14();
  sub_21A2F59B4();
  (*(v122 + 8))(v17, v123);
  v116 = v165;
  v42 = v166;
  v43 = BYTE8(v166);
  v44 = *(v3 + 64);
  *&v161 = *(v3 + 56);
  *(&v161 + 1) = v44;
  sub_21A176C98(&qword_27CD00CD0, &qword_21A3017A0);
  sub_21A2F7024();
  v45 = v158;
  v46 = *(v3 + 104);
  swift_getKeyPath();
  v123 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel___observationRegistrar;
  *&v161 = v46;
  v118 = v46;
  v122 = sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v121 = (v46 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep);
  v115 = *(v46 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep);
  v47 = *(v46 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep + 16);
  LOBYTE(v37) = *(v46 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep + 24);
  v48 = v3;
  v49 = *(v3 + 96);
  LOBYTE(v158) = *(v3 + 88);
  *(&v158 + 1) = v49;
  sub_21A176C98(&qword_27CD00CD8, &qword_21A3017D0);
  sub_21A2F7024();
  LOBYTE(v158) = v37;
  v161 = v116;
  *&v162 = v42;
  BYTE8(v162) = v43;
  *v163 = v45;
  *&v163[8] = v115;
  *&v163[24] = v47;
  LOBYTE(v164) = v37;
  v50 = sub_21A1772F8(&qword_27CD00C58, &qword_27CD00C50, &qword_21A301758, MEMORY[0x277CDD6E0]);
  v51 = sub_21A1EAA2C();
  v52 = v120;
  v53 = v125;
  sub_21A2F6D04();
  v167 = *v163;
  v168 = *&v163[16];
  v169 = v164;
  v165 = v161;
  v166 = v162;
  sub_21A1EAA8C(&v165);
  (*(v126 + 1))(v41, v53);
  *&v161 = v53;
  *(&v161 + 1) = &type metadata for StepScrollTargetBehavior;
  *&v162 = v50;
  *(&v162 + 1) = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v124;
  v56 = v127;
  sub_21A2F6C44();
  (*(v153 + 1))(v52, v56);
  v153 = type metadata accessor for CookingModeContentView;
  v152 = v48;
  v57 = v154;
  sub_21A1E9C2C(v48, v154, type metadata accessor for CookingModeContentView);
  v58 = (*(v133 + 80) + 16) & ~*(v133 + 80);
  v59 = swift_allocObject();
  v126 = type metadata accessor for CookingModeContentView;
  sub_21A1EB0DC(v57, v59 + v58, type metadata accessor for CookingModeContentView);
  *&v161 = v56;
  *(&v161 + 1) = v54;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v128;
  sub_21A2F6CE4();

  (*(v130 + 8))(v55, v61);
  v62 = v154;
  v63 = v153;
  sub_21A1E9C2C(v48, v154, v153);
  v64 = swift_allocObject();
  v65 = v62;
  sub_21A1EB0DC(v62, v64 + v58, type metadata accessor for CookingModeContentView);
  *&v161 = v61;
  *(&v161 + 1) = v60;
  swift_getOpaqueTypeConformance2();
  sub_21A1A638C();
  v66 = v129;
  v67 = v131;
  v68 = v148;
  sub_21A2F6BF4();

  (*(v132 + 8))(v68, v67);
  v69 = v152;
  sub_21A1E9C2C(v152, v65, v63);
  v133 = v58;
  v70 = swift_allocObject();
  v71 = v70 + v58;
  v72 = v65;
  v73 = v126;
  sub_21A1EB0DC(v65, v71, v126);
  v74 = swift_allocObject();
  *(v74 + 16) = sub_21A1EABE4;
  *(v74 + 24) = v70;
  v75 = (v66 + *(v134 + 36));
  *v75 = sub_21A1EAC54;
  v75[1] = v74;
  v76 = v69;
  v77 = v137;
  sub_21A2F71A4();
  sub_21A2F7434();
  sub_21A1EA818();
  v78 = v149;
  sub_21A2F6BA4();
  sub_21A1427A8(v77, &qword_27CD009C0, &qword_21A3130D0);
  sub_21A1427A8(v66, &qword_27CD00C28, &qword_21A301738);
  KeyPath = swift_getKeyPath();
  v80 = *(v76 + 32);
  v81 = *(v76 + 40);
  v82 = *(v76 + 48);
  v161 = *(v76 + 16);
  *&v162 = v80;
  BYTE8(v162) = v81;
  *v163 = v82;
  v151 = sub_21A176C98(&qword_27CD00CE0, &qword_21A301800);
  sub_21A2F7024();
  v83 = v159;
  v84 = v160;
  v85 = v135;
  v86 = &v78[*(v135 + 36)];
  *v86 = KeyPath;
  *(v86 + 8) = v158;
  *(v86 + 3) = v83;
  v86[32] = v84;
  swift_getKeyPath();
  *&v161 = v118;
  sub_21A2F5094();

  v87 = *(v121 + 2);
  v88 = *(v121 + 24);
  v161 = *v121;
  *&v162 = v87;
  BYTE8(v162) = v88;
  v89 = v72;
  v90 = v72;
  v91 = v153;
  sub_21A1E9C2C(v76, v90, v153);
  v92 = v133;
  v93 = swift_allocObject();
  v94 = v73;
  sub_21A1EB0DC(v89, v93 + v92, v73);
  v95 = sub_21A176C98(&qword_27CD00380, &unk_21A2FF810);
  v96 = sub_21A1EA724();
  v97 = sub_21A1CDF7C();
  v137 = v95;
  v148 = v97;
  v98 = v149;
  sub_21A2F6E74();

  sub_21A1427A8(v98, &qword_27CD00C18, &qword_21A301730);
  v99 = v154;
  sub_21A1E9C2C(v152, v154, v91);
  v100 = swift_allocObject();
  v101 = v99;
  sub_21A1EB0DC(v99, v100 + v92, v94);
  *&v161 = v85;
  *(&v161 + 1) = v95;
  *&v162 = v96;
  *(&v162 + 1) = v97;
  swift_getOpaqueTypeConformance2();
  v102 = v136;
  v103 = v138;
  v104 = v150;
  sub_21A2F6CA4();

  (*(v139 + 8))(v104, v103);
  v105 = v152;
  sub_21A1E9C2C(v152, v101, v153);
  v106 = swift_allocObject();
  sub_21A1EB0DC(v101, v106 + v92, v94);
  v107 = swift_allocObject();
  *(v107 + 16) = sub_21A1EAD5C;
  *(v107 + 24) = v106;
  v108 = (v102 + *(v140 + 36));
  *v108 = sub_21A1A693C;
  v108[1] = v107;
  v109 = v142;
  sub_21A2F5B34();
  v110 = v141;
  sub_21A2F5B54();
  (*(v143 + 8))(v109, v144);
  v111 = *(v105 + 32);
  v112 = *(v105 + 40);
  v113 = *(v105 + 48);
  v161 = *(v105 + 16);
  *&v162 = v111;
  BYTE8(v162) = v112;
  *v163 = v113;
  sub_21A2F7024();
  v161 = v158;
  *&v162 = v159;
  BYTE8(v162) = v160;
  sub_21A1EA5C0();
  sub_21A2F6BD4();
  (*(v145 + 8))(v110, v146);
  return sub_21A1427A8(v102, &qword_27CD00C00, &qword_21A301720);
}

uint64_t sub_21A1E3DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_21A176C98(&qword_27CD00B60, &qword_21A301638);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v21 - v5;
  v7 = sub_21A176C98(&qword_27CD00B68, &qword_21A301640);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v21 - v10;
  v12 = sub_21A2F6204();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = sub_21A176C98(&qword_27CD00B70, &qword_21A301648);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v21 - v17;
  sub_21A2F61F4();
  v21[8] = a1;
  sub_21A1A6E1C();
  sub_21A2F56B4();
  sub_21A2F61C4();
  v21[4] = a1;
  sub_21A176C98(&qword_27CD00B78, &unk_21A301650);
  sub_21A1E9FAC();
  sub_21A2F56B4();
  v19 = *(v3 + 48);
  (*(v15 + 16))(v6, v18, v14);
  (*(v8 + 16))(&v6[v19], v11, v7);
  sub_21A2F6024();
  (*(v8 + 8))(v11, v7);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_21A1E40BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 104);
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A1E4180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = type metadata accessor for CircularButtonStyle(0);
  MEMORY[0x28223BE20](v35, v3);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CookingModeContentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v10 = sub_21A176C98(&qword_27CD00B88, &qword_21A3105A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - v13;
  v36 = sub_21A176C98(&qword_27CD00BA0, &qword_21A301660);
  v15 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v16);
  v18 = &v34 - v17;
  v34 = a1;
  sub_21A1E9C2C(a1, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CookingModeContentView);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_21A1EB0DC(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for CookingModeContentView);
  sub_21A2F7094();
  *v5 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8, &unk_21A2FB250);
  swift_storeEnumTagMultiPayload();
  v21 = *(v35 + 20);
  *(v5 + v21) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0, &unk_21A2FCEA0);
  swift_storeEnumTagMultiPayload();
  sub_21A1772F8(&qword_27CD00B90, &qword_27CD00B88, &qword_21A3105A0, MEMORY[0x277CDF028]);
  sub_21A1E90DC(&qword_27CD00B98, type metadata accessor for CircularButtonStyle, &unk_21A2FCD94);
  sub_21A2F6AD4();
  sub_21A1EB5B8(v5, type metadata accessor for CircularButtonStyle);
  (*(v11 + 8))(v14, v10);
  v22 = sub_21A2F6654();
  if ((sub_21A2F72E4() & 1) == 0)
  {
    sub_21A1E4730();
  }

  sub_21A2F55A4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v37;
  (*(v15 + 32))(v37, v18, v36);
  result = sub_21A176C98(&qword_27CD00B78, &unk_21A301650);
  v33 = v31 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

void sub_21A1E45F4(uint64_t a1)
{
  v1 = *(a1 + 104);
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 32);
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    sub_21A18FAD4(v3, v2, 0, 0, 0, 0, 0x60u);
  }
}

uint64_t sub_21A1E46F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F6F94();
  *a1 = result;
  return result;
}

double sub_21A1E4730()
{
  v1 = sub_21A2F5ED4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_21A2F7DE4();
    v7 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 80.0;
  if (v6)
  {
    return 8.0;
  }

  return result;
}

uint64_t sub_21A1E4888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A2F5F44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F7344();
  sub_21A2F57C4();
  v23[0] = v23[1];
  v7 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  sub_21A176C98(&qword_27CD00B40, &qword_21A301610);
  (*(v3 + 104))(v6, *MEMORY[0x277CE00F0], v2);
  sub_21A2F6FB4();
  sub_21A2F6B54();

  *a1 = v23[0];
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  v12 = sub_21A2F7344();
  v14 = v13;
  v15 = a1 + *(sub_21A176C98(&qword_27CD00B48, &qword_21A301618) + 36);
  sub_21A176C98(&qword_27CD00290, &qword_21A301620);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21A2FEED0;
  *(v16 + 32) = sub_21A2F6F04();
  *(v16 + 40) = sub_21A2F6F14();
  sub_21A2F7434();
  sub_21A2F7444();
  MEMORY[0x21CED5D30](v16);
  sub_21A2F5954();
  v17 = *(sub_21A176C98(&qword_27CD00B50, &qword_21A301628) + 36);
  v18 = *MEMORY[0x277CE13C0];
  v19 = sub_21A2F73B4();
  (*(*(v19 - 8) + 104))(v15 + v17, v18, v19);
  v20 = v30;
  *v15 = v29;
  *(v15 + 16) = v20;
  *(v15 + 32) = v31;
  result = sub_21A176C98(&qword_27CD00B58, &qword_21A301630);
  v22 = (v15 + *(result + 36));
  *v22 = v12;
  v22[1] = v14;
  return result;
}

uint64_t sub_21A1E4B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  *a3 = sub_21A2F7344();
  a3[1] = v6;
  sub_21A176C98(&qword_27CD00D10, &qword_21A3018D8);
  sub_21A1E4C44(a1);
  v7 = sub_21A2F65F4();
  sub_21A1E5124(v3);
  sub_21A2F55A4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = sub_21A176C98(&qword_27CD00BD0, &qword_21A3016E0);
  v17 = a3 + *(result + 36);
  *v17 = v7;
  *(v17 + 1) = v9;
  *(v17 + 2) = v11;
  *(v17 + 3) = v13;
  *(v17 + 4) = v15;
  v17[40] = 0;
  return result;
}

uint64_t sub_21A1E4C44(uint64_t *a1)
{
  v2 = type metadata accessor for IngredientsColumnsView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21A176C98(&qword_27CD00D18, &qword_21A3018E0);
  MEMORY[0x28223BE20](v27, v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for IngredientsView(0);
  MEMORY[0x28223BE20](v9, v10);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A2F5ED4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (*(a1 + 8) != 1)
  {

    sub_21A2F7DE4();
    v20 = sub_21A2F65B4();
    v25 = v8;
    v21 = v2;
    v22 = v20;
    sub_21A2F53B4();

    v2 = v21;
    v8 = v25;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v17, 0);
    (*(v13 + 8))(v16, v12);
    if (v28 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    swift_getKeyPath();
    sub_21A1E90DC(&qword_27CCFFA78, type metadata accessor for IngredientsViewModel, &unk_21A2FD688);
    v23 = v26;
    sub_21A2F7754();
    sub_21A1E9C2C(v23, v8, type metadata accessor for IngredientsView);
    swift_storeEnumTagMultiPayload();
    sub_21A1E90DC(&qword_27CD00D20, type metadata accessor for IngredientsView, &unk_21A30E8F4);
    sub_21A1E90DC(&qword_27CD00D28, type metadata accessor for IngredientsColumnsView, &unk_21A305078);
    sub_21A2F6114();
    v18 = type metadata accessor for IngredientsView;
    v19 = v23;
    return sub_21A1EB5B8(v19, v18);
  }

  if (v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CCFFA78, type metadata accessor for IngredientsViewModel, &unk_21A2FD688);
  sub_21A2F7754();
  v5[*(v2 + 20)] = 1;
  sub_21A1E9C2C(v5, v8, type metadata accessor for IngredientsColumnsView);
  swift_storeEnumTagMultiPayload();
  sub_21A1E90DC(&qword_27CD00D20, type metadata accessor for IngredientsView, &unk_21A30E8F4);
  sub_21A1E90DC(&qword_27CD00D28, type metadata accessor for IngredientsColumnsView, &unk_21A305078);
  sub_21A2F6114();
  v18 = type metadata accessor for IngredientsColumnsView;
  v19 = v5;
  return sub_21A1EB5B8(v19, v18);
}

double sub_21A1E5124(char a1)
{
  v3 = sub_21A2F5ED4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  if (*(v1 + 8) != 1)
  {

    sub_21A2F7DE4();
    v9 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v8, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v8) = v11[15];
  }

  result = 100.0;
  if (a1)
  {
    result = 200.0;
  }

  if (v8)
  {
    return 32.0;
  }

  return result;
}

uint64_t sub_21A1E529C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v36 = a3;
  v5 = type metadata accessor for CookingModeContentView(0);
  v33 = *(v5 - 8);
  v31[1] = *(v33 + 64);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A2F6144();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A176C98(&qword_27CD00CB8, &qword_21A301798);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v31 - v15;
  v17 = sub_21A176C98(&qword_27CD00CB0, &qword_21A301790);
  v18 = *(v17 - 8);
  v34 = v17;
  v35 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = v31 - v20;
  *v16 = sub_21A2F6004();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v22 = sub_21A176C98(&qword_27CD00CE8, &qword_21A301860);
  sub_21A1E5740(a1, v3, &v16[*(v22 + 44)]);
  strcpy(v38, "instructions");
  BYTE5(v38[1]) = 0;
  HIWORD(v38[1]) = -5120;
  sub_21A2F6324();
  v23 = sub_21A1772F8(&qword_27CD00CC0, &qword_27CD00CB8, &qword_21A301798, MEMORY[0x277CE1198]);
  sub_21A2F6BB4();
  (*(v9 + 8))(v12, v8);
  sub_21A1427A8(v16, &qword_27CD00CB8, &qword_21A301798);
  type metadata accessor for CGRect(0);
  v24 = *(a1 + 80);
  v38[0] = *(a1 + 72);
  v38[1] = v24;
  sub_21A176C98(&qword_27CCFF4D8, &qword_21A316040);
  sub_21A2F7024();
  v25 = v37;
  *(swift_allocObject() + 16) = v25;
  v26 = v32;
  sub_21A1E9C2C(a1, v32, type metadata accessor for CookingModeContentView);
  v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v28 = swift_allocObject();
  sub_21A1EB0DC(v26, v28 + v27, type metadata accessor for CookingModeContentView);
  v38[0] = v13;
  v38[1] = v23;
  swift_getOpaqueTypeConformance2();
  sub_21A1E90DC(&qword_27CD00CC8, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  v29 = v34;
  sub_21A2F6BF4();

  return (*(v35 + 8))(v21, v29);
}

uint64_t sub_21A1E5740@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_21A176C98(&qword_27CD00D00, &qword_21A301878);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v33 - v12;
  v14 = *(a1 + 104);
  *(v13 + 3) = type metadata accessor for CookingModeViewModel(0);
  *(v13 + 4) = &off_282B2FAC0;
  *v13 = v14;
  *(v13 + 20) = 256;
  sub_21A1D4544();

  sub_21A2F55D4();
  v15 = type metadata accessor for InstructionsView(0);
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CCFFF70, type metadata accessor for InstructionsViewModel, &unk_21A2FE7B4);
  sub_21A2F7754();
  v16 = &v13[*(v15 + 36)];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &v13[*(v15 + 40)];
  KeyPath = swift_getKeyPath();
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *v17 = KeyPath;
  *(v17 + 12) = 0;
  LOBYTE(v15) = sub_21A2F65F4();
  sub_21A1E5124(a2);
  sub_21A2F55A4();
  v19 = &v13[*(v6 + 44)];
  *v19 = v15;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = sub_21A2F6F14();
  sub_21A1E5A00();
  sub_21A2F7344();
  sub_21A2F57C4();
  v34 = v37;
  v35 = v9;
  LOBYTE(a1) = v38;
  v25 = v39;
  LOBYTE(v15) = v40;
  v27 = v41;
  v26 = v42;
  sub_21A183960(v13, v9, &qword_27CD00D00, &qword_21A301878);
  v28 = v9;
  v29 = v36;
  sub_21A183960(v28, v36, &qword_27CD00D00, &qword_21A301878);
  v30 = v29 + *(sub_21A176C98(&qword_27CD00D08, &qword_21A3018A8) + 48);
  v31 = v34;
  *v30 = v24;
  *(v30 + 8) = v31;
  *(v30 + 16) = a1;
  *(v30 + 24) = v25;
  *(v30 + 32) = v15;
  *(v30 + 40) = v27;
  *(v30 + 48) = v26;

  sub_21A1427A8(v13, &qword_27CD00D00, &qword_21A301878);

  return sub_21A1427A8(v35, &qword_27CD00D00, &qword_21A301878);
}

void sub_21A1E5A00()
{
  v1 = *(v0 + 104);
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v2 = v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex;
  v3 = *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex);
  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex + 8);
  v5 = *(v2 + 16);
  sub_21A176C98(&qword_27CD00CD0, &qword_21A3017A0);
  sub_21A2F7024();
  if (*(v13 + 16) && (v6 = sub_21A25A67C(v3, v4, v5), (v7 & 1) != 0))
  {
    v8 = *(v13 + 56) + 32 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);

    sub_21A176C98(&qword_27CCFF4D8, &qword_21A316040);
    sub_21A2F7024();
    v14.origin.x = v9;
    v14.origin.y = v10;
    v14.size.width = v11;
    v14.size.height = v12;
    CGRectGetHeight(v14);
  }

  else
  {
  }
}

double sub_21A1E5B9C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_21A2F6144();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F6314();
  sub_21A2F5824();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  result = -v12;
  *a1 = v10;
  *(a1 + 8) = -v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = a2;
  return result;
}

uint64_t sub_21A1E5CAC(uint64_t result, CGFloat *a2, uint64_t a3)
{
  v5 = a2[2];
  v6 = a2[3];
  if (v6 <= 0.0 || *(result + 16) != v5 || *(result + 24) != v6)
  {
    return result;
  }

  v10 = a2[1];
  v106 = *a2;
  v11 = *(a3 + 96);
  LOBYTE(v107) = *(a3 + 88);
  v108 = v11;
  sub_21A176C98(&qword_27CD00CD8, &qword_21A3017D0);
  sub_21A2F7024();
  result = sub_21A2F5674();
  if (result)
  {
    return result;
  }

  v103 = a3;
  v104 = *(a3 + 56);
  v108 = *(a3 + 64);
  sub_21A176C98(&qword_27CD00CD0, &qword_21A3017A0);
  sub_21A2F7024();
  v12 = *v110;
  v13 = MEMORY[0x277D84F98];
  v107 = MEMORY[0x277D84F98];
  v14 = *v110 + 64;
  v15 = 1 << *(*v110 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*v110 + 64);
  v18 = (v15 + 63) >> 6;
  sub_21A2F5434();
  v19 = 0;
  while (v17)
  {
LABEL_18:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v19 << 6);
    v23 = (*(*v110 + 48) + 24 * v22);
    v3 = *v23;
    v4 = v23[1];
    v24 = v23[2];
    v25 = *(*v110 + 56) + 32 * v22;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v111.origin.x = *v25;
    v111.origin.y = v27;
    v111.size.width = v28;
    v111.size.height = v29;
    v30 = ceil(CGRectGetMinY(v111));
    v112.origin.x = v106;
    v112.origin.y = v10;
    v112.size.width = v5;
    v112.size.height = v6;
    if (floor(CGRectGetMinY(v112)) <= v30)
    {
      v113.origin.x = v26;
      v113.origin.y = v27;
      v113.size.width = v28;
      v113.size.height = v29;
      v31 = floor(CGRectGetMaxY(v113));
      v114.origin.x = v106;
      v114.origin.y = v10;
      v114.size.width = v5;
      v114.size.height = v6;
      if (v31 <= ceil(CGRectGetMaxY(v114)))
      {
        v115.origin.x = v26;
        v115.origin.y = v27;
        v115.size.width = v28;
        v115.size.height = v29;
        MinY = CGRectGetMinY(v115);
        v116.origin.x = v106;
        v116.origin.y = v10;
        v116.size.width = v5;
        v116.size.height = v6;
        v33 = CGRectGetMinY(v116);
        v34 = *(v13 + 2);
        if (*(v13 + 3) <= v34)
        {
          sub_21A26E9F4(v34 + 1, 1);
          v13 = v107;
        }

        sub_21A1EADCC(v3, v4, v24, v13, MinY - v33);
      }
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_18;
    }
  }

  v20 = (v13 + 64);
  v35 = 1 << v13[32];
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v13 + 8);
  if (v37)
  {
    v38 = 0;
    v39 = __clz(__rbit64(v37));
    v40 = (v37 - 1) & v37;
    v41 = (v35 + 63) >> 6;
LABEL_31:
    v45 = *(v13 + 6);
    v46 = *(v13 + 7);
    v47 = (v45 + 24 * v39);
    v48 = *v47;
    v49 = v47[1];
    v50 = v47[2];
    v51 = *(v46 + 8 * v39);
    if (!v40)
    {
      goto LABEL_33;
    }

    do
    {
      v52 = v38;
LABEL_37:
      v53 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v54 = v53 | (v52 << 6);
      v55 = (v45 + 24 * v54);
      if (*(v46 + 8 * v54) < v51)
      {
        v48 = *v55;
        v49 = v55[1];
        v50 = v55[2];
        v51 = *(v46 + 8 * v54);
      }
    }

    while (v40);
LABEL_33:
    while (1)
    {
      v52 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_91;
      }

      if (v52 >= v41)
      {
        v100 = v50;
        v101 = v49;
        v102 = v48;

        v99 = 0;
        goto LABEL_42;
      }

      v40 = *(v20 + 8 * v52);
      ++v38;
      if (v40)
      {
        v38 = v52;
        goto LABEL_37;
      }
    }
  }

  v42 = 0;
  v43 = 0;
  v41 = (v35 + 63) >> 6;
  while (v41 - 1 != v43)
  {
    v38 = v43 + 1;
    v44 = *&v13[8 * v43 + 72];
    v42 -= 64;
    ++v43;
    if (v44)
    {
      v40 = (v44 - 1) & v44;
      v39 = __clz(__rbit64(v44)) - v42;
      goto LABEL_31;
    }
  }

  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 1;
LABEL_42:
  v107 = v104;
  sub_21A2F7024();
  v19 = *v110;
  sub_21A176C98(&qword_27CD00CF0, &qword_21A301868);
  v56 = sub_21A2F8174();
  v13 = v56;
  v14 = 0;
  v57 = 1 << *(*v110 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v17 = *v110 + 64;
  v12 = v58 & *(*v110 + 64);
  v59 = (v57 + 63) >> 6;
  v60 = v56 + 64;
  if (!v12)
  {
LABEL_46:
    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_90;
      }

      if (v14 >= v59)
      {

        v69 = 1 << v13[32];
        v70 = -1;
        if (v69 < 64)
        {
          v70 = ~(-1 << v69);
        }

        v71 = v70 & *(v13 + 8);
        if (v71)
        {
          v72 = 0;
          v73 = __clz(__rbit64(v71));
          v74 = (v71 - 1) & v71;
          v20 = (v69 + 63) >> 6;
LABEL_62:
          v78 = *(v13 + 6);
          v79 = *(v13 + 7);
          v80 = (v78 + 24 * v73);
          v82 = *v80;
          v81 = v80[1];
          v14 = v80[2];
          v83 = *(v79 + 8 * v73);
          if (!v74)
          {
            goto LABEL_64;
          }

          do
          {
            v84 = v72;
LABEL_68:
            v85 = __clz(__rbit64(v74));
            v74 &= v74 - 1;
            v86 = v85 | (v84 << 6);
            v87 = (v78 + 24 * v86);
            if (v83 < *(v79 + 8 * v86))
            {
              v82 = *v87;
              v81 = v87[1];
              v14 = v87[2];
              v83 = *(v79 + 8 * v86);
            }
          }

          while (v74);
LABEL_64:
          while (1)
          {
            v84 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              goto LABEL_92;
            }

            if (v84 >= v20)
            {

              v88 = 0;
              goto LABEL_73;
            }

            v74 = *(v60 + 8 * v84);
            ++v72;
            if (v74)
            {
              v72 = v84;
              goto LABEL_68;
            }
          }
        }

        v75 = 0;
        v76 = 0;
        v20 = (v69 + 63) >> 6;
        while (v20 - 1 != v76)
        {
          v72 = v76 + 1;
          v77 = *&v13[8 * v76 + 72];
          v75 -= 64;
          ++v76;
          if (v77)
          {
            v74 = (v77 - 1) & v77;
            v73 = __clz(__rbit64(v77)) - v75;
            goto LABEL_62;
          }
        }

        v82 = 0;
        v81 = 0;
        v14 = 0;
        v88 = 1;
LABEL_73:
        sub_21A176C98(&qword_27CD00CF8, &qword_21A301870);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21A2FEED0;
        v12 = v102;
        v3 = v101;
        *(inited + 32) = v102;
        *(inited + 40) = v101;
        v4 = v100;
        *(inited + 48) = v100;
        *(inited + 56) = v99;
        *(inited + 64) = v82;
        *(inited + 72) = v81;
        *(inited + 80) = v14;
        *(inited + 88) = v88;
        if (v99)
        {

          v13 = MEMORY[0x277D84F90];
          if ((v88 & 1) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_83;
        }

        v17 = inited;
        v13 = sub_21A1B7460(0, 1, 1, MEMORY[0x277D84F90]);
        v14 = *(v13 + 2);
        v20 = *(v13 + 3);
        v19 = v14 + 1;
        if (v14 >= v20 >> 1)
        {
          goto LABEL_94;
        }

        goto LABEL_77;
      }

      v62 = *(v17 + 8 * v14);
      ++v20;
      if (v62)
      {
        v61 = __clz(__rbit64(v62));
        v12 = (v62 - 1) & v62;
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v61 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_51:
    v3 = v61 | (v14 << 6);
    v4 = 24 * v3;
    v63 = *(v19 + 48) + 24 * v3;
    v105 = *v63;
    v64 = *(v63 + 16);
    v118.origin.x = v106;
    v118.origin.y = v10;
    v118.size.width = v5;
    v118.size.height = v6;
    v117 = CGRectIntersection(*(*(v19 + 56) + 32 * v3), v118);
    Height = CGRectGetHeight(v117);
    *(v60 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
    v66 = *(v13 + 6) + 24 * v3;
    *v66 = v105;
    *(v66 + 16) = v64;
    *(*(v13 + 7) + 8 * v3) = Height;
    v67 = *(v13 + 2);
    v68 = __OFADD__(v67, 1);
    v20 = v67 + 1;
    if (v68)
    {
      break;
    }

    *(v13 + 2) = v20;
    if (!v12)
    {
      goto LABEL_46;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  v13 = sub_21A1B7460((v20 > 1), v19, 1, v13);
LABEL_77:
  v90 = v17;
  *(v13 + 2) = v19;
  v91 = &v13[24 * v14];
  *(v91 + 4) = v12;
  *(v91 + 5) = v3;
  *(v91 + 6) = v4;
  v92 = *(v17 + 88);
  v82 = v90[8];
  v81 = v90[9];
  v14 = v90[10];

  if ((v92 & 1) == 0)
  {
LABEL_78:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_21A1B7460(0, *(v13 + 2) + 1, 1, v13);
    }

    v94 = *(v13 + 2);
    v93 = *(v13 + 3);
    if (v94 >= v93 >> 1)
    {
      v13 = sub_21A1B7460((v93 > 1), v94 + 1, 1, v13);
    }

    *(v13 + 2) = v94 + 1;
    v95 = &v13[24 * v94];
    *(v95 + 4) = v82;
    *(v95 + 5) = v81;
    *(v95 + 6) = v14;
  }

LABEL_83:
  sub_21A1E6650(v13, &v107);

  if (v109)
  {
    v96 = *(v103 + 104);
    swift_getKeyPath();
    *v110 = v96;
    sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5094();
  }

  v97 = sub_21A2F7374();
  MEMORY[0x28223BE20](v97, v98);
  sub_21A2F58E4();
}

unint64_t sub_21A1E6650@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = *(result + 40);
    v5 = *(result + 48);
    v6 = v2 - 1;
    if (v6)
    {
      v7 = (result + 72);
      do
      {
        v8 = *(v7 - 2);
        v9 = *(v7 - 1);
        v11 = *v7;
        v7 += 3;
        v10 = v11;
        result = v9 < v4;
        v12 = v11 < v5;
        if (v11 >= v5)
        {
          v10 = v5;
        }

        if (((v8 < v3) & result) != 0)
        {
          v5 = v10;
        }

        if (((v8 < v3) & result & v12) != 0)
        {
          v3 = v8;
          v4 = v9;
        }

        --v6;
      }

      while (v6);
    }

    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t sub_21A1E66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  sub_21A176C98(&qword_27CD00CE0, &qword_21A301800);
  sub_21A2F7034();
}

void sub_21A1E6760(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (qword_27CCFE7F0 != -1)
  {
    swift_once();
  }

  v2 = qword_27CCFFB50;
  v3 = xmmword_27CCFFB58;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v4 = *(v1 + 40);
  if (v4)
  {
    v5 = *(v1 + 32);
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    sub_21A18FAD4(v2, v3, *(&v3 + 1), v5, v4, 2, 0x60u);
  }
}

uint64_t sub_21A1E6908(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 104);
    swift_getKeyPath();
    sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5094();

    if ((*(v2 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 24) & 1) == 0)
    {

      sub_21A176C98(&qword_27CD00CE0, &qword_21A301800);
      sub_21A2F7034();

      sub_21A2F7434();
      swift_getKeyPath();
      sub_21A2F5094();

      swift_getKeyPath();
      sub_21A2F50B4();

      sub_21A1BEE14();
      sub_21A2F59D4();
      swift_getKeyPath();
      sub_21A2F50A4();
    }
  }

  return result;
}

void sub_21A1E6B14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v26 = sub_21A2F6494();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CookingModeContentView(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  if ((a2[3] & 1) == 0)
  {
    v13 = a2[1];
    v14 = a2[2];
    v25 = v5;
    v15 = *a2;
    v24[0] = v12;
    v16 = sub_21A2F7374();
    MEMORY[0x28223BE20](v16, v17);
    v24[-4] = a3;
    v24[-3] = v15;
    v24[-2] = v13;
    v24[-1] = v14;
    sub_21A2F58E4();
    v24[1] = 0;

    v18 = sub_21A2F7384();
    v24[2] = v24;
    MEMORY[0x28223BE20](v18, v19);
    v24[-6] = a3;
    v24[-5] = v15;
    v20 = v13;
    v24[-4] = v13;
    v24[-3] = v14;
    LOBYTE(v24[-2]) = 2;
    sub_21A1E9C2C(a3, v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CookingModeContentView);
    v21 = (*(v24[0] + 80) + 16) & ~*(v24[0] + 80);
    v22 = swift_allocObject();
    sub_21A1EB0DC(v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for CookingModeContentView);
    v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v15;
    v23[1] = v20;
    v23[2] = v14;
    sub_21A2F6484();
    sub_21A2F58D4();

    (*(v25 + 8))(v8, v26);
  }
}

double sub_21A1E6E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_21A176C98(&qword_27CD00CE0, &qword_21A301800);
  sub_21A2F7034();

  return result;
}

double sub_21A1E6ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_21A2F7434();
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  swift_getKeyPath();
  sub_21A2F50B4();

  sub_21A1BEE14();
  sub_21A2F59D4();
  swift_getKeyPath();
  sub_21A2F50A4();

  return result;
}

void sub_21A1E703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 104);
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v8 = *(v7 + 40);
  if (v8)
  {
    v9 = *(v7 + 32);
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    sub_21A18FAD4(a2, a3, a4, v9, v8, 3, 0x60u);
  }
}

void sub_21A1E7154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = sub_21A2F59E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a3 + 96);
  LOBYTE(v19) = *(a3 + 88);
  v20 = v10;
  v23 = v4;
  sub_21A176C98(&qword_27CD00CD8, &qword_21A3017D0);
  sub_21A2F7034();
  if (sub_21A2F5674())
  {
    v11 = *(a3 + 104);
    swift_getKeyPath();
    v19 = v11;
    sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5094();

    (*(v6 + 16))(v9, v11 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollPosition, v5);
    sub_21A1BEE14();
    sub_21A2F59B4();
    (*(v6 + 8))(v9, v5);
    if (v22 == 2)
    {
      v12 = v19;
      v13 = v20;
      v14 = v21;
      v15 = v11 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep;
      if ((*(v11 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 24) & 1) == 0 && *v15 == v19 && *(v15 + 8) == v20 && *(v15 + 16) == v21)
      {
        *v15 = v19;
        *(v15 + 8) = v13;
        *(v15 + 16) = v14;
        *(v15 + 24) = 0;
        v19 = v12;
        v20 = v13;
        v21 = v14;
        v22 = 0;
        sub_21A1F04C8(&v19);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath, v17);
        *&v18[-48] = v11;
        *&v18[-40] = v12;
        *&v18[-32] = v13;
        *&v18[-24] = v14;
        v18[-16] = 0;
        v19 = v11;
        sub_21A2F5084();
      }
    }
  }
}

uint64_t sub_21A1E7428(uint64_t a1, uint64_t a2)
{
  sub_21A2F5434();
  sub_21A176C98(&qword_27CD00CD0, &qword_21A3017A0);
  return sub_21A2F7034();
}

uint64_t sub_21A1E7490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8, a2);
  sub_21A1E9C2C(v3, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CookingModeContentView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_21A1EB0DC(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for CookingModeContentView);
  *a3 = sub_21A1E981C;
  a3[1] = v8;
  return result;
}

uint64_t sub_21A1E75A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v53 = a1;
  v60 = a5;
  v8 = sub_21A176C98(&qword_27CD00A08, &qword_21A3014B8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - v10;
  v59 = sub_21A176C98(&qword_27CD00A10, &qword_21A3014C0);
  MEMORY[0x28223BE20](v59, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v52 = &v50 - v17;
  v56 = sub_21A176C98(&qword_27CD00A18, &qword_21A3014C8);
  MEMORY[0x28223BE20](v56, v18);
  v58 = &v50 - v19;
  v55 = sub_21A2F61B4();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A176C98(&qword_27CD00A20, &qword_21A3014D0);
  MEMORY[0x28223BE20](v54, v23);
  v25 = &v50 - v24;
  v57 = sub_21A176C98(&qword_27CD00A28, &qword_21A3014D8);
  v51 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v26);
  v28 = &v50 - v27;
  if (sub_21A2F72E4())
  {
    *&v65 = a2;
    *(&v65 + 1) = a3;
    LOBYTE(v66) = a4 & 1;
    sub_21A176C98(&qword_27CD00A30, &qword_21A3014E0);
    v29 = sub_21A2F71A4();
    MEMORY[0x28223BE20](v29, v30);
    *&v65 = v31;
    *(&v65 + 1) = v32;
    LOBYTE(v66) = v33;
    sub_21A176C98(&qword_27CD00A60, &qword_21A301520);
    sub_21A1E97C8();
    sub_21A1772F8(&qword_27CD00A70, &qword_27CD00A60, &qword_21A301520, MEMORY[0x277CE14C0]);
    sub_21A2F7154();
    v34 = v54;
    *&v25[*(v54 + 36)] = 257;
    sub_21A2F61A4();
    v35 = sub_21A1E9648();
    v36 = MEMORY[0x277CDE058];
    v37 = v55;
    sub_21A2F6AF4();
    (*(v50 + 8))(v22, v37);
    sub_21A1427A8(v25, &qword_27CD00A20, &qword_21A3014D0);
    v38 = v51;
    v39 = v57;
    (*(v51 + 16))(v58, v28, v57);
    swift_storeEnumTagMultiPayload();
    *&v65 = v34;
    *(&v65 + 1) = v37;
    *&v66 = v35;
    *(&v66 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    sub_21A1E9700();
    sub_21A2F6114();
    return (*(v38 + 8))(v28, v39);
  }

  else
  {
    *&v65 = a2;
    *(&v65 + 1) = a3;
    LOBYTE(v66) = a4 & 1;
    sub_21A176C98(&qword_27CD00A30, &qword_21A3014E0);
    sub_21A2F71A4();
    v41 = v62;
    v42 = v63;
    *v11 = v61;
    *(v11 + 1) = v41;
    v11[16] = v42;
    sub_21A1E7CE4(&v11[*(v8 + 52)]);
    v43 = *(v8 + 56);
    *&v11[v43] = swift_getKeyPath();
    sub_21A176C98(&qword_27CCFEEA0, &unk_21A2FCEA0);
    swift_storeEnumTagMultiPayload();
    sub_21A2F7344();
    sub_21A2F5C14();
    sub_21A149B18(v11, v14, &qword_27CD00A08, &qword_21A3014B8);
    v44 = &v14[*(v59 + 36)];
    v45 = v70;
    *(v44 + 4) = v69;
    *(v44 + 5) = v45;
    *(v44 + 6) = v71;
    v46 = v66;
    *v44 = v65;
    *(v44 + 1) = v46;
    v47 = v68;
    *(v44 + 2) = v67;
    *(v44 + 3) = v47;
    v48 = v52;
    sub_21A149B18(v14, v52, &qword_27CD00A10, &qword_21A3014C0);
    sub_21A183960(v48, v58, &qword_27CD00A10, &qword_21A3014C0);
    swift_storeEnumTagMultiPayload();
    v49 = sub_21A1E9648();
    v61 = v54;
    v62 = v55;
    v63 = v49;
    v64 = MEMORY[0x277CDE058];
    swift_getOpaqueTypeConformance2();
    sub_21A1E9700();
    sub_21A2F6114();
    return sub_21A1427A8(v48, &qword_27CD00A10, &qword_21A3014C0);
  }
}

uint64_t sub_21A1E7CE4@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD00A78, &qword_21A301528);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29[-v9];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v29[-v13];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v29[-v17];
  sub_21A2F5F54();
  *v18 = sub_21A2F69A4();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  *(v18 + 16) = 257;
  sub_21A2F5F54();
  *v14 = sub_21A2F69A4();
  *(v14 + 1) = v22;
  v14[16] = v23 & 1;
  *(v14 + 3) = v24;
  *(v14 + 16) = 256;
  v25 = *(v3 + 16);
  v25(v10, v18, v2);
  v25(v6, v14, v2);
  v25(a1, v10, v2);
  v26 = sub_21A176C98(&qword_27CD00A80, &qword_21A301530);
  v25(&a1[*(v26 + 48)], v6, v2);
  v27 = *(v3 + 8);
  v27(v14, v2);
  v27(v18, v2);
  v27(v6, v2);
  return (v27)(v10, v2);
}

uint64_t sub_21A1E7FC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v56 = sub_21A176C98(&qword_27CD00E08, &qword_21A301BF8);
  MEMORY[0x28223BE20](v56, v3);
  v5 = (&v46 - v4);
  v6 = sub_21A176C98(&qword_27CD00E10, &unk_21A301C00);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v52 = &v46 - v8;
  v9 = sub_21A176C98(&qword_27CD00E18, &unk_21A30DA90);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v49 = &v46 - v11;
  v12 = sub_21A2F5034();
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21A176C98(&qword_27CD00E20, &qword_21A301C10);
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v46 - v18;
  v55 = sub_21A176C98(&qword_27CD00E28, &qword_21A301C18);
  MEMORY[0x28223BE20](v55, v20);
  v22 = &v46 - v21;
  v23 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = (&v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v46 - v29;
  sub_21A1E9C2C(v2, &v46 - v29, type metadata accessor for RecipeTheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = *v30;
  if (EnumCaseMultiPayload == 1)
  {
    v33 = sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50);
    sub_21A1427A8(&v30[*(v33 + 48)], &qword_27CCFEDC0, &unk_21A2FAEE0);
    if (!v32)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v32 = *(v30 + 1);
    v34 = sub_21A176C98(&qword_27CCFEEA8, &qword_21A2FB130);
    sub_21A1EB5B8(&v30[*(v34 + 64)], type metadata accessor for ImageAsset);
    if (!v32)
    {
LABEL_7:
      v36 = [objc_opt_self() secondarySystemBackgroundColor];
      *v5 = sub_21A2F6EF4();
      swift_storeEnumTagMultiPayload();
      sub_21A1EBAE4();
      return sub_21A2F6114();
    }
  }

  sub_21A1E9C2C(v2, v26, type metadata accessor for RecipeTheme);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v35 = sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50);
    sub_21A1427A8(v26 + *(v35 + 48), &qword_27CCFEDC0, &unk_21A2FAEE0);
    goto LABEL_7;
  }

  v38 = sub_21A176C98(&qword_27CCFEEA8, &qword_21A2FB130);
  sub_21A1EB5B8(v26 + *(v38 + 64), type metadata accessor for ImageAsset);
  v39 = v32;
  sub_21A2F5024();
  v40 = sub_21A1E90DC(&qword_27CD00E48, MEMORY[0x277D26990], MEMORY[0x277D26988]);
  v41 = v49;
  sub_21A2F69E4();
  (*(v46 + 8))(v15, v12);
  sub_21A2F5064();
  v42 = v51;
  sub_21A2F5054();
  (*(v50 + 8))(v41, v42);
  v58 = v12;
  v59 = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v52;
  v44 = v48;
  sub_21A2F69E4();
  (*(v47 + 8))(v19, v44);
  v45 = v54;
  sub_21A2F5044();
  (*(v53 + 8))(v43, v45);
  *&v22[*(sub_21A176C98(&qword_27CD00E40, &qword_21A301C20) + 36)] = 0xBFB47AE147AE147BLL;
  *&v22[*(v55 + 36)] = 0x3FF3333333333333;
  sub_21A183960(v22, v5, &qword_27CD00E28, &qword_21A301C18);
  swift_storeEnumTagMultiPayload();
  sub_21A1EBAE4();
  sub_21A2F6114();

  return sub_21A1427A8(v22, &qword_27CD00E28, &qword_21A301C18);
}

uint64_t sub_21A1E86E4(uint64_t *a1)
{
  v1 = sub_21A2F5AC4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F6804();
  sub_21A176C98(&qword_27CD00290, &qword_21A301620);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21A2FEED0;
  *(v6 + 32) = sub_21A2F6F04();
  *(v6 + 40) = sub_21A2F6F14();
  MEMORY[0x21CED5D30](v6);
  sub_21A2F5A94();

  sub_21A2F5A84();
  sub_21A1CC700(v9);
  return (*(v2 + 8))(v5, v1);
}

void sub_21A1E8858()
{
  v1 = *(v0 + 8);
  v34 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  if (sub_21A2F5674())
  {
    if (v8)
    {
      if (v3 != 2)
      {
        return;
      }

      v5 = v34;
      v6 = v1;
      v7 = v2;
    }

    if (*(v4 + 16))
    {
      sub_21A25A67C(v5, v6, v7);
      if (v9)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    sub_21A2F5714();
    MinY = CGRectGetMinY(v36);
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 64);
    if (v12)
    {
      v13 = 0;
      v14 = __clz(__rbit64(v12));
      v15 = (v12 - 1) & v12;
      v16 = (v10 + 63) >> 6;
LABEL_16:
      v19 = (*(v4 + 56) + 32 * v14);
      v20 = *v19;
      v21 = v19[1];
      v23 = v19[2];
      v22 = v19[3];
      sub_21A2F5434();
      if (!v15)
      {
        goto LABEL_18;
      }

      do
      {
        v24 = v13;
LABEL_22:
        v25 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v26 = (*(v4 + 56) + ((v24 << 11) | (32 * v25)));
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[2];
        v37.size.height = v26[3];
        height = v37.size.height;
        v37.origin.x = *v26;
        v37.origin.y = v28;
        v37.size.width = v29;
        v33 = vabdd_f64(CGRectGetMinY(v37), MinY);
        v38.origin.x = v20;
        v38.origin.y = v21;
        v38.size.width = v23;
        v38.size.height = v22;
        if (v33 < vabdd_f64(CGRectGetMinY(v38), MinY))
        {
          v20 = v27;
          v21 = v28;
          v23 = v29;
          v22 = height;
        }
      }

      while (v15);
      while (1)
      {
LABEL_18:
        v24 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          return;
        }

        if (v24 >= v16)
        {
          break;
        }

        v15 = *(v4 + 64 + 8 * v24);
        ++v13;
        if (v15)
        {
          v13 = v24;
          goto LABEL_22;
        }
      }

      v39.origin.x = v20;
      v39.origin.y = v21;
      v39.size.width = v23;
      v39.size.height = v22;
      v30 = CGRectGetHeight(v39);
      sub_21A2F64A4();
      if (v30 >= v31)
      {
        return;
      }

LABEL_27:
      sub_21A2F5724();
      return;
    }

    v17 = 0;
    v16 = (v10 + 63) >> 6;
    while (v16 - 1 != v12)
    {
      v13 = v12 + 1;
      v18 = *(v4 + 72 + 8 * v12);
      v17 -= 64;
      ++v12;
      if (v18)
      {
        v15 = (v18 - 1) & v18;
        v14 = __clz(__rbit64(v18)) - v17;
        goto LABEL_16;
      }
    }
  }
}

uint64_t sub_21A1E8B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD00E68, &qword_21A301C40);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  v10 = *v2;
  v11 = sub_21A176C98(&qword_27CD00E70, &qword_21A301C48);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = *(v6 + 44);
  if (v10 == 1)
  {
    *&v9[v12] = 0x3FF0000000000000;
    sub_21A2F7374();
    v13 = sub_21A2F7394();
  }

  else
  {
    *&v9[v12] = 0;
    v13 = sub_21A2F7374();
  }

  sub_21A149B18(v9, a2, &qword_27CD00E68, &qword_21A301C40);
  result = sub_21A176C98(&qword_27CD00E78, &qword_21A301C50);
  v15 = a2 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = v10;
  return result;
}

uint64_t sub_21A1E8CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD00E50, &qword_21A301C28);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  v10 = *v2;
  sub_21A2F7454();
  v12 = v11;
  v14 = v13;
  v15 = sub_21A176C98(&qword_27CD00E58, &qword_21A301C30);
  (*(*(v15 - 8) + 16))(v9, a1, v15);
  v16 = 0.9;
  if (v10)
  {
    v16 = 1.0;
  }

  v17 = &v9[*(v6 + 44)];
  *v17 = v16;
  *(v17 + 1) = v16;
  *(v17 + 2) = v12;
  *(v17 + 3) = v14;
  sub_21A2F7384();
  v18 = sub_21A2F7394();

  sub_21A149B18(v9, a2, &qword_27CD00E50, &qword_21A301C28);
  result = sub_21A176C98(&qword_27CD00E60, &qword_21A301C38);
  v20 = a2 + *(result + 36);
  *v20 = v18;
  *(v20 + 8) = v10;
  return result;
}

uint64_t sub_21A1E8E48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A1E8EF4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A1EFBAC(v4);
}

void sub_21A1E8F94(uint64_t a1)
{
  sub_21A1E9048(319);
  if (v1 <= 0x3F)
  {
    sub_21A1E955C(319, &qword_27CCFF420, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A1E9048(uint64_t a1)
{
  if (!qword_27CD00998)
  {
    type metadata accessor for CookingModeViewModel(255);
    sub_21A1E90DC(&qword_27CCFECD0, type metadata accessor for CookingModeViewModel, &unk_21A3020F0);
    v1 = sub_21A2F7744();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD00998);
    }
  }
}

uint64_t sub_21A1E90DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21A1E9124()
{
  result = qword_27CD009A0;
  if (!qword_27CD009A0)
  {
    sub_21A176D98(&qword_27CD00980, &qword_21A301320);
    sub_21A1772F8(&qword_27CD009A8, &qword_27CD00968, &qword_21A3012E0, MEMORY[0x277CE11A8]);
    sub_21A1772F8(&qword_27CD009B0, &qword_27CD009B8, &unk_21A309250, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD009A0);
  }

  return result;
}

__n128 initializeWithCopy for RecipeScrollPosition(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21A1E921C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21A1E9264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21A1E9300(uint64_t a1)
{
  sub_21A1E95C0(319, &qword_27CCFF428, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21A1E9508(319, &qword_27CD009D8, &qword_27CD00380, &unk_21A2FF810);
    if (v2 <= 0x3F)
    {
      sub_21A1E9508(319, &qword_27CD009E0, &qword_27CD009E8, &qword_21A301410);
      if (v3 <= 0x3F)
      {
        sub_21A1E95C0(319, &qword_27CCFF418, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21A1E95C0(319, &qword_27CD009F0, MEMORY[0x277CDF488], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CookingModeViewModel(319);
            if (v6 <= 0x3F)
            {
              sub_21A1E955C(319, &qword_27CD009F8, MEMORY[0x277CDF8A8], MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                sub_21A1E95C0(319, &qword_27CD00A00, &type metadata for CookingModeViewModel.Region, MEMORY[0x277CE11F8]);
                if (v8 <= 0x3F)
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

void sub_21A1E9508(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_21A176D98(a3, a4);
    v5 = sub_21A2F7054();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21A1E955C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21A1E95C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21A1E9648()
{
  result = qword_27CD00A38;
  if (!qword_27CD00A38)
  {
    sub_21A176D98(&qword_27CD00A20, &qword_21A3014D0);
    sub_21A1772F8(&qword_27CD00A40, &qword_27CD00A48, &qword_21A301518, MEMORY[0x277CDF038]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00A38);
  }

  return result;
}

unint64_t sub_21A1E9700()
{
  result = qword_27CD00A50;
  if (!qword_27CD00A50)
  {
    sub_21A176D98(&qword_27CD00A10, &qword_21A3014C0);
    sub_21A1772F8(&qword_27CD00A58, &qword_27CD00A08, &qword_21A3014B8, &unk_21A3165A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00A50);
  }

  return result;
}

unint64_t sub_21A1E97C8()
{
  result = qword_27CD00A68;
  if (!qword_27CD00A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00A68);
  }

  return result;
}

unint64_t sub_21A1E9850()
{
  result = qword_27CD00AD0;
  if (!qword_27CD00AD0)
  {
    sub_21A176D98(&qword_27CD00A90, &qword_21A301540);
    sub_21A176D98(&qword_27CD00A88, &qword_21A301538);
    sub_21A176D98(&qword_27CD00AB0, &qword_21A301560);
    sub_21A1772F8(&qword_27CD00AB8, &qword_27CD00A88, &qword_21A301538, MEMORY[0x277CE11A8]);
    sub_21A1772F8(&qword_27CD00AC0, &qword_27CD00AB0, &qword_21A301560, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD00AD8, &qword_27CD00AC8, &qword_21A301568, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00AD0);
  }

  return result;
}

uint64_t sub_21A1E99D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A1E9A84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A1EFD10(v1, v2);
}

uint64_t sub_21A1E9AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  return sub_21A1E9C2C(v3 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme, a2, type metadata accessor for RecipeTheme);
}

uint64_t sub_21A1E9B8C(uint64_t a1)
{
  v2 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A1E9C2C(a1, v5, type metadata accessor for RecipeTheme);
  return sub_21A1EFE70(v5);
}

uint64_t sub_21A1E9C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A1E9CB4()
{
  result = qword_27CD00B10;
  if (!qword_27CD00B10)
  {
    sub_21A176D98(&qword_27CD00B18, &qword_21A3015F8);
    sub_21A1E9D6C(&qword_27CD00B20, &qword_27CD00AF0, &qword_21A301580, sub_21A1E9E1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00B10);
  }

  return result;
}

uint64_t sub_21A1E9D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2, a3);
    a4();
    sub_21A1772F8(&qword_27CD00B38, &qword_27CD00B00, &qword_21A3015F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A1E9E1C()
{
  result = qword_27CD00B28;
  if (!qword_27CD00B28)
  {
    sub_21A176D98(&qword_27CD00AE8, &qword_21A301578);
    sub_21A1E9EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00B28);
  }

  return result;
}

unint64_t sub_21A1E9EA8()
{
  result = qword_27CD00B30;
  if (!qword_27CD00B30)
  {
    sub_21A176D98(&qword_27CD00AE0, &qword_21A301570);
    sub_21A176D98(&qword_27CD00A90, &qword_21A301540);
    sub_21A1E9850();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFF7B0, &qword_27CCFF7B8, &unk_21A301600, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00B30);
  }

  return result;
}

unint64_t sub_21A1E9FAC()
{
  result = qword_27CD00B80;
  if (!qword_27CD00B80)
  {
    sub_21A176D98(&qword_27CD00B78, &unk_21A301650);
    sub_21A176D98(&qword_27CD00B88, &qword_21A3105A0);
    type metadata accessor for CircularButtonStyle(255);
    sub_21A1772F8(&qword_27CD00B90, &qword_27CD00B88, &qword_21A3105A0, MEMORY[0x277CDF028]);
    sub_21A1E90DC(&qword_27CD00B98, type metadata accessor for CircularButtonStyle, &unk_21A2FCD94);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00B80);
  }

  return result;
}

__n128 sub_21A1EA124@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex + 16);
  result = *(v3 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex);
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

void sub_21A1EA1E0(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_21A1F0030(&v2);
}

__n128 sub_21A1EA260@<Q0>(uint64_t *a1@<X0>, void *a3@<X4>, __n128 *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v7 = (v6 + *a3);
  v8 = v7[1].n128_u64[0];
  v9 = v7[1].n128_u8[8];
  result = *v7;
  *a4 = *v7;
  a4[1].n128_u64[0] = v8;
  a4[1].n128_u8[8] = v9;
  return result;
}

uint64_t sub_21A1EA340(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__int128 *))
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = v5;
  v10 = v6;
  return a5(&v8);
}

uint64_t sub_21A1EA38C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1E90DC(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  return sub_21A183960(v3 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__appEntityIdentifier, a2, &qword_27CCFF3E0, &qword_21A2FE6A0);
}

uint64_t sub_21A1EA450(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF3E0, &qword_21A2FE6A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A183960(a1, &v7 - v4, &qword_27CCFF3E0, &qword_21A2FE6A0);
  return sub_21A1F083C(v5);
}

unint64_t sub_21A1EA508()
{
  result = qword_27CD00BD8;
  if (!qword_27CD00BD8)
  {
    sub_21A176D98(&qword_27CD00BD0, &qword_21A3016E0);
    sub_21A1772F8(&qword_27CD00BE0, &qword_27CD00BE8, &qword_21A3016E8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00BD8);
  }

  return result;
}

unint64_t sub_21A1EA5C0()
{
  result = qword_27CD00C08;
  if (!qword_27CD00C08)
  {
    sub_21A176D98(&qword_27CD00C00, &qword_21A301720);
    sub_21A176D98(&qword_27CD00C10, &qword_21A301728);
    sub_21A176D98(&qword_27CD00C18, &qword_21A301730);
    sub_21A176D98(&qword_27CD00380, &unk_21A2FF810);
    sub_21A1EA724();
    sub_21A1CDF7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD00C88, &qword_27CD00C90, &qword_21A301770, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00C08);
  }

  return result;
}

unint64_t sub_21A1EA724()
{
  result = qword_27CD00C20;
  if (!qword_27CD00C20)
  {
    sub_21A176D98(&qword_27CD00C18, &qword_21A301730);
    sub_21A176D98(&qword_27CD00C28, &qword_21A301738);
    sub_21A1EA818();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD00C78, &qword_27CD00C80, &qword_21A301768, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00C20);
  }

  return result;
}

unint64_t sub_21A1EA818()
{
  result = qword_27CD00C30;
  if (!qword_27CD00C30)
  {
    sub_21A176D98(&qword_27CD00C28, &qword_21A301738);
    sub_21A176D98(&qword_27CD00C38, &qword_21A301740);
    sub_21A176D98(&qword_27CD00C40, &qword_21A301748);
    sub_21A176D98(&qword_27CD00C48, &qword_21A301750);
    sub_21A176D98(&qword_27CD00C50, &qword_21A301758);
    sub_21A1772F8(&qword_27CD00C58, &qword_27CD00C50, &qword_21A301758, MEMORY[0x277CDD6E0]);
    sub_21A1EAA2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A1A638C();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD00C68, &qword_27CD00C70, &qword_21A301760, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00C30);
  }

  return result;
}

unint64_t sub_21A1EAA2C()
{
  result = qword_27CD00C60;
  if (!qword_27CD00C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00C60);
  }

  return result;
}

uint64_t sub_21A1EAAE8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_21A1EAB64(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for CookingModeContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21A1E68AC(a1, a2, v6);
}

uint64_t sub_21A1EABE4(uint64_t a1)
{
  v3 = *(type metadata accessor for CookingModeContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21A1E6908(a1, v4);
}

void sub_21A1EAC5C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for CookingModeContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21A1E6B14(a1, a2, v6);
}

void sub_21A1EACDC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CookingModeContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21A1E7154(a1, a2, v6);
}

uint64_t sub_21A1EAD5C(uint64_t a1)
{
  v3 = *(type metadata accessor for CookingModeContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21A1E7428(a1, v4);
}

unint64_t sub_21A1EADCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](a1);
  MEMORY[0x21CED6EE0](a2);
  MEMORY[0x21CED6EE0](a3);
  sub_21A2F8474();
  result = sub_21A2F7F64();
  *(a4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  v11 = (a4[6] + 24 * result);
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  *(a4[7] + 8 * result) = a5;
  ++a4[2];
  return result;
}

BOOL sub_21A1EAEB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4 & a8;
  v11 = a1 == a5 && a2 == a6 && a3 == a7;
  if (a8)
  {
    v11 = a4 & a8;
  }

  if ((a4 & 1) == 0)
  {
    v8 = v11;
  }

  return (v8 & 1) == 0;
}

uint64_t sub_21A1EAEE8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__int128 *))
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = v5;
  v10 = v6;
  return a5(&v8);
}

void sub_21A1EAF9C()
{
  v1 = *(type metadata accessor for CookingModeContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  sub_21A1E703C(v0 + v2, v4, v5, v6);
}

uint64_t sub_21A1EB038(uint64_t a1, CGFloat *a2)
{
  v5 = *(type metadata accessor for CookingModeContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21A1E5CAC(a1, a2, v6);
}

uint64_t sub_21A1EB0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1EB170(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_21A1EB208()
{
  result = qword_27CD00D70;
  if (!qword_27CD00D70)
  {
    sub_21A176D98(&qword_27CD00D40, &qword_21A301928);
    sub_21A1772F8(&qword_27CD00D78, &qword_27CD00D80, &qword_21A301980, MEMORY[0x277CDF7D8]);
    sub_21A1772F8(&qword_27CD00D88, &qword_27CD00D68, &qword_21A301950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00D70);
  }

  return result;
}

unint64_t sub_21A1EB2EC()
{
  result = qword_27CD00D90;
  if (!qword_27CD00D90)
  {
    sub_21A176D98(&qword_27CD00D50, &qword_21A301938);
    sub_21A176D98(&qword_27CD00D40, &qword_21A301928);
    sub_21A1EB208();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD00D98, &qword_27CD00DA0, &unk_21A3019B0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00D90);
  }

  return result;
}

uint64_t sub_21A1EB3EC()
{
  v1 = (type metadata accessor for CookingModeView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_21A176C98(&qword_27CD00978, &qword_21A3012F0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_21A176C98(&qword_27CCFECD8, &unk_21A2FB250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21A2F5654();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A1EB5B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A1EB644()
{
  result = qword_27CD00DC0;
  if (!qword_27CD00DC0)
  {
    sub_21A176D98(&qword_27CD00DB0, &qword_21A3019C8);
    sub_21A1E90DC(&qword_27CD00DC8, type metadata accessor for CookingModeContentView, &unk_21A301418);
    sub_21A1772F8(&qword_27CD00DD0, &qword_27CD00DB8, &unk_21A3019D0, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00DC0);
  }

  return result;
}

void sub_21A1EB754(uint64_t a1)
{
  type metadata accessor for RecipeTheme(319);
  if (v1 <= 0x3F)
  {
    sub_21A1E955C(319, &qword_27CCFF420, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_21A1EB818(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21A1EB83C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A1EB884(uint64_t result, int a2, int a3)
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
      *(result + 66) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_21A1EB9A8()
{
  result = qword_27CD00DE8;
  if (!qword_27CD00DE8)
  {
    sub_21A176D98(&qword_27CD00DF0, &qword_21A301AB8);
    sub_21A176D98(&qword_27CD00A20, &qword_21A3014D0);
    sub_21A2F61B4();
    sub_21A1E9648();
    swift_getOpaqueTypeConformance2();
    sub_21A1E9700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00DE8);
  }

  return result;
}

unint64_t sub_21A1EBAE4()
{
  result = qword_27CD00E30;
  if (!qword_27CD00E30)
  {
    sub_21A176D98(&qword_27CD00E28, &qword_21A301C18);
    sub_21A1EBB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00E30);
  }

  return result;
}

unint64_t sub_21A1EBB70()
{
  result = qword_27CD00E38;
  if (!qword_27CD00E38)
  {
    sub_21A176D98(&qword_27CD00E40, &qword_21A301C20);
    sub_21A176D98(&qword_27CD00E20, &qword_21A301C10);
    sub_21A2F5034();
    sub_21A1E90DC(&qword_27CD00E48, MEMORY[0x277D26990], MEMORY[0x277D26988]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00E38);
  }

  return result;
}

unint64_t sub_21A1EBCA0()
{
  result = qword_27CD00E80;
  if (!qword_27CD00E80)
  {
    sub_21A176D98(&qword_27CD00E88, &qword_21A301C58);
    sub_21A1EBAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00E80);
  }

  return result;
}

uint64_t sub_21A1EBD2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2, a3);
    a4();
    sub_21A1772F8(&qword_27CD009B0, &qword_27CD009B8, &unk_21A309250, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A1EBDDC()
{
  result = qword_27CD00E98;
  if (!qword_27CD00E98)
  {
    sub_21A176D98(&qword_27CD00E50, &qword_21A301C28);
    sub_21A1772F8(&qword_27CD00EA0, &qword_27CD00E58, &qword_21A301C30, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00E98);
  }

  return result;
}

unint64_t sub_21A1EBE94()
{
  result = qword_27CD00EB0;
  if (!qword_27CD00EB0)
  {
    sub_21A176D98(&qword_27CD00E68, &qword_21A301C40);
    sub_21A1772F8(&qword_27CD00EB8, &qword_27CD00E70, &qword_21A301C48, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00EB0);
  }

  return result;
}

__n128 sub_21A1EBF54@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_21A2F75B4();
  v6 = type metadata accessor for RecipeSourceViewModelSource(0);
  swift_getKeyPath();
  sub_21A2F75B4();
  swift_getKeyPath();
  sub_21A2F75B4();
  v7 = v6[7];
  type metadata accessor for RecipeSourceViewModel(0);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__imageAsset;
  v10 = type metadata accessor for ImageAsset(0);
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__target;
  v12 = type metadata accessor for RecipeSourceViewModel.Target(0);
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  v8[OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable] = 0;
  v8[OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isFocusable] = 0;
  sub_21A2F50C4();
  *(a3 + v7) = v8;
  v13 = a3 + v6[8];
  v14 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a1 + 32);
  v15 = a3 + v6[9];
  *(v15 + 32) = *(a2 + 32);
  result = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = result;
  return result;
}

uint64_t sub_21A1EC0F8()
{
  v1 = sub_21A2F4794();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A176C98(&qword_27CCFEE90, &qword_21A2FB0F8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for RecipeSourceViewModel.Target(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - v15;
  swift_getKeyPath();
  v27 = v0;
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  sub_21A183960(v0 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__target[0], v7, &qword_27CCFEE90, &qword_21A2FB0F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21A1427A8(v7, &qword_27CCFEE90, &qword_21A2FB0F8);
  }

  sub_21A1EEE38(v7, v16, type metadata accessor for RecipeSourceViewModel.Target);
  sub_21A1EEEA0(v16, v12, type metadata accessor for RecipeSourceViewModel.Target);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*v12)();
  }

  else
  {
    v19 = v24;
    v18 = v25;
    v20 = v26;
    (*(v25 + 32))(v24, v12, v26);
    v21 = [objc_opt_self() sharedApplication];
    v22 = sub_21A2F46F4();
    sub_21A25FF30(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_21A1EED90(&qword_27CCFEA18, type metadata accessor for OpenExternalURLOptionsKey, &unk_21A2FA078);
    v23 = sub_21A2F7774();

    [v21 openURL:v22 options:v23 completionHandler:0];

    (*(v18 + 8))(v19, v20);
  }

  return sub_21A1EEDD8(v16, type metadata accessor for RecipeSourceViewModel.Target);
}

uint64_t sub_21A1EC528()
{
  swift_getKeyPath();
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  v1 = *(v0 + 32);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A1EC600(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  return *(v2 + *a2);
}

uint64_t sub_21A1EC6A0()
{
  swift_getKeyPath();
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A1EC750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A1EC7FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
    sub_21A2F5084();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21A1EC96C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A1ECA18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A1ECA58(v1, v2);
}

uint64_t sub_21A1ECA58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_21A2F8394() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1ECBDC(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEDC0, &unk_21A2FAEE0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A183960(a1, &v7 - v4, &qword_27CCFEDC0, &unk_21A2FAEE0);
  return sub_21A1ECC88(v5);
}

uint64_t sub_21A1ECC88(uint64_t a1)
{
  v3 = type metadata accessor for ImageAsset(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CCFEE00, &qword_21A2FB008);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v12 = sub_21A176C98(&qword_27CCFEDC0, &unk_21A2FAEE0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  v33 = v1;
  v20 = v1 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__imageAsset[0];
  v21 = OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__imageAsset[0];
  sub_21A183960(v20, &v31 - v18, &qword_27CCFEDC0, &unk_21A2FAEE0);
  v22 = *(v8 + 56);
  sub_21A183960(v19, v11, &qword_27CCFEDC0, &unk_21A2FAEE0);
  v34 = a1;
  sub_21A183960(a1, &v11[v22], &qword_27CCFEDC0, &unk_21A2FAEE0);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFEDC0, &unk_21A2FAEE0);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_21A1427A8(v11, &qword_27CCFEDC0, &unk_21A2FAEE0);
      v24 = v34;
LABEL_9:
      sub_21A1EF0A4(v24, v33 + v21, &qword_27CCFEDC0, &unk_21A2FAEE0);
      return sub_21A1427A8(v24, &qword_27CCFEDC0, &unk_21A2FAEE0);
    }

    goto LABEL_6;
  }

  sub_21A183960(v11, v15, &qword_27CCFEDC0, &unk_21A2FAEE0);
  if (v23(&v11[v22], 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFEDC0, &unk_21A2FAEE0);
    sub_21A1EEDD8(v15, type metadata accessor for ImageAsset);
LABEL_6:
    sub_21A1427A8(v11, &qword_27CCFEE00, &qword_21A2FB008);
    v24 = v34;
    goto LABEL_7;
  }

  v28 = v32;
  sub_21A1EEE38(&v11[v22], v32, type metadata accessor for ImageAsset);
  v29 = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v15, v28);
  sub_21A1EEDD8(v28, type metadata accessor for ImageAsset);
  sub_21A1427A8(v19, &qword_27CCFEDC0, &unk_21A2FAEE0);
  sub_21A1EEDD8(v15, type metadata accessor for ImageAsset);
  sub_21A1427A8(v11, &qword_27CCFEDC0, &unk_21A2FAEE0);
  v24 = v34;
  if (v29)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v26);
  v27 = v33;
  *(&v31 - 2) = v33;
  *(&v31 - 1) = v24;
  v35 = v27;
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5084();

  return sub_21A1427A8(v24, &qword_27CCFEDC0, &unk_21A2FAEE0);
}

uint64_t sub_21A1ED12C@<X0>(void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  return sub_21A183960(v5 + *a2, a5, a3, a4);
}

uint64_t sub_21A1ED21C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  return sub_21A183960(v10 + *a3, a6, a4, a5);
}

uint64_t sub_21A1ED2EC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21A176C98(&qword_27CCFEE90, &qword_21A2FB0F8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_21A183960(a1, &v10[-v6], &qword_27CCFEE90, &qword_21A2FB0F8);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5084();

  return sub_21A1427A8(v7, &qword_27CCFEE90, &qword_21A2FB0F8);
}

void sub_21A1ED48C(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
  sub_21A2F5094();

  *a4 = *(v6 + *a3);
}

void sub_21A1ED568(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = *a1;
  if (v7 == *(*a2 + *a5))
  {
    *(*a2 + *a5) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1ED670()
{

  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__imageAsset[0], &qword_27CCFEDC0, &unk_21A2FAEE0);
  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__target[0], &qword_27CCFEE90, &qword_21A2FB0F8);
  v1 = OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_21A1ED784(uint64_t a1)
{
  result = sub_21A2F4794();
  if (v2 <= 0x3F)
  {
    result = sub_21A13DF40();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *sub_21A1ED840()
{
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__imageAsset[0];
  v2 = type metadata accessor for ImageAsset(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__target[0];
  v4 = type metadata accessor for RecipeSourceViewModel.Target(0);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v0[OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable] = 0;
  v0[OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isFocusable] = 0;
  sub_21A2F50C4();
  return v0;
}

uint64_t sub_21A1ED938()
{
  sub_21A1CBD94();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A1ED974@<X0>(uint64_t *a3@<X8>)
{
  sub_21A1EED90(&qword_27CCFEE58, type metadata accessor for RecipeSourceViewModel, &unk_21A301CF4);
  result = sub_21A2F7664();
  *a3 = result;
  return result;
}

uint64_t sub_21A1ED9EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD00EE0, &qword_21A301FC8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for RecipeSourceViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD00EE0, &qword_21A301FC8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A1EED90(&qword_27CD00EE8, type metadata accessor for RecipeSourceViewModelSource, &unk_21A301E08);
    v8 = sub_21A156050(a1);
    return sub_21A1EEE38(v5, v8, type metadata accessor for RecipeSourceViewModelSource);
  }

  return result;
}

uint64_t sub_21A1EDB48()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFEDC0, &unk_21A2FAEE0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v119 = &v114 - v4;
  v118 = type metadata accessor for ExternalRecipeSource(0);
  v121 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v5);
  v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v6;
  MEMORY[0x28223BE20](v7, v8);
  v126 = (&v114 - v9);
  v10 = sub_21A176C98(&qword_27CCFEE90, &qword_21A2FB0F8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v125 = (&v114 - v12);
  v117 = type metadata accessor for WebRecipeSource(0);
  MEMORY[0x28223BE20](v117, v13);
  v120 = (&v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_21A176C98(&qword_27CCFF040, &qword_21A2FB420);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v114 - v17;
  v19 = type metadata accessor for RecipeSourceType(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v129 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v127 = &v114 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v131 = &v114 - v28;
  v29 = sub_21A176C98(&qword_27CCFF058, &unk_21A2FC890);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v114 - v31;
  v132 = type metadata accessor for RecipeSourceViewModelSource(0);
  MEMORY[0x28223BE20](v132, v33);
  v128 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v124 = &v114 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v114 - v40;
  v42 = type metadata accessor for Recipe(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v116 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v114 - v48;
  v130 = v1;
  sub_21A1EEEA0(v1, v41, type metadata accessor for RecipeSourceViewModelSource);
  sub_21A176C98(&qword_27CCFFA38, &unk_21A2FEB60);
  sub_21A2F7594();
  sub_21A1EEDD8(v41, type metadata accessor for RecipeSourceViewModelSource);
  v50 = v43;
  if ((*(v43 + 48))(v32, 1, v42) == 1)
  {
    return sub_21A1427A8(v32, &qword_27CCFF058, &unk_21A2FC890);
  }

  sub_21A1EEE38(v32, v49, type metadata accessor for Recipe);
  sub_21A183960(&v49[*(v42 + 48)], v18, &qword_27CCFF040, &qword_21A2FB420);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_21A1EEDD8(v49, type metadata accessor for Recipe);
    return sub_21A1427A8(v18, &qword_27CCFF040, &qword_21A2FB420);
  }

  v52 = v19;
  v53 = v131;
  sub_21A1EEE38(v18, v131, type metadata accessor for RecipeSourceType);
  v54 = v127;
  sub_21A1EEEA0(v53, v127, type metadata accessor for RecipeSourceType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v127 = v49;
    v82 = v120;
    sub_21A1EEE38(v54, v120, type metadata accessor for WebRecipeSource);
    v80 = v132;
    v83 = *(v132 + 28);
    v71 = v130;
    v115 = v52;
    v84 = *(v130 + v83);
    v85 = *v82;
    v86 = v82[1];
    sub_21A2F5434();
    sub_21A1ECA58(v85, v86);
    v87 = *(v117 + 20);
    v88 = sub_21A2F4794();
    v89 = v125;
    (*(*(v88 - 8) + 16))(v125, v82 + v87, v88);
    v90 = type metadata accessor for RecipeSourceViewModel.Target(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v92);
    *(&v114 - 2) = v84;
    *(&v114 - 1) = v89;
    *v136 = v84;
    sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
    sub_21A2F5084();

    v93 = v82;
    v49 = v127;
    sub_21A1EEDD8(v93, type metadata accessor for WebRecipeSource);
    v81 = v89;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v120 = type metadata accessor for ExternalRecipeSource;
    v56 = v126;
    sub_21A1EEE38(v54, v126, type metadata accessor for ExternalRecipeSource);
    v57 = *(v132 + 28);
    v58 = v132;
    v127 = v49;
    v59 = v130;
    v115 = v52;
    v60 = *(v130 + v57);
    v61 = v56[4];
    v62 = v56[5];
    sub_21A2F5434();
    sub_21A1EC7FC(v61, v62);
    v63 = v56[2];
    v64 = v56[3];
    sub_21A2F5434();
    sub_21A1ECA58(v63, v64);
    v65 = v119;
    sub_21A183960(v56 + *(v118 + 28), v119, &qword_27CCFEDC0, &unk_21A2FAEE0);
    sub_21A1ECC88(v65);
    sub_21A183960(v59 + *(v58 + 32), v136, &qword_27CD00ED8, &unk_21A301EA0);
    v66 = v123;
    sub_21A1EEEA0(v56, v123, type metadata accessor for ExternalRecipeSource);
    sub_21A183960(v136, v134, &qword_27CD00ED8, &unk_21A301EA0);
    v67 = v116;
    sub_21A1EEEA0(v127, v116, type metadata accessor for Recipe);
    v68 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v69 = (v122 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (*(v50 + 80) + v69 + 40) & ~*(v50 + 80);
    v71 = v59;
    v49 = v127;
    v72 = swift_allocObject();
    sub_21A1EEE38(v66, v72 + v68, v120);
    v73 = v72 + v69;
    v74 = v134[1];
    *v73 = v134[0];
    *(v73 + 16) = v74;
    *(v73 + 32) = v135;
    v75 = v72 + v70;
    v53 = v131;
    sub_21A1EEE38(v67, v75, type metadata accessor for Recipe);
    v76 = v125;
    *v125 = sub_21A1EEF38;
    v76[1] = v72;
    v77 = type metadata accessor for RecipeSourceViewModel.Target(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    v78 = swift_getKeyPath();
    MEMORY[0x28223BE20](v78, v79);
    *(&v114 - 2) = v60;
    *(&v114 - 1) = v76;
    v133 = v60;
    sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
    sub_21A2F5084();

    sub_21A1427A8(v136, &qword_27CD00ED8, &unk_21A301EA0);
    sub_21A1EEDD8(v56, type metadata accessor for ExternalRecipeSource);
    v80 = v132;
    v81 = v76;
LABEL_9:
    sub_21A1427A8(v81, &qword_27CCFEE90, &qword_21A2FB0F8);
    goto LABEL_11;
  }

  v71 = v130;
  v80 = v132;
LABEL_11:
  v94 = v129;
  sub_21A1EEEA0(v53, v129, type metadata accessor for RecipeSourceType);
  v95 = swift_getEnumCaseMultiPayload();
  if (!v95)
  {
    sub_21A1EEDD8(v94, type metadata accessor for RecipeSourceType);
    goto LABEL_16;
  }

  if (v95 != 1)
  {
LABEL_16:
    v99 = *(v71 + *(v80 + 28));
    if (*(v99 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable) == 1)
    {
      *(v99 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable) = 1;
      goto LABEL_26;
    }

    v101 = swift_getKeyPath();
    MEMORY[0x28223BE20](v101, v102);
    *(&v114 - 2) = v99;
    *(&v114 - 8) = 1;
    *v136 = v99;
    sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
    goto LABEL_25;
  }

  v96 = v126;
  sub_21A1EEE38(v94, v126, type metadata accessor for ExternalRecipeSource);
  v98 = *v96;
  v97 = v96[1];
  sub_21A2F5434();
  sub_21A1EEDD8(v96, type metadata accessor for ExternalRecipeSource);
  v99 = *(v71 + *(v80 + 28));
  v100 = v124;
  sub_21A1EEEA0(v71, v124, type metadata accessor for RecipeSourceViewModelSource);
  sub_21A176C98(&qword_27CD00EC0, &qword_21A301DA8);
  sub_21A2F7594();
  sub_21A1EEDD8(v100, type metadata accessor for RecipeSourceViewModelSource);
  if (LOBYTE(v134[0]) == 1)
  {

    goto LABEL_23;
  }

  sub_21A183960(v71 + *(v80 + 36), v136, &qword_27CD00ED0, &qword_21A301E98);
  v103 = v137;
  if (!v137)
  {

    sub_21A1427A8(v136, &qword_27CD00ED0, &qword_21A301E98);
LABEL_23:
    v106 = (v99 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable);
    v105 = 1;
    if ((*(v99 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable) & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_21:
    *v106 = v105 & 1;
    goto LABEL_26;
  }

  v104 = v138;
  sub_21A142764(v136, v137);
  v105 = (*(v104 + 8))(v98, v97, v103, v104);

  sub_21A142808(v136);
  v106 = (v99 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable);
  if ((v105 & 1) == *(v99 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable))
  {
    goto LABEL_21;
  }

LABEL_24:
  v107 = swift_getKeyPath();
  MEMORY[0x28223BE20](v107, v108);
  *(&v114 - 2) = v99;
  *(&v114 - 8) = v105 & 1;
  *v136 = v99;
  sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
LABEL_25:
  sub_21A2F5084();

LABEL_26:
  v109 = v128;
  sub_21A1EEEA0(v71, v128, type metadata accessor for RecipeSourceViewModelSource);
  sub_21A176C98(&qword_27CCFF118, &unk_21A2FB7E0);
  sub_21A2F7594();
  sub_21A1EEDD8(v109, type metadata accessor for RecipeSourceViewModelSource);
  v110 = v136[0];
  v111 = OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isFocusable;
  if (v136[0] == *(v99 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isFocusable))
  {
    sub_21A1EEDD8(v53, type metadata accessor for RecipeSourceType);
    result = sub_21A1EEDD8(v49, type metadata accessor for Recipe);
    *(v99 + v111) = v110;
  }

  else
  {
    v112 = swift_getKeyPath();
    MEMORY[0x28223BE20](v112, v113);
    *(&v114 - 2) = v99;
    *(&v114 - 8) = v110;
    *v136 = v99;
    sub_21A1EED90(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel, &unk_21A301CD8);
    sub_21A2F5084();

    sub_21A1EEDD8(v53, type metadata accessor for RecipeSourceType);
    return sub_21A1EEDD8(v49, type metadata accessor for Recipe);
  }

  return result;
}

uint64_t sub_21A1EEC24(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  sub_21A183960(a2, v13, &qword_27CD00ED8, &unk_21A301EA0);
  v5 = v14;
  if (!v14)
  {
    return sub_21A1427A8(v13, &qword_27CD00ED8, &unk_21A301EA0);
  }

  v6 = v15;
  sub_21A142764(v13, v14);
  v7 = a1[1];
  v12[0] = *a1;
  v12[1] = v7;
  v9 = *a3;
  v8 = a3[1];
  v10 = *(v6 + 8);
  sub_21A2F5434();
  v10(v12, v9, v8, v5, v6);

  return sub_21A142808(v13);
}

uint64_t sub_21A1EED90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A1EEDD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A1EEE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1EEEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1EEF38()
{
  v1 = *(type metadata accessor for ExternalRecipeSource(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for Recipe(0) - 8);
  v5 = (v0 + ((v3 + *(v4 + 80) + 40) & ~*(v4 + 80)));

  return sub_21A1EEC24((v0 + v2), v0 + v3, v5);
}

uint64_t sub_21A1EF0A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_21A176C98(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A1EF164@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v3 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollPosition;
  v4 = sub_21A2F59E4();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21A1EF248(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A2F59E4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollPosition;
  (*(v5 + 16))(v9, v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollPosition, v4, v7);
  sub_21A1F2B68(&qword_27CD00EF8, MEMORY[0x277CDF8A8], MEMORY[0x277CDF8B0]);
  v11 = sub_21A2F7874();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (v11)
  {
    (*(v5 + 24))(v2 + v10, a1, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v14);
    v16[-2] = v2;
    v16[-1] = a1;
    v16[1] = v2;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }

  return (v12)(a1, v4);
}

uint64_t sub_21A1EF498()
{
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  return *(v0 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region);
}

void sub_21A1EF540(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region) = a1 & 1;

    sub_21A1F031C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1EF680@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  return sub_21A1F2DEC(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme, a1, type metadata accessor for RecipeTheme);
}

uint64_t sub_21A1EF748@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  return sub_21A1C043C(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__appEntityIdentifier, a1);
}

uint64_t sub_21A1EF7FC()
{
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v1 = *(v0 + 48);
  sub_21A2F5434();
  return v1;
}

void sub_21A1EF8D4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep);
  if (sub_21A1EAEB8(*(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep), *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 8), *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 16), *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 24), *a1, v3, v4, v5))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    *&v12 = v1;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }

  else
  {
    v9 = *(v6 + 2);
    v10 = *(v6 + 24);
    *(v6 + 24) = v5;
    v11 = *v6;
    *v6 = v2;
    *(v6 + 1) = v3;
    *(v6 + 2) = v4;
    v12 = v11;
    v13 = v9;
    v14 = v10;
    sub_21A1F04C8(&v12);
  }
}

__n128 sub_21A1EFA44@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v3 = *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex + 16);
  result = *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex);
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_21A1EFB00@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v3 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A1EFBAC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + 32) = v3;
    *(v1 + 40) = v2;
  }
}

uint64_t sub_21A1EFD10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_21A2F8394() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1EFE70(uint64_t a1)
{
  v3 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme;
  sub_21A1F2DEC(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme, v6, type metadata accessor for RecipeTheme);
  v8 = sub_21A22EB2C(v6, a1);
  sub_21A1F2E54(v6, type metadata accessor for RecipeTheme);
  if (v8)
  {
    sub_21A1F2AC4(a1, v1 + v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[1] = v1;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }

  return sub_21A1F2E54(a1, type metadata accessor for RecipeTheme);
}

void sub_21A1F0030(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = (v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex) == *a1 && *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex + 8) == v2 && *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex + 16) == v3)
  {
    *v4 = *a1;
    v4[1] = v2;
    v4[2] = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }
}

__n128 sub_21A1F0190@<Q0>(void *a2@<X1>, __n128 *a3@<X8>)
{
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v6 = (v3 + *a2);
  v7 = v6[1].n128_u64[0];
  v8 = v6[1].n128_u8[8];
  result = *v6;
  *a3 = *v6;
  a3[1].n128_u64[0] = v7;
  a3[1].n128_u8[8] = v8;
  return result;
}

__n128 sub_21A1F0254@<Q0>(uint64_t *a1@<X0>, void *a3@<X4>, __n128 *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v7 = (v6 + *a3);
  v8 = v7[1].n128_u64[0];
  v9 = v7[1].n128_u8[8];
  result = *v7;
  *a4 = *v7;
  a4[1].n128_u64[0] = v8;
  a4[1].n128_u8[8] = v9;
  return result;
}

void sub_21A1F031C(char a1)
{
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v3 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region;
  if (*(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region) != (a1 & 1))
  {
    swift_getKeyPath();
    sub_21A2F5094();

    v4 = *(v1 + 40);
    if (v4)
    {
      v5 = *(v1 + 32);
      swift_getKeyPath();
      sub_21A2F5434();
      sub_21A2F5094();

      if (*(v1 + v3) == 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }

      v7 = v6;
      sub_21A14FB78();
      sub_21A2F75E4();
      sub_21A18FAD4(v5, v4, 0, 0, 0, v7, 0x60u);
    }
  }
}

void sub_21A1F04C8(uint64_t *a1)
{
  v2 = v1;
  v12 = a1[1];
  v13 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 24);
  swift_getKeyPath();
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5094();

  v5 = (v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep);
  if ((*(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 24) & 1) == 0)
  {
    v7 = *v5;
    v6 = v5[1];
    v8 = v5[2];
    swift_getKeyPath();
    sub_21A2F5094();

    v9 = *(v1 + 40);
    if (v9)
    {
      if ((v4 & 1) != 0 || (v13 == v7 ? (v10 = v12 == v6) : (v10 = 0), v10 ? (v11 = v3 == v8) : (v11 = 0), !v11))
      {
        v14 = *(v2 + 32);
        sub_21A14FB78();
        sub_21A2F5434();
        sub_21A2F75E4();
        sub_21A18FAD4(v7, v6, v8, v14, v9, 4, 0x60u);
      }
    }
  }
}

__n128 sub_21A1F065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = (a1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep);
  v6 = *(a1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 16);
  v7 = *(a1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 24);
  *(v5 + 24) = a5 & 1;
  v8 = *v5;
  *v5 = a2;
  *(v5 + 1) = a3;
  *(v5 + 2) = a4;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  sub_21A1F04C8(&v10);
  return result;
}

void sub_21A1F06F0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = v4 + *a2;
  if ((*(v9 + 24) & 1) == 0)
  {
    if ((a1[3] & 1) == 0)
    {
      v10 = *v9 == v5 && *(v9 + 8) == v6;
      if (v10 && *(v9 + 16) == v7)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v13);
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();

    return;
  }

  if ((a1[3] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  *v9 = v5;
  *(v9 + 8) = v6;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
}

uint64_t sub_21A1F083C(uint64_t a1)
{
  v3 = sub_21A2F4404();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFF3E8, &unk_21A2FC540);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - v11;
  v13 = sub_21A176C98(&qword_27CCFF3E0, &qword_21A2FE6A0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v29 - v19;
  v29 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__appEntityIdentifier;
  sub_21A1C043C(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__appEntityIdentifier, &v29 - v19);
  v21 = *(v9 + 56);
  sub_21A1C043C(v20, v12);
  v30 = a1;
  sub_21A1C043C(a1, &v12[v21]);
  v22 = *(v4 + 48);
  if (v22(v12, 1, v3) == 1)
  {
    sub_21A1427A8(v20, &qword_27CCFF3E0, &qword_21A2FE6A0);
    if (v22(&v12[v21], 1, v3) == 1)
    {
      sub_21A1427A8(v12, &qword_27CCFF3E0, &qword_21A2FE6A0);
      v23 = v30;
LABEL_9:
      sub_21A1F2CFC(v23, v1 + v29);
      return sub_21A1427A8(v23, &qword_27CCFF3E0, &qword_21A2FE6A0);
    }

    goto LABEL_6;
  }

  sub_21A1C043C(v12, v16);
  if (v22(&v12[v21], 1, v3) == 1)
  {
    sub_21A1427A8(v20, &qword_27CCFF3E0, &qword_21A2FE6A0);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_21A1427A8(v12, &qword_27CCFF3E8, &unk_21A2FC540);
    v23 = v30;
    goto LABEL_7;
  }

  (*(v4 + 32))(v7, &v12[v21], v3);
  sub_21A1F2B68(&qword_27CCFF3F0, MEMORY[0x277CB9F28], MEMORY[0x277CB9F38]);
  v26 = sub_21A2F7874();
  v27 = *(v4 + 8);
  v27(v7, v3);
  sub_21A1427A8(v20, &qword_27CCFF3E0, &qword_21A2FE6A0);
  v27(v16, v3);
  sub_21A1427A8(v12, &qword_27CCFF3E0, &qword_21A2FE6A0);
  v23 = v30;
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v25);
  *(&v29 - 2) = v1;
  *(&v29 - 1) = v23;
  v31 = v1;
  sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
  sub_21A2F5084();

  return sub_21A1427A8(v23, &qword_27CCFF3E0, &qword_21A2FE6A0);
}

void sub_21A1F0CB4()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFF3E0, &qword_21A2FE6A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v43 = &v39 - v4;
  v5 = sub_21A2F59E4();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0;
  v13 = *(v0 + 32);
  v15 = *(v12 + 40);
  v14 = (v12 + 32);
  sub_21A2F5434();
  LOBYTE(v13) = sub_21A18F608(v13, v15, 0, 0);

  if (v13)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v17);
    *(&v39 - 3) = 0;
    *(&v39 - 2) = 0;
    *(&v39 - 4) = v1;
    *&v45 = v1;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
    v44 = 0;
  }

  else
  {
    v44 = 0;
    *v14 = 0;
    v14[1] = 0;
  }

  sub_21A1EFD10(0, 0xE000000000000000);
  v18 = *(sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50) + 48);
  *v11 = 0;
  v19 = type metadata accessor for ImageAsset(0);
  (*(*(v19 - 8) + 56))(&v11[v18], 1, 1, v19);
  swift_storeEnumTagMultiPayload();
  sub_21A1EFE70(v11);
  sub_21A1EF540(0);
  v20 = (v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep);
  if (sub_21A1EAEB8(*(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep), *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 8), *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 16), *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 24), 0, 0, 0, 1))
  {
    v21 = swift_getKeyPath();
    MEMORY[0x28223BE20](v21, v22);
    *(&v39 - 6) = v1;
    *(&v39 - 5) = 0;
    *(&v39 - 4) = 0;
    *(&v39 - 3) = 0;
    *(&v39 - 16) = 1;
    *&v45 = v1;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }

  else
  {
    v23 = v20[1];
    v41 = *v20;
    v24 = v20[2];
    v25 = *(v20 + 24);
    v20[1] = 0;
    v20[2] = 0;
    *v20 = 0;
    *(v20 + 24) = 1;
    swift_getKeyPath();
    *&v45 = v1;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5094();

    if ((v20[3] & 1) == 0)
    {
      v39 = v24;
      v40 = v23;
      v26 = *v20;
      v27 = v20[1];
      v28 = v20[2];
      swift_getKeyPath();
      *&v45 = v1;
      sub_21A2F5094();

      v29 = *(v1 + 40);
      if (v29)
      {
        v30 = *(v1 + 32);
        if ((v25 & 1) != 0 || v41 != v26 || v40 != v27 || v39 != v28)
        {
          *&v45 = v26;
          *(&v45 + 1) = v27;
          v46 = v28;
          v47 = v30;
          v48 = v29;
          v49 = 4;
          v50 = 96;
          sub_21A14FB78();
          sub_21A2F5434();
          sub_21A2F75E4();
          sub_21A18FAD4(v45, *(&v45 + 1), v46, v47, v48, v49, v50);
        }
      }
    }
  }

  v45 = 0uLL;
  v46 = 0;
  LOBYTE(v47) = 1;
  sub_21A1F06F0(&v45, &OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep, &unk_21A302210, sub_21A1F2C3C);
  sub_21A1BEE14();
  v31 = v42;
  sub_21A2F59A4();
  sub_21A1EF248(v31);
  v32 = sub_21A2F4404();
  v33 = v43;
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  sub_21A1F083C(v33);
  if (qword_27CCFE7F0 != -1)
  {
    swift_once();
  }

  v34 = qword_27CCFFB50;
  v35 = xmmword_27CCFFB58;
  v36 = v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex;
  if (*(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex) == qword_27CCFFB50 && *(v36 + 8) == xmmword_27CCFFB58)
  {
    *v36 = qword_27CCFFB50;
    *(v36 + 8) = v35;
  }

  else
  {
    v37 = swift_getKeyPath();
    MEMORY[0x28223BE20](v37, v38);
    *(&v39 - 4) = v1;
    *(&v39 - 3) = v34;
    *(&v39 - 1) = v35;
    *&v45 = v1;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }

  v45 = *&qword_27CCFFB50;
  v46 = *(&xmmword_27CCFFB58 + 1);
  LOBYTE(v47) = 0;
  sub_21A1F06F0(&v45, &OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__nextStepIndex, &unk_21A3023E0, sub_21A1F2F70);
  v45 = *&qword_27CCFFB50;
  v46 = *(&xmmword_27CCFFB58 + 1);
  LOBYTE(v47) = 0;
  sub_21A1F06F0(&v45, &OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__previousStepIndex, &unk_21A3023B8, sub_21A1F2F90);
}

uint64_t sub_21A1F1460()
{

  sub_21A1F2E54(v0 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme, type metadata accessor for RecipeTheme);
  v1 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollPosition;
  v2 = sub_21A2F59E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__appEntityIdentifier, &qword_27CCFF3E0, &qword_21A2FE6A0);
  v3 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel___scope;
  v4 = sub_21A2F7614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel___observationRegistrar;
  v6 = sub_21A2F50D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

unint64_t sub_21A1F15F4()
{
  result = qword_27CD00EF0;
  if (!qword_27CD00EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00EF0);
  }

  return result;
}

void *sub_21A1F1690()
{
  v1 = v0;
  v2 = sub_21A2F59E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F4A24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F4A14();
  v12 = sub_21A2F49C4();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v1[2] = v12;
  v1[3] = v14;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v15 = v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__recipeTheme;
  v16 = *(sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50) + 48);
  *v15 = 0;
  v17 = type metadata accessor for ImageAsset(0);
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  type metadata accessor for RecipeTheme(0);
  swift_storeEnumTagMultiPayload();
  if (qword_27CCFE7F0 != -1)
  {
    swift_once();
  }

  v18 = *(&xmmword_27CCFFB58 + 1);
  v19 = v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex;
  *v19 = unk_27CCFFB50;
  *(v19 + 2) = v18;
  v20 = v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__nextStepIndex;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *v20 = 0;
  v20[24] = 1;
  v21 = v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__previousStepIndex;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  *v21 = 0;
  v21[24] = 1;
  *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region) = 0;
  v22 = v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  *v22 = 0;
  v22[24] = 1;
  v23 = v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0;
  *v23 = 0;
  v23[24] = 1;
  sub_21A1BEE14();
  sub_21A2F59A4();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollPosition, v6, v2);
  v24 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__appEntityIdentifier;
  v25 = sub_21A2F4404();
  v26 = (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  MEMORY[0x21CED60A0](v26);
  sub_21A2F50C4();
  return v1;
}

uint64_t sub_21A1F19F0()
{
  v0 = swift_allocObject();
  sub_21A1F1690();
  return v0;
}

uint64_t sub_21A1F1A28()
{
  sub_21A17DF70();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A1F1A64@<X0>(uint64_t *a3@<X8>)
{
  sub_21A1F2B68(&qword_27CCFECD0, type metadata accessor for CookingModeViewModel, &unk_21A3020F0);
  result = sub_21A2F7664();
  *a3 = result;
  return result;
}

uint64_t sub_21A1F1ADC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD00F18, &qword_21A3023B0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for CookingModeViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD00F18, &qword_21A3023B0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A1F2B68(&qword_27CD00F20, type metadata accessor for CookingModeViewModelSource, &unk_21A302338);
    v8 = sub_21A156050(a1);
    return sub_21A1F2EB4(v5, v8, type metadata accessor for CookingModeViewModelSource);
  }

  return result;
}

void sub_21A1F1C38()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFF3E0, &qword_21A2FE6A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v110 - v4;
  v6 = sub_21A176C98(&qword_27CCFEB38, &unk_21A2FB5C0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v118 = &v110 - v8;
  v9 = type metadata accessor for CookingSession(0);
  v116 = *(v9 - 8);
  v117 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v119 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v115 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21A176C98(&qword_27CCFF058, &unk_21A2FC890);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v110 - v17;
  v19 = type metadata accessor for CookingModeViewModelSource(0);
  MEMORY[0x28223BE20](v19, v20);
  v114 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v110 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v110 - v28;
  v30 = type metadata accessor for Recipe(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = (&v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35, v36);
  v38 = (&v110 - v37);
  sub_21A1F2DEC(v1, v29, type metadata accessor for CookingModeViewModelSource);
  v120.i64[0] = v19;
  sub_21A176C98(&qword_27CCFFA38, &unk_21A2FEB60);
  sub_21A2F7594();
  sub_21A1F2E54(v29, type metadata accessor for CookingModeViewModelSource);
  if ((*(v31 + 48))(v18, 1, v30) == 1)
  {
    sub_21A1427A8(v18, &qword_27CCFF058, &unk_21A2FC890);
    sub_21A1F0CB4();
    return;
  }

  v111 = v5;
  sub_21A1F2EB4(v18, v38, type metadata accessor for Recipe);
  v112 = v1;
  v39 = *v1;
  v40 = *(*v1 + 16);
  v41 = v39[3];
  v42 = qword_27CCFE798;
  sub_21A2F5434();
  v43 = v38;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_21A2F53E4();
  sub_21A177CBC(v44, qword_27CD23C08);
  sub_21A1F2DEC(v38, v34, type metadata accessor for Recipe);
  sub_21A2F5434();
  v45 = sub_21A2F53C4();
  v46 = sub_21A2F7DF4();

  v47 = os_log_type_enabled(v45, v46);
  v113 = v38;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v121 = v49;
    *v48 = 136446466;
    v50 = sub_21A25B5DC(v40, v41, &v121);

    *(v48 + 4) = v50;
    *(v48 + 12) = 2082;
    v51 = *v34;
    v52 = v34[1];
    sub_21A2F5434();
    sub_21A1F2E54(v34, type metadata accessor for Recipe);
    v53 = v51;
    v43 = v113;
    v54 = sub_21A25B5DC(v53, v52, &v121);

    *(v48 + 14) = v54;
    _os_log_impl(&dword_21A137000, v45, v46, "Updating recipe card view model %{public}s with recipe ID %{public}s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED7BA0](v49, -1, -1);
    MEMORY[0x21CED7BA0](v48, -1, -1);
  }

  else
  {

    sub_21A1F2E54(v34, type metadata accessor for Recipe);
  }

  v55 = *v43;
  v56 = v43[1];
  v57 = v39[4];
  v58 = v39[5];
  sub_21A2F5434();
  sub_21A2F5434();
  LOBYTE(v57) = sub_21A18F608(v57, v58, v55, v56);

  if (v57)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v60);
    *(&v110 - 4) = v39;
    *(&v110 - 3) = v55;
    *(&v110 - 2) = v56;
    *&v121 = v39;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();

    v43 = v113;
  }

  else
  {
    v39[4] = v55;
    v39[5] = v56;
  }

  v61 = v43[2];
  v62 = v43[3];
  sub_21A2F5434();
  sub_21A1EFD10(v61, v62);
  v63 = v112;
  sub_21A1F2DEC(v112, v25, type metadata accessor for CookingModeViewModelSource);
  sub_21A176C98(&qword_27CD00F08, &unk_21A311000);
  v64 = v115;
  sub_21A2F7594();
  v65 = v25;
  v66 = v63;
  sub_21A1F2E54(v65, type metadata accessor for CookingModeViewModelSource);
  sub_21A1EFE70(v64);
  v67 = v63;
  v68 = v114;
  sub_21A1F2DEC(v67, v114, type metadata accessor for CookingModeViewModelSource);
  sub_21A176C98(&qword_27CD00F00, &qword_21A3022D8);
  v69 = v118;
  sub_21A2F7594();
  sub_21A1F2E54(v68, type metadata accessor for CookingModeViewModelSource);
  if ((*(v116 + 48))(v69, 1, v117) != 1)
  {
    v71 = v119;
    sub_21A1F2EB4(v69, v119, type metadata accessor for CookingSession);
    sub_21A1EF540(*(v71 + 180));
    swift_getKeyPath();
    *&v121 = v39;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5094();

    v72 = v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep;
    v73 = *(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep);
    v74 = *(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 8);
    v75 = *(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 16);
    v77 = v71[2];
    v76 = v71[3];
    v78 = v71[4];
    if ((*(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 24) & 1) != 0 || v73 != v77 || v74 != v76 || v75 != v78)
    {
      if (sub_21A1EAEB8(v73, v74, v75, *(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep + 24), v77, v76, v78, 0))
      {
        v79 = swift_getKeyPath();
        MEMORY[0x28223BE20](v79, v80);
        *(&v110 - 6) = v39;
        *(&v110 - 5) = v77;
        *(&v110 - 4) = v76;
        *(&v110 - 3) = v78;
        *(&v110 - 16) = 0;
        *&v121 = v39;
        sub_21A2F5084();

        v66 = v112;
      }

      else
      {
        v81 = *(v72 + 2);
        v82 = v72[24];
        v72[24] = 0;
        v83 = *v72;
        *v72 = v77;
        *(v72 + 1) = v76;
        *(v72 + 2) = v78;
        v121 = v83;
        v122 = v81;
        v123 = v82;
        sub_21A1F04C8(&v121);
      }
    }

    swift_getKeyPath();
    *&v121 = v39;
    sub_21A2F5094();

    v84 = (v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__previousStepIndex);
    v85 = v119;
    v86 = v119[9];
    v87 = v119[10];
    v43 = v113;
    if ((*(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__previousStepIndex + 24) & 1) != 0 || *v84 != v119[8] || v84[1] != v86 || v84[2] != v87)
    {
      *&v121 = v119[8];
      *(&v121 + 1) = v86;
      v122 = v87;
      v123 = 0;
      sub_21A1F06F0(&v121, &OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__previousStepIndex, &unk_21A3023B8, sub_21A1F2F90);
    }

    swift_getKeyPath();
    *&v121 = v39;
    sub_21A2F5094();

    v88 = (v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__nextStepIndex);
    v89 = v85[6];
    v90 = v85[7];
    if ((*(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__nextStepIndex + 24) & 1) != 0 || *v88 != v85[5] || v88[1] != v89 || v88[2] != v90)
    {
      *&v121 = v85[5];
      *(&v121 + 1) = v89;
      v122 = v90;
      v123 = 0;
      sub_21A1F06F0(&v121, &OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__nextStepIndex, &unk_21A3023E0, sub_21A1F2F70);
    }

    swift_getKeyPath();
    *&v121 = v39;
    sub_21A2F5094();

    v91 = (v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep);
    v92 = v85[12];
    v93 = v85[13];
    v94 = *(v85 + 112);
    if (*(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep + 24))
    {
      v70 = v111;
      if (v85[14])
      {
        goto LABEL_39;
      }
    }

    else
    {
      v70 = v111;
      if ((v85[14] & 1) == 0 && *v91 == v85[11] && v91[1] == v92 && v91[2] == v93)
      {
        goto LABEL_39;
      }
    }

    *&v121 = v85[11];
    *(&v121 + 1) = v92;
    v122 = v93;
    v123 = v94;
    sub_21A1F06F0(&v121, &OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollToStep, &unk_21A302210, sub_21A1F2C3C);
LABEL_39:
    sub_21A1F2E54(v85, type metadata accessor for CookingSession);
    goto LABEL_40;
  }

  sub_21A1427A8(v69, &qword_27CCFEB38, &unk_21A2FB5C0);
  v70 = v111;
LABEL_40:
  v95 = (v66 + *(v120.i64[0] + 32));
  v96 = *v95;
  if (*v95)
  {
    v97 = v95[1];
    v98 = v43[1];
    *&v121 = *v43;
    *(&v121 + 1) = v98;
    v99 = *(v97 + 8);
    sub_21A2F5434();
    v99(&v121, v96, v97);
  }

  else
  {
    v100 = sub_21A2F4404();
    (*(*(v100 - 8) + 56))(v70, 1, 1, v100);
  }

  sub_21A1F083C(v70);
  sub_21A271A00();
  v102 = *(v101 + 16);
  if (v102)
  {
    v103 = v101 + 24 * v102;
    v120 = *(v103 + 8);
    v104 = *(v103 + 24);

    v105 = v120;
  }

  else
  {

    if (qword_27CCFE7F0 != -1)
    {
      swift_once();
    }

    v105 = *&qword_27CCFFB50;
    v104 = *(&xmmword_27CCFFB58 + 1);
  }

  v106 = (v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex);
  v107 = vmovn_s64(vceqq_s64(*(v39 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex), v105));
  if ((v107.i8[0] & 1) != 0 && (v107.i8[4] & 1) != 0 && v106[1].i64[0] == v104)
  {
    *v106 = v105;
    v106[1].i64[0] = v104;
  }

  else
  {
    v120 = v105;
    v108 = swift_getKeyPath();
    MEMORY[0x28223BE20](v108, v109);
    *(&v110 - 4) = v39;
    *(&v110 - 3) = v120;
    *(&v110 - 1) = v104;
    *&v121 = v39;
    sub_21A1F2B68(&qword_27CD00630, type metadata accessor for CookingModeViewModel, &unk_21A302120);
    sub_21A2F5084();
  }

  sub_21A1F2E54(v43, type metadata accessor for Recipe);
}

uint64_t sub_21A1F2AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTheme(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1F2B28()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
  sub_21A2F5434();
}

uint64_t sub_21A1F2B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A1F2BB0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__scrollPosition;
  v4 = sub_21A2F59E4();
  return (*(*(v4 - 8) + 24))(v2 + v3, v1, v4);
}

__n128 sub_21A1F2C5C()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__lastStepIndex);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u64[0] = v1;
  return result;
}

void sub_21A1F2C80()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region);
  *(v1 + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__region) = *(v0 + 24);
  sub_21A1F031C(v2);
}

uint64_t sub_21A1F2CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF3E0, &qword_21A2FE6A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1F2DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1F2E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A1F2EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21A1F2F1C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  v9 = *a1;
  v10 = v7;
  v11 = v8;
  sub_21A1F06F0(&v9, a5, a6, a7);
}

__n128 sub_21A1F2FB0(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = (*(v1 + 16) + *a1);
  result = *(v1 + 24);
  *v4 = result;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

__n128 sub_21A1F2FD8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC10CookingKit20CookingModeViewModel__currentStep;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 24) = v1;
  v6 = *v2;
  *v2 = v5;
  v8 = v6;
  v9 = v3;
  v10 = v4;
  sub_21A1F04C8(&v8);
  return result;
}

uint64_t type metadata accessor for RecipeCardNavHeadersView(uint64_t a1)
{
  result = qword_27CD00F28;
  if (!qword_27CD00F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1F30F4(uint64_t a1)
{
  type metadata accessor for RecipeCardViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_21A19370C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A1F319C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v3 = sub_21A176C98(&qword_27CD00F40, &qword_21A302488);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v85 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v84 = (&v69 - v8);
  v9 = sub_21A2F73B4();
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v70, v12);
  v14 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v16);
  v74 = &v69 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = (&v69 - v20);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v69 - v24;
  v72 = sub_21A2F71E4();
  v26 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21A176C98(&qword_27CD00F48, &qword_21A302490);
  MEMORY[0x28223BE20](v71, v30);
  v32 = &v69 - v31;
  v73 = sub_21A176C98(&qword_27CD00F50, &qword_21A302498);
  MEMORY[0x28223BE20](v73, v33);
  v80 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v69 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v79 = &v69 - v41;
  sub_21A2F7344();
  sub_21A2F57C4();
  v77 = v89;
  v78 = v87;
  v75 = v92;
  v76 = v91;
  v95 = 1;
  v94 = v88;
  v93 = v90;
  sub_21A2F71D4();
  type metadata accessor for RecipeCardNavHeadersView(0);
  sub_21A1AC424(v25);
  sub_21A1F5028(v25, v21, type metadata accessor for RecipeTheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v43 = sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50);
    sub_21A1427A8(v21 + *(v43 + 48), &qword_27CCFEDC0, &unk_21A2FAEE0);
    v44 = sub_21A2F6F64();
  }

  else
  {

    v45 = sub_21A176C98(&qword_27CCFEEA8, &qword_21A2FB130);
    sub_21A183894(v21 + *(v45 + 64));
    sub_21A2F6F24();
    v44 = sub_21A2F6F44();
  }

  v46 = sub_21A2F6604();
  (*(v26 + 32))(v32, v29, v72);
  v47 = &v32[*(v71 + 36)];
  *v47 = v44;
  v47[8] = v46;
  v48 = v86;
  v49 = v74;
  sub_21A1AC424(v74);
  sub_21A1F5028(v49, v14, type metadata accessor for RecipeTheme);
  v50 = swift_getEnumCaseMultiPayload();

  if (v50 == 1)
  {
    v51 = sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50);
    sub_21A1427A8(v14 + *(v51 + 48), &qword_27CCFEDC0, &unk_21A2FAEE0);
    v52 = MEMORY[0x277CE13D8];
  }

  else
  {

    v53 = sub_21A176C98(&qword_27CCFEEA8, &qword_21A2FB130);
    sub_21A183894(v14 + *(v53 + 64));
    v52 = MEMORY[0x277CE13B8];
  }

  v55 = v81;
  v54 = v82;
  v56 = v83;
  (*(v82 + 104))(v81, *v52, v83);
  (*(v54 + 32))(&v38[*(v73 + 36)], v55, v56);
  sub_21A149B18(v32, v38, &qword_27CD00F48, &qword_21A302490);
  v57 = v79;
  sub_21A149B18(v38, v79, &qword_27CD00F50, &qword_21A302498);
  v58 = sub_21A2F5F34();
  v59 = v84;
  *v84 = v58;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  v60 = sub_21A176C98(&qword_27CD00F58, &qword_21A3024A0);
  sub_21A1F390C(v48, (v59 + *(v60 + 44)));
  v61 = v95;
  LOBYTE(v55) = v94;
  v62 = v93;
  v63 = v80;
  sub_21A1F4F54(v57, v80);
  v64 = v85;
  sub_21A183960(v59, v85, &qword_27CD00F40, &qword_21A302488);
  *a2 = 0;
  *(a2 + 8) = v61;
  v65 = v77;
  *(a2 + 16) = v78;
  *(a2 + 24) = v55;
  *(a2 + 32) = v65;
  *(a2 + 40) = v62;
  v66 = v75;
  *(a2 + 48) = v76;
  *(a2 + 56) = v66;
  v67 = sub_21A176C98(&qword_27CD00F60, &unk_21A3024A8);
  sub_21A1F4F54(v63, a2 + *(v67 + 48));
  sub_21A183960(v64, a2 + *(v67 + 64), &qword_27CD00F40, &qword_21A302488);
  sub_21A1427A8(v59, &qword_27CD00F40, &qword_21A302488);
  sub_21A1427A8(v57, &qword_27CD00F50, &qword_21A302498);
  sub_21A1427A8(v64, &qword_27CD00F40, &qword_21A302488);
  return sub_21A1427A8(v63, &qword_27CD00F50, &qword_21A302498);
}

uint64_t sub_21A1F390C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v147 = a2;
  v3 = sub_21A176C98(&qword_27CD00F68, &qword_21A3024B8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v148 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v152 = &v142 - v8;
  v180 = sub_21A176C98(&qword_27CCFEF60, &qword_21A3024C0);
  MEMORY[0x28223BE20](v180, v9);
  v156 = &v142 - v10;
  v11 = type metadata accessor for RecipeCardNavHeadersView(0);
  v175 = *(v11 - 8);
  v171 = *(v175 + 8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_21A176C98(&qword_27CD00F70, &qword_21A3024C8);
  v185 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v15);
  v145 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v155 = &v142 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v165 = &v142 - v22;
  v181 = sub_21A176C98(&qword_27CD00F78, &qword_21A3024D0);
  MEMORY[0x28223BE20](v181, v23);
  v143 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v153 = &v142 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v142 - v30;
  v179 = sub_21A176C98(&qword_27CD00F80, &qword_21A3024D8);
  v184 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v32);
  v144 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v154 = &v142 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v157 = &v142 - v39;
  v40 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v40 - 8, v41);
  v43 = &v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21A2F7894();
  MEMORY[0x28223BE20](v44 - 8, v45);
  v47 = &v142 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_21A176C98(&qword_27CD00F88, &qword_21A3024E0);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v48);
  v146 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v176 = &v142 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v142 = &v142 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v177 = &v142 - v58;
  MEMORY[0x28223BE20](v59, v60);
  v183 = &v142 - v61;
  v62 = *a1;
  swift_getKeyPath();
  v63 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel___observationRegistrar;
  v189 = v62;
  v64 = sub_21A1F54C8(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
  v172 = v63;
  v168 = v64;
  sub_21A2F5094();

  v65 = *(v62 + 32);
  sub_21A2F7884();
  sub_21A2F4A54();
  v173 = v47;
  v174 = v43;
  v66 = sub_21A2F7934(v47, 0, 0, 0, v43, "The navigation header title for the ingredients section of the recipe card", 74, 2);
  v68 = v67;
  v178 = a1;
  sub_21A1F4FC4(a1, v14);
  v69 = (v175[80] + 16) & ~v175[80];
  v70 = v69 + v171;
  v166 = v175[80];
  v71 = swift_allocObject();
  v169 = v69;
  v175 = v14;
  sub_21A1F5028(v14, v71 + v69, type metadata accessor for RecipeCardNavHeadersView);
  v171 = v70;
  *(v71 + v70) = 1;
  v186 = v66;
  v187 = v68;
  v72 = v165;
  v188 = v65 == 1;
  v73 = sub_21A176C98(&qword_27CD00F90, &qword_21A302518);
  v74 = sub_21A1F50A0();
  v170 = v73;
  v167 = v74;
  sub_21A2F7094();

  if (v65 == 1)
  {
    v75 = sub_21A2F6284();
  }

  else
  {
    v75 = sub_21A2F6294();
  }

  v76 = v75;
  v77 = *(v185 + 32);
  v185 += 32;
  v165 = v77;
  (v77)(v31, v72, v182);
  v78 = v181;
  *&v31[*(v181 + 36)] = v76;
  v79 = sub_21A1F53E4();
  v80 = v157;
  sub_21A2F6DD4();
  sub_21A1427A8(v31, &qword_27CD00F78, &qword_21A3024D0);
  v81 = *MEMORY[0x277CDFA10];
  v82 = sub_21A2F5A64();
  v83 = *(v82 - 8);
  v84 = *(v83 + 104);
  v85 = v156;
  v164 = v81;
  v163 = v84;
  v162 = v83 + 104;
  v84(v156, v81, v82);
  v161 = sub_21A1F54C8(&qword_27CCFEFA0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_21A2F7874();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v189 = v78;
  v190 = v79;
  v160 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60, &qword_21A3024C0, MEMORY[0x277D84470]);
  v89 = v179;
  v159 = OpaqueTypeConformance2;
  v158 = v88;
  sub_21A2F6BC4();
  sub_21A1427A8(v85, &qword_27CCFEF60, &qword_21A3024C0);
  v90 = *(v184 + 8);
  v184 += 8;
  v157 = v90;
  (v90)(v80, v89);
  swift_getKeyPath();
  v189 = v62;
  sub_21A2F5094();

  v149 = v62;
  v91 = *(v62 + 32);
  v92 = v173;
  sub_21A2F7884();
  v93 = v174;
  sub_21A2F4A54();
  v94 = sub_21A2F7934(v92, 0, 0, 0, v93, "The navigation header title for the directions section of the recipe card", 73, 2);
  v96 = v95;
  v97 = v175;
  sub_21A1F4FC4(v178, v175);
  v98 = v171;
  v99 = swift_allocObject();
  v100 = sub_21A1F5028(v97, v99 + v169, type metadata accessor for RecipeCardNavHeadersView);
  *(v99 + v98) = 2;
  MEMORY[0x28223BE20](v100, v101);
  *(&v142 - 4) = v94;
  *(&v142 - 3) = v96;
  *(&v142 - 16) = v91 == 2;
  v102 = v155;
  sub_21A2F7094();

  if (v91 == 2)
  {
    v103 = sub_21A2F6284();
  }

  else
  {
    v103 = sub_21A2F6294();
  }

  v104 = v103;
  v105 = v153;
  (v165)(v153, v102, v182);
  *(v105 + *(v181 + 36)) = v104;
  v106 = v154;
  sub_21A2F6DD4();
  sub_21A1427A8(v105, &qword_27CD00F78, &qword_21A3024D0);
  v163(v85, v164, v82);
  result = sub_21A2F7874();
  v107 = v178;
  v108 = v149;
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  v109 = v179;
  sub_21A2F6BC4();
  sub_21A1427A8(v85, &qword_27CCFEF60, &qword_21A3024C0);
  (v157)(v106, v109);
  if (*(v107 + 8) != 1)
  {
    v123 = 1;
    v124 = v152;
    v125 = v151;
    v126 = v150;
LABEL_16:
    (*(v126 + 56))(v124, v123, 1, v125);
    v134 = *(v126 + 16);
    v135 = v176;
    v134(v176, v183, v125);
    v136 = v146;
    v137 = v177;
    v134(v146, v177, v125);
    v138 = v148;
    sub_21A183960(v124, v148, &qword_27CD00F68, &qword_21A3024B8);
    v139 = v147;
    v134(v147, v135, v125);
    v140 = sub_21A176C98(&qword_27CD01000, &qword_21A302548);
    v134(&v139[*(v140 + 48)], v136, v125);
    sub_21A183960(v138, &v139[*(v140 + 64)], &qword_27CD00F68, &qword_21A3024B8);
    sub_21A1427A8(v124, &qword_27CD00F68, &qword_21A3024B8);
    v141 = *(v126 + 8);
    v141(v137, v125);
    v141(v183, v125);
    sub_21A1427A8(v138, &qword_27CD00F68, &qword_21A3024B8);
    v141(v136, v125);
    return (v141)(v176, v125);
  }

  swift_getKeyPath();
  v189 = v108;
  sub_21A2F5094();

  v110 = *(v108 + 32);
  v111 = v173;
  sub_21A2F7884();
  v112 = v174;
  sub_21A2F4A54();
  v113 = sub_21A2F7934(v111, 0, 0, 0, v112, "The navigation header title for the details section of the recipe card", 70, 2);
  v115 = v114;
  v116 = v175;
  sub_21A1F4FC4(v107, v175);
  v117 = v171;
  v118 = swift_allocObject();
  v119 = sub_21A1F5028(v116, v118 + v169, type metadata accessor for RecipeCardNavHeadersView);
  *(v118 + v117) = 3;
  MEMORY[0x28223BE20](v119, v120);
  *(&v142 - 4) = v113;
  *(&v142 - 3) = v115;
  *(&v142 - 16) = v110 > 2;
  v121 = v145;
  sub_21A2F7094();

  if (v110 == 3)
  {
    v122 = sub_21A2F6284();
  }

  else
  {
    v122 = sub_21A2F6294();
  }

  v127 = v122;
  v128 = v152;
  v125 = v151;
  v126 = v150;
  v129 = v181;
  v130 = v144;
  v131 = v143;
  (v165)(v143, v121, v182);
  *(v131 + *(v129 + 36)) = v127;
  sub_21A2F6DD4();
  sub_21A1427A8(v131, &qword_27CD00F78, &qword_21A3024D0);
  v163(v85, v164, v82);
  result = sub_21A2F7874();
  if (result)
  {
    v132 = v142;
    v133 = v179;
    sub_21A2F6BC4();
    sub_21A1427A8(v85, &qword_27CCFEF60, &qword_21A3024C0);
    (v157)(v130, v133);
    v124 = v128;
    (*(v126 + 32))(v128, v132, v125);
    v123 = 0;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

double sub_21A1F4A8C(uint64_t a1, char a2)
{
  sub_21A2F7374();
  sub_21A2F58E4();

  return result;
}

void sub_21A1F4B20(uint64_t *a1, unsigned __int8 a2)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1F54C8(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (v4)
  {
    v5 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
    *(v3 + 33) = 0;
    v6 = v5;
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    sub_21A18FAD4(a2, v6, v4, 0, 0, 0, 6u);
  }
}

double sub_21A1F4C48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *&v41 = a1;
  *(&v41 + 1) = a2;
  sub_21A1834FC();
  sub_21A2F5434();
  v5 = sub_21A2F69B4();
  v7 = v6;
  v9 = v8;
  sub_21A2F67B4();
  sub_21A2F66F4();
  sub_21A2F6764();

  v10 = sub_21A2F68E4();
  v12 = v11;
  v14 = v13;
  v38 = v15;

  sub_21A1834EC(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v17 = sub_21A2F6664();
  sub_21A2F55A4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v14 & 1;
  v36 = sub_21A2F7344();
  v37 = v27;
  LOBYTE(v35) = 1;
  LOBYTE(v34) = 1;
  sub_21A2F5C14();
  *&v40[55] = v44;
  *&v40[71] = v45;
  *&v40[87] = v46;
  *&v40[103] = v47;
  *&v40[7] = v41;
  *&v40[23] = v42;
  *&v40[39] = v43;
  v28 = objc_opt_self();
  v29 = &selRef_labelColor;
  if ((a3 & 1) == 0)
  {
    v29 = &selRef_tertiaryLabelColor;
  }

  v30 = [v28 *v29];
  v31 = sub_21A2F6EF4();
  v32 = (a4 + *(sub_21A176C98(&qword_27CD00F90, &qword_21A302518) + 36));
  *v32 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0, &unk_21A2FCEA0);
  swift_storeEnumTagMultiPayload();
  *(v32 + *(type metadata accessor for RecipeLabelVibrancyViewModifier(0) + 20)) = 1;
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v26;
  *(a4 + 24) = v38;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  *(a4 + 56) = v17;
  *(a4 + 64) = v19;
  *(a4 + 72) = v21;
  *(a4 + 80) = v23;
  *(a4 + 88) = v25;
  *(a4 + 96) = 0;
  *(a4 + 161) = *&v40[64];
  *(a4 + 177) = *&v40[80];
  *(a4 + 193) = *&v40[96];
  *(a4 + 97) = *v40;
  *(a4 + 113) = *&v40[16];
  result = *&v40[32];
  *(a4 + 129) = *&v40[32];
  *(a4 + 145) = *&v40[48];
  *(a4 + 208) = *(&v47 + 1);
  *(a4 + 216) = v31;
  return result;
}

uint64_t sub_21A1F4F04@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21A2F6004();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_21A176C98(&qword_27CD00F38, &qword_21A302480);
  return sub_21A1F319C(v3, a2 + *(v5 + 44));
}

uint64_t sub_21A1F4F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD00F50, &qword_21A302498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1F4FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeCardNavHeadersView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1F5028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A1F50A0()
{
  result = qword_27CD00F98;
  if (!qword_27CD00F98)
  {
    sub_21A176D98(&qword_27CD00F90, &qword_21A302518);
    sub_21A1F515C();
    sub_21A1F54C8(&qword_27CCFEFC8, type metadata accessor for RecipeLabelVibrancyViewModifier, &unk_21A2FBDF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00F98);
  }

  return result;
}

unint64_t sub_21A1F515C()
{
  result = qword_27CD00FA0;
  if (!qword_27CD00FA0)
  {
    sub_21A176D98(&qword_27CD00FA8, &qword_21A302520);
    sub_21A1F5214();
    sub_21A1772F8(&qword_27CCFE938, &qword_27CCFE940, &unk_21A2F9A70, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00FA0);
  }

  return result;
}

unint64_t sub_21A1F5214()
{
  result = qword_27CD00FB0;
  if (!qword_27CD00FB0)
  {
    sub_21A176D98(&qword_27CD00FB8, &qword_21A302528);
    sub_21A1F52A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00FB0);
  }

  return result;
}

unint64_t sub_21A1F52A0()
{
  result = qword_27CD00FC0;
  if (!qword_27CD00FC0)
  {
    sub_21A176D98(&qword_27CD00FC8, &unk_21A302530);
    sub_21A1F532C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00FC0);
  }

  return result;
}

unint64_t sub_21A1F532C()
{
  result = qword_27CD00FD0;
  if (!qword_27CD00FD0)
  {
    sub_21A176D98(&qword_27CD00FD8, &qword_21A313500);
    sub_21A1772F8(&qword_27CCFF9E8, &qword_27CCFF9F0, &unk_21A2FD430, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00FD0);
  }

  return result;
}

unint64_t sub_21A1F53E4()
{
  result = qword_27CD00FE0;
  if (!qword_27CD00FE0)
  {
    sub_21A176D98(&qword_27CD00F78, &qword_21A3024D0);
    sub_21A1772F8(&qword_27CD00FE8, &qword_27CD00F70, &qword_21A3024C8, MEMORY[0x277CDF028]);
    sub_21A1772F8(&qword_27CD00FF0, &qword_27CD00FF8, &qword_21A302540, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00FE0);
  }

  return result;
}

uint64_t sub_21A1F54C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21A1F5510()
{
  v1 = *(type metadata accessor for RecipeCardNavHeadersView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_21A1F4A8C(v2, v3);
}

uint64_t sub_21A1F55B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Step(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for StepSection(0);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A1F56F8, 0, 0);
}

uint64_t sub_21A1F56F8()
{
  v1 = v0[3];
  v54 = type metadata accessor for Recipe(0);
  v2 = *(v1 + *(v54 + 72));
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    goto LABEL_48;
  }

  v5 = v0[10];
  v62 = v0[9];
  v68 = v0[5];
  v74 = v0;
  v66 = v0[4];
  v80 = MEMORY[0x277D84F90];
  v57 = *(v2 + 16);
  v58 = *(v1 + *(v54 + 72));
  result = sub_21A25D5D8(0, v3, 0);
  v7 = 0;
  v8 = v80;
  v9 = v58;
  v55 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v56 = v5;
LABEL_3:
  if (v7 >= *(v9 + 16))
  {
    goto LABEL_52;
  }

  v60 = v7;
  v61 = v8;
  v10 = v74[11];
  v59 = *(v56 + 72);
  sub_21A1F5EC0(v58 + v55 + v59 * v7, v10, type metadata accessor for StepSection);
  v11 = *(v10 + *(v62 + 24));
  v12 = *(v11 + 16);
  if (!v12)
  {
    v45 = v4;
    goto LABEL_38;
  }

  v64 = *(v11 + 16);
  result = sub_21A25D510(0, v12, 0);
  v13 = 0;
  v14 = v4;
  v63 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v67 = v11 + v63;
  v65 = v11;
  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v72 = v13;
    v73 = v14;
    v15 = v74[6];
    v8 = v74[7];
    v71 = *(v68 + 72);
    sub_21A1F5EC0(v67 + v71 * v13, v8, type metadata accessor for Step);
    sub_21A1F5EC0(v8, v15, type metadata accessor for Step);
    v70 = v15;
    v16 = *(v15 + *(v66 + 24));
    v77 = *(v16 + 16);
    v69 = *(v66 + 24);
    if (v77)
    {
      break;
    }

    v18 = v4;
LABEL_33:
    v40 = v74[8];
    v41 = v74[6];
    sub_21A1F5DFC(v74[7]);

    *(v70 + v69) = v18;
    sub_21A1F5E58(v41, v40, type metadata accessor for Step);
    v14 = v73;
    v43 = *(v73 + 16);
    v42 = *(v73 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_21A25D510((v42 > 1), v43 + 1, 1);
      v14 = v73;
    }

    v44 = v74[8];
    *(v14 + 16) = v43 + 1;
    result = sub_21A1F5E58(v44, v14 + v63 + v43 * v71, type metadata accessor for Step);
    v13 = v72 + 1;
    v11 = v65;
    if (v72 + 1 == v64)
    {
      v45 = v14;
LABEL_38:
      v46 = v74[12];
      sub_21A1F5E58(v74[11], v46, type metadata accessor for StepSection);
      v47 = *(v62 + 24);

      *(v46 + v47) = v45;
      v8 = v61;
      v49 = *(v61 + 16);
      v48 = *(v61 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_21A25D5D8((v48 > 1), v49 + 1, 1);
        v8 = v61;
      }

      v50 = v74[12];
      *(v8 + 16) = v49 + 1;
      result = sub_21A1F5E58(v50, v8 + v55 + v49 * v59, type metadata accessor for StepSection);
      v7 = v60 + 1;
      v9 = v58;
      if (v60 + 1 == v57)
      {
        goto LABEL_47;
      }

      goto LABEL_3;
    }
  }

  v17 = 0;
  v76 = v16 + 32;
  v18 = v4;
  v75 = v16;
  while (v17 < *(v16 + 16))
  {
    v19 = (v76 + 40 * v17);
    v20 = *v19;
    v21 = v19[1];
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A270F5C(v20, v21);
    v23 = *(v22 + 16);
    if (v23)
    {
      v78 = v17;
      v79 = v18;
      v24 = v22;
      sub_21A25D61C(0, v23, 0);
      v8 = v4;
      v25 = *(v4 + 16);
      v26 = 40 * v25 + 64;
      v27 = (v24 + 40);
      do
      {
        v28 = *(v27 - 1);
        v29 = *v27;
        v30 = *(v4 + 24);
        sub_21A2F5434();
        if (v25 >= v30 >> 1)
        {
          sub_21A25D61C((v30 > 1), v25 + 1, 1);
        }

        *(v4 + 16) = v25 + 1;
        v31 = (v4 + v26);
        *(v31 - 4) = v28;
        *(v31 - 3) = v29;
        v26 += 40;
        *(v31 - 2) = v4;
        *(v31 - 1) = v4;
        v27 += 2;
        ++v25;
        *v31 = v4;
        --v23;
      }

      while (v23);

      v16 = v75;
      v17 = v78;
      v18 = v79;
    }

    else
    {

      v8 = v4;
    }

    v32 = *(v8 + 16);
    v33 = *(v18 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_43;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v34 <= *(v18 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v18 = sub_21A1B6CA4(isUniquelyReferenced_nonNull_native, v36, 1, v18);
      if (*(v8 + 16))
      {
LABEL_28:
        if ((*(v18 + 3) >> 1) - *(v18 + 2) < v32)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v37 = *(v18 + 2);
          v38 = __OFADD__(v37, v32);
          v39 = v37 + v32;
          if (v38)
          {
            goto LABEL_46;
          }

          *(v18 + 2) = v39;
        }

        goto LABEL_10;
      }
    }

    if (v32)
    {
      goto LABEL_44;
    }

LABEL_10:
    if (++v17 == v77)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  v0 = v74;
  v4 = v8;
  v1 = v74[3];
LABEL_48:
  v51 = v0[2];
  sub_21A1F5EC0(v1, v51, type metadata accessor for Recipe);
  v52 = *(v54 + 72);

  *(v51 + v52) = v4;

  v53 = v0[1];

  return v53();
}

uint64_t sub_21A1F5D5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A145E2C;

  return sub_21A1F55B8(a1, a2);
}

uint64_t sub_21A1F5DFC(uint64_t a1)
{
  v2 = type metadata accessor for Step(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1F5E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1F5EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of CookingSessionsManagerType.session(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A146070;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CookingSessionsManagerType.save(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A146070;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CookingSessionsManagerType.mostRecentlyViewedSession()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A146070;

  return v9(a1, a2, a3);
}

uint64_t sub_21A1F62B0(uint64_t a1)
{
  v3 = type metadata accessor for PersistentCookingSessions.Entry(0);
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v34 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CookingSession(0);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v32 = v9;
  v29[1] = v1;
  v38 = MEMORY[0x277D84F90];
  sub_21A25D748(0, v10, 0);
  v11 = v38;
  v37 = a1 + 64;
  result = sub_21A2F7F44();
  v13 = result;
  v14 = 0;
  v30 = a1 + 72;
  v31 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v37 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v36 = *(a1 + 36);
    v18 = v34;
    sub_21A1BA364(*(a1 + 56) + *(v35 + 72) * v13, v34, type metadata accessor for PersistentCookingSessions.Entry);
    v19 = v32;
    sub_21A1BA364(v18, v32, type metadata accessor for CookingSession);
    sub_21A1BA820(v18, type metadata accessor for PersistentCookingSessions.Entry);
    v38 = v11;
    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_21A25D748((v20 > 1), v21 + 1, 1);
      v11 = v38;
    }

    *(v11 + 16) = v21 + 1;
    result = sub_21A1F9778(v19, v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, type metadata accessor for CookingSession);
    v15 = 1 << *(a1 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v22 = *(v37 + 8 * v17);
    if ((v22 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v15 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
    }

    else
    {
      v24 = v17 << 6;
      v25 = v17 + 1;
      v16 = v31;
      v26 = (v30 + 8 * v17);
      while (v25 < (v15 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_21A1F96A8(v13, v36, 0);
          v15 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_21A1F96A8(v13, v36, 0);
    }

LABEL_4:
    ++v14;
    v13 = v15;
    if (v14 == v16)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21A1F663C()
{
  *(v1 + 32) = v0;
  sub_21A176C98(&qword_27CCFEB08, &qword_21A2FC200);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A1F66D8, v0, 0);
}

uint64_t sub_21A1F66D8()
{
  v1 = v0[4];
  v2 = *(v1 + 120);
  v0[6] = v2;
  if (*(v1 + 128))
  {
    if (*(v1 + 128) == 1)
    {
      sub_21A2F5434();

      v3 = v0[1];

      return v3(v2);
    }

    v7 = v0[5];
    v8 = sub_21A2F7C64();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v10 = sub_21A152670(qword_2811B8690, v9, type metadata accessor for CookingSessionsManager, &unk_21A3027E8);
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v10;
    v11[4] = v1;
    swift_retain_n();
    v2 = sub_21A19A008(0, 0, v7, &unk_21A302858, v11);
    v0[8] = v2;
    v12 = *(v1 + 120);
    *(v1 + 120) = v2;
    LOBYTE(v11) = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_21A1448F0(v12, v11);
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_21A1F6ACC;
    v6 = v0 + 3;
  }

  else
  {

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_21A1F6948;
    v6 = v0 + 2;
  }

  return MEMORY[0x282200460](v6, v2, &type metadata for PersistentCookingSessions);
}

uint64_t sub_21A1F6948()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_21A1F6A58, v1, 0);
}

uint64_t sub_21A1F6A58()
{
  sub_21A1448F0(v0[6], 0);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_21A1F6ACC()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_21A1F6BDC, v1, 0);
}

uint64_t sub_21A1F6BDC()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21A1F6C4C()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_21A1F6D5C, v1, 0);
}

uint64_t sub_21A1F6D5C()
{
  sub_21A1448F0(*(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A1F6DD0()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 24);

  return v2(v3);
}

uint64_t sub_21A1F6EDC(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  sub_21A176C98(&qword_27CCFEB08, &qword_21A2FC200);
  v5 = swift_task_alloc();
  v6 = *a2;
  v7 = a2[1];
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = v7;

  return MEMORY[0x2822009F8](sub_21A1F6F84, v2, 0);
}

uint64_t sub_21A1F6F84()
{
  v18 = v0;
  v1 = v0[5];
  v2 = *(v1 + 120);
  v0[9] = v2;
  if (*(v1 + 128))
  {
    if (*(v1 + 128) == 1)
    {
      v4 = v0[7];
      v3 = v0[8];
      v5 = v0[4];
      sub_21A2F5434();
      v17[0] = v4;
      v17[1] = v3;
      sub_21A2F5434();
      sub_21A1B9CF0(v17, v2, v5);

      v6 = v0[1];

      return v6();
    }

    v10 = v0[6];
    v11 = sub_21A2F7C64();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v13 = sub_21A152670(qword_2811B8690, v12, type metadata accessor for CookingSessionsManager, &unk_21A3027E8);
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v13;
    v14[4] = v1;
    swift_retain_n();
    v2 = sub_21A19A008(0, 0, v10, &unk_21A302850, v14);
    v0[11] = v2;
    v15 = *(v1 + 120);
    *(v1 + 120) = v2;
    LOBYTE(v14) = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_21A1448F0(v15, v14);
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_21A1F73EC;
    v9 = v0 + 3;
  }

  else
  {

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_21A1F7230;
    v9 = v0 + 2;
  }

  return MEMORY[0x282200460](v9, v2, &type metadata for PersistentCookingSessions);
}

uint64_t sub_21A1F7230()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_21A1F7340, v1, 0);
}

uint64_t sub_21A1F7340()
{
  v7 = v0;
  sub_21A1448F0(v0[9], 0);
  v1 = v0[2];
  v2 = v0[8];
  v3 = v0[4];
  v6[0] = v0[7];
  v6[1] = v2;
  sub_21A2F5434();
  sub_21A1B9CF0(v6, v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21A1F73EC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_21A1F74FC, v1, 0);
}

uint64_t sub_21A1F74FC()
{
  v7 = v0;

  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  v6[0] = v0[7];
  v6[1] = v1;
  sub_21A2F5434();
  sub_21A1B9CF0(v6, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21A1F75A0(uint64_t *a1)
{
  v2[2] = v1;
  sub_21A176C98(&qword_27CD01028, &qword_21A302838);
  v2[3] = swift_task_alloc();
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFEB38, &unk_21A2FB5C0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_21A2F4AB4();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_21A2F49B4();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for PersistentCookingSessions.Entry(0);
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for CookingSession(0);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFF1E8, &unk_21A2FBD80);
  v2[30] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  v2[31] = v8;
  v2[32] = v9;
  sub_21A2F5434();
  v10 = swift_task_alloc();
  v2[33] = v10;
  *v10 = v2;
  v10[1] = sub_21A1F790C;

  return sub_21A1F663C();
}

uint64_t sub_21A1F790C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_21A1F7A24, v2, 0);
}

unint64_t sub_21A1F7A24()
{
  v133 = v0[31];
  v126 = v0[30];
  v127 = v0[32];
  v1 = v0[25];
  v2 = -1;
  v3 = -1 << *(v127 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v127 + 64);
  v5 = (63 - v3) >> 6;
  v129 = (v0[15] + 8);
  v130 = (v0[12] + 8);
  v6 = v0[19];
  v125 = v0[25];
  v121 = (v1 + 48);
  v122 = (v1 + 56);
  v123 = (v6 + 56);
  v134 = v6;
  v120 = (v6 + 48);
  v7 = 0;
  v136 = sub_21A2F5434();
  v124 = v136;
  v132 = v5;
  v135 = v0;
LABEL_4:
  v8 = v7;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = v0[29];
      v11 = v0[30];
      v13 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v14 = v13 | (v9 << 6);
      v15 = (*(v127 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_21A1BA364(*(v127 + 56) + *(v125 + 72) * v14, v12, type metadata accessor for CookingSession);
      v18 = sub_21A176C98(&qword_27CCFF1F0, &qword_21A302840);
      v19 = *(v18 + 48);
      *v11 = v16;
      *(v126 + 8) = v17;
      sub_21A1F9778(v12, v11 + v19, type metadata accessor for CookingSession);
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
      v0 = v135;
      sub_21A2F5434();
      v139 = v9;
LABEL_13:
      v20 = v0[31];
      sub_21A1F9708(v0[30], v20);
      v21 = sub_21A176C98(&qword_27CCFF1F0, &qword_21A302840);
      if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
      {
        break;
      }

      v22 = v0[31];
      v23 = *v22;
      v24 = *(v133 + 8);
      sub_21A1F9778(v22 + *(v21 + 48), v0[28], type metadata accessor for CookingSession);
      v137 = v24;
      if (!*(v136 + 16))
      {
        goto LABEL_23;
      }

      sub_21A2F5434();
      v25 = sub_21A261F58(v23, v24);
      if ((v26 & 1) == 0)
      {

        goto LABEL_23;
      }

      v131 = v23;
      v27 = v0[22];
      v28 = v0[23];
      v29 = v0[16];
      v30 = v0[17];
      v31 = v0[13];
      v32 = v0[14];
      v33 = v0[11];
      v128 = *(v134 + 72);
      sub_21A1BA364(*(v136 + 56) + v128 * v25, v27, type metadata accessor for PersistentCookingSessions.Entry);
      sub_21A1F9778(v27, v28, type metadata accessor for PersistentCookingSessions.Entry);
      sub_21A2F4974();
      sub_21A2F4A94();
      sub_21A2F4834();
      (*v130)(v31, v33);
      v34 = *v129;
      (*v129)(v29, v32);
      sub_21A152670(&qword_27CCFF338, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LOBYTE(v27) = sub_21A2F7844();

      v34(v30, v32);
      if ((v27 & 1) == 0)
      {
        sub_21A1BA820(v0[23], type metadata accessor for PersistentCookingSessions.Entry);
        v23 = v131;
        v5 = v132;
LABEL_23:
        v43 = v23;
        v44 = v0[24];
        v46 = v0[7];
        v45 = v0[8];
        sub_21A1BA364(v0[28], v45, type metadata accessor for CookingSession);
        (*v122)(v45, 0, 1, v44);
        sub_21A183960(v45, v46, &qword_27CCFEB38, &unk_21A2FB5C0);
        if ((*v121)(v46, 1, v44) == 1)
        {
          v47 = *v123;
          (*v123)(v0[4], 1, 1, v0[18]);
        }

        else
        {
          v48 = v0[29];
          v49 = v0[26];
          v50 = v0[18];
          v51 = v0[4];
          sub_21A1F9778(v0[7], v48, type metadata accessor for CookingSession);
          sub_21A1BA364(v48, v49, type metadata accessor for CookingSession);
          sub_21A1BA364(v49, v51, type metadata accessor for CookingSession);
          sub_21A2F4974();
          sub_21A1BA820(v49, type metadata accessor for CookingSession);
          v47 = *v123;
          (*v123)(v51, 0, 1, v50);
          v0 = v135;
          sub_21A1BA820(v48, type metadata accessor for CookingSession);
        }

        v52 = v0[4];
        if ((*v120)(v52, 1, v0[18]) == 1)
        {
          sub_21A1427A8(v52, &qword_27CD01028, &qword_21A302838);
          v53 = sub_21A261F58(v43, v137);
          v55 = v54;

          if (v55)
          {
            v7 = v139;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_21A2B7CB4();
            }

            v56 = v135[28];
            v57 = v135[8];
            v58 = v135[3];

            sub_21A1F9778(v124[7] + *(v134 + 72) * v53, v58, type metadata accessor for PersistentCookingSessions.Entry);
            sub_21A2B6500(v53, v124);
            sub_21A1427A8(v57, &qword_27CCFEB38, &unk_21A2FB5C0);
            v0 = v135;
            sub_21A1BA820(v56, type metadata accessor for CookingSession);
            v59 = 0;
          }

          else
          {
            v73 = v0[28];
            sub_21A1427A8(v0[8], &qword_27CCFEB38, &unk_21A2FB5C0);
            sub_21A1BA820(v73, type metadata accessor for CookingSession);
            v59 = 1;
            v7 = v139;
          }

          v74 = v0[3];
          v47(v74, v59, 1, v0[18]);
          sub_21A1427A8(v74, &qword_27CD01028, &qword_21A302838);
          goto LABEL_4;
        }

        sub_21A1F9778(v52, v0[20], type metadata accessor for PersistentCookingSessions.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        result = sub_21A261F58(v43, v137);
        v63 = v124[2];
        v64 = (v62 & 1) == 0;
        v65 = __OFADD__(v63, v64);
        v66 = v63 + v64;
        if (v65)
        {
          __break(1u);
        }

        else
        {
          v67 = v62;
          if (v124[3] >= v66)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v112 = result;
              sub_21A2B7CB4();
              result = v112;
            }
          }

          else
          {
            sub_21A26E298(v66, isUniquelyReferenced_nonNull_native);
            result = sub_21A261F58(v43, v137);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_69;
            }
          }

          v75 = v135[28];
          v76 = v135[20];
          v77 = v135[8];
          if (v67)
          {
            v78 = result;

            sub_21A1F97E0(v76, v124[7] + *(v134 + 72) * v78);
            sub_21A1427A8(v77, &qword_27CCFEB38, &unk_21A2FB5C0);
            sub_21A1BA820(v75, type metadata accessor for CookingSession);
LABEL_64:
            v5 = v132;
            v7 = v139;
            v0 = v135;
            goto LABEL_4;
          }

          v79 = v124;
          v124[(result >> 6) + 8] |= 1 << result;
          v80 = (v124[6] + 16 * result);
          *v80 = v43;
          v80[1] = v137;
          sub_21A1F9778(v76, v124[7] + *(v134 + 72) * result, type metadata accessor for PersistentCookingSessions.Entry);
          sub_21A1427A8(v77, &qword_27CCFEB38, &unk_21A2FB5C0);
          result = sub_21A1BA820(v75, type metadata accessor for CookingSession);
          v81 = v124[2];
          v65 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (!v65)
          {
LABEL_63:
            v124 = v79;
            v79[2] = v82;
            goto LABEL_64;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        return result;
      }

      v35 = v0[27];
      v36 = v0[28];
      v37 = v0[23];
      sub_21A1BA364(v37, v35, type metadata accessor for CookingSession);
      sub_21A1BA820(v37, type metadata accessor for PersistentCookingSessions.Entry);
      v38 = _s10CookingKit0A7SessionV2eeoiySbAC_ACtFZ_0(v36, v35);
      v39 = v0[28];
      v5 = v132;
      if (!v38)
      {
        v69 = v0[24];
        v71 = v0[9];
        v70 = v0[10];
        sub_21A1BA364(v0[28], v70, type metadata accessor for CookingSession);
        (*v122)(v70, 0, 1, v69);
        sub_21A183960(v70, v71, &qword_27CCFEB38, &unk_21A2FB5C0);
        if ((*v121)(v71, 1, v69) == 1)
        {
          v72 = *v123;
          (*v123)(v0[6], 1, 1, v0[18]);
        }

        else
        {
          v83 = v0[29];
          v84 = v0[26];
          v85 = v0[18];
          v86 = v0[6];
          sub_21A1F9778(v0[9], v83, type metadata accessor for CookingSession);
          sub_21A1BA364(v83, v84, type metadata accessor for CookingSession);
          sub_21A1BA364(v84, v86, type metadata accessor for CookingSession);
          sub_21A2F4974();
          sub_21A1BA820(v84, type metadata accessor for CookingSession);
          v72 = *v123;
          (*v123)(v86, 0, 1, v85);
          v0 = v135;
          sub_21A1BA820(v83, type metadata accessor for CookingSession);
        }

        v87 = v0[6];
        if ((*v120)(v87, 1, v0[18]) == 1)
        {
          sub_21A1427A8(v87, &qword_27CD01028, &qword_21A302838);
          v88 = sub_21A261F58(v131, v24);
          v90 = v89;

          if (v90)
          {
            v7 = v139;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_21A2B7CB4();
            }

            v0 = v135;
            v91 = v135[27];
            v138 = v135[28];
            v92 = v135[10];
            v93 = v135[5];

            sub_21A1F9778(v124[7] + v88 * v128, v93, type metadata accessor for PersistentCookingSessions.Entry);
            sub_21A2B6500(v88, v124);
            sub_21A1427A8(v92, &qword_27CCFEB38, &unk_21A2FB5C0);
            sub_21A1BA820(v91, type metadata accessor for CookingSession);
            sub_21A1BA820(v138, type metadata accessor for CookingSession);
            v94 = 0;
          }

          else
          {
            v0 = v135;
            v102 = v135[27];
            v103 = v135[28];
            sub_21A1427A8(v135[10], &qword_27CCFEB38, &unk_21A2FB5C0);
            sub_21A1BA820(v102, type metadata accessor for CookingSession);
            sub_21A1BA820(v103, type metadata accessor for CookingSession);
            v94 = 1;
            v7 = v139;
          }

          v104 = v0[5];
          v72(v104, v94, 1, v0[18]);
          sub_21A1427A8(v104, &qword_27CD01028, &qword_21A302838);
          goto LABEL_4;
        }

        sub_21A1F9778(v87, v0[21], type metadata accessor for PersistentCookingSessions.Entry);
        v95 = swift_isUniquelyReferenced_nonNull_native();
        result = sub_21A261F58(v131, v24);
        v97 = v124[2];
        v98 = (v96 & 1) == 0;
        v65 = __OFADD__(v97, v98);
        v99 = v97 + v98;
        if (v65)
        {
          goto LABEL_74;
        }

        v100 = v96;
        if (v124[3] >= v99)
        {
          if ((v95 & 1) == 0)
          {
            v113 = result;
            sub_21A2B7CB4();
            result = v113;
          }
        }

        else
        {
          sub_21A26E298(v99, v95);
          result = sub_21A261F58(v131, v24);
          if ((v100 & 1) != (v101 & 1))
          {
            goto LABEL_69;
          }
        }

        v106 = v135[27];
        v105 = v135[28];
        v107 = v135[21];
        v108 = v135[10];
        if (v100)
        {
          v109 = result;

          sub_21A1F97E0(v107, v124[7] + v109 * v128);
          sub_21A1427A8(v108, &qword_27CCFEB38, &unk_21A2FB5C0);
          sub_21A1BA820(v106, type metadata accessor for CookingSession);
          sub_21A1BA820(v105, type metadata accessor for CookingSession);
          goto LABEL_64;
        }

        v79 = v124;
        v124[(result >> 6) + 8] |= 1 << result;
        v110 = (v124[6] + 16 * result);
        *v110 = v131;
        v110[1] = v24;
        sub_21A1F9778(v107, v124[7] + result * v128, type metadata accessor for PersistentCookingSessions.Entry);
        sub_21A1427A8(v108, &qword_27CCFEB38, &unk_21A2FB5C0);
        sub_21A1BA820(v106, type metadata accessor for CookingSession);
        result = sub_21A1BA820(v105, type metadata accessor for CookingSession);
        v111 = v124[2];
        v65 = __OFADD__(v111, 1);
        v82 = v111 + 1;
        if (!v65)
        {
          goto LABEL_63;
        }

        goto LABEL_75;
      }

      v40 = v0[27];

      sub_21A1BA820(v40, type metadata accessor for CookingSession);
      sub_21A1BA820(v39, type metadata accessor for CookingSession);
      v8 = v139;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v114 = v0[2];

    sub_21A153B7C(v124);
    v116 = v115;

    v117 = *(v114 + 120);
    *(v114 + 120) = v116;
    v118 = *(v114 + 128);
    *(v114 + 128) = 1;
    sub_21A1448F0(v117, v118);
    v119 = swift_task_alloc();
    v0[35] = v119;
    *v119 = v0;
    v119[1] = sub_21A1F8AB8;

    return sub_21A1F8D28();
  }

  else
  {
LABEL_6:
    if (v5 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v5;
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        v139 = v10 - 1;
        v41 = v0[30];
        v42 = sub_21A176C98(&qword_27CCFF1F0, &qword_21A302840);
        (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
        v4 = 0;
        goto LABEL_13;
      }

      v4 = *(v127 + 64 + 8 * v9);
      ++v8;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_69:

    return sub_21A2F83D4();
  }
}