uint64_t sub_24B9DB2C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AllowedAppsPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
  return sub_24BAA9A0C();
}

uint64_t sub_24B9DB334(uint64_t a1, char a2)
{
  if (sub_24B9D9208() == 1 && (type metadata accessor for AllowedAppsPickerView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0), sub_24BAA99FC(), v6 == 1) || (v4 = a2 ^ 1, !sub_24B9D9208()) && (type metadata accessor for AllowedAppsPickerView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0), sub_24BAA99FC(), v6 == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60, &qword_24BAB7658);
    sub_24BAA99FC();
    v4 = sub_24B914A68(a1, v6);
  }

  return v4 & 1;
}

uint64_t sub_24B9DB484(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B9D9208();
  if (a1)
  {
    if (v5 == 1 || (result = sub_24B9D9208()) == 0)
    {
      type metadata accessor for AllowedAppsPickerView(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60, &qword_24BAB7658);
      sub_24BAA99FC();
      sub_24B8E5810(&v7, a3);

LABEL_12:
      sub_24BAA9A0C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
      return sub_24BAA9A0C();
    }
  }

  else if (v5 == 1 || (result = sub_24B9D9208()) == 0)
  {
    type metadata accessor for AllowedAppsPickerView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60, &qword_24BAB7658);
    sub_24BAA99FC();
    sub_24B9ACE5C(a3);

    goto LABEL_12;
  }

  return result;
}

void *sub_24B9DB760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v54 = a4;
  v55 = a5;
  v51 = a3;
  v9 = type metadata accessor for AllowedAppsPickerView(0);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v10;
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  type metadata accessor for AppNameCache();
  sub_24B9E0C70(&qword_27F064828, type metadata accessor for AppNameCache, &protocol conformance descriptor for AppNameCache);
  v13 = sub_24BAA82FC();
  v15 = v12[5];
  v14 = v12[6];
  v16 = v12[3] == v15 && v12[4] == v14;
  if (v16 || (sub_24BAAA78C() & 1) != 0)
  {
    swift_beginAccess();
    v17 = *(v13 + 16);
    v18 = *(v17 + 16);
    swift_retain_n();

    if (v18 && (v19 = sub_24BA1575C(v15, v14), (v20 & 1) != 0))
    {
      v21 = (*(v17 + 56) + 16 * v19);
      v15 = *v21;
      v22 = v21[1];
      swift_endAccess();
      v23 = v22;
    }

    else
    {
      swift_endAccess();
      sub_24BA1301C(v15, v14);
      v23 = v14;
    }

    v50 = v23;
  }

  else
  {

    v15 = v12[3];
    v50 = v12[4];
  }

  type metadata accessor for AppIconCache();
  sub_24B9E0C70(&qword_27F0651D0, type metadata accessor for AppIconCache, &unk_24BAB5614);
  v24 = sub_24BAA86FC();
  v47 = v25;
  v48 = v24;
  KeyPath = swift_getKeyPath();
  v26 = sub_24B9D9208();
  if (sub_24B9D9208() == 1)
  {
    v27 = sub_24BAA983C();
  }

  else
  {
    v27 = sub_24BAA981C();
  }

  v49 = v27;
  if (v26 == 1)
  {
    v28 = 0xEF6C6C69662E6873;
  }

  else
  {
    v28 = 0xE90000000000006BLL;
  }

  if (v26 == 1)
  {
    v29 = 0x616C732E6C6C6562;
  }

  else
  {
    v29 = 0x72616D6B63656863;
  }

  v30 = sub_24B9DB334(v12, v51 & 1);
  sub_24B9E217C(a2, v11, type metadata accessor for AllowedAppsPickerView);
  v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v32 = v11;
  v33 = (v53 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_24B9E2114(v32, v34 + v31, type metadata accessor for AllowedAppsPickerView);
  *(v34 + v33) = v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0651C0, &qword_24BAB7910);
  v36 = a6 + v35[9];
  *v36 = v12;
  *(v36 + 1) = 0x404E000000000000;
  v37 = v47;
  *(v36 + 2) = v48;
  *(v36 + 3) = v37;
  *(v36 + 4) = KeyPath;
  v36[40] = 0;
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
  swift_storeEnumTagMultiPayload();
  v38 = (a6 + v35[10]);
  v39 = v49;
  v40 = v50;
  *v38 = v15;
  v38[1] = v40;
  v41 = (a6 + v35[11]);
  *v41 = v29;
  v41[1] = v28;
  *(a6 + v35[12]) = v39;
  v42 = a6 + v35[13];
  v58 = v30 & 1;

  result = sub_24BAA99EC();
  v44 = v57;
  *v42 = v56;
  *(v42 + 1) = v44;
  v45 = (a6 + v35[14]);
  *v45 = v55;
  v45[1] = v34;
  return result;
}

uint64_t sub_24B9DBBBC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B9D9208();
  if (a1)
  {
    if (v5 == 1 || (result = sub_24B9D9208()) == 0)
    {
      type metadata accessor for AllowedAppsPickerView(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60, &qword_24BAB7658);
      sub_24BAA99FC();
      sub_24B8E5810(&v7, a3);

LABEL_12:
      sub_24BAA9A0C();
    }
  }

  else if (v5 == 1 || (result = sub_24B9D9208()) == 0)
  {
    type metadata accessor for AllowedAppsPickerView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60, &qword_24BAB7658);
    sub_24BAA99FC();
    sub_24B9ACE5C(a3);

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_24B9DBD40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = type metadata accessor for AllowedAppsPickerView(0);
  v68 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = v6;
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067DB8, &qword_24BAB7900);
  MEMORY[0x28223BE20](v7);
  v9 = (&v61 - v8);
  v10 = *a1;
  type metadata accessor for AppNameCache();
  sub_24B9E0C70(&qword_27F064828, type metadata accessor for AppNameCache, &protocol conformance descriptor for AppNameCache);
  v11 = sub_24BAA82FC();
  type metadata accessor for InstalledApp();
  v12 = swift_dynamicCastClass();
  if (v12 && ((v13 = v12[5], v14 = v12[6], v12[3] == v13) ? (v15 = v12[4] == v14) : (v15 = 0), v15 || (sub_24BAAA78C() & 1) != 0))
  {
    swift_beginAccess();
    v16 = *(v11 + 16);
    v17 = *(v16 + 16);

    if (v17 && (v18 = sub_24BA1575C(v13, v14), (v19 & 1) != 0))
    {
      v20 = (*(v16 + 56) + 16 * v18);
      v13 = *v20;
      v21 = v20[1];
      swift_endAccess();
      v22 = v21;
    }

    else
    {
      swift_endAccess();
      sub_24BA1301C(v13, v14);
      v22 = v14;
    }

    v71 = v22;
  }

  else
  {

    v13 = *(v10 + 24);
    v71 = *(v10 + 32);
  }

  v23 = [*(v10 + 16) platform];
  if (v23 == 2)
  {
    v24 = 74.4;
  }

  else
  {
    v24 = 60.0;
  }

  type metadata accessor for AppIconCache();
  sub_24B9E0C70(&qword_27F0651D0, type metadata accessor for AppIconCache, &unk_24BAB5614);

  v25 = sub_24BAA86FC();
  v64 = v26;
  v65 = v25;
  KeyPath = swift_getKeyPath();
  v27 = *(a2 + *(v5 + 48));
  v72 = v13;
  if (v27)
  {
    v28 = sub_24B9D9208();
    if (v28 == 1)
    {
      v29 = 0x616C732E6C6C6562;
    }

    else
    {
      v29 = 0x72616D6B63656863;
    }

    v30 = 0xE90000000000006BLL;
    if (v28 == 1)
    {
      v30 = 0xEF6C6C69662E6873;
    }

    v66 = v30;
    v67 = v29;
    v31 = sub_24BAA982C();
  }

  else
  {
    v66 = 0xE500000000000000;
    v67 = 0x73756E696DLL;
    v31 = sub_24BAA974C();
  }

  v63 = v31;
  v32 = sub_24B9DC454();
  if (v23 == 2)
  {
    v33 = 0x3FE0000000000000;
  }

  else
  {
    v33 = 0;
  }

  v34 = 0xC012000000000000;
  if (v23 != 2)
  {
    v34 = 0;
  }

  v61 = v34;
  if (v23 == 2)
  {
    v35 = 0x4008000000000000;
  }

  else
  {
    v35 = 0;
  }

  v36 = v70;
  sub_24B9E217C(a2, v70, type metadata accessor for AllowedAppsPickerView);
  v37 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v38 = (v69 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_24B9E2114(v36, v39 + v37, type metadata accessor for AllowedAppsPickerView);
  *(v39 + v38) = v10;
  v40 = swift_getKeyPath();
  v41 = (v9 + v7[10]);
  *v41 = v10;
  v41[1] = v24;
  v42 = v64;
  *(v41 + 2) = v65;
  *(v41 + 3) = v42;
  *(v41 + 4) = KeyPath;
  *(v41 + 40) = 0;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
  swift_storeEnumTagMultiPayload();
  v43 = v9 + v7[9];
  *v43 = v40;
  v43[8] = 0;
  v44 = (v9 + v7[11]);
  v46 = v71;
  v45 = v72;
  *v44 = v72;
  v44[1] = v46;
  v47 = (v9 + v7[12]);
  v48 = v66;
  *v47 = v67;
  v47[1] = v48;
  *(v9 + v7[13]) = v63;
  v49 = v9 + v7[14];
  *v49 = v33;
  v49[8] = 0;
  *(v9 + v7[15]) = v32;
  v50 = v9 + v7[16];
  *v50 = v35;
  v50[8] = 0;
  v51 = v9 + v7[17];
  *v51 = 0x3FF0000000000000;
  v51[8] = 0;
  v52 = v9 + v7[18];
  *v52 = v61;
  v52[8] = 0;
  v53 = (v9 + v7[19]);
  *v53 = sub_24B9E3474;
  v53[1] = v39;
  v54 = v9 + v7[20];
  v76[0] = 1;

  sub_24BAA99EC();
  v55 = v75;
  *v54 = v74;
  *(v54 + 1) = v55;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60, &unk_24BAB0490);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_24BAAD5B0;
  *(v56 + 56) = MEMORY[0x277D837D0];
  *(v56 + 64) = sub_24B8F6A20();
  *(v56 + 32) = v45;
  *(v56 + 40) = v46;
  v57 = sub_24BAA9FEC();
  v59 = v58;

  v74 = v57;
  v75 = v59;
  sub_24B8F384C(&qword_27F067DB0, &qword_27F067DB8, &qword_24BAB7900, &unk_24BABA640);
  sub_24B8F5E3C();
  sub_24BAA959C();

  return sub_24B8F35E4(v9, &qword_27F067DB8, &qword_24BAB7900);
}

uint64_t sub_24B9DC454()
{
  v1 = sub_24BAA82DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  if (*(v0 + *(type metadata accessor for AllowedAppsPickerView(0) + 48)) == 1)
  {
    if (sub_24B9D9208() == 1)
    {

      return sub_24BAA983C();
    }

    else
    {

      return sub_24BAA981C();
    }
  }

  else
  {
    sub_24B9D5D40(v7);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3C0], v1);
    v9 = sub_24BAA82CC();
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v7, v1);
    v11 = objc_opt_self();
    if (v9)
    {
      v12 = [v11 systemGray5Color];
    }

    else
    {
      v12 = [v11 systemBackgroundColor];
    }

    v13 = v12;
    return sub_24BAA973C();
  }
}

void sub_24B9DC634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllowedAppsPickerView(0);
  v5 = (a1 + v4[9]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v17 = *v5;
  v18 = v7;
  v19 = v8;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120, &qword_24BAB1040);
  MEMORY[0x24C24FC10](&v20);
  v10 = sub_24B9E3500(&v20, a2);

  if (v20 >> 62)
  {
    v11 = sub_24BAAA52C();
    if (v11 >= v10)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v11 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 < v10)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_24B9AF5C4(v10, v11);
  v16[0] = v6;
  v16[1] = v7;
  v16[2] = v8;
  sub_24BAA9B6C();

  if ((*(a1 + v4[12]) & 1) == 0)
  {
    type metadata accessor for SuggestionsViewModel(0);
    sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel, &unk_24BAB9868);
    sub_24BAA82FC();
    LOBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8, &qword_24BAB18E0);
    sub_24BAA99FC();
    v12 = v16[0];
    v17 = v6;
    v18 = v7;
    v19 = v8;
    MEMORY[0x24C24FC10](v16, v9);
    sub_24BA10938(&v20, v12, 0, 0, v16[0]);
  }

  v17 = v6;
  v18 = v7;
  v19 = v8;
  MEMORY[0x24C24FC10](v16, v9);
  v13 = (a1 + v4[20]);
  v15 = *v13;
  v14 = v13[1];
  v17 = v15;
  v18 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8, &qword_24BAB18E0);
  sub_24BAA9A0C();
}

double sub_24B9DC8D4(uint64_t a1)
{
  type metadata accessor for AllowedAppsPickerView(0);
  type metadata accessor for SuggestionsViewModel(0);
  sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel, &unk_24BAB9868);
  v1 = sub_24BAA82FC();
  sub_24B9A9098(v1 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID, *(v1 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType), v1);

  if (qword_27F0630B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v2 = [objc_opt_self() currentNotificationSettingsCenter];
  v3 = [v2 allNotificationSources];

  sub_24B9E2AE0();
  sub_24B9E0C70(&qword_27F067D20, sub_24B9E2AE0, MEMORY[0x277D85378]);
  qword_27F076FC0 = sub_24BAAA20C();
  swift_endAccess();

  if (qword_27F0630E8 != -1)
  {
    swift_once();
  }

  return sub_24BA40390();
}

double sub_24B9DCAD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for AllowedAppsPickerView(0);
  type metadata accessor for SuggestionsViewModel(0);
  sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel, &unk_24BAB9868);
  *(sub_24BAA82FC() + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType) = v3;

  v4 = sub_24BAA82FC();
  sub_24B9A9098(v4 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID, *(v4 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType), v4);

  return result;
}

uint64_t sub_24B9DCBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C88, &qword_24BAB77A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C90, &qword_24BAB77C0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C78, &qword_24BAB77A0);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for AllowedAppsPickerView(0);
  if (*(a1 + *(v14 + 48)) == 1)
  {
    *v13 = sub_24BAA8BCC();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067CD0, &qword_24BAB77F0);
    sub_24B9DD07C(a1, &v13[*(v15 + 44)]);
    sub_24B8F3208(v13, v10, &qword_27F067C78, &qword_24BAB77A0);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F067C70, &qword_27F067C78, &qword_24BAB77A0, MEMORY[0x277CE1198]);
    sub_24B8F384C(&qword_27F067C80, &qword_27F067C88, &qword_24BAB77A8, MEMORY[0x277CDD978]);
    sub_24BAA8D0C();
    return sub_24B8F35E4(v13, &qword_27F067C78, &qword_24BAB77A0);
  }

  else
  {
    v26[3] = v26;
    MEMORY[0x28223BE20](v14);
    v26[2] = &v26[-4];
    v26[-2] = a1;
    v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C98, &qword_24BAB77C8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067CA0, &unk_24BAB77D0);
    v26[1] = v8;
    v18 = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0, &unk_24BAAE4C0);
    v20 = sub_24B9E2774();
    v26[4] = v11;
    v26[5] = a2;
    v21 = v20;
    v22 = v4;
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0, &unk_24BAAD720);
    v24 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0, &unk_24BAAD720, MEMORY[0x277CDD7A8]);
    v27 = v23;
    v28 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = v18;
    v28 = v19;
    v29 = v21;
    v30 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_24BAA84CC();
    (*(v5 + 16))(v10, v7, v22);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F067C70, &qword_27F067C78, &qword_24BAB77A0, MEMORY[0x277CE1198]);
    sub_24B8F384C(&qword_27F067C80, &qword_27F067C88, &qword_24BAB77A8, MEMORY[0x277CDD978]);
    sub_24BAA8D0C();
    return (*(v5 + 8))(v7, v22);
  }
}

uint64_t sub_24B9DD07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for AllowedAppsPickerView(0);
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067CD8, &qword_24BAB77F8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v44 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-v9];
  *v10 = sub_24BAA8AAC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067CE0, &qword_24BAB7800) + 44)];
  v32 = v10;
  sub_24B9DD5B8(a1, v11);
  v12 = (a1 + *(v4 + 44));
  v57 = *v12;
  v58 = *(v12 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120, &qword_24BAB1040);
  sub_24BAA9B8C();
  v40 = *(&v48 + 1);
  v41 = v48;
  v35 = v49;
  v34 = sub_24B9DDB30();
  type metadata accessor for AppIconCache();
  swift_allocObject();
  *&v48 = sub_24B9AAAD8(8, 1);
  sub_24BAA99EC();
  v39 = v57;
  v33 = v58;
  LOBYTE(v48) = 0;
  sub_24BAA99EC();
  v42 = v57;
  v43 = v58;
  v46 = 0;
  type metadata accessor for SuggestionsViewModel(0);
  sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel, &unk_24BAB9868);
  *(&v31 + 1) = sub_24BAA82FC();
  *&v31 = sub_24BAA813C();
  LOBYTE(v4) = v46;
  v30 = v46;
  v13 = v36;
  sub_24B9E217C(a1, v36, type metadata accessor for AllowedAppsPickerView);
  v14 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v15 = swift_allocObject();
  v37 = v15;
  sub_24B9E2114(v13, v15 + v14, type metadata accessor for AllowedAppsPickerView);
  v16 = v44;
  sub_24B8F3208(v10, v44, &qword_27F067CD8, &qword_24BAB77F8);
  v17 = v38;
  sub_24B8F3208(v16, v38, &qword_27F067CD8, &qword_24BAB77F8);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067CE8, &qword_24BAB7808) + 48));
  *&v48 = v41;
  *(&v48 + 1) = v40;
  v20 = v34;
  v19 = v35;
  *&v49 = v35;
  *(&v49 + 1) = MEMORY[0x277D84F90];
  *&v50 = v34;
  *(&v50 + 1) = v39;
  v21 = v33;
  *&v51 = v33;
  BYTE8(v51) = v42;
  *(&v51 + 9) = *v47;
  HIDWORD(v51) = *&v47[3];
  *&v52 = v43;
  *(&v52 + 1) = sub_24BA39C14;
  *&v53 = 0;
  BYTE8(v53) = v4;
  HIDWORD(v53) = *&v45[3];
  *(&v53 + 9) = *v45;
  v22 = v31;
  v54 = v31;
  *&v55 = sub_24B9E2904;
  *(&v55 + 1) = v15;
  v56 = 0uLL;
  v23 = v53;
  v18[4] = v52;
  v18[5] = v23;
  v24 = v51;
  v18[2] = v50;
  v18[3] = v24;
  v25 = v49;
  *v18 = v48;
  v18[1] = v25;
  v26 = v56;
  v27 = v54;
  v18[7] = v55;
  v18[8] = v26;
  v18[6] = v27;
  sub_24B8F3208(&v48, &v57, &qword_27F067CF0, &qword_24BAB7810);
  sub_24B8F35E4(v32, &qword_27F067CD8, &qword_24BAB77F8);
  v57 = v41;
  *&v58 = v40;
  *(&v58 + 1) = v19;
  v59 = MEMORY[0x277D84F90];
  v60 = v20;
  v61 = v39;
  v62 = v21;
  v63 = v42;
  *v64 = *v47;
  *&v64[3] = *&v47[3];
  v65 = v43;
  v66 = sub_24BA39C14;
  v67 = 0;
  v68 = v30;
  *v69 = *v45;
  *&v69[3] = *&v45[3];
  v70 = v22;
  v71 = sub_24B9E2904;
  v72 = v37;
  v73 = 0;
  v74 = 0;
  sub_24B8F35E4(&v57, &qword_27F067CF0, &qword_24BAB7810);
  return sub_24B8F35E4(v44, &qword_27F067CD8, &qword_24BAB77F8);
}

uint64_t sub_24B9DD5B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AllowedAppsPickerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00, &qword_24BAAE7D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067CF8, &qword_24BAB7860);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v42 = sub_24BAA7C2C();
  v43 = v16;
  sub_24B9E217C(a1, &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AllowedAppsPickerView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_24B9E2114(&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AllowedAppsPickerView);
  sub_24B8F5E3C();
  sub_24BAA9A7C();
  sub_24BAA91EC();
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00, &qword_24BAAE7D0, MEMORY[0x277CDF028]);
  sub_24BAA941C();
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v20 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D00, &qword_24BAB7868) + 36)];
  *v20 = KeyPath;
  v20[8] = 2;
  v21 = swift_getKeyPath();
  v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D08, &qword_24BAB7870) + 36)];
  *v22 = v21;
  *(v22 + 1) = 1;
  v22[16] = 0;
  LOBYTE(v21) = sub_24BAA911C();
  sub_24BAA828C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D10, &qword_24BAB7878) + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v21) = sub_24BAA90AC();
  sub_24BAA828C();
  v32 = &v15[*(v10 + 36)];
  *v32 = v21;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_24B8F3208(v15, v13, &qword_27F067CF8, &qword_24BAB7860);
  v37 = v41;
  *v41 = 0;
  *(v37 + 8) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D18, &qword_24BAB7880);
  sub_24B8F3208(v13, v37 + *(v38 + 48), &qword_27F067CF8, &qword_24BAB7860);
  sub_24B8F35E4(v15, &qword_27F067CF8, &qword_24BAB7860);
  return sub_24B8F35E4(v13, &qword_27F067CF8, &qword_24BAB7860);
}

uint64_t sub_24B9DDA48(uint64_t a1)
{
  v2 = type metadata accessor for AllowedAppsPickerView(0);
  v3 = (a1 + v2[9]);
  v13 = *v3;
  v14 = *(v3 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120, &qword_24BAB1040);
  MEMORY[0x24C24FC10](&v12, v4);
  v5 = (a1 + v2[20]);
  v7 = *v5;
  v6 = v5[1];
  v13 = v7;
  *&v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8, &qword_24BAB18E0);
  sub_24BAA9A0C();
  v8 = (a1 + v2[21]);
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v13) = v9;
  *&v14 = v10;
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
  return sub_24BAA9A0C();
}

