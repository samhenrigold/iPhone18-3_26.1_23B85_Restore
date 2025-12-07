uint64_t sub_21BD79520()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BD79614, v4, v3);
}

uint64_t sub_21BD79614()
{
  v3 = (*MEMORY[0x277D08060] + MEMORY[0x277D08060]);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21BD796C0;

  return v3(1);
}

uint64_t sub_21BD796C0(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
    v9 = sub_21BD79864;
  }

  else
  {
    sub_21BBBF0B4(a1, a2);
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
    v9 = sub_21BD797FC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BD797FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD79864()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];

  sub_21BE261BC();
  v5 = v1;
  sub_21BC51D50(v1, 0xD000000000000041, 0x800000021BE60610);

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BD7993C()
{

  v1 = qword_280BD6CD8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6888, &qword_21BE35808);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_21BD799B8()
{

  v1 = qword_280BD6CD8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6888, &qword_21BE35808);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD79A94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BD789EC(a1, v1);
}

double sub_21BD79B30@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21BD79BB8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD79C54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD78D88();
}

uint64_t sub_21BD79D58(uint64_t a1, uint64_t (*a2)(uint64_t *))
{

  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v3, &v5);
  return a2(&v5);
}

void _s14FamilyCircleUI23SettingsAnalyticsLoggerO21logOptionUpdatedEvent24ageRangeSharingViewModel5stateyAA03AgelmnO0C_So05FAAgeL11GlobalStateVtFZ_0(uint64_t a1, unsigned int a2)
{

  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v3, &v5);
  if (a2 >= 4)
  {
    type metadata accessor for AgeRangeGlobalState(0);
    sub_21BE299DC();
    __break(1u);
  }

  else
  {
    LOBYTE(v4) = 0x2010003u >> (8 * a2);
    sub_21BD5E000(&v5, &v4);
  }
}

void _s14FamilyCircleUI23SettingsAnalyticsLoggerO18logNavigationEvent24ageRangeSharingViewModel4viewyAA03AgeklmN0C_AA0pkdM0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;

  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v4, &v12);
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  if (v3 > 1)
  {
    v10 = 2;
  }

  else
  {
    swift_getKeyPath();
    v12 = a1;
    sub_21BD5DFA8();
    sub_21BE25F1C();

    v10 = *(a1 + 81);
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = v9;
  }

  v11 = v10;
  _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC31sendSettingsViewNavigationEvent4with4view10entryPointyAA0adefG7PackageV_AA0efiJ0OAA0efk5EntryP0OtFZ_0(&v12, &v11);
}

uint64_t sub_21BD79F6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_21BD79FB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_21BD7A05C@<Q0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(&v7);
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v21[0] = v7;
  v21[1] = v8;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v11;
  v21[5] = v12;
  v22 = v13;
  sub_21BC12ED0(&v14, &v6);
  sub_21BD7FB80(v21);
  v3 = v19;
  *(a2 + 64) = v18;
  *(a2 + 80) = v3;
  *(a2 + 96) = v20;
  v4 = v15;
  *a2 = v14;
  *(a2 + 16) = v4;
  result = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_21BD7A108()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21BD7A248()
{
  v1 = [*v0 dsid];
  if (v1)
  {
    v2 = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v3 = v12;
    if (!v12)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v4 = [v3 me];

    v5 = [v4 dsid];
    if (!v5)
    {
      goto LABEL_11;
    }

    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v6 = v2;
    v7 = sub_21BE2940C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v8 = v12;
    if (!v12)
    {
      v8 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v9 = [v8 me];

    if (v9)
    {
      v10 = sub_21BE2916C();

      if (v10)
      {
        return 1;
      }
    }

    else
    {
LABEL_11:
    }
  }

  return 0;
}

uint64_t sub_21BD7A450()
{
  v1 = v0;
  sub_21BD7A108();
  sub_21BDA72D4();
  sub_21BE262CC();

  if (v8[0] == 2 || (v8[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v3 = *v8;
    if (!*v8)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v4 = *v1;
    v5 = *(v1 + 152);
    v9 = type metadata accessor for ServicesStore(0);
    v10 = &off_282D8FEE0;
    *v8 = v5;
    v6 = *__swift_project_boxed_opaque_existential_1Tm(v8, v9);

    v2 = sub_21BD7EF34(v4, 0x545F4E4545524353, 0xEB00000000454D49, v6, v3);

    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_21BD7A5B4@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 136);
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  v5 = qword_280BDCB98;
  v6 = type metadata accessor for ServicesStore(0);
  v18[3] = v6;
  v18[4] = &off_282D8FEE0;
  v18[0] = v5;

  v7 = [v3 dsid];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = __swift_project_boxed_opaque_existential_1Tm(v18, v6);
  v10 = sub_21BD7EE28(0x545F4E4545524353, 0xEB00000000454D49, *v9);
  if (!v10)
  {

    v14 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  v17 = v8;
  MEMORY[0x28223BE20](v10);
  v16[2] = &v17;
  v12 = sub_21BC9DAC4(sub_21BBF0CE4, v16, v11);

  if ((v12 & 1) == 0)
  {

LABEL_11:
    v14 = 2;
    goto LABEL_12;
  }

  v13 = [v4 activityEnabledForUser];

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

LABEL_12:
  *a1 = v14;
  return __swift_destroy_boxed_opaque_existential_0Tm(v18);
}

id sub_21BD7A754()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v0 = v5;
  if (!v5)
  {
    v0 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v1 = [v0 me];
  if (v1)
  {
    v2 = v1;
    if (sub_21BE2916C())
    {
      v3 = [v2 isGuardian];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21BD7A854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCF0, &qword_21BE48D10);
  MEMORY[0x28223BE20](v55);
  v4 = &v48 - v3;
  v5 = type metadata accessor for MemberDetailsLocationView(0);
  v6 = MEMORY[0x28223BE20](v5);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v48 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCF8, &qword_21BE48D18);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6128, &qword_21BE48D20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD00, &qword_21BE48D28);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = *a1;
  v20 = [*a1 isMe];
  if (v20)
  {
    v21 = MEMORY[0x28223BE20](v20);
    *(&v48 - 2) = a1;
    v22 = MEMORY[0x28223BE20](v21);
    *(&v48 - 2) = a1;
    MEMORY[0x28223BE20](v22);
    *(&v48 - 2) = sub_21BD7FB28;
    *(&v48 - 1) = v23;
    sub_21BD10D60();
    sub_21BE268EC();
    v24 = sub_21BE268FC();
    v25 = (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
    MEMORY[0x28223BE20](v25);
    *(&v48 - 2) = sub_21BD7FBF4;
    *(&v48 - 1) = &v48 - 4;
    sub_21BD7F8AC();
    sub_21BD7F440(&qword_27CDB61E8, MEMORY[0x277D40260], MEMORY[0x277D40268]);
    sub_21BE2709C();
    v26 = *(a1 + 160);
    KeyPath = swift_getKeyPath();
    v28 = swift_allocObject();
    *(v28 + 16) = (v26 & 1) == 0;
    v29 = &v18[*(v16 + 36)];
    *v29 = KeyPath;
    v29[1] = sub_21BC0C5A0;
    v29[2] = v28;
    sub_21BBA3854(v18, v12, &qword_27CDBBD00, &qword_21BE48D28);
    swift_storeEnumTagMultiPayload();
    sub_21BD7F900();
    sub_21BD7F9E4();
    sub_21BE2784C();
    sub_21BB3A4CC(v18, &qword_27CDBBD00, &qword_21BE48D28);
LABEL_7:
    v32 = 0;
    goto LABEL_8;
  }

  v51 = v4;
  v52 = v16;
  v53 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v30 = v58;
  if (!v58)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v31 = [v30 me];

  v32 = 1;
  if (v31)
  {
    v49 = v31;
    v33 = *(a1 + 72);
    swift_getKeyPath();
    v50 = v12;
    swift_getKeyPath();
    v48 = v33;
    sub_21BE26CAC();

    v34 = sub_21BCE6070(0xD000000000000011, 0x800000021BE57B00, v58);

    v35 = v5[5];
    *(v9 + v35) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
    swift_storeEnumTagMultiPayload();
    v36 = v5[6];
    v37 = v9 + v5[8];
    v57 = 0;
    v38 = v19;
    sub_21BE283EC();
    v39 = v59;
    *v37 = v58;
    *(v37 + 1) = v39;
    type metadata accessor for LocationViewModel(0);
    sub_21BD7F440(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
    *v9 = sub_21BE270CC();
    v9[1] = v40;
    *(v9 + v5[7]) = v38;
    *(v9 + v5[9]) = v49;
    *(v9 + v36) = v34;
    v41 = sub_21BD7F828(v9, v54, type metadata accessor for MemberDetailsLocationView);
    MEMORY[0x28223BE20](v41);
    *(&v48 - 2) = a1;
    sub_21BD7F8AC();
    sub_21BD7F440(&qword_27CDBBD18, type metadata accessor for MemberDetailsLocationView, aUF_1);
    v42 = v51;
    sub_21BE2706C();
    LOBYTE(v36) = *(a1 + 160);
    v43 = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = (v36 & 1) == 0;
    v45 = (v42 + *(v55 + 36));
    *v45 = v43;
    v45[1] = sub_21BC0AE98;
    v45[2] = v44;
    sub_21BBA3854(v42, v50, &qword_27CDBBCF0, &qword_21BE48D10);
    swift_storeEnumTagMultiPayload();
    sub_21BD7F900();
    sub_21BD7F9E4();
    sub_21BE2784C();
    sub_21BB3A4CC(v42, &qword_27CDBBCF0, &qword_21BE48D10);
    sub_21BD7FAC8(v9, type metadata accessor for MemberDetailsLocationView);
    goto LABEL_7;
  }

LABEL_8:
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD08, &qword_21BE48D30);
  return (*(*(v46 - 8) + 56))(v56, v32, 1, v46);
}

__n128 sub_21BD7B0DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BDFD940(*(a1 + 72), *(a1 + 176), 0, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_21BD7B160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *a1;
  type metadata accessor for LocationViewModel(0);
  sub_21BD7F440(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v5 = v3;
  v6 = v4;
  result = sub_21BE270CC();
  *a2 = result;
  a2[1] = v8;
  a2[2] = v6;
  return result;
}

uint64_t sub_21BD7B204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC28, &qword_21BE48BB8);
  v3 = *(v28 - 8);
  v4 = MEMORY[0x28223BE20](v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC30, &qword_21BE48BC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC38, &qword_21BE48BC8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  sub_21BD7A5B4(&v30);
  if (v30 == 3 && (v19 = sub_21BD7A450(), (v19 & 1) != 0))
  {
    v27[2] = v27;
    MEMORY[0x28223BE20](v19);
    v27[-2] = a1;
    v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC58, &qword_21BE48BE0);
    sub_21BD7F2EC();
    sub_21BE2860C();
    (*(v10 + 32))(v18, v12, v9);
    v20 = (*(v10 + 56))(v18, 0, 1, v9);
  }

  else
  {
    v20 = (*(v10 + 56))(v18, 1, 1, v9);
  }

  MEMORY[0x28223BE20](v20);
  v27[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC40, &qword_21BE48BD0);
  sub_21BB3B038(&qword_27CDBBC48, &qword_27CDBBC40, &qword_21BE48BD0, MEMORY[0x277CE14C0]);
  sub_21BE2860C();
  sub_21BBA3854(v18, v16, &qword_27CDBBC38, &qword_21BE48BC8);
  v21 = *(v3 + 16);
  v22 = v28;
  v21(v6, v8, v28);
  v23 = v29;
  sub_21BBA3854(v16, v29, &qword_27CDBBC38, &qword_21BE48BC8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC50, &qword_21BE48BD8);
  v21((v23 + *(v24 + 48)), v6, v22);
  v25 = *(v3 + 8);
  v25(v8, v22);
  sub_21BB3A4CC(v18, &qword_27CDBBC38, &qword_21BE48BC8);
  v25(v6, v22);
  return sub_21BB3A4CC(v16, &qword_27CDBBC38, &qword_21BE48BC8);
}

uint64_t sub_21BD7B65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = sub_21BE27A2C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v8 = sub_21BCE6070(0x545F4E4545524353, 0xEB00000000454D49, v24[0]);

  v9 = [*a1 dsid];
  sub_21BD7A5B4(v24);
  v10 = v24[0];
  v11 = *(a1 + 136);
  v12 = sub_21BD7F3D8();
  v13 = *(v5 + 32);
  *&v7[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v14 = *(v5 + 36);
  *&v7[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  swift_storeEnumTagMultiPayload();
  *v7 = v8;
  *(v7 + 1) = v9;
  v7[16] = v10;
  *(v7 + 3) = v11;
  *(v7 + 4) = v12;
  v15 = v11;
  sub_21BE27A0C();
  sub_21BD7F440(&qword_27CDBBC68, type metadata accessor for MemberDetailsScreentimeWrapper, byte_21BE3D528);
  v16 = v22;
  sub_21BE2805C();
  (*(v21 + 8))(v4, v23);
  sub_21BD7FAC8(v7, type metadata accessor for MemberDetailsScreentimeWrapper);
  sub_21BD09E30(a1, v24);
  v17 = swift_allocObject();
  sub_21BD7F210(v24, v17 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC58, &qword_21BE48BE0);
  v19 = (v16 + *(result + 36));
  *v19 = sub_21BD7FBD4;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_21BD7B9B4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v169 = sub_21BE263DC();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v167 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for MemberDetailsAppleCashWrapper(0);
  MEMORY[0x28223BE20](v165);
  v166 = (&v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC78, &qword_21BE48CA0);
  v174 = *(v175 - 8);
  v5 = MEMORY[0x28223BE20](v175);
  v163 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v164 = &v157 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC80, &unk_21BE48CA8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v181 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v157 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v173 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v158 = &v157 - v16;
  v161 = type metadata accessor for MemberDetailsAskToBuyWrapper(0);
  MEMORY[0x28223BE20](v161);
  v162 = (&v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC88, &qword_21BE48CB8);
  v170 = *(v171 - 8);
  v18 = MEMORY[0x28223BE20](v171);
  v159 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v160 = &v157 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC90, &qword_21BE48CC0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v180 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v185 = &v157 - v24;
  v178 = sub_21BE27A2C();
  v177 = *(v178 - 1);
  MEMORY[0x28223BE20](v178);
  v172 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC98, &qword_21BE48CC8);
  MEMORY[0x28223BE20](v29);
  v31 = &v157 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCA0, &qword_21BE48CD0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v157 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCA8, &qword_21BE48CD8);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v179 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v184 = &v157 - v39;
  sub_21BD7A5B4(&v186);
  v183 = v12;
  v182 = a1;
  if (v186 == 3 || (sub_21BD7A450() & 1) == 0)
  {
    (*(v33 + 56))(v184, 1, 1, v32);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v157 = sub_21BCE6070(0x545F4E4545524353, 0xEB00000000454D49, v186);

    v40 = [*v182 dsid];
    sub_21BD7A5B4(&v186);
    v41 = v186;
    v42 = *(v26 + 32);
    *&v28[v42] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
    swift_storeEnumTagMultiPayload();
    v43 = *(v26 + 36);
    *&v28[v43] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
    swift_storeEnumTagMultiPayload();
    *v28 = v157;
    *(v28 + 1) = v40;
    v28[16] = v41;
    *(v28 + 3) = 0;
    *(v28 + 4) = 0;
    LOBYTE(v191) = 0;
    sub_21BE283EC();
    LOBYTE(v40) = v186;
    v44 = v187;
    sub_21BD7F828(v28, v31, type metadata accessor for MemberDetailsScreentimeWrapper);
    v45 = &v31[*(v29 + 36)];
    *v45 = v40;
    v12 = v183;
    *(v45 + 1) = v44;
    a1 = v182;
    sub_21BD7FAC8(v28, type metadata accessor for MemberDetailsScreentimeWrapper);
    v46 = v172;
    sub_21BE27A0C();
    sub_21BD7F5CC();
    sub_21BE2805C();
    v177[1](v46, v178);
    sub_21BB3A4CC(v31, &qword_27CDBBC98, &qword_21BE48CC8);
    sub_21BD09E30(a1, &v186);
    v47 = swift_allocObject();
    sub_21BD7F210(&v186, v47 + 16);
    v48 = &v35[*(v32 + 36)];
    *v48 = sub_21BD7F784;
    *(v48 + 1) = v47;
    *(v48 + 2) = 0;
    *(v48 + 3) = 0;
    v49 = v184;
    sub_21BBB7D84(v35, v184, &qword_27CDBBCA0, &qword_21BE48CD0);
    (*(v33 + 56))(v49, 0, 1, v32);
  }

  v50 = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
  v177 = a1[7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v51 = v186;
  v52 = v185;
  if (!v186)
  {
    v51 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v53 = *a1;
  v54 = a1[19];
  v55 = type metadata accessor for ServicesStore(0);
  v190 = &off_282D8FEE0;
  v189 = v55;
  v186 = v54;
  v56 = *__swift_project_boxed_opaque_existential_1Tm(&v186, v55);

  LOBYTE(v56) = sub_21BD7EF34(v53, 0x425F4F545F4B5341, 0xEA00000000005955, v56, v51);

  __swift_destroy_boxed_opaque_existential_0Tm(&v186);
  v178 = v53;
  v172 = v50;
  if (v56)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v57 = sub_21BCE6070(0x425F4F545F4B5341, 0xEA00000000005955, v186);

    v58 = a1[1];
    if (v58[2] && (v59 = sub_21BBB3108(0x425F4F545F4B5341, 0xEA00000000005955), (v60 & 1) != 0))
    {
      v61 = v59;
      v62 = v58[7];
      v63 = sub_21BE25B9C();
      v64 = *(v63 - 8);
      v65 = v64;
      v66 = v62 + *(v64 + 72) * v61;
      v53 = v178;
      v67 = v158;
      (*(v64 + 16))(v158, v66, v63);
      (*(v65 + 56))(v67, 0, 1, v63);
      a1 = v182;
    }

    else
    {
      v70 = sub_21BE25B9C();
      v67 = v158;
      (*(*(v70 - 8) + 56))(v158, 1, 1, v70);
    }

    swift_unknownObjectWeakLoadStrong();
    v71 = a1[4];
    v72 = *(a1 + 40);
    v186 = a1[3];
    v187 = v71;
    v188 = v72;
    v73 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v74 = v191;
    v75 = v192;
    v76 = v193;
    v77 = v162;
    *v162 = v57;
    v78 = v161;
    sub_21BBB7D84(v67, v77 + *(v161 + 20), &unk_27CDB57F0, &qword_21BE328A0);
    *(v77 + *(v78 + 24)) = v73;
    v53 = v178;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v79 = v77 + *(v78 + 32);
    *v79 = v74;
    *(v79 + 8) = v75;
    a1 = v182;
    *(v79 + 16) = v76;
    LOBYTE(v191) = 0;
    sub_21BE283EC();
    LOBYTE(v78) = v186;
    v80 = v187;
    v81 = v159;
    sub_21BD7F7C0(v77, v159, type metadata accessor for MemberDetailsAskToBuyWrapper);
    v69 = v171;
    v82 = v81 + *(v171 + 36);
    *v82 = v78;
    *(v82 + 8) = v80;
    v83 = v81;
    v84 = v160;
    sub_21BBB7D84(v83, v160, &qword_27CDBBC88, &qword_21BE48CB8);
    v52 = v185;
    sub_21BBB7D84(v84, v185, &qword_27CDBBC88, &qword_21BE48CB8);
    v68 = 0;
  }

  else
  {
    v68 = 1;
    v69 = v171;
  }

  v170[7](v52, v68, 1, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v85 = v186;
  if (!v186)
  {
    v85 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v86 = sub_21BD7EAC4(v53, v54, v85);

  if (v86)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v171 = sub_21BCE6070(0x41435F454C505041, 0xEA00000000004853, v186);

    v87 = a1[1];
    if (v87[2])
    {
      v88 = sub_21BBB3108(0x41435F454C505041, 0xEA00000000004853);
      v89 = v173;
      if (v90)
      {
        v91 = v88;
        v92 = v87[7];
        v93 = sub_21BE25B9C();
        v94 = *(v93 - 8);
        (*(v94 + 16))(v89, v92 + *(v94 + 72) * v91, v93);
        (*(v94 + 56))(v89, 0, 1, v93);
        v53 = v178;
      }

      else
      {
        v98 = sub_21BE25B9C();
        (*(*(v98 - 8) + 56))(v89, 1, 1, v98);
      }
    }

    else
    {
      v97 = sub_21BE25B9C();
      (*(*(v97 - 8) + 56))(v173, 1, 1, v97);
    }

    v170 = [v53 dsid];
    v162 = sub_21BE2917C();
    v100 = v99;
    v101 = sub_21BD7A248();
    swift_unknownObjectWeakLoadStrong();
    v102 = a1[4];
    v103 = *(a1 + 40);
    v186 = a1[3];
    v187 = v102;
    v188 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v104 = v191;
    v105 = v192;
    v106 = v193;
    KeyPath = swift_getKeyPath();
    v108 = v165;
    v109 = v166;
    *(v166 + *(v165 + 52)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
    swift_storeEnumTagMultiPayload();
    *v109 = v171;
    sub_21BBB7D84(v173, v109 + v108[5], &unk_27CDB57F0, &qword_21BE328A0);
    *(v109 + v108[6]) = v170;
    v110 = (v109 + v108[7]);
    *v110 = v162;
    v110[1] = v100;
    *(v109 + v108[8]) = v101 & 1;
    swift_unknownObjectWeakInit();

    swift_unknownObjectRelease();
    v111 = v109 + v108[10];
    *v111 = v104;
    *(v111 + 1) = v105;
    a1 = v182;
    v111[16] = v106;
    v112 = (v109 + v108[11]);
    type metadata accessor for MemberDetailsAppleCashViewModel(0);
    sub_21BD7F440(&qword_27CDBA118, type metadata accessor for MemberDetailsAppleCashViewModel, byte_21BE3F678);
    *v112 = sub_21BE270CC();
    v112[1] = v113;
    v114 = v109 + v108[12];
    *v114 = sub_21BCC08FC;
    *(v114 + 1) = 0;
    v114[16] = 0;
    LOBYTE(v191) = 0;
    sub_21BE283EC();
    v115 = v186;
    v116 = v187;
    v117 = v109;
    v118 = v163;
    sub_21BD7F7C0(v117, v163, type metadata accessor for MemberDetailsAppleCashWrapper);
    v96 = v175;
    v119 = v118 + *(v175 + 36);
    *v119 = v115;
    *(v119 + 8) = v116;
    v120 = v118;
    v121 = v164;
    sub_21BBB7D84(v120, v164, &qword_27CDBBC78, &qword_21BE48CA0);
    v12 = v183;
    sub_21BBB7D84(v121, v183, &qword_27CDBBC78, &qword_21BE48CA0);
    v95 = 0;
    v52 = v185;
  }

  else
  {
    v95 = 1;
    v96 = v175;
  }

  (*(v174 + 56))(v12, v95, 1, v96);
  type metadata accessor for MemberDetailsAppleCardViewModel(0);
  sub_21BD7F440(&qword_27CDBA110, type metadata accessor for MemberDetailsAppleCardViewModel, aIF_0);

  v122 = sub_21BE270CC();
  v124 = v123;
  LOBYTE(v191) = 0;
  sub_21BE283EC();
  v125 = v186;
  v126 = v187;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v186 != 1 || [v178 isMe] || (sub_21BE2915C() & 1) == 0)
  {

    v122 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
  }

  v175 = v124;
  v127 = sub_21BD7A754();
  v174 = v122;
  v182 = v125;
  v170 = v126;
  if (v127 & 1) != 0 && (v128 = v168, v129 = v167, v130 = v169, v168[13](v167, *MEMORY[0x277D08028], v169), v131 = sub_21BE263CC(), (v128[1])(v129, v130), (v131))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v173 = v178;
    sub_21BE26CAC();

    v132 = v186;
    if (!v186)
    {
      v132 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v133 = [v132 me];

    if (v133)
    {
      v134 = [v133 altDSID];

      if (v134)
      {
        v172 = sub_21BE28A0C();
        v133 = v135;
      }

      else
      {
        v172 = 0;
        v133 = 0;
      }
    }

    else
    {
      v172 = 0;
    }

    v168 = v133;
    v136 = a1[24];
    v186 = a1[23];
    v187 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA128, &unk_21BE42B80);
    sub_21BE283FC();
    type metadata accessor for FamilyMemberAccountDetailsViewModel();
    sub_21BD7F440(&qword_27CDBDBE0, type metadata accessor for FamilyMemberAccountDetailsViewModel, aF_5);
    v178 = sub_21BE270CC();
    v177 = v137;
    LOBYTE(v191) = 0;
    sub_21BE283EC();
    v171 = v186;
    v169 = v187;
  }

  else
  {
    v173 = 0;
    v172 = 0;
    v168 = 0;
    v178 = 0;
    v177 = 0;
    v171 = 0;
    v169 = 0;
  }

  v138 = v179;
  sub_21BBA3854(v184, v179, &qword_27CDBBCA8, &qword_21BE48CD8);
  v139 = v180;
  sub_21BBA3854(v52, v180, &qword_27CDBBC90, &qword_21BE48CC0);
  v140 = v181;
  sub_21BBA3854(v183, v181, &qword_27CDBBC80, &unk_21BE48CA8);
  v141 = v176;
  sub_21BBA3854(v138, v176, &qword_27CDBBCA8, &qword_21BE48CD8);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCB0, &qword_21BE48CE0);
  sub_21BBA3854(v139, v141 + v142[12], &qword_27CDBBC90, &qword_21BE48CC0);
  sub_21BBA3854(v140, v141 + v142[16], &qword_27CDBBC80, &unk_21BE48CA8);
  v143 = (v141 + v142[20]);
  v144 = v174;
  v145 = v175;
  *v143 = v174;
  v143[1] = v145;
  v146 = v182;
  v143[2] = v182;
  v147 = v170;
  v143[3] = v170;
  v148 = (v141 + v142[24]);
  v149 = v173;
  v150 = v172;
  *v148 = v173;
  v148[1] = v150;
  v151 = v168;
  v152 = v178;
  v148[2] = v168;
  v148[3] = v152;
  v153 = v177;
  v154 = v171;
  v148[4] = v177;
  v148[5] = v154;
  v155 = v169;
  v148[6] = v169;
  sub_21BD7F488(v144, v145, v146, v147);
  sub_21BD7F4CC(v149, v150, v151, v152, v153, v154, v155);
  sub_21BB3A4CC(v183, &qword_27CDBBC80, &unk_21BE48CA8);
  sub_21BB3A4CC(v185, &qword_27CDBBC90, &qword_21BE48CC0);
  sub_21BB3A4CC(v184, &qword_27CDBBCA8, &qword_21BE48CD8);
  sub_21BD7F52C(v149, v150, v151, v152, v153, v154, v155);
  sub_21BD7F588(v144, v145, v182, v147);
  sub_21BB3A4CC(v181, &qword_27CDBBC80, &unk_21BE48CA8);
  sub_21BB3A4CC(v180, &qword_27CDBBC90, &qword_21BE48CC0);
  return sub_21BB3A4CC(v179, &qword_27CDBBCA8, &qword_21BE48CD8);
}

uint64_t sub_21BD7D388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBF8, &qword_21BE48AF0);
  v3 = MEMORY[0x28223BE20](v36);
  v37 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC00, &qword_21BE48AF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC08, &qword_21BE48B00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  if ((sub_21BD7A450() & 1) == 0)
  {
    v35 = v7;
    v33[2] = *(v1 + 56);
    v33[1] = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v17 = v39[0];
    if (!v39[0])
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v18 = *v1;
    v19 = *(v1 + 152);
    v20 = type metadata accessor for ServicesStore(0);
    v39[4] = &off_282D8FEE0;
    v39[3] = v20;
    v39[0] = v19;
    v21 = *__swift_project_boxed_opaque_existential_1Tm(v39, v20);

    v34 = v18;
    LOBYTE(v21) = sub_21BD7EF34(v18, 0x425F4F545F4B5341, 0xEA00000000005955, v21, v17);

    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    v7 = v35;
    if ((v21 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v22 = v39[0];
      if (!v39[0])
      {
        v22 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      }

      v23 = sub_21BD7EAC4(v34, v19, v22);

      v7 = v35;
      if ((v23 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        if (LOBYTE(v39[0]) != 1 || ([v34 isMe] & 1) != 0)
        {
          v24 = 1;
          v7 = v35;
          goto LABEL_9;
        }

        v32 = sub_21BE2915C();
        v7 = v35;
        if ((v32 & 1) == 0)
        {
          v24 = 1;
          goto LABEL_9;
        }
      }
    }
  }

  sub_21BD7B204(v2, v10);
  sub_21BBB7D84(v10, v16, &qword_27CDBBC00, &qword_21BE48AF8);
  v24 = 0;
LABEL_9:
  v25 = (*(v8 + 56))(v16, v24, 1, v7);
  MEMORY[0x28223BE20](v25);
  v33[-2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC10, &qword_21BE48B98);
  sub_21BB3B038(&qword_27CDBBC18, &qword_27CDBBC10, &qword_21BE48B98, MEMORY[0x277CE14C0]);
  sub_21BE2860C();
  sub_21BD09E30(v2, v39);
  v26 = swift_allocObject();
  sub_21BD7F210(v39, v26 + 16);
  v27 = &v6[*(v36 + 36)];
  sub_21BE2701C();
  sub_21BE28D8C();
  *v27 = &unk_21BE48BA8;
  *(v27 + 1) = v26;
  sub_21BBA3854(v16, v14, &qword_27CDBBC08, &qword_21BE48B00);
  v28 = v37;
  sub_21BBA3854(v6, v37, &qword_27CDBBBF8, &qword_21BE48AF0);
  v29 = v38;
  sub_21BBA3854(v14, v38, &qword_27CDBBC08, &qword_21BE48B00);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC20, &qword_21BE48BB0);
  sub_21BBA3854(v28, v29 + *(v30 + 48), &qword_27CDBBBF8, &qword_21BE48AF0);
  sub_21BB3A4CC(v6, &qword_27CDBBBF8, &qword_21BE48AF0);
  sub_21BB3A4CC(v16, &qword_27CDBBC08, &qword_21BE48B00);
  sub_21BB3A4CC(v28, &qword_27CDBBBF8, &qword_21BE48AF0);
  return sub_21BB3A4CC(v14, &qword_27CDBBC08, &qword_21BE48B00);
}

uint64_t sub_21BD7D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCC8, &qword_21BE48CE8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v121 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v119 = (&v99 - v6);
  v115 = type metadata accessor for MemberDetailsPurchaseSharingWrapper(0);
  MEMORY[0x28223BE20](v115);
  v8 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCD0, &qword_21BE48CF0);
  v9 = MEMORY[0x28223BE20](v116);
  v118 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = &v99 - v12;
  MEMORY[0x28223BE20](v11);
  v117 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v123 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v99 - v17;
  v109 = type metadata accessor for MemberDetailsSubscriptionWrapper(0);
  MEMORY[0x28223BE20](v109);
  v20 = (&v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCD8, &qword_21BE48CF8);
  v110 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v107 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v108 = &v99 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCE0, &qword_21BE48D00);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v113 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v99 - v28;
  v30 = *(a1 + 56);
  v111 = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
  v112 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v31 = v127;
  v106 = v18;
  if (!v127)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v32 = [v31 me];

  v33 = &selRef_bundleURL;
  v122 = v29;
  if (v32)
  {
    v103 = v32;
    v104 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v102 = sub_21BCE6070(0xD000000000000011, 0x800000021BE55910, v127);

    v34 = *(a1 + 8);
    v35 = *(v34 + 16);
    v105 = v8;
    if (v35 && (v36 = sub_21BBB3108(0xD000000000000011, 0x800000021BE55910), (v37 & 1) != 0))
    {
      v38 = v36;
      v39 = *(v34 + 56);
      v40 = sub_21BE25B9C();
      v41 = *(v40 - 8);
      v42 = v41;
      v43 = v39 + *(v41 + 72) * v38;
      v44 = v106;
      (*(v41 + 16))(v106, v43, v40);
      (*(v42 + 56))(v44, 0, 1, v40);
    }

    else
    {
      v45 = sub_21BE25B9C();
      v44 = v106;
      (*(*(v45 - 8) + 56))(v106, 1, 1, v45);
    }

    v101 = [*a1 dsid];
    v100 = sub_21BE2917C();
    v99 = v46;
    v47 = v103;
    v48 = [v103 dsid];
    swift_unknownObjectWeakLoadStrong();
    v49 = *(a1 + 32);
    v50 = *(a1 + 40);
    v127 = *(a1 + 24);
    v128 = v49;
    v129 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v51 = v124;
    v52 = v125;
    v53 = v126;
    *v20 = v102;
    v54 = v109;
    sub_21BBB7D84(v44, v20 + *(v109 + 20), &unk_27CDB57F0, &qword_21BE328A0);
    *(v20 + v54[6]) = v101;
    v55 = (v20 + v54[7]);
    v56 = v99;
    *v55 = v100;
    v55[1] = v56;
    *(v20 + v54[8]) = v48;
    v33 = &selRef_bundleURL;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v57 = v20 + v54[10];
    *v57 = v51;
    *(v57 + 1) = v52;
    v57[16] = v53;
    LOBYTE(v124) = 0;
    sub_21BE283EC();

    v58 = v127;
    v59 = v128;
    v60 = v107;
    sub_21BD7F7C0(v20, v107, type metadata accessor for MemberDetailsSubscriptionWrapper);
    v21 = v104;
    v61 = v60 + *(v104 + 36);
    *v61 = v58;
    *(v61 + 8) = v59;
    v62 = v60;
    v63 = v108;
    sub_21BBB7D84(v62, v108, &qword_27CDBBCD8, &qword_21BE48CF8);
    v29 = v122;
    sub_21BBB7D84(v63, v122, &qword_27CDBBCD8, &qword_21BE48CF8);
    v64 = 0;
    v8 = v105;
  }

  else
  {
    v64 = 1;
  }

  v110[7](v29, v64, 1, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v110 = sub_21BCE6070(0xD000000000000010, 0x800000021BE55930, v127);

  v65 = *(a1 + 8);
  if (*(v65 + 16) && (v66 = sub_21BBB3108(0xD000000000000010, 0x800000021BE55930), (v67 & 1) != 0))
  {
    v68 = v66;
    v69 = *(v65 + 56);
    v70 = sub_21BE25B9C();
    v71 = *(v70 - 8);
    v72 = v71;
    v73 = v69 + *(v71 + 72) * v68;
    v74 = v123;
    (*(v71 + 16))(v123, v73, v70);
    (*(v72 + 56))(v74, 0, 1, v70);
  }

  else
  {
    v75 = sub_21BE25B9C();
    (*(*(v75 - 8) + 56))(v123, 1, 1, v75);
  }

  v76 = [*a1 v33[490]];
  swift_unknownObjectWeakLoadStrong();
  v77 = *(a1 + 32);
  v78 = *(a1 + 40);
  v127 = *(a1 + 24);
  v128 = v77;
  v129 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v79 = v124;
  v80 = v125;
  v81 = v126;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v82 = v127;
  if (!v127)
  {
    v82 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  *v8 = v110;
  v83 = v115;
  sub_21BBB7D84(v123, v8 + *(v115 + 20), &unk_27CDB57F0, &qword_21BE328A0);
  *(v8 + v83[6]) = v76;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v84 = v8 + v83[8];
  *v84 = v79;
  *(v84 + 1) = v80;
  v84[16] = v81;
  *(v8 + v83[9]) = v82;
  v85 = v8 + v83[10];
  *v85 = sub_21BE1DBC0;
  *(v85 + 1) = 0;
  v85[16] = 0;
  LOBYTE(v124) = 0;
  sub_21BE283EC();
  v86 = v127;
  v87 = v128;
  v88 = v114;
  sub_21BD7F7C0(v8, v114, type metadata accessor for MemberDetailsPurchaseSharingWrapper);
  v89 = v117;
  v90 = v88 + *(v116 + 36);
  *v90 = v86;
  *(v90 + 8) = v87;
  sub_21BBB7D84(v88, v89, &qword_27CDBBCD0, &qword_21BE48CF0);
  v91 = v119;
  sub_21BD7A854(a1, v119);
  v92 = v122;
  v93 = v113;
  sub_21BBA3854(v122, v113, &qword_27CDBBCE0, &qword_21BE48D00);
  v94 = v118;
  sub_21BBA3854(v89, v118, &qword_27CDBBCD0, &qword_21BE48CF0);
  v95 = v121;
  sub_21BBA3854(v91, v121, &qword_27CDBBCC8, &qword_21BE48CE8);
  v96 = v120;
  sub_21BBA3854(v93, v120, &qword_27CDBBCE0, &qword_21BE48D00);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCE8, &qword_21BE48D08);
  sub_21BBA3854(v94, v96 + *(v97 + 48), &qword_27CDBBCD0, &qword_21BE48CF0);
  sub_21BBA3854(v95, v96 + *(v97 + 64), &qword_27CDBBCC8, &qword_21BE48CE8);
  sub_21BB3A4CC(v91, &qword_27CDBBCC8, &qword_21BE48CE8);
  sub_21BB3A4CC(v89, &qword_27CDBBCD0, &qword_21BE48CF0);
  sub_21BB3A4CC(v92, &qword_27CDBBCE0, &qword_21BE48D00);
  sub_21BB3A4CC(v95, &qword_27CDBBCC8, &qword_21BE48CE8);
  sub_21BB3A4CC(v94, &qword_27CDBBCD0, &qword_21BE48CF0);
  return sub_21BB3A4CC(v93, &qword_27CDBBCE0, &qword_21BE48D00);
}

uint64_t sub_21BD7E698(uint64_t a1)
{
  v1[2] = a1;
  sub_21BE28D7C();
  v1[3] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21BD7E730, v3, v2);
}

uint64_t sub_21BD7E730()
{
  *(v0 + 48) = sub_21BD7A108();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_21BD7E7CC;

  return sub_21BDA69F4();
}

uint64_t sub_21BD7E7CC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BBAFEE4, v3, v2);
}

id sub_21BD7E914()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v1;
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