unint64_t sub_24B9DDB30()
{
  v1 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  if (*(v0 + *(type metadata accessor for AllowedAppsPickerView(0) + 48)) == 1)
  {
    type metadata accessor for SuggestionsViewModel(0);
    sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel, &unk_24BAB9868);
    sub_24BAA82FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v2 = *(v13 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = v13 + 48;
      while (v3 < *(v13 + 16))
      {

        MEMORY[0x24C2501C0](v5);
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24BAAA14C();
        }

        ++v3;
        sub_24BAAA16C();
        v4 += 32;
        if (v2 == v3)
        {
          v6 = v1;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
      v6 = v1;
LABEL_10:

      sub_24B8E3588(v6);
      sub_24BAA82FC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24BAA81BC();

      v7 = *(v1 + 16);
      if (!v7)
      {
LABEL_16:

        if (!(v1 >> 62))
        {

          sub_24BAAA79C();
          type metadata accessor for EventSource();
          v11 = v1;
LABEL_18:

          sub_24B8E3588(v11);
          return v14;
        }

LABEL_22:
        type metadata accessor for EventSource();

        v11 = sub_24BAAA6DC();

        goto LABEL_18;
      }

      v8 = 0;
      v9 = v1 + 48;
      while (v8 < *(v1 + 16))
      {

        MEMORY[0x24C2501C0](v10);
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24BAAA14C();
        }

        ++v8;
        sub_24BAAA16C();
        v9 += 32;
        if (v7 == v8)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  return v1;
}

void *sub_24B9DDE9C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AllowedAppsPickerView(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408, &qword_24BAB7650);
  result = MEMORY[0x24C24FC10](&v7);
  if (v7 == 2)
  {
    v6 = sub_24B9D9208();
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v7 = v6;
    return sub_24BAA9B6C();
  }

  return result;
}

uint64_t sub_24B9DDF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_24BAA8A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067CB0, &qword_24BAB77E0);
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v29 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067CA0, &unk_24BAB77D0);
  MEMORY[0x28223BE20](v32);
  v10 = &v29 - v9;
  v11 = type metadata accessor for AllowedAppsPickerView(0);
  v12 = a1 + *(v11 + 36);
  *&v42[0] = *v12;
  *(v42 + 8) = *(v12 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120, &qword_24BAB1040);
  sub_24BAA9B8C();
  v13 = *&v37[0];
  v29 = *(v37 + 8);
  v14 = *(v11 + 60);
  v33 = a1;
  v15 = (a1 + v14);
  v17 = *v15;
  v16 = v15[1];
  *&v42[0] = v17;
  *(&v42[0] + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8, &qword_24BAB18E0);
  sub_24BAA99FC();
  v18 = *&v37[0];
  type metadata accessor for AppIconCache();
  swift_allocObject();
  *&v37[0] = sub_24B9AAAD8(8, 1);
  sub_24BAA99EC();
  v19 = v42[0];
  LOBYTE(v37[0]) = 0;
  sub_24BAA99EC();
  v40 = 0;
  *&v37[0] = v13;
  *(v37 + 8) = v29;
  *(&v37[1] + 1) = v18;
  *v38 = 0;
  *&v38[8] = v19;
  v38[24] = v42[0];
  *&v38[25] = *v41;
  *&v38[28] = *&v41[3];
  *v39 = *(&v42[0] + 1);
  *&v39[8] = sub_24BA39C14;
  *&v39[16] = 0;
  v39[24] = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v20 = sub_24B9E28B0();
  sub_24BAA964C();
  (*(v4 + 8))(v6, v3);
  v42[3] = *&v38[16];
  *v43 = *v39;
  *&v43[9] = *&v39[9];
  v42[0] = v37[0];
  v42[1] = v37[1];
  v42[2] = *v38;
  sub_24B9E293C(v42);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v37[0] = sub_24BAA7C2C();
  *(&v37[0] + 1) = v21;
  v35 = &type metadata for AddAppExceptionView;
  v36 = v20;
  swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  v22 = v31;
  sub_24BAA952C();

  (*(v30 + 8))(v8, v22);
  type metadata accessor for SuggestionsViewModel(0);
  sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel, &unk_24BAB9868);
  v23 = sub_24BAA82FC();
  v24 = sub_24BAA813C();
  v25 = &v10[*(v32 + 36)];
  *v25 = v24;
  v25[1] = v23;
  MEMORY[0x28223BE20](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0, &unk_24BAAE4C0);
  sub_24B9E2774();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0, &unk_24BAAD720);
  v27 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0, &unk_24BAAD720, MEMORY[0x277CDD7A8]);
  *&v37[0] = v26;
  *(&v37[0] + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_24BAA96CC();
  return sub_24B8F35E4(v10, &qword_27F067CA0, &unk_24BAB77D0);
}

uint64_t sub_24B9DE5B0(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0, &unk_24BAAD720);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00, &qword_24BAAE7D0);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00, &qword_24BAAE7D0, MEMORY[0x277CDF028]);
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0, &unk_24BAAD720, MEMORY[0x277CDD7A8]);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B9DE79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for AllowedAppsPickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v13[0] = sub_24BAA7C2C();
  v13[1] = v9;
  sub_24B9E217C(a1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AllowedAppsPickerView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_24B9E2114(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for AllowedAppsPickerView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24B9DE954(uint64_t a1)
{
  type metadata accessor for AllowedAppsPickerView(0);
  type metadata accessor for SuggestionsViewModel(0);
  sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel, &unk_24BAB9868);
  sub_24BAA82FC();
  v5 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8, &qword_24BAB18E0);
  sub_24BAA99FC();
  v1 = v4;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120, &qword_24BAB1040);
  MEMORY[0x24C24FC10](&v4);
  sub_24BA10938(&v5, v1, 0, 0, v4);

  MEMORY[0x24C24FC10](&v4, v2);
  sub_24BAA9A0C();
  LOBYTE(v4) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
  return sub_24BAA9A0C();
}

uint64_t sub_24B9DEB3C@<X0>(uint64_t a1@<X8>)
{
  v21[3] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0664F8, &unk_24BAB77B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v22 = sub_24BAA7C2C();
  v23 = v4;
  sub_24B8F5E3C();
  v5 = sub_24BAA93CC();
  v21[1] = v6;
  v21[2] = v5;
  v21[0] = v7;
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60, &unk_24BAB0490);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24BAAD5B0;
  v9 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v9;
  *(v8 + 32) = 500;
  v10 = sub_24BAA9FEC();
  v12 = v11;

  v22 = v10;
  v23 = v12;
  sub_24BAA93CC();
  v22 = sub_24BAA7C2C();
  v23 = v13;
  v14 = sub_24BAA93CC();
  v16 = v15;
  v18 = v17;
  sub_24BAA971C();
  sub_24B900910(v14, v16, v18 & 1);

  v19 = sub_24BAA972C();
  (*(*(v19 - 8) + 56))(v3, 0, 1, v19);
  return sub_24BAA970C();
}

uint64_t sub_24B9DEE4C@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v30 = a2;
  v32 = a4;
  v29 = sub_24BAA8A6C();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0, &unk_24BAB07C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067BD8, &qword_24BAB7738);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v27 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067BE0, &qword_24BAB7740);
  MEMORY[0x28223BE20](v31);
  v15 = v27 - v14;
  *v13 = sub_24BAA8AAC();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v27[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067BE8, &qword_24BAB7748) + 44);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v33 = sub_24BAA7C2C();
  *(&v33 + 1) = v16;
  sub_24B8F5E3C();

  sub_24BAA9AFC();
  sub_24BAA8A5C();
  sub_24B8F384C(&unk_27F069090, &qword_27F0639C0, &unk_24BAB07C0, MEMORY[0x277CDF068]);
  sub_24B9E0C70(&qword_27F067BF0, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v17 = v29;
  sub_24BAA949C();
  (*(v4 + 8))(v6, v17);
  (*(v8 + 8))(v10, v7);
  sub_24BAA9D1C();
  sub_24BAA86BC();
  sub_24B90294C(v13, v15, &qword_27F067BD8, &qword_24BAB7738);
  v18 = &v15[*(v31 + 36)];
  v19 = v38;
  *(v18 + 4) = v37;
  *(v18 + 5) = v19;
  *(v18 + 6) = v39;
  v20 = v34;
  *v18 = v33;
  *(v18 + 1) = v20;
  v21 = v36;
  *(v18 + 2) = v35;
  *(v18 + 3) = v21;
  v22 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  v24 = v32;
  sub_24B90294C(v15, v32, &qword_27F067BE0, &qword_24BAB7740);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067BF8, &qword_24BAB7750);
  v26 = (v24 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = v22;
  return result;
}

uint64_t sub_24B9DF2E4@<X0>(uint64_t a1@<X8>)
{
  sub_24B9DF50C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  sub_24BAA989C();
  v7 = sub_24BAA933C();
  v9 = v8;
  v11 = v10;

  sub_24B900910(v2, v4, v6 & 1);

  sub_24BAA927C();
  v12 = sub_24BAA939C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_24B900910(v7, v9, v11 & 1);

  v19 = sub_24BAA90AC();
  *&v30 = v12;
  *(&v30 + 1) = v14;
  LOBYTE(v31) = v16 & 1;
  v20 = *v29;
  *(&v31 + 1) = *v29;
  DWORD1(v31) = *&v29[3];
  *(&v31 + 1) = v18;
  v32[0] = v19;
  *&v32[4] = *&v28[3];
  v21 = *v28;
  *&v32[1] = *v28;
  memset(&v32[8], 0, 32);
  v32[40] = 1;
  *&v32[41] = 256;
  v22 = v30;
  v23 = v31;
  *&v36[11] = *&v32[27];
  v35 = *v32;
  *v36 = *&v32[16];
  v33 = v30;
  v34 = v31;
  v24 = *&v36[16];
  *(a1 + 48) = *&v32[16];
  *(a1 + 64) = v24;
  v25 = v35;
  *(a1 + 16) = v23;
  *(a1 + 32) = v25;
  *a1 = v22;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v27[80] = 0;
  v37[0] = v12;
  v37[1] = v14;
  v38 = v16 & 1;
  *&v39[3] = *&v29[3];
  *v39 = v20;
  v40 = v18;
  v41 = v19;
  *&v42[3] = *&v28[3];
  *v42 = v21;
  v44 = 0u;
  v43 = 0u;
  v45 = 1;
  v46 = 256;
  sub_24B8F3208(&v30, v27, &qword_27F067BD0, &unk_24BAB7728);
  return sub_24B8F35E4(v37, &qword_27F067BD0, &unk_24BAB7728);
}

uint64_t sub_24B9DF50C()
{
  if (sub_24B9D9208() == 1)
  {
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_6;
  }

  if (qword_27F063110 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_24BAA7C2C();
}

uint64_t sub_24B9DF604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v74 = sub_24BAA8B9C();
  v3 = *(v74 - 8);
  v4 = MEMORY[0x28223BE20](v74);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v63 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B50, &unk_24BAB7540);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v72 = &v63 - v15;
  v16 = sub_24BAA9D1C();
  v69 = v17;
  v70 = v16;
  sub_24B9DFBF4(&v84);
  v68 = v85;
  v66 = v87;
  KeyPath = v86;
  v18 = type metadata accessor for AllowedAppsPickerView.AddAppButtonContent(0);
  v65 = v84;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v19 = &v14[*(v9 + 44)];
  v20 = *(sub_24BAA869C() + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24BAA8B2C();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #14.0 }

  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8, &qword_24BAB1370) + 36)] = 256;
  v28 = v69;
  *v14 = v70;
  *(v14 + 1) = v28;
  v29 = v68;
  *(v14 + 1) = v65;
  *(v14 + 2) = v29;
  v30 = v66;
  *(v14 + 6) = KeyPath;
  *(v14 + 7) = v30;
  v31 = v103[1];
  *(v14 + 4) = v103[0];
  *(v14 + 5) = v31;
  *(v14 + 6) = v103[2];
  v32 = v72;
  sub_24B90294C(v14, v72, &qword_27F067B50, &unk_24BAB7540);
  v33 = (a1 + *(v18 + 20));
  v34 = v33[1];
  *&v84 = *v33;
  *(&v84 + 1) = v34;
  sub_24B8F5E3C();

  v69 = sub_24BAA93CC();
  v70 = v35;
  *&v68 = v36;
  v38 = v37;
  KeyPath = swift_getKeyPath();
  sub_24BA8DAA8(v7);
  v40 = v73;
  v39 = v74;
  (*(v3 + 104))(v73, *MEMORY[0x277CE0260], v74);
  LOBYTE(a1) = sub_24B9E1B04(v7, v40);
  v41 = *(v3 + 8);
  v41(v40, v39);
  v41(v7, v39);
  v42 = 1;
  if (a1)
  {
    v42 = 2;
  }

  v66 = v42;
  v73 = swift_getKeyPath();
  v43 = v38 & 1;
  v101 = v43;
  v98 = 0;
  v74 = sub_24BAA924C();
  v44 = swift_getKeyPath();
  v64 = sub_24BAA974C();
  v45 = swift_getKeyPath();
  *&v65 = v45;
  v46 = swift_getKeyPath();
  v47 = v75;
  sub_24B8F3208(v32, v75, &qword_27F067B50, &unk_24BAB7540);
  v48 = v47;
  v49 = v71;
  sub_24B8F3208(v48, v71, &qword_27F067B50, &unk_24BAB7540);
  v50 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B58, &unk_24BAB7640) + 48);
  v52 = v69;
  v51 = v70;
  v53 = KeyPath;
  v54 = v68;
  *&v76 = v69;
  *(&v76 + 1) = v68;
  LOBYTE(v77) = v43;
  *(&v77 + 1) = *v100;
  DWORD1(v77) = *&v100[3];
  *(&v77 + 1) = v70;
  *&v78 = KeyPath;
  BYTE8(v78) = 1;
  HIDWORD(v78) = *&v99[3];
  *(&v78 + 9) = *v99;
  v55 = v66;
  *&v79 = v73;
  *(&v79 + 1) = v66;
  LOBYTE(v80) = 0;
  *(&v80 + 1) = *v102;
  DWORD1(v80) = *&v102[3];
  *(&v80 + 1) = v44;
  *&v81 = v74;
  *(&v81 + 1) = v45;
  v56 = v64;
  *&v82 = v64;
  *(&v82 + 1) = v46;
  v83 = 1;
  *(v50 + 112) = 1;
  v57 = v82;
  v58 = v76;
  v59 = v77;
  v60 = v79;
  *(v50 + 32) = v78;
  *(v50 + 48) = v60;
  *v50 = v58;
  *(v50 + 16) = v59;
  v61 = v80;
  *(v50 + 80) = v81;
  *(v50 + 96) = v57;
  *(v50 + 64) = v61;
  sub_24B8F3208(&v76, &v84, &qword_27F0663E8, &unk_24BAB4258);
  sub_24B8F35E4(v72, &qword_27F067B50, &unk_24BAB7540);
  *&v84 = v52;
  *(&v84 + 1) = v54;
  LOBYTE(v85) = v43;
  *(&v85 + 1) = *v100;
  DWORD1(v85) = *&v100[3];
  *(&v85 + 1) = v51;
  v86 = v53;
  LOBYTE(v87) = 1;
  *(&v87 + 1) = *v99;
  HIDWORD(v87) = *&v99[3];
  v88 = v73;
  v89 = v55;
  v90 = 0;
  *&v91[3] = *&v102[3];
  *v91 = *v102;
  v92 = v44;
  v93 = v74;
  v94 = v65;
  v95 = v56;
  v96 = v46;
  v97 = 1;
  sub_24B8F35E4(&v84, &qword_27F0663E8, &unk_24BAB4258);
  return sub_24B8F35E4(v75, &qword_27F067B50, &unk_24BAB7540);
}

uint64_t sub_24B9DFBF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8, &qword_24BAADDA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = [objc_opt_self() quaternarySystemFillColor];
  v6 = sub_24BAA973C();
  v7 = sub_24BAA991C();
  sub_24BAA91EC();
  v8 = *MEMORY[0x277CE09A0];
  v9 = sub_24BAA919C();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v4, v8, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  v11 = sub_24BAA91FC();
  sub_24B8F35E4(v4, &qword_27F063CD8, &qword_24BAADDA0);
  KeyPath = swift_getKeyPath();
  v13 = sub_24BAA974C();
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = v7;
  a1[2] = KeyPath;
  a1[3] = v11;
  a1[4] = result;
  a1[5] = v13;
  return result;
}

uint64_t sub_24B9DFDA8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24BAA8BCC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B48, &qword_24BAB7538);
  return sub_24B9DF604(v2, a2 + *(v4 + 44));
}

uint64_t sub_24B9DFE00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24BAA89AC();
  *a1 = result & 1;
  return result;
}

void sub_24B9DFE60(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a2 = v3;
}

uint64_t sub_24B9DFEE0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24BAA81CC();
}

uint64_t sub_24B9DFF5C(uint64_t (*a1)(uint64_t *, uint64_t *, __n128), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_24B9A2FBC(v6);
  }

  sub_24B9DFFF4(a1, a2);
  return sub_24BAAA67C();
}

void sub_24B9DFFF4(uint64_t (*a1)(uint64_t *, uint64_t *, __n128), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_24BAAA75C();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EventSource();
        v9 = sub_24BAAA15C();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_24B9E0108(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_24B99B958(0, v5, 1, a1);
  }
}