void sub_21BD7E9D0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BD7EA50(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD7EAC4(void *a1, uint64_t a2, void *a3)
{
  v32 = type metadata accessor for ServicesStore(0);
  v33 = &off_282D8FEE0;
  v31[0] = a2;

  v6 = [a3 allowedSubscriptions];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = sub_21BE28C3C();

  v30[0] = 0x41435F454C505041;
  v30[1] = 0xEA00000000004853;
  MEMORY[0x28223BE20](v9);
  v29 = v30;
  LOBYTE(v7) = sub_21BC9BF08(sub_21BBF0CC4, v28, v8);

  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = [a3 me];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  if ((sub_21BE2916C() & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = [v11 isGuardian];

  if ((v12 & 1) == 0)
  {
LABEL_8:
    __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    v14 = (off_282D8FF00)(0x41435F454C505041, 0xEA00000000004853);
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = v14;
    v16 = [v14 subscriberDSIDs];

    if (!v16)
    {
      goto LABEL_19;
    }

    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v17 = sub_21BE28C3C();

    v18 = [a1 dsid];
    if (v18)
    {
      v19 = v18;
      v20 = [a3 me];
      if (v20)
      {
        v21 = v20;
        v30[0] = v19;
        MEMORY[0x28223BE20](v20);
        v29 = v30;
        v22 = sub_21BC9DAC4(sub_21BD7FBD8, v28, v17);

        if (v22)
        {
          if ([v21 isOrganizer])
          {

            goto LABEL_6;
          }

          v24 = [v21 dsid];
          if (v24)
          {
            v25 = v24;
            v26 = v19;
            v27 = sub_21BE2940C();

            if (v27)
            {
              v13 = sub_21BE2916C();

              goto LABEL_20;
            }
          }

          else
          {
          }

LABEL_19:
          v13 = 0;
          goto LABEL_20;
        }
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_19;
  }

LABEL_6:
  v13 = 1;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  return v13 & 1;
}

uint64_t sub_21BD7EE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = type metadata accessor for ServicesStore(0);
  v14 = &off_282D8FEE0;
  v12[0] = a3;
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  v6 = off_282D8FF00;

  v7 = v6(a1, a2);
  if (v7 && (v8 = v7, v9 = [v7 subscriberDSIDs], v8, v9))
  {
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v10 = sub_21BE28C3C();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v10;
}

uint64_t sub_21BD7EF34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_21BE25FCC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for ServicesStore(0);
  v33 = &off_282D8FEE0;
  v31[0] = a4;

  v14 = [a5 me];
  if (v14)
  {
    v15 = v14;
    if (sub_21BE2916C())
    {
      v16 = [v15 isGuardian];

      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  (*(v11 + 104))(v13, *MEMORY[0x277D07F40], v10);
  v17 = MEMORY[0x21CF01150](v13);
  (*(v11 + 8))(v13, v10);
  if ((v17 & 1) == 0 || (sub_21BE2916C() & 1) == 0 || ([a1 isMe] & 1) == 0)
  {
    v19 = __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    v20 = sub_21BD7EE28(a2, a3, *v19);
    if (v20)
    {
      v21 = v20;
      v22 = [a5 me];
      if (v22)
      {
        v23 = v22;
        v24 = [a1 dsid];
        if (!v24)
        {
          sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
          v24 = sub_21BE293EC();
        }

        v30 = v24;
        v25 = MEMORY[0x28223BE20](v24);
        *&v29[-16] = &v30;
        v26 = v25;
        v27 = sub_21BC9DAC4(sub_21BD7FBD8, &v29[-32], v21);

        if (v27)
        {
          v18 = [v23 isParent];

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    v18 = 0;
    goto LABEL_19;
  }

LABEL_9:
  v18 = 1;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  return v18;
}

uint64_t sub_21BD7F248()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBA6A64;

  return sub_21BD7E698(v0 + 16);
}

unint64_t sub_21BD7F2EC()
{
  result = qword_27CDBBC60;
  if (!qword_27CDBBC60)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBC58, &qword_21BE48BE0);
    v4[2] = type metadata accessor for MemberDetailsScreentimeWrapper(255);
    v4[3] = sub_21BD7F440(&qword_27CDBBC68, type metadata accessor for MemberDetailsScreentimeWrapper, byte_21BE3D528);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBC60);
  }

  return result;
}

unint64_t sub_21BD7F3D8()
{
  result = qword_27CDBBC70;
  if (!qword_27CDBBC70)
  {
    v3 = sub_21BB3A2A4(255, &qword_27CDB7EE8, off_2782F0D00);
    result = swift_getWitnessTable(protocol conformance descriptor for FAScreenTimeWrapper, v3, v0, v1);
    atomic_store(result, &qword_27CDBBC70);
  }

  return result;
}

uint64_t sub_21BD7F440(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21BD7F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

id sub_21BD7F4CC(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v7 = result;

    v8 = v7;

    return a5;
  }

  return result;
}

double sub_21BD7F52C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
  }

  return result;
}

double sub_21BD7F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21BD7F5CC()
{
  result = qword_27CDBBCB8;
  if (!qword_27CDBBCB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBC98, &qword_21BE48CC8);
    v4[0] = sub_21BD7F440(&qword_27CDBBC68, type metadata accessor for MemberDetailsScreentimeWrapper, byte_21BE3D528);
    v4[1] = sub_21BD7F688();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBCB8);
  }

  return result;
}

unint64_t sub_21BD7F688()
{
  result = qword_27CDBBCC0;
  if (!qword_27CDBBCC0)
  {
    result = swift_getWitnessTable(a1jF, &type metadata for HighlightOnTap, v0, v1);
    atomic_store(result, &qword_27CDBBCC0);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{

  MEMORY[0x21CF05D90](v0 + 4);

  return swift_deallocObject();
}

void sub_21BD7F788()
{
  if ([*(v0 + 152) activityEnablementChanged])
  {
    FAScreenTimeWrapper.notifyObservable()();
  }
}

uint64_t sub_21BD7F7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BD7F828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BD7F8AC()
{
  result = qword_27CDBBD10;
  if (!qword_27CDBBD10)
  {
    result = swift_getWitnessTable(asc_21BE3667C, &type metadata for MemberDetailsLocationCell, v0, v1);
    atomic_store(result, &qword_27CDBBD10);
  }

  return result;
}

unint64_t sub_21BD7F900()
{
  result = qword_27CDBBD20;
  if (!qword_27CDBBD20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBD00, &qword_21BE48D28);
    v4[0] = sub_21BB3B038(&qword_27CDBBD28, &qword_27CDBBD30, &unk_21BE48DA0, MEMORY[0x277CDD938]);
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBD20);
  }

  return result;
}

unint64_t sub_21BD7F9E4()
{
  result = qword_27CDBBD38;
  if (!qword_27CDBBD38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBCF0, &qword_21BE48D10);
    v4[0] = sub_21BB3B038(&qword_27CDBBD40, &qword_27CDBBD48, &qword_21BE48DB0, MEMORY[0x277CDD938]);
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBD38);
  }

  return result;
}

uint64_t sub_21BD7FAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_21BD7FB38@<Q0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v4);
  result = v5;
  *a1 = v4;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BD7FBF8()
{
  result = sub_21BE289CC();
  qword_280BD6B50 = result;
  return result;
}

uint64_t sub_21BD7FC30(uint64_t a1)
{
  v1[37] = a1;
  sub_21BE25E9C();
  v1[38] = swift_task_alloc();
  v2 = sub_21BE25EBC();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v3 = sub_21BE25B9C();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD7FD84, 0, 0);
}

uint64_t sub_21BD7FD84()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[46] = v1;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_21BD7FEBC;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5808, &qword_21BE328C8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BBB25CC;
  v0[21] = &block_descriptor_48;
  v0[22] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD7FEBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_21BD805DC;
  }

  else
  {
    v2 = sub_21BD7FFCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BD7FFCC()
{
  v1 = v0[46];
  v2 = v0[36];
  v0[48] = v2;

  if (qword_280BD6B48 != -1)
  {
    swift_once();
  }

  v3 = [v2 urlForEndpoint_];
  if (v3)
  {
    v5 = v0[44];
    v4 = v0[45];
    v6 = v0[42];
    v7 = v0[43];
    v8 = v0[37];
    v9 = v3;
    sub_21BE25B5C();

    (*(v7 + 32))(v4, v5, v6);
    sub_21BE25AFC();
    v10 = objc_allocWithZone(FASharedServicesRequest);
    v11 = sub_21BE289CC();

    v12 = [v10 initWithAppleAccount:v8 urlString:v11];
    v0[49] = v12;

    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_21BD802C4;
    v13 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD60, &unk_21BE48DD0);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_21BD8074C;
    v0[29] = &block_descriptor_3;
    v0[30] = v13;
    [v12 performRequestWithHandler_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v15 = v0[40];
    v14 = v0[41];
    v16 = v0[39];
    sub_21BE25E8C();
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BD80824();
    sub_21BE25A6C();
    sub_21BE25EAC();
    (*(v15 + 8))(v14, v16);
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21BD802C4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_21BD8067C;
  }

  else
  {
    v2 = sub_21BD803D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BD803D4()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 384);
      v4 = *(v0 + 392);
      (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));

      v6 = *(v0 + 8);

      return v6(v3);
    }
  }

  v9 = *(v0 + 384);
  v8 = *(v0 + 392);
  v16 = *(v0 + 360);
  v10 = *(v0 + 336);
  v11 = *(v0 + 344);
  v12 = *(v0 + 320);
  v13 = *(v0 + 328);
  v14 = *(v0 + 312);
  sub_21BE25E7C();
  sub_21BDCE614(MEMORY[0x277D84F90]);
  sub_21BD80824();
  sub_21BE25A6C();
  sub_21BE25EAC();
  (*(v12 + 8))(v13, v14);
  swift_willThrow();

  (*(v11 + 8))(v16, v10);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21BD805DC(uint64_t a1)
{
  v2 = *(v1 + 368);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21BD8067C(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[48];
  v4 = v1[45];
  v5 = v1[42];
  v6 = v1[43];
  swift_willThrow();

  (*(v6 + 8))(v4, v5);

  v7 = v1[1];

  return v7();
}

uint64_t sub_21BD8074C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

unint64_t sub_21BD80824()
{
  result = qword_27CDB7A10;
  if (!qword_27CDB7A10)
  {
    v3 = sub_21BE25EBC();
    result = swift_getWitnessTable(MEMORY[0x277CC9AE0], v3, v0, v1);
    atomic_store(result, &qword_27CDB7A10);
  }

  return result;
}

void sub_21BD808B0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BD836F4(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel, byte_21BE40CC8);
  sub_21BE25F1C();

  *a2 = *(v3 + 16);
}

uint64_t sub_21BD80980()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v7 = v0[2];
  v53[0] = v6;
  v8 = (v6 >> 62);
  if (v6 >> 62)
  {
LABEL_35:
    v30 = v3;
    v31 = sub_21BE2951C();
    v3 = v30;
    if (!v31)
    {
      return 0;
    }
  }

  else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v52 = v7;
  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    return 0;
  }

  v32 = v3;
  v33 = sub_21BE2951C();
  v9 = v7 >> 62;
  v34 = v33;
  v3 = v32;
  if (!v34)
  {
    return 0;
  }

LABEL_5:
  v48 = MEMORY[0x277D84FA0];
  v38 = v3;
  v39 = v9;
  if (v8)
  {
    v8 = sub_21BE2951C();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v0[3];
  v51 = *(v0 + 32);
  v11 = v0[5];
  v49 = v0[6];
  v50 = v10;
  sub_21BBA3854(v53, v47, &qword_27CDBBD88, &unk_21BE48EC0);
  sub_21BBA3854(&v52, v47, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BBA3854(&v50, v47, &qword_27CDB5C50, &qword_21BE33490);
  v45 = v11;

  v3 = sub_21BBA3854(&v49, v47, &qword_27CDBBD90, &qword_21BE48ED0);
  if (v8)
  {
    v36 = v5;
    v37 = v2;
    v5 = 0;
    v43 = v6 & 0xC000000000000001;
    v44 = v7;
    v41 = v8;
    v42 = v6 & 0xFFFFFFFFFFFFFF8;
    v40 = v6;
    v7 = &qword_27CDBBD90;
    while (1)
    {
      if (v43)
      {
        v12 = MEMORY[0x21CF047C0](v5, v6);
        v8 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v15 = v48;
          v5 = v36;
          v2 = v37;
          v7 = v44;
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v12 = *(v6 + 8 * v5 + 32);
        v8 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_17;
        }
      }

      v46 = v12;
      v13 = [v12 participants];
      sub_21BD843E0();
      v14 = sub_21BE28C3C();

      sub_21BBA3854(v53, v47, &qword_27CDBBD88, &unk_21BE48EC0);
      sub_21BBA3854(&v52, v47, &qword_27CDB5CC8, &qword_21BE36190);
      v0 = &qword_21BE33490;
      sub_21BBA3854(&v50, v47, &qword_27CDB5C50, &qword_21BE33490);
      v2 = v45;

      sub_21BBA3854(&v49, v47, &qword_27CDBBD90, &qword_21BE48ED0);
      sub_21BD839BC(v14, v44);
      sub_21BB3A4CC(v53, &qword_27CDBBD88, &unk_21BE48EC0);
      sub_21BB3A4CC(&v52, &qword_27CDB5CC8, &qword_21BE36190);
      sub_21BB3A4CC(&v50, &qword_27CDB5C50, &qword_21BE33490);

      sub_21BB3A4CC(&v49, &qword_27CDBBD90, &qword_21BE48ED0);

      v6 = v40;

      ++v5;
      if (v8 == v41)
      {
        goto LABEL_18;
      }
    }
  }

  v15 = MEMORY[0x277D84FA0];
LABEL_20:
  sub_21BB3A4CC(v53, &qword_27CDBBD88, &unk_21BE48EC0);
  sub_21BB3A4CC(&v52, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3A4CC(&v50, &qword_27CDB5C50, &qword_21BE33490);

  sub_21BB3A4CC(&v49, &qword_27CDBBD90, &qword_21BE48ED0);
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*(v15 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (!sub_21BE2951C())
  {
LABEL_25:
    sub_21BE261BC();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21BB3D81C(0x64616548627573, 0xE700000000000000, v47);
      _os_log_impl(&dword_21BB35000, v18, v19, "%s no one in password group is part of family", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v2 + 8))(v5, v38);

    return 0;
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21BE33260;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = sub_21BE2951C();
  }

  else
  {
    v17 = *(v15 + 16);
  }

  v23 = MEMORY[0x277D83B88];
  v24 = MEMORY[0x277D83C10];
  *(v16 + 56) = MEMORY[0x277D83B88];
  *(v16 + 64) = v24;
  *(v16 + 32) = v17;
  if (v39)
  {
    v25 = sub_21BE2951C();
  }

  else
  {
    v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v16 + 96) = v23;
  *(v16 + 104) = v24;
  *(v16 + 72) = v25;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();

  v28 = [v27 bundleForClass_];
  sub_21BE2599C();

  v29 = sub_21BE289DC();

  return v29;
}

void sub_21BD81050(_OWORD *a1@<X8>)
{
  v2 = sub_21BE2838C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_21BE289CC();
  v8 = [v6 initWithBundleIdentifier_];

  v9 = [objc_opt_self() imageDescriptorNamed_];
  v10 = [v8 prepareImageForDescriptor_];

  if (!v10)
  {
    sub_21BE2837C();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v14 = sub_21BE283CC();

    (*(v3 + 8))(v5, v2);
    LOBYTE(v20[0]) = 1;
    LOBYTE(v18[0]) = 1;
    v27 = v14;
    *v28 = 1;
    *&v28[2] = v25;
    *&v28[18] = v26[0];
    *&v28[32] = *(v26 + 14);
    v28[40] = 1;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C8, &qword_21BE3E900);
    sub_21BD8353C(&qword_27CDB8108, &qword_27CDB8110, &unk_21BE3AE10, MEMORY[0x277CDF678]);
    sub_21BD8353C(&qword_27CDB90D0, &qword_27CDB90C8, &qword_21BE3E900, MEMORY[0x277CE01B0]);
    sub_21BE2784C();

    v27 = v22;
    *v28 = v23;
    *&v28[16] = v24[0];
    *&v28[25] = *(v24 + 9);
    goto LABEL_5;
  }

  v16 = a1;
  v11 = [v10 CGImage];
  if (v11)
  {
    v12 = v11;
    [v10 iconSize];
    [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    sub_21BE2836C();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v13 = sub_21BE283CC();

    (*(v3 + 8))(v5, v2);
    sub_21BE2869C();
    sub_21BE26F2C();
    v21 = BYTE8(v25);
    v19 = BYTE8(v26[0]);
    v17 = 0;
    *&v27 = v13;
    *(&v27 + 1) = v25;
    v28[0] = BYTE8(v25);
    *&v28[1] = v20[0];
    *&v28[4] = *(v20 + 3);
    *&v28[8] = *&v26[0];
    v28[16] = BYTE8(v26[0]);
    *&v28[17] = v18[0];
    *&v28[20] = *(v18 + 3);
    *&v28[24] = v26[1];
    v28[40] = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C8, &qword_21BE3E900);
    sub_21BD8353C(&qword_27CDB8108, &qword_27CDB8110, &unk_21BE3AE10, MEMORY[0x277CDF678]);
    sub_21BD8353C(&qword_27CDB90D0, &qword_27CDB90C8, &qword_21BE3E900, MEMORY[0x277CE01B0]);
    sub_21BE2784C();

    v27 = v22;
    *v28 = v23;
    *&v28[16] = v24[0];
    *&v28[25] = *(v24 + 9);
    a1 = v16;
LABEL_5:
    v15 = *v28;
    *a1 = v27;
    a1[1] = v15;
    a1[2] = *&v28[16];
    *(a1 + 41) = *&v28[25];
    return;
  }

  __break(1u);
}

double sub_21BD815B8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v100 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v99 = &v90 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD68, &qword_21BE48E98);
  v101 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v104 = &v90 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD70, &qword_21BE48EA0);
  v103 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v102 = &v90 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD78, &qword_21BE48EA8);
  MEMORY[0x28223BE20](v108);
  v109 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD80, &unk_21BE48EB0);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = &v90 - v12;
  v13 = sub_21BE2754C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = *(v2 + 32);
  v17 = *(v2 + 24);
  v141 = v17;
  if (v142 == 1)
  {
    v122 = v17;
  }

  else
  {

    sub_21BE28FEC();
    v18 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v141, &qword_27CDB5C50, &qword_21BE33490);
    (*(v14 + 8))(v16, v13);
  }

  v19 = swift_allocBox();
  v21 = v20;
  type metadata accessor for ChecklistStateVars(0);
  sub_21BD836F4(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE2864C();
  v22 = *(v2 + 8);
  v106 = *v2;
  v107 = v22;
  v23 = *(v2 + 16);
  v140 = v22;
  if (v22 >> 62)
  {
    v24 = sub_21BE2951C();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = v19;
  v139 = v23;
  v105 = v23;
  if (v24)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = objc_opt_self();
    sub_21BBA3854(&v140, &v122, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v139, &v122, &qword_27CDB5CC8, &qword_21BE36190);
    v27 = [v26 bundleForClass_];
    v28 = sub_21BE2599C();
    v30 = v29;

    v31 = sub_21BD80980();
    v33 = v32;
    v34 = [v26 bundleForClass_];
    v35 = sub_21BE2599C();
    v37 = v36;

    sub_21BD81050(&v119);
    v115[0] = *(v2 + 48);
    v38 = swift_allocObject();
    v39 = *(v2 + 16);
    *(v38 + 16) = *v2;
    *(v38 + 32) = v39;
    *(v38 + 48) = *(v2 + 32);
    *(v38 + 64) = *(v2 + 48);
    v135 = &type metadata for SharedPasswordsItem;
    v40 = sub_21BBDAAC0();
    v132 = v106;
    v133 = v107;
    v136 = v40;
    v134 = v105;
    v122 = v28;
    v123 = v30;
    v124 = v31;
    v125 = v33;
    v126 = v35;
    v127 = v37;
    sub_21BBA3854(&v141, &v116, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v140, &v116, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v139, &v116, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(v115, &v116, &qword_27CDBBD90, &qword_21BE48ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD98, &unk_21BE48ED8);
    sub_21BD83470();
    v137 = sub_21BE2852C();
    v130 = v38;
    v131 = 0;
    v128 = 0;
    v129 = sub_21BD84678;
    sub_21BBC7A18(&v122, v109);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBDA8, &qword_21BE48EE8);
    v43 = sub_21BBC2528();
    v44 = sub_21BD835AC();
    *&v119 = &type metadata for ChecklistNotSetupButtonCell;
    *(&v119 + 1) = v42;
    *&v120 = v43;
    *(&v120 + 1) = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = sub_21BB41FA4();
    v47 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    *&v119 = v111;
    *(&v119 + 1) = MEMORY[0x277D837D0];
    *&v120 = v41;
    *(&v120 + 1) = MEMORY[0x277CE0BD8];
    *&v121[0] = OpaqueTypeConformance2;
    *(&v121[0] + 1) = v46;
    *&v121[1] = v47;
    *(&v121[1] + 1) = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v48 = v110;
    sub_21BE2784C();
    sub_21BBC7A74(&v122);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v49 = swift_getObjCClassFromMetadata();
    v50 = objc_opt_self();
    sub_21BBA3854(&v140, &v122, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v139, &v122, &qword_27CDB5CC8, &qword_21BE36190);
    v51 = v49;
    v52 = [v50 bundleForClass_];
    v53 = sub_21BE2599C();
    v93 = v54;
    v94 = v53;

    v96 = v50;
    v97 = v51;
    v55 = v51;
    v56 = [v50 bundleForClass_];
    v57 = sub_21BE2599C();
    v91 = v58;
    v92 = v57;

    sub_21BD81050(&v119);
    v59 = *(v2 + 48);
    v95 = *(v2 + 40);
    v98 = v59;
    v138 = v59;
    v60 = swift_allocObject();
    v61 = *(v2 + 16);
    *(v60 + 16) = *v2;
    *(v60 + 32) = v61;
    *(v60 + 48) = *(v2 + 32);
    *(v60 + 64) = *(v2 + 48);
    sub_21BBA3854(&v141, &v122, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v140, &v122, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v139, &v122, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(&v138, &v122, &qword_27CDBBD90, &qword_21BE48ED0);
    v62 = [v50 bundleForClass_];
    v63 = sub_21BE2599C();
    v65 = v64;

    v135 = &type metadata for SharedPasswordsItem;
    v66 = sub_21BBDAAC0();
    v132 = v106;
    v133 = v107;
    v136 = v66;
    v134 = v105;
    v116 = v119;
    v117 = v120;
    v118[0] = v121[0];
    *(v118 + 9) = *(v121 + 9);
    v122 = v94;
    v123 = v93;
    v124 = v92;
    v125 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD98, &unk_21BE48ED8);
    sub_21BD83470();
    v137 = sub_21BE2852C();
    v128 = v60;
    v129 = v63;
    v130 = v65;
    v131 = 0;
    v126 = 0;
    v127 = sub_21BD83668;
    v67 = v100;
    (*(v100 + 16))(v6, v21, v3);
    v68 = v99;
    sub_21BE2863C();
    v69 = *(v67 + 8);
    v69(v6, v3);
    swift_getKeyPath();
    sub_21BE2865C();

    v69(v68, v3);
    v70 = swift_allocObject();
    v71 = *(v2 + 16);
    *(v70 + 16) = *v2;
    *(v70 + 32) = v71;
    *(v70 + 48) = *(v2 + 32);
    *(v70 + 64) = *(v2 + 48);
    sub_21BBA3854(&v141, v115, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v140, v115, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v139, v115, &qword_27CDB5CC8, &qword_21BE36190);
    v72 = v95;

    sub_21BBA3854(&v138, v115, &qword_27CDBBD90, &qword_21BE48ED0);

    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDA8, &qword_21BE48EE8);
    v106 = sub_21BBC2528();
    v107 = sub_21BD835AC();
    sub_21BE2812C();

    sub_21BBC79C4(&v122);
    v73 = [v96 bundleForClass_];
    v74 = sub_21BE2599C();
    v76 = v75;
    v100 = v75;

    v115[3] = v74;
    v115[4] = v76;
    *&v116 = v72;
    *(&v116 + 1) = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC0, &qword_21BE48F18);
    sub_21BE2841C();
    v77 = v122;
    v78 = v123;
    v79 = v124;
    swift_getKeyPath();
    *&v116 = v77;
    *(&v116 + 1) = v78;
    *&v117 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC8, &qword_21BE48F48);
    sub_21BE2855C();

    v99 = &v90;
    MEMORY[0x28223BE20](v80);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
    v122 = &type metadata for ChecklistNotSetupButtonCell;
    v123 = v105;
    v124 = v106;
    v125 = v107;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = sub_21BB41FA4();
    v89 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v83 = v111;
    v84 = v102;
    v85 = v104;
    sub_21BE280EC();

    (*(v101 + 8))(v85, v83);
    v86 = v103;
    v87 = v112;
    (*(v103 + 16))(v109, v84, v112);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v122 = v83;
    v123 = MEMORY[0x277D837D0];
    v124 = v98;
    v125 = MEMORY[0x277CE0BD8];
    v126 = v81;
    v127 = v82;
    v128 = v89;
    v129 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v48 = v110;
    sub_21BE2784C();
    (*(v86 + 8))(v84, v87);
  }

  sub_21BB56918(v48, v113);

  return result;
}

double sub_21BD82670(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 18))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 0;
    v9[2] = v6;
    sub_21BD836F4(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 18) = 0;
  }

  return result;
}

uint64_t sub_21BD82870@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC0, &qword_21BE48F18);
  sub_21BE283FC();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BD836F4(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v3 = sub_21BE26E9C();
  v5 = v4;
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SharedPasswordsFlowView(0);
  *(a2 + *(v7 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  *(a2 + 8) = v5 & 1;
  *(a2 + *(v7 + 24)) = v9;
  return result;
}

uint64_t sub_21BD82990@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a1;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v51 - v5;
  v55 = sub_21BE271FC();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v53 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  v21 = sub_21BE2599C();
  v23 = v22;

  v64 = v21;
  v65 = v23;
  sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  v24 = v17;
  v52 = v17;
  v25 = v62;
  sub_21BE27FBC();
  (*(v6 + 8))(v8, v55);
  v26 = v53;
  v54 = *(v53 + 8);
  v55 = v53 + 8;
  v54(v12, v25);
  v27 = [v19 bundleForClass_];
  v28 = sub_21BE2599C();
  v30 = v29;

  v64 = v28;
  v65 = v30;
  v31 = v56;
  sub_21BE26DEC();
  v32 = sub_21BE26DFC();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = *(a2 + 8);
  v69 = *(a2 + 16);
  v70 = v33;
  v34 = *(a2 + 24);
  v68 = *(a2 + 32);
  v66 = *(a2 + 48);
  v67 = v34;
  v35 = swift_allocObject();
  v36 = *(a2 + 16);
  *(v35 + 16) = *a2;
  *(v35 + 32) = v36;
  *(v35 + 48) = *(a2 + 32);
  *(v35 + 64) = *(a2 + 48);
  sub_21BBA3854(&v70, v63, &qword_27CDBBD88, &unk_21BE48EC0);
  sub_21BBA3854(&v69, v63, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BBA3854(&v67, v63, &qword_27CDB5C50, &qword_21BE33490);

  sub_21BBA3854(&v66, v63, &qword_27CDBBD90, &qword_21BE48ED0);
  v51 = v12;
  sub_21BE2844C();
  v37 = v57;
  v38 = v58;
  v39 = *(v58 + 16);
  v40 = v24;
  v41 = v59;
  v39(v57, v40, v59);
  v42 = *(v26 + 16);
  v43 = v60;
  v44 = v12;
  v45 = v62;
  v42(v60, v44, v62);
  v46 = v61;
  v39(v61, v37, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v42(&v46[*(v47 + 48)], v43, v45);
  v48 = v54;
  v54(v51, v45);
  v49 = *(v38 + 8);
  v49(v52, v41);
  v48(v43, v45);
  return (v49)(v37, v41);
}

double sub_21BD83000(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 18) == 1)
  {
    *(v6 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BD836F4(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  return result;
}

double sub_21BD83208(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC0, &qword_21BE48F18);
  sub_21BE283FC();
  if (*(v3 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD836F4(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel, byte_21BE40CC8);
    sub_21BE25F0C();
  }

  else
  {
    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t sub_21BD8334C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_21BD83470()
{
  result = qword_27CDBBDA0;
  if (!qword_27CDBBDA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBD98, &unk_21BE48ED8);
    v4[0] = sub_21BD8353C(&qword_27CDB8108, &qword_27CDB8110, &unk_21BE3AE10, MEMORY[0x277CDF678]);
    v4[1] = sub_21BD8353C(&qword_27CDB90D0, &qword_27CDB90C8, &qword_21BE3E900, MEMORY[0x277CE01B0]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBBDA0);
  }

  return result;
}

uint64_t sub_21BD8353C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = MEMORY[0x277CE1078];
    v8[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD835AC()
{
  result = qword_27CDBBDB0;
  if (!qword_27CDBBDB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBDA8, &qword_21BE48EE8);
    v4[0] = sub_21BD836F4(&qword_27CDBBDB8, type metadata accessor for SharedPasswordsFlowView, aQ_16);
    v4[1] = sub_21BC66030();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBDB0);
  }

  return result;
}

uint64_t objectdestroyTm_30()
{

  return swift_deallocObject();
}

uint64_t sub_21BD836F4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21BD8375C(id *a1, unint64_t a2)
{
  v2 = a2;
  v30 = *a1;
  if (a2 >> 62)
  {
    v3 = sub_21BE2951C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v28 = v2;
    v29 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v29)
      {
        v5 = MEMORY[0x21CF047C0](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v30 handle];
      v8 = sub_21BE28A0C();
      v10 = v9;

      v11 = [v6 appleID];
      if (v11)
      {
        v12 = v11;
        v13 = sub_21BE28A0C();
        v15 = v14;

        if (v8 == v13 && v10 == v15)
        {
          goto LABEL_5;
        }

        v17 = sub_21BE2995C();

        v2 = v28;
        if (v17)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v18 = [v30 handle];
      v19 = sub_21BE28A0C();
      v21 = v20;

      v22 = [v6 memberPhoneNumbers];
      if (!v22)
      {

        goto LABEL_7;
      }

      v23 = v22;
      v24 = sub_21BE28A0C();
      v26 = v25;

      if (v19 == v24 && v21 == v26)
      {
LABEL_5:

        v2 = v28;
        goto LABEL_6;
      }

      v27 = sub_21BE2995C();

      v2 = v28;
      if ((v27 & 1) == 0)
      {

        goto LABEL_7;
      }

LABEL_6:
      sub_21BC679A4(&v31, v6);

LABEL_7:
      if (v3 == ++v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_21BD839BC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF047C0](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_21BD8375C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id sub_21BD83ABC(unint64_t a1)
{
  v39 = sub_21BE25B9C();
  v2 = *(v39 - 8);
  v3 = MEMORY[0x28223BE20](v39);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (a1 >> 62)
  {
    result = sub_21BE2951C();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result != 1)
  {
    sub_21BE261BC();
    v28 = sub_21BE26A2C();
    v29 = sub_21BE28FFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE60840, &v40);
      _os_log_impl(&dword_21BB35000, v28, v29, "%s Opening passwords manager deeplink", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x21CF05C50](v31, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v32 = [objc_opt_self() passwordManagerURL];
    sub_21BE25B5C();

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v33 = result;
      v7 = v5;
LABEL_18:
      v35 = sub_21BE25B2C();
      sub_21BBB52D8(MEMORY[0x277D84F90]);
      v36 = sub_21BE288EC();

      [v33 openSensitiveURL:v35 withOptions:v36];

      return (*(v2 + 8))(v7, v39);
    }

    goto LABEL_22;
  }

  v38 = v8;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = MEMORY[0x21CF047C0](0, a1);
LABEL_7:
  v17 = v16;
  v18 = [v16 groupID];

  v19 = v18;
  if (!v18)
  {
    sub_21BE28A0C();
    v19 = sub_21BE289CC();
  }

  v20 = sub_21BE28A0C();
  v22 = v21;
  sub_21BE261BC();

  v23 = sub_21BE26A2C();
  v24 = sub_21BE28FFC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE60840, &v40);
    *(v25 + 12) = 2080;
    v27 = sub_21BB3D81C(v20, v22, &v40);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_21BB35000, v23, v24, "%s Opening passwords manager deeplink for groupID: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v26, -1, -1);
    MEMORY[0x21CF05C50](v25, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v14, v38);
  v2 = v37;
  v34 = [objc_opt_self() passwordManagerURLForSharingGroupWithGroupID_];

  sub_21BE25B5C();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v33 = result;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

double sub_21BD84088(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC0, &qword_21BE48F18);
  sub_21BE283FC();
  v10 = [*(v19 + 24) isKeychainSyncEnabled];

  if (v10)
  {
    if (a1 >> 62)
    {
      if (sub_21BE2951C())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      sub_21BD83ABC(a1);
      return result;
    }

    v20 = a2;
    v21 = a3;
    sub_21BE283FC();
    sub_21BCE3398();
  }

  else
  {
    sub_21BE261BC();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FFC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_21BB3D81C(0x6C4668636E75616CLL, 0xEC0000002928776FLL, &v20);
      _os_log_impl(&dword_21BB35000, v12, v13, "%s keychain sync is disabled, showing alert to enable", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v20 = a2;
    v21 = a3;
    sub_21BE283FC();
    v16 = v19;
    if (*(v19 + 16) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v18 - 2) = v16;
      *(&v18 - 8) = 1;
      v20 = v16;
      sub_21BD836F4(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel, byte_21BE40CC8);
      sub_21BE25F0C();

      return result;
    }

    *(v19 + 16) = 1;
  }

  return result;
}

unint64_t sub_21BD843E0()
{
  result = qword_27CDBBDD0;
  if (!qword_27CDBBDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDBBDD0);
  }

  return result;
}

uint64_t sub_21BD8442C(uint64_t a1, int a2)
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

uint64_t sub_21BD84474(uint64_t result, int a2, int a3)
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

unint64_t sub_21BD844D0()
{
  result = qword_27CDBBDD8;
  if (!qword_27CDBBDD8)
  {
    v10[18] = v0;
    v10[19] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBD80, &unk_21BE48EB0);
    v4 = sub_21BBC24D4();
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBD68, &qword_21BE48E98);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBDA8, &qword_21BE48EE8);
    sub_21BBC2528();
    sub_21BD835AC();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v8 = sub_21BB41FA4();
    v9 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v10[2] = v5;
    v10[3] = MEMORY[0x277D837D0];
    v10[4] = v6;
    v10[5] = MEMORY[0x277CE0BD8];
    v10[6] = OpaqueTypeConformance2;
    v10[7] = v8;
    v10[8] = v9;
    v10[9] = MEMORY[0x277CE0BC8];
    v10[0] = v4;
    v10[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v10);
    atomic_store(result, &qword_27CDBBDD8);
  }

  return result;
}

uint64_t sub_21BD846A8(unsigned __int8 a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD847BC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_21BE2590C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE258FC();
  sub_21BE258DC();
  MEMORY[0x21CF00A60](7824750, 0xE300000000000000);
  sub_21BD84F5C();
  sub_21BE2587C();
  sub_21BE258AC();
  v9 = sub_21BE25B9C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_21BB3A4CC(v4, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BD89A94();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

uint64_t sub_21BD84A0C()
{
  v1[18] = v0;
  v2 = sub_21BE25B9C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD84ACC, 0, 0);
}

uint64_t sub_21BD84ACC()
{
  sub_21BD847BC(v0[21]);
  v0[22] = objc_opt_self();
  sub_21BE28D7C();
  v0[23] = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD84BCC, v2, v1);
}

uint64_t sub_21BD84BCC()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_21BD84C50, 0, 0);
}

uint64_t sub_21BD84C50(uint64_t a1)
{
  v2 = v1[24];
  v3 = sub_21BE25B2C();
  v1[25] = v3;
  sub_21BBB6C98(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_21BD89A3C();
  v4 = sub_21BE288EC();
  v1[26] = v4;

  v1[2] = v1;
  v1[7] = v1 + 27;
  v1[3] = sub_21BD84DE0;
  v5 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21BBDC4C4;
  v1[13] = &block_descriptor_49;
  v1[14] = v5;
  [v2 openURL:v3 options:v4 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21BD84DE0()
{

  return MEMORY[0x2822009F8](sub_21BD84EC0, 0, 0);
}

uint64_t sub_21BD84EC0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

char *sub_21BD84F5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6250, &unk_21BE49110);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v331 = &v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v330 = &v295 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v329 = &v295 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v326 = &v295 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v323 = &v295 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v295 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v295 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v295 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v295 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v295 - v23;
  v25 = sub_21BE2585C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v298 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v297 = &v295 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v314 = &v295 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v313 = &v295 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v350 = &v295 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v312 = &v295 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v349 = &v295 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v348 = &v295 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v311 = &v295 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v347 = &v295 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v328 = &v295 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v327 = &v295 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v346 = &v295 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v310 = &v295 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v345 = &v295 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v344 = &v295 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v309 = &v295 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v343 = &v295 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v342 = &v295 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v308 = &v295 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v341 = &v295 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v340 = &v295 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v307 = &v295 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v339 = &v295 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v325 = &v295 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v324 = &v295 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v351 = &v295 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v306 = &v295 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v338 = &v295 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v337 = &v295 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v305 = &v295 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v336 = &v295 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v335 = &v295 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v304 = &v295 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v334 = &v295 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v322 = &v295 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v321 = &v295 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v333 = &v295 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v303 = &v295 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v332 = &v295 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v302 = &v295 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v301 = &v295 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v300 = &v295 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v299 = &v295 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v318 = &v295 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v317 = &v295 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v316 = &v295 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v315 = &v295 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v125 = &v295 - v124;
  MEMORY[0x28223BE20](v123);
  v127 = &v295 - v126;
  v355 = v26;
  v356 = MEMORY[0x277D84F90];
  v128 = *(v1 + 24);
  v352 = v1;
  if (!v128)
  {
    v353 = *(v26 + 56);
    v353(v24, 1, 1, v25);
LABEL_5:
    sub_21BB3A4CC(v24, &qword_27CDB6250, &unk_21BE49110);
    v129 = *(v1 + 48);
    if (!v129)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v355;
  sub_21BE2582C();
  v353 = *(v26 + 56);
  v353(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v352;
    goto LABEL_5;
  }

  v354 = *(v26 + 32);
  v354(v127, v24, v25);
  (*(v26 + 16))(v125, v127, v25);
  v152 = sub_21BBBD914(0, 1, 1, MEMORY[0x277D84F90]);
  v154 = *(v152 + 2);
  v153 = *(v152 + 3);
  v296 = v19;
  if (v154 >= v153 >> 1)
  {
    v152 = sub_21BBBD914((v153 > 1), v154 + 1, 1, v152);
  }

  v155 = v355;
  v156 = v355 + 8;
  (*(v355 + 8))(v127, v25);
  *(v152 + 2) = v154 + 1;
  v157 = &v152[((*(v156 + 72) + 32) & ~*(v156 + 72)) + *(v156 + 64) * v154];
  v26 = v155;
  v354(v157, v125, v25);
  v356 = v152;
  v1 = v352;
  v19 = v296;
  v129 = *(v352 + 48);
  if (v129)
  {
LABEL_6:
    v131 = *(v1 + 56);
    v130 = *(v1 + 64);
    v357 = *(v1 + 32);
    v358 = v129;
    v359 = v131;
    v360 = v130;
    v132 = sub_21BD87978();
    sub_21BDE5BC0(v132);
  }

LABEL_7:
  v133 = *(v1 + 88);

  sub_21BD88DC0(v133, v22);

  v354 = *(v26 + 48);
  if (v354(v22, 1, v25) == 1)
  {
    sub_21BB3A4CC(v22, &qword_27CDB6250, &unk_21BE49110);
  }

  else
  {
    v134 = *(v26 + 32);
    v135 = v315;
    v134(v315, v22, v25);
    (*(v26 + 16))(v316, v135, v25);
    v136 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_21BBBD914(0, *(v136 + 2) + 1, 1, v136);
    }

    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    if (v138 >= v137 >> 1)
    {
      v136 = sub_21BBBD914((v137 > 1), v138 + 1, 1, v136);
    }

    (*(v26 + 8))(v315, v25);
    *(v136 + 2) = v138 + 1;
    v134(&v136[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v138], v316, v25);
    v356 = v136;
    v1 = v352;
  }

  v139 = *(v1 + 112);

  sub_21BD88FB4(v139, v19);

  if (v354(v19, 1, v25) == 1)
  {
    sub_21BB3A4CC(v19, &qword_27CDB6250, &unk_21BE49110);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v140 = v319;
    v353(v319, 1, 1, v25);
    goto LABEL_29;
  }

  v147 = *(v26 + 32);
  v148 = v317;
  v147(v317, v19, v25);
  (*(v26 + 16))(v318, v148, v25);
  v149 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_21BBBD914(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_21BBBD914((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v26 + 8))(v317, v25);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v151], v318, v25);
  v356 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v140 = v319;
  sub_21BE2582C();
  v353(v140, 0, 1, v25);

  if (v354(v140, 1, v25) != 1)
  {
    v141 = *(v26 + 32);
    v142 = v299;
    v141(v299, v140, v25);
    (*(v26 + 16))(v300, v142, v25);
    v143 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_21BBBD914(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_21BBBD914((v144 > 1), v145 + 1, 1, v143);
    }

    (*(v26 + 8))(v299, v25);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v145], v300, v25);
    v356 = v143;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_21BB3A4CC(v140, &qword_27CDB6250, &unk_21BE49110);
  if (!*(v1 + 176))
  {
LABEL_22:
    v146 = v320;
    v353(v320, 1, 1, v25);
LABEL_31:
    sub_21BB3A4CC(v146, &qword_27CDB6250, &unk_21BE49110);
    goto LABEL_41;
  }