void sub_24B9E0108(void **a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, void **, __n128), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_92;
    }

    goto LABEL_129;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v14 = *v9;
      v15 = *(*v9 + 8 * v13);
      v16 = v14;
      v7 = *(v14 + 8 * v11);
      v105 = v7;
      v106 = v15;

      v99 = (a4)(&v106, &v105);
      if (v6)
      {
LABEL_101:

        return;
      }

      v101 = a5;

      v90 = v10 - 1;
      v94 = v11;
      v96 = v10;
      v17 = v10 - 2;
      v18 = 8 * v11;
      v19 = (v16 + 8 * v11 + 16);
      while (v17 != v11)
      {
        v7 = *(v19 - 1);
        v20 = *v19;
        v105 = v7;
        v106 = v20;

        v21 = (a4)(&v106, &v105);

        ++v11;
        ++v19;
        if ((v99 ^ v21))
        {
          v96 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v90;
LABEL_11:
      a5 = v101;
      v9 = a3;
      if (v99)
      {
        if (v96 < v94)
        {
          goto LABEL_123;
        }

        v22 = v94 <= v11;
        v11 = v94;
        if (v22)
        {
          v81 = v96;
          v82 = 8 * v96 - 8;
          v83 = v94;
          do
          {
            if (v83 != --v81)
            {
              v84 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v85 = *(v84 + v18);
              *(v84 + v18) = *(v84 + v82);
              *(v84 + v82) = v85;
            }

            ++v83;
            v82 -= 8;
            v18 += 8;
          }

          while (v83 < v81);
        }

        v13 = v96;
      }

      else
      {
        v11 = v94;
        v13 = v96;
      }
    }

    v23 = v9[1];
    if (v13 >= v23)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_119;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_132;
    }

    v24 = v11 + a6;
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v24 >= v23)
    {
      v24 = v9[1];
    }

    if (v24 < v11)
    {
      goto LABEL_122;
    }

    if (v13 == v24)
    {
LABEL_132:
      if (v13 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v71 = v9;
      v72 = a5;
      v73 = *v71;
      v74 = *v71 + 8 * v13 - 8;
      v95 = v11;
      v75 = v11 - v13;
      v91 = v24;
      do
      {
        v100 = v74;
        v103 = v13;
        v76 = *(v73 + 8 * v13);
        v97 = v75;
        do
        {
          v7 = *v74;
          v105 = *v74;
          v106 = v76;

          v77 = (a4)(&v106, &v105);
          if (v6)
          {
            goto LABEL_101;
          }

          v78 = v77;

          if ((v78 & 1) == 0)
          {
            break;
          }

          if (!v73)
          {
            goto LABEL_125;
          }

          v79 = *v74;
          v76 = *(v74 + 8);
          *v74 = v76;
          *(v74 + 8) = v79;
          v74 -= 8;
        }

        while (!__CFADD__(v75++, 1));
        v13 = v103 + 1;
        v74 = v100 + 8;
        v75 = v97 - 1;
      }

      while (v103 + 1 != v91);
      v13 = v91;
      a5 = v72;
      v9 = a3;
      v11 = v95;
      if (v91 < v95)
      {
        goto LABEL_118;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_24B99A39C(0, *(v12 + 2) + 1, 1, v12);
    }

    v26 = *(v12 + 2);
    v25 = *(v12 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v12 = sub_24B99A39C((v25 > 1), v26 + 1, 1, v12);
    }

    *(v12 + 2) = v27;
    v28 = &v12[16 * v26];
    *(v28 + 4) = v11;
    *(v28 + 5) = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    v102 = v13;
    if (v26)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v29 = v27 - 1;
    if (v27 >= 4)
    {
      v34 = &v12[16 * v27 + 32];
      v35 = *(v34 - 64);
      v36 = *(v34 - 56);
      v40 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      if (v40)
      {
        goto LABEL_105;
      }

      v39 = *(v34 - 48);
      v38 = *(v34 - 40);
      v40 = __OFSUB__(v38, v39);
      v32 = v38 - v39;
      v33 = v40;
      if (v40)
      {
        goto LABEL_106;
      }

      v41 = &v12[16 * v27];
      v43 = *v41;
      v42 = *(v41 + 1);
      v40 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v40)
      {
        goto LABEL_108;
      }

      v40 = __OFADD__(v32, v44);
      v45 = v32 + v44;
      if (v40)
      {
        goto LABEL_111;
      }

      if (v45 >= v37)
      {
        v63 = &v12[16 * v29 + 32];
        v65 = *v63;
        v64 = *(v63 + 1);
        v40 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v40)
        {
          goto LABEL_117;
        }

        if (v32 < v66)
        {
          v29 = v27 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (v27 == 3)
    {
      v30 = *(v12 + 4);
      v31 = *(v12 + 5);
      v40 = __OFSUB__(v31, v30);
      v32 = v31 - v30;
      v33 = v40;
LABEL_44:
      if (v33)
      {
        goto LABEL_107;
      }

      v46 = &v12[16 * v27];
      v48 = *v46;
      v47 = *(v46 + 1);
      v49 = __OFSUB__(v47, v48);
      v50 = v47 - v48;
      v51 = v49;
      if (v49)
      {
        goto LABEL_110;
      }

      v52 = &v12[16 * v29 + 32];
      v54 = *v52;
      v53 = *(v52 + 1);
      v40 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v40)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v50, v55))
      {
        goto LABEL_114;
      }

      if (v50 + v55 >= v32)
      {
        if (v32 < v55)
        {
          v29 = v27 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    v56 = &v12[16 * v27];
    v58 = *v56;
    v57 = *(v56 + 1);
    v40 = __OFSUB__(v57, v58);
    v50 = v57 - v58;
    v51 = v40;
LABEL_58:
    if (v51)
    {
      goto LABEL_109;
    }

    v59 = &v12[16 * v29];
    v61 = *(v59 + 4);
    v60 = *(v59 + 5);
    v40 = __OFSUB__(v60, v61);
    v62 = v60 - v61;
    if (v40)
    {
      goto LABEL_112;
    }

    if (v62 < v50)
    {
      goto LABEL_3;
    }

LABEL_65:
    v67 = v29 - 1;
    if (v29 - 1 >= v27)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_124;
    }

    v68 = *&v12[16 * v67 + 32];
    v69 = *&v12[16 * v29 + 40];
    sub_24B9E07E4((*v9 + 8 * v68), (*v9 + 8 * *&v12[16 * v29 + 32]), (*v9 + 8 * v69), v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v69 < v68)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_24B99FEB4(v12);
    }

    if (v67 >= *(v12 + 2))
    {
      goto LABEL_104;
    }

    v70 = &v12[16 * v67];
    *(v70 + 4) = v68;
    *(v70 + 5) = v69;
    v107 = v12;
    sub_24B99FE28(v29);
    v12 = v107;
    v27 = *(v107 + 2);
    if (v27 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v12 = sub_24B99FEB4(v12);
LABEL_92:
  v107 = v12;
  v86 = *(v12 + 2);
  if (v86 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v87 = *&v12[16 * v86];
      v88 = *&v12[16 * v86 + 24];
      sub_24B9E07E4((*v7 + 8 * v87), (*v7 + 8 * *&v12[16 * v86 + 16]), (*v7 + 8 * v88), v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v88 < v87)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24B99FEB4(v12);
      }

      if (v86 - 2 >= *(v12 + 2))
      {
        goto LABEL_116;
      }

      v89 = &v12[16 * v86];
      *v89 = v87;
      *(v89 + 1) = v88;
      v107 = v12;
      sub_24B99FE28(v86 - 1);
      v12 = v107;
      v86 = *(v107 + 2);
      if (v86 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

uint64_t sub_24B9E07E4(char *__dst, char *a2, char *a3, unint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[8 * v13] <= a4)
    {
      v21 = a2;
      v22 = a4;
      memmove(a4, a2, 8 * v13);
      a4 = v22;
      a2 = v21;
    }

    v40 = a4;
    v42 = (a4 + 8 * v13);
    if (v11 < 8 || a2 <= v7)
    {
LABEL_53:
      v15 = v40;
      goto LABEL_54;
    }

    v23 = -a4;
    v37 = -a4;
    while (1)
    {
      v38 = a2;
      v39 = a2 - 8;
      v24 = v42;
      v25 = &v42[v23];
      v6 -= 8;
      while (1)
      {
        v26 = *(v24 - 1);
        v24 -= 8;
        v44 = v26;
        v43 = *v39;

        v27 = a5(&v44, &v43);
        if (v5)
        {

          if (v25 >= 0)
          {
            v33 = v25;
          }

          else
          {
            v33 = v25 + 7;
          }

          v34 = v40;
          v32 = v38;
          if (v38 >= v40 && v38 < v40 + (v33 & 0xFFFFFFFFFFFFFFF8) && v38 == v40)
          {
            return 1;
          }

          v31 = 8 * (v33 >> 3);
          goto LABEL_61;
        }

        v28 = v27;

        v29 = v6 + 8;
        if (v28)
        {
          break;
        }

        if (v29 != v42)
        {
          *v6 = *v24;
        }

        v25 -= 8;
        v6 -= 8;
        v42 = v24;
        if (v24 <= v40)
        {
          v42 = v24;
          a2 = v38;
          goto LABEL_53;
        }
      }

      a2 = v39;
      if (v29 != v38)
      {
        *v6 = *v39;
      }

      v15 = v40;
      v23 = v37;
      if (v42 <= v40 || v39 <= v7)
      {
LABEL_54:
        v35 = v42 - v15 + 7;
        if (v42 - v15 >= 0)
        {
          v35 = v42 - v15;
        }

        if (a2 >= v15 && a2 < &v15[v35 & 0xFFFFFFFFFFFFFFF8] && a2 == v15)
        {
          return 1;
        }

        v31 = 8 * (v35 >> 3);
        v32 = a2;
LABEL_60:
        v34 = v15;
LABEL_61:
        memmove(v32, v34, v31);
        return 1;
      }
    }
  }

  v14 = a2;
  v15 = a4;
  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v42 = &v15[8 * v10];
  if (v8 < 8 || v14 >= v6)
  {
LABEL_21:
    a2 = v7;
    goto LABEL_54;
  }

  v16 = v14;
  while (1)
  {
    v44 = *v16;
    v43 = *v15;

    v17 = a5(&v44, &v43);
    if (v5)
    {
      break;
    }

    v18 = v17;

    if ((v18 & 1) == 0)
    {
      v19 = v15;
      v20 = v7 == v15;
      v15 += 8;
      if (v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v19;
      goto LABEL_19;
    }

    v19 = v16;
    v20 = v7 == v16;
    v16 += 8;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_19:
    v7 += 8;
    if (v15 >= v42 || v16 >= v6)
    {
      goto LABEL_21;
    }
  }

  v30 = v42 - v15 + 7;
  if (v42 - v15 >= 0)
  {
    v30 = v42 - v15;
  }

  if (v7 < v15 || v7 >= &v15[v30 & 0xFFFFFFFFFFFFFFF8] || v7 != v15)
  {
    v31 = 8 * (v30 >> 3);
    v32 = v7;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_24B9E0B94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24BAA885C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B9E0BF0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AllowedAppsPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B9D8D4C(a1, a2, v6);
}

uint64_t sub_24B9E0C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for AllowedAppsPickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA82DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24BAA8B9C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  sub_24B900C14(*(v5 + v1[24]), *(v5 + v1[24] + 8));
  sub_24B900C14(*(v5 + v1[25]), *(v5 + v1[25] + 8));
  sub_24B900C14(*(v5 + v1[26]), *(v5 + v1[26] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B9E0FF4()
{
  result = qword_27F067AE8;
  if (!qword_27F067AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067AE0, &qword_24BAB7430);
    sub_24B9E1078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067AE8);
  }

  return result;
}

unint64_t sub_24B9E1078()
{
  result = qword_27F067AF0;
  if (!qword_27F067AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067AF0);
  }

  return result;
}

uint64_t sub_24B9E1104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18, qword_24BAAD8C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B9E1240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18, qword_24BAAD8C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24B9E1364(uint64_t a1)
{
  sub_24B9E16EC(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24B9E16EC(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24B9E3B10(319, &qword_27F063A38, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24B8F47B4(319);
        if (v4 <= 0x3F)
        {
          sub_24B9E16EC(319, &qword_27F066350, type metadata accessor for DNDConfigurationType, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_24B9783EC(319, &qword_27F067B10, &qword_27F063500, &qword_24BAAF5F0, MEMORY[0x277CE11F8]);
            if (v6 <= 0x3F)
            {
              sub_24B9E3B10(319, &qword_27F063BA8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                sub_24B9E3B10(319, &qword_27F064968, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_24B8F45F4();
                  if (v9 <= 0x3F)
                  {
                    sub_24B9783EC(319, &qword_27F067B18, &qword_27F063500, &qword_24BAAF5F0, MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      sub_24B9783EC(319, &qword_27F067B20, &qword_27F065568, &unk_24BAB1B70, MEMORY[0x277CE10B8]);
                      if (v11 <= 0x3F)
                      {
                        sub_24B9E3B10(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                        if (v12 <= 0x3F)
                        {
                          sub_24B901BFC(319);
                          if (v13 <= 0x3F)
                          {
                            sub_24B91EF10(319);
                            if (v14 <= 0x3F)
                            {
                              sub_24B978450(319);
                              if (v15 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_24B9E16EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24B9E1754()
{
  result = qword_27F067B28;
  if (!qword_27F067B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067B30, &qword_24BAB74C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067AC8, &qword_24BAB73D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068AE0, &qword_24BAB7438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067AC0, &qword_24BAB73C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067AE0, &qword_24BAB7430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067AB8, &qword_24BAB73C0);
    sub_24B8F384C(&qword_27F067AD8, &qword_27F067AB8, &qword_24BAB73C0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_24B9E0FF4();
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F067AF8, &unk_27F068AE0, &qword_24BAB7438, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067B28);
  }

  return result;
}

void sub_24B9E19C4(uint64_t a1)
{
  sub_24B9E16EC(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24B9E3B10(319, &qword_27F064968, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24B9E3B10(319, &qword_27F0663B0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_24B9E1B04(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_24BAA8B9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

uint64_t sub_24B9E1F34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24BAA885C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B9E2048(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AllowedAppsPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24B9E20BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B991F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B9E2114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9E217C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9E21E4(uint64_t a1)
{
  v2 = type metadata accessor for CompatibilityNoticePlatterView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_24B9E2240@<W0>(_BYTE *a1@<X8>)
{
  result = sub_24B991C2C();
  *a1 = result;
  return result;
}

uint64_t sub_24B9E2274()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24B9E22FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AllowedAppsPickerView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_24B9E2390()
{
  result = qword_27F067C30;
  if (!qword_27F067C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067C00, &qword_24BAB7758);
    sub_24B9E241C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067C30);
  }

  return result;
}

unint64_t sub_24B9E241C()
{
  result = qword_27F067C38;
  if (!qword_27F067C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067C28, &qword_24BAB7780);
    sub_24B8F384C(&qword_27F067C40, &qword_27F067C48, &qword_24BAB7788, MEMORY[0x277CDF170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067C38);
  }

  return result;
}

uint64_t sub_24B9E24D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AllowedAppsPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B9DCBEC(v4, a1);
}

unint64_t sub_24B9E2544()
{
  result = qword_27F067C60;
  if (!qword_27F067C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067C08, &qword_24BAB7760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067C00, &qword_24BAB7758);
    type metadata accessor for DNDConfigurationType(255);
    sub_24B9E2390();
    sub_24B9E0C70(&qword_27F067C50, type metadata accessor for DNDConfigurationType, &unk_24BAAC798);
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F063E70, &unk_27F068AD0, &unk_24BAAF7A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067C60);
  }

  return result;
}

unint64_t sub_24B9E2688()
{
  result = qword_27F067C68;
  if (!qword_27F067C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067C58, &unk_24BAB7790);
    sub_24B8F384C(&qword_27F067C70, &qword_27F067C78, &qword_24BAB77A0, MEMORY[0x277CE1198]);
    sub_24B8F384C(&qword_27F067C80, &qword_27F067C88, &qword_24BAB77A8, MEMORY[0x277CDD978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067C68);
  }

  return result;
}

unint64_t sub_24B9E2774()
{
  result = qword_27F067CA8;
  if (!qword_27F067CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067CA0, &unk_24BAB77D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067CB0, &qword_24BAB77E0);
    sub_24B9E28B0();
    swift_getOpaqueTypeConformance2();
    sub_24B8F5E3C();
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F067CC0, &qword_27F067CC8, &qword_24BAB77E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067CA8);
  }

  return result;
}

unint64_t sub_24B9E28B0()
{
  result = qword_27F067CB8;
  if (!qword_27F067CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067CB8);
  }

  return result;
}

unint64_t sub_24B9E29F4(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_24BAAA52C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C2506E0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v8 = *(v7 + 16);
    v9 = *(a2 + 16);

    if (v8 == v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_24B9E2AE0()
{
  result = qword_27F0698F0;
  if (!qword_27F0698F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0698F0);
  }

  return result;
}

unint64_t sub_24B9E2B50()
{
  result = qword_27F067D68;
  if (!qword_27F067D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067D60, &qword_24BAB78C0);
    sub_24B9E2BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067D68);
  }

  return result;
}

unint64_t sub_24B9E2BDC()
{
  result = qword_27F067D70;
  if (!qword_27F067D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067D78, &qword_24BAB78C8);
    sub_24B9E0C70(&qword_27F067D80, type metadata accessor for AllowedAppsPickerView.AddAppButtonContent, &unk_24BAB74E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067D70);
  }

  return result;
}

unint64_t sub_24B9E2C98()
{
  result = qword_27F067D88;
  if (!qword_27F067D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067D48, &qword_24BAB78A8);
    sub_24B8F384C(&qword_27F067D90, &qword_27F067D98, &unk_24BAB78D0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067D88);
  }

  return result;
}

uint64_t sub_24B9E2D50(uint64_t a1)
{
  v3 = *(type metadata accessor for AllowedAppsPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B9DB2C4(a1, v4);
}

uint64_t sub_24B9E2DC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AllowedAppsPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B9DBD40(a1, v6, a2);
}

unint64_t sub_24B9E2E40()
{
  result = qword_27F067DA8;
  if (!qword_27F067DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067DA0, &qword_24BAB78F8);
    sub_24B8F384C(&qword_27F067DB0, &qword_27F067DB8, &qword_24BAB7900, &unk_24BABA640);
    sub_24B9E0C70(&qword_27F0690A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067DA8);
  }

  return result;
}

unint64_t sub_24B9E2F4C()
{
  result = qword_27F067DD0;
  if (!qword_27F067DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067DD0);
  }

  return result;
}

uint64_t objectdestroy_122Tm()
{
  v1 = type metadata accessor for AllowedAppsPickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA82DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24BAA8B9C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  sub_24B900C14(*(v5 + v1[24]), *(v5 + v1[24] + 8));
  sub_24B900C14(*(v5 + v1[25]), *(v5 + v1[25] + 8));
  sub_24B900C14(*(v5 + v1[26]), *(v5 + v1[26] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24B9E33C4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AllowedAppsPickerView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

void sub_24B9E3474()
{
  v1 = *(type metadata accessor for AllowedAppsPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24B9DC634(v0 + v2, v3);
}

uint64_t sub_24B9E3500(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_24B9E29F4(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_24BAAA52C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_24BAAA52C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C2506E0](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_17:
    v14 = *(v13 + 16);
    v15 = *(a2 + 16);

    if (v14 != v15)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x24C2506E0](v10, v7);
          v16 = MEMORY[0x24C2506E0](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_24B9B0DEC();
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = sub_24B9B0DEC();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
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
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_24BAAA52C();
}

uint64_t __swift_get_extra_inhabitant_index_31Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_32Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B9E3958(uint64_t a1)
{
  sub_24B9E16EC(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24B9E16EC(319, &qword_27F066350, type metadata accessor for DNDConfigurationType, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_24B9783EC(319, &qword_27F067B10, &qword_27F063500, &qword_24BAAF5F0, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24B9E3B10(319, &qword_27F063BA8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_24B9E3B10(319, &qword_27F063DE0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24B8F47B4(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24B9E3B10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24B9E3B64()
{
  result = qword_27F067DF0;
  if (!qword_27F067DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067DF8, &qword_24BAB7968);
    sub_24B8F384C(&qword_27F067E00, &qword_27F067E08, &qword_24BAB7970, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067DF0);
  }

  return result;
}

uint64_t type metadata accessor for CreateLocationSelection(uint64_t a1)
{
  result = qword_27F067E58;
  if (!qword_27F067E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B9E3D18(uint64_t a1)
{
  result = sub_24BAA7E4C();
  if (v2 <= 0x3F)
  {
    result = sub_24B9E3D8C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24B9E3D8C()
{
  result = qword_27F067E68;
  if (!qword_27F067E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F067E68);
  }

  return result;
}

void sub_24B9E3DD8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  *&v54 = a1;
  v56 = a2;
  v4 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  *&v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E78, &qword_24BAB7AA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = sub_24BAA7E4C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationSelection = type metadata accessor for CreateLocationSelection(0);
  MEMORY[0x28223BE20](LocationSelection);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B9E4850(v3, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v19;
      v26 = [v25 name];
      if (v26)
      {
        v27 = v26;
        sub_24BAAA01C();
      }

      else
      {
        if (qword_27F063110 != -1)
        {
          swift_once();
        }

        sub_24BAA7C2C();
      }

      v40 = [v25 location];

      if (v40)
      {
        [v40 coordinate];
        v42 = v41;
        v44 = v43;
        v45 = [v40 referenceFrame];
        v46 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
        v47 = sub_24BAA9FDC();

        v48 = [v46 initWithCenter:v47 radius:v42 identifier:{v44, 100.0}];

        [v48 setGeoReferenceFrame_];
        sub_24B92E638([objc_allocWithZone(MEMORY[0x277D059B0]) initWithRegion:v48 detail:0 enabledSetting:2], &v57);
        v54 = v58;
        v55 = v57;
        v52 = v60;
        v53 = v59;

        v24 = v52;
        v23 = v53;
        v22 = v54;
        v21 = v55;
      }

      else
      {

        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
      }
    }
  }

  else
  {
    v50 = v6;
    v51 = v14;
    (*(v14 + 32))(v16, v19, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v29 = v57;
    MEMORY[0x28223BE20](v28);
    sub_24BA59AB0(sub_24B9E48BC, v29, v12);

    sub_24B9E490C(v12, v10);
    if ((*(v55 + 48))(v10, 1, v4) == 1)
    {
      sub_24B9E497C(v12);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
    }

    else
    {
      v30 = v50;
      sub_24B9E49E4(v10, v50);
      v31 = *(v30 + 40);
      [v31 coordinate];
      v33 = v32;
      v35 = v34;
      v36 = [v31 referenceFrame];
      v37 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
      v38 = sub_24BAA9FDC();
      v39 = [v37 initWithCenter:v38 radius:v33 identifier:{v35, 100.0}];

      [v39 setGeoReferenceFrame_];
      sub_24B92E638([objc_allocWithZone(MEMORY[0x277D059B0]) initWithRegion:v39 detail:0 enabledSetting:2], &v57);
      v54 = v58;
      v55 = v57;
      v52 = v60;
      v53 = v59;

      sub_24B9E497C(v12);
      sub_24B9E4A48(v30);
    }

    (*(v51 + 8))(v16, v13);
    v22 = v54;
    v21 = v55;
    v24 = v52;
    v23 = v53;
  }

  v49 = v56;
  *v56 = v21;
  v49[1] = v22;
  v49[2] = v23;
  v49[3] = v24;
}

void sub_24B9E4440(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24BAA7E4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationSelection = type metadata accessor for CreateLocationSelection(0);
  MEMORY[0x28223BE20](LocationSelection);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B9E4850(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      MEMORY[0x24C2508C0](2);
      v12 = [v11 title];
      if (v12)
      {
        v13 = v12;
        sub_24BAAA01C();

        sub_24BAAA07C();
      }

      v14 = v11;
      v15 = [v14 postalAddress];
      if (v15)
      {
        v16 = v15;
        sub_24BAAA3DC();
      }

      v17 = [v14 location];
      if (v17)
      {
        v18 = v17;
        [v17 coordinate];
        v20 = v19;

        v21 = 0.0;
        if (v20 != 0.0)
        {
          v21 = v20;
        }

        MEMORY[0x24C2508F0](*&v21);
      }

      v22 = [v14 location];

      if (v22)
      {
        [v22 coordinate];
        v24 = v23;

        v25 = 0.0;
        if (v24 != 0.0)
        {
          v25 = v24;
        }

        MEMORY[0x24C2508F0](*&v25);
      }
    }

    else
    {
      MEMORY[0x24C2508C0](0);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x24C2508C0](1);
    sub_24BAA7E2C();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24B9E46F8()
{
  sub_24BAAA7FC();
  sub_24B9E4440(v1);
  return sub_24BAAA84C();
}

uint64_t sub_24B9E473C(uint64_t a1)
{
  sub_24BAAA7FC();
  sub_24B9E4440(v2);
  return sub_24BAAA84C();
}

BOOL sub_24B9E4778()
{
  sub_24BAAA7FC();
  sub_24B9E4440(v2);
  v0 = sub_24BAAA84C();
  sub_24BAAA7FC();
  sub_24B9E4440(v2);
  return v0 == sub_24BAAA84C();
}

unint64_t sub_24B9E47F8()
{
  result = qword_27F067E70;
  if (!qword_27F067E70)
  {
    type metadata accessor for CreateLocationSelection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067E70);
  }

  return result;
}

uint64_t sub_24B9E4850(uint64_t a1, uint64_t a2)
{
  LocationSelection = type metadata accessor for CreateLocationSelection(0);
  (*(*(LocationSelection - 8) + 16))(a2, a1, LocationSelection);
  return a2;
}

uint64_t sub_24B9E490C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E78, &qword_24BAB7AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9E497C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E78, &qword_24BAB7AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B9E49E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9E4A48(uint64_t a1)
{
  v2 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B9E4AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B9E4B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ContactImageView(uint64_t a1)
{
  result = qword_27F067E80;
  if (!qword_27F067E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B9E4CA4(uint64_t a1)
{
  sub_24B936C64(319);
  if (v1 <= 0x3F)
  {
    sub_24B92646C(319, &qword_27F063DF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24B92646C(319, &qword_27F067E90, MEMORY[0x277CE1088], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B9E4DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a1;
  v44 = a3;
  v43 = sub_24BAA83DC();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v43);
  v36[2] = v6;
  v41 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContactImageView(0);
  v8 = v7 - 8;
  v40 = *(v7 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_24BAA992C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2 + *(v8 + 32));
  v37 = a2;
  v16 = *v14;
  v15 = v14[1];
  v45 = v16;
  v46 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E98, &qword_24BAB7B80);
  sub_24BAA99FC();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v42 = sub_24BAA997C();

  (*(v11 + 8))(v13, v10);
  v17 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B9E5598(a2, v17);
  v38 = *(v5 + 16);
  v18 = v41;
  v19 = v43;
  v38(v41, a1, v43);
  v20 = *(v40 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = *(v5 + 80);
  v23 = (v9 + v22 + v21) & ~v22;
  v36[1] = v20 | v22;
  v24 = swift_allocObject();
  v40 = v24;
  sub_24B9E5738(v17, v24 + v21);
  v25 = *(v5 + 32);
  v26 = v24 + v23;
  v27 = v19;
  v25(v26, v18, v19);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067EA0, &qword_24BAB7B88);
  v29 = (v44 + *(v28 + 36));
  v30 = v37;
  sub_24BA8DCD0(v29);
  sub_24B9E5598(v30, v17);
  v38(v18, v39, v27);
  v31 = swift_allocObject();
  sub_24B9E5738(v17, v31 + v21);
  v25(v31 + v23, v18, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067EA8, &qword_24BAB7B90);
  v33 = (v29 + *(result + 36));
  *v33 = sub_24B9E5820;
  v33[1] = v31;
  v34 = v44;
  *v44 = v42;
  *(v34 + 4) = 256;
  v35 = v40;
  v34[2] = sub_24B9E5820;
  v34[3] = v35;
  v34[4] = 0;
  v34[5] = 0;
  return result;
}

void sub_24B9E51A0(double a1, double a2)
{
  if (qword_27F0630D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27F076FF0;
  v6 = xmmword_27F077010;
  v7 = (v2 + *(type metadata accessor for ContactImageView(0) + 20));
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = v5;
  v11 = *(&v5 + 1);

  v20 = v11;
  v12 = sub_24BA22830(v8, v9, v10, v11, v6, *(&v6 + 1), a1, a2);

  if (v12)
  {
    v13 = v12;
    sub_24BAA98FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E98, &qword_24BAB7B80);
    sub_24BAA9A0C();
  }

  else
  {
    v14 = [v10 placeholderImageProvider];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];
    v17 = v16;

    v18 = [v14 imageForSize:a1 scale:{a2, v17}];
    swift_unknownObjectRelease();
    v19 = v18;
    sub_24BAA98FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E98, &qword_24BAB7B80);
    sub_24BAA9A0C();
  }
}

uint64_t sub_24B9E54AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24B9E5598(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24B9E5738(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_24B9E579C;
  a2[1] = v7;
  return result;
}

uint64_t sub_24B9E5598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9E55FC()
{
  v1 = *(type metadata accessor for ContactImageView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9E5738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9E579C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ContactImageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B9E4DA4(a1, v6, a2);
}

void sub_24B9E5820()
{
  type metadata accessor for ContactImageView(0);
  sub_24BAA83DC();
  sub_24BAA83CC();
  sub_24B9E51A0(v0, v1);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(type metadata accessor for ContactImageView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24BAA83DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24BAA82DC();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v2 | v7 | 7);
}

unint64_t sub_24B9E5AB4()
{
  result = qword_27F067EB0;
  if (!qword_27F067EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067EB8, &qword_24BAB7B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067EB0);
  }

  return result;
}

void sub_24B9E5B1C()
{
  v0 = [objc_opt_self() currentNotificationSettingsCenter];
  v1 = [v0 allNotificationSources];

  sub_24B9E2AE0();
  sub_24B9E5ECC();
  v2 = sub_24BAAA20C();

  qword_27F076FC0 = v2;
}

void sub_24B9E5BA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InstalledApp();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = *(v3 + 48);
  v28 = *(v3 + 40);
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_24BAAA4DC();
    sub_24B9E2AE0();
    sub_24B9E5ECC();
    sub_24BAAA24C();
    a2 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
  }

  else
  {
    v9 = -1 << *(a2 + 32);
    v5 = a2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a2 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_24BAAA56C() || (sub_24B9E2AE0(), swift_dynamicCast(), v17 = v29, v15 = v7, v16 = v8, !v29))
    {
LABEL_27:

      sub_24B8F0C5C(a2);
      return;
    }

LABEL_21:
    v18 = a2;
    v19 = v4;
    v20 = [v17 sourceIdentifier];
    v21 = sub_24BAAA01C();
    v23 = v22;

    v4 = v19;
    if (v21 == v28 && v23 == v19)
    {

      a2 = v18;
    }

    else
    {
      v25 = sub_24BAAA78C();

      a2 = v18;
      if ((v25 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (![v17 isHiddenFromSettings])
    {

      sub_24B8F0C5C(a2);
      v26 = [v17 sourceSettings];
      v27 = [v26 notificationSettings];

      if (v27)
      {
        [v27 authorizationStatus];
      }

      return;
    }

LABEL_11:

    v7 = v15;
    v8 = v16;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_17:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_27;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

unint64_t sub_24B9E5ECC()
{
  result = qword_27F067D20;
  if (!qword_27F067D20)
  {
    sub_24B9E2AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067D20);
  }

  return result;
}

uint64_t TimeSensitiveIconView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_24BAA9D1C();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067EC0, &qword_24BAB7BA0);
  return sub_24B9E5F7C(a2 + *(v6 + 44), v4);
}

uint64_t sub_24B9E5F7C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8, &qword_24BAADDA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067ED8, &qword_24BAB7C58);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0, &unk_24BAB2A50);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (v34 - v18);
  v20 = *(sub_24BAA869C() + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24BAA8B2C();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = a2 * 0.25;
  v19[1] = a2 * 0.25;
  v23 = sub_24BAA986C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8, &qword_24BAADD80);
  *(v19 + *(v24 + 52)) = v23;
  *(v19 + *(v24 + 56)) = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v25 = (v19 + *(v14 + 44));
  v26 = v36;
  *v25 = v35;
  v25[1] = v26;
  v25[2] = v37;
  v34[3] = sub_24BAA991C();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v34[1] = sub_24BAA7C2C();
  v34[2] = v27;
  sub_24B8F5E3C();
  sub_24BAA959C();

  v28 = sub_24BAA919C();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = sub_24BAA91FC();
  sub_24B8F35E4(v6, &qword_27F063CD8, &qword_24BAADDA0);
  KeyPath = swift_getKeyPath();
  v31 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067EE0, &qword_24BAB7C90) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  *&v12[*(v7 + 36)] = sub_24BAA982C();
  sub_24B8F3208(v19, v17, &qword_27F065BA0, &unk_24BAB2A50);
  sub_24B8F3208(v12, v10, &qword_27F067ED8, &qword_24BAB7C58);
  sub_24B8F3208(v17, a1, &qword_27F065BA0, &unk_24BAB2A50);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067EE8, qword_24BAB7C98);
  sub_24B8F3208(v10, a1 + *(v32 + 48), &qword_27F067ED8, &qword_24BAB7C58);
  sub_24B8F35E4(v12, &qword_27F067ED8, &qword_24BAB7C58);
  sub_24B8F35E4(v19, &qword_27F065BA0, &unk_24BAB2A50);
  sub_24B8F35E4(v10, &qword_27F067ED8, &qword_24BAB7C58);
  return sub_24B8F35E4(v17, &qword_27F065BA0, &unk_24BAB2A50);
}

uint64_t sub_24B9E6458@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_24BAA9D1C();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067EC0, &qword_24BAB7BA0);
  return sub_24B9E5F7C(a2 + *(v6 + 44), v4);
}

uint64_t getEnumTagSinglePayload for TimeSensitiveIconView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeSensitiveIconView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_24B9E650C()
{
  result = qword_27F067EC8;
  if (!qword_27F067EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067ED0, &unk_24BAB7C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067EC8);
  }

  return result;
}

id sub_24B9E6578()
{
  result = [objc_allocWithZone(type metadata accessor for WatchFaceSettingsManager()) init];
  qword_27F076FC8 = result;
  return result;
}

uint64_t sub_24B9E65A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v5 activePairedDeviceSelectorBlock];
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = swift_allocObject();
    v8 = sub_24B9ED5C4;
    *(v10 + 16) = sub_24B9ED5C4;
    *(v10 + 24) = v9;
    aBlock[4] = sub_24B9ED5FC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B9E68F8;
    aBlock[3] = &block_descriptor_104;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  v12 = [v7 getAllDevicesWithArchivedAltAccountDevicesMatching_];
  sub_24B926B78(v8, v9);
  _Block_release(v11);

  if (!v12)
  {

LABEL_18:
    v21 = sub_24BAA7E4C();
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }

  sub_24B8F37E8(0, &unk_27F067FB0, 0x277D2BCC8);
  v13 = sub_24BAAA12C();

  if (v13 >> 62)
  {
    result = sub_24BAAA52C();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_8:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x24C2506E0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = [v16 pairingID];
  if (v17)
  {
    v18 = v17;
    sub_24BAA7E1C();

    v19 = 0;
    v16 = v18;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_24BAA7E4C();
  (*(*(v20 - 8) + 56))(v4, v19, 1, v20);
  return sub_24B9EAFD4(v4, a1);
}

uint64_t sub_24B9E68F8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  v4 = a2;
  LOBYTE(v2) = v3(v2);

  return v2 & 1;
}

double sub_24B9E6944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v6 = sub_24BAA9E2C();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24BAA9E5C();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);

  v15 = v14;
  sub_24B9EB10C(v4, v12, v15);

  dispatch_group_enter(v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v17 = v15;

  sub_24B9E9AE4(sub_24B9ED694, v16);

  sub_24B8F37E8(0, &qword_27F0644F0, 0x277D85C78);
  v18 = sub_24BAAA33C();
  v19 = swift_allocObject();
  v21 = v26;
  v20 = v27;
  v19[2] = v12;
  v19[3] = v21;
  v19[4] = a4;
  v19[5] = v13;
  v22 = v28;
  v19[6] = v20;
  v19[7] = v22;
  aBlock[4] = sub_24B9ED2A0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_73_0;
  v23 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  v32 = MEMORY[0x277D84F90];
  sub_24B9ED2B0(&qword_27F063470, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500, &qword_24BAAED50);
  sub_24B97C674();
  sub_24BAAA48C();
  sub_24BAAA2DC();
  _Block_release(v23);

  (*(v31 + 8))(v8, v6);
  (*(v29 + 8))(v11, v30);

  return result;
}

void sub_24B9E6D18(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;

  dispatch_group_leave(a3);
}

void sub_24B9E6D84(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = sub_24BAA7E4C();
  v97 = *(v102 - 8);
  v12 = MEMORY[0x28223BE20](v102);
  v96 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v98 = &v89 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v89 - v16;
  swift_beginAccess();
  v18 = *(a1 + 16);
  if (!v18)
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v37 = sub_24BAA812C();
    __swift_project_value_buffer(v37, qword_27F077038);
    v38 = sub_24BAAA2AC();
    v39 = sub_24BAA810C();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24B8D3000, v39, v38, "Error getting focus watch face settings: faces returned nil.", v40, 2u);
      MEMORY[0x24C251390](v40, -1, -1);
    }

    a2(0);
    return;
  }

  v19 = v18 >> 62;
  v20 = *(a1 + 16);
  if (v18 >> 62)
  {
    v21 = sub_24BAAA52C();
    v18 = v20;
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v18;
  v92 = a5;
  v93 = a6;
  v90 = v19;
  if (v21)
  {
    v105 = MEMORY[0x277D84F90];
    v22 = v21 & ~(v21 >> 63);
    v100 = v21;

    sub_24B914D68(0, v22, 0);
    if (v100 < 0)
    {
      __break(1u);
LABEL_61:
      swift_once();
      goto LABEL_22;
    }

    v91 = a4;
    v94 = a3;
    v95 = a2;
    v23 = 0;
    v24 = v105;
    v25 = v20;
    v99 = v20 & 0xC000000000000001;
    v26 = (v97 + 16);
    v27 = (v97 + 8);
    do
    {
      if (v99)
      {
        v28 = MEMORY[0x24C2506E0](v23, v25);
      }

      else
      {
        v28 = *(v25 + 8 * v23 + 32);
      }

      v29 = *(v28 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceName + 8);
      v103 = *(v28 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceName);
      v104 = v29;

      MEMORY[0x24C250160](10272, 0xE200000000000000);
      v30 = v102;
      (*v26)(v17, v28 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v102);
      sub_24B9ED2B0(&qword_27F066AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v31 = sub_24BAAA76C();
      MEMORY[0x24C250160](v31);

      (*v27)(v17, v30);
      MEMORY[0x24C250160](41, 0xE100000000000000);

      v33 = v103;
      v32 = v104;
      v105 = v24;
      v35 = *(v24 + 16);
      v34 = *(v24 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_24B914D68((v34 > 1), v35 + 1, 1);
        v24 = v105;
      }

      ++v23;
      *(v24 + 16) = v35 + 1;
      v36 = v24 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      v25 = v101;
    }

    while (v100 != v23);
    v20 = v101;
    a3 = v94;
    a2 = v95;
    a4 = v91;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  a6 = MEMORY[0x24C2501F0](v24, MEMORY[0x277D837D0]);
  v17 = v41;

  swift_beginAccess();
  a4 = *(a4 + 16);
  if (!a4)
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v54 = sub_24BAA812C();
    __swift_project_value_buffer(v54, qword_27F077038);

    v55 = sub_24BAA810C();
    v56 = sub_24BAAA2CC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v105 = v58;
      *v57 = 136315138;
      v59 = sub_24B8E49D4(a6, v17, &v105);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_24B8D3000, v55, v56, "No watch face settings found, just returning faces: fetchedFaces: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v60 = v58;
      v20 = v101;
      MEMORY[0x24C251390](v60, -1, -1);
      MEMORY[0x24C251390](v57, -1, -1);
    }

    else
    {
    }

    a2(v20);
LABEL_46:

    return;
  }

  v42 = qword_27F0630F0;

  if (v42 != -1)
  {
    goto LABEL_61;
  }

LABEL_22:
  v43 = sub_24BAA812C();
  __swift_project_value_buffer(v43, qword_27F077038);

  v44 = sub_24BAA810C();
  v45 = sub_24BAAA2CC();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = a3;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v105 = v48;
    *v47 = 136315394;
    v49 = sub_24B8E49D4(a6, v17, &v105);

    *(v47 + 4) = v49;
    *(v47 + 12) = 2080;
    v50 = sub_24BAA9EFC();
    v52 = sub_24B8E49D4(v50, v51, &v105);

    *(v47 + 14) = v52;
    _os_log_impl(&dword_24B8D3000, v44, v45, "Watch faces and settings fetched: fetchedFaces: %s, fetchedSettings: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v48, -1, -1);
    v53 = v47;
    a3 = v46;
    MEMORY[0x24C251390](v53, -1, -1);
  }

  else
  {
  }

  if (!*(a4 + 16))
  {
    goto LABEL_43;
  }

  v61 = sub_24BA1575C(v92, v93);
  if ((v62 & 1) == 0)
  {
    goto LABEL_43;
  }

  v63 = (*(a4 + 56) + 16 * v61);
  v64 = *v63;
  v100 = v63[1];

  if (v90)
  {
    v77 = sub_24BAAA52C();
    v65 = v20;
    v66 = v77;
    if (v77)
    {
      goto LABEL_33;
    }

LABEL_43:

    a2(v20);
    goto LABEL_46;
  }

  v65 = v20;
  v66 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
    goto LABEL_43;
  }

LABEL_33:
  if (v66 >= 1)
  {
    v94 = a3;
    v95 = a2;
    if ((v65 & 0xC000000000000001) != 0)
    {
      v67 = 0;
      v68 = (v97 + 16);
      v69 = (v97 + 8);
      v70 = v102;
      while (1)
      {
        v71 = MEMORY[0x24C2506E0](v67);
        v72 = v98;
        (*v68)(v98, v71 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v70);
        v73 = sub_24BAA7DEC();
        v75 = v74;
        (*v69)(v72, v70);
        if (v73 == v64 && v75 == v100)
        {
        }

        else
        {
          v76 = sub_24BAAA78C();

          if ((v76 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        *(v71 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_isSelected) = 1;
LABEL_38:
        ++v67;
        swift_unknownObjectRelease();
        if (v66 == v67)
        {
          v78 = v101;

          v95(v78);
          goto LABEL_46;
        }
      }
    }

    v79 = (v65 + 32);
    v80 = *(v97 + 16);
    v97 += 16;
    v81 = (v97 - 8);
    v82 = v102;
    while (1)
    {
      v83 = *v79;
      v84 = v96;
      v80(v96, *v79 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v82);

      v85 = sub_24BAA7DEC();
      v87 = v86;
      (*v81)(v84, v82);
      if (v85 == v64 && v87 == v100)
      {
      }

      else
      {
        v88 = sub_24BAAA78C();

        if ((v88 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      *(v83 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_isSelected) = 1;
LABEL_53:

      ++v79;
      if (!--v66)
      {

        v95(v101);
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

void sub_24B9E7744(void (*a1)(void), uint64_t a2)
{
  v216 = a1;
  v217 = a2;
  v205 = sub_24BAA9E2C();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v202 = &v188 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_24BAA9E5C();
  v201 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v200 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F067F90, &unk_24BAB7CE0);
  MEMORY[0x28223BE20](v208);
  v212 = &v188 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v206 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v188 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v188 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v188 - v14;
  v16 = sub_24BAA7E4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v207 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v220 = &v188 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v219 = &v188 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v210 = &v188 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v213 = &v188 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v188 - v28;
  sub_24B9E65A8(v15);
  v30 = *(v17 + 48);
  if (v30(v15, 1, v16) == 1)
  {
    sub_24B8F35E4(v15, &qword_27F0669D0, &qword_24BAB3F20);
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v31 = sub_24BAA812C();
    __swift_project_value_buffer(v31, qword_27F077038);
    v32 = sub_24BAAA2AC();
    v33 = sub_24BAA810C();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24B8D3000, v33, v32, "No active device to get watch face collection", v34, 2u);
      MEMORY[0x24C251390](v34, -1, -1);
    }

    v216(0);
    return;
  }

  v35 = *(v17 + 32);
  v222 = v16;
  v215 = v17 + 32;
  v214 = v35;
  v35(v29, v15, v16);
  v209 = OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_collection;
  v36 = *&v223[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_collection];
  v221 = v17;
  v211 = v29;
  if (v36)
  {
    v37 = [v36 deviceUUID];
    sub_24BAA7E1C();

    v38 = v17;
    v39 = *(v17 + 56);
    v40 = v222;
    v39(v13, 0, 1, v222);
    v41 = v38;
    v29 = v211;
    v218 = *(v41 + 16);
    v218(v10, v211, v40);
    v39(v10, 0, 1, v40);
    v42 = *(v208 + 48);
    v43 = v212;
    sub_24B9A87F4(v13, v212);
    sub_24B9A87F4(v10, v43 + v42);
    if (v30(v43, 1, v40) == 1)
    {
      v44 = v43;
      sub_24B8F35E4(v10, &qword_27F0669D0, &qword_24BAB3F20);
      v29 = v211;
      sub_24B8F35E4(v13, &qword_27F0669D0, &qword_24BAB3F20);
      v45 = v30((v43 + v42), 1, v40);
      v17 = v221;
      if (v45 == 1)
      {
        sub_24B8F35E4(v44, &qword_27F0669D0, &qword_24BAB3F20);
        goto LABEL_20;
      }
    }

    else
    {
      v46 = v206;
      sub_24B9A87F4(v43, v206);
      if (v30((v43 + v42), 1, v40) != 1)
      {
        v172 = v213;
        v214(v213, v43 + v42, v40);
        sub_24B9ED2B0(&qword_27F067648, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        LODWORD(v208) = sub_24BAA9F5C();
        v173 = v221;
        v174 = *(v221 + 8);
        v174(v172, v40);
        sub_24B8F35E4(v10, &qword_27F0669D0, &qword_24BAB3F20);
        sub_24B8F35E4(v13, &qword_27F0669D0, &qword_24BAB3F20);
        v174(v46, v40);
        v17 = v173;
        v29 = v211;
        sub_24B8F35E4(v212, &qword_27F0669D0, &qword_24BAB3F20);
        if (v208)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      v47 = v46;
      v44 = v43;
      sub_24B8F35E4(v10, &qword_27F0669D0, &qword_24BAB3F20);
      sub_24B8F35E4(v13, &qword_27F0669D0, &qword_24BAB3F20);
      v17 = v221;
      (*(v221 + 8))(v47, v40);
    }

    sub_24B8F35E4(v44, &unk_27F067F90, &unk_24BAB7CE0);
  }

LABEL_14:
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v48 = sub_24BAA812C();
  __swift_project_value_buffer(v48, qword_27F077038);
  v49 = *(v17 + 16);
  v50 = v210;
  v51 = v17;
  v52 = v222;
  v218 = v49;
  v49(v210, v29, v222);
  v53 = sub_24BAA810C();
  v54 = sub_24BAAA2CC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v55 = 136315138;
    v57 = sub_24BAA7DEC();
    v58 = v50;
    v60 = v59;
    (*(v51 + 8))(v58, v52);
    v61 = sub_24B8E49D4(v57, v60, &aBlock);

    *(v55 + 4) = v61;
    _os_log_impl(&dword_24B8D3000, v53, v54, "Creating new NTK face collection for %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C251390](v56, -1, -1);
    v62 = v55;
    v29 = v211;
    MEMORY[0x24C251390](v62, -1, -1);
  }

  else
  {

    (*(v51 + 8))(v50, v52);
  }

  v63 = v223;
  v64 = *MEMORY[0x277D2BEA0];
  v65 = objc_allocWithZone(MEMORY[0x277D2C0A0]);
  v66 = v64;
  v67 = sub_24BAA7DFC();
  v68 = [v65 initWithCollectionIdentifier:v66 deviceUUID:v67];

  v69 = *&v63[v209];
  *&v63[v209] = v68;

  v17 = v221;
LABEL_20:
  v70 = v223;
  v71 = *&v223[v209];
  if (!v71)
  {
    v155 = v222;
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v156 = sub_24BAA812C();
    __swift_project_value_buffer(v156, qword_27F077038);
    v157 = sub_24BAAA2AC();
    v158 = sub_24BAA810C();
    if (os_log_type_enabled(v158, v157))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&dword_24B8D3000, v158, v157, "Error getting watch face collection", v159, 2u);
      MEMORY[0x24C251390](v159, -1, -1);
    }

    v216(0);
    (*(v221 + 8))(v29, v155);
    return;
  }

  v72 = v71;
  v73 = [v72 hasLoaded];
  v74 = v222;
  v75 = 0x27F063000uLL;
  if (!v73)
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v160 = sub_24BAA812C();
    __swift_project_value_buffer(v160, qword_27F077038);
    v161 = sub_24BAA810C();
    v162 = sub_24BAAA2CC();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&dword_24B8D3000, v161, v162, "Face collection not yet loaded, observing and waiting", v163, 2u);
      v164 = v163;
      v17 = v221;
      MEMORY[0x24C251390](v164, -1, -1);
    }

    [v72 addObserver_];
    (*(v17 + 8))(v211, v74);
    v165 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v166 = swift_allocObject();
    v167 = v216;
    v168 = v217;
    *(v166 + 2) = v165;
    *(v166 + 3) = v167;
    *(v166 + 4) = v168;
    v169 = &v70[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad];
    v170 = *&v70[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad];
    v171 = *&v70[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad + 8];
    *v169 = sub_24B9ED1C0;
    v169[1] = v166;

    sub_24B926B78(v170, v171);
LABEL_71:

    return;
  }

  v76 = [objc_allocWithZone(MEMORY[0x277D2C048]) init];
  v77 = *&v70[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_snapshotter];
  *&v70[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_snapshotter] = v76;
  v78 = v76;

  v195 = v78;
  if (!v78)
  {
    if (qword_27F0630F0 == -1)
    {
LABEL_66:
      v175 = sub_24BAA812C();
      __swift_project_value_buffer(v175, qword_27F077038);
      v176 = sub_24BAAA2AC();
      v177 = sub_24BAA810C();
      if (os_log_type_enabled(v177, v176))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&dword_24B8D3000, v177, v176, "NTKFaceSnapshotter could not be configured", v178, 2u);
        MEMORY[0x24C251390](v178, -1, -1);
      }

      v216(0);
      (*(v221 + 8))(v211, v74);
      return;
    }

LABEL_73:
    swift_once();
    goto LABEL_66;
  }

  v231 = MEMORY[0x277D84F90];
  v194 = dispatch_group_create();
  v79 = [v72 numberOfFaces];
  if ((v79 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v81 = v219;
  v80 = v220;
  v199 = v79;
  if (!v79)
  {
    v206 = MEMORY[0x277D84F90];
LABEL_70:
    sub_24B8F37E8(0, &qword_27F0644F0, 0x277D85C78);
    v179 = sub_24BAAA33C();
    v180 = swift_allocObject();
    v181 = v217;
    v180[2] = v216;
    v180[3] = v181;
    v180[4] = v206;
    v229 = sub_24B9ED1D0;
    v230 = v180;
    aBlock = MEMORY[0x277D85DD0];
    v226 = 1107296256;
    v227 = sub_24B97ACC4;
    v228 = &block_descriptor_46;
    v182 = _Block_copy(&aBlock);

    v183 = v200;
    sub_24BAA9E4C();
    v224 = MEMORY[0x277D84F90];
    sub_24B9ED2B0(&qword_27F063470, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500, &qword_24BAAED50);
    sub_24B97C674();
    v184 = v72;
    v185 = v202;
    v186 = v205;
    sub_24BAAA48C();
    v187 = v194;
    sub_24BAAA2DC();
    _Block_release(v182);

    (*(v204 + 8))(v185, v186);
    (*(v201 + 8))(v183, v203);
    (*(v221 + 8))(v211, v222);
    goto LABEL_71;
  }

  v198 = OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_faceImagesCache;
  swift_beginAccess();
  v82 = 0;
  v212 = v17 + 16;
  v196 = (v17 + 8);
  v193 = v18 + 7;
  v192 = &v227;
  v206 = MEMORY[0x277D84F90];
  v83 = &selRef_candidateContacts;
  v84.n128_u64[0] = 136315394;
  v188 = v84;
  v85 = v199;
  v197 = v72;
  while (1)
  {
    v86 = [v72 v83[79]];
    if (!v86)
    {
      goto LABEL_43;
    }

    v87 = v86;
    v88 = [v72 uuidForFace_];
    if (!v88)
    {

LABEL_43:
      if (*(v75 + 240) != -1)
      {
        swift_once();
      }

      v136 = sub_24BAA812C();
      __swift_project_value_buffer(v136, qword_27F077038);
      v137 = sub_24BAAA2AC();
      v138 = sub_24BAA810C();
      if (os_log_type_enabled(v138, v137))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&dword_24B8D3000, v138, v137, "No face at index", v139, 2u);
        MEMORY[0x24C251390](v139, -1, -1);
      }

      goto LABEL_27;
    }

    v210 = v82;
    v89 = v88;
    sub_24BAA7E1C();

    v90 = v81;
    v91 = v222;
    v218(v80, v90, v222);
    v92 = [v87 name];
    if (!v92)
    {
      break;
    }

    v93 = v92;
    v94 = sub_24BAAA01C();
    v96 = v95;

    type metadata accessor for WatchFace(0);
    v97 = swift_allocObject();
    v209 = OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage;
    *(v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage) = 0;
    v98 = OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_ntkFace;
    *(v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_ntkFace) = 0;
    v99 = v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_deviceWidth;
    *v99 = 0;
    *(v99 + 8) = 1;
    v100 = v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_deviceCornerRadius;
    *v100 = 0;
    *(v100 + 8) = 1;
    v214((v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier), v80, v91);
    v101 = (v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceName);
    *v101 = v94;
    v101[1] = v96;
    *(v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_isSelected) = 0;

    MEMORY[0x24C2501C0](v102);
    if (*((v231 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v231 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24BAAA14C();
    }

    sub_24BAAA16C();
    v206 = v231;
    v103 = *(v97 + v98);
    *(v97 + v98) = v87;
    v104 = v87;

    v105 = [v104 device];
    if (v105)
    {
      v106 = v105;
      [v105 screenBounds];
      *v99 = CGRectGetWidth(v232);
      *(v99 + 8) = 0;
      [v106 screenCornerRadius];
      v108 = v107;

      *v100 = v108;
      *(v100 + 8) = 0;
    }

    v81 = v219;
    v109 = sub_24BAA7DEC();
    v111 = v110;
    v112 = *&v223[v198];
    v80 = v220;
    v82 = v210;
    if (*(v112 + 16))
    {
      v113 = v109;

      v114 = sub_24BA1575C(v113, v111);
      v116 = v115;

      if (v116)
      {
        v208 = *(*(v112 + 56) + 8 * v114);

        v75 = 0x27F063000uLL;
        if (qword_27F0630F0 != -1)
        {
          swift_once();
        }

        v117 = sub_24BAA812C();
        __swift_project_value_buffer(v117, qword_27F077038);
        v118 = sub_24BAAA28C();
        v119 = v207;
        v120 = v222;
        v218(v207, v81, v222);
        v121 = v104;
        v122 = sub_24BAA810C();
        v191 = v118;
        if (os_log_type_enabled(v122, v118))
        {
          v190 = v122;
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          aBlock = v124;
          *v123 = v188.n128_u32[0];
          v125 = [v121 name];

          if (!v125)
          {
            goto LABEL_75;
          }

          v126 = sub_24BAAA01C();
          v128 = v127;

          v129 = sub_24B8E49D4(v126, v128, &aBlock);

          *(v123 + 4) = v129;
          *(v123 + 12) = 2080;
          v130 = sub_24BAA7DEC();
          v132 = v131;
          v189 = *v196;
          v133 = v222;
          v189(v119, v222);
          v134 = sub_24B8E49D4(v130, v132, &aBlock);

          *(v123 + 14) = v134;
          v135 = v190;
          _os_log_impl(&dword_24B8D3000, v190, v191, "Using cached image for face %s (%s)", v123, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C251390](v124, -1, -1);
          MEMORY[0x24C251390](v123, -1, -1);

          v81 = v219;
          v189(v219, v133);
          v80 = v220;
          v75 = 0x27F063000;
        }

        else
        {

          v153 = *v196;
          (*v196)(v119, v120);
          v153(v81, v120);
        }

        v154 = *(v97 + v209);
        *(v97 + v209) = v208;

        goto LABEL_52;
      }

      v209 = v104;
    }

    else
    {
      v209 = v104;
    }

    v140 = v194;
    dispatch_group_enter(v194);
    v141 = [objc_opt_self() defaultModernSnapshotOptions];
    sub_24B8F37E8(0, &unk_27F067FA0, 0x277D82BB8);
    sub_24BAA9EEC();

    v208 = sub_24BAA9EDC();

    v142 = v213;
    v143 = v222;
    v218(v213, v81, v222);
    v144 = (*(v221 + 80) + 24) & ~*(v221 + 80);
    v145 = (v193 + v144) & 0xFFFFFFFFFFFFFFF8;
    v146 = swift_allocObject();
    v147 = v223;
    *(v146 + 16) = v223;
    v214((v146 + v144), v142, v143);
    *(v146 + v145) = v97;
    *(v146 + ((v145 + 15) & 0xFFFFFFFFFFFFFFF8)) = v140;
    v229 = sub_24B9ED204;
    v230 = v146;
    aBlock = MEMORY[0x277D85DD0];
    v226 = 1107296256;
    v227 = sub_24B9E93F8;
    v228 = &block_descriptor_52;
    v148 = _Block_copy(&aBlock);

    v149 = v147;
    v150 = v140;

    v151 = v209;
    v152 = v208;
    [v195 provideSnapshotOfFace:v209 options:v208 completion:v148];
    _Block_release(v148);

    v81 = v219;
    (*(v221 + 8))(v219, v143);
    v80 = v220;
    v75 = 0x27F063000;
LABEL_52:
    v72 = v197;
    v85 = v199;
    v83 = &selRef_candidateContacts;
LABEL_27:
    if (v85 == ++v82)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
}

void sub_24B9E90B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v40 = a6;
  v9 = sub_24BAA7E4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a4;
  v13 = sub_24BAA7DEC();
  v15 = v14;
  swift_beginAccess();
  v16 = a2;
  sub_24BA1B708(a2, v13, v15);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage;
  v18 = *(a5 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage);
  *(a5 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage) = a2;
  v19 = v16;

  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v20 = sub_24BAA812C();
  __swift_project_value_buffer(v20, qword_27F077038);
  v21 = sub_24BAAA28C();
  (*(v10 + 16))(v12, v39, v9);

  v22 = sub_24BAA810C();

  v23 = v9;
  if (os_log_type_enabled(v22, v21))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41[0] = v25;
    *v24 = 136315394;
    v26 = sub_24BAA7DEC();
    v27 = v23;
    v28 = v26;
    v30 = v29;
    (*(v10 + 8))(v12, v27);
    v31 = sub_24B8E49D4(v28, v30, v41);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    v32 = *(a5 + v17);
    if (v32)
    {
      v33 = [v32 description];
      v34 = sub_24BAAA01C();
      v36 = v35;
    }

    else
    {
      v36 = 0xE300000000000000;
      v34 = 7104878;
    }

    v37 = sub_24B8E49D4(v34, v36, v41);

    *(v24 + 14) = v37;
    _os_log_impl(&dword_24B8D3000, v22, v21, "Fetched face image for %s, image: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v25, -1, -1);
    MEMORY[0x24C251390](v24, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  dispatch_group_leave(v40);
}

void sub_24B9E93F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24B9E9470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BAA9E2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24BAA9E5C();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0, 0x277D85C78);
  v13 = sub_24BAAA33C();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_24B9ED208;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_58;
  v15 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24B9ED2B0(&qword_27F063470, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500, &qword_24BAAED50);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v18);
}

void sub_24B9E974C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24B9E7744(a2, a3);
  }
}

id sub_24B9E981C()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager____lazy_storage___watchNPSManager;
  v2 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager____lazy_storage___watchNPSManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager____lazy_storage___watchNPSManager);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D2BA60]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_24B9E9890()
{
  v0 = sub_24B9ECC88();
  if (v0)
  {
    v1 = v0;
    v2 = [v1 synchronize];
    v3 = v2;
    if (v2)
    {
      v4 = qword_27F0630F0;
      v5 = v2;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_24BAA812C();
      __swift_project_value_buffer(v6, qword_27F077038);
      v7 = sub_24BAAA2AC();
      v8 = v5;
      v9 = sub_24BAA810C();

      if (os_log_type_enabled(v9, v7))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v18 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = sub_24BAAA7DC();
        v14 = sub_24B8E49D4(v12, v13, &v18);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_24B8D3000, v9, v7, "Could not sync domain accessor, error:%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x24C251390](v11, -1, -1);
        MEMORY[0x24C251390](v10, -1, -1);
      }

      else
      {
      }
    }

    v15 = sub_24B9E981C();
    v16 = sub_24BAA9FDC();
    sub_24B8F3034(&unk_285EBEEE8);
    sub_24B9528C8(&unk_285EBEF08);
    v17 = sub_24BAAA1FC();

    [v15 synchronizeNanoDomain:v16 keys:v17];
  }
}

double sub_24B9E9AE4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_24BAA9E2C();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24BAA9E5C();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24BAA9E3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0, 0x277D85C78);
  (*(v9 + 104))(v11, *MEMORY[0x277D851C0], v8);
  v12 = sub_24BAAA36C();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v15 = v21;
  v16 = v22;
  v14[2] = v13;
  v14[3] = v15;
  v17 = ObjectType;
  v14[4] = v16;
  v14[5] = v17;
  aBlock[4] = sub_24B9ED1AC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_36_0;
  v18 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  v25 = MEMORY[0x277D84F90];
  sub_24B9ED2B0(&qword_27F063470, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500, &qword_24BAAED50);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v7, v4, v18);
  _Block_release(v18);

  (*(v24 + 8))(v4, v2);
  (*(v5 + 8))(v7, v23);

  return result;
}

double sub_24B9E9EBC(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_24B9ECC88();
    if (v6)
    {
      v7 = v6;
      sub_24B9E9890();
      v8 = sub_24BAA9FDC();
      v9 = [v7 objectForKey_];

      if (v9)
      {
        sub_24BAAA47C();

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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067F88, &qword_24BAB7CD8);
        if (swift_dynamicCast())
        {
          v14 = v15;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_17;
      }

      sub_24B8F35E4(v18, &qword_27F063190, &qword_24BAB7CD0);
    }

    else
    {
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v10 = sub_24BAA812C();
      __swift_project_value_buffer(v10, qword_27F077038);
      v11 = sub_24BAAA2AC();
      v12 = sub_24BAA810C();
      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_24B8D3000, v12, v11, "Domain accessor for focus watch face settings was nil", v13, 2u);
        MEMORY[0x24C251390](v13, -1, -1);
      }
    }

    v14 = 0;
LABEL_17:
    a2(v14);
  }

  return result;
}

double sub_24B9EA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v38 = sub_24BAA9E2C();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA9E5C();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v31 - v13;
  v15 = sub_24BAA9E3C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0, 0x277D85C78);
  (*(v16 + 104))(v18, *MEMORY[0x277D851C0], v15);
  v31 = sub_24BAAA36C();
  (*(v16 + 8))(v18, v15);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24B9A87F4(v32, v14);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v33;
  v24 = v34;
  v22[2] = v19;
  v22[3] = v23;
  v22[4] = v24;
  sub_24B9EAFD4(v14, v22 + v20);
  v25 = (v22 + v21);
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_24B9EB044;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_7;
  v27 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  v42 = MEMORY[0x277D84F90];
  sub_24B9ED2B0(&qword_27F063470, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500, &qword_24BAAED50);
  sub_24B97C674();
  v28 = v38;
  sub_24BAAA48C();
  v29 = v31;
  MEMORY[0x24C250400](0, v9, v6, v27);
  _Block_release(v27);

  (*(v41 + 8))(v6, v28);
  (*(v39 + 8))(v9, v40);

  return result;
}

void *sub_24B9EA59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a5;
  v55 = a6;
  v52 = a2;
  v53 = a3;
  v7 = sub_24BAA9E2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24BAA9E5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = sub_24B9ECC88();
    v50 = v12;
    v51 = v11;
    if (!v20)
    {
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v29 = sub_24BAA812C();
      __swift_project_value_buffer(v29, qword_27F077038);
      v30 = sub_24BAAA2AC();
      v31 = sub_24BAA810C();
      if (os_log_type_enabled(v31, v30))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24B8D3000, v31, v30, "Domain accessor for focus watch face settings was nil", v32, 2u);
        MEMORY[0x24C251390](v32, -1, -1);
      }

      goto LABEL_24;
    }

    v21 = qword_27F0630F0;
    v49 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_24BAA812C();
    __swift_project_value_buffer(v22, qword_27F077038);
    v23 = sub_24BAA810C();
    v24 = sub_24BAAA2CC();
    v25 = os_log_type_enabled(v23, v24);
    v48 = v8;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24B8D3000, v23, v24, "Setting focus watch face settings", v26, 2u);
      MEMORY[0x24C251390](v26, -1, -1);
    }

    sub_24B9E9890();
    v47 = "ng.with.stuck.out.tongue";
    v27 = sub_24BAA9FDC();
    v28 = [v49 objectForKey_];

    if (v28)
    {
      sub_24BAAA47C();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    aBlock = v57;
    v60 = v58;
    if (*(&v58 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067F88, &qword_24BAB7CD8);
      if (swift_dynamicCast())
      {
        v33 = v56;
LABEL_20:
        *&aBlock = v33;
        sub_24B9A87F4(a4, v17);
        v34 = sub_24BAA7E4C();
        v35 = *(v34 - 8);
        if ((*(v35 + 48))(v17, 1, v34) == 1)
        {
          sub_24B8F35E4(v17, &qword_27F0669D0, &qword_24BAB3F20);
          v36 = 0;
          v37 = 0;
        }

        else
        {
          v36 = sub_24BAA7DEC();
          v37 = v38;
          (*(v35 + 8))(v17, v34);
        }

        v39 = v53;

        sub_24BA1B4C4(v36, v37, v52, v39);
        v40 = sub_24BAA9EDC();

        v41 = sub_24BAA9FDC();
        v42 = v49;
        [v49 setObject:v40 forKey:v41];

        sub_24B9E9890();
        v8 = v48;
LABEL_24:
        sub_24B8F37E8(0, &qword_27F0644F0, 0x277D85C78);
        v43 = sub_24BAAA33C();
        v44 = swift_allocObject();
        v45 = v55;
        *(v44 + 16) = v54;
        *(v44 + 24) = v45;
        v61 = sub_24B982290;
        v62 = v44;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v60 = sub_24B97ACC4;
        *(&v60 + 1) = &block_descriptor_29;
        v46 = _Block_copy(&aBlock);

        sub_24BAA9E4C();
        *&aBlock = MEMORY[0x277D84F90];
        sub_24B9ED2B0(&qword_27F063470, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500, &qword_24BAAED50);
        sub_24B97C674();
        sub_24BAAA48C();
        MEMORY[0x24C250400](0, v14, v10, v46);
        _Block_release(v46);

        (*(v8 + 8))(v10, v7);
        return (*(v50 + 8))(v14, v51);
      }
    }

    else
    {
      sub_24B8F35E4(&aBlock, &qword_27F063190, &qword_24BAB7CD0);
    }

    v33 = sub_24BA20C5C(MEMORY[0x277D84F90]);
    goto LABEL_20;
  }

  return result;
}