LABEL_30:

  v146 = v320;
  sub_21BE2582C();
  v353(v146, 0, 1, v25);

  if (v354(v146, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v158 = *(v26 + 32);
  v159 = v301;
  v158(v301, v146, v25);
  (*(v26 + 16))(v302, v159, v25);
  v160 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_21BBBD914(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_21BBBD914((v161 > 1), v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v301, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v302, v25);
  v356 = v160;
LABEL_41:

  sub_21BD898E4(v163);
  if (v164)
  {
    v165 = v303;
    sub_21BE2582C();

    v166 = *(v26 + 32);
    v167 = v332;
    v166(v332, v165, v25);
    (*(v26 + 16))(v333, v167, v25);
    v168 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_21BBBD914(0, *(v168 + 2) + 1, 1, v168);
    }

    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_21BBBD914((v169 > 1), v170 + 1, 1, v168);
    }

    (*(v26 + 8))(v332, v25);
    *(v168 + 2) = v170 + 1;
    v166(&v168[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v170], v333, v25);
    v356 = v168;
  }

  else
  {
  }

  v171 = type metadata accessor for TapToRadarDraft(0);
  v172 = v323;
  sub_21BD8910C(v323);
  if (v354(v172, 1, v25) == 1)
  {
    sub_21BB3A4CC(v172, &qword_27CDB6250, &unk_21BE49110);
  }

  else
  {
    v173 = *(v26 + 32);
    v174 = v321;
    v173(v321, v172, v25);
    (*(v26 + 16))(v322, v174, v25);
    v175 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_21BBBD914(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_21BBBD914((v176 > 1), v177 + 1, 1, v175);
    }

    (*(v26 + 8))(v321, v25);
    *(v175 + 2) = v177 + 1;
    v173(&v175[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v177], v322, v25);
    v356 = v175;
    v1 = v352;
  }

  sub_21BD896D0(v178);
  if (v179)
  {
    v180 = v304;
    sub_21BE2582C();

    v181 = *(v26 + 32);
    v182 = v334;
    v181(v334, v180, v25);
    (*(v26 + 16))(v335, v182, v25);
    v183 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_21BBBD914(0, *(v183 + 2) + 1, 1, v183);
    }

    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_21BBBD914((v184 > 1), v185 + 1, 1, v183);
    }

    (*(v26 + 8))(v334, v25);
    *(v183 + 2) = v185 + 1;
    v181(&v183[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v185], v335, v25);
    v356 = v183;
    v1 = v352;
  }

  else
  {
  }

  sub_21BD896D0(v186);
  if (v187)
  {
    v188 = v305;
    sub_21BE2582C();

    v189 = *(v26 + 32);
    v190 = v336;
    v189(v336, v188, v25);
    (*(v26 + 16))(v337, v190, v25);
    v191 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_21BBBD914(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_21BBBD914((v192 > 1), v193 + 1, 1, v191);
    }

    (*(v26 + 8))(v336, v25);
    *(v191 + 2) = v193 + 1;
    v189(&v191[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v193], v337, v25);
    v356 = v191;
    v1 = v352;
  }

  else
  {
  }

  sub_21BD895A0(v194);
  if (v195)
  {
    v196 = v306;
    sub_21BE2582C();

    v197 = *(v26 + 32);
    v198 = v338;
    v197(v338, v196, v25);
    (*(v26 + 16))(v351, v198, v25);
    v199 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = sub_21BBBD914(0, *(v199 + 2) + 1, 1, v199);
    }

    v201 = *(v199 + 2);
    v200 = *(v199 + 3);
    if (v201 >= v200 >> 1)
    {
      v199 = sub_21BBBD914((v200 > 1), v201 + 1, 1, v199);
    }

    (*(v26 + 8))(v338, v25);
    *(v199 + 2) = v201 + 1;
    v197(&v199[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v201], v351, v25);
    v356 = v199;
    v1 = v352;
  }

  else
  {
  }

  v202 = v326;
  sub_21BE2582C();

  v351 = (v26 + 56);
  v353(v202, 0, 1, v25);

  if (v354(v202, 1, v25) == 1)
  {
    sub_21BB3A4CC(v202, &qword_27CDB6250, &unk_21BE49110);
  }

  else
  {
    v203 = *(v26 + 32);
    v204 = v324;
    v203(v324, v202, v25);
    (*(v26 + 16))(v325, v204, v25);
    v205 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_21BBBD914(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_21BBBD914((v206 > 1), v207 + 1, 1, v205);
    }

    v208 = v355 + 8;
    (*(v355 + 8))(v324, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v208 + 72) + 32) & ~*(v208 + 72)) + *(v208 + 64) * v207], v325, v25);
    v356 = v205;
  }

  sub_21BD895A0(v209);
  if (v210)
  {
    v211 = v307;
    sub_21BE2582C();

    v212 = v355;
    v213 = *(v355 + 32);
    v214 = v339;
    v213(v339, v211, v25);
    (*(v212 + 16))(v340, v214, v25);
    v215 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_21BBBD914(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_21BBBD914((v216 > 1), v217 + 1, 1, v215);
    }

    v218 = v355 + 8;
    (*(v355 + 8))(v339, v25);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v218 + 72) + 32) & ~*(v218 + 72)) + *(v218 + 64) * v217], v340, v25);
    v356 = v215;
  }

  else
  {
  }

  sub_21BD893C8(v219);
  if (v220)
  {
    v221 = v308;
    sub_21BE2582C();

    v222 = v355;
    v223 = *(v355 + 32);
    v224 = v341;
    v223(v341, v221, v25);
    (*(v222 + 16))(v342, v224, v25);
    v225 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = sub_21BBBD914(0, *(v225 + 2) + 1, 1, v225);
    }

    v227 = *(v225 + 2);
    v226 = *(v225 + 3);
    if (v227 >= v226 >> 1)
    {
      v225 = sub_21BBBD914((v226 > 1), v227 + 1, 1, v225);
    }

    v228 = v355 + 8;
    (*(v355 + 8))(v341, v25);
    *(v225 + 2) = v227 + 1;
    v223(&v225[((*(v228 + 72) + 32) & ~*(v228 + 72)) + *(v228 + 64) * v227], v342, v25);
    v356 = v225;
  }

  else
  {
  }

  sub_21BD895A0(v229);
  if (v230)
  {
    v231 = v309;
    sub_21BE2582C();

    v232 = v355;
    v233 = *(v355 + 32);
    v234 = v343;
    v233(v343, v231, v25);
    (*(v232 + 16))(v344, v234, v25);
    v235 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = sub_21BBBD914(0, *(v235 + 2) + 1, 1, v235);
    }

    v237 = *(v235 + 2);
    v236 = *(v235 + 3);
    if (v237 >= v236 >> 1)
    {
      v235 = sub_21BBBD914((v236 > 1), v237 + 1, 1, v235);
    }

    v238 = v355 + 8;
    (*(v355 + 8))(v343, v25);
    *(v235 + 2) = v237 + 1;
    v233(&v235[((*(v238 + 72) + 32) & ~*(v238 + 72)) + *(v238 + 64) * v237], v344, v25);
    v356 = v235;
  }

  else
  {
  }

  v239 = *(v1 + v171[19] + 16);

  sub_21BD88490(v239);
  if (v240)
  {
    v241 = v310;
    sub_21BE2582C();

    v242 = v355;
    v243 = *(v355 + 32);
    v244 = v345;
    v243(v345, v241, v25);
    (*(v242 + 16))(v346, v244, v25);
    v245 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_21BBBD914(0, *(v245 + 2) + 1, 1, v245);
    }

    v247 = *(v245 + 2);
    v246 = *(v245 + 3);
    if (v247 >= v246 >> 1)
    {
      v245 = sub_21BBBD914((v246 > 1), v247 + 1, 1, v245);
    }

    v248 = v355 + 8;
    (*(v355 + 8))(v345, v25);
    *(v245 + 2) = v247 + 1;
    v243(&v245[((*(v248 + 72) + 32) & ~*(v248 + 72)) + *(v248 + 64) * v247], v346, v25);
    v356 = v245;
  }

  else
  {
  }

  v249 = v329;
  sub_21BE2582C();

  v353(v249, 0, 1, v25);
  v250 = v249;

  if (v354(v249, 1, v25) == 1)
  {
    sub_21BB3A4CC(v249, &qword_27CDB6250, &unk_21BE49110);
  }

  else
  {
    v251 = v355;
    v252 = *(v355 + 32);
    v253 = v327;
    v252(v327, v250, v25);
    (*(v251 + 16))(v328, v253, v25);
    v254 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v254 = sub_21BBBD914(0, *(v254 + 2) + 1, 1, v254);
    }

    v256 = *(v254 + 2);
    v255 = *(v254 + 3);
    if (v256 >= v255 >> 1)
    {
      v254 = sub_21BBBD914((v255 > 1), v256 + 1, 1, v254);
    }

    v257 = v355 + 8;
    (*(v355 + 8))(v327, v25);
    *(v254 + 2) = v256 + 1;
    v252(&v254[((*(v257 + 72) + 32) & ~*(v257 + 72)) + *(v257 + 64) * v256], v328, v25);
    v356 = v254;
  }

  v258 = *(v1 + v171[21] + 16);

  sub_21BD88994(v258);
  if (v259)
  {
    v260 = v311;
    sub_21BE2582C();

    v261 = v355;
    v262 = *(v355 + 32);
    v263 = v347;
    v262(v347, v260, v25);
    (*(v261 + 16))(v348, v263, v25);
    v264 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v264 = sub_21BBBD914(0, *(v264 + 2) + 1, 1, v264);
    }

    v266 = *(v264 + 2);
    v265 = *(v264 + 3);
    if (v266 >= v265 >> 1)
    {
      v264 = sub_21BBBD914((v265 > 1), v266 + 1, 1, v264);
    }

    v267 = v355 + 8;
    (*(v355 + 8))(v347, v25);
    *(v264 + 2) = v266 + 1;
    v262(&v264[((*(v267 + 72) + 32) & ~*(v267 + 72)) + *(v267 + 64) * v266], v348, v25);
    v356 = v264;
  }

  else
  {
  }

  sub_21BD895A0(v268);
  if (v269)
  {
    v270 = v312;
    sub_21BE2582C();

    v271 = v355;
    v272 = *(v355 + 32);
    v273 = v349;
    v272(v349, v270, v25);
    (*(v271 + 16))(v350, v273, v25);
    v274 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v274 = sub_21BBBD914(0, *(v274 + 2) + 1, 1, v274);
    }

    v276 = *(v274 + 2);
    v275 = *(v274 + 3);
    if (v276 >= v275 >> 1)
    {
      v274 = sub_21BBBD914((v275 > 1), v276 + 1, 1, v274);
    }

    v277 = v355 + 8;
    (*(v355 + 8))(v349, v25);
    *(v274 + 2) = v276 + 1;
    v272(&v274[((*(v277 + 72) + 32) & ~*(v277 + 72)) + *(v277 + 64) * v276], v350, v25);
    v356 = v274;
  }

  else
  {
  }

  if (!*(v1 + v171[23] + 24))
  {
    v278 = v330;
    v353(v330, 1, 1, v25);
    v280 = v355;
    goto LABEL_140;
  }

  v278 = v330;
  sub_21BE2582C();
  v353(v278, 0, 1, v25);

  v279 = v354(v278, 1, v25);
  v280 = v355;
  if (v279 == 1)
  {
LABEL_140:
    sub_21BB3A4CC(v278, &qword_27CDB6250, &unk_21BE49110);
    goto LABEL_141;
  }

  v281 = *(v355 + 32);
  v282 = v313;
  v281(v313, v278, v25);
  (*(v280 + 16))(v314, v282, v25);
  v283 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_21BBBD914(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_21BBBD914((v284 > 1), v285 + 1, 1, v283);
  }

  v280 = v355;
  v286 = v355 + 8;
  (*(v355 + 8))(v313, v25);
  *(v283 + 2) = v285 + 1;
  v281(&v283[((*(v286 + 72) + 32) & ~*(v286 + 72)) + *(v286 + 64) * v285], v314, v25);
  v356 = v283;
LABEL_141:
  if (!*(v352 + v171[24] + 24))
  {
    v287 = v331;
    v353(v331, 1, 1, v25);
    goto LABEL_149;
  }

  v287 = v331;
  sub_21BE2582C();
  v353(v287, 0, 1, v25);

  if (v354(v287, 1, v25) == 1)
  {
LABEL_149:
    sub_21BB3A4CC(v287, &qword_27CDB6250, &unk_21BE49110);
    return v356;
  }

  v288 = *(v280 + 32);
  v289 = v297;
  v288(v297, v287, v25);
  v290 = v298;
  (*(v280 + 16))(v298, v289, v25);
  v291 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_21BBBD914(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_21BBBD914((v292 > 1), v293 + 1, 1, v291);
  }

  (*(v280 + 8))(v289, v25);
  *(v291 + 2) = v293 + 1;
  v288(&v291[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v293], v290, v25);
  return v291;
}

uint64_t sub_21BD87978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
  sub_21BE2585C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21BE362A0;
  sub_21BE2992C();
  sub_21BE2582C();

  sub_21BE2582C();
  sub_21BE2582C();
  return v0;
}

uint64_t sub_21BD87AF4()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  sub_21BE28ABC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BD87B74(uint64_t a1)
{
  MEMORY[0x21CF04C80](*v1);
  sub_21BE28ABC();

  return sub_21BE28ABC();
}

uint64_t sub_21BD87BE4(uint64_t a1)
{
  v2 = *v1;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v2);
  sub_21BE28ABC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BD87C60(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_21BE2995C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_21BE2995C();
}

unint64_t sub_21BD87D14(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21BD87E78(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21BD87D14(*a1);
  v5 = v4;
  if (v3 == sub_21BD87D14(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

uint64_t sub_21BD87F00()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BD87D14(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD87F64(uint64_t a1)
{
  sub_21BD87D14(*v1);
  sub_21BE28ABC();
}

uint64_t sub_21BD87FB8(uint64_t a1)
{
  v2 = *v1;
  sub_21BE29ACC();
  sub_21BD87D14(v2);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BD88018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BD8AD6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21BD88048@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BD87D14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BD88088(uint64_t a1)
{
  sub_21BE28ABC();
}

unint64_t sub_21BD8818C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BD8ADB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BD881BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21BD882A0(uint64_t a1)
{
  sub_21BE28ABC();
}

unint64_t sub_21BD8839C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BD8AE04(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BD883CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_21BD88490(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_21BBBC990(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_21BBBC990((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_21BBBC990((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_21BBBC990((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_21BBBC990((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_21BBBC990((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
            sub_21BBBF03C();
            v1 = sub_21BE2897C();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_21BBBC990((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000021BE608A0;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_21BBBC990((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_21BBBC990((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_21BD88954@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21BD8AD34(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21BD88994(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_21BE2995C();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21BD88B64(uint64_t a1)
{
  sub_21BE28ABC();
}

unint64_t sub_21BD88C68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BD8AE50(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BD88C98(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000021BE558C0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000021BE558E0;
    }

    v5 = 0x800000021BE55880;
    if (v2 != 3)
    {
      v5 = 0x800000021BE558A0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_21BD88D68()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_21BD88DC0@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_21BE2582C();

    v5 = 0;
  }

  v6 = sub_21BE2585C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_21BD88FB4@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_21BE2582C();

    v5 = 0;
  }

  v6 = sub_21BE2585C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_21BD8910C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_21BE25D1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120);
  sub_21BC1E1AC(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21BB3A4CC(v6, &qword_27CDB9720, &unk_21BE39F00);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_21BE289CC();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_21BE25CAC();
    v16 = [v13 stringFromDate_];

    sub_21BE28A0C();
    (*(v8 + 8))(v10, v7);
    sub_21BE2582C();

    v12 = 0;
  }

  v17 = sub_21BE2585C();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_21BD893C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21BBBC990(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_21BBBC990((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v17 = sub_21BE2897C();

  return v17;
}

uint64_t sub_21BD895A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21BBBC990(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_21BBBC990((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v9 = sub_21BE2897C();

  return v9;
}

uint64_t sub_21BD896D0(uint64_t a1)
{
  v23 = sub_21BE25B9C();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_21BE25B6C();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_21BBBC990(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_21BBBC990((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v19 = sub_21BE2897C();

  return v19;
}

uint64_t sub_21BD898E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_21BE2992C();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21BBBC990(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_21BBBC990((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v10 = sub_21BE2897C();

  return v10;
}

unint64_t sub_21BD89A3C()
{
  result = qword_27CDB54F0;
  if (!qword_27CDB54F0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable(aYFx, v3, v0, v1);
    atomic_store(result, &qword_27CDB54F0);
  }

  return result;
}

unint64_t sub_21BD89A94()
{
  result = qword_27CDBBDE0[0];
  if (!qword_27CDBBDE0[0])
  {
    result = swift_getWitnessTable(byte_21BE497F4, &type metadata for TapToRadarDraft.TapToRadarError, v0, v1);
    atomic_store(result, qword_27CDBBDE0);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27CDBBE68;
  if (!qword_27CDBBE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD89B44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BD89BC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21BD89D48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_21BD89FD8(uint64_t a1)
{
  sub_21BD8A3FC(319, &qword_27CDBBE78, &qword_27CDB7AB0, &qword_21BE39110, sub_21BD8A330);
  if (v1 <= 0x3F)
  {
    sub_21BD8A3AC();
    if (v2 <= 0x3F)
    {
      sub_21BD8A3FC(319, &qword_27CDBBE90, &qword_27CDBBE98, &qword_21BE49170, sub_21BD8A46C);
      if (v3 <= 0x3F)
      {
        sub_21BD8A3FC(319, &qword_27CDBBEA8, &qword_27CDBBEB0, &qword_21BE49178, sub_21BD8A4E8);
        if (v4 <= 0x3F)
        {
          sub_21BD8A3FC(319, &qword_27CDBBEC0, &qword_27CDBBEC8, &qword_21BE49180, sub_21BD8A564);
          if (v5 <= 0x3F)
          {
            sub_21BD8A3FC(319, &qword_27CDBBED8, &qword_27CDB9720, &unk_21BE39F00, sub_21BD8A5E0);
            if (v6 <= 0x3F)
            {
              sub_21BD8A3FC(319, &qword_27CDBBEE8, &qword_27CDBBEF0, &qword_21BE49188, sub_21BD8A65C);
              if (v7 <= 0x3F)
              {
                sub_21BD8A3FC(319, &qword_27CDBBF00, &qword_27CDB6EF0, &unk_21BE33800, sub_21BD8A6D8);
                if (v8 <= 0x3F)
                {
                  sub_21BD8A7D0(319, &qword_27CDBBF10, MEMORY[0x277D839B0], &off_282D949A0);
                  if (v9 <= 0x3F)
                  {
                    sub_21BD8A3FC(319, &qword_27CDBBF18, &qword_27CDBBF20, &qword_21BE49190, sub_21BD8A754);
                    if (v10 <= 0x3F)
                    {
                      sub_21BD8A7D0(319, &qword_27CDBBF30, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_282D94E00);
                      if (v11 <= 0x3F)
                      {
                        sub_21BD8A7D0(319, &qword_27CDBBF38, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_282D94DF0);
                        if (v12 <= 0x3F)
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

unint64_t sub_21BD8A330()
{
  result = qword_27CDBBE80;
  if (!qword_27CDBBE80)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7AB0, &qword_21BE39110);
    v4[0] = &off_282D94980;
    result = swift_getWitnessTable(asc_21BE490B8, v3, v4);
    atomic_store(result, &qword_27CDBBE80);
  }

  return result;
}

void sub_21BD8A3AC()
{
  if (!qword_27CDBBE88)
  {
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBBE88);
    }
  }
}

void sub_21BD8A3FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_21BD8A46C()
{
  result = qword_27CDBBEA0;
  if (!qword_27CDBBEA0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBE98, &qword_21BE49170);
    v4[0] = &off_282D94E30;
    result = swift_getWitnessTable(asc_21BE490B8, v3, v4);
    atomic_store(result, &qword_27CDBBEA0);
  }

  return result;
}

unint64_t sub_21BD8A4E8()
{
  result = qword_27CDBBEB8;
  if (!qword_27CDBBEB8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBEB0, &qword_21BE49178);
    v4[0] = &off_282D94E20;
    result = swift_getWitnessTable(asc_21BE490B8, v3, v4);
    atomic_store(result, &qword_27CDBBEB8);
  }

  return result;
}

unint64_t sub_21BD8A564()
{
  result = qword_27CDBBED0;
  if (!qword_27CDBBED0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBEC8, &qword_21BE49180);
    v4[0] = &off_282D94990;
    result = swift_getWitnessTable(byte_21BE49090, v3, v4);
    atomic_store(result, &qword_27CDBBED0);
  }

  return result;
}

unint64_t sub_21BD8A5E0()
{
  result = qword_27CDBBEE0;
  if (!qword_27CDBBEE0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9720, &unk_21BE39F00);
    v4[0] = &off_282D949B0;
    result = swift_getWitnessTable(asc_21BE490B8, v3, v4);
    atomic_store(result, &qword_27CDBBEE0);
  }

  return result;
}

unint64_t sub_21BD8A65C()
{
  result = qword_27CDBBEF8;
  if (!qword_27CDBBEF8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBEF0, &qword_21BE49188);
    v4[0] = &off_282D949C0;
    result = swift_getWitnessTable(byte_21BE49090, v3, v4);
    atomic_store(result, &qword_27CDBBEF8);
  }

  return result;
}

unint64_t sub_21BD8A6D8()
{
  result = qword_27CDBBF08;
  if (!qword_27CDBBF08)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6EF0, &unk_21BE33800);
    v4[0] = &off_282D94980;
    result = swift_getWitnessTable(byte_21BE49090, v3, v4);
    atomic_store(result, &qword_27CDBBF08);
  }

  return result;
}

unint64_t sub_21BD8A754()
{
  result = qword_27CDBBF28;
  if (!qword_27CDBBF28)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBF20, &qword_21BE49190);
    v4[0] = &off_282D94E10;
    result = swift_getWitnessTable(byte_21BE49090, v3, v4);
    atomic_store(result, &qword_27CDBBF28);
  }

  return result;
}

void sub_21BD8A7D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21BD8A9C4()
{
  result = qword_27CDBBF40;
  if (!qword_27CDBBF40)
  {
    result = swift_getWitnessTable(byte_21BE4923C, &type metadata for TapToRadarDraft.Component, v0, v1);
    atomic_store(result, &qword_27CDBBF40);
  }

  return result;
}

unint64_t sub_21BD8AA1C()
{
  result = qword_27CDBBF48;
  if (!qword_27CDBBF48)
  {
    result = swift_getWitnessTable(byte_21BE4931C, &type metadata for TapToRadarDraft.Classification, v0, v1);
    atomic_store(result, &qword_27CDBBF48);
  }

  return result;
}

unint64_t sub_21BD8AA74()
{
  result = qword_27CDBBF50;
  if (!qword_27CDBBF50)
  {
    result = swift_getWitnessTable(aFh, &type metadata for TapToRadarDraft.Reproducibility, v0, v1);
    atomic_store(result, &qword_27CDBBF50);
  }

  return result;
}

unint64_t sub_21BD8AACC()
{
  result = qword_27CDBBF58;
  if (!qword_27CDBBF58)
  {
    result = swift_getWitnessTable(aM, &type metadata for TapToRadarDraft.DeviceClass, v0, v1);
    atomic_store(result, &qword_27CDBBF58);
  }

  return result;
}

unint64_t sub_21BD8AB20()
{
  result = qword_27CDBBF60;
  if (!qword_27CDBBF60)
  {
    result = swift_getWitnessTable(byte_21BE494B4, &type metadata for TapToRadarDraft.RemoteDeviceSelections, v0, v1);
    atomic_store(result, &qword_27CDBBF60);
  }

  return result;
}

unint64_t sub_21BD8AB78()
{
  result = qword_27CDBBF68;
  if (!qword_27CDBBF68)
  {
    result = swift_getWitnessTable(aE, &type metadata for TapToRadarDraft.RemoteDeviceSelections, v0, v1);
    atomic_store(result, &qword_27CDBBF68);
  }

  return result;
}

unint64_t sub_21BD8ABD0()
{
  result = qword_27CDBBF70;
  if (!qword_27CDBBF70)
  {
    result = swift_getWitnessTable(byte_21BE494DC, &type metadata for TapToRadarDraft.RemoteDeviceSelections, v0, v1);
    atomic_store(result, &qword_27CDBBF70);
  }

  return result;
}

unint64_t sub_21BD8AC28()
{
  result = qword_27CDBBF78;
  if (!qword_27CDBBF78)
  {
    result = swift_getWitnessTable(asc_21BE49514, &type metadata for TapToRadarDraft.RemoteDeviceSelections, v0, v1);
    atomic_store(result, &qword_27CDBBF78);
  }

  return result;
}

unint64_t sub_21BD8AC80()
{
  result = qword_27CDBBF80;
  if (!qword_27CDBBF80)
  {
    result = swift_getWitnessTable(byte_21BE496CC, &type metadata for TapToRadarDraft.AutoDiagnostics, v0, v1);
    atomic_store(result, &qword_27CDBBF80);
  }

  return result;
}

unint64_t sub_21BD8ACDC()
{
  result = qword_27CDBBF88;
  if (!qword_27CDBBF88)
  {
    result = swift_getWitnessTable(byte_21BE497CC, &type metadata for TapToRadarDraft.TapToRadarError, v0, v1);
    atomic_store(result, &qword_27CDBBF88);
  }

  return result;
}

uint64_t sub_21BD8AD34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_21BD8AD6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21BD8ADB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21BD8AE04(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21BD8AE50(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21BD8AF00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21BD8AF5C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_21BD8AFF8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = sub_21BE2869C();
  *(a2 + 1) = v4;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFA0, &qword_21BE49AB8) + 44);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFA8, &qword_21BE49AC0);
  (*(*(v6 - 8) + 16))(&a2[v5], a1, v6);
  sub_21BE2869C();
  sub_21BE26F2C();
  v7 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFB0, &qword_21BE49AC8) + 36)];
  *v7 = v9;
  *(v7 + 1) = v10;
  result = *&v11;
  *(v7 + 2) = v11;
  return result;
}

void sub_21BD8B0E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [objc_opt_self() defaultCenter];
    [v3 postNotificationName:a1 object:0];
  }
}

id sub_21BD8B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *v2;
  v5 = *(v2 + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v10;
  *(v6 + 24) = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC1A0, &qword_21BE4A000);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC1A8, qword_21BE4A008) + 36));
  *v8 = sub_21BD8E1F8;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;

  return v10;
}

void *sub_21BD8B254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v23 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC100, &qword_21BE49F00);
  MEMORY[0x28223BE20](v22);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC108, &qword_21BE49F08);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC110, &qword_21BE49F10);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC118, &qword_21BE49F18);
  MEMORY[0x28223BE20](v15);
  v17 = v21 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC120, &qword_21BE49F20);
  if (a2 >= 1 || (v21[1] = v12, (a3 & 1) != 0))
  {
    sub_21BB3B038(&qword_27CDBC138, &qword_27CDBC120, &qword_21BE49F20, MEMORY[0x277CE04B0]);
    sub_21BE2810C();
    v19 = &v17[*(v15 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC148, &qword_21BE49F28);
    sub_21BE2716C();
    *v19 = swift_getKeyPath();
    sub_21BBA3854(v17, v11, &qword_27CDBC118, &qword_21BE49F18);
    swift_storeEnumTagMultiPayload();
    sub_21BD8DA24();
    sub_21BE2784C();
    sub_21BBA3854(v14, v8, &qword_27CDBC110, &qword_21BE49F10);
    swift_storeEnumTagMultiPayload();
    sub_21BD8D9A0();
    sub_21BE2784C();
    sub_21BB3A4CC(v14, &qword_27CDBC110, &qword_21BE49F10);
    return sub_21BB3A4CC(v17, &qword_27CDBC118, &qword_21BE49F18);
  }

  else
  {
    (*(*(v18 - 8) + 16))(v8, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_21BD8D9A0();
    sub_21BB3B038(&qword_27CDBC138, &qword_27CDBC120, &qword_21BE49F20, MEMORY[0x277CE04B0]);
    return sub_21BE2784C();
  }
}

uint64_t sub_21BD8B75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  sub_21BD8D6C4(v3, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActiveStateChange);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21BD8D830(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ActiveStateChange);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFB8, &qword_21BE49AD0);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFC0, &qword_21BE49AD8);
  v12 = *(v11 + 52);
  v13 = sub_21BE2934C();
  result = (*(*(v13 - 8) + 16))(a3 + v12, v3, v13);
  v15 = (a3 + *(v11 + 56));
  *v15 = sub_21BD8CAB8;
  v15[1] = v9;
  return result;
}

uint64_t sub_21BD8B918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), const char *a5)
{
  v8 = a3(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_21BE26A4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  sub_21BD8D6C4(a2, v10, a4);
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FCC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = v11;
    v20 = v19;
    *v18 = 136315138;
    v21 = &v10[*(v8 + 24)];
    v32 = a2;
    v33 = v19;
    v30 = a5;
    v22 = v8;
    v23 = *v21;
    v24 = v21[1];

    sub_21BD8D940(v10, v29);
    v25 = sub_21BB3D81C(v23, v24, &v33);
    v8 = v22;

    *(v18 + 4) = v25;
    a2 = v32;
    _os_log_impl(&dword_21BB35000, v15, v16, v30, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x21CF05C50](v20, -1, -1);
    MEMORY[0x21CF05C50](v18, -1, -1);

    v26 = (*(v12 + 8))(v14, v31);
  }

  else
  {

    sub_21BD8D940(v10, a4);
    v26 = (*(v12 + 8))(v14, v11);
  }

  return (*(a2 + *(v8 + 20)))(v26);
}

uint64_t sub_21BD8BB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  sub_21BD8D6C4(v3, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InactiveStateChange);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21BD8D830(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for InactiveStateChange);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0F0, &qword_21BE49EF0);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0F8, &qword_21BE49EF8);
  v12 = *(v11 + 52);
  v13 = sub_21BE2934C();
  result = (*(*(v13 - 8) + 16))(a3 + v12, v3, v13);
  v15 = (a3 + *(v11 + 56));
  *v15 = sub_21BD8D898;
  v15[1] = v9;
  return result;
}

uint64_t sub_21BD8BD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC080, &qword_21BE49DF8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = sub_21BE27C8C();
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC088, &unk_21BE49E30);
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  v10 = &v6[*(v4 + 36)];
  *v10 = KeyPath;
  v10[1] = v7;
  sub_21BD8D518();
  sub_21BE280BC();
  sub_21BD8D5FC(v6);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0A0, &unk_21BE49E40) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
  v13 = sub_21BE27D7C();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *v11 = swift_getKeyPath();
  v14 = sub_21BE2832C();
  v15 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0A8, &qword_21BE49EB0);
  v17 = (a2 + *(result + 36));
  *v17 = v15;
  v17[1] = v14;
  return result;
}

uint64_t sub_21BD8BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE27CCC();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0B0, &qword_21BE49EB8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0B8, &qword_21BE49EC0) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = sub_21BE2833C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0C0, &qword_21BE49EC8);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_21BD8BFEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_21BE2798C();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0C8, &qword_21BE49ED0);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0D0, &qword_21BE49ED8);
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0D8, &unk_21BE49EE0);
  v14 = sub_21BB3B038(&qword_27CDBC0E0, &qword_27CDBC0D8, &unk_21BE49EE0, MEMORY[0x277CE04B0]);
  sub_21BE27F4C();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a1;

  v30 = v13;
  v31 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21BE27FFC();

  (*(v23 + 8))(v9, v7);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a2;

  v19 = v25;
  sub_21BE2797C();
  v30 = v7;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  sub_21BE2802C();

  (*(v28 + 8))(v19, v29);
  return (*(v26 + 8))(v11, v20);
}

uint64_t sub_21BD8C3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE26A7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE26A6C();
  sub_21BE26A5C();
  v9 = v8;
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = v9 + -16.0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFF0, &qword_21BE49B00);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFF8, &qword_21BE49B08);
  v15 = a2 + *(result + 36);
  *v15 = 0;
  *(v15 + 8) = v12;
  *(v15 + 16) = 0;
  *(v15 + 24) = v11 + 8.0 + v12;
  *(v15 + 32) = 0;
  return result;
}

uint64_t sub_21BD8C550@<X0>(double *a1@<X8>)
{
  v2 = sub_21BE278FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2799C();
  sub_21BE26F7C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_21BD8C65C(CGRect *a1, uint64_t a2)
{
  CGRectGetMinY(*a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC010, &unk_21BE49B20);
  return sub_21BE2854C();
}

uint64_t sub_21BD8C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v13 = *(v2 + 16);
  v6 = v13;
  v8 = swift_allocObject();
  *(v8 + 16) = *v2;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC000, &qword_21BE49B10);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC008, &qword_21BE49B18) + 36));
  *v10 = sub_21BD8C550;
  v10[1] = 0;
  v10[2] = sub_21BD8CCE0;
  v10[3] = v8;
  sub_21BBC7C94(&v13, &v12);
}

uint64_t sub_21BD8C838@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a1;
  v15 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFC8, &unk_21BE49AE0);
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - v7;
  v18 = a2;
  v19 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFD0, &qword_21BE49AF0);
  sub_21BB3B038(&qword_27CDBBFD8, &qword_27CDBBFD0, &qword_21BE49AF0, MEMORY[0x277CE04B0]);
  sub_21BD8CC8C();
  sub_21BE27EDC();

  LOBYTE(v16) = a2;
  v17 = a3;
  sub_21BE283FC();
  if (v18 == 1)
  {
    sub_21BE282AC();
    v9 = sub_21BE2831C();

    v16 = v9;
    v10 = sub_21BE2852C();
  }

  else
  {
    v10 = 0;
  }

  v11 = v15;
  (*(v6 + 32))(v15, v8, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFE8, &qword_21BE49AF8);
  *(v11 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_21BD8CADC()
{
  v1 = sub_21BE279AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  sub_21BE279BC();
  v10[15] = sub_21BE279CC() & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;
  sub_21BD8E0DC(&qword_27CDBC0E8, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);

  sub_21BE281BC();

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_21BD8CC8C()
{
  result = qword_27CDBBFE0;
  if (!qword_27CDBBFE0)
  {
    result = swift_getWitnessTable(aAdF, &type metadata for RowButtonStyle, v0, v1);
    atomic_store(result, &qword_27CDBBFE0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21BD8CD1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21BD8CD64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE2934C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21BE2934C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_21BD8CF70(uint64_t a1)
{
  result = sub_21BE2934C();
  if (v2 <= 0x3F)
  {
    result = sub_21BC41568();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BadgeModifier(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BadgeModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21BD8D0B4()
{
  result = qword_27CDBC028;
  if (!qword_27CDBC028)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBFB0, &qword_21BE49AC8);
    v4[0] = sub_21BB3B038(&qword_27CDBC030, &qword_27CDBC038, &qword_21BE49C20, MEMORY[0x277CE11A8]);
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC028);
  }

  return result;
}

unint64_t sub_21BD8D16C()
{
  result = qword_27CDBC048;
  if (!qword_27CDBC048)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBFE8, &qword_21BE49AF8);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBFD0, &qword_21BE49AF0);
    v4[3] = &type metadata for RowButtonStyle;
    v4[4] = sub_21BB3B038(&qword_27CDBBFD8, &qword_27CDBBFD0, &qword_21BE49AF0, MEMORY[0x277CE04B0]);
    v4[5] = sub_21BD8CC8C();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&qword_27CDBB1D0, &qword_27CDBB1D8, &qword_21BE46178, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC048);
  }

  return result;
}

unint64_t sub_21BD8D2A8()
{
  result = qword_27CDBC050;
  if (!qword_27CDBC050)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBFF8, &qword_21BE49B08);
    v4[0] = sub_21BB3B038(&qword_27CDBC058, &qword_27CDBBFF0, &qword_21BE49B00, MEMORY[0x277CE04B0]);
    v4[1] = sub_21BB3B038(&qword_27CDB6D50, &qword_27CDB6D58, &unk_21BE36040, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC050);
  }

  return result;
}

unint64_t sub_21BD8D38C()
{
  result = qword_27CDBC060;
  if (!qword_27CDBC060)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC008, &qword_21BE49B18);
    v4[0] = sub_21BB3B038(&qword_27CDBC068, &qword_27CDBC000, &qword_21BE49B10, MEMORY[0x277CE04B0]);
    v4[1] = sub_21BB3B038(&qword_27CDBC070, &qword_27CDBC078, &qword_21BE49C28, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC060);
  }

  return result;
}

unint64_t sub_21BD8D518()
{
  result = qword_27CDBC090;
  if (!qword_27CDBC090)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC080, &qword_21BE49DF8);
    v4[0] = sub_21BB3B038(&qword_27CDBC098, &qword_27CDBC088, &unk_21BE49E30, MEMORY[0x277CE04B0]);
    v4[1] = sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC090);
  }

  return result;
}

uint64_t sub_21BD8D5FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC080, &qword_21BE49DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BD8D6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_31(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_21BE2934C();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21BD8D830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BD8D940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BD8D9A0()
{
  result = qword_27CDBC128;
  if (!qword_27CDBC128)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC110, &qword_21BE49F10);
    v4[0] = sub_21BD8DA24();
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBC128);
  }

  return result;
}

unint64_t sub_21BD8DA24()
{
  result = qword_27CDBC130;
  if (!qword_27CDBC130)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC118, &qword_21BE49F18);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC120, &qword_21BE49F20);
    v4[3] = sub_21BB3B038(&qword_27CDBC138, &qword_27CDBC120, &qword_21BE49F20, MEMORY[0x277CE04B0]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&qword_27CDBC140, &qword_27CDBC148, &qword_21BE49F28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC130);
  }

  return result;
}

uint64_t sub_21BD8DB4C(uint64_t a1)
{
  v2 = sub_21BE2717C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE2734C();
}

unint64_t sub_21BD8DC24()
{
  result = qword_27CDBC150;
  if (!qword_27CDBC150)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0A8, &qword_21BE49EB0);
    v4[0] = sub_21BD8DCDC();
    v4[1] = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC150);
  }

  return result;
}

unint64_t sub_21BD8DCDC()
{
  result = qword_27CDBC158;
  if (!qword_27CDBC158)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0A0, &unk_21BE49E40);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC080, &qword_21BE49DF8);
    v4[3] = sub_21BD8D518();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC158);
  }

  return result;
}

unint64_t sub_21BD8DDD0()
{
  result = qword_27CDBC160;
  if (!qword_27CDBC160)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0C0, &qword_21BE49EC8);
    v4[0] = sub_21BD8DE88();
    v4[1] = sub_21BB3B038(&qword_27CDBB680, qword_27CDBB688, &unk_21BE476A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC160);
  }

  return result;
}

unint64_t sub_21BD8DE88()
{
  result = qword_27CDBC168;
  if (!qword_27CDBC168)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0B8, &qword_21BE49EC0);
    v4[0] = sub_21BB3B038(&qword_27CDBC170, &qword_27CDBC0B0, &qword_21BE49EB8, MEMORY[0x277CE04B0]);
    v4[1] = sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC168);
  }

  return result;
}

unint64_t sub_21BD8DF6C()
{
  result = qword_27CDBC178;
  if (!qword_27CDBC178)
  {
    v5[10] = v0;
    v5[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC180, &qword_21BE49FA0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0C8, &qword_21BE49ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0D8, &unk_21BE49EE0);
    sub_21BB3B038(&qword_27CDBC0E0, &qword_27CDBC0D8, &unk_21BE49EE0, MEMORY[0x277CE04B0]);
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_21BD8E0DC(&qword_27CDB6790, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDBC178);
  }

  return result;
}