id sub_24B9EACB4()
{
  *&v0[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_collection] = 0;
  *&v0[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_snapshotter] = 0;
  v1 = &v0[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_faceImagesCache;
  *&v0[v2] = sub_24BA21008(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager____lazy_storage___watchNPSManager] = 0;
  *&v0[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager__watchFaceDomainAccessor] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WatchFaceSettingsManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_24B9EAD6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchFaceSettingsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B9EAE54()
{
  MEMORY[0x24C251450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B9EAE8C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_24BAA7E4C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24B9EAFD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24B9EB044()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_24B9EA59C(v3, v4, v5, v0 + v2, v7, v8);
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_24B9EB10C(char *a1, uint64_t a2, void *a3)
{
  v233 = a1;
  v216 = sub_24BAA9E2C();
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v213 = &v199 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_24BAA9E5C();
  v212 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v211 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F067F90, &unk_24BAB7CE0);
  MEMORY[0x28223BE20](v218);
  v219 = &v199 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v217 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v199 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v222 = (v199.n128_u64 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v199 - v16;
  v18 = sub_24BAA7E4C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v221 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v220 = &v199 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v226 = &v199 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v232 = &v199 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v223 = &v199 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v199 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  v229 = v32;
  v224 = a2;

  v33 = a3;
  sub_24B9E65A8(v17);
  v34 = v19[6];
  if (v34(v17, 1, v18) == 1)
  {
    sub_24B8F35E4(v17, &qword_27F0669D0, &qword_24BAB3F20);
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v35 = sub_24BAA812C();
    __swift_project_value_buffer(v35, qword_27F077038);
    v36 = sub_24BAAA2AC();
    v37 = sub_24BAA810C();
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24B8D3000, v37, v36, "No active device to get watch face collection", v38, 2u);
      MEMORY[0x24C251390](v38, -1, -1);
    }

    v39 = v224;
    swift_beginAccess();
    *(v39 + 16) = 0;

    dispatch_group_leave(v33);
    goto LABEL_71;
  }

  v206 = v33;
  v231 = v19;
  v40 = v19[4];
  v225 = v31;
  v227 = v40;
  v228 = v19 + 4;
  v40(v31, v17, v18);
  v41 = OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_collection;
  v42 = v233;
  v43 = *&v233[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_collection];
  v234 = v18;
  v44 = 0x27F063000uLL;
  if (v43)
  {
    v45 = [v43 deviceUUID];
    v46 = v222;
    sub_24BAA7E1C();

    v47 = v231;
    v48 = v234;
    v49 = v231[7];
    v49(v46, 0, 1, v234);
    v230 = v47[2];
    v230(v13, v225, v48);
    v49(v13, 0, 1, v48);
    v50 = v46;
    v51 = *(v218 + 48);
    v52 = v46;
    v53 = v219;
    sub_24B9A87F4(v52, v219);
    sub_24B9A87F4(v13, v53 + v51);
    if (v34(v53, 1, v48) == 1)
    {
      sub_24B8F35E4(v13, &qword_27F0669D0, &qword_24BAB3F20);
      sub_24B8F35E4(v50, &qword_27F0669D0, &qword_24BAB3F20);
      if (v34((v53 + v51), 1, v48) == 1)
      {
        sub_24B8F35E4(v53, &qword_27F0669D0, &qword_24BAB3F20);
        v42 = v233;
        v44 = 0x27F063000;
        goto LABEL_20;
      }
    }

    else
    {
      v54 = v217;
      sub_24B9A87F4(v53, v217);
      if (v34((v53 + v51), 1, v48) != 1)
      {
        v177 = v53 + v51;
        v178 = v53;
        v179 = v41;
        v180 = v223;
        v227(v223, v177, v48);
        sub_24B9ED2B0(&qword_27F067648, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        LODWORD(v218) = sub_24BAA9F5C();
        v181 = v231[1];
        v182 = v180;
        v41 = v179;
        v181(v182, v48);
        sub_24B8F35E4(v13, &qword_27F0669D0, &qword_24BAB3F20);
        sub_24B8F35E4(v222, &qword_27F0669D0, &qword_24BAB3F20);
        v181(v54, v48);
        sub_24B8F35E4(v178, &qword_27F0669D0, &qword_24BAB3F20);
        v42 = v233;
        v44 = 0x27F063000;
        if (v218)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      sub_24B8F35E4(v13, &qword_27F0669D0, &qword_24BAB3F20);
      sub_24B8F35E4(v222, &qword_27F0669D0, &qword_24BAB3F20);
      (v231[1])(v54, v48);
    }

    sub_24B8F35E4(v53, &unk_27F067F90, &unk_24BAB7CE0);
    v42 = v233;
    v44 = 0x27F063000uLL;
  }

LABEL_14:
  v210 = v41;
  if (*(v44 + 240) != -1)
  {
    swift_once();
  }

  v55 = sub_24BAA812C();
  __swift_project_value_buffer(v55, qword_27F077038);
  v56 = v231;
  v57 = v221;
  v230 = v231[2];
  v230(v221, v225, v234);
  v58 = sub_24BAA810C();
  v59 = sub_24BAAA2CC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136315138;
    v62 = sub_24BAA7DEC();
    v63 = v57;
    v65 = v64;
    (v56[1])(v63, v234);
    v66 = sub_24B8E49D4(v62, v65, &aBlock);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_24B8D3000, v58, v59, "Creating new NTK face collection for %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    v67 = v61;
    v42 = v233;
    MEMORY[0x24C251390](v67, -1, -1);
    MEMORY[0x24C251390](v60, -1, -1);
  }

  else
  {

    (v56[1])(v57, v234);
  }

  v68 = *MEMORY[0x277D2BEA0];
  v69 = objc_allocWithZone(MEMORY[0x277D2C0A0]);
  v70 = v68;
  v71 = sub_24BAA7DFC();
  v72 = [v69 initWithCollectionIdentifier:v70 deviceUUID:v71];

  v41 = v210;
  v73 = *&v210[v42];
  *&v210[v42] = v72;

LABEL_20:
  v74 = *&v42[v41];
  if (!v74)
  {
    v77 = v225;
    if (*(v44 + 240) != -1)
    {
      swift_once();
    }

    v161 = sub_24BAA812C();
    __swift_project_value_buffer(v161, qword_27F077038);
    v162 = sub_24BAAA2AC();
    v163 = sub_24BAA810C();
    v164 = os_log_type_enabled(v163, v162);
    v165 = v206;
    if (v164)
    {
      v166 = swift_slowAlloc();
      *v166 = 0;
      _os_log_impl(&dword_24B8D3000, v163, v162, "Error getting watch face collection", v166, 2u);
      MEMORY[0x24C251390](v166, -1, -1);
    }

    v167 = v224;
    swift_beginAccess();
    *(v167 + 16) = 0;

    dispatch_group_leave(v165);
    goto LABEL_67;
  }

  v75 = v74;
  v76 = [v75 hasLoaded];
  v77 = v225;
  if ((v76 & 1) == 0)
  {
    if (*(v44 + 240) != -1)
    {
      swift_once();
    }

    v168 = sub_24BAA812C();
    __swift_project_value_buffer(v168, qword_27F077038);
    v169 = sub_24BAA810C();
    v170 = sub_24BAAA2CC();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&dword_24B8D3000, v169, v170, "Face collection not yet loaded, observing and waiting", v171, 2u);
      MEMORY[0x24C251390](v171, -1, -1);
    }

    [v75 addObserver_];
    (v231[1])(v77, v234);
    v172 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v173 = swift_allocObject();
    v173[2] = v172;
    v173[3] = sub_24B9ED338;
    v173[4] = v229;
    v174 = &v42[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad];
    v175 = *&v42[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad];
    v176 = *&v42[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad + 8];
    *v174 = sub_24B9ED698;
    *(v174 + 1) = v173;

    sub_24B926B78(v175, v176);
LABEL_70:

    goto LABEL_71;
  }

  v78 = [objc_allocWithZone(MEMORY[0x277D2C048]) init];
  v79 = *&v42[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_snapshotter];
  *&v42[OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_snapshotter] = v78;
  v80 = v78;

  v207 = v80;
  if (!v80)
  {
    if (*(v44 + 240) == -1)
    {
LABEL_64:
      v183 = sub_24BAA812C();
      __swift_project_value_buffer(v183, qword_27F077038);
      v184 = sub_24BAAA2AC();
      v185 = sub_24BAA810C();
      v186 = os_log_type_enabled(v185, v184);
      v187 = v206;
      if (v186)
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&dword_24B8D3000, v185, v184, "NTKFaceSnapshotter could not be configured", v188, 2u);
        MEMORY[0x24C251390](v188, -1, -1);
      }

      v189 = v224;
      swift_beginAccess();
      *(v189 + 16) = 0;

      dispatch_group_leave(v187);

LABEL_67:
      (v231[1])(v77, v234);
LABEL_71:

      return;
    }

LABEL_73:
    swift_once();
    goto LABEL_64;
  }

  v242 = MEMORY[0x277D84F90];
  v205 = dispatch_group_create();
  v81 = [v75 numberOfFaces];
  if ((v81 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v82 = v232;
  v210 = v81;
  if (!v81)
  {
    v218 = MEMORY[0x277D84F90];
LABEL_69:
    sub_24B8F37E8(0, &qword_27F0644F0, 0x277D85C78);
    v190 = sub_24BAAA33C();
    v191 = swift_allocObject();
    v192 = v229;
    v191[2] = sub_24B9ED338;
    v191[3] = v192;
    v191[4] = v218;
    v240 = sub_24B9ED64C;
    v241 = v191;
    aBlock = MEMORY[0x277D85DD0];
    v237 = 1107296256;
    v238 = sub_24B97ACC4;
    v239 = &block_descriptor_88;
    v193 = _Block_copy(&aBlock);

    v194 = v75;
    v195 = v211;
    sub_24BAA9E4C();
    v235 = MEMORY[0x277D84F90];
    sub_24B9ED2B0(&qword_27F063470, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500, &qword_24BAAED50);
    sub_24B97C674();
    v196 = v213;
    v197 = v216;
    sub_24BAAA48C();
    v198 = v205;
    sub_24BAAA2DC();
    _Block_release(v193);

    (*(v215 + 8))(v196, v197);
    (*(v212 + 8))(v195, v214);
    (v231[1])(v225, v234);
    goto LABEL_70;
  }

  v209 = OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_faceImagesCache;
  swift_beginAccess();
  v83 = 0;
  v222 = v231 + 2;
  v208 = (v231 + 1);
  v204 = v20 + 7;
  v203 = &v238;
  v218 = MEMORY[0x277D84F90];
  v84 = &selRef_candidateContacts;
  v85.n128_u64[0] = 136315394;
  v199 = v85;
  v86 = v226;
  v87 = v210;
  v217 = v75;
  while (1)
  {
    v88 = [v75 v84[79]];
    if (!v88)
    {
      goto LABEL_43;
    }

    v89 = v88;
    v90 = [v75 uuidForFace_];
    if (!v90)
    {

LABEL_43:
      if (*(v44 + 240) != -1)
      {
        swift_once();
      }

      v138 = sub_24BAA812C();
      __swift_project_value_buffer(v138, qword_27F077038);
      v139 = sub_24BAAA2AC();
      v140 = sub_24BAA810C();
      if (os_log_type_enabled(v140, v139))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_24B8D3000, v140, v139, "No face at index", v141, 2u);
        MEMORY[0x24C251390](v141, -1, -1);
      }

      goto LABEL_27;
    }

    v91 = v90;
    sub_24BAA7E1C();

    v230(v86, v82, v234);
    v92 = [v89 name];
    if (!v92)
    {
      break;
    }

    v93 = v92;
    v94 = sub_24BAAA01C();
    v96 = v95;

    type metadata accessor for WatchFace(0);
    v97 = swift_allocObject();
    v219 = OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage;
    *(v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage) = 0;
    v98 = OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_ntkFace;
    *(v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_ntkFace) = 0;
    v99 = v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_deviceWidth;
    *v99 = 0;
    *(v99 + 8) = 1;
    v100 = v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_deviceCornerRadius;
    *v100 = 0;
    *(v100 + 8) = 1;
    v227((v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier), v86, v234);
    v101 = (v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceName);
    *v101 = v94;
    v101[1] = v96;
    *(v97 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_isSelected) = 0;

    MEMORY[0x24C2501C0](v102);
    if (*((v242 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v242 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24BAAA14C();
    }

    sub_24BAAA16C();
    v218 = v242;
    v103 = *(v97 + v98);
    *(v97 + v98) = v89;
    v104 = v89;

    v221 = v104;
    v105 = [v104 device];
    v82 = v232;
    if (v105)
    {
      v106 = v105;
      [v105 screenBounds];
      *v99 = CGRectGetWidth(v243);
      *(v99 + 8) = 0;
      [v106 screenCornerRadius];
      v108 = v107;

      *v100 = v108;
      *(v100 + 8) = 0;
    }

    v109 = sub_24BAA7DEC();
    v111 = v110;
    v112 = *&v233[v209];
    if (*(v112 + 16) && (v113 = v109, , v114 = sub_24BA1575C(v113, v111), v116 = v115, , (v116 & 1) != 0))
    {
      v202 = *(*(v112 + 56) + 8 * v114);

      v44 = 0x27F063000uLL;
      v75 = v217;
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v117 = sub_24BAA812C();
      __swift_project_value_buffer(v117, qword_27F077038);
      v118 = sub_24BAAA28C();
      v119 = v220;
      v230(v220, v82, v234);
      v120 = v221;
      v121 = sub_24BAA810C();
      LODWORD(v221) = v118;
      if (os_log_type_enabled(v121, v118))
      {
        v200 = v121;
        v122 = v234;
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        aBlock = v124;
        *v123 = v199.n128_u32[0];
        v125 = [v120 name];
        v201 = v120;

        if (!v125)
        {
          goto LABEL_75;
        }

        v126 = sub_24BAAA01C();
        v128 = v127;

        v129 = sub_24B8E49D4(v126, v128, &aBlock);

        *(v123 + 4) = v129;
        *(v123 + 12) = 2080;
        v130 = v220;
        v131 = sub_24BAA7DEC();
        v133 = v132;
        v134 = *v208;
        (*v208)(v130, v122);
        v135 = sub_24B8E49D4(v131, v133, &aBlock);

        *(v123 + 14) = v135;
        v136 = v200;
        _os_log_impl(&dword_24B8D3000, v200, v221, "Using cached image for face %s (%s)", v123, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v124, -1, -1);
        v137 = v122;
        MEMORY[0x24C251390](v123, -1, -1);

        v82 = v232;
        v134(v232, v137);
        v44 = 0x27F063000;
        v75 = v217;
      }

      else
      {

        v157 = *v208;
        v158 = v119;
        v159 = v234;
        (*v208)(v158, v234);
        v157(v82, v159);
      }

      v160 = *&v219[v97];
      *&v219[v97] = v202;

      v86 = v226;
    }

    else
    {

      v142 = v205;
      dispatch_group_enter(v205);
      v143 = [objc_opt_self() defaultModernSnapshotOptions];
      sub_24B8F37E8(0, &unk_27F067FA0, 0x277D82BB8);
      sub_24BAA9EEC();

      v219 = sub_24BAA9EDC();

      v144 = v223;
      v145 = v82;
      v146 = v234;
      v230(v223, v145, v234);
      v147 = (*(v231 + 80) + 24) & ~*(v231 + 80);
      v148 = (v204 + v147) & 0xFFFFFFFFFFFFFFF8;
      v149 = swift_allocObject();
      v150 = v233;
      *(v149 + 16) = v233;
      v227((v149 + v147), v144, v146);
      *(v149 + v148) = v97;
      *(v149 + ((v148 + 15) & 0xFFFFFFFFFFFFFFF8)) = v142;
      v240 = sub_24B9ED690;
      v241 = v149;
      aBlock = MEMORY[0x277D85DD0];
      v237 = 1107296256;
      v238 = sub_24B9E93F8;
      v239 = &block_descriptor_95_0;
      v151 = _Block_copy(&aBlock);

      v152 = v150;
      v153 = v142;

      v154 = v221;
      v155 = v219;
      [v207 provideSnapshotOfFace:v221 options:v219 completion:v151];
      _Block_release(v151);

      v156 = v146;
      v82 = v232;
      (v231[1])(v232, v156);
      v86 = v226;
      v44 = 0x27F063000;
      v75 = v217;
    }

    v87 = v210;
    v84 = &selRef_candidateContacts;
LABEL_27:
    if (v87 == ++v83)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_75:

  __break(1u);
}

double sub_24B9ECB50()
{
  v1 = v0;
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA812C();
  __swift_project_value_buffer(v2, qword_27F077038);
  v3 = sub_24BAA810C();
  v4 = sub_24BAAA2CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24B8D3000, v3, v4, "Face collection loaded", v5, 2u);
    MEMORY[0x24C251390](v5, -1, -1);
  }

  v7 = (v1 + OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad);
  v8 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager_onLoad);
  if (v8)
  {
    v9 = v7[1];

    v8(v10);
    sub_24B926B78(v8, v9);
    v11 = *v7;
    v12 = v7[1];
    *v7 = 0;
    v7[1] = 0;

    return sub_24B926B78(v11, v12);
  }

  return result;
}