uint64_t sub_21BD8E0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD8E124()
{
  result = qword_27CDBC190;
  if (!qword_27CDBC190)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC198, &qword_21BE49FA8);
    v4[0] = sub_21BD8D9A0();
    v4[1] = sub_21BB3B038(&qword_27CDBC138, &qword_27CDBC120, &qword_21BE49F20, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBC190);
  }

  return result;
}

unint64_t sub_21BD8E204()
{
  result = qword_27CDBC1B0;
  if (!qword_27CDBC1B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC1A8, qword_21BE4A008);
    v4[0] = sub_21BB3B038(&qword_27CDBC1B8, &qword_27CDBC1A0, &qword_21BE4A000, MEMORY[0x277CE04B0]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC1B0);
  }

  return result;
}

void sub_21BD8E2C4()
{
  if (v0[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner] != 1)
  {
    return;
  }

  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;

  v6 = [v0 view];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 frame];
  v9 = v8;

  [v1 setFrame_];
  [v1 setHidesWhenStopped_];
  v10 = [objc_opt_self() grayColor];
  [v1 setColor_];

  [v1 setActivityIndicatorViewStyle_];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addSubview_];

  [v1 startAnimating];
  v13 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_progressView];
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_progressView] = v1;
}

void sub_21BD8E4BC(void *a1)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v26 = [v1 view];
  if (!v26)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v1 addChildViewController_];
  v5 = [v1 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 addSubview_];

  v7 = [a1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21BE397B0;
  v11 = [v4 topAnchor];
  v12 = [v26 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v4 bottomAnchor];
  v15 = [v26 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v4 leadingAnchor];
  v18 = [v26 safeAreaLayoutGuide];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v10 + 48) = v20;
  v21 = [v4 trailingAnchor];
  v22 = [v26 safeAreaLayoutGuide];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v10 + 56) = v24;
  sub_21BC47284();
  v25 = sub_21BE28C1C();

  [v9 activateConstraints_];

  [a1 didMoveToParentViewController_];
}

uint64_t sub_21BD8E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_21BE28D7C();
  v3[6] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD8EA8C, v5, v4);
}

uint64_t sub_21BD8EA8C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;
  v0[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD8EB40, v7, v6);
}

uint64_t sub_21BD8EB40()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  sub_21BD8E4BC(v3);

  if (v1)
  {
    v4 = v0[7];
    v4[2](v4);
    _Block_release(v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BD8ED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_21BE28D7C();
  v3[4] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D730, v5, v4);
}

uint64_t sub_21BD8EF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_21BE28D7C();
  v3[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6DA74, v5, v4);
}

id sub_21BD8F190(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HelpfulRemoteUiHostingVC();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21BD8F1F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD8EF94(v2, v3, v4);
}

uint64_t sub_21BD8F2AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD8ED70(v2, v3, v4);
}

uint64_t sub_21BD8F36C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD8E9EC(v2, v3, v4);
}

uint64_t type metadata accessor for CheckListHostController(uint64_t a1)
{
  result = qword_27CDBC1F0;
  if (!qword_27CDBC1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21BD8F4C4()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setImage_];
  return v2;
}

uint64_t sub_21BD8F578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD94874();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21BD8F5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD94874();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21BD8F640(uint64_t a1)
{
  sub_21BD94874();
  sub_21BE277FC();
  __break(1u);
}

uint64_t sub_21BD8F680(uint64_t a1, void *a2)
{
  if ([v2 propertyForKey_])
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5940, &unk_21BE32B10);
    return 0;
  }
}

uint64_t sub_21BD8F74C()
{
  if ([v0 propertyForKey_])
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_21BBC8F58();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21BB3A4CC(v5, &qword_27CDB5940, &unk_21BE32B10);
    return 0;
  }
}

double sub_21BD8F81C@<D0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_21BE2766C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = [swift_unknownObjectRetain() cellType];
  v7 = v6 == 1 || v6 == 4;
  if (v7 || v6 == 13)
  {
    sub_21BD93FD0();
    sub_21BD94024();
    swift_unknownObjectRetain();
    sub_21BE2784C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC390, &unk_21BE4A3B0);
    sub_21BD93F44();
    sub_21BE2784C();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_21BE2765C();
    sub_21BE2764C();
    *&v9 = [a1 cellType];
    type metadata accessor for FASpecifierCellType(0);
    sub_21BE28A5C();
    sub_21BE2763C();

    sub_21BE2764C();
    sub_21BE2768C();
    sub_21BE27DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC390, &unk_21BE4A3B0);
    sub_21BD93F44();
    sub_21BE2784C();
  }

  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v10;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_21BD8FAA0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v22 = sub_21BE2721C();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC410, &qword_21BE4A520);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v24 = a2;
  *(v12 + 24) = a2;
  v25 = a1;
  v26 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC418, &qword_21BE4A528);
  sub_21BB3B038(&qword_27CDBC420, &qword_27CDBC418, &qword_21BE4A528, MEMORY[0x277CE1138]);
  sub_21BE2843C();
  sub_21BE2720C();
  sub_21BB3B038(&qword_27CDBC428, &qword_27CDBC410, &qword_21BE4A520, MEMORY[0x277CDF028]);
  sub_21BD94264(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v14 = v22;
  v13 = v23;
  sub_21BE27ECC();
  (*(v5 + 8))(v7, v14);
  (*(v9 + 8))(v11, v8);
  KeyPath = swift_getKeyPath();
  v16 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC438, &qword_21BE4A560) + 36));
  *v16 = KeyPath;
  v16[1] = 0;
  LOBYTE(v5) = [a1 cellType] == 1;
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC440, &qword_21BE4A568) + 36)) = v5;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC448, &qword_21BE4A5A0);
  v20 = (v13 + *(result + 36));
  *v20 = v17;
  v20[1] = sub_21BC0AE98;
  v20[2] = v18;
  return result;
}

void sub_21BD8FE2C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *a3 = sub_21BE275CC();
  *(a3 + 8) = 0x4025000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC450, &qword_21BE4A5A8);
  sub_21BD8FE94(a1, v3, a3 + *(v6 + 44));
}

void sub_21BD8FE94(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC458, &qword_21BE4A5B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC460, &qword_21BE4A5B8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v49 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v34[-v13];
  v38 = sub_21BD8F74C();
  sub_21BE2869C();
  sub_21BE26F2C();
  v47 = v84;
  v46 = v85;
  v45 = v86;
  v44 = v87;
  v42 = v89;
  v43 = v88;
  v15 = [a1 cellType];
  v35 = a2;
  if (v15 == 4)
  {
    v58 = sub_21BE2771C();
    v66 = 0;
    sub_21BD903B0(a1, &v60);
    v69 = v62;
    v70 = v63;
    v71 = v64;
    v72 = v65;
    v67 = v60;
    v68 = v61;
    v77 = v62;
    v78 = v63;
    v79 = v64;
    v80 = v65;
    v75 = v60;
    v76 = v61;
    sub_21BBA3854(&v67, &v59, &unk_27CDBC480, &unk_21BE4A5D8);
    sub_21BB3A4CC(&v75, &unk_27CDBC480, &unk_21BE4A5D8);
    v39 = v67;
    v56 = v68;
    v57 = *(&v67 + 1);
    v48 = *(&v68 + 1);
    v54 = v70;
    v55 = *(&v69 + 1);
    v53 = *(&v70 + 1);
    v51 = *(&v71 + 1);
    v52 = v71;
    v40 = *(&v72 + 1);
    v50 = v72;
    v41 = v69;
    v16 = 0x4000000000000000;
    v17 = v66;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v16 = 0;
    v39 = 0;
    v40 = 0;
    v55 = 0;
    v56 = 0;
    v48 = 0;
    v41 = 0;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v17 = 0;
  }

  if ([a1 cellType] == 1)
  {
    *v9 = sub_21BE2771C();
    *(v9 + 1) = 0x4000000000000000;
    v9[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC478, &qword_21BE4A5D0);
    sub_21BD90800(a1, v35 & 1, &v9[*(v18 + 44)]);
    sub_21BBB7D84(v9, v14, &qword_27CDBC458, &qword_21BE4A5B0);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v7 + 56))(v14, v19, 1, v6);
  v20 = v49;
  sub_21BBA3854(v14, v49, &qword_27CDBC460, &qword_21BE4A5B8);
  v21 = v38;
  v22 = v47;
  *a3 = v38;
  *(a3 + 8) = v22;
  *(a3 + 16) = v46;
  *(a3 + 24) = v45;
  *(a3 + 32) = v44;
  v23 = v42;
  *(a3 + 40) = v43;
  *(a3 + 48) = v23;
  v47 = v14;
  *&v67 = v58;
  *(&v67 + 1) = v16;
  v36 = v17;
  v37 = v16;
  *&v68 = v17;
  v24 = v39;
  *(&v68 + 1) = v39;
  *&v69 = v57;
  v25 = v48;
  *(&v69 + 1) = v56;
  *&v70 = v48;
  v26 = v40;
  v27 = v41;
  *(&v70 + 1) = v41;
  *&v71 = v55;
  *(&v71 + 1) = v54;
  *&v72 = v53;
  *(&v72 + 1) = v52;
  *&v73 = v51;
  *(&v73 + 1) = v50;
  v74 = v40;
  *(a3 + 168) = v40;
  v28 = v71;
  *(a3 + 136) = v72;
  *(a3 + 120) = v28;
  v29 = v67;
  v30 = v68;
  v31 = v69;
  *(a3 + 104) = v70;
  *(a3 + 88) = v31;
  *(a3 + 72) = v30;
  *(a3 + 56) = v29;
  *(a3 + 152) = v73;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC468, &qword_21BE4A5C0);
  sub_21BBA3854(v20, a3 + *(v32 + 64), &qword_27CDBC460, &qword_21BE4A5B8);
  v33 = v21;
  sub_21BBA3854(&v67, &v75, &qword_27CDBC470, &qword_21BE4A5C8);
  sub_21BB3A4CC(v47, &qword_27CDBC460, &qword_21BE4A5B8);
  sub_21BB3A4CC(v20, &qword_27CDBC460, &qword_21BE4A5B8);
  *&v75 = v58;
  *(&v75 + 1) = v37;
  *&v76 = v36;
  *(&v76 + 1) = v24;
  *&v77 = v57;
  *(&v77 + 1) = v56;
  *&v78 = v25;
  *(&v78 + 1) = v27;
  *&v79 = v55;
  *(&v79 + 1) = v54;
  *&v80 = v53;
  *(&v80 + 1) = v52;
  v81 = v51;
  v82 = v50;
  v83 = v26;
  sub_21BB3A4CC(&v75, &qword_27CDBC470, &qword_21BE4A5C8);
}

uint64_t sub_21BD903B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = [a1 name];
  if (v2)
  {
    v3 = v2;
    sub_21BE28A0C();
  }

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE27CDC();
  v9 = sub_21BE27D9C();
  v63 = v10;
  v64 = v9;
  v62 = v11;
  v65 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  v14 = sub_21BD8F680(v13, MEMORY[0x277D3FFA8]);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_9:
    v61 = 0;
    v38 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_10;
  }

  v17 = sub_21BE27DBC();
  v19 = v18;
  v21 = v20;
  sub_21BE27BEC();
  v22 = sub_21BE27D9C();
  v24 = v23;
  v26 = v25;

  sub_21BBC7C7C(v17, v19, v21 & 1);

  sub_21BE27C4C();
  v27 = sub_21BE27D3C();
  v29 = v28;
  v31 = v30;
  sub_21BBC7C7C(v22, v24, v26 & 1);

  sub_21BE2833C();
  v32 = sub_21BE27D4C();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;

  sub_21BBC7C7C(v27, v29, v31 & 1);

  v61 = v32;
  v38 = v34;
  v58 = v24 & 1;
  sub_21BBA4A38(v32, v34, v24 & 1);
  v59 = v37;

LABEL_10:
  sub_21BD8F680(v14, MEMORY[0x277D40160]);
  v39 = sub_21BE27DBC();
  v41 = v40;
  v43 = v42;
  sub_21BE27BEC();
  v44 = sub_21BE27D9C();
  v46 = v45;
  v48 = v47;

  sub_21BBC7C7C(v39, v41, v43 & 1);

  sub_21BE2833C();
  v49 = sub_21BE27D4C();
  v51 = v50;
  v55 = v50;
  v56 = v52;
  v57 = v53;

  sub_21BBC7C7C(v44, v46, v48 & 1);

  sub_21BBA4A38(v64, v63, v62 & 1);

  sub_21BC75900(v61, v38, v58, v59);
  sub_21BBA4A38(v49, v51, v56 & 1);

  sub_21BC75944(v61, v38, v58, v59);
  *a2 = v64;
  *(a2 + 8) = v63;
  *(a2 + 16) = v62 & 1;
  *(a2 + 24) = v65;
  *(a2 + 32) = v61;
  *(a2 + 40) = v38;
  *(a2 + 48) = v58;
  *(a2 + 56) = v59;
  *(a2 + 64) = v49;
  *(a2 + 72) = v55;
  *(a2 + 80) = v56 & 1;
  *(a2 + 88) = v57;
  sub_21BBC7C7C(v49, v55, v56 & 1);

  sub_21BC75944(v61, v38, v58, v59);
  sub_21BBC7C7C(v64, v63, v62 & 1);
}

uint64_t sub_21BD90800@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v79 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC490, &qword_21BE4A5E8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v80 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - v8;
  *v9 = sub_21BE275DC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC498, &qword_21BE4A5F0) + 44);
  v81 = v9;
  v11 = sub_21BD90CB8(a1, v3, &v9[v10]);
  v12 = sub_21BD8F680(v11, MEMORY[0x277D3FFA8]);
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = sub_21BD8F680(v12, MEMORY[0x277D3FFA8]);
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = 0xE000000000000000;
      if (v18)
      {
        v20 = v18;
      }

      v82 = v19;
      v83 = v20;
      sub_21BB41FA4();
      v21 = sub_21BE27DBC();
      v23 = v22;
      v25 = v24;
      sub_21BE27BEC();
      v26 = sub_21BE27D9C();
      v28 = v27;
      v30 = v29;

      sub_21BBC7C7C(v21, v23, v25 & 1);

      sub_21BE27C4C();
      v31 = sub_21BE27D3C();
      v33 = v32;
      v35 = v34;
      sub_21BBC7C7C(v26, v28, v30 & 1);

      sub_21BE2833C();
      v36 = sub_21BE27D4C();
      v38 = v37;
      LOBYTE(v28) = v39;
      v41 = v40;

      sub_21BBC7C7C(v31, v33, v35 & 1);

      v77 = v38;
      v78 = v36;
      v42 = v28 & 1;
      sub_21BBA4A38(v36, v38, v28 & 1);
      v76 = v41;
    }

    else
    {
      v77 = 0;
      v78 = 0;
      v42 = 0;
      v76 = 0;
    }
  }

  else
  {
    v77 = 0;
    v78 = 0;
    v76 = 1;
    v42 = 0;
  }

  v43 = sub_21BD8F680(v12, MEMORY[0x277D40160]);
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  v46 = 0xE000000000000000;
  if (v44)
  {
    v46 = v44;
  }

  v82 = v45;
  v83 = v46;
  sub_21BB41FA4();
  v47 = sub_21BE27DBC();
  v49 = v48;
  v51 = v50;
  sub_21BE27BEC();
  v52 = sub_21BE27D9C();
  v54 = v53;
  v56 = v55;

  sub_21BBC7C7C(v47, v49, v51 & 1);

  sub_21BE2833C();
  v57 = sub_21BE27D4C();
  v74 = v58;
  v75 = v59;
  v61 = v60;

  sub_21BBC7C7C(v52, v54, v56 & 1);

  v62 = v80;
  sub_21BBA3854(v81, v80, &qword_27CDBC490, &qword_21BE4A5E8);
  v63 = v79;
  sub_21BBA3854(v62, v79, &qword_27CDBC490, &qword_21BE4A5E8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4A0, &qword_21BE4A5F8);
  v65 = (v63 + *(v64 + 48));
  v67 = v77;
  v66 = v78;
  *v65 = v78;
  v65[1] = v67;
  v68 = v76;
  v65[2] = v42;
  v65[3] = v68;
  v69 = v63 + *(v64 + 64);
  sub_21BD942AC(v66, v67, v42, v68);
  v61 &= 1u;
  v70 = v74;
  sub_21BBA4A38(v57, v74, v61);
  v71 = v75;

  sub_21BD942BC(v66, v67, v42, v68);
  *v69 = v57;
  *(v69 + 8) = v70;
  *(v69 + 16) = v61;
  *(v69 + 24) = v71;
  sub_21BB3A4CC(v81, &qword_27CDBC490, &qword_21BE4A5E8);
  sub_21BBC7C7C(v57, v70, v61);

  sub_21BD942BC(v66, v67, v42, v68);
  return sub_21BB3A4CC(v62, &qword_27CDBC490, &qword_21BE4A5E8);
}

uint64_t sub_21BD90CB8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4A8, &qword_21BE4A600);
  MEMORY[0x28223BE20](v55);
  v6 = &v47 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC4B0, &unk_21BE4A608);
  MEMORY[0x28223BE20](v53);
  v8 = &v47 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92B0, &unk_21BE3EF80);
  MEMORY[0x28223BE20](v54);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4C0, &qword_21BE4A618);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = [a1 name];
  if (v16)
  {
    v17 = v16;
    v18 = sub_21BE28A0C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v57 = v18;
  v58 = v20;
  sub_21BB41FA4();
  v21 = sub_21BE27DBC();
  v23 = v22;
  v25 = v24;
  sub_21BE27CDC();
  v26 = sub_21BE27D9C();
  v50 = v27;
  v51 = v26;
  v49 = v28;
  v52 = v29;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  if (v48)
  {
    sub_21BE26EEC();
    v30 = &v10[*(v54 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v32 = *MEMORY[0x277CDF438];
    v33 = sub_21BE26E7C();
    (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
    *v30 = swift_getKeyPath();
    sub_21BBA3854(v10, v8, &qword_27CDB92B0, &unk_21BE3EF80);
    swift_storeEnumTagMultiPayload();
    sub_21BD942CC();
    sub_21BD943B0();
    sub_21BE2784C();
    sub_21BB3A4CC(v10, &qword_27CDB92B0, &unk_21BE3EF80);
  }

  else
  {
    v57 = sub_21BE2837C();
    sub_21BE27C3C();
    sub_21BE27EAC();

    v34 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4C8, &unk_21BE4A620) + 36)];
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
    v36 = *MEMORY[0x277CE1050];
    v37 = sub_21BE283BC();
    (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
    *v34 = swift_getKeyPath();
    v38 = sub_21BE2833C();
    KeyPath = swift_getKeyPath();
    v40 = &v6[*(v55 + 36)];
    *v40 = KeyPath;
    v40[1] = v38;
    sub_21BBA3854(v6, v8, &qword_27CDBC4A8, &qword_21BE4A600);
    swift_storeEnumTagMultiPayload();
    sub_21BD942CC();
    sub_21BD943B0();
    sub_21BE2784C();
    sub_21BB3A4CC(v6, &qword_27CDBC4A8, &qword_21BE4A600);
  }

  v41 = v56;
  sub_21BBA3854(v15, v56, &qword_27CDBC4C0, &qword_21BE4A618);
  v43 = v50;
  v42 = v51;
  *a3 = v51;
  *(a3 + 8) = v43;
  v44 = v49 & 1;
  *(a3 + 16) = v49 & 1;
  *(a3 + 24) = v52;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC528, &qword_21BE4A668);
  sub_21BBA3854(v41, a3 + *(v45 + 64), &qword_27CDBC4C0, &qword_21BE4A618);
  sub_21BBA4A38(v42, v43, v44);

  sub_21BB3A4CC(v15, &qword_27CDBC4C0, &qword_21BE4A618);
  sub_21BB3A4CC(v41, &qword_27CDBC4C0, &qword_21BE4A618);
  sub_21BBC7C7C(v42, v43, v44);
}

uint64_t sub_21BD91270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC3C8, &qword_21BE4A4C8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_21BE2869C();
  sub_21BE26F2C();
  v21 = v26;
  v22 = v24;
  v19 = v29;
  v20 = v28;
  v32 = 1;
  v31 = v25;
  v30 = v27;
  *(swift_allocObject() + 16) = a1;
  v23 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC3D0, &qword_21BE4A4D0);
  sub_21BD94164();
  sub_21BE2843C();
  LOBYTE(a1) = v32;
  v11 = v31;
  v12 = v30;
  v13 = *(v5 + 16);
  v13(v8, v10, v4);
  *a2 = 0;
  *(a2 + 8) = a1;
  v14 = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  *(a2 + 40) = v12;
  v15 = v19;
  *(a2 + 48) = v20;
  *(a2 + 56) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC400, &qword_21BE4A4E8);
  v13((a2 + *(v16 + 48)), v8, v4);
  v17 = *(v5 + 8);
  v17(v10, v4);
  return (v17)(v8, v4);
}

uint64_t sub_21BD914E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE275DC();
  sub_21BD91594(a1, v13);
  v5 = v13[0];
  v6 = v13[1];
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  LOBYTE(v13[0]) = 1;
  v19 = v14;
  v18 = v17;
  v11 = sub_21BE27CDC();
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = result;
  *(a2 + 80) = v11;
  return result;
}

uint64_t sub_21BD91594@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 name];
  if (v3)
  {
    v4 = v3;
    sub_21BE28A0C();
  }

  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  v9 = v8 & 1;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_21BBA4A38(v5, v6, v8 & 1);

  sub_21BBC7C7C(v5, v7, v9);
}

uint64_t sub_21BD9166C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC3C0, &qword_21BE4A4C0);
  return sub_21BD91270(v4, a2 + *(v5 + 44));
}

uint64_t sub_21BD916C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v28 = sub_21BE2791C();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC200, &qword_21BE4A198);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC208, &qword_21BE4A1A0);
  MEMORY[0x28223BE20](v26);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC210, &qword_21BE4A1A8);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v27 = &v25 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC218, &qword_21BE4A1B0);
  MEMORY[0x28223BE20](v29);
  v15 = &v25 - v14;
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC220, &qword_21BE4A1B8);
  sub_21BD93324(&qword_27CDBC228, &qword_27CDBC220, &qword_21BE4A1B8, sub_21BD92F20);
  sub_21BE27D1C();
  sub_21BE2790C();
  sub_21BB3B038(&qword_27CDBC310, &qword_27CDBC200, &qword_21BE4A198, MEMORY[0x277CDE5A0]);
  v16 = v28;
  sub_21BE2820C();
  (*(v3 + 8))(v5, v16);
  (*(v7 + 8))(v9, v6);
  v17 = sub_21BE276FC();
  v18 = &v11[*(v26 + 36)];
  *v18 = v17;
  v18[1] = sub_21BD4A688;
  v18[2] = 0;
  sub_21BE27B6C();
  v19 = [objc_opt_self() currentDevice];
  [v19 userInterfaceIdiom];

  v20 = v27;
  sub_21BD93620();
  sub_21BE27F0C();
  sub_21BB3A4CC(v11, &qword_27CDBC208, &qword_21BE4A1A0);
  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  v21 = qword_280BD7FE0;
  type metadata accessor for FamilyNetworkMonitor(0);
  sub_21BD94264(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);
  v22 = sub_21BE26BFC();
  (*(v30 + 32))(v15, v20, v31);
  v23 = &v15[*(v29 + 36)];
  *v23 = v22;
  v23[1] = v21;
  sub_21BBB7D84(v15, v32, &qword_27CDBC218, &qword_21BE4A1B0);
}

uint64_t sub_21BD91BE4(uint64_t *a1)
{
  v13 = *a1;
  v2 = sub_21BD93894(v13);
  v3 = sub_21BC2B75C(v2);

  v10 = v3;
  swift_getKeyPath();
  v4 = a1[1];
  v11 = *(a1 + 3);
  v12 = v4;
  v5 = swift_allocObject();
  v6 = *(a1 + 1);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = a1[4];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21BD93AC4;
  *(v7 + 24) = v5;
  sub_21BBA3854(&v13, v9, &unk_27CDBC328, &unk_21BE4A238);
  sub_21BBC7C94(&v12, v9);

  sub_21BBA3854(&v11, v9, &qword_27CDB7AB0, &qword_21BE39110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC338, &qword_21BE4A248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC238, &qword_21BE4A1C0);
  sub_21BB3B038(&qword_27CDBC340, &qword_27CDBC338, &qword_21BE4A248, MEMORY[0x277D83980]);
  sub_21BD92F20();
  return sub_21BE285BC();
}

uint64_t sub_21BD91DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v61 = a5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2E8, &qword_21BE4A200);
  MEMORY[0x28223BE20](v60);
  v10 = v53 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC348, &qword_21BE4A250);
  MEMORY[0x28223BE20](v58);
  v59 = v53 - v11;
  v12 = sub_21BE2762C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v56 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC278, &qword_21BE4A1E0);
  MEMORY[0x28223BE20](v15);
  v17 = (v53 - v16);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC248, &qword_21BE4A1C8);
  v18 = MEMORY[0x28223BE20](v57);
  v20 = v53 - v19;
  if (a1)
  {
    MEMORY[0x28223BE20](v18);
    v53[-4] = a2;
    v53[-3] = a3;
    v53[-2] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2B0, &qword_21BE4A1F8);
    sub_21BD93324(&qword_27CDBC2A8, &qword_27CDBC2B0, &qword_21BE4A1F8, sub_21BD933A0);
    sub_21BE2860C();
    v21 = v56;
    sub_21BE2761C();
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2F8, &qword_21BE4A208) + 36);
    (*(v13 + 16))(&v10[v22], v21, v12);
    v23 = *(v13 + 56);
    v23(&v10[v22], 0, 1, v12);
    KeyPath = swift_getKeyPath();
    v25 = &v10[*(v60 + 36)];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
    (*(v13 + 32))(v25 + v26, v21, v12);
    v23(v25 + v26, 0, 1, v12);
    *v25 = KeyPath;
    sub_21BBA3854(v10, v59, &qword_27CDBC2E8, &qword_21BE4A200);
    swift_storeEnumTagMultiPayload();
    sub_21BD92FAC();
    sub_21BD933F4();
    sub_21BE2784C();
    v27 = v10;
    v28 = &qword_27CDBC2E8;
    v29 = &qword_21BE4A200;
  }

  else
  {
    type metadata accessor for FamilyNetworkMonitor(0);
    sub_21BD94264(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);
    v30 = sub_21BE2727C();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC288, &unk_21BE4A1E8) + 36);
    v54 = a3;
    v55 = a4;
    v34 = (v17 + v33);
    v35 = a2;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
    v37 = sub_21BE27D7C();
    (*(*(v37 - 8) + 56))(v34 + v36, 1, 1, v37);
    *v34 = swift_getKeyPath();
    *v17 = v30;
    v17[1] = v32;
    LOBYTE(v30) = sub_21BE27B9C();
    v38 = sub_21BE26E0C();
    v53[1] = v53;
    v39 = v17 + *(v15 + 36);
    *v39 = v30;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    MEMORY[0x28223BE20](v38);
    v45 = v54;
    v44 = v55;
    v53[-4] = v35;
    v53[-3] = v45;
    v53[-2] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2B0, &qword_21BE4A1F8);
    sub_21BD931E0();
    sub_21BD93324(&qword_27CDBC2A8, &qword_27CDBC2B0, &qword_21BE4A1F8, sub_21BD933A0);
    sub_21BE285EC();
    v46 = v56;
    sub_21BE2761C();
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC258, &qword_21BE4A1D0) + 36);
    (*(v13 + 16))(&v20[v47], v46, v12);
    v48 = *(v13 + 56);
    v48(&v20[v47], 0, 1, v12);
    v49 = swift_getKeyPath();
    v50 = &v20[*(v57 + 36)];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
    (*(v13 + 32))(v50 + v51, v46, v12);
    v48(v50 + v51, 0, 1, v12);
    *v50 = v49;
    sub_21BBA3854(v20, v59, &qword_27CDBC248, &qword_21BE4A1C8);
    swift_storeEnumTagMultiPayload();
    sub_21BD92FAC();
    sub_21BD933F4();
    sub_21BE2784C();
    v27 = v20;
    v28 = &qword_27CDBC248;
    v29 = &qword_21BE4A1C8;
  }

  return sub_21BB3A4CC(v27, v28, v29);
}

uint64_t sub_21BD924D8(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_21BC2B938(a2);
  swift_getKeyPath();
  v9 = *a3;
  v17 = a3[1];
  v18 = v9;
  v16 = *(a3 + 3);
  v10 = swift_allocObject();
  v11 = *(a3 + 1);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = a3[4];
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = v10;
  sub_21BBA3854(&v18, v14, &unk_27CDBC328, &unk_21BE4A238);
  sub_21BBC7C94(&v17, v14);

  sub_21BBA3854(&v16, v14, &qword_27CDB7AB0, &qword_21BE39110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC350, &qword_21BE4A2D8);
  sub_21BB3B038(&qword_27CDBC358, &qword_27CDBC350, &qword_21BE4A2D8, MEMORY[0x277D83980]);
  sub_21BD933A0();
  return sub_21BE285BC();
}

id sub_21BD926A4(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC370, &qword_21BE4A2F0);
  v1 = sub_21BE28C1C();

  return v1;
}

void sub_21BD92714(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC370, &qword_21BE4A2F0);
  v4 = sub_21BE28C3C();
  v5 = a1;
  sub_21BD92790(v4);
}

uint64_t sub_21BD92790(uint64_t a1)
{
  *&v1[qword_27CDBC1E0] = a1;

  sub_21BE28D7C();

  v2 = v1;
  v3 = sub_21BE28D6C();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  v4[2] = v3;
  v4[3] = v5;
  v4[4] = v2;
  v6 = v2;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v5;
  v8[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BE2857C();
  return sub_21BE2775C();
}

id sub_21BD928D4(uint64_t a1)
{
  if (*(a1 + qword_27CDBC1E8 + 8))
  {

    v1 = sub_21BE289CC();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_21BD92944(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_21BE28A0C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_21BD929C4(v4, v6);
}

uint64_t sub_21BD929C4(uint64_t a1, uint64_t a2)
{
  v3 = &v2[qword_27CDBC1E8];
  *v3 = a1;
  *(v3 + 1) = a2;

  sub_21BE28D7C();

  v4 = v2;
  v5 = sub_21BE28D6C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  v8 = v4;
  v9 = sub_21BE28D6C();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BE2857C();
  return sub_21BE2775C();
}

char *sub_21BD92B14(uint64_t a1)
{
  v2 = (v1 + qword_27CDBC1E8);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_27CDBC1E0) = a1;
  sub_21BE28D7C();

  v3 = sub_21BE28D6C();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BE2857C();
  v8 = sub_21BE2774C();
  [v8 setEdgesForExtendedLayout_];
  v9 = v8;

  v10 = sub_21BE28D6C();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v5;
  v11[4] = v9;
  v12 = v9;
  v13 = sub_21BE28D6C();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v5;
  v14[4] = v12;
  sub_21BE2857C();
  sub_21BE2775C();

  return v12;
}

void sub_21BD92D4C(uint64_t a1)
{
  v1 = (a1 + qword_27CDBC1E8);
  *v1 = 0;
  v1[1] = 0;
  sub_21BE2978C();
  __break(1u);
}

uint64_t sub_21BD92DB8()
{
}

id sub_21BD92DFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CheckListHostController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD92E34(uint64_t a1)
{
}

unint64_t sub_21BD92F20()
{
  result = qword_27CDBC230;
  if (!qword_27CDBC230)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC238, &qword_21BE4A1C0);
    v4[0] = sub_21BD92FAC();
    v4[1] = sub_21BD933F4();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBC230);
  }

  return result;
}

unint64_t sub_21BD92FAC()
{
  result = qword_27CDBC240;
  if (!qword_27CDBC240)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC248, &qword_21BE4A1C8);
    v4[0] = sub_21BD93064();
    v4[1] = sub_21BB3B038(&unk_27CDBC2D0, &qword_27CDBB020, &qword_21BE4F0A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC240);
  }

  return result;
}

unint64_t sub_21BD93064()
{
  result = qword_27CDBC250;
  if (!qword_27CDBC250)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC258, &qword_21BE4A1D0);
    v4[0] = sub_21BD9311C();
    v4[1] = sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC250);
  }

  return result;
}

unint64_t sub_21BD9311C()
{
  result = qword_27CDBC260;
  if (!qword_27CDBC260)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC268, &qword_21BE4A1D8);
    v4[0] = sub_21BD931E0();
    v4[1] = sub_21BD93324(&qword_27CDBC2A8, &qword_27CDBC2B0, &qword_21BE4A1F8, sub_21BD933A0);
    v4[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v4);
    atomic_store(result, &qword_27CDBC260);
  }

  return result;
}

unint64_t sub_21BD931E0()
{
  result = qword_27CDBC270;
  if (!qword_27CDBC270)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC278, &qword_21BE4A1E0);
    v4[0] = sub_21BD9326C();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC270);
  }

  return result;
}

unint64_t sub_21BD9326C()
{
  result = qword_27CDBC280;
  if (!qword_27CDBC280)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC288, &unk_21BE4A1E8);
    v4[0] = sub_21BD4B3D8();
    v4[1] = sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC280);
  }

  return result;
}

uint64_t sub_21BD93324(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD933A0()
{
  result = qword_27CDBC2B8;
  if (!qword_27CDBC2B8)
  {
    result = swift_getWitnessTable(aYqF, &type metadata for SpecifierView, v0, v1);
    atomic_store(result, &qword_27CDBC2B8);
  }

  return result;
}

unint64_t sub_21BD933F4()
{
  result = qword_27CDBC2E0;
  if (!qword_27CDBC2E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC2E8, &qword_21BE4A200);
    v4[0] = sub_21BD934AC();
    v4[1] = sub_21BB3B038(&unk_27CDBC2D0, &qword_27CDBB020, &qword_21BE4F0A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC2E0);
  }

  return result;
}

unint64_t sub_21BD934AC()
{
  result = qword_27CDBC2F0;
  if (!qword_27CDBC2F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC2F8, &qword_21BE4A208);
    v4[0] = sub_21BD93564();
    v4[1] = sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC2F0);
  }

  return result;
}

unint64_t sub_21BD93564()
{
  result = qword_27CDBC300;
  if (!qword_27CDBC300)
  {
    v5[5] = v0;
    v5[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC308, &qword_21BE4A210);
    v4 = sub_21BD93324(&qword_27CDBC2A8, &qword_27CDBC2B0, &qword_21BE4A1F8, sub_21BD933A0);
    v5[0] = MEMORY[0x277CE1410];
    v5[1] = v4;
    v5[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v5);
    atomic_store(result, &qword_27CDBC300);
  }

  return result;
}

unint64_t sub_21BD93620()
{
  result = qword_27CDBC318;
  if (!qword_27CDBC318)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC208, &qword_21BE4A1A0);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC200, &qword_21BE4A198);
    v4[3] = sub_21BE2791C();
    v4[4] = sub_21BB3B038(&qword_27CDBC310, &qword_27CDBC200, &qword_21BE4A198, MEMORY[0x277CDE5A0]);
    v4[5] = MEMORY[0x277CDE0D0];
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = MEMORY[0x277CE0760];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC318);
  }

  return result;
}

uint64_t sub_21BD93760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC368, &qword_21BE4A2E8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21BBA3854(a1, &v5 - v3, &qword_27CDBC368, &qword_21BE4A2E8);
  return sub_21BE274CC();
}

uint64_t sub_21BD9381C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21BE2951C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

char *sub_21BD93894(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_31:
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    while (2)
    {
      for (i = v5; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CF047C0](i, a1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (i >= *(v2 + 16))
          {
            goto LABEL_30;
          }

          v7 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v8 = *(v4 + 2);
        if (![v7 cellType])
        {
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_21BBBD93C(0, *(v4 + 2) + 1, 1, v4);
          }

          v10 = *(v4 + 2);
          v9 = *(v4 + 3);
          if (v10 >= v9 >> 1)
          {
            v4 = sub_21BBBD93C((v9 > 1), v10 + 1, 1, v4);
          }

          swift_unknownObjectRelease();
          *(v4 + 2) = v10 + 1;
          v11 = &v4[16 * v10];
          *(v11 + 4) = v7;
          *(v11 + 5) = MEMORY[0x277D84F90];
          goto LABEL_27;
        }

        if (v8)
        {
          break;
        }

        swift_unknownObjectRelease();
        if (v5 == v3)
        {
          return v4;
        }
      }

      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21BD93880(v4);
        v4 = result;
      }

      if (v8 > *(v4 + 2))
      {
        __break(1u);
        return result;
      }

      MEMORY[0x21CF03DB0]();
      if (*((*&v4[16 * v8 + 24] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[16 * v8 + 24] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21BE28C5C();
      }

      sub_21BE28C8C();
      swift_unknownObjectRelease();
LABEL_27:
      if (v5 != v3)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

uint64_t objectdestroyTm_32()
{

  return swift_deallocObject();
}

uint64_t sub_21BD93C40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void *sub_21BD93C80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 identifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_21BE28A0C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC360, &qword_21BE4A2E0);
  MEMORY[0x21CF036E0](&v17, v15);
  if (v14)
  {
    if (v18)
    {
      if (v12 == v17 && v14 == v18)
      {
      }

      else
      {
        sub_21BE2995C();
      }
    }
  }

  else if (!v18)
  {
    return a1;
  }

  return a1;
}

double sub_21BD93DB8@<D0>(void *a1@<X8>)
{
  v2 = (*(v1 + 32) + qword_27CDBC1E8);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

uint64_t sub_21BD93DD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21BD929C4(v1, v2);
}

unint64_t sub_21BD93E34()
{
  result = qword_27CDBC378;
  if (!qword_27CDBC378)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC218, &qword_21BE4A1B0);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC208, &qword_21BE4A1A0);
    v4[3] = sub_21BD93620();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&unk_27CDBC380, &qword_27CDB6DB8, &qword_21BE360A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC378);
  }

  return result;
}

unint64_t sub_21BD93F44()
{
  result = qword_27CDBC398;
  if (!qword_27CDBC398)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC390, &unk_21BE4A3B0);
    v4[0] = sub_21BD93FD0();
    v4[1] = sub_21BD94024();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBC398);
  }

  return result;
}

unint64_t sub_21BD93FD0()
{
  result = qword_27CDBC3A0;
  if (!qword_27CDBC3A0)
  {
    result = swift_getWitnessTable(aIpFx, &type metadata for ButtonSpecifierCell, v0, v1);
    atomic_store(result, &qword_27CDBC3A0);
  }

  return result;
}

unint64_t sub_21BD94024()
{
  result = qword_27CDBC3A8;
  if (!qword_27CDBC3A8)
  {
    result = swift_getWitnessTable(byte_21BE4A420, &type metadata for LargeSpecifierCell, v0, v1);
    atomic_store(result, &qword_27CDBC3A8);
  }

  return result;
}

unint64_t sub_21BD94098()
{
  result = qword_27CDBC3B0;
  if (!qword_27CDBC3B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC3B8, &qword_21BE4A418);
    v4[0] = sub_21BD93F44();
    v4[1] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBC3B0);
  }

  return result;
}

unint64_t sub_21BD94164()
{
  result = qword_27CDBC3D8;
  if (!qword_27CDBC3D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC3D0, &qword_21BE4A4D0);
    v4[0] = sub_21BB3B038(&qword_27CDBC3E0, &qword_27CDBC3E8, &unk_21BE4A4D8, MEMORY[0x277CE1138]);
    v4[1] = sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBC3D8);
  }

  return result;
}

uint64_t sub_21BD94264(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BD942AC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_21BC75900(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_21BD942BC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_21BC75944(result, a2, a3, a4);
  }

  return result;
}