uint64_t sub_24B9ECC88()
{
  v1 = sub_24BAA7E4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F067F90, &unk_24BAB7CE0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0, &qword_24BAB3F20);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v35[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35[-v14];
  MEMORY[0x28223BE20](v13);
  v18 = &v35[-v17];
  v19 = OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager__watchFaceDomainAccessor;
  v39 = v0;
  v20 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI24WatchFaceSettingsManager__watchFaceDomainAccessor);
  if (!v20)
  {
    goto LABEL_11;
  }

  v37 = v4;
  v38 = v16;
  v21 = [v20 pairingID];
  if (v21)
  {
    v22 = v21;
    sub_24BAA7E1C();

    (*(v2 + 56))(v15, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v15, 1, 1, v1);
  }

  sub_24B9EAFD4(v15, v18);
  sub_24B9E65A8(v12);
  v23 = *(v5 + 48);
  sub_24B9A87F4(v18, v7);
  sub_24B9A87F4(v12, &v7[v23]);
  v24 = v2;
  v25 = *(v2 + 48);
  if (v25(v7, 1, v1) != 1)
  {
    v26 = v38;
    sub_24B9A87F4(v7, v38);
    if (v25(&v7[v23], 1, v1) != 1)
    {
      v32 = &v7[v23];
      v33 = v37;
      (*(v24 + 32))(v37, v32, v1);
      sub_24B9ED2B0(&qword_27F067648, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v36 = sub_24BAA9F5C();
      v34 = *(v24 + 8);
      v34(v33, v1);
      sub_24B8F35E4(v12, &qword_27F0669D0, &qword_24BAB3F20);
      sub_24B8F35E4(v18, &qword_27F0669D0, &qword_24BAB3F20);
      v34(v26, v1);
      sub_24B8F35E4(v7, &qword_27F0669D0, &qword_24BAB3F20);
      if (v36)
      {
        return *(v39 + v19);
      }

      goto LABEL_11;
    }

    sub_24B8F35E4(v12, &qword_27F0669D0, &qword_24BAB3F20);
    sub_24B8F35E4(v18, &qword_27F0669D0, &qword_24BAB3F20);
    (*(v24 + 8))(v26, v1);
    goto LABEL_10;
  }

  sub_24B8F35E4(v12, &qword_27F0669D0, &qword_24BAB3F20);
  sub_24B8F35E4(v18, &qword_27F0669D0, &qword_24BAB3F20);
  if (v25(&v7[v23], 1, v1) != 1)
  {
LABEL_10:
    sub_24B8F35E4(v7, &unk_27F067F90, &unk_24BAB7CE0);
LABEL_11:
    v27 = objc_allocWithZone(MEMORY[0x277D2BA58]);
    v28 = sub_24BAA9FDC();
    v29 = [v27 initWithDomain_];

    v30 = *(v39 + v19);
    *(v39 + v19) = v29;

    return *(v39 + v19);
  }

  sub_24B8F35E4(v7, &qword_27F0669D0, &qword_24BAB3F20);
  return *(v39 + v19);
}

uint64_t sub_24B9ED16C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B9ED214()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B9ED250()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B9ED2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_66Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_32Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_42Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_24BAA7E4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_24B9ED4D0(uint64_t a1, void *a2)
{
  v5 = *(sub_24BAA7E4C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24B9E90B4(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_24B9ED58C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B9ED6B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18, qword_24BAAD8C0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

void *sub_24B9ED78C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18, qword_24BAAD8C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RootActivityConfigView(uint64_t a1)
{
  result = qword_27F067FC0;
  if (!qword_27F067FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B9ED888(uint64_t a1)
{
  sub_24B8F47B4(319);
  if (v1 <= 0x3F)
  {
    sub_24B904FFC();
    if (v2 <= 0x3F)
    {
      sub_24B9EDA08(319, &qword_27F067FD0, &qword_27F066D48, &qword_24BAB5870, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_24B9EDA08(319, &qword_27F063A48, &qword_27F063A10, qword_24BAB3020, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24B9EDA08(319, &qword_27F067FD8, &qword_27F067FE0, &qword_24BAB7D88, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24B980E74(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24B9EDA08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24B9EDAD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_24BAA8A4C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24BAA862C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067FE8, &qword_24BAB7DE0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067FF0, &qword_24BAB7DE8);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067FF8, &qword_24BAB7DF0);
  sub_24B8F384C(&qword_27F068000, &qword_27F067FF8, &qword_24BAB7DF0, MEMORY[0x277CE14C0]);
  sub_24BAA92AC();
  sub_24BAA9D7C();
  v17 = sub_24B8F384C(&qword_27F068008, &qword_27F067FE8, &qword_24BAB7DE0, MEMORY[0x277CDE580]);
  v18 = sub_24B9FB1E0(&qword_27F064860, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  sub_24BAA96EC();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v19 = v38;
  v20 = v39;
  v21 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x277CDDDC0], v40);
  v43 = v9;
  v44 = v5;
  v45 = v17;
  v46 = v18;
  swift_getOpaqueTypeConformance2();
  v22 = v41;
  v23 = v36;
  sub_24BAA964C();
  (*(v20 + 8))(v19, v21);
  (*(v37 + 8))(v16, v23);
  KeyPath = swift_getKeyPath();
  v25 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068010, &qword_24BAB7E20) + 36);
  *v25 = KeyPath;
  *(v25 + 8) = 0;
  LOBYTE(KeyPath) = sub_24BAA90CC();
  sub_24BAA828C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068018, &qword_24BAB7E28);
  v35 = v22 + *(result + 36);
  *v35 = KeyPath;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_24B9EDFAC@<X0>(uint64_t (**a1)()@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068020, &qword_24BAB7E30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v220 = v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v221 = v187 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068028, &qword_24BAB7E38);
  v8 = MEMORY[0x28223BE20](v7);
  v219 = v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v227 = v187 - v10;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068030, &qword_24BAB7E40);
  MEMORY[0x28223BE20](v204);
  v195 = v187 - v11;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068038, &qword_24BAB7E48);
  v12 = MEMORY[0x28223BE20](v192);
  v193 = v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v194 = (v187 - v14);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068040, &qword_24BAB7E50);
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v188 = (v187 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068048, &qword_24BAB7E58);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v191 = v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v196 = v187 - v19;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068050, &qword_24BAB7E60);
  MEMORY[0x28223BE20](v207);
  v203 = (v187 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068058, &qword_24BAB7E68);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v218 = v187 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v226 = v187 - v24;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068060, &qword_24BAB7E70);
  MEMORY[0x28223BE20](v198);
  v197 = v187 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068068, &qword_24BAB7E78);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v217 = v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v228 = v187 - v29;
  *&v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068070, &qword_24BAB7E80);
  MEMORY[0x28223BE20](v200);
  v31 = v187 - v30;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068078, &qword_24BAB7E88);
  MEMORY[0x28223BE20](v202);
  v201 = (v187 - v32);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068080, &qword_24BAB7E90);
  v215 = *(v216 - 8);
  v33 = MEMORY[0x28223BE20](v216);
  v214 = v187 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v225 = v187 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068088, &qword_24BAB7E98);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v213 = v187 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = v187 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068090, &qword_24BAB7EA0);
  v42 = MEMORY[0x28223BE20](v41);
  v212 = v187 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = v187 - v44;
  v46 = *a1;
  v187[1] = a1[1];
  if (!v46)
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v47 = sub_24B8D7188();

  v205 = v7;
  if (v47)
  {
    v48 = [v47 mode];

    v49 = [v48 semanticType];

    v51 = v49 == 2;
  }

  else
  {

    v51 = 0;
  }

  MEMORY[0x28223BE20](v50);
  sub_24B9F8CB0();
  sub_24BAA9C3C();
  v52 = &v45[*(v41 + 36)];
  v52[32] = 0;
  *v52 = 0u;
  *(v52 + 1) = 0u;
  v208 = a1;
  v211 = v45;
  v199 = v51;
  v222 = v40;
  if (!v51 || (v53 = [objc_opt_self() sharedConnection]) != 0 && (v54 = v53, v55 = objc_msgSend(v53, sel_isDriverDoNotDisturbModificationsAllowed), v54, (v55 & 1) != 0))
  {
    v56 = 1;
  }

  else
  {
    v224 = v31;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v229 = sub_24BAA7C2C();
    *&v230 = v57;
    sub_24B8F5E3C();
    v58 = sub_24BAA93CC();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    KeyPath = swift_getKeyPath();
    v66 = swift_getKeyPath();
    v67 = v62 & 1;
    LOBYTE(v247) = v62 & 1;
    LOBYTE(v250) = 1;
    v68 = sub_24BAA90BC();
    LOBYTE(v229) = 1;
    v69 = sub_24BAA90CC();
    sub_24BAA828C();
    LOBYTE(v247) = 0;
    v229 = v58;
    *&v230 = v60;
    BYTE8(v230) = v67;
    v231 = v64;
    v232 = KeyPath;
    v233 = 0;
    LOBYTE(v234) = 1;
    v235 = v66;
    v236 = 1;
    v237 = v68;
    v238 = 0u;
    v239 = 0u;
    v240 = 1;
    v241 = v69;
    v242 = v70;
    v243 = v71;
    v244 = v72;
    v245 = v73;
    v246 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0681E8, &qword_24BAB80E0);
    sub_24B9F98EC(&qword_27F0681F0, &qword_27F0681E8, &qword_24BAB80E0, sub_24B9F98BC);
    v40 = v222;
    sub_24BAA9C4C();
    v56 = 0;
    v31 = v224;
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0680A0, &qword_24BAB7EA8);
  (*(*(v74 - 8) + 56))(v40, v56, 1, v74);
  v231 = &type metadata for GreyMatter;
  v232 = sub_24B9F8D04();
  v75 = sub_24BAA7FEC();
  v76 = __swift_destroy_boxed_opaque_existential_0(&v229);
  if ((v75 & 1) != 0 && (v76 = [objc_opt_self() isIntelligenceAvailable], v76))
  {
    v210 = sub_24B9F01F4();
    v78 = v77;
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    v79 = sub_24BAA86FC();
    v223 = v80;
    v224 = v79;

    v209 = v78;
  }

  else
  {
    v224 = 0;
    v223 = 0;
    v210 = 0;
    v209 = 0;
  }

  MEMORY[0x28223BE20](v76);
  v81 = sub_24B9F1818();
  v83 = v82;
  v84 = sub_24B9F1B18();
  v86 = *(v46 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_notificationsHeaderAccessibilityIdentifier);
  v85 = *(v46 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_notificationsHeaderAccessibilityIdentifier + 8);
  v87 = *(v46 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_notificationsFooterAccessibilityIdentifier);
  v88 = *(v46 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_notificationsFooterAccessibilityIdentifier + 8);
  v229 = v81;
  *&v230 = v83;
  *(&v230 + 1) = v84;
  v231 = v89;
  v232 = v86;
  v233 = v85;
  v234 = v87;
  v235 = v88;

  *v31 = sub_24BAA8AAC();
  *(v31 + 1) = 0;
  v31[16] = 1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0680B0, &qword_24BAB7EB0);
  sub_24B9F1F14(&v31[*(v90 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0680B8, &qword_24BAB7EB8);
  sub_24B8FF838();
  sub_24B8F384C(&qword_27F0680C0, &qword_27F0680B8, &qword_24BAB7EB8, MEMORY[0x277CE14C0]);
  sub_24B8F384C(&qword_27F0680C8, &qword_27F068070, &qword_24BAB7E80, MEMORY[0x277CE1138]);
  v91 = v201;
  v92 = 1;
  sub_24BAA9C2C();
  v93 = sub_24B9F2918();
  v94 = swift_getKeyPath();
  v95 = swift_allocObject();
  *(v95 + 16) = v93 & 1;
  v96 = (v91 + *(v202 + 36));
  *v96 = v94;
  v96[1] = sub_24B9027F8;
  v96[2] = v95;
  sub_24BAA836C();
  sub_24B9F8E48();
  sub_24BAA955C();
  sub_24B8F35E4(v91, &qword_27F068078, &qword_24BAB7E88);
  v97 = sub_24B9F2A6C();
  if (v97)
  {
    MEMORY[0x28223BE20](v97);
    sub_24B9F34CC(&v229);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A60, &qword_24BAAD958);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0681C0, &unk_24BAB8060);
    sub_24B9F98EC(&qword_27F063A70, &qword_27F063A60, &qword_24BAAD958, sub_24B8FF808);
    sub_24B8F384C(&qword_27F0681C8, &qword_27F0681C0, &unk_24BAB8060, MEMORY[0x277CE14C0]);
    v98 = v197;
    sub_24BAA9C1C();
    v99 = v98 + *(v198 + 36);
    *(v99 + 32) = 0;
    *v99 = 0u;
    *(v99 + 16) = 0u;
    sub_24BAA836C();
    sub_24B9F9704();
    sub_24BAA955C();
    sub_24B8F35E4(v98, &qword_27F068060, &qword_24BAB7E70);
    v92 = 0;
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0680E8, &qword_24BAB7F00);
  (*(*(v100 - 8) + 56))(v228, v92, 1, v100);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  if (v229 == 0xD00000000000001ALL && 0x800000024BAC1A30 == v230)
  {

    LODWORD(v202) = 0;
    v201 = sub_24B941C80;
  }

  else
  {
    v101 = sub_24BAAA78C();

    if (v101)
    {
      v102 = sub_24B941C80;
    }

    else
    {
      v102 = 0;
    }

    v201 = v102;
    LODWORD(v202) = (v101 & 1) - 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  if (v229 == 0xD000000000000023 && 0x800000024BAC1A50 == v230)
  {

LABEL_29:
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    v104 = sub_24BAA86FC();
    v106 = v105;

    v107 = sub_24BAA813C();
    v108 = sub_24B9F2918();
    v109 = swift_getKeyPath();
    v110 = swift_allocObject();
    *(v110 + 16) = v108 & 1;
    LOBYTE(v229) = 0;
    v111 = v203;
    *v203 = sub_24BA85AB0;
    v111[1] = 0;
    *(v111 + 16) = 0;
    v111[3] = v104;
    v111[4] = v106;
    v111[5] = v107;
    v111[6] = v46;
    v111[7] = v109;
    v111[8] = sub_24B90CF38;
    v111[9] = v110;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068100, &qword_24BAB7FF0);
    sub_24B9F905C();
    sub_24B8F384C(&qword_27F068128, &qword_27F068030, &qword_24BAB7E40, MEMORY[0x277CE14C0]);
    v112 = sub_24BAA8D0C();
    goto LABEL_37;
  }

  v103 = sub_24BAAA78C();

  if (v103)
  {
    goto LABEL_29;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  if (v229 == 0xD00000000000001ALL && 0x800000024BAC1A30 == v230)
  {
  }

  else
  {
    v113 = sub_24BAAA78C();

    if ((v113 & 1) == 0)
    {
      type metadata accessor for ActivityConfigViewModel(0);
      sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
      sub_24BAA86CC();
      swift_getKeyPath();
      sub_24BAA86EC();

      v116 = v229;
      v200 = v230;
      v117 = swift_getKeyPath();
      v118 = v188;
      *v188 = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
      swift_storeEnumTagMultiPayload();
      v119 = swift_getKeyPath();
      v120 = type metadata accessor for AutomationListSection(0);
      v121 = v118 + v120[5];
      *v121 = v119;
      *(v121 + 8) = 0;
      v122 = v118 + v120[6];
      *v122 = v116;
      *(v122 + 8) = v200;
      v123 = (v118 + v120[7]);
      *v123 = sub_24BAA86FC();
      v123[1] = v124;
      v125 = v118 + v120[8];
      LOBYTE(v250) = 0;
      sub_24BAA99EC();
      v126 = *(&v247 + 1);
      *v125 = v247;
      *(v125 + 8) = v126;
      v127 = v118 + v120[9];
      v250 = 0;
      v251 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A10, qword_24BAB3020);
      sub_24BAA99EC();
      v128 = v248;
      *v127 = v247;
      *(v127 + 16) = v128;
      v129 = swift_getKeyPath();
      v130 = swift_allocObject();
      *(v130 + 16) = 0;
      v131 = v190;
      v132 = (v118 + *(v190 + 36));
      *v132 = v129;
      v132[1] = sub_24B90CF38;
      v132[2] = v130;
      sub_24B90294C(v118, v196, &qword_27F068040, &qword_24BAB7E50);
      v115 = v131;
      v114 = 0;
      goto LABEL_36;
    }
  }

  v114 = 1;
  v115 = v190;
LABEL_36:
  v133 = v196;
  (*(v189 + 56))(v196, v114, 1, v115);
  v134 = v194;
  sub_24B8FF208(v194);
  v135 = v134 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0680F0, &qword_24BAB7FE0) + 36);
  v135[32] = 0;
  *v135 = 0u;
  *(v135 + 1) = 0u;
  v136 = swift_getKeyPath();
  v137 = swift_allocObject();
  *(v137 + 16) = 0;
  v138 = (v134 + *(v192 + 36));
  *v138 = v136;
  v138[1] = sub_24B90CF38;
  v138[2] = v137;
  v139 = v191;
  sub_24B8F3208(v133, v191, &qword_27F068048, &qword_24BAB7E58);
  v140 = v193;
  sub_24B8F3208(v134, v193, &qword_27F068038, &qword_24BAB7E48);
  v141 = v195;
  sub_24B8F3208(v139, v195, &qword_27F068048, &qword_24BAB7E58);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0680F8, &qword_24BAB7FE8);
  sub_24B8F3208(v140, v141 + *(v142 + 48), &qword_27F068038, &qword_24BAB7E48);
  sub_24B8F35E4(v140, &qword_27F068038, &qword_24BAB7E48);
  sub_24B8F35E4(v139, &qword_27F068048, &qword_24BAB7E58);
  sub_24B8F3208(v141, v203, &qword_27F068030, &qword_24BAB7E40);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068100, &qword_24BAB7FF0);
  sub_24B9F905C();
  sub_24B8F384C(&qword_27F068128, &qword_27F068030, &qword_24BAB7E40, MEMORY[0x277CE14C0]);
  sub_24BAA8D0C();
  sub_24B8F35E4(v141, &qword_27F068030, &qword_24BAB7E40);
  sub_24B8F35E4(v134, &qword_27F068038, &qword_24BAB7E48);
  v112 = sub_24B8F35E4(v133, &qword_27F068048, &qword_24BAB7E58);
LABEL_37:
  MEMORY[0x28223BE20](v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068130, &qword_24BAB8008);
  sub_24B9F9228();
  v143 = v227;
  sub_24BAA9C3C();
  v144 = sub_24B9F2918();
  v145 = swift_getKeyPath();
  v146 = swift_allocObject();
  *(v146 + 16) = v144 & 1;
  v147 = (v143 + *(v205 + 36));
  *v147 = v145;
  v147[1] = sub_24B90CF38;
  v147[2] = v146;
  if (os_variant_has_internal_content() && (v148 = objc_allocWithZone(MEMORY[0x277CBEBD0]), v149 = sub_24BAA9FDC(), v150 = [v148 initWithSuiteName_], v149, v150) && (v151 = sub_24BAA9FDC(), v152 = objc_msgSend(v150, sel_BOOLForKey_, v151), v150, v151, v152))
  {
    MEMORY[0x28223BE20](v153);
    sub_24B9F5C34(&v229);
    sub_24BAA978C();
    v154 = sub_24BAA933C();
    v156 = v155;
    v158 = v157;
    v160 = v159;

    *&v247 = v154;
    *(&v247 + 1) = v156;
    LOBYTE(v248) = v158 & 1;
    v249 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068170, &qword_24BAB8038);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068178, &qword_24BAB8040);
    sub_24B8F384C(&qword_27F068180, &qword_27F068170, &qword_24BAB8038, MEMORY[0x277CE14C0]);
    sub_24B9F94FC();
    sub_24BAA9C2C();
    v161 = 0;
  }

  else
  {
    v161 = 1;
  }

  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068160, &qword_24BAB8028);
  v163 = v221;
  (*(*(v162 - 8) + 56))(v221, v161, 1, v162);
  v164 = v212;
  sub_24B8F3208(v211, v212, &qword_27F068090, &qword_24BAB7EA0);
  v165 = v213;
  sub_24B8F3208(v222, v213, &qword_27F068088, &qword_24BAB7E98);
  v166 = *(v215 + 16);
  v167 = v214;
  v166(v214, v225, v216);
  v168 = v217;
  sub_24B8F3208(v228, v217, &qword_27F068068, &qword_24BAB7E78);
  v169 = v218;
  sub_24B8F3208(v226, v218, &qword_27F068058, &qword_24BAB7E68);
  v170 = v219;
  sub_24B8F3208(v227, v219, &qword_27F068028, &qword_24BAB7E38);
  v171 = v220;
  sub_24B8F3208(v163, v220, &qword_27F068020, &qword_24BAB7E30);
  v172 = v206;
  sub_24B8F3208(v164, v206, &qword_27F068090, &qword_24BAB7EA0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068168, &qword_24BAB8030);
  sub_24B8F3208(v165, v172 + v173[12], &qword_27F068088, &qword_24BAB7E98);
  v174 = (v172 + v173[16]);
  v175 = v223;
  *v174 = v224;
  v174[1] = v175;
  v176 = v209;
  v174[2] = v210;
  v174[3] = v176;
  v177 = v167;
  v178 = v216;
  v166((v172 + v173[20]), v177, v216);
  sub_24B8F3208(v168, v172 + v173[24], &qword_27F068068, &qword_24BAB7E78);
  v179 = v172 + v173[28];
  v180 = v201;
  *v179 = v201;
  *(v179 + 8) = 0;
  v181 = v202;
  *(v179 + 16) = v202;
  sub_24B8F3208(v169, v172 + v173[32], &qword_27F068058, &qword_24BAB7E68);
  sub_24B8F3208(v170, v172 + v173[36], &qword_27F068028, &qword_24BAB7E38);
  sub_24B8F3208(v171, v172 + v173[40], &qword_27F068020, &qword_24BAB7E30);
  v182 = v224;
  v223 = v175;
  v183 = v210;
  v184 = v209;
  sub_24B9F9438(v224, v175, v210, v209);
  sub_24B9F9478(v180, 0, v181);
  sub_24B9F9498(v180, 0, v181);
  sub_24B9F94B0(v182, v175, v183, v184);
  sub_24B8F35E4(v221, &qword_27F068020, &qword_24BAB7E30);
  sub_24B8F35E4(v227, &qword_27F068028, &qword_24BAB7E38);
  sub_24B8F35E4(v226, &qword_27F068058, &qword_24BAB7E68);
  sub_24B8F35E4(v228, &qword_27F068068, &qword_24BAB7E78);
  v185 = *(v215 + 8);
  v185(v225, v178);
  sub_24B8F35E4(v222, &qword_27F068088, &qword_24BAB7E98);
  sub_24B8F35E4(v211, &qword_27F068090, &qword_24BAB7EA0);
  sub_24B8F35E4(v220, &qword_27F068020, &qword_24BAB7E30);
  sub_24B8F35E4(v219, &qword_27F068028, &qword_24BAB7E38);
  sub_24B8F35E4(v218, &qword_27F068058, &qword_24BAB7E68);
  sub_24B9F9498(v180, 0, v181);
  sub_24B8F35E4(v217, &qword_27F068068, &qword_24BAB7E78);
  v185(v214, v178);
  sub_24B9F94B0(v224, v223, v183, v184);
  sub_24B8F35E4(v213, &qword_27F068088, &qword_24BAB7E98);
  return sub_24B8F35E4(v212, &qword_27F068090, &qword_24BAB7EA0);
}

uint64_t sub_24B9F00D0@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
  sub_24BAA9A1C();
  v5 = [objc_opt_self() sharedConnection];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isDriverDoNotDisturbModificationsAllowed];
  }

  else
  {
    v7 = 0;
  }

  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  result = sub_24BAA86FC();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 33) = a2 & 1;
  *(a3 + 34) = v7;
  return result;
}

uint64_t sub_24B9F01F4()
{
  if (*v0)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();

    if (v1)
    {
      v2 = [v1 mode];

      v3 = [v2 semanticType];

      if (v3 > 4)
      {
        if (v3 <= 6)
        {
          if (v3 == 5)
          {
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_39;
          }

          goto LABEL_35;
        }

        switch(v3)
        {
          case 7:
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_39;
          case 8:
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

LABEL_39:
            swift_once();
            return sub_24BAA7C2C();
          case 9:
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_39;
        }
      }

      else
      {
        if (v3 > 1)
        {
          if (v3 != 2 && v3 != 3)
          {
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_39;
          }

LABEL_35:
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_39;
        }

        if (!v3)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_39;
        }

        if (v3 == 1)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_39;
        }
      }
    }

    else
    {
    }

    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    sub_24BAA7C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60, &unk_24BAB0490);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24BAAD5B0;

    sub_24B984444();
    v5 = sub_24B8D7188();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 mode];

      v8 = [v7 name];
      v9 = sub_24BAAA01C();
      v11 = v10;
    }

    else
    {

      v9 = 0;
      v11 = 0xE000000000000000;
    }

    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_24B8F6A20();
    *(v4 + 32) = v9;
    *(v4 + 40) = v11;
    v12 = sub_24BAA9FEC();

    return v12;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9F0800@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v76) = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068380, &qword_24BAB82E8);
  MEMORY[0x28223BE20](v74);
  v75 = (&v66 - v5);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068388, &qword_24BAB82F0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v66 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068390, &qword_24BAB82F8);
  MEMORY[0x28223BE20](v73);
  *&v72 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068398, &qword_24BAB8300);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683A0, &qword_24BAB8308);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683A8, &qword_24BAB8310);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  *v23 = sub_24BAA8BCC();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683B0, &qword_24BAB8318);
  sub_24B9F11A8(a1, &v23[*(v24 + 44)]);
  v25 = sub_24BAA90AC();
  sub_24BAA828C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683B8, &qword_24BAB8320) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_24BAA911C();
  sub_24BAA828C();
  v36 = &v23[*(v18 + 44)];
  *v36 = v35;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  if ((sub_24B9F1674() & 1) == 0)
  {
    v45 = 1;
LABEL_10:
    (*(v9 + 56))(v16, v45, 1, v8);
    sub_24B8F3208(v23, v21, &qword_27F0683A8, &qword_24BAB8310);
    sub_24B8F3208(v16, v14, &qword_27F0683A0, &qword_24BAB8308);
    sub_24B8F3208(v21, a3, &qword_27F0683A8, &qword_24BAB8310);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683C0, &unk_24BAB8328);
    sub_24B8F3208(v14, a3 + *(v64 + 48), &qword_27F0683A0, &qword_24BAB8308);
    sub_24B8F35E4(v16, &qword_27F0683A0, &qword_24BAB8308);
    sub_24B8F35E4(v23, &qword_27F0683A8, &qword_24BAB8310);
    sub_24B8F35E4(v14, &qword_27F0683A0, &qword_24BAB8308);
    return sub_24B8F35E4(v21, &qword_27F0683A8, &qword_24BAB8310);
  }

  if (v76)
  {
    v41 = [objc_opt_self() currentDevice];
    v42 = [v41 userInterfaceIdiom];

    if (v42)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683F8, &qword_24BAB8340);
      v44 = v77;
      (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
    }

    else
    {
      v57 = a1[12];
      v78 = *(a1 + 5);
      *&v79 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30, &qword_24BAB3090);
      sub_24BAA9A1C();
      v72 = v84;
      v76 = v9;
      v59 = v85;
      v58 = v86;
      type metadata accessor for ActivityConfigViewModel(0);
      sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
      v60 = sub_24BAA86FC();
      LOBYTE(v78) = 0;
      v61 = v75;
      *v75 = v60;
      v61[1] = v62;
      v61[2] = sub_24BA85AB0;
      v61[3] = 0;
      *(v61 + 32) = 0;
      *(v61 + 33) = v84;
      *(v61 + 9) = *(&v84 + 3);
      *(v61 + 5) = v72;
      v61[7] = v59;
      v61[8] = v58;
      v9 = v76;
      swift_storeEnumTagMultiPayload();
      sub_24B9FA588();
      sub_24B9FA670();
      v44 = v77;
      sub_24BAA8D0C();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683F8, &qword_24BAB8340);
      (*(*(v63 - 8) + 56))(v44, 0, 1, v63);
    }

    goto LABEL_9;
  }

  v76 = v9;
  v67 = v8;
  v68 = a3;
  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  v46 = sub_24BAA86FC();
  v48 = *a1;
  if (*a1)
  {
    v49 = v46;
    v50 = v47;

    v51 = sub_24BAA813C();
    *&v84 = v49;
    *(&v84 + 1) = v50;
    v85 = v51;
    v86 = v48;
    v82 = 0x736E6F6974706FLL;
    v83 = 0xE700000000000000;
    v52 = a1[12];
    v80 = *(a1 + 5);
    v81 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30, &qword_24BAB3090);
    sub_24BAA9A1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683C8, &qword_24BAB8338);
    sub_24B9FA47C();
    v53 = v69;
    sub_24BAA849C();
    sub_24B8F384C(&qword_27F0683E0, &qword_27F068388, &qword_24BAB82F0, MEMORY[0x277CDD938]);
    v54 = v72;
    v55 = v71;
    sub_24BAA94DC();
    (*(v70 + 8))(v53, v55);
    sub_24B8F3208(v54, v75, &qword_27F068390, &qword_24BAB82F8);
    swift_storeEnumTagMultiPayload();
    sub_24B9FA588();
    sub_24B9FA670();
    v44 = v77;
    sub_24BAA8D0C();
    sub_24B8F35E4(v54, &qword_27F068390, &qword_24BAB82F8);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0683F8, &qword_24BAB8340);
    (*(*(v56 - 8) + 56))(v44, 0, 1, v56);
    a3 = v68;
    v8 = v67;
    v9 = v76;
LABEL_9:
    sub_24B90294C(v44, v16, &qword_27F068398, &qword_24BAB8300);
    v45 = 0;
    goto LABEL_10;
  }

  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9F11A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068400, &qword_24BAB8348);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068408, &qword_24BAB8350);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = *(a1 + 72);
  LOBYTE(v50) = *(a1 + 64);
  *(&v50 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068378, &qword_24BAB82E0);
  sub_24BAA9A1C();
  v46 = v56;
  v45 = v57;
  v44 = v58;
  v14 = *(a1 + 144);
  LOBYTE(v50) = *(a1 + 136);
  *(&v50 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
  sub_24BAA9A1C();
  v43 = v56;
  v49 = v57;
  v42 = v58;
  v15 = *(a1 + 160);
  LOBYTE(v50) = *(a1 + 152);
  *(&v50 + 1) = v15;
  sub_24BAA9A1C();
  v48 = v56;
  v47 = v57;
  v40 = v58;
  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  v16 = sub_24BAA86FC();
  v18 = v17;
  if (sub_24B9F1674())
  {
    sub_24BAA9BCC();
    v19 = sub_24BAA989C();
    KeyPath = swift_getKeyPath();
    v21 = &v6[*(v3 + 36)];
    *v21 = KeyPath;
    v21[1] = v19;
    sub_24B90294C(v6, v12, &qword_27F068400, &qword_24BAB8348);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v4 + 56))(v12, v22, 1, v3);
  sub_24B8F3208(v12, v10, &qword_27F068408, &qword_24BAB8350);
  *&v50 = v16;
  *(&v50 + 1) = v18;
  v23 = v46;
  v39 = v18;
  v24 = v45;
  *&v51 = v46;
  *(&v51 + 1) = v45;
  v25 = v44;
  LOBYTE(v52) = v44;
  *(&v52 + 1) = *v70;
  DWORD1(v52) = *&v70[3];
  v26 = v43;
  v37 = v12;
  *(&v52 + 1) = v43;
  *&v53 = v49;
  v27 = v42;
  BYTE8(v53) = v42;
  *(&v53 + 9) = *v69;
  HIDWORD(v53) = *&v69[3];
  *&v54 = v48;
  *(&v54 + 1) = v47;
  v38 = v16;
  v28 = v40;
  v55 = v40;
  v30 = v52;
  v29 = v53;
  v31 = v54;
  v32 = v41;
  *(v41 + 80) = v40;
  v32[3] = v29;
  v32[4] = v31;
  v33 = v50;
  v32[1] = v51;
  v32[2] = v30;
  *v32 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068410, &qword_24BAB8358);
  sub_24B8F3208(v10, v32 + *(v34 + 48), &qword_27F068408, &qword_24BAB8350);
  sub_24B9FA6C4(&v50, &v56);
  sub_24B8F35E4(v37, &qword_27F068408, &qword_24BAB8350);
  sub_24B8F35E4(v10, &qword_27F068408, &qword_24BAB8350);
  v56 = v38;
  v57 = v39;
  v58 = v23;
  v59 = v24;
  v60 = v25;
  *v61 = *v70;
  *&v61[3] = *&v70[3];
  v62 = v26;
  v63 = v49;
  v64 = v27;
  *v65 = *v69;
  *&v65[3] = *&v69[3];
  v66 = v48;
  v67 = v47;
  v68 = v28;
  return sub_24B9FA6FC(&v56);
}

uint64_t sub_24B9F1674()
{
  if (*v0)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 configuration];
      v4 = [v3 applicationConfigurationType];

      if (v4 != 2)
      {
        return 1;
      }
    }

    else
    {
    }

    sub_24B984444();
    v6 = sub_24B8D7188();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 configuration];
      v9 = [v8 senderConfigurationType];

      return v9 != 2;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9F1818()
{
  if (*v0)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 configuration];
      v4 = [v3 senderConfigurationType];
    }

    else
    {
      v4 = 2;
    }

    sub_24B984444();
    v5 = sub_24B8D7188();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 configuration];
      v8 = [v7 applicationConfigurationType];

      v9 = v8 == 0;
      v10 = v4 == 1;
      if (v4 == 1 && !v8 || (v11 = v4 == 0, v12 = v8 == 1, !v4) && v8 == 1)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_21;
      }
    }

    else
    {

      v12 = 0;
      v9 = 0;
      v10 = v4 == 1;
      v11 = v4 == 0;
    }

    if (v10 || v12)
    {
      if (qword_27F063110 != -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v11 || v9)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_21;
      }

      if (qword_27F063110 != -1)
      {
LABEL_21:
        swift_once();
      }
    }

    return sub_24BAA7C2C();
  }

  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9F1B18()
{
  if (*v0)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 configuration];
      v4 = [v3 senderConfigurationType];
    }

    else
    {
      v4 = 2;
    }

    sub_24B984444();
    v5 = sub_24B8D7188();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 configuration];
      v8 = [v7 applicationConfigurationType];

      if (v4 == 1 && v8 == 1)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_29;
      }

      if (!(v4 | v8))
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_29;
      }

      if (v4 == 2)
      {
        if (v8 != 1 && v8 != 2)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_29;
        }

        goto LABEL_24;
      }

      if (v8 != 2)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_29;
      }

      if (v4 == 1)
      {
LABEL_22:
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_29;
      }
    }

    else
    {

      if (v4 == 1)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

LABEL_29:
    swift_once();
    return sub_24BAA7C2C();
  }

  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9F1F14@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682D0, &qword_24BAB81E0);
  MEMORY[0x28223BE20](v66);
  v60 = &v56 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682D8, &qword_24BAB81E8);
  MEMORY[0x28223BE20](v68);
  v64 = &v56 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682E0, &qword_24BAB81F0);
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682E8, &qword_24BAB81F8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v56 - v9;
  v10 = type metadata accessor for RootActivityConfigView(0);
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682F0, &qword_24BAB8200);
  MEMORY[0x28223BE20](v59);
  v56 = &v56 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682F8, &qword_24BAB8208);
  v62 = *(v63 - 8);
  v17 = MEMORY[0x28223BE20](v63);
  v61 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = &v56 - v19;
  sub_24BAA8B0C();
  v20 = sub_24BAA93BC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v74 = v24 & 1;
  *&v76 = v20;
  *(&v76 + 1) = v22;
  LOBYTE(v77) = v24 & 1;
  *(&v77 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068300, &qword_24BAB8210);
  sub_24B9FB06C(&qword_27F068308, &qword_27F068300, &qword_24BAB8210);
  sub_24BAA95EC();
  v81[2] = v78;
  v81[3] = v79;
  v81[4] = v80;
  v81[0] = v76;
  v81[1] = v77;
  sub_24B8F35E4(v81, &qword_27F068300, &qword_24BAB8210);
  v27 = *(v2 + 160);
  v74 = *(v2 + 152);
  v75 = v27;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
  sub_24BAA9A1C();
  sub_24B9F9B94(v2, v15);
  v28 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v29 = swift_allocObject();
  sub_24B9F9C08(v15, v29 + v28);
  sub_24B9F9B94(v2, v13);
  v30 = swift_allocObject();
  sub_24B9F9C08(v13, v30 + v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068310, &qword_24BAB8218);
  sub_24B9F9F18();
  sub_24B8F384C(&qword_27F068320, &qword_27F068310, &qword_24BAB8218, MEMORY[0x277CDD978]);
  v31 = v2;
  v32 = v56;
  sub_24BAA968C();

  v33 = v60;
  sub_24B8F35E4(v32, &qword_27F0682F0, &qword_24BAB8200);
  sub_24B9F77A0(v33);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v76 = sub_24BAA7C2C();
  *(&v76 + 1) = v34;
  sub_24B8F5E3C();
  v35 = sub_24BAA93CC();
  v37 = v36;
  v39 = v38;
  v40 = sub_24B9F9FF4();
  v41 = v66;
  sub_24BAA951C();
  sub_24B900910(v35, v37, v39 & 1);

  sub_24B8F35E4(v33, &qword_27F0682D0, &qword_24BAB81E0);
  v42 = *(v31 + 144);
  v74 = *(v31 + 136);
  v75 = v42;
  sub_24BAA9A1C();
  *&v76 = v41;
  *(&v76 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v65;
  sub_24BAA84BC();
  sub_24B8F384C(&qword_27F068360, &qword_27F0682E0, &qword_24BAB81F0, MEMORY[0x277CDD938]);
  v44 = v69;
  v45 = v70;
  sub_24BAA95EC();
  (*(v67 + 8))(v43, v45);
  v46 = v62;
  v47 = *(v62 + 16);
  v48 = v61;
  v49 = v73;
  v50 = v63;
  v47(v61, v73, v63);
  v51 = v71;
  sub_24B8F3208(v44, v71, &qword_27F0682E8, &qword_24BAB81F8);
  v52 = v72;
  v47(v72, v48, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068368, &qword_24BAB8230);
  sub_24B8F3208(v51, &v52[*(v53 + 48)], &qword_27F0682E8, &qword_24BAB81F8);
  sub_24B8F35E4(v44, &qword_27F0682E8, &qword_24BAB81F8);
  v54 = *(v46 + 8);
  v54(v49, v50);
  sub_24B8F35E4(v51, &qword_27F0682E8, &qword_24BAB81F8);
  return (v54)(v48, v50);
}

uint64_t sub_24B9F2918()
{
  if (!*v0)
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v1 = sub_24B8D7188();

  if (!v1)
  {

    return 0;
  }

  v2 = [v1 mode];

  v3 = [v2 semanticType];

  if (v3 != 2)
  {
    return 0;
  }

  v4 = [objc_opt_self() sharedConnection];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = [v4 isDriverDoNotDisturbModificationsAllowed];

  return v6 ^ 1;
}

uint64_t sub_24B9F2A6C()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81BC();

    if (v5 == 0xD000000000000023 && 0x800000024BAC1A50 == v6)
    {

LABEL_6:
      v2 = [objc_opt_self() currentDevice];
      v3 = [v2 userInterfaceIdiom];

      return v3 == 0;
    }

    v1 = sub_24BAAA78C();

    if (v1)
    {
      goto LABEL_6;
    }

    return 1;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9F2BF0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068210, &qword_24BAB8100);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068218, &qword_24BAB8108);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - v8;
  v9 = sub_24BAA8ABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068220, &qword_24BAB8110);
  MEMORY[0x28223BE20](v13);
  v15 = (&v47 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068228, &qword_24BAB8118);
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  sub_24BA69D64(v15);
  v21 = sub_24BAA911C();
  sub_24BAA828C();
  v22 = v15 + *(v13 + 36);
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  (*(v10 + 104))(v12, *MEMORY[0x277CE00F0], v9);
  sub_24B9F9A7C();
  sub_24BAA94AC();
  (*(v10 + 8))(v12, v9);
  sub_24B8F35E4(v15, &qword_27F068220, &qword_24BAB8110);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81BC();

    if (v57 == 0xD00000000000001ALL && 0x800000024BAC1A30 == v58)
    {

      v27 = v54;
      v28 = v55;
    }

    else
    {
      v29 = sub_24BAAA78C();

      v27 = v54;
      v28 = v55;
      if ((v29 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v30 = [objc_opt_self() currentDevice];
    v31 = [v30 userInterfaceIdiom];

    if (v31 != 1)
    {
      v34 = sub_24BAA8BCC();
      v35 = v48;
      *v48 = v34;
      v35[1] = 0;
      *(v35 + 16) = 0;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068248, &qword_24BAB8128);
      sub_24B9F3218(v35 + *(v36 + 44));
      v37 = v35;
      v33 = v52;
      sub_24B90294C(v37, v52, &qword_27F068210, &qword_24BAB8100);
      v32 = 0;
      goto LABEL_9;
    }

LABEL_7:
    v32 = 1;
    v33 = v52;
LABEL_9:
    (*(v53 + 56))(v33, v32, 1, v27);
    v39 = v49;
    v38 = v50;
    v40 = *(v50 + 16);
    v41 = v51;
    v40(v49, v20, v51);
    v42 = v28;
    sub_24B8F3208(v33, v28, &qword_27F068218, &qword_24BAB8108);
    v43 = v56;
    v40(v56, v39, v41);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068240, &qword_24BAB8120);
    sub_24B8F3208(v42, &v43[*(v44 + 48)], &qword_27F068218, &qword_24BAB8108);
    sub_24B8F35E4(v33, &qword_27F068218, &qword_24BAB8108);
    v45 = *(v38 + 8);
    v45(v20, v41);
    sub_24B8F35E4(v42, &qword_27F068218, &qword_24BAB8108);
    return (v45)(v39, v41);
  }

  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9F3218@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068250, &qword_24BAB8130);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-v7];
  sub_24BAA9BCC();
  v9 = &v8[*(v3 + 44)];
  v9[32] = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  LOBYTE(v3) = sub_24BAA90AC();
  LOBYTE(v25) = 0;
  v24[0] = 1;
  v10 = sub_24BAA911C();
  sub_24BAA828C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v33[0]) = 0;
  sub_24B8F3208(v8, v6, &qword_27F068250, &qword_24BAB8130);
  sub_24B8F3208(v6, a1, &qword_27F068250, &qword_24BAB8130);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068258, &qword_24BAB8138) + 48);
  *&v25 = sub_24B941C80;
  *(&v25 + 1) = 0;
  LOBYTE(v26) = 0;
  BYTE8(v26) = v3;
  v27 = 0u;
  v28 = 0u;
  LOBYTE(v29) = 1;
  BYTE8(v29) = v10;
  *&v30 = v12;
  *(&v30 + 1) = v14;
  *&v31 = v16;
  *(&v31 + 1) = v18;
  v32 = 0;
  *(v19 + 112) = 0;
  v20 = v26;
  *v19 = v25;
  *(v19 + 16) = v20;
  v21 = v30;
  *(v19 + 64) = v29;
  *(v19 + 80) = v21;
  *(v19 + 96) = v31;
  v22 = v28;
  *(v19 + 32) = v27;
  *(v19 + 48) = v22;
  sub_24B8F3208(&v25, v33, &qword_27F068260, &qword_24BAB8140);
  sub_24B8F35E4(v8, &qword_27F068250, &qword_24BAB8130);
  v33[0] = sub_24B941C80;
  v33[1] = 0;
  v34 = 0;
  v35 = v3;
  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  v39 = v10;
  v40 = v12;
  v41 = v14;
  v42 = v16;
  v43 = v18;
  v44 = 0;
  sub_24B8F35E4(v33, &qword_27F068260, &qword_24BAB8140);
  return sub_24B8F35E4(v6, &qword_27F068250, &qword_24BAB8130);
}

void sub_24B9F34CC(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA7C2C();
  v4 = v3;
  v5 = sub_24B9F3620();
  v7 = v6;
  v8 = sub_24BAA90AC();
  v9 = sub_24BAA90DC();
  sub_24BAA828C();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0xD000000000000015;
  *(a1 + 40) = 0x800000024BAC38D0;
  *(a1 + 48) = 0xD000000000000018;
  *(a1 + 56) = 0x800000024BAC38F0;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a1 + 136) = v12;
  *(a1 + 144) = v13;
  *(a1 + 152) = 0;
}

uint64_t sub_24B9F3620()
{
  if (*v0)
  {
    if ((sub_24B9A18C0() & 1) != 0 || sub_24B9A1468())
    {

      sub_24B984444();
      v1 = sub_24B8D7188();

      if (v1)
      {
        v2 = [v1 mode];

        v3 = [v2 semanticType];

        if (v3 == 2)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_13;
        }
      }

      else
      {
      }

      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

LABEL_13:
    swift_once();
    return sub_24BAA7C2C();
  }

  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

double sub_24B9F3864(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);

  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DFC94(v1);

  return result;
}

uint64_t sub_24B9F3924@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for RootActivityConfigView(0);
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130, &qword_24BAB81C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00, &qword_24BAAE7D0);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682B8, &qword_24BAB81C8);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068148, &unk_24BAB8010);
  v55 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v50 = &v41 - v15;
  v16 = *a1;
  if (*a1)
  {

    v17 = sub_24B9996A0();

    if (v17 == 2 || (v17 & 1) == 0)
    {
      v38 = v56;
      v39 = *(v55 + 56);

      return v39(v38, 1, 1, v14);
    }

    else
    {
      v18 = *(v16 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_deleteActivityButtonTitle + 8);
      v57 = *(v16 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_deleteActivityButtonTitle);
      v58 = v18;

      sub_24BAA824C();
      v19 = sub_24BAA826C();
      (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
      sub_24B9F9B94(a1, &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = (*(v49 + 80) + 16) & ~*(v49 + 80);
      v21 = swift_allocObject();
      sub_24B9F9C08(&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
      sub_24B8F5E3C();
      sub_24BAA9A6C();
      v22 = *(v16 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_deleteActivityConfirmation + 8);
      v57 = *(v16 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_deleteActivityConfirmation);
      v58 = v22;

      v45 = sub_24BAA93CC();
      v48 = v24;
      v49 = v23;
      v26 = v25;
      v27 = a1[3];
      v61 = *(a1 + 16);
      v62 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
      v28 = sub_24BAA9A1C();
      v46 = &v41;
      v47 = v14;
      v44 = v59;
      MEMORY[0x28223BE20](v28);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068150, &qword_24BAB8020);
      v43 = sub_24B8F384C(&qword_27F063980, &qword_27F068B00, &qword_24BAAE7D0, MEMORY[0x277CDF028]);
      v40 = sub_24B8F384C(&qword_27F068158, &qword_27F068150, &qword_24BAB8020, MEMORY[0x277CE14C0]);
      v29 = v52;
      v30 = v10;
      v31 = v26;
      v32 = v45;
      v33 = v49;
      sub_24BAA95AC();

      sub_24B900910(v32, v33, v31 & 1);

      (*(v51 + 8))(v30, v29);
      v57 = v29;
      v58 = v42;
      v59 = v43;
      v60 = v40;
      swift_getOpaqueTypeConformance2();
      v34 = v50;
      v35 = v54;
      sub_24BAA94DC();
      (*(v53 + 8))(v13, v35);
      v36 = v56;
      sub_24B90294C(v34, v56, &qword_27F068148, &unk_24BAB8010);
      return (*(v55 + 56))(v36, 0, 1, v47);
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9F4068@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a1;
  v50 = a2;
  v2 = type metadata accessor for RootActivityConfigView(0);
  v44 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = v3;
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064180, &unk_24BAB8A10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v40 - v7;
  v40 = sub_24BAA864C();
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130, &qword_24BAB81C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00, &qword_24BAAE7D0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682C0, &qword_24BAB81D0);
  v41 = *(v18 - 8);
  v42 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v43 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v51 = &v40 - v21;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v52 = sub_24BAA7C2C();
  v53 = v22;
  sub_24BAA825C();
  v23 = sub_24BAA826C();
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 0, 1, v23);
  sub_24B8F5E3C();
  sub_24BAA9A6C();
  sub_24BAA863C();
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00, &qword_24BAAE7D0, MEMORY[0x277CDF028]);
  sub_24BAA954C();
  (*(v8 + 8))(v10, v40);
  v25 = *(v15 + 8);
  v25(v17, v14);
  sub_24BAA824C();
  v24(v13, 0, 1, v23);
  v26 = v46;
  sub_24B9F9B94(v47, v46);
  v27 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v28 = swift_allocObject();
  sub_24B9F9C08(v26, v28 + v27);
  sub_24BAA9A4C();
  v29 = v48;
  sub_24BAA94DC();
  v25(v17, v14);
  v31 = v41;
  v30 = v42;
  v32 = *(v41 + 16);
  v33 = v43;
  v34 = v51;
  v32(v43, v51, v42);
  v35 = v49;
  sub_24B8F3208(v29, v49, &qword_27F064180, &unk_24BAB8A10);
  v36 = v50;
  v32(v50, v33, v30);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682C8, &qword_24BAB81D8);
  sub_24B8F3208(v35, &v36[*(v37 + 48)], &qword_27F064180, &unk_24BAB8A10);
  sub_24B8F35E4(v29, &qword_27F064180, &unk_24BAB8A10);
  v38 = *(v31 + 8);
  v38(v34, v30);
  sub_24B8F35E4(v35, &qword_27F064180, &unk_24BAB8A10);
  return (v38)(v33, v30);
}

void sub_24B9F46E0(uint64_t *a1)
{
  v2 = sub_24BAA89FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    sub_24BAA86DC();
    __break(1u);
    return;
  }

  sub_24B999778();

  v7 = a1[21];
  v6 = a1[22];
  if (*(a1 + 184) == 1)
  {
    v8.n128_f64[0] = sub_24B9A2FB4(a1[21], a1[22]);
    if (!v7)
    {
      return;
    }
  }

  else
  {

    sub_24BAAA2BC();
    v9 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    v10 = sub_24B9F9BFC(v7, v6, 0);
    (*(v3 + 8))(v5, v2, v10);
    v7 = v11[0];
    v6 = v11[1];
    if (!v11[0])
    {
      return;
    }
  }

  v7(v8);
  sub_24B926B78(v7, v6);
}

uint64_t sub_24B9F48F8@<X0>(uint64_t a3@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  result = sub_24BAA93CC();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_24B9F49C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA8EDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0681A0, &unk_24BAB8050);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-v10];
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068268, &qword_24BAB8148);
  sub_24B8F384C(&qword_27F068270, &qword_27F068268, &qword_24BAB8148, MEMORY[0x277CE14C0]);
  sub_24BAA92CC();
  sub_24BAA8ECC();
  sub_24B8F384C(&qword_27F0681A8, &qword_27F0681A0, &unk_24BAB8050, MEMORY[0x277CDE5A0]);
  sub_24BAA94EC();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  KeyPath = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068198, &qword_24BAB8048) + 36));
  *v13 = KeyPath;
  v13[1] = 0x3FE0000000000000;
  v14 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068178, &qword_24BAB8040);
  v16 = a2 + *(result + 36);
  *v16 = v14;
  *(v16 + 8) = 1;
  *(v16 + 16) = 0;
  return result;
}

uint64_t sub_24B9F4C6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068278, &qword_24BAB8180);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068280, &qword_24BAB8188);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  *v19 = sub_24BAA8AAC();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068288, &qword_24BAB8190);
  sub_24B9F4F94(a1, &v19[*(v20 + 44)]);
  *v13 = sub_24BAA8AAC();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068290, &qword_24BAB8198);
  sub_24B9F54C8(a1, &v13[*(v21 + 44)]);
  *v11 = sub_24BAA8AAC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_24B9F5868(a1, &v11[*(v21 + 44)]);
  v27 = v17;
  sub_24B8F3208(v19, v17, &qword_27F068280, &qword_24BAB8188);
  sub_24B8F3208(v13, v8, &qword_27F068278, &qword_24BAB8180);
  v22 = v28;
  sub_24B8F3208(v11, v28, &qword_27F068278, &qword_24BAB8180);
  v23 = v29;
  sub_24B8F3208(v17, v29, &qword_27F068280, &qword_24BAB8188);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068298, &qword_24BAB81A0);
  sub_24B8F3208(v8, v23 + *(v24 + 48), &qword_27F068278, &qword_24BAB8180);
  sub_24B8F3208(v22, v23 + *(v24 + 64), &qword_27F068278, &qword_24BAB8180);
  sub_24B8F35E4(v11, &qword_27F068278, &qword_24BAB8180);
  sub_24B8F35E4(v13, &qword_27F068278, &qword_24BAB8180);
  sub_24B8F35E4(v19, &qword_27F068280, &qword_24BAB8188);
  sub_24B8F35E4(v22, &qword_27F068278, &qword_24BAB8180);
  sub_24B8F35E4(v8, &qword_27F068278, &qword_24BAB8180);
  return sub_24B8F35E4(v27, &qword_27F068280, &qword_24BAB8188);
}

uint64_t sub_24B9F4F94@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  *&v40 = sub_24BAA7DCC();
  *&v39 = *(v40 - 8);
  v3 = MEMORY[0x28223BE20](v40);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = sub_24BAA8F7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682A0, &qword_24BAB81A8);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v47 = xmmword_24BAB7CF0;
  LOBYTE(v48) = 0;
  *(&v48 + 1) = MEMORY[0x277D84F90];
  sub_24BAA8F6C();
  sub_24BAA94EC();
  (*(v9 + 8))(v11, v8);
  if (*a1)
  {

    sub_24B984444();

    v18 = sub_24B8D7188();

    if (v18)
    {
      v19 = [v18 lastModified];

      sub_24BAA7DAC();
      v20 = v39;
      v21 = v40;
      (*(v39 + 32))(v7, v5, v40);
      v22 = objc_opt_self();
      v23 = sub_24BAA7D8C();
      v24 = [v22 localizedStringFromDate:v23 dateStyle:2 timeStyle:2];

      v25 = sub_24BAAA01C();
      v27 = v26;

      *&v43 = v25;
      *(&v43 + 1) = v27;
      v44 = 0;
      v45 = MEMORY[0x277D84F90];
      v46 = 0;
      sub_24BAA8D0C();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v43 = xmmword_24BAB7D00;
      v44 = 0;
      v45 = MEMORY[0x277D84F90];
      v46 = 1;
      sub_24BAA8D0C();
    }

    v39 = v47;
    v40 = v48;
    v28 = v49;
    v29 = *(v13 + 16);
    v30 = v41;
    v29(v41, v17, v12);
    v31 = v42;
    v29(v42, v30, v12);
    v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682B0, &qword_24BAB81B8) + 48)];
    v34 = v39;
    v33 = v40;
    *v32 = v39;
    *(v32 + 1) = v33;
    v32[32] = v28;
    v35 = v34;
    LOBYTE(v31) = v33;
    v36 = *(&v33 + 1);
    sub_24B95CAD0(v34, *(&v34 + 1), v33, *(&v33 + 1));
    v37 = *(v13 + 8);
    v37(v17, v12);
    sub_24B95CB60(v35, *(&v35 + 1), v31, v36);
    return (v37)(v30, v12);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9F54C8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24BAA8F7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682A0, &qword_24BAB81A8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v25 = xmmword_24BAB7D10;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  sub_24BAA8F6C();
  sub_24BAA94EC();
  (*(v5 + 8))(v7, v4);
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  if (*a1)
  {
    v15 = 0xEC000000656D202FLL;
    v16 = 0x2074657320746F6ELL;

    sub_24B984444();

    v17 = sub_24B8D7188();

    if (v17)
    {
      v18 = [v17 lastModifiedByDeviceID];

      if (v18)
      {
        v16 = sub_24BAAA01C();
        v15 = v19;
      }
    }

    MEMORY[0x24C250160](v16, v15);

    v20 = v25;
    v21 = *(v9 + 16);
    v21(v12, v14, v8);
    v21(a2, v12, v8);
    v22 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682A8, &qword_24BAB81B0) + 48)];
    *v22 = v20;
    v22[16] = 0;
    *(v22 + 3) = MEMORY[0x277D84F90];
    sub_24B8F319C(v20, *(&v20 + 1), 0);
    v23 = *(v9 + 8);

    v23(v14, v8);
    sub_24B900910(v20, *(&v20 + 1), 0);

    return (v23)(v12, v8);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9F5868@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24BAA8F7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682A0, &qword_24BAB81A8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v28 = xmmword_24BAB7D20;
  LOBYTE(v29) = 0;
  v30 = MEMORY[0x277D84F90];
  sub_24BAA8F6C();
  sub_24BAA94EC();
  (*(v5 + 8))(v7, v4);
  if (*a1)
  {

    sub_24B984444();

    v15 = sub_24B8D7188();

    if (v15)
    {
      [v15 lastModifiedByVersion];
      v27 = v28;
      v16 = v29;

      v17 = v27;
    }

    else
    {
      v17 = *MEMORY[0x277D05858];
      v16 = *(MEMORY[0x277D05858] + 16);
    }

    v28 = v17;
    v29 = v16;
    v18 = DNDStringFromOperatingSystemVersion();
    v19 = sub_24BAAA01C();
    v21 = v20;

    strcpy(&v28, "DoNotDisturb-");
    HIWORD(v28) = -4864;
    MEMORY[0x24C250160](v19, v21);

    v22 = v28;
    v23 = *(v9 + 16);
    v23(v12, v14, v8);
    v23(a2, v12, v8);
    v24 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682A8, &qword_24BAB81B0) + 48)];
    *v24 = v22;
    v24[16] = 0;
    *(v24 + 3) = MEMORY[0x277D84F90];
    sub_24B8F319C(v22, *(&v22 + 1), 0);
    v25 = *(v9 + 8);

    v25(v14, v8);
    sub_24B900910(v22, *(&v22 + 1), 0);

    return (v25)(v12, v8);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24B9F5C34@<D0>(uint64_t a2@<X8>)
{
  sub_24BAA978C();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_24BAA933C();
  v6 = v5;
  v8 = v7;

  v9 = sub_24BAA938C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24B900910(v4, v6, v8 & 1);

  *a2 = xmmword_24BAB7D30;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13 & 1;
  *(a2 + 56) = v15;
  sub_24B8F319C(0, 0xE000000000000000, 0);

  sub_24B8F319C(v9, v11, v13 & 1);

  sub_24B900910(v9, v11, v13 & 1);

  sub_24B900910(0, 0xE000000000000000, 0);

  return result;
}

uint64_t sub_24B9F5DA4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0, &unk_24BAB07C0);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068510, &unk_24BAB88D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v22 = sub_24BAA7C2C();
  v23 = v10;
  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  sub_24B8F5E3C();
  sub_24BAA9AFC();
  if (a1)
  {

    sub_24B984444();
    v11 = sub_24B8D7188();

    if (v11)
    {
      v12 = [v11 mode];

      v13 = [v12 semanticType];

      v14 = v13 == 9;
    }

    else
    {

      v14 = 0;
    }

    KeyPath = swift_getKeyPath();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v19 + 32))(v9, v6, v20);
    v17 = &v9[*(v7 + 36)];
    *v17 = KeyPath;
    v17[1] = sub_24B90CF38;
    v17[2] = v16;
    sub_24B9FB34C();
    sub_24BAA94DC();
    return sub_24B8F35E4(v9, &qword_27F068510, &unk_24BAB88D8);
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24B9F614C()
{
  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8E11F4(sub_24B9FB464);

  return result;
}

uint64_t sub_24B9F6214()
{
  sub_24B8F5E3C();

  sub_24BAA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0684F8, &qword_24BAB88D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639E0, &qword_24BAB8880);
  sub_24B9FB290();
  sub_24B9FB06C(&qword_27F0639D8, &qword_27F0639E0, &qword_24BAB8880);
  return sub_24BAA9C4C();
}

uint64_t sub_24B9F632C@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0, &qword_24BAB0FA0);
  sub_24BAA9B8C();
  type metadata accessor for ActivityConfigViewModel(0);
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
  v3 = sub_24BAA86FC();
  v5 = v4;
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for FocusNameAndAppearanceView(0);
  *(a2 + v7[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  swift_storeEnumTagMultiPayload();
  *(a2 + v7[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478, &qword_24BAB6540);
  swift_storeEnumTagMultiPayload();
  *a2 = v3;
  a2[1] = v5;
  v8 = a2 + v7[6];
  *v8 = v19;
  *(v8 + 1) = v20;
  v8[16] = v21;
  LOBYTE(v3) = sub_24BAA90BC();
  sub_24BAA828C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068440, &qword_24BAB8790);
  v18 = a2 + *(result + 36);
  *v18 = v3;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  return result;
}

uint64_t sub_24B9F64F0@<X0>(uint64_t *a2@<X8>)
{
  v11 = *v2;
  *v12 = v2[1];
  *&v12[15] = *(v2 + 31);
  *a2 = sub_24BAA9D1C();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068430, &qword_24BAB8708);
  sub_24B9F632C((a2 + *(v5 + 44)));
  v6 = [objc_opt_self() systemGroupedBackgroundColor];
  v7 = sub_24BAA973C();
  v8 = sub_24BAA90BC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068438, &unk_24BAB8710);
  v10 = a2 + *(result + 36);
  *v10 = v7;
  v10[8] = v8;
  return result;
}

uint64_t sub_24B9F65B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (*v1)
  {

    sub_24B984444();
    v4 = sub_24B8D7188();

    if (v4)
    {
      v5 = [v4 mode];

      v6 = [v5 semanticType];

      v7 = v6 == 2;
    }

    else
    {

      v7 = 0;
    }

    v8 = swift_allocObject();
    v9 = *(v2 + 48);
    *(v8 + 48) = *(v2 + 32);
    *(v8 + 64) = v9;
    *(v8 + 80) = *(v2 + 64);
    *(v8 + 96) = *(v2 + 80);
    v10 = *(v2 + 16);
    *(v8 + 16) = *v2;
    *(v8 + 32) = v10;
    *(v8 + 97) = v7;
    *(v8 + 104) = xmmword_24BAB7D40;
    sub_24B9FA6C4(v2, v21);
    v11 = sub_24BAA8AAC();
    v12 = sub_24BAA8BDC();
    *a1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0684C0, &qword_24BAB8898);
    v14 = a1 + v13[9];
    result = swift_getKeyPath();
    *v14 = result;
    v14[8] = 0;
    v16 = a1 + v13[10];
    *v16 = 0;
    v16[8] = 0;
    v17 = a1 + v13[11];
    *v17 = 0;
    v17[8] = 0;
    v18 = (a1 + v13[12]);
    *v18 = sub_24B9FB1D0;
    v18[1] = v8;
    v19 = a1 + v13[13];
    *v19 = v11;
    v19[8] = 0;
    v20 = a1 + v13[14];
    *v20 = v12;
    v20[8] = 0;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}