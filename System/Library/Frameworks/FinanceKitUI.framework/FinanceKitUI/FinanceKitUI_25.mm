uint64_t sub_2386ED5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149E8, &qword_238781558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386ED610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF149F0;
  if (!qword_27DF149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF149F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageProcessingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageProcessingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2386ED7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF149F8;
  if (!qword_27DF149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF149F8);
  }

  return result;
}

id sub_2386ED80C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicAccountObject];
  *a2 = result;
  return result;
}

void sub_2386ED848(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayName];
  v4 = sub_23875EA80();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void *sub_2386ED8A0(uint64_t a1, uint64_t a2)
{
  sub_2387582B0();
  v2 = sub_238758290();
  v3 = sub_238758280();
  [v2 setPredicate_];

  [v2 setFetchBatchSize_];
  [v2 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238763E70;
  sub_23845CA1C();
  swift_getKeyPath(aH_22);
  *(v4 + 32) = sub_23875F040();
  v5 = sub_23875EC60();

  [v2 setSortDescriptors_];

  return v2;
}

void *sub_2386ED9F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_238759780();
  v6 = sub_238759710();
  v7 = a3(a1, a2);
  [v6 setPredicate_];

  [v6 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_238763E70;
  sub_23845CA1C();
  swift_getKeyPath(byte_238781640);
  *(v8 + 32) = sub_23875F040();
  v9 = sub_23875EC60();

  [v6 setSortDescriptors_];

  return v6;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2386EDB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2386EDB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2386EDC44@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A00, &unk_238781790);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  sub_2386EDF3C(&v17 - v4);
  v23 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v17 = v20[0];
  v18 = v21;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = swift_allocObject();
  v10 = *(v1 + 48);
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(v1 + 64);
  *(v9 + 96) = *(v1 + 80);
  v11 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v11;
  sub_2384B57EC(v1, v20);
  sub_2384B57EC(v1, v20);
  type metadata accessor for SelectedTransactionsView(0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A08, &qword_2387817A0);
  v13 = sub_23875CE80();
  v14 = sub_2386EEE2C();
  v15 = sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v20[0] = v12;
  v20[1] = v13;
  v21 = v14;
  v22 = v15;
  swift_getOpaqueTypeConformance2();
  sub_2386F3860(&qword_27DF14A18, type metadata accessor for SelectedTransactionsView, &unk_23878186C);
  sub_23875DED0();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2386EDF3C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v22[0] = sub_23875CE80();
  v2 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0]);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A08, &qword_2387817A0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = sub_2386EE8F4();
  v10 = v9;
  v11 = swift_allocObject();
  v12 = *(v1 + 48);
  *(v11 + 48) = *(v1 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(v1 + 64);
  *(v11 + 96) = *(v1 + 80);
  v13 = *(v1 + 16);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v13;
  v25[0] = v8;
  v25[1] = v10;
  v22[4] = v25;
  v22[5] = 6650213;
  v22[6] = 0xE300000000000000;
  sub_2384B57EC(v1, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  v23 = *v1;
  v24 = *(v1 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](v25, v14);
  v15 = *(v25[0] + 16);

  v16 = v15 == 0;
  KeyPath = swift_getKeyPath(asc_238781820);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = &v7[*(v5 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_238477BAC;
  v19[2] = v18;
  sub_23875CE70();
  sub_2386EEE2C();
  sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v20 = v22[0];
  sub_23875DB00();
  (*(v2 + 8))(v4, v20);
  return sub_238439884(v7, &qword_27DF14A08, &qword_2387817A0);
}

double sub_2386EE26C(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[8];
  v3 = a1[9];
  v24 = v3;
  v25 = v2;
  v17 = v2;
  v18 = v3;
  sub_23843981C(&v25, &v14, &qword_27DF0B558, &qword_238768210);
  sub_23843981C(&v24, &v14, &qword_27DF14A38, &qword_238781818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7A0, &qword_2387689D0);
  sub_23875E1B0();
  v4 = v14;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v22 = v7;
  v23 = v5;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  sub_2385B2CA0(&v23, &v14);

  sub_23843981C(&v22, &v14, &qword_27DF0B558, &qword_238768210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v21);
  sub_2386F2880(v4);

  v14 = v5;
  v15 = v6;
  v16 = v7;
  v20 = v21;
  sub_23875E2F0();
  sub_2385BBC90(&v23);

  sub_238439884(&v22, &qword_27DF0B558, &qword_238768210);
  v17 = v2;
  v18 = v3;
  sub_23875E1B0();
  v8 = v14;
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v20 = v11;
  v21 = v9;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  sub_2385B2CA0(&v21, &v14);

  sub_23843981C(&v20, &v14, &qword_27DF0B5D0, &qword_23877B640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  MEMORY[0x23EE62DC0](&v13);
  sub_2384DC554(v8);

  v14 = v9;
  v15 = v10;
  v16 = v11;
  sub_23875E2F0();
  sub_2385BBC90(&v21);

  sub_238439884(&v20, &qword_27DF0B5D0, &qword_23877B640);
  v17 = v2;
  v18 = v3;
  sub_23875E1B0();

  v14 = v2;
  v15 = v3;
  sub_23875E1C0();
  sub_238439884(&v25, &qword_27DF0B558, &qword_238768210);
  sub_238439884(&v24, &qword_27DF14A38, &qword_238781818);

  return result;
}

void sub_2386EE590(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A20, &qword_2387817A8);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  sub_23875ED50();
  v15 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *a1;
  v21 = *(a1 + 2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v19, v7);
  v8 = v19;
  v19 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7A0, &qword_2387689D0);
  sub_23875E1D0();
  v9 = v20;
  v10 = v21;
  *&v20 = *(a1 + 10);
  v11 = type metadata accessor for SelectedTransactionsView(0);
  v12 = *(v11 + 24);
  *(a2 + v12) = swift_getKeyPath(byte_2387817B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  *(a2 + 8) = v9;
  *(a2 + 24) = v10;
  *&v19 = v8;
  swift_getKeyPath(aP_28);
  sub_23843981C(&v20, v18, &qword_27DF0B5C0, &unk_2387683E0);
  sub_2386F3860(&unk_27DF12BC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);

  sub_23875B690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B558, &qword_238768210);
  sub_23843A3E8(&qword_27DF14A28, &qword_27DF0B558, &qword_238768210, MEMORY[0x277D83B68]);
  sub_23843A3E8(&qword_27DF14A30, &qword_27DF14A20, &qword_2387817A8, MEMORY[0x277CC8A08]);
  v13 = v17;
  v14 = sub_23875EC10();

  (*(v16 + 8))(v6, v13);

  *a2 = v14;
  *(a2 + *(v11 + 28)) = v20;
}

uint64_t sub_2386EE8F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v13 = *v0;
  v14 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v12, v2);
  v3 = *(v12 + 16);

  v4 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

double sub_2386EEAB0(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386F2B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();

  return result;
}

uint64_t sub_2386EEB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SelectedTransactionsView(0);
  sub_23843981C(v1 + *(v10 + 24), v9, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C600();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for SelectedTransactionsView(uint64_t a1)
{
  result = qword_27DF14A40;
  if (!qword_27DF14A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2386EEE2C()
{
  result = qword_27DF14A10;
  if (!qword_27DF14A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A08, &qword_2387817A0);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14A10);
  }

  return result;
}

uint64_t sub_2386EEF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_2386EEFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for SelectedTransactionsView(0);
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = v4;
  v62 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875CE00();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A98, &qword_2387818F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A90, &qword_2387818E8);
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A88, &qword_2387818E0);
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A78, &qword_2387818D0);
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v53 = &v47 - v17;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v47 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AB0, &qword_2387818F8);
  sub_2386F3250();
  sub_23875D9C0();
  v64 = sub_2386EFA38();
  v65 = v19;
  v20 = sub_23843A3E8(&qword_27DF14AA0, &qword_27DF14A98, &qword_2387818F0, MEMORY[0x277CDE5A0]);
  v23 = sub_2384397A8(v20, v21, v22);
  v48 = a1;
  v24 = v23;
  v25 = MEMORY[0x277D837D0];
  sub_23875DC70();

  (*(v8 + 8))(v10, v7);
  v27 = v57;
  v26 = v58;
  v28 = v49;
  (*(v57 + 104))(v49, *MEMORY[0x277CDDDC0], v58);
  v64 = v7;
  v65 = v25;
  v66 = v20;
  v67 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v52;
  sub_23875DE50();
  (*(v27 + 8))(v28, v26);
  (*(v51 + 8))(v13, v30);
  v64 = v30;
  v65 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v33 = v53;
  v32 = v54;
  sub_23875DE10();
  v34 = (*(v50 + 8))(v15, v32);
  MEMORY[0x28223BE20](v34);
  v35 = v48;
  *(&v47 - 2) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A80, &qword_2387818D8);
  v64 = v32;
  v65 = v31;
  swift_getOpaqueTypeConformance2();
  sub_23843A3E8(&qword_27DF14AA8, &qword_27DF14A80, &qword_2387818D8, MEMORY[0x277CDDF68]);
  v36 = v63;
  v37 = v56;
  sub_23875DEF0();
  (*(v55 + 8))(v33, v37);
  v38 = v62;
  sub_2386F32DC(v35, v62);
  v39 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v40 = swift_allocObject();
  sub_2386F399C(v38, v40 + v39, type metadata accessor for SelectedTransactionsView);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_2386F3340;
  *(v41 + 24) = v40;
  v42 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A70, &qword_2387818C8) + 36));
  *v42 = sub_2384495F4;
  v42[1] = v41;
  v42[2] = 0;
  v42[3] = 0;
  sub_2386F32DC(v35, v38);
  v43 = swift_allocObject();
  sub_2386F399C(v38, v43 + v39, type metadata accessor for SelectedTransactionsView);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_2386F3358;
  *(v44 + 24) = v43;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A58, &qword_2387818C0);
  v46 = (v36 + *(result + 36));
  *v46 = 0;
  v46[1] = 0;
  v46[2] = sub_2386F3A04;
  v46[3] = v44;
  return result;
}

double sub_2386EF7D4(uint64_t *a1)
{
  v2 = type metadata accessor for SelectedTransactionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *a1;
  swift_getKeyPath(byte_238781978);
  sub_2386F32DC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2386F399C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SelectedTransactionsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C588, &unk_23876AAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12978, &unk_238781900);
  sub_23843A3E8(&qword_27DF0C590, &qword_27DF0C588, &unk_23876AAB0, MEMORY[0x277D83980]);
  sub_2386F3860(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238665440();
  sub_23875E370();

  return result;
}

uint64_t sub_2386EFA38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v2 = *(*v0 + 16);
  v13[1] = *(v0 + 8);
  v14 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](v13, v3);
  v4 = *(v13[0] + 16);

  v5 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v5;
  *(v1 + 32) = v2 - v4;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  v11 = sub_23875EAA0();

  return v11;
}

double sub_2386EFBFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AC0, &qword_238781910);
  MEMORY[0x28223BE20](v38);
  v37 = v29 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AC8, &qword_238781918);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v31 = v29 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AD0, &qword_238781920);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = v29 - v5;
  v6 = sub_23875D2A0();
  MEMORY[0x28223BE20](v6 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AD8, &qword_238781928);
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = v29 - v8;
  sub_23875ED50();
  v29[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875D240();
  MEMORY[0x28223BE20](v10);
  v29[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AE0, &qword_238781930);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14AE8, &qword_238781938);
  v12 = sub_2386F33BC();
  v40 = v11;
  v41 = v12;
  swift_getOpaqueTypeConformance2();
  sub_23875C4D0();
  v13 = sub_23875D260();
  MEMORY[0x28223BE20](v13);
  v29[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AF8, &qword_238781940);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
  v15 = sub_23875CE80();
  v16 = sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  v17 = sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v31;
  sub_23875C4D0();
  v19 = sub_23843A3E8(&qword_27DF14B00, &qword_27DF14AC8, &qword_238781918, MEMORY[0x277CDD7A8]);
  v20 = v32;
  v21 = v35;
  MEMORY[0x23EE61E80](v18, v35, v19);
  (*(v33 + 8))(v18, v21);
  v22 = v37;
  v23 = *(v38 + 48);
  v24 = v30;
  (*(v7 + 16))(v37, v9, v30);
  v25 = v34;
  v26 = &v22[v23];
  v27 = v36;
  (*(v34 + 16))(v26, v20, v36);
  sub_23875D070();
  (*(v25 + 8))(v20, v27);
  (*(v7 + 8))(v9, v24);

  return result;
}

double sub_2386F01B4(uint64_t a1)
{
  v2 = type metadata accessor for SelectedTransactionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AE8, &qword_238781938);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18[0] = sub_2386F1968();
  v18[1] = v8;
  sub_2386F32DC(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = sub_2386F399C(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SelectedTransactionsView);
  sub_2384397A8(v11, v12, v13);
  sub_23875E230();
  v14 = sub_23875D7F0();
  KeyPath = swift_getKeyPath(byte_238781948);
  v16 = &v7[*(v5 + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  sub_23875D870();
  sub_2386F33BC();
  sub_23875DAF0();
  sub_238439884(v7, &qword_27DF14AE8, &qword_238781938);

  return result;
}

double sub_2386F0418()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v0, 29, v1);

  return result;
}

double sub_2386F048C()
{
  v1 = *(*v0 + 16);
  v2 = sub_23875EA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  if (v1 <= 2)
  {
    v5 = sub_23875F600();
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x656C7069746C756DLL;
  }

  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844CA94(v2, 29, v6);

  return result;
}

void sub_2386F05BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v63 = a1;
  v61 = a3;
  v3 = type metadata accessor for SelectedTransactionsView(0);
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v53 = v4;
  v54 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45[-v6];
  v8 = sub_238758F50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = v10;
  v51 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v45[-v12];
  v55 = type metadata accessor for TransactionView(0);
  MEMORY[0x28223BE20](v55);
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12988, &qword_23877B700);
  MEMORY[0x28223BE20](v60);
  v59 = &v45[-v16];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12978, &unk_238781900);
  MEMORY[0x28223BE20](v58);
  v57 = &v45[-v17];
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(v9 + 16);
  v19 = v13;
  v49 = v13;
  v20 = v63;
  v21 = v18(v19, v63, v8);
  v22 = v62;
  MEMORY[0x28223BE20](v21);
  *&v45[-16] = v20;
  sub_23854CF80(sub_2386F38A8, v23, v7);
  v24 = sub_238758680();
  v25 = v7;
  v26 = *(v24 - 8);
  v27 = *(v26 + 48);
  v47 = v25;
  v48 = v24;
  if (v27() == 1)
  {
    __break(1u);
  }

  else
  {
    v65 = *(v22 + 8);
    v66 = *(v22 + 16);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v64, v28);
    v46 = sub_23860E62C(v20, v64);

    v29 = v54;
    sub_2386F32DC(v22, v54);
    v30 = v51;
    v18(v51, v20, v8);
    v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v32 = (v53 + *(v9 + 80) + v31) & ~*(v9 + 80);
    v33 = swift_allocObject();
    sub_2386F399C(v29, v33 + v31, type metadata accessor for SelectedTransactionsView);
    v34 = *(v9 + 32);
    v34(v33 + v32, v30, v8);
    *v15 = swift_getKeyPath(aX_27);
    v15[8] = 0;
    v35 = v55;
    v36 = *(v55 + 20);
    *&v15[v36] = swift_getKeyPath(a0_15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v34(&v15[v35[6]], v49, v8);
    (*(v26 + 32))(&v15[v35[7]], v47, v48);
    v15[v35[8]] = (v46 & 1) == 0;
    v37 = &v15[v35[9]];
    *v37 = sub_2386F38C8;
    v37[1] = v33;
    v38 = v35[10];
    v39 = *MEMORY[0x277CDFA00];
    v40 = sub_23875C880();
    (*(*(v40 - 8) + 104))(&v15[v38], v39, v40);
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v65 = qword_27DF2F920;

    v41 = sub_23875E2D0();
    v42 = v59;
    sub_2386F399C(v15, v59, type metadata accessor for TransactionView);
    *&v42[*(v60 + 36)] = v41;
    v43 = v57;
    sub_2384396E4(v42, v57, &qword_27DF12988, &qword_23877B700);
    v44 = &v43[*(v58 + 36)];
    *v44 = xmmword_23876A640;
    *(v44 + 1) = xmmword_23876A640;
    v44[32] = 0;
    sub_2384396E4(v43, v61, &qword_27DF12978, &unk_238781900);
  }
}

uint64_t sub_2386F0CA4()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758640();
  sub_238758F40();
  v7 = sub_23875BC80();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

double sub_2386F0E48(char a1, void *a2, uint64_t a3)
{
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  if (a1)
  {
    v18 = a2[2];
    v19 = a2[3];
    v28 = a2[1];
    v17 = v28;
    v29 = v18;
    v30 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v31);
    sub_2386F1FAC(a3, v16);
    sub_238439884(v16, &qword_27DF0C598, &unk_23877B770);
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v24 = v31;
    sub_23875E2F0();

    sub_2386F1104();
  }

  else
  {
    (*(v7 + 16))(v9, a3, v6, v14);
    v21 = a2[1];
    v22 = a2[2];
    v23 = a2[3];
    v28 = v21;
    v29 = v22;
    v30 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v31);
    sub_2387099C0(v12, v9);
    (*(v7 + 8))(v12, v6);
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v24 = v31;
    sub_23875E2F0();
  }

  return result;
}

void sub_2386F1104()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v4;
  v5 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0xD000000000000011;
  v6 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0x8000000238785C50;
  *(inited + 80) = v6;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000002387850C0;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v10;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2386F3860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v13 = sub_23875E910();

  [v12 subject:v0 sendEvent:v13];
}

double sub_2386F1340@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v29 = a2;
  v2 = sub_23875CE80();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SelectedTransactionsView(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v24 - v8;
  sub_23875ED50();
  v27 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  v15 = sub_23875EA80();
  v17 = v16;

  sub_2386F32DC(v26, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v19 = swift_allocObject();
  v20 = sub_2386F399C(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SelectedTransactionsView);
  v32[0] = v15;
  v32[1] = v17;
  MEMORY[0x28223BE20](v20);
  *(&v24 - 4) = v32;
  *(&v24 - 3) = 0x72616D6B63656863;
  *(&v24 - 2) = 0xE90000000000006BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  sub_23875CE70();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v21 = v28;
  v22 = v31;
  sub_23875DB00();
  (*(v30 + 8))(v4, v22);
  (*(v7 + 8))(v9, v21);

  return result;
}

double sub_2386F1814()
{
  v0 = sub_23875C600();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386F1D08(1701736292, 0xE400000000000000);
  sub_2386EEB7C(v3);
  sub_23875C5F0();
  (*(v1 + 8))(v3, v0);

  return result;
}

uint64_t sub_2386F1968()
{
  v10[1] = *(v0 + 8);
  v11 = *(v0 + 16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](v10, v1);
  v2 = *(v10[0] + 16);

  if (v2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  return v8;
}

double sub_2386F1AF8(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v9);
  v6 = *(v9 + 16);

  if (v6)
  {
    v13 = v2;
    v14 = v3;
    v15 = v4;

    MEMORY[0x23EE62DC0](&v12, v5);

    v9 = v2;
    v10 = v3;
    v11 = v4;
    sub_23875E2F0();
  }

  else
  {
    v7 = *a1;
    v13 = v2;
    v14 = v3;
    v15 = v4;

    MEMORY[0x23EE62DC0](&v12, v5);
    sub_2386F354C(v7);

    v9 = v2;
    v10 = v3;
    v11 = v4;
    sub_23875E2F0();

    sub_2386F1D08(0x7463656C65736564, 0xEB000000006C6C41);
  }

  return result;
}

void sub_2386F1D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875EA50();
  v5 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = a1;
  v10 = *MEMORY[0x277D384B8];
  *(inited + 72) = a2;
  *(inited + 80) = v10;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000002387850C0;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  v14 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v14;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2386F3860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v17 = sub_23875E910();

  [v16 subject:v4 sendEvent:v17];
}

uint64_t sub_2386F1F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A58, &qword_2387818C0);
  sub_2386F2F90();
  return sub_23875C8F0();
}

uint64_t sub_2386F1FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238758F50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2386F3860(&qword_27DF11878, MEMORY[0x277CC7678], MEMORY[0x277CC7680]);
  v32 = a1;
  v10 = sub_23875E950();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      sub_2386F3860(&qword_27DF0D430, MEMORY[0x277CC7678], MEMORY[0x277CC7688]);
      v19 = sub_23875E9E0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23870CC7C(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    sub_2386F2584(v13, MEMORY[0x277CC7678], &qword_27DF11878, MEMORY[0x277CC7678], MEMORY[0x277CC7680]);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_2386F2298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238758680();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2386F3860(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
  v32 = a1;
  v10 = sub_23875E950();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      sub_2386F3860(&qword_27DF09538, MEMORY[0x277CC6F70], MEMORY[0x277CC6F80]);
      v19 = sub_23875E9E0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23870CC54(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    sub_2386F2584(v13, MEMORY[0x277CC6F70], &qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_2386F2584(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_23875F330();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_2386F3860(v40, v41, v42);
        v24 = sub_23875E950();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

void sub_2386F2880(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_2386F1FAC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_238439884(v5, &qword_27DF0C598, &unk_23877B770);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t objectdestroyTm_32()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_2386F2B24()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v4;
  v5 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  strcpy((inited + 64), "showSelected");
  v6 = *MEMORY[0x277D384B8];
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = v6;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v10;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2386F3860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v13 = sub_23875E910();

  [v12 subject:v0 sendEvent:v13];
}

void sub_2386F2D90(uint64_t a1)
{
  sub_2386F2F08(319, &qword_27DF14A50, MEMORY[0x277CC7678], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2386F2EA4(319);
    if (v2 <= 0x3F)
    {
      sub_2386F2F08(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2384DCD94(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2386F2EA4(uint64_t a1)
{
  if (!qword_27DF0B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B558, &qword_238768210);
    v1 = sub_23875E340();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0B5A8);
    }
  }
}

void sub_2386F2F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2386F2F90()
{
  result = qword_27DF14A60;
  if (!qword_27DF14A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A58, &qword_2387818C0);
    sub_2386F301C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14A60);
  }

  return result;
}

unint64_t sub_2386F301C()
{
  result = qword_27DF14A68;
  if (!qword_27DF14A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A70, &qword_2387818C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A78, &qword_2387818D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A80, &qword_2387818D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A88, &qword_2387818E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A90, &qword_2387818E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A98, &qword_2387818F0);
    v1 = sub_23843A3E8(&qword_27DF14AA0, &qword_27DF14A98, &qword_2387818F0, MEMORY[0x277CDE5A0]);
    sub_2384397A8(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF14AA8, &qword_27DF14A80, &qword_2387818D8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14A68);
  }

  return result;
}

unint64_t sub_2386F3250()
{
  result = qword_27DF14AB8;
  if (!qword_27DF14AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14AB0, &qword_2387818F8);
    sub_238665440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14AB8);
  }

  return result;
}

uint64_t sub_2386F32DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedTransactionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386F33BC()
{
  result = qword_27DF14AF0;
  if (!qword_27DF14AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14AE8, &qword_238781938);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14AF0);
  }

  return result;
}

uint64_t sub_2386F34D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SelectedTransactionsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_2386F354C(uint64_t a1)
{
  v2 = sub_238758F50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2, v7);
      sub_2387099C0(v9, v5);
      (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

uint64_t objectdestroy_31Tm()
{
  v1 = type metadata accessor for SelectedTransactionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C600();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2386F37E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SelectedTransactionsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2386F05BC(a1, v6, a2);
}

uint64_t sub_2386F3860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2386F38C8(char a1)
{
  v3 = *(type metadata accessor for SelectedTransactionsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238758F50() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2386F0E48(a1, (v1 + v4), v7);
}

uint64_t sub_2386F399C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2386F3A0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v136 = a5;
  v164 = a4;
  v159 = a3;
  v150 = a2;
  v155 = a1;
  v137 = a6;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB10, &qword_2387774C0);
  v157 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v162 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v161 = &v129 - v8;
  MEMORY[0x28223BE20](v9);
  v160 = (&v129 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  MEMORY[0x28223BE20](v11 - 8);
  v135 = &v129 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC90, &qword_238774290);
  MEMORY[0x28223BE20](v13 - 8);
  v141 = &v129 - v14;
  v158 = sub_2387581D0();
  v15 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v133 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v134 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v147 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v129 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  MEMORY[0x28223BE20](v24 - 8);
  v165 = &v129 - v25;
  v145 = sub_238758240();
  v144 = *(v145 - 1);
  MEMORY[0x28223BE20](v145);
  v143 = (&v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_238758520();
  v27 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_238758270();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v132 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v153 = &v129 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v129 - v36;
  v142 = type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0);
  MEMORY[0x28223BE20](v142);
  v39 = (&v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  MEMORY[0x28223BE20](v40);
  v42 = (&v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = v43;
  v44 = v43[7];
  v45 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v140 = v44;
  v146 = v45;
  v139 = v47;
  v138 = v46 + 56;
  (v47)(v42 + v44, 1, 1);
  v48 = v155;
  *v42 = sub_2387580C0();
  v42[1] = v49;
  v149 = v42;
  v154 = v31;
  v50 = *(v31 + 16);
  v156 = v30;
  v151 = v50;
  v152 = v31 + 16;
  v50(v37, v48, v30);
  if (*(v150 + 16))
  {
    v51 = v131;
    (*(v27 + 16))(v29, v150 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v131);
    v52 = sub_2387584C0();
    v54 = v53;
    (*(v27 + 8))(v29, v51);
    v55 = v52;
  }

  else
  {
    v55 = 0;
    v54 = 0;
  }

  v56 = *(v142 + 24);
  v57 = sub_238757F50();
  (*(*(v57 - 8) + 56))(v39 + v56, 1, 1, v57);
  v58 = v143;
  sub_238758250();
  v59 = sub_2387580C0();
  v61 = v60;
  (*(v144 + 8))(v58, v145);
  *v39 = v59;
  v39[1] = v61;
  v39[2] = v55;
  v39[3] = v54;
  v62 = v165;
  sub_238758260();
  v63 = *(v154 + 8);
  v64 = v156;
  v154 += 8;
  v145 = v63;
  v63(v37, v156);
  sub_2385309FC(v62, v39 + v56, &qword_27DF09AF8, &qword_238764438);
  v66 = v148;
  v65 = v149;
  sub_2386FAB68(v39, v149 + v148[5], type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel);
  v67 = v153;
  v68 = v155;
  v151(v153, v155, v64);
  sub_238673CC8(v67, v65 + v66[6]);
  v69 = sub_2387581E0();
  v70 = v69;
  v71 = v158;
  v165 = v69;
  if (v164)
  {
    v72 = *(v69 + 16);
    if (v72)
    {
      v73 = v69 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v74 = (v15 + 8);

      v75 = 0;
      while (v75 < *(v70 + 2))
      {
        (*(v15 + 16))(v23, v73 + *(v15 + 72) * v75, v71);
        v76 = sub_238758170();
        if (v77)
        {
          if (v76 == v159 && v77 == v164)
          {

            (*v74)(v23, v71);
            v70 = v165;
LABEL_21:
            swift_bridgeObjectRelease_n();
            v68 = v155;
            goto LABEL_22;
          }

          v78 = sub_23875F630();

          (*v74)(v23, v71);
          v70 = v165;
          if (v78)
          {
            goto LABEL_21;
          }
        }

        else
        {
          (*v74)(v23, v71);
          v70 = v165;
        }

        if (v72 == ++v75)
        {

          v68 = v155;
          v66 = v148;
          v65 = v149;
          goto LABEL_16;
        }
      }

      goto LABEL_38;
    }

LABEL_16:
  }

  if (!*(v70 + 2))
  {

    v79 = v140;
    sub_238439884(v65 + v140, &qword_27DF14B18, &unk_238781A20);
    v139(v65 + v79, 1, 1, v146);
    *(v65 + v66[8]) = MEMORY[0x277D84F90];
    v80 = v153;
    v151(v153, v68, v156);
    v81 = v141;
    (*(v15 + 56))(v141, 1, 1, v71);
    v82 = v66[9];
    v83 = v150;

    sub_2385BF324(v80, v83, v81, (v65 + v82));
    v84 = v83;
LABEL_36:
    v127 = v65 + v66[10];
    *v127 = sub_23870FED4(v84, 0);
    *(v127 + 8) = v128;
    *(v65 + v66[11]) = v136 & 1;
    sub_2386FB6C4(v65, v137, type metadata accessor for ExtractedOrderDetails.ViewModel);
    v145(v68, v156);
    sub_2386FBEFC(v65, type metadata accessor for ExtractedOrderDetails.ViewModel);
    return;
  }

  v75 = 0;
LABEL_22:
  if (v75 >= *(v70 + 2))
  {
    goto LABEL_39;
  }

  v130 = v15;
  v85 = &v70[(*(v15 + 80) + 32) & ~*(v15 + 80)];
  v159 = *(v15 + 72);
  v86 = v15 + 16;
  v87 = *(v15 + 16);
  v88 = v147;
  v87(v147, &v85[v159 * v75], v71);
  v89 = v151;
  v151(v153, v68, v156);
  v90 = v134;
  v87(v134, v88, v71);
  v164 = v87;
  v144 = v86;
  v91 = v146[7];
  v92 = v135;
  v142 = &v135[v146[6]];
  v143 = &v135[v91];
  sub_2387581C0();
  v93 = v132;
  v89(v132, v153, v156);
  v94 = v133;
  v87(v133, v90, v71);
  v95 = v146;
  sub_238601310(v93, v94, v92 + v146[5]);
  v96 = sub_238758170();
  v97 = v142;
  *v142 = v96;
  *(v97 + 8) = v98;
  v99 = sub_238758140();
  v100 = v143;
  *v143 = v99;
  v100[1] = v101;
  v102 = v153;
  v103 = sub_2387581E0();
  v104 = v130;
  v105 = *(v130 + 8);
  v143 = (v130 + 8);
  v142 = v105;
  v105(v90, v71);
  v106 = v102;
  v107 = v102;
  v108 = v156;
  v145(v106, v156);
  v109 = *(v103 + 16);

  v110 = v92 + v95[8];
  *v110 = 0;
  *(v110 + 8) = v75;
  *(v110 + 16) = v109;
  *(v110 + 24) = 1;
  v139(v92, 0, 1, v95);
  v111 = v149;
  sub_2385309FC(v92, v149 + v140, &qword_27DF14B18, &unk_238781A20);
  v151(v107, v155, v108);
  v112 = v141;
  v164(v141, v147, v71);
  (*(v104 + 56))(v112, 0, 1, v71);
  v113 = v148[9];
  v114 = v150;

  sub_2385BF324(v107, v114, v112, (v111 + v113));
  v115 = *(v165 + 2);
  if (!v115)
  {
    v117 = MEMORY[0x277D84F90];
LABEL_35:

    MEMORY[0x28223BE20](v125);
    v68 = v155;
    *(&v129 - 2) = v155;
    v126 = sub_23857FC18(sub_2386FC690, (&v129 - 4), v117);

    (v142)(v147, v71);
    v66 = v148;
    v65 = v149;
    *(v149 + v148[8]) = v126;
    v84 = v150;
    goto LABEL_36;
  }

  v116 = 0;
  v117 = MEMORY[0x277D84F90];
  while (v116 < *(v165 + 2))
  {
    v118 = *(v163 + 48);
    v119 = v161;
    *v161 = v116;
    v164(&v119[v118], v85, v71);
    v120 = v119;
    v121 = v160;
    sub_2384396E4(v120, v160, &qword_27DF0EB10, &qword_2387774C0);
    if (*v121 == v75)
    {
      sub_238439884(v121, &qword_27DF0EB10, &qword_2387774C0);
    }

    else
    {
      sub_2384396E4(v121, v162, &qword_27DF0EB10, &qword_2387774C0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v166 = v117;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2385FED8C(0, *(v117 + 16) + 1, 1);
        v117 = v166;
      }

      v124 = *(v117 + 16);
      v123 = *(v117 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_2385FED8C((v123 > 1), v124 + 1, 1);
        v117 = v166;
      }

      *(v117 + 16) = v124 + 1;
      sub_2384396E4(v162, v117 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v124, &qword_27DF0EB10, &qword_2387774C0);
      v71 = v158;
    }

    ++v116;
    v85 += v159;
    if (v115 == v116)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_2386F4984(void *a1@<X0>, void (**a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v132 = a4;
  v145 = a2;
  v8 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  v141 = *(v8 - 8);
  v142 = v8;
  MEMORY[0x28223BE20](v8);
  v140 = v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v139 = v128 - v11;
  MEMORY[0x28223BE20](v12);
  v146 = v128 - v13;
  v14 = sub_23875ABE0();
  MEMORY[0x28223BE20](v14 - 8);
  v128[1] = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v144 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  MEMORY[0x28223BE20](v19 - 8);
  v129 = v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v128 - v22;
  v24 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v25 = *(v17 + 56);
  v134 = *(v24 + 28);
  v135 = (v17 + 56);
  v143 = v16;
  v133 = v25;
  v25(a5 + v134, 1, 1, v16);
  v131 = [a1 orderContent];
  v26 = sub_23875A5E0();
  v27 = [a1 trackedOrderIdentifier];
  v28 = sub_23875EA80();
  v30 = v29;

  *a5 = v28;
  a5[1] = v30;
  v137 = v24;
  v138 = a5;
  v31 = (a5 + *(v24 + 20));
  v32 = *(type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0) + 24);
  v33 = sub_238757F50();
  (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
  v34 = a1;
  v35 = [v34 orderContent];
  v36 = [v35 merchantDisplayName];

  v37 = sub_23875EA80();
  v39 = v38;

  *v31 = v37;
  v31[1] = v39;
  v40 = [v34 merchantEmailAddress];
  if (v40)
  {
    v41 = v40;
    v42 = sub_23875EA80();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v31[2] = v42;
  v31[3] = v44;
  v45 = [v34 orderContent];
  sub_23875A600();

  sub_2385309FC(v23, v31 + v32, &qword_27DF09AF8, &qword_238764438);
  v46 = v137;
  v47 = v137[6];
  v48 = v34;
  v49 = v138;
  v136 = v48;
  sub_2386732AC(v48, v138 + v47);
  v50 = v26 >> 62;
  if (!a3)
  {
LABEL_32:
    v62 = v143;
    if (v50)
    {
LABEL_66:
      if (sub_23875F3A0() > 0)
      {
        goto LABEL_34;
      }
    }

    else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
LABEL_34:
      v130 = v50;
      if ((v26 & 0xC000000000000001) != 0)
      {
        goto LABEL_90;
      }

      v52 = 0;
      v46 = v26 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_36;
    }

    v100 = v134;
    sub_238439884(v49 + v134, &qword_27DF14B18, &unk_238781A20);
    v133(v49 + v100, 1, 1, v62);
    *(v49 + *(v46 + 32)) = MEMORY[0x277D84F90];
    sub_2385BEF3C(v136, 0, (v49 + *(v46 + 36)));
    goto LABEL_87;
  }

  if (v50)
  {
    goto LABEL_30;
  }

  v51 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_7:
  v130 = v50;
  v50 = v26 & 0xC000000000000001;
  v46 = v26 & 0xFFFFFFFFFFFFFF8;

  v52 = 0;
  while (1)
  {
    if (v50)
    {
      v53 = MEMORY[0x23EE63F70](v52, v26);
    }

    else
    {
      if (v52 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v53 = *(v26 + 8 * v52 + 32);
    }

    v49 = v53;
    v54 = [v53 trackingNumber];
    if (v54)
    {
      break;
    }

    v61 = (v52 + 1);
    if (__OFADD__(v52, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v51 = sub_23875F3A0();
      if (!v51)
      {
        goto LABEL_31;
      }

      goto LABEL_7;
    }

LABEL_22:
    ++v52;
    if (v61 == v51)
    {
      swift_bridgeObjectRelease_n();
      v46 = v137;
      v49 = v138;
      v50 = v130;
      goto LABEL_32;
    }
  }

  v55 = v54;
  v56 = sub_23875EA80();
  v58 = v57;

  if (v56 != v145 || v58 != a3)
  {
    v60 = sub_23875F630();

    if (v60)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_26;
    }

    v61 = (v52 + 1);
    if (__OFADD__(v52, 1))
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  swift_bridgeObjectRelease_n();

LABEL_26:
  v62 = v143;
  if (v50)
  {
    goto LABEL_91;
  }

LABEL_36:
  if (v52 >= *(v46 + 16))
  {
    goto LABEL_89;
  }

  v63 = *(v26 + 8 * v52 + 32);
  v64 = 1;
  while (2)
  {
    v65 = v136;
    v66 = v63;
    sub_23875ABF0();
    v67 = v144;
    sub_2387581A0();
    v68 = *(v62 + 20);
    v69 = v65;
    v70 = v66;
    sub_2386006B8(v69, v70, &v67[v68]);
    v71 = [v70 trackingNumber];
    if (v71)
    {
      v72 = v71;
      v73 = sub_23875EA80();
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v76 = v138;
    v77 = &v144[*(v62 + 24)];
    *v77 = v73;
    v77[1] = v75;
    v78 = [v70 carrierName];
    if (v78)
    {
      v79 = v78;
      v80 = sub_23875EA80();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    v83 = v129;
    v84 = &v144[*(v62 + 28)];
    *v84 = v80;
    v84[1] = v82;
    v85 = [v69 orderContent];
    v86 = sub_23875A5E0();

    if (v86 >> 62)
    {
      v87 = sub_23875F3A0();
    }

    else
    {
      v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = v144;
    v89 = &v144[*(v62 + 32)];
    *v89 = 0;
    *(v89 + 1) = v52;
    *(v89 + 2) = v87;
    v89[24] = 1;
    sub_2386FAB68(v88, v83, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
    v133(v83, 0, 1, v62);
    sub_2385309FC(v83, v76 + v134, &qword_27DF14B18, &unk_238781A20);
    v90 = v137[9];
    v91 = v69;
    v135 = v70;
    v145 = v91;
    sub_2385BEF3C(v91, v70, (v76 + v90));
    if (v130)
    {
      v50 = v26 & 0xFFFFFFFFFFFFFF8;
      v92 = sub_23875F3A0();
      if (v92)
      {
        goto LABEL_48;
      }

      goto LABEL_70;
    }

    v50 = v26 & 0xFFFFFFFFFFFFFF8;
    v92 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v92)
    {
LABEL_70:
      v143 = MEMORY[0x277D84F90];
      goto LABEL_71;
    }

LABEL_48:
    v46 = 0;
    v143 = MEMORY[0x277D84F90];
    do
    {
      v49 = v46;
      while (1)
      {
        if (v64)
        {
          if (v49 >= *(v50 + 16))
          {
            goto LABEL_65;
          }

          v93 = *(v26 + 8 * v49 + 32);
        }

        else
        {
          v93 = MEMORY[0x23EE63F70](v49, v26);
        }

        v94 = v93;
        v46 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (v52 != v49)
        {
          break;
        }

        ++v49;
        if (v46 == v92)
        {
          goto LABEL_71;
        }
      }

      v95 = v143;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = v95;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2385FEE30(0, *(v95 + 16) + 1, 1);
        v95 = v147;
      }

      v62 = *(v95 + 16);
      v97 = *(v95 + 24);
      v98 = (v62 + 1);
      if (v62 >= v97 >> 1)
      {
        v144 = (v62 + 1);
        sub_2385FEE30((v97 > 1), v62 + 1, 1);
        v98 = v144;
        v95 = v147;
      }

      *(v95 + 16) = v98;
      v143 = v95;
      v99 = v95 + 16 * v62;
      *(v99 + 32) = v49;
      *(v99 + 40) = v94;
    }

    while (v46 != v92);
LABEL_71:

    v101 = v143;
    v144 = *(v143 + 16);
    if (v144)
    {
      v102 = 0;
      v103 = (v143 + 40);
      v104 = MEMORY[0x277D84F90];
      while (v102 < *(v101 + 16))
      {
        v62 = *(v103 - 1);
        v105 = *v103;
        v106 = v145;
        v107 = v105;
        v108 = [v107 trackingNumber];
        if (v108)
        {
          v109 = v108;
          v110 = sub_23875EA80();
          v26 = v111;

          v112 = [v106 orderContent];
          v113 = sub_23875A5E0();

          if (v113 >> 62)
          {
            v114 = sub_23875F3A0();
          }

          else
          {
            v114 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v115 = v140;
          *v140 = 0;
          *(v115 + 8) = v62;
          *(v115 + 16) = v114;
          *(v115 + 24) = 1;
          v116 = v142;
          sub_2386006B8(v106, v107, (v115 + *(v142 + 20)));

          v117 = (v115 + *(v116 + 24));
          *v117 = v110;
          v117[1] = v26;
          v118 = v139;
          sub_2386FAB68(v115, v139, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
          sub_2386FAB68(v118, v146, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_238498684(0, v104[2] + 1, 1, v104);
          }

          v101 = v143;
          v120 = v104[2];
          v119 = v104[3];
          if (v120 >= v119 >> 1)
          {
            v104 = sub_238498684((v119 > 1), v120 + 1, 1, v104);
          }

          v104[2] = v120 + 1;
          sub_2386FAB68(v146, v104 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v120, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
        }

        else
        {
        }

        ++v102;
        v103 += 2;
        if (v144 == v102)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v52 = 0;
LABEL_91:
      v63 = MEMORY[0x23EE63F70](v52, v26);
      v64 = 0;
      continue;
    }

    break;
  }

  v104 = MEMORY[0x277D84F90];
LABEL_86:

  v46 = v137;
  v49 = v138;
  *(v138 + v137[8]) = v104;
LABEL_87:
  v121 = (v49 + *(v46 + 40));
  v122 = v136;
  v123 = sub_238759420();
  v124 = sub_238759470();
  v125 = sub_23870E94C(v123, v124, 0);
  v127 = v126;

  *v121 = v125;
  v121[8] = v127;
  *(v49 + *(v46 + 44)) = v132 & 1;
}

uint64_t sub_2386F5604@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v23 = sub_23875CE00();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B50, &qword_238781AD0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B58, &qword_238781AD8);
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v28 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B60, &qword_238781AE0);
  sub_23843A3E8(&qword_27DF14B68, &qword_27DF14B60, &qword_238781AE0, MEMORY[0x277CE1198]);
  sub_23875C410();
  v12 = [objc_opt_self() systemGroupedBackgroundColor];
  v13 = sub_23875DFB0();
  v14 = sub_23875D780();
  v15 = &v7[*(v5 + 36)];
  *v15 = v13;
  v15[8] = v14;
  v16 = v23;
  (*(v2 + 104))(v4, *MEMORY[0x277CDDDC0], v23);
  v17 = sub_2386FAF38();
  sub_23875DE50();
  (*(v2 + 8))(v4, v16);
  sub_238439884(v7, &qword_27DF14B50, &qword_238781AD0);
  v27 = v22[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B88, &qword_238781AF8);
  v29 = v5;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B90, &qword_238781B00);
  v19 = sub_23843A3E8(&qword_27DF14B98, &qword_27DF14B90, &qword_238781B00, MEMORY[0x277CDD7A8]);
  v29 = v18;
  v30 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  sub_23875DEF0();
  return (*(v25 + 8))(v11, v20);
}

double sub_2386F59DC@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BE8, &unk_238781BC0);
  sub_2386F5AB0(a1, a2 + *(v4 + 44));

  return result;
}

double sub_2386F5AB0@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D750, &unk_23876D850);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v102 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D758, &qword_238781BD0);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D928, &qword_23876D998);
  v132 = *(v5 - 8);
  v133 = v5;
  MEMORY[0x28223BE20](v5);
  v109 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D760, &qword_23876D860);
  MEMORY[0x28223BE20](v7 - 8);
  v144 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v143 = &v102 - v10;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BF0, &qword_238781BD8);
  v128 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v125 = &v102 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BF8, &qword_238781BE0);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v126 = &v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C00, &qword_238781BE8);
  v134 = *(v13 - 8);
  v135 = v13;
  MEMORY[0x28223BE20](v13);
  v142 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v147 = &v102 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C08, &qword_238781BF0);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v102 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C10, &qword_238781BF8);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v102 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C18, &qword_238781C00);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v102 = &v102 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C20, &qword_238781C08);
  MEMORY[0x28223BE20](v20 - 8);
  v141 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v140 = &v102 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C28, &qword_238781C10);
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v25 = &v102 - v24;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C30, &qword_238781C18);
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v117 = &v102 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C38, &qword_238781C20);
  v138 = *(v27 - 8);
  v139 = v27;
  MEMORY[0x28223BE20](v27);
  v146 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v145 = &v102 - v30;
  v31 = type metadata accessor for ExtractedOrderDetails(0);
  v116 = *(v31 - 8);
  v32 = *(v116 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C40, &qword_238781C28);
  MEMORY[0x28223BE20](v34);
  v137 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v148 = &v102 - v37;
  sub_23875ED50();
  v127 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v122 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  sub_2386FB6C4(&a1[*(v122 + 20)], v148, type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel);
  v38 = sub_23875E4A0();
  v40 = v39;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386FB6C4(a1, &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v41 = (*(v116 + 80) + 16) & ~*(v116 + 80);
  v42 = swift_allocObject();
  sub_2386FAB68(v33, v42 + v41, type metadata accessor for ExtractedOrderDetails);

  v44 = (v148 + *(v34 + 36));
  *v44 = sub_2386FB72C;
  v44[1] = v42;
  v44[2] = v38;
  v44[3] = v40;
  MEMORY[0x28223BE20](v43);
  *(&v102 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C48, &qword_238781C30);
  sub_2386FB74C();
  sub_23875D9C0();
  v45 = sub_23843A3E8(&qword_27DF14CB8, &qword_27DF14C28, &qword_238781C10, MEMORY[0x277CDE5A0]);
  v46 = v117;
  v47 = v120;
  sub_23875DB70();
  (*(v118 + 8))(v25, v47);
  v149 = v47;
  v150 = v45;
  v48 = 1;
  swift_getOpaqueTypeConformance2();
  v49 = v121;
  sub_23875DD80();
  v50 = (*(v119 + 8))(v46, v49);
  v51 = v122;
  if (*(*&a1[*(v122 + 32)] + 16))
  {
    MEMORY[0x28223BE20](v50);
    *(&v102 - 2) = v52;
    *(&v102 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CC0, &qword_238781C68);
    sub_2386FBB84();
    v53 = v103;
    sub_23875D9C0();
    v54 = sub_23843A3E8(&qword_27DF14D10, &qword_27DF14C08, &qword_238781BF0, MEMORY[0x277CDE5A0]);
    v55 = v104;
    v56 = v107;
    sub_23875DB70();
    (*(v105 + 8))(v53, v56);
    v149 = v56;
    v150 = v54;
    swift_getOpaqueTypeConformance2();
    v57 = v102;
    v58 = v108;
    sub_23875DD80();
    (*(v106 + 8))(v55, v58);
    v59 = v123;
    v60 = v140;
    v61 = v124;
    (*(v123 + 32))(v140, v57, v124);
    v48 = 0;
  }

  else
  {
    v60 = v140;
    v61 = v124;
    v59 = v123;
  }

  v62 = 1;
  v63 = (*(v59 + 56))(v60, v48, 1, v61);
  MEMORY[0x28223BE20](v63);
  *(&v102 - 2) = a1;
  type metadata accessor for ExtractedOrderDetailsInfo(0);
  sub_2386FC648(&qword_27DF14D18, type metadata accessor for ExtractedOrderDetailsInfo, &unk_2387742A0);
  v64 = v125;
  sub_23875D9C0();
  v65 = sub_23843A3E8(&qword_27DF14D20, &qword_27DF14BF0, &qword_238781BD8, MEMORY[0x277CDE5A0]);
  v66 = v126;
  v67 = v131;
  sub_23875DB70();
  (*(v128 + 8))(v64, v67);
  v149 = v67;
  v150 = v65;
  swift_getOpaqueTypeConformance2();
  v68 = v130;
  sub_23875DD80();
  v69 = (*(v129 + 8))(v66, v68);
  if (*&a1[*(v51 + 40)])
  {
    v70 = v60;
    MEMORY[0x28223BE20](v69);
    *(&v102 - 2) = v71;
    *(&v102 - 8) = v72 & 1;
    sub_2385328A4(v73, v74, v75);
    v76 = v110;
    sub_23875D9C0();
    v77 = sub_23843A3E8(&qword_27DF0D948, &qword_27DF0D750, &unk_23876D850, MEMORY[0x277CDE5A0]);
    v78 = v111;
    v79 = v114;
    sub_23875DB70();
    (*(v112 + 8))(v76, v79);
    v149 = v79;
    v150 = v77;
    swift_getOpaqueTypeConformance2();
    v80 = v109;
    v81 = v115;
    sub_23875DD80();
    (*(v113 + 8))(v78, v81);
    v82 = v132;
    v83 = v143;
    v84 = v80;
    v85 = v133;
    (*(v132 + 32))(v143, v84, v133);
    v62 = 0;
  }

  else
  {
    v70 = v60;
    v83 = v143;
    v82 = v132;
    v85 = v133;
  }

  (*(v82 + 56))(v83, v62, 1, v85);
  v86 = v137;
  sub_23843981C(v148, v137, &qword_27DF14C40, &qword_238781C28);
  v87 = v139;
  v88 = *(v138 + 16);
  v88(v146, v145, v139);
  v89 = v141;
  sub_23843981C(v70, v141, &qword_27DF14C20, &qword_238781C08);
  v91 = v134;
  v90 = v135;
  v92 = *(v134 + 16);
  v92(v142, v147, v135);
  sub_23843981C(v83, v144, &qword_27DF0D760, &qword_23876D860);
  v93 = v136;
  sub_23843981C(v86, v136, &qword_27DF14C40, &qword_238781C28);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D28, &qword_238781C90);
  v88((v93 + v94[12]), v146, v87);
  v95 = v93 + v94[16];
  *v95 = 0x4028000000000000;
  *(v95 + 8) = 0;
  sub_23843981C(v89, v93 + v94[20], &qword_27DF14C20, &qword_238781C08);
  v96 = v142;
  v92((v93 + v94[24]), v142, v90);
  v97 = v144;
  sub_23843981C(v144, v93 + v94[28], &qword_27DF0D760, &qword_23876D860);
  sub_238439884(v143, &qword_27DF0D760, &qword_23876D860);
  v98 = *(v91 + 8);
  v98(v147, v90);
  sub_238439884(v140, &qword_27DF14C20, &qword_238781C08);
  v99 = v139;
  v100 = *(v138 + 8);
  v100(v145, v139);
  sub_238439884(v148, &qword_27DF14C40, &qword_238781C28);
  sub_238439884(v97, &qword_27DF0D760, &qword_23876D860);
  v98(v96, v90);
  sub_238439884(v141, &qword_27DF14C20, &qword_238781C08);
  v100(v146, v99);
  sub_238439884(v137, &qword_27DF14C40, &qword_238781C28);

  return result;
}

void sub_2386F6E44(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[2] = a2;
  v3 = type metadata accessor for ExtractedOrderDetails(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D2F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v24[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  v19 = sub_23875E020();
  sub_2386FB6C4(a1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_2386FAB68(v6, v21 + v20, type metadata accessor for ExtractedOrderDetails);
  v22 = (v21 + ((v20 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v12;
  v22[1] = v14;
  v22[2] = v16;
  v22[3] = v18;
  v24[7] = v19;
  v24[8] = sub_2386FC4DC;
  v24[9] = v21;
  v24[10] = 0;
  v24[11] = 0;
  v24[3] = v12;
  v24[4] = v14;
  v24[5] = v16;
  v24[6] = v18;
  sub_2386FB6C4(a1, v6, type metadata accessor for ExtractedOrderDetails);
  v23 = swift_allocObject();
  sub_2386FAB68(v6, v23 + v20, type metadata accessor for ExtractedOrderDetails);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_2386FC648(&qword_27DF0C7A0, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  sub_23875DF10();
}

void sub_2386F71D4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for ExtractedOrderDetails(0) + 20));
  v7 = v6[3];
  v17 = v6[2];
  v18 = v7;
  v19 = v6[4];
  v8 = v6[1];
  v15 = *v6;
  v16 = v8;
  v20 = *(v6 + 10);
  sub_23843981C(&v15, v21, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  sub_23875E1C0();
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v22 = v14;
  v21[0] = v9;
  v21[1] = v10;
  sub_238439884(v21, &qword_27DF0D728, &unk_23876D7F0);
}

double sub_2386F73A8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for ExtractedOrderDetails(0) + 20));
  v5 = v4[3];
  v16 = v4[2];
  v17 = v5;
  v18 = v4[4];
  v6 = v4[1];
  v14 = *v4;
  v15 = v6;
  v19 = *(v4 + 10);
  sub_23843981C(&v14, v20, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v8 = v14;
  v9 = v15;
  sub_23875E1C0();
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v21 = v13;
  v20[0] = v8;
  v20[1] = v9;
  sub_238439884(v20, &qword_27DF0D728, &unk_23876D7F0);

  return result;
}

double sub_2386F7570@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_23875C880();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = v35 - v6;
  v7 = sub_23875CEA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C70, &qword_238781C40);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C60, &qword_238781C38);
  MEMORY[0x28223BE20](v38);
  v39 = v35 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C48, &qword_238781C30);
  MEMORY[0x28223BE20](v37);
  v36 = v35 - v15;
  sub_23875ED50();
  v35[2] = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v35[1] = v35;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v35[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CA0, &unk_238781C58);
  sub_2386FBA90();
  sub_23875E3D0();
  sub_23875CE90();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C80, &qword_238781C48) + 36);
  (*(v8 + 16))(&v13[v17], v10, v7);
  v18 = *(v8 + 56);
  v18(&v13[v17], 0, 1, v7);
  KeyPath = swift_getKeyPath(aH_23);
  v20 = &v13[*(v11 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v8 + 32))(v20 + v21, v10, v7);
  v18(v20 + v21, 0, 1, v7);
  *v20 = KeyPath;
  type metadata accessor for ExtractedOrderDetails(0);
  v22 = v40;
  sub_2384D5138(v40);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  (*(v42 + 104))(v41, *MEMORY[0x277CDF9D8], v43);
  LOBYTE(KeyPath) = sub_23875C870();
  v26 = *(v24 + 8);
  v26(v23, v25);
  v26(v22, v25);
  if (KeyPath)
  {
    v27 = 0x4028000000000000;
  }

  else
  {
    v27 = 0x4030000000000000;
  }

  v28 = v39;
  sub_2384396E4(v13, v39, &qword_27DF14C70, &qword_238781C40);
  v29 = v28 + *(v38 + 36);
  *v29 = 0x4028000000000000;
  *(v29 + 8) = v27;
  *(v29 + 16) = 0x4028000000000000;
  *(v29 + 24) = v27;
  *(v29 + 32) = 0;
  v30 = sub_23875D000();
  v31 = v28;
  v32 = v36;
  sub_2384396E4(v31, v36, &qword_27DF14C60, &qword_238781C38);
  v33 = (v32 + *(v37 + 36));
  *v33 = v30;
  v33[1] = sub_23843480C;
  v33[2] = 0;
  sub_2384396E4(v32, v44, &qword_27DF14C48, &qword_238781C30);

  return result;
}

uint64_t sub_2386F7ABC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - v5;
  v34 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  MEMORY[0x28223BE20](v34);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D50, &qword_238781D10);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - v8;
  v33 = type metadata accessor for ExtractedOrderDetailsNoFulfillments(0);
  MEMORY[0x28223BE20](v33);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  sub_23843981C(a1 + *(v18 + 28), v13, &qword_27DF14B18, &unk_238781A20);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_238439884(v13, &qword_27DF14B18, &unk_238781A20);
    sub_2386FB6C4(a1 + *(v18 + 24), v10, type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel);
    v19 = *(v33 + 20);
    *&v10[v19] = swift_getKeyPath(byte_238781B88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2386FB6C4(v10, v31, type metadata accessor for ExtractedOrderDetailsNoFulfillments);
    swift_storeEnumTagMultiPayload();
    sub_2386FC648(&qword_27DF14CA8, type metadata accessor for ExtractedOrderDetailsShippingFulfillment, &unk_23878141C);
    sub_2386FC648(&qword_27DF14CB0, type metadata accessor for ExtractedOrderDetailsNoFulfillments, &unk_23877BD48);
    sub_23875D1B0();
    v20 = type metadata accessor for ExtractedOrderDetailsNoFulfillments;
    v21 = v10;
  }

  else
  {
    sub_2386FAB68(v13, v17, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
    sub_2386FB6C4(v17, v7, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
    v22 = v34;
    v23 = *(v34 + 20);
    *&v7[v23] = swift_getKeyPath(byte_238781B88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v24 = &v7[*(v22 + 24)];
    *v24 = swift_getKeyPath(byte_238781D18);
    v24[8] = 0;
    v25 = sub_23875B940();
    v26 = v28;
    (*(*(v25 - 8) + 56))(v28, 1, 1, v25);
    sub_23843981C(v26, v29, &qword_27DF0D040, &qword_2387676A0);
    sub_23875E1A0();
    sub_238439884(v26, &qword_27DF0D040, &qword_2387676A0);
    sub_2386FB6C4(v7, v31, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
    swift_storeEnumTagMultiPayload();
    sub_2386FC648(&qword_27DF14CA8, type metadata accessor for ExtractedOrderDetailsShippingFulfillment, &unk_23878141C);
    sub_2386FC648(&qword_27DF14CB0, type metadata accessor for ExtractedOrderDetailsNoFulfillments, &unk_23877BD48);
    sub_23875D1B0();
    sub_2386FBEFC(v7, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
    v20 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel;
    v21 = v17;
  }

  return sub_2386FBEFC(v21, v20);
}

double sub_2386F80F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10[1] = a1;
  swift_getKeyPath(byte_238781C98);
  sub_2386FB6C4(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2386FAB68(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ExtractedOrderDetails);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D30, &qword_238781CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CD8, &qword_238781C70);
  sub_23843A3E8(&qword_27DF14D38, &qword_27DF14D30, &qword_238781CB8, MEMORY[0x277D83980]);
  sub_2386FBC08();
  sub_23875E370();

  return result;
}

void sub_2386F8344(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875CEA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v16 - 2) = a2;
  *(&v16 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D08, &qword_238781C88);
  sub_23843A3E8(&qword_27DF14D00, &qword_27DF14D08, &qword_238781C88, MEMORY[0x277CE11A8]);
  sub_23875E3D0();
  sub_23875CE90();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CE8, &qword_238781C78) + 36);
  (*(v7 + 16))(a3 + v11, v9, v6);
  v12 = *(v7 + 56);
  v12(a3 + v11, 0, 1, v6);
  KeyPath = swift_getKeyPath(aH_23);
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CD8, &qword_238781C70) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v7 + 32))(v14 + v15, v9, v6);
  v12(v14 + v15, 0, 1, v6);

  *v14 = KeyPath;
}

double sub_2386F85E8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_23875E4B0();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D40, &unk_238781CF0);
  return sub_2386F8648(a1, a2, a3 + *(v7 + 44));
}

double sub_2386F8648@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v42 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment(0);
  MEMORY[0x28223BE20](v42);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = &v36 - v12;
  v13 = type metadata accessor for OrderNavigationDestination(0);
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D980, &qword_23876DA58);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for ExtractedOrderDetails.ViewModel(0) + 44)))
  {
    (*(v40 + 56))(v21, 1, 1, v11);
    v22 = v43;
  }

  else
  {
    v24 = *a1;
    v23 = a1[1];
    v25 = *(type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0) + 24);
    v37 = v11;
    v22 = v43;
    v26 = (v43 + v25);
    v27 = *v26;
    v28 = v26[1];
    *v15 = v24;
    v15[1] = v23;
    v15[2] = v27;
    v15[3] = v28;
    swift_storeEnumTagMultiPayload();
    sub_2386FB6C4(v15, v10, type metadata accessor for OrderNavigationDestination);
    (*(v38 + 56))(v10, 0, 1, v13);
    sub_2386FC648(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);

    v29 = v39;
    sub_23875C760();
    sub_2386FBEFC(v15, type metadata accessor for OrderNavigationDestination);
    v30 = v37;
    *(v29 + *(v37 + 36)) = 0;
    sub_2384396E4(v29, v21, &qword_27DF0BC20, &qword_238769430);
    (*(v40 + 56))(v21, 0, 1, v30);
  }

  sub_2386FB6C4(v22, v7, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
  v31 = *(v42 + 20);
  *&v7[v31] = swift_getKeyPath(byte_238781B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  sub_23843981C(v21, v18, &qword_27DF0D980, &qword_23876DA58);
  v32 = v45;
  sub_2386FB6C4(v7, v45, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment);
  v33 = v44;
  sub_23843981C(v18, v44, &qword_27DF0D980, &qword_23876DA58);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D48, &unk_238781D00);
  sub_2386FB6C4(v32, v33 + *(v34 + 48), type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment);
  sub_2386FBEFC(v7, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment);
  sub_238439884(v21, &qword_27DF0D980, &qword_23876DA58);
  sub_2386FBEFC(v32, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment);
  sub_238439884(v18, &qword_27DF0D980, &qword_23876DA58);

  return result;
}

double sub_2386F8C04()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

double sub_2386F8C94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  sub_2386FB6C4(a1 + *(v4 + 36), a2, type metadata accessor for ExtractedOrderDetailsInfo.ViewModel);

  return result;
}

void sub_2386F8D60(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E1A0();

  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

double sub_2386F8E3C(uint64_t a1)
{
  v2 = sub_23875D2A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B90, &qword_238781B00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D290();
  MEMORY[0x28223BE20](v7);
  *(&v10 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BA0, &qword_238781B08);
  sub_2386FB02C();
  sub_23875C4D0();
  v8 = sub_23843A3E8(&qword_27DF14B98, &qword_27DF14B90, &qword_238781B00, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v6, v3, v8);
  (*(v4 + 8))(v6, v3);

  return result;
}

uint64_t sub_2386F9080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExtractedOrderDetails(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BC0, &qword_238781B20) + 44);
  *v6 = sub_23875CE60();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BC8, &unk_238781B28);
  sub_2386F934C(a1, v6 + *(v7 + 44));

  v8 = sub_23875E4A0();
  v10 = v9;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386FB6C4(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v11 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v12 = swift_allocObject();
  sub_2386FAB68(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ExtractedOrderDetails);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BA0, &qword_238781B08);
  v14 = (a2 + *(result + 36));
  *v14 = sub_2386FB110;
  v14[1] = v12;
  v14[2] = v8;
  v14[3] = v10;
  return result;
}

void sub_2386F934C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v47 = sub_23875DFD0();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C70, &unk_238769510);
  MEMORY[0x28223BE20](v46);
  v6 = &v43 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BD0, &qword_238781B38);
  MEMORY[0x28223BE20](v48);
  v50 = &v43 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BD8, &qword_238781B40);
  MEMORY[0x28223BE20](v49);
  v52 = &v43 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BE0, &qword_238781B48);
  MEMORY[0x28223BE20](v51);
  v54 = &v43 - v9;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + *(type metadata accessor for ExtractedOrderDetails.ViewModel(0) + 20));
  v12 = *v10;
  v11 = v10[1];
  v44 = a1;
  v14 = v10[2];
  v13 = v10[3];
  *v65 = 0;
  v65[8] = -1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B30, &unk_238764470);
  sub_23875E1A0();
  v15 = v66[8];
  v16 = *&v66[16];
  *(v6 + 4) = *v66;
  v6[40] = v15;
  *(v6 + 6) = v16;
  *v65 = 0;
  v65[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  v17 = v66[8];
  v18 = *&v66[16];
  *(v6 + 7) = *v66;
  v6[64] = v17;
  *(v6 + 9) = v18;
  v19 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) + 32);
  *&v6[v19] = swift_getKeyPath(byte_238781B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v6 = v12;
  *(v6 + 1) = v11;
  *(v6 + 2) = v14;
  *(v6 + 3) = v13;
  (*(v45 + 104))(v4, *MEMORY[0x277CE0EE0], v47);
  v20 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_238781B88);
  v22 = &v6[*(v46 + 36)];
  v23 = type metadata accessor for OrderImageStyleModifier(0);
  *&v22[*(v23 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v22[*(v23 + 40)] = swift_getKeyPath(byte_238781B50);
  swift_storeEnumTagMultiPayload();
  *v22 = xmmword_2387692C0;
  *(v22 + 2) = 0;
  v22[24] = 1;
  *(v22 + 4) = v20;
  v22[40] = 0;
  v24 = v44 + *(type metadata accessor for ExtractedOrderDetails(0) + 20);
  v25 = *(v24 + 48);
  *&v66[32] = *(v24 + 32);
  *&v66[48] = v25;
  *&v66[64] = *(v24 + 64);
  *&v66[80] = *(v24 + 80);
  v26 = *(v24 + 16);
  *v66 = *v24;
  *&v66[16] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  if ((v65[32] & 1) != 0 || (v65[72] & 1) != 0 || (v27 = 1.0, *&v65[48] + *&v65[64] >= *&v65[8] + *&v65[24]))
  {
    v27 = 0.0;
  }

  v28 = v50;
  sub_2384396E4(v6, v50, &qword_27DF09C70, &unk_238769510);
  *(v28 + *(v48 + 36)) = v27;
  v29 = *(v24 + 48);
  *&v66[32] = *(v24 + 32);
  *&v66[48] = v29;
  *&v66[64] = *(v24 + 64);
  *&v66[80] = *(v24 + 80);
  v30 = *(v24 + 16);
  *v66 = *v24;
  *&v66[16] = v30;
  sub_23875E1B0();
  v31 = 0;
  if ((v65[32] & 1) == 0 && ((v65[72] & 1) != 0 || *&v65[48] + *&v65[64] >= *&v65[8] + *&v65[24]))
  {
    v31 = *&v65[24];
  }

  v32 = v52;
  v33 = sub_2384396E4(v28, v52, &qword_27DF14BD0, &qword_238781B38);
  v34 = (v32 + *(v49 + 36));
  *v34 = 0;
  v34[1] = v31;
  v35 = MEMORY[0x23EE62FD0](v33, 0.5, 1.0, 0.0);
  v36 = *(v24 + 48);
  *&v66[32] = *(v24 + 32);
  *&v66[48] = v36;
  *&v66[64] = *(v24 + 64);
  *&v66[80] = *(v24 + 80);
  v37 = *(v24 + 16);
  *v66 = *v24;
  *&v66[16] = v37;
  sub_23875E1B0();
  v60[0] = v64[0];
  *(v60 + 9) = *(v64 + 9);
  v58 = v62;
  v59 = v63;
  v57 = v61;
  *v65 = v35;
  *&v65[40] = v63;
  *&v65[56] = v64[0];
  *&v65[65] = *(v64 + 9);
  *&v65[8] = v61;
  *&v65[24] = v62;
  v38 = v54;
  sub_2384396E4(v32, v54, &qword_27DF14BD8, &qword_238781B40);
  v39 = v38 + *(v51 + 36);
  v40 = *&v65[48];
  *(v39 + 32) = *&v65[32];
  *(v39 + 48) = v40;
  *(v39 + 64) = *&v65[64];
  v41 = *&v65[16];
  *v39 = *v65;
  *(v39 + 16) = v41;
  v42 = v57;
  *&v66[24] = v58;
  *&v66[40] = v59;
  *&v66[56] = v60[0];
  *&v66[65] = *(v60 + 9);
  *(v39 + 80) = v65[80];
  *v66 = v35;
  *&v66[8] = v42;
  sub_23843981C(v65, &v56, &qword_27DF0C7E8, &unk_23876B400);
  sub_238439884(v66, &qword_27DF0C7E8, &unk_23876B400);
  sub_2384396E4(v38, v55, &qword_27DF14BE0, &qword_238781B48);
}

void sub_2386F9A90(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[2] = a2;
  v3 = type metadata accessor for ExtractedOrderDetails(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D2F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v24[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  v19 = sub_23875E020();
  sub_2386FB6C4(a1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_2386FAB68(v6, v21 + v20, type metadata accessor for ExtractedOrderDetails);
  v22 = (v21 + ((v20 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v12;
  v22[1] = v14;
  v22[2] = v16;
  v22[3] = v18;
  v24[7] = v19;
  v24[8] = sub_2386FB128;
  v24[9] = v21;
  v24[10] = 0;
  v24[11] = 0;
  v24[3] = v12;
  v24[4] = v14;
  v24[5] = v16;
  v24[6] = v18;
  sub_2386FB6C4(a1, v6, type metadata accessor for ExtractedOrderDetails);
  v23 = swift_allocObject();
  sub_2386FAB68(v6, v23 + v20, type metadata accessor for ExtractedOrderDetails);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_2386FC648(&qword_27DF0C7A0, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  sub_23875DF10();
}

void sub_2386F9E20(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for ExtractedOrderDetails(0) + 20));
  v7 = v6[3];
  v17 = v6[2];
  v18 = v7;
  v19 = v6[4];
  v8 = v6[1];
  v15 = *v6;
  v16 = v8;
  v20 = *(v6 + 10);
  sub_23843981C(&v15, v21, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  sub_23875E1C0();
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v22 = v14;
  v21[0] = v9;
  v21[1] = v10;
  sub_238439884(v21, &qword_27DF0D728, &unk_23876D7F0);
}

double sub_2386F9FF4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for ExtractedOrderDetails(0) + 20));
  v5 = v4[3];
  v16 = v4[2];
  v17 = v5;
  v18 = v4[4];
  v6 = v4[1];
  v14 = *v4;
  v15 = v6;
  v19 = *(v4 + 10);
  sub_23843981C(&v14, v20, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v8 = v14;
  v9 = v15;
  sub_23875E1C0();
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v21 = v13;
  v20[0] = v8;
  v20[1] = v9;
  sub_238439884(v20, &qword_27DF0D728, &unk_23876D7F0);

  return result;
}

uint64_t sub_2386FA1B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v57 = a2;
  v53 = a1;
  v3 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238758270();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB10, &qword_2387774C0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v16 = sub_2387581D0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v50 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  sub_23843981C(v53, v15, &qword_27DF0EB10, &qword_2387774C0);
  v49 = *v15;
  (*(v17 + 32))(v24, &v15[*(v13 + 56)], v16);
  v25 = *(v7 + 16);
  v26 = v57;
  v57 = v6;
  v48 = v25;
  v25(v11, v26, v6);
  v27 = *(v17 + 16);
  v53 = v24;
  v47 = v27;
  v27(v21, v24, v16);
  v28 = sub_238758170();
  if (v29)
  {
    v45 = v28;
    v46 = v29;
    v30 = *(sub_2387581E0() + 16);

    v31 = v51;
    *v51 = 0;
    *(v31 + 8) = v49;
    *(v31 + 16) = v30;
    *(v31 + 24) = 1;
    v32 = v52;
    v49 = v11;
    v48(v52, v11, v57);
    v33 = v50;
    v47(v50, v21, v16);
    v34 = v54;
    sub_238601310(v32, v33, v31 + *(v54 + 20));
    v35 = *(v17 + 8);
    v35(v21, v16);
    (*(v7 + 8))(v49, v57);
    v35(v53, v16);
    v36 = (v31 + *(v34 + 24));
    v37 = v46;
    *v36 = v45;
    v36[1] = v37;
    v38 = v56;
    sub_2386FAB68(v31, v56, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
    v39 = 0;
    v40 = v38;
    v41 = v34;
  }

  else
  {
    v42 = *(v17 + 8);
    v42(v21, v16);
    (*(v7 + 8))(v11, v57);
    v42(v53, v16);
    v39 = 1;
    v40 = v56;
    v41 = v54;
  }

  return (*(v55 + 56))(v40, v39, 1, v41);
}

uint64_t sub_2386FA648(void *a1, void *a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D58, &qword_238781D40);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (*a1 != *a2 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_35;
  }

  v14 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  if (!sub_23845A994((a1 + *(v14 + 20)), (a2 + *(v14 + 20))))
  {
    goto LABEL_35;
  }

  v38 = v5;
  v36 = v7;
  sub_2387580D0();
  sub_2387581B0();
  v37 = v14;
  sub_2386FC648(&qword_27DF0BBA8, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
  sub_2386FC648(&qword_27DF0BBB0, MEMORY[0x277CC6E68], MEMORY[0x277CC6E70]);
  if ((sub_23875AC60() & 1) == 0)
  {
    goto LABEL_35;
  }

  v15 = v37;
  v16 = v37[7];
  v17 = *(v11 + 48);
  sub_23843981C(a1 + v16, v13, &qword_27DF14B18, &unk_238781A20);
  sub_23843981C(a2 + v16, &v13[v17], &qword_27DF14B18, &unk_238781A20);
  v18 = *(v38 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_23843981C(v13, v10, &qword_27DF14B18, &unk_238781A20);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      v19 = v36;
      sub_2386FAB68(&v13[v17], v36, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
      v20 = sub_2386ED008(v10, v19);
      sub_2386FBEFC(v19, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
      sub_2386FBEFC(v10, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
      sub_238439884(v13, &qword_27DF14B18, &unk_238781A20);
      if ((v20 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_12;
    }

    sub_2386FBEFC(v10, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
LABEL_10:
    sub_238439884(v13, &qword_27DF14D58, &qword_238781D40);
    goto LABEL_35;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_238439884(v13, &qword_27DF14B18, &unk_238781A20);
LABEL_12:
  if (sub_23851935C(*(a1 + v15[8]), *(a2 + v15[8])) & 1) != 0 && (sub_2385BFE34((a1 + v15[9]), (a2 + v15[9])))
  {
    v21 = v15[10];
    v22 = a1 + v21;
    v23 = *(a1 + v21);
    v24 = a2 + v21;
    v25 = *v24;
    if (v23)
    {
      if (v25)
      {
        v26 = v22[8];
        v27 = v24[8];

        if (sub_238518A64(v23, v25))
        {
          if (v26)
          {
            v28 = 0x63697373616C63;
          }

          else
          {
            v28 = 1818845549;
          }

          if (v26)
          {
            v29 = 0xE700000000000000;
          }

          else
          {
            v29 = 0xE400000000000000;
          }

          if (v27)
          {
            v30 = 0x63697373616C63;
          }

          else
          {
            v30 = 1818845549;
          }

          if (v27)
          {
            v31 = 0xE700000000000000;
          }

          else
          {
            v31 = 0xE400000000000000;
          }

          if (v28 == v30 && v29 == v31)
          {

LABEL_38:
            v32 = *(a1 + v15[11]) ^ *(a2 + v15[11]) ^ 1;
            return v32 & 1;
          }

          v34 = sub_23875F630();

          if (v34)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }
      }
    }

    else if (!v25)
    {
      goto LABEL_38;
    }
  }

LABEL_35:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_2386FAB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2386FABF8(uint64_t a1)
{
  type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_2386FAEB0(319, &qword_27DF14B30, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2386FAEB0(319, &qword_27DF14B38, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(319);
          if (v5 <= 0x3F)
          {
            sub_2384C6178(319, &qword_27DF0D560, &type metadata for OrderDetailsRelatedEmailsSection.ViewModel, MEMORY[0x277D83D88]);
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

void sub_2386FADC0(uint64_t a1)
{
  type metadata accessor for ExtractedOrderDetails.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384C6178(319, &qword_27DF0D660, &type metadata for HeaderIconVisibility, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2386FAEB0(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386FAEB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2386FAF38()
{
  result = qword_27DF14B70;
  if (!qword_27DF14B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B50, &qword_238781AD0);
    sub_23843A3E8(&qword_27DF14B78, &qword_27DF14B80, &unk_238781AE8, MEMORY[0x277CDD6E0]);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14B70);
  }

  return result;
}

unint64_t sub_2386FB02C()
{
  result = qword_27DF14BA8;
  if (!qword_27DF14BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14BA0, &qword_238781B08);
    sub_23843A3E8(&qword_27DF14BB0, &qword_27DF14BB8, &unk_238781B10, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0C818, &qword_27DF0C820, &qword_238784360, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14BA8);
  }

  return result;
}

uint64_t objectdestroyTm_33()
{
  v1 = v0;
  v2 = type metadata accessor for ExtractedOrderDetails(0);
  v36 = *(*(v2 - 8) + 80);
  v34 = *(*(v2 - 8) + 64);
  v35 = (v36 + 16) & ~v36;
  v3 = v0 + v35;

  v4 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v5 = v3 + v4[5];

  v6 = *(type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0) + 24);
  v7 = sub_238757F50();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v4[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v11 = *(*(v10 - 8) + 8);
  v11(v3 + v9, v10);
  v12 = v3 + v4[7];
  v13 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v33 = v1;
    v14 = sub_2387581B0();
    (*(*(v14 - 8) + 8))(v12, v14);
    v15 = v12 + *(v13 + 20);
    v11(v15, v10);
    v16 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
    v17 = v16[5];
    v18 = sub_238757FA0();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v15 + v17, 1, v18))
    {
      (*(v19 + 8))(v15 + v17, v18);
    }

    v20 = v16[6];
    v21 = sub_238757F70();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v15 + v20, 1, v21))
    {
      (*(v22 + 8))(v15 + v20, v21);
    }

    v23 = v16[7];
    v24 = sub_238757F90();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v15 + v23, 1, v24))
    {
      (*(v25 + 8))(v15 + v23, v24);
    }

    v1 = v33;
  }

  v26 = v3 + v4[9];

  v27 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v28 = sub_238758090();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v26 + v27, 1, v28))
  {
    (*(v29 + 8))(v26 + v27, v28);
  }

  v30 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_23875C880();
    (*(*(v31 - 8) + 8))(v3 + v30, v31);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v35 + v34, v36 | 7);
}

uint64_t sub_2386FB6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2386FB74C()
{
  result = qword_27DF14C50;
  if (!qword_27DF14C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C48, &qword_238781C30);
    sub_2386FB7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C50);
  }

  return result;
}

unint64_t sub_2386FB7D8()
{
  result = qword_27DF14C58;
  if (!qword_27DF14C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C60, &qword_238781C38);
    sub_2386FB890();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C58);
  }

  return result;
}

unint64_t sub_2386FB890()
{
  result = qword_27DF14C68;
  if (!qword_27DF14C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C70, &qword_238781C40);
    sub_2386FB948();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C68);
  }

  return result;
}

unint64_t sub_2386FB948()
{
  result = qword_27DF14C78;
  if (!qword_27DF14C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C80, &qword_238781C48);
    sub_2386FBA00();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C78);
  }

  return result;
}

unint64_t sub_2386FBA00()
{
  result = qword_27DF14C88;
  if (!qword_27DF14C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C90, &qword_238781C50);
    sub_2386FBA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C88);
  }

  return result;
}

unint64_t sub_2386FBA90()
{
  result = qword_27DF14C98;
  if (!qword_27DF14C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CA0, &unk_238781C58);
    sub_2386FC648(&qword_27DF14CA8, type metadata accessor for ExtractedOrderDetailsShippingFulfillment, &unk_23878141C);
    sub_2386FC648(&qword_27DF14CB0, type metadata accessor for ExtractedOrderDetailsNoFulfillments, &unk_23877BD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C98);
  }

  return result;
}

unint64_t sub_2386FBB84()
{
  result = qword_27DF14CC8;
  if (!qword_27DF14CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CC0, &qword_238781C68);
    sub_2386FBC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14CC8);
  }

  return result;
}

unint64_t sub_2386FBC08()
{
  result = qword_27DF14CD0;
  if (!qword_27DF14CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CD8, &qword_238781C70);
    sub_2386FBCC0();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14CD0);
  }

  return result;
}

unint64_t sub_2386FBCC0()
{
  result = qword_27DF14CE0;
  if (!qword_27DF14CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CE8, &qword_238781C78);
    sub_2386FBD78();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14CE0);
  }

  return result;
}

unint64_t sub_2386FBD78()
{
  result = qword_27DF14CF0;
  if (!qword_27DF14CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CF8, &qword_238781C80);
    sub_23843A3E8(&qword_27DF14D00, &qword_27DF14D08, &qword_238781C88, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14CF0);
  }

  return result;
}

uint64_t sub_2386FBE60(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ExtractedOrderDetails(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2386FBEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = v0;
  v2 = type metadata accessor for ExtractedOrderDetails(0);
  v36 = *(*(v2 - 8) + 80);
  v34 = *(*(v2 - 8) + 64);
  v35 = (v36 + 16) & ~v36;
  v3 = v0 + v35;

  v4 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v5 = v3 + v4[5];

  v6 = *(type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0) + 24);
  v7 = sub_238757F50();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v4[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v11 = *(*(v10 - 8) + 8);
  v11(v3 + v9, v10);
  v12 = v3 + v4[7];
  v13 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v33 = v1;
    v14 = sub_2387581B0();
    (*(*(v14 - 8) + 8))(v12, v14);
    v15 = v12 + *(v13 + 20);
    v11(v15, v10);
    v16 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
    v17 = v16[5];
    v18 = sub_238757FA0();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v15 + v17, 1, v18))
    {
      (*(v19 + 8))(v15 + v17, v18);
    }

    v20 = v16[6];
    v21 = sub_238757F70();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v15 + v20, 1, v21))
    {
      (*(v22 + 8))(v15 + v20, v21);
    }

    v23 = v16[7];
    v24 = sub_238757F90();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v15 + v23, 1, v24))
    {
      (*(v25 + 8))(v15 + v23, v24);
    }

    v1 = v33;
  }

  v26 = v3 + v4[9];

  v27 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v28 = sub_238758090();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v26 + v27, 1, v28))
  {
    (*(v29 + 8))(v26 + v27, v28);
  }

  v30 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_23875C880();
    (*(*(v31 - 8) + 8))(v3 + v30, v31);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, ((v34 + v35 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v36 | 7);
}

uint64_t sub_2386FC4F4(uint64_t (*a1)(unint64_t, __n128, __n128, __n128, __n128))
{
  v2 = *(type metadata accessor for ExtractedOrderDetails(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5.n128_u64[0] = *v4;
  v6.n128_u64[0] = v4[1];
  v7.n128_u64[0] = v4[2];
  v8.n128_u64[0] = v4[3];

  return a1(v1 + v3, v5, v6, v7, v8);
}

uint64_t sub_2386FC5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ExtractedOrderDetails(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_2386FC648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OrderReceipt.fileUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl;
  v4 = sub_23875B940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderReceipt.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name);

  return v1;
}

FinanceKitUI::OrderReceipt::MimeType_optional __swiftcall OrderReceipt.MimeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23875F590();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OrderReceipt.MimeType.rawValue.getter()
{
  v1 = 0x746163696C707061;
  if (*v0 != 1)
  {
    v1 = 0x6E702F6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706A2F6567616D69;
  }
}

uint64_t *sub_2386FC864(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  sub_23875EAE0();
  v14 = sub_23875F590();

  if (v14 > 2)
  {
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v18 = sub_23875C1E0();
    __swift_project_value_buffer(v18, qword_27DF2F690);

    v19 = sub_23875C1B0();
    v20 = sub_23875EFE0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315394;
      v23 = sub_2384615AC(a4, a5, &v27);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      v24 = sub_2384615AC(a2, a3, &v27);

      *(v21 + 14) = v24;
      _os_log_impl(&dword_2383F8000, v19, v20, "Receipt %s has unsupported mime type: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE64DF0](v22, -1, -1);
      MEMORY[0x23EE64DF0](v21, -1, -1);
    }

    else
    {
    }

    v25 = sub_23875B940();
    (*(*(v25 - 8) + 8))(a1, v25);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {

    v15 = OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl;
    v16 = sub_23875B940();
    (*(*(v16 - 8) + 32))(v7 + v15, a1, v16);
    *(v7 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType) = v14;
    v17 = (v7 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name);
    *v17 = a4;
    v17[1] = a5;
    *(v7 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_shouldCleanUp) = a6 & 1;
  }

  return v7;
}

uint64_t OrderReceipt.deinit()
{
  v1 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_shouldCleanUp))
  {
    v6 = [objc_opt_self() defaultManager];
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl, v2);
    v7 = sub_23875B860();
    v8 = *(v3 + 8);
    v8(v5, v2);
    v15[0] = 0;
    v9 = [v6 removeItemAtURL:v7 error:v15];

    if (v9)
    {
      v10 = v15[0];
    }

    else
    {
      v11 = v15[0];
      v12 = sub_23875B730();

      swift_willThrow();
    }

    v8((v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl), v2);
  }

  else
  {
    (*(v3 + 8))(v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl, v2);
  }

  return v1;
}

uint64_t OrderReceipt.__deallocating_deinit()
{
  OrderReceipt.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s12FinanceKitUI12OrderReceiptC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_23875B890() & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = 0xEA00000000006765;
  v5 = 0x706A2F6567616D69;
  if (*(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType))
  {
    if (*(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType) == 1)
    {
      v6 = 0x746163696C707061;
      v7 = 0xEF6664702F6E6F69;
      if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0x6E702F6567616D69;
      v7 = 0xE900000000000067;
      if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v6 = 0x706A2F6567616D69;
    v7 = 0xEA00000000006765;
    if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType))
    {
LABEL_11:
      if (v6 != v5)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  if (*(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType) == 1)
  {
    v5 = 0x746163696C707061;
    v4 = 0xEF6664702F6E6F69;
    goto LABEL_11;
  }

  v4 = 0xE900000000000067;
  if (v6 != 0x6E702F6567616D69)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v7 == v4)
  {

    goto LABEL_17;
  }

LABEL_16:
  v8 = sub_23875F630();

  if ((v8 & 1) == 0)
  {
LABEL_23:
    v10 = 0;
    return v10 & 1;
  }

LABEL_17:
  v9 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name) == *(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name) && *(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name + 8) == *(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name + 8);
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_shouldCleanUp) ^ *(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_shouldCleanUp) ^ 1;
  return v10 & 1;
}

uint64_t *_s12FinanceKitUI12OrderReceiptC4data8mimeType4nameACSg10Foundation4DataV_S2StcfC_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v83 = a2;
  v84 = a6;
  v78 = a5;
  v81 = a4;
  v82 = a1;
  v74 = a3;
  v86[1] = *MEMORY[0x277D85DE8];
  v85 = sub_23875B810();
  v6 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_23875BCB0();
  v9 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875B940();
  v79 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v75 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v73 - v15;
  MEMORY[0x28223BE20](v16);
  v77 = &v73 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = NSTemporaryDirectory();
  sub_23875EA80();

  sub_23875B840();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_238763B60;
  *(v25 + 32) = 0x7374706965636572;
  *(v25 + 40) = 0xE800000000000000;
  sub_23875BCA0();
  v26 = sub_23875BC50();
  v28 = v27;
  (*(v9 + 8))(v11, v80);
  v29 = v79;
  *(v25 + 48) = v26;
  *(v25 + 56) = v28;
  v30 = v85;
  v31 = (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v85);
  sub_2384397A8(v31, v32, v33);
  sub_23875B920();

  (*(v6 + 8))(v8, v30);
  v34 = *(v29 + 8);
  v85 = v12;
  v34(v20, v12);
  v35 = [objc_opt_self() defaultManager];
  v36 = sub_23875B860();
  v86[0] = 0;
  LODWORD(v12) = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v86];

  if (!v12)
  {
    v44 = v86[0];

    v45 = sub_23875B730();

    swift_willThrow();
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v46 = sub_23875C1E0();
    __swift_project_value_buffer(v46, qword_27DF2F690);
    v47 = v76;
    (*(v29 + 16))(v76, v23, v85);
    v48 = v45;
    v49 = sub_23875C1B0();
    v50 = sub_23875EFE0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v80 = v23;
      v54 = v53;
      v86[0] = v53;
      *v51 = 136315394;
      v55 = sub_23875B8F0();
      v56 = v47;
      v57 = v55;
      v59 = v58;
      v34(v56, v85);
      v60 = sub_2384615AC(v57, v59, v86);

      *(v51 + 4) = v60;
      *(v51 + 12) = 2112;
      v61 = v45;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v62;
      *v52 = v62;
      _os_log_impl(&dword_2383F8000, v49, v50, "Could not create directory %s with error %@", v51, 0x16u);
      sub_238439884(v52, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x23EE64DF0](v54, -1, -1);
      MEMORY[0x23EE64DF0](v51, -1, -1);
      sub_23844C954(v82, v83);

      v63 = v80;
      v64 = v85;
    }

    else
    {
      sub_23844C954(v82, v83);

      v65 = v47;
      v66 = v85;
      v34(v65, v85);
      v63 = v23;
      v64 = v66;
    }

    v34(v63, v64);
    return 0;
  }

  v37 = v81;
  v76 = v34;
  v38 = v86[0];
  v39 = v77;
  sub_23875B870();
  v41 = v82;
  v40 = v83;
  sub_23875B9A0();
  v42 = v40;
  v43 = v39;
  v67 = v85;
  (*(v29 + 16))(v20, v39, v85);
  type metadata accessor for OrderReceipt(0);
  swift_allocObject();
  v68 = v42;
  v69 = v43;
  v70 = sub_2386FC864(v20, v74, v37, v78, v84, 1);
  sub_23844C954(v41, v68);
  v71 = v76;
  (v76)(v69, v67);
  (v71)(v23, v67);
  result = v70;
  if (!v70)
  {
    return 0;
  }

  return result;
}

uint64_t *_s12FinanceKitUI12OrderReceiptC7fileUrlACSg10Foundation3URLV_tcfC_0(char *a1)
{
  v45 = sub_23875B940();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = sub_23875B6C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBB8, &qword_23876E0B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E350, &unk_23876F730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  v14 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v15 = v14;
  sub_23844D11C(inited);
  swift_setDeallocating();
  sub_238564548(inited + 32);
  sub_23875B830();

  sub_23875B6B0();
  (*(v7 + 8))(v9, v6);
  v16 = sub_23875C0D0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_238439884(v12, &qword_27DF0DBB8, &qword_23876E0B8);
    v18 = v44;
LABEL_3:
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v19 = sub_23875C1E0();
    __swift_project_value_buffer(v19, qword_27DF2F690);
    v20 = v43;
    v21 = v45;
    (*(v43 + 16))(v18, a1, v45);
    v22 = sub_23875C1B0();
    v23 = sub_23875EFE0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315138;
      v26 = sub_23875B8F0();
      v27 = v18;
      v29 = v28;
      v30 = *(v20 + 8);
      v30(v27, v21);
      v31 = sub_2384615AC(v26, v29, &v46);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_2383F8000, v22, v23, "Could not retreive mimeType from %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x23EE64DF0](v25, -1, -1);
      MEMORY[0x23EE64DF0](v24, -1, -1);

      v30(a1, v21);
    }

    else
    {

      v32 = *(v20 + 8);
      v32(a1, v21);
      v32(v18, v21);
    }

    return 0;
  }

  v34 = sub_23875C0C0();
  v36 = v35;
  (*(v17 + 8))(v12, v16);
  v18 = v44;
  if (!v36)
  {
    goto LABEL_3;
  }

  v37 = sub_23875B850();
  v39 = v38;
  v40 = v43;
  v41 = v45;
  (*(v43 + 16))(v5, a1, v45);
  type metadata accessor for OrderReceipt(0);
  swift_allocObject();
  v42 = sub_2386FC864(v5, v34, v36, v37, v39, 0);
  (*(v40 + 8))(a1, v41);
  result = v42;
  if (!v42)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2386FDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF14D60;
  if (!qword_27DF14D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14D60);
  }

  return result;
}

uint64_t type metadata accessor for OrderReceipt(uint64_t a1)
{
  result = qword_27DF14D68;
  if (!qword_27DF14D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386FDF10(uint64_t a1)
{
  result = sub_23875B940();
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

uint64_t sub_2386FDFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2385CA78C(a1, a2, a3);
  sub_23875CDC0();
  return v4;
}

uint64_t type metadata accessor for OrderImageVignette(uint64_t a1)
{
  result = qword_27DF14D78;
  if (!qword_27DF14D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386FE0A4(uint64_t a1)
{
  sub_238438628(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2386FE134@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2386FE504(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C450();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2386FE31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_23875C450();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  KeyPath = swift_getKeyPath(byte_238781F60, v12);
  if (*(v3 + *(a2 + 20)) == 1)
  {
    sub_2386FE134(v14);
    (*(v8 + 104))(v10, *MEMORY[0x277CDF3D0], v7);
    v16 = sub_23875C440();
    v17 = *(v8 + 8);
    v17(v10, v7);
    v17(v14, v7);
  }

  else
  {
    v16 = 0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D88, &qword_238781F88);
  (*(*(v18 - 8) + 16))(a3, a1, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D90, &qword_238781F90);
  v20 = a3 + *(result + 36);
  *v20 = KeyPath;
  *(v20 + 8) = v16 & 1;
  return result;
}

uint64_t sub_2386FE504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386FE574()
{
  result = qword_27DF14D98;
  if (!qword_27DF14D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14D90, &qword_238781F90);
    sub_23843A3E8(&qword_27DF14DA0, &qword_27DF14D88, &qword_238781F88, MEMORY[0x277CE04B0]);
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14D98);
  }

  return result;
}

uint64_t sub_2386FE740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386FE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE5FA60]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_238518C1C(v7, v8);
}

void *sub_2386FE854@<X0>(void *a1@<X8>)
{
  v32[1] = a1;
  v2 = sub_23875C450();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DC8, &qword_238782030);
  MEMORY[0x28223BE20](v9);
  v11 = (v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DD0, &qword_238782038);
  MEMORY[0x28223BE20](v12);
  v14 = (v32 - v13);
  v15 = *(v1 + *(type metadata accessor for ProductImage.ViewModel(0) + 20));
  if (*(v15 + 16))
  {
    *v14 = sub_23875E4A0();
    v14[1] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DD8, &qword_238782040);
    sub_2386FEBA4(v1, v15, (v14 + *(v17 + 44)));
    sub_23843981C(v14, v11, &qword_27DF14DD0, &qword_238782038);
    swift_storeEnumTagMultiPayload();
    v18 = sub_2386FF20C();
    sub_2386FF270(v18, v19, v20);
    sub_23875D1B0();
    return sub_238439884(v14, &qword_27DF14DD0, &qword_238782038);
  }

  else
  {
    type metadata accessor for ProductImage(0);
    sub_2384D4E38(v8);
    (*(v3 + 104))(v5, *MEMORY[0x277CDF3D0], v2);
    v22 = sub_23875C440();
    v23 = *(v3 + 8);
    v23(v5, v2);
    v23(v8, v2);
    v24 = objc_opt_self();
    v25 = &selRef_systemGray4Color;
    if ((v22 & 1) == 0)
    {
      v25 = &selRef_systemGray2Color;
    }

    v26 = [v24 *v25];
    v27 = sub_23875DFB0();
    v28 = sub_23875E040();
    *v11 = v27;
    v11[1] = v28;
    v11[2] = 0x3FD999999999999ALL;
    swift_storeEnumTagMultiPayload();
    v29 = sub_2386FF20C();
    sub_2386FF270(v29, v30, v31);
    return sub_23875D1B0();
  }
}

double sub_2386FEBA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v40 = a1;
  v3 = type metadata accessor for ProductImage(0);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DF0, &qword_238782048);
  MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v37 - v8);
  v10 = sub_23875C450();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v40;
  sub_2384D4E38(v16);
  (*(v11 + 104))(v13, *MEMORY[0x277CDF3D0], v10);
  v18 = sub_23875C440();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v19(v16, v10);
  v20 = objc_opt_self();
  v21 = &selRef_systemGray4Color;
  if ((v18 & 1) == 0)
  {
    v21 = &selRef_systemGray2Color;
  }

  v22 = [v20 *v21];
  v23 = sub_23875DFB0();
  v24 = v5[9];
  v25 = sub_23875AF90();
  (*(*(v25 - 8) + 16))(v9 + v24, v17, v25);
  v26 = v39;
  sub_2386FF2C4(v17, v39);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_2386FF328(v26, v28 + v27);
  v29 = v5[10];
  *(v9 + v29) = sub_2387588A0();
  v30 = v5[13];
  *(v9 + v30) = swift_getKeyPath(byte_238782050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v31 = v5[14];
  *(v9 + v31) = swift_getKeyPath("غzE");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  *v9 = v44;
  *(v9 + v5[11]) = 1;
  v32 = (v9 + v5[12]);
  *v32 = sub_2386FF38C;
  v32[1] = v28;
  v33 = v42;
  sub_23843981C(v9, v42, &qword_27DF14DF0, &qword_238782048);
  v34 = v43;
  *v43 = v23;
  *(v34 + 4) = 256;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DF8, &qword_2387820B0);
  sub_23843981C(v33, v34 + *(v35 + 48), &qword_27DF14DF0, &qword_238782048);

  sub_238439884(v9, &qword_27DF14DF0, &qword_238782048);
  sub_238439884(v33, &qword_27DF14DF0, &qword_238782048);

  return result;
}

uint64_t sub_2386FF064@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23875C450();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  type metadata accessor for ProductImage(0);
  sub_2384D4E38(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3D0], v2);
  v9 = sub_23875C440();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = objc_opt_self();
  v12 = &selRef_systemGray4Color;
  if ((v9 & 1) == 0)
  {
    v12 = &selRef_systemGray2Color;
  }

  v13 = [v11 *v12];
  v14 = sub_23875DFB0();
  result = sub_23875E040();
  *a1 = v14;
  a1[1] = result;
  a1[2] = 0x3FD999999999999ALL;
  return result;
}

unint64_t sub_2386FF20C()
{
  result = qword_27DF14DE0;
  if (!qword_27DF14DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14DD0, &qword_238782038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14DE0);
  }

  return result;
}

unint64_t sub_2386FF270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF14DE8;
  if (!qword_27DF14DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14DE8);
  }

  return result;
}

uint64_t sub_2386FF2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386FF328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386FF3F0()
{
  result = qword_27DF14E00;
  if (!qword_27DF14E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14E08, &qword_2387820B8);
    v3 = sub_2386FF20C();
    sub_2386FF270(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14E00);
  }

  return result;
}

id sub_2386FF47C()
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  if (!v5)
  {
    sub_23875EA80();
    v5 = sub_23875EA50();
  }

  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v1 localizedStringForKey:v6 value:v7 table:v8];

  if (!v9)
  {
    sub_23875EA80();
    v9 = sub_23875EA50();
  }

  v10 = [objc_allocWithZone(v0) initWithTitle:v5 detailText:v9 icon:0 contentLayout:1];

  return v10;
}

void sub_2386FF65C()
{
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v1 = [v0 headerView];
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  if (!v6)
  {
    sub_23875EA80();
    v6 = sub_23875EA50();
  }

  [v1 setBadgeText_];

  v7 = [objc_opt_self() boldButton];
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v2 localizedStringForKey:v8 value:v9 table:v10];

  if (!v11)
  {
    sub_23875EA80();
    v11 = sub_23875EA50();
  }

  [v7 setTitle:v11 forState:0];

  v12 = v7;
  [v12 addTarget:v0 action:sel_allowButtonAction forControlEvents:64];
  [v12 setEnabled_];

  v13 = [v0 buttonTray];
  [v13 addButton_];

  v14 = [objc_opt_self() linkButton];
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v2 localizedStringForKey:v15 value:v16 table:v17];

  if (!v18)
  {
    sub_23875EA80();
    v18 = sub_23875EA50();
  }

  [v14 setTitle:v18 forState:0];

  v19 = v14;
  [v19 addTarget:v0 action:sel_denyButtonAction forControlEvents:64];
  [v19 setEnabled_];

  v20 = [v0 buttonTray];
  [v20 addButton_];

  v21 = OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView;
  v22 = *&v0[OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView];
  if (v22)
  {
    [v22 removeFromSuperview];
  }

  v23 = [v0 contentView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [objc_allocWithZone(type metadata accessor for OrderWelcomeAnimation()) initWithFrame_];
  [v32 setClipsToBounds_];
  [v32 setAutoresizingMask_];

  v33 = [v0 contentView];
  [v33 addSubview_];

  v34 = *&v0[v21];
  *&v0[v21] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E30, &unk_238782110);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2387632F0;
  v36 = sub_23875C1F0();
  v37 = MEMORY[0x277D74BF0];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  sub_23875F050();

  swift_unknownObjectRelease();
}

uint64_t sub_2386FFBF0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BE0, &qword_238783420);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_viewDidAppear_, a1 & 1, v7);
  v14 = 0;
  sub_238757A30();
  v13[3] = sub_23875A820();
  v13[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_23875A7E0();
  sub_238757A00();
  v14 = 1;
  swift_beginAccess();
  sub_2387579F0();
  swift_endAccess();
  v10 = *MEMORY[0x277D38548];
  v11 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v10, 31, v11);

  return (*(v6 + 8))(v9, v5);
}

id sub_2386FFE8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_23875ED80();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_23875ED50();
  v6 = sub_23875ED40();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  sub_2386C3BA4(0, 0, v4, &unk_238782108, v7);

  v9 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v12 = sub_23875EA80();
  v13 = MEMORY[0x277D38390];
  *(inited + 40) = v12;
  *(inited + 48) = v14;
  v15 = *v13;
  *(inited + 56) = *v13;
  *(inited + 64) = 0x6565726761;
  v16 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v16;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x8000000238785100;
  v17 = v11;
  v18 = v15;
  v19 = v16;
  v20 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v20;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v27);

  v22 = *MEMORY[0x277D38548];
  v23 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v24 = sub_23875E910();

  [v23 subject:v22 sendEvent:v24];

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_238700184()
{
  v1 = sub_238757A80();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_238757A90();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  sub_23875ED50();
  v0[8] = sub_23875ED40();
  v4 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2387002D0, v4, v3);
}

uint64_t sub_2387002D0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_2387579D0();
  sub_2387579A0();
  (*(v2 + 104))(v1, *MEMORY[0x277CC6B10], v3);
  sub_238757890();
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

id sub_238700558()
{
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v4 = sub_23875EA80();
  v5 = MEMORY[0x277D38390];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = 0x6C65636E6163;
  v8 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v8;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x8000000238785100;
  v9 = v3;
  v10 = v7;
  v11 = v8;
  v12 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

  v14 = *MEMORY[0x277D38548];
  v15 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v16 = sub_23875E910();

  [v15 subject:v14 sendEvent:v16];

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

id sub_23870077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView] = 0;
  v12 = sub_23875EA50();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_23875EA50();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_23875EA50();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_symbolName_contentLayout_, v12, v13, v14, a7);

  return v15;
}

id sub_238700B54(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer] = 0;
  v10 = &v4[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = sub_23875EA50();
  [v11 setAccessibilityIdentifier_];

  [v11 setAccessibilityTraits_];
  sub_238700C50();

  return v11;
}

void sub_238700C50()
{
  v1 = v0;
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v33[-v7];
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33[-v11];
  v13 = [v1 traitCollection];
  v14 = [v13 userInterfaceStyle];

  if (v14 <= 2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v15 = qword_2814F1B90;
    v16 = sub_23875EA50();

    v17 = sub_23875EA50();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (v18)
    {
      sub_23875B8B0();

      (*(v3 + 32))(v12, v8, v2);
      sub_238701630();
      (*(v3 + 16))(v5, v12, v2);
      v19 = sub_23875EA80();
      v21 = sub_238701258(v5, v19, v20, 0);
      if (v21)
      {
        v22 = v21;
        v23 = [v21 rootLayer];
        if (v23)
        {
          v24 = v23;
          [v23 frame];
          v25 = &v1[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize];
          *v25 = v26;
          *(v25 + 1) = v27;
          [v24 setGeometryFlipped_];
          [v24 setMasksToBounds_];
          [v24 setNeedsDisplayOnBoundsChange_];
          v28 = [objc_opt_self() mainScreen];
          [v28 scale];
          v30 = v29;

          [v24 setContentsScale_];
          v31 = [v1 layer];
          [v31 addSublayer_];

          (*(v3 + 8))(v12, v2);
          v32 = *&v1[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer];
          *&v1[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer] = v24;
        }

        else
        {
          (*(v3 + 8))(v12, v2);
        }
      }

      else
      {
        (*(v3 + 8))(v12, v2);
      }
    }
  }

  else
  {
    sub_23875F520();
    __break(1u);
  }
}

id sub_238701258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_23875B860();
  v7 = sub_23875EA50();

  if (a4)
  {
    v8 = sub_23875E910();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_23875B940();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_23875B730();

    swift_willThrow();
    v15 = sub_23875B940();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_238701420()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  result = [v0 bounds];
  v4 = OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer;
  v5 = *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer];
  if (v5)
  {
    v6 = v2;
    v7 = v3;
    if (v2 / *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize] > v3 / *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize + 8])
    {
      v8 = v2 / *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize];
    }

    else
    {
      v8 = v3 / *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize + 8];
    }

    v9 = v5;
    CATransform3DMakeScale(&v10, v8, v8, 1.0);
    [v9 setTransform_];

    result = *&v0[v4];
    if (result)
    {
      return [result setPosition_];
    }
  }

  return result;
}

void sub_238701530(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

unint64_t sub_238701630()
{
  result = qword_27DF14E28;
  if (!qword_27DF14E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF14E28);
  }

  return result;
}

void sub_23870167C(char *a1, id a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v3 != v5)
  {
    v6 = OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView;
    v7 = *&a1[OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView];
    if (v7)
    {
      [v7 removeFromSuperview];
    }

    v8 = [a1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [objc_allocWithZone(type metadata accessor for OrderWelcomeAnimation()) initWithFrame_];
    [v17 setClipsToBounds_];
    [v17 setAutoresizingMask_];

    v18 = [a1 contentView];
    [v18 addSubview_];

    v19 = *&a1[v6];
    *&a1[v6] = v17;
  }
}

uint64_t sub_238701810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2384494A4;

  return sub_238700184();
}

uint64_t sub_238701968(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = a2[5];
  v12 = sub_238757B60();
  (*(*(v12 - 8) + 16))(v10, v2 + v11, v12);
  v13 = v5[8];
  v14 = sub_23875A9A0();
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  v15 = v5[9];
  v16 = a2[6];
  v17 = sub_23875BCB0();
  (*(*(v17 - 8) + 16))(&v10[v15], v2 + v16, v17);
  v18 = *MEMORY[0x277CC8268];
  v19 = sub_23875AB40();
  (*(*(v19 - 8) + 104))(&v10[v15], v18, v19);
  *&v10[v5[7]] = 0;
  v10[v5[10]] = 0;
  sub_2387020F8(v10, v7);
  v20 = (v2 + a2[7]);
  v21 = *v20;
  v22 = v20[1];
  objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));

  v23 = sub_2384AC768(v7, v21, v22);

  sub_23870215C(v10);
  return v23;
}

uint64_t sub_238701B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387020B0(&qword_27DF14E60, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_238782248);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_238701C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387020B0(&qword_27DF14E60, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_238782248);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_238701CB0(uint64_t a1)
{
  sub_2387020B0(&qword_27DF14E60, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_238782248);
  sub_23875D6B0();
  __break(1u);
}

uint64_t sub_238701D08(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = a2[5];
  v12 = sub_238757B60();
  (*(*(v12 - 8) + 16))(v10, v2 + v11, v12);
  v13 = *v2;
  v14 = v5[8];
  v15 = sub_23875A9A0();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  v16 = v5[9];
  v17 = a2[6];
  v18 = sub_23875BCB0();
  (*(*(v18 - 8) + 16))(&v10[v16], v2 + v17, v18);
  v19 = *MEMORY[0x277CC8258];
  v20 = sub_23875AB40();
  (*(*(v20 - 8) + 104))(&v10[v16], v19, v20);
  *&v10[v5[7]] = v13;
  v10[v5[10]] = 0;
  sub_2387020F8(v10, v7);
  v21 = (v2 + a2[7]);
  v22 = *v21;
  v23 = v21[1];
  objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v24 = v13;

  v25 = sub_2384AC768(v7, v22, v23);

  sub_23870215C(v10);
  return v25;
}

uint64_t sub_238701F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387020B0(&qword_27DF14E48, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_238782150);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_238701FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387020B0(&qword_27DF14E48, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_238782150);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_238702058(uint64_t a1)
{
  sub_2387020B0(&qword_27DF14E48, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_238782150);
  sub_23875D6B0();
  __break(1u);
}

uint64_t sub_2387020B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2387020F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23870215C(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238702218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_238757B60();
    if (v6 <= 0x3F)
    {
      result = sub_23875BCB0();
      if (v7 <= 0x3F)
      {
        result = sub_23846D0DC();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_238702330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_238702378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AllRelatedEmailsView(uint64_t a1)
{
  result = qword_27DF14E68;
  if (!qword_27DF14E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23870243C(uint64_t a1)
{
  sub_238702528(319, &qword_27DF14E78, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_238702528(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238702528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2387025A8(uint64_t a1, int a2)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB18, &unk_238770F50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v33 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v27 - v10;
  v31 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23875F360();
    sub_23875AB20();
    sub_238710C38(&qword_27DF14E98, MEMORY[0x277CC81E0], MEMORY[0x277D85378]);
    sub_23875EEA0();
    a1 = v36;
    v11 = v37;
    v12 = v38;
    v13 = v39;
    v14 = v40;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
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

    v14 = v17 & *(a1 + 56);

    v13 = 0;
  }

  v30 = v12;
  v28 = v7;
  v18 = (v7 + 48);
  v32 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v22 = sub_23875F3D0();
    if (!v22 || (v35 = v22, sub_23875AB20(), swift_dynamicCast(), (v21 = v41) == 0))
    {
LABEL_24:
      sub_238434840(a1);
      return;
    }

LABEL_17:
    sub_2384A138C(v21, v34 & 1, 4, v6);
    if ((*v18)(v6, 1, v33) == 1)
    {
      sub_238439884(v6, &qword_27DF0EB18, &unk_238770F50);
    }

    else
    {
      v23 = v27;
      sub_23870F6FC(v6, v27, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      sub_23870F6FC(v23, v29, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_238498610(0, v32[2] + 1, 1, v32);
      }

      v25 = v32[2];
      v24 = v32[3];
      if (v25 >= v24 >> 1)
      {
        v32 = sub_238498610((v24 > 1), v25 + 1, 1, v32);
      }

      v26 = v32;
      v32[2] = v25 + 1;
      sub_23870F6FC(v29, v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    }
  }

  v19 = v13;
  v20 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v20 - 1) & v20;
    v21 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v20 = *(v11 + 8 * v13);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2387029C0(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2385FE468(0, v6, 0);
    v7 = v18;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_23870F694(v8, v5, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v11 = *(v5 + 8);
      v10 = *(v5 + 9);

      sub_23870F348(v5);
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2385FE468((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v15 = sub_2384A5B40(v7);

  return v15;
}

uint64_t sub_238702B70@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v9 = sub_23875C400();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23875CEA0();
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F80, &qword_238782660);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F88, &unk_238782668);
  MEMORY[0x28223BE20](v36);
  v21 = &v35 - v20;
  a2 &= 1u;
  sub_238703034(a1, a2, a3, a4, v19);
  v43 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  (*(v14 + 16))(v16, v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14ED8, &unk_238782498);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08EA8, &unk_238761D30);
  v23 = sub_23843A3E8(&qword_27DF14F90, &qword_27DF08EA8, &unk_238761D30, MEMORY[0x277CE1138]);
  v47 = v22;
  v48 = v23;
  swift_getOpaqueTypeConformance2();
  sub_23870F4F4();
  sub_23875E3B0();
  v24 = v37;
  sub_23875CE90();
  (*(v14 + 8))(v19, v13);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F98, &qword_238782678) + 36);
  v26 = v38;
  (*(v11 + 16))(&v21[v25], v24, v38);
  v27 = *(v11 + 56);
  v27(&v21[v25], 0, 1, v26);
  KeyPath = swift_getKeyPath(byte_238782680);
  v29 = &v21[*(v36 + 36)];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v11 + 32))(v29 + v30, v24, v26);
  v27(v29 + v30, 0, 1, v26);
  *v29 = KeyPath;
  v32 = v39;
  v31 = v40;
  v33 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277CDF348], v41);
  sub_238710774();
  sub_23875DC80();
  (*(v31 + 8))(v32, v33);
  return sub_238439884(v21, &qword_27DF14F88, &unk_238782668);
}

uint64_t sub_238703034@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08EA8, &unk_238761D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  *v12 = sub_23875CE60();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FC0, &qword_2387826C8);
  v14 = a2 & 1;
  sub_2387035DC(a1, a2 & 1, v6, a4, &v12[*(v13 + 44)]);
  sub_23875ED50();

  v15 = sub_23875ED40();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = a1;
  *(v16 + 40) = v14;
  *(v16 + 48) = v6;
  *(v16 + 56) = a4;
  v18 = sub_23875ED80();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v32 - v21;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v35 = sub_23875C830();
    v36 = &v32;
    v34 = *(v35 - 8);
    MEMORY[0x28223BE20](v35);
    v33 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_23875F470();

    v38 = 0xD000000000000040;
    v39 = 0x8000000238790F80;
    v37 = 72;
    v24 = sub_23875F600();
    MEMORY[0x23EE63650](v24);

    v32 = &v32;
    v26 = MEMORY[0x28223BE20](v25);
    (*(v19 + 16))(&v32 - v21, &v32 - v21, v18, v26);
    v27 = v33;
    sub_23875C820();
    (*(v19 + 8))(v22, v18);
    sub_23842FBD8(v12, a5);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08EB0, &qword_2387826E0);
    return (*(v34 + 32))(a5 + *(v28 + 36), v27, v35);
  }

  else
  {
    v30 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF08EB8, &qword_238761D40) + 36));
    v31 = sub_23875C6E0();
    (*(v19 + 32))(&v30[*(v31 + 20)], &v32 - v21, v18);
    *v30 = &unk_2387826D8;
    *(v30 + 1) = v16;
    return sub_23842FBD8(v12, a5);
  }
}

uint64_t sub_238703450(uint64_t a1)
{
  if (*(a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v2 = *(type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8);
    sub_23852EF3C(a1, a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), 0, 7uLL);
  }

  swift_getKeyPath(aH_24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E88, &qword_238782420);
  type metadata accessor for OrderDetailsRelatedEmailView(0);
  sub_23843A3E8(&qword_27DF14F30, &qword_27DF14E88, &qword_238782420, MEMORY[0x277D83980]);
  sub_238710C38(&qword_27DF14EE0, type metadata accessor for OrderDetailsRelatedEmailView, &unk_238767978);
  return sub_23875E370();
}

double sub_2387035DC@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a4;
  v50 = a2;
  v51 = a3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FD0, &qword_2387826F0);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FD8, &qword_2387826F8);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = v12;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v13 = qword_2814F1B90;
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_23875EA80();
  v20 = v19;

  if (*(a1 + 16) < 4uLL)
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FE0, &qword_238782700);
    v42 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
  }

  else
  {
    v21 = a1;
    v22 = sub_23875EA50();
    v49 = v20;
    v23 = v22;
    v24 = sub_23875EA50();
    v25 = sub_23875EA50();
    v48 = v18;
    v26 = v25;
    v27 = [v13 localizedStringForKey:v23 value:v24 table:v25];

    v28 = sub_23875EA80();
    v30 = v29;

    v58 = v28;
    v59 = v30;
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    v32 = v51;
    v33 = v50 & 1;
    *(v31 + 24) = v50 & 1;
    LOBYTE(v30) = v32 & 1;
    *(v31 + 32) = v32 & 1;
    v34 = v53;
    *(v31 + 40) = v53;
    sub_2384397A8(v31, v35, v36);

    v37 = v52;
    sub_23875E230();
    v38 = (v37 + *(v54 + 36));
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
    v40 = sub_23875DA40();
    (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
    *v38 = swift_getKeyPath(byte_2387824A8);
    v60 = v30;
    v61 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1D0();
    v41 = swift_allocObject();
    *(v41 + 16) = v21;
    *(v41 + 24) = v33;
    *(v41 + 32) = v30;
    *(v41 + 40) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FF0, &unk_238782718);
    sub_238710B20();
    sub_23843A3E8(&qword_27DF15000, &qword_27DF14FF0, &unk_238782718, MEMORY[0x277CDDA18]);
    v42 = v55;
    sub_23875DED0();
    v18 = v48;

    v20 = v49;

    sub_238439884(v37, &qword_27DF14FD0, &qword_2387826F0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FE0, &qword_238782700);
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  v45 = v57;
  sub_23842FC48(v42, v57);
  *a5 = v18;
  *(a5 + 8) = v20;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FE8, &unk_238782708);
  sub_23842FC48(v45, a5 + *(v46 + 64));

  sub_238439884(v42, &qword_27DF14FD8, &qword_2387826F8);
  sub_238439884(v45, &qword_27DF14FD8, &qword_2387826F8);

  return result;
}

double sub_238703C24(uint64_t a1, char a2, char a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v7 = 1818845549;
  if (a2)
  {
    v7 = 0x63697373616C63;
  }

  v8 = 0xE400000000000000;
  if (a2)
  {
    v8 = 0xE700000000000000;
  }

  *(inited + 40) = v7;
  *(inited + 48) = v8;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  *(v10 + 40) = sub_23875EA80();
  *(v10 + 48) = v12;
  v13 = *MEMORY[0x277D38390];
  *(v10 + 56) = *MEMORY[0x277D38390];
  *(v10 + 64) = 0x6565536C69616D65;
  v14 = *MEMORY[0x277D384B8];
  *(v10 + 72) = 0xEB000000006C6C41;
  *(v10 + 80) = v14;
  strcpy((v10 + 88), "orderDetails");
  *(v10 + 101) = 0;
  *(v10 + 102) = -5120;
  v15 = v11;
  v16 = v13;
  v17 = v14;
  v18 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = v18;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v25);

  v20 = *MEMORY[0x277D38548];
  v21 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238710C38(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v22 = sub_23875E910();

  [v21 subject:v20 sendEvent:v22];

  LOBYTE(v25[0]) = a3 & 1;
  v25[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();

  return result;
}

double sub_238703F98(uint64_t a1, char a2, char a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  type metadata accessor for AllRelatedEmailsView(0);
  sub_238710C38(&qword_27DF15008, type metadata accessor for AllRelatedEmailsView, &unk_2387823A4);
  sub_23875C8F0();

  return result;
}

double sub_2387040E4@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  sub_23875ED50();
  v19[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19[0] = a3;
    v23 = MEMORY[0x277D84F90];
    sub_2385FECC0(0, v11, 0);
    v12 = v23;
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v21;
    v14 = *(v5 + 72);
    do
    {
      sub_23870F694(v13, v7, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v7[*(v22 + 48)] = 5;
      sub_23870F6FC(v7, v10, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);

      v23 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2385FECC0((v15 > 1), v16 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v16 + 1;
      sub_23870F6FC(v10, v12 + v21 + v16 * v14, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v13 += v14;
      --v11;
    }

    while (v11);
    a3 = v19[0];
  }

  *a3 = v12;
  *(a3 + 8) = v20 & 1;
  v17 = *(type metadata accessor for AllRelatedEmailsView(0) + 24);
  *(a3 + v17) = swift_getKeyPath(byte_238782728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_2387043E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 144) = a4;
  *(v4 + 16) = a3;
  v5 = sub_23875C1E0();
  *(v4 + 24) = v5;
  *(v4 + 32) = *(v5 - 8);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_238758390();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  sub_23875ED50();
  *(v4 + 88) = sub_23875ED40();
  v8 = sub_23875ECE0();
  *(v4 + 96) = v8;
  *(v4 + 104) = v7;

  return MEMORY[0x2822009F8](sub_23870454C, v8, v7);
}

uint64_t sub_23870454C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  sub_2387579D0();
  v0[14] = sub_2387579A0();
  v5 = sub_2387029C0(v4);
  v0[15] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CC6EB8], v3);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_23870464C;
  v7 = v0[10];

  return MEMORY[0x282116E10](v5, v7);
}

uint64_t sub_23870464C(char a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  v7 = *(v4 + 64);
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = *(v4 + 96);
    v9 = *(v4 + 104);
    v10 = sub_2387049B0;
  }

  else
  {
    *(v4 + 145) = a1 & 1;
    (*(v6 + 8))(v5, v7);

    v8 = *(v4 + 96);
    v9 = *(v4 + 104);
    v10 = sub_238704828;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_238704828()
{
  v1 = *(v0 + 145);

  if (v1 == 1)
  {
    v2 = (v0 + 56);
    sub_23875C150();
    v3 = sub_23875C1B0();
    v4 = sub_23875F000();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Email spotlight identifiers were pruned from the UI";
  }

  else
  {
    v2 = (v0 + 48);
    sub_23875C150();
    v3 = sub_23875C1B0();
    v4 = sub_23875F000();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "There were no eligible email spotlight identifiers to prune";
  }

  _os_log_impl(&dword_2383F8000, v3, v4, v6, v5, 2u);
  MEMORY[0x23EE64DF0](v5, -1, -1);
LABEL_7:

  (*(*(v0 + 32) + 8))(*v2, *(v0 + 24));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2387049B0()
{
  v1 = v0[17];

  sub_23875C150();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to prune email spotlight identifiers: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_238704B78@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for AllRelatedEmailsView(0);
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = v3;
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875CE00();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EA8, &qword_238782478);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EB0, &qword_238782480);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = &v45 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EB8, &qword_238782488);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v12 = &v45 - v11;
  v58 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EC0, &qword_238782490);
  sub_23870F45C();
  sub_23875D9C0();
  v13 = &v8[*(v6 + 36)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v15 = sub_23875DA40();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  *v13 = swift_getKeyPath(byte_2387824A8);
  v55 = v1;
  v57 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EE8, &qword_2387824D8);
  v17 = sub_23870F5B0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F08, &unk_2387824E8);
  v19 = sub_23843A3E8(&qword_27DF14F10, &qword_27DF14F08, &unk_2387824E8, MEMORY[0x277CDD7A8]);
  v59 = v18;
  v60 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  sub_238439884(v8, &qword_27DF14EA8, &qword_238782478);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v21 = qword_2814F1B90;
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

  v26 = sub_23875EA80();
  v28 = v27;

  v63 = v26;
  v64 = v28;
  v59 = v6;
  v60 = v16;
  v61 = v17;
  v62 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v32 = sub_2384397A8(v29, v30, v31);
  v33 = MEMORY[0x277D837D0];
  v34 = v47;
  sub_23875DC70();

  (*(v45 + 8))(v10, v34);
  v36 = v49;
  v35 = v50;
  v37 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277CDDDC0], v51);
  v59 = v34;
  v60 = v33;
  v61 = v29;
  v62 = v32;
  swift_getOpaqueTypeConformance2();
  v38 = v56;
  v39 = v48;
  sub_23875DE50();
  (*(v35 + 8))(v36, v37);
  (*(v46 + 8))(v12, v39);
  v40 = v54;
  sub_23870F694(v55, v54, type metadata accessor for AllRelatedEmailsView);
  v41 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v42 = swift_allocObject();
  sub_23870F6FC(v40, v42 + v41, type metadata accessor for AllRelatedEmailsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F18, &qword_2387824F8);
  v44 = (v38 + *(result + 36));
  *v44 = sub_23870F764;
  v44[1] = v42;
  v44[2] = 0;
  v44[3] = 0;
  return result;
}

double sub_238705258(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  sub_23875EA80();
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14ED8, &unk_238782498);
  v7 = sub_23870F4F4();
  sub_2384397A8(v7, v8, v9);
  sub_23875E3A0();

  return result;
}

double sub_23870545C(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(aH_24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E88, &qword_238782420);
  type metadata accessor for OrderDetailsRelatedEmailView(0);
  sub_23843A3E8(&qword_27DF14F30, &qword_27DF14E88, &qword_238782420, MEMORY[0x277D83980]);
  sub_238710C38(&qword_27DF14EE0, type metadata accessor for OrderDetailsRelatedEmailView, &unk_238767978);
  sub_23875E370();

  return result;
}

double sub_2387055F4@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23870F694(a1, a3, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
  v5 = type metadata accessor for OrderDetailsRelatedEmailView(0);
  v6 = *(v5 + 20);
  *(a3 + v6) = swift_getKeyPath(aP_29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 24);
  *(a3 + v7) = swift_getKeyPath(asc_238782560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();

  return result;
}

double sub_238705734@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = sub_23875D2A0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F08, &unk_2387824E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D250();
  MEMORY[0x28223BE20](v8);
  v11[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F20, &qword_238782500);
  sub_23843A3E8(&qword_27DF14F28, &qword_27DF14F20, &qword_238782500, MEMORY[0x277CDF028]);
  sub_23875C4D0();
  v9 = sub_23843A3E8(&qword_27DF14F10, &qword_27DF14F08, &unk_2387824E8, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v7, v4, v9);
  (*(v5 + 8))(v7, v4);

  return result;
}

double sub_2387059A8(uint64_t a1)
{
  v2 = type metadata accessor for AllRelatedEmailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_23875C3C0();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C3A0();
  sub_23870F694(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AllRelatedEmailsView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_23870F6FC(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AllRelatedEmailsView);
  MEMORY[0x23EE62CF0](v7, sub_23870F8A0, v9);

  return result;
}

double sub_238705B88()
{
  v0 = sub_23875C600();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AllRelatedEmailsView(0);
  sub_2384D53C8(v3);
  sub_23875C5F0();
  (*(v1 + 8))(v3, v0);

  return result;
}

double sub_238705CD8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *MEMORY[0x277D38548];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v4 = 1818845549;
  if (*(a1 + 8))
  {
    v4 = 0x63697373616C63;
  }

  v5 = 0xE400000000000000;
  if (*(a1 + 8))
  {
    v5 = 0xE700000000000000;
  }

  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v2, 5, v6);

  return result;
}

uint64_t sub_238705E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    sub_23870F694(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a2, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_238705F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = sub_238758520();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a2, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_238705FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v90 = a4;
  LODWORD(v80) = a3;
  v83 = a1;
  v84 = a2;
  v4 = sub_2387583E0();
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_238758450();
  v91 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v93 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v65 - v8;
  v88 = sub_2387583F0();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238758430();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v65 - v15;
  v17 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v89 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_238758520();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_238758470();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v28;
  v29 = *(v28 + 16);
  v81 = v30;
  v29(v27, v83, v25);
  v83 = v21;
  v31 = *(v21 + 16);
  v32 = v84;
  v84 = v20;
  v31(v23, v32, v20);
  v33 = v17[8];
  v34 = sub_23875B940();
  (*(*(v34 - 8) + 56))(&v19[v33], 1, 1, v34);
  *(v19 + 8) = sub_238758510();
  *(v19 + 9) = v35;
  v71 = v35;
  v74 = v17[7];
  sub_238758500();
  sub_2387583A0();
  v75 = v33;
  sub_2384A475C(v16, &v19[v33]);
  v36 = sub_238758490();
  v37 = &v19[v17[9]];
  *v37 = v36;
  v37[1] = v38;
  v73 = v38;
  *(v19 + 10) = sub_2387584C0();
  *(v19 + 11) = v39;
  v70 = v39;
  v40 = sub_2387584D0();
  v41 = v17[10];
  v72 = v40;
  *&v19[v41] = v40;
  v19[v17[11]] = v80 & 1;
  v80 = v17;
  v19[v17[12]] = 4;
  sub_238758440();
  v69 = sub_238758420();
  v76 = v42;
  (*(v78 + 8))(v13, v79);
  v68 = sub_238758410();
  v79 = v43;
  sub_238758400();
  v78 = sub_2387583D0();
  v45 = v44;
  v66 = sub_2387583B0();
  v47 = v46;
  v48 = v82;
  sub_238758460();
  v49 = v85;
  sub_2387583C0();
  LODWORD(v82) = sub_2384A307C(v48, v49);
  v50 = v93;
  sub_238758460();
  v51 = v87;
  if ((*(v91 + 88))(v50, v87) == *MEMORY[0x277CC6F40])
  {
    v52 = v76;
    v67 = v45;
    v53 = v77;
    v54 = v86;
    if (v47)
    {
      if (v67)
      {

        sub_2387583C0();
        v55 = sub_2384A3D28(v49);
        (*(v54 + 8))(v10, v88);
        (*(v83 + 8))(v23, v84);
        (*(v53 + 8))(v27, v81);
        *v19 = v66;
        *(v19 + 1) = v47;
        v56 = v67;
        *(v19 + 2) = v78;
        *(v19 + 3) = v56;
        v19[32] = v55;
        *(v19 + 33) = *v92;
        *(v19 + 6) = *&v92[15];
        v19[56] = 1;
LABEL_13:
        v62 = v90;
        sub_23870F694(v19, v90, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        (*(v89 + 56))(v62, 0, 1, v80);
        return sub_23870F348(v19);
      }
    }

    (*(v54 + 8))(v10, v88);
    (*(v83 + 8))(v23, v84);
    (*(v53 + 8))(v27, v81);
    if (v52)
    {
      v59 = v52;
      v60 = v67;
      v61 = v79;
      if (v79)
      {
        *v19 = v82;
        *(v19 + 1) = v69;
        *(v19 + 2) = v59;
        *(v19 + 3) = v68;
        *(v19 + 4) = v61;
        *(v19 + 5) = v78;
        *(v19 + 6) = v60;
        v19[56] = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {

    (*(v86 + 8))(v10, v88);
    (*(v83 + 8))(v23, v84);
    (*(v77 + 8))(v27, v81);
    v57 = v76;
    if (v76)
    {
      v58 = v79;
      if (v79)
      {
        *v19 = v82;
        *(v19 + 1) = v69;
        *(v19 + 2) = v57;
        *(v19 + 3) = v68;
        *(v19 + 4) = v58;
        *(v19 + 5) = v78;
        *(v19 + 6) = v45;
        v19[56] = 0;
        (*(v91 + 8))(v93, v51);
        goto LABEL_13;
      }
    }

    (*(v91 + 8))(v93, v51);
  }

  v64 = sub_23875BC40();
  (*(*(v64 - 8) + 8))(&v19[v74], v64);
  sub_238439884(&v19[v75], &qword_27DF0D040, &qword_2387676A0);

  return (*(v89 + 56))(v90, 1, 1, v80);
}

void sub_238706978(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23875F5E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
        v6 = sub_23875ECA0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2387072F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_238706AA4(0, v2, 1, a1);
  }
}

void sub_238706AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  MEMORY[0x28223BE20](v8);
  v81 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v67 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v79 = -v18;
    v80 = v17;
    v20 = a1 - a3;
    v66 = v18;
    v21 = v17 + v18 * a3;
    v78 = v8;
    do
    {
      v70 = v19;
      v71 = a3;
      v68 = v21;
      v69 = v20;
      while (1)
      {
        sub_23870F694(v21, v16, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        sub_23870F694(v19, v12, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        if ((sub_23875BBD0() & 1) == 0)
        {
          v44 = sub_23875BB50();
          goto LABEL_70;
        }

        v29 = *v12;
        v30 = *(v12 + 1);
        v31 = *(v12 + 3);
        v33 = *(v12 + 4);
        v32 = *(v12 + 5);
        v34 = *(v12 + 6);
        v35 = v12[56];
        v37 = *v16;
        v36 = *(v16 + 1);
        v38 = *(v16 + 2);
        v39 = *(v16 + 3);
        v41 = *(v16 + 4);
        v40 = *(v16 + 5);
        v42 = *(v16 + 6);
        v43 = v16[56];
        if (v12[56])
        {
          if (v35 != 1 || !v16[56])
          {
            sub_23870F348(v12);
            sub_23870F348(v16);
            goto LABEL_71;
          }

          if (v43 != 1)
          {
            goto LABEL_4;
          }

          if (*(v12 + 2) == v38 && v31 == v39)
          {
            goto LABEL_5;
          }

          goto LABEL_67;
        }

        if (v16[56])
        {
          break;
        }

        if (v31 == v39 && v33 == v41 || (v76 = *(v16 + 5), v77 = v31, v72 = v33, v73 = v29, v74 = v42, v75 = v32, v45 = v34, v46 = sub_23875F630(), LOBYTE(v29) = v73, v40 = v76, v42 = v74, v32 = v75, v34 = v45, (v46 & 1) != 0))
        {
          v47 = 1;
          v48 = 2;
          v49 = 0;
          v50 = v29;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          switch(v50)
          {
            case 1:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v58 = 1;
              v48 = 4;
              break;
            case 2:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v57 = 1;
              v48 = 5;
              break;
            case 3:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v56 = 1;
              v48 = 6;
              break;
            case 4:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v55 = 1;
              v48 = 7;
              break;
            case 5:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v60 = 0;
              v61 = 0;
              v59 = 1;
              v48 = 3;
              break;
            case 6:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v54 = 1;
              v48 = 8;
              break;
            case 7:
            case 13:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v53 = 1;
              v48 = 9;
              break;
            case 8:
            case 14:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v52 = 1;
              v48 = 10;
              break;
            case 9:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v61 = 0;
              v60 = 1;
              v48 = 1;
              break;
            case 11:
              break;
            case 12:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v61 = 0;
              v48 = 1;
              v60 = 1;
              break;
            case 15:
              v49 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v51 = 1;
              v48 = 11;
              break;
            case 16:
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v49 = 1;
              v48 = 12;
              break;
            default:
              v49 = 0;
              v51 = 0;
              v47 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v48 = 0;
              v61 = 1;
              break;
          }

          switch(v37)
          {
            case 1:
              if (v58)
              {
                goto LABEL_63;
              }

              v62 = 4;
              goto LABEL_69;
            case 2:
              if (v57)
              {
                goto LABEL_63;
              }

              v62 = 5;
              goto LABEL_69;
            case 3:
              if (v56)
              {
                goto LABEL_63;
              }

              v62 = 6;
              goto LABEL_69;
            case 4:
              if (v55)
              {
                goto LABEL_63;
              }

              v62 = 7;
              goto LABEL_69;
            case 5:
              if (v59)
              {
                goto LABEL_63;
              }

              v62 = 3;
              goto LABEL_69;
            case 6:
              if (v54)
              {
                goto LABEL_63;
              }

              v62 = 8;
              goto LABEL_69;
            case 7:
            case 13:
              if (v53)
              {
                goto LABEL_63;
              }

              v62 = 9;
              goto LABEL_69;
            case 8:
            case 14:
              if (v52)
              {
                goto LABEL_63;
              }

              v62 = 10;
              goto LABEL_69;
            case 9:
            case 12:
              if (v60)
              {
                goto LABEL_63;
              }

              v62 = 1;
              goto LABEL_69;
            case 11:
              if (v47)
              {
                goto LABEL_63;
              }

              v62 = 2;
              goto LABEL_69;
            case 15:
              if (v51)
              {
                goto LABEL_63;
              }

              v62 = 11;
              goto LABEL_69;
            case 16:
              if (v49)
              {
                goto LABEL_63;
              }

              v62 = 12;
              goto LABEL_69;
            default:
              if (!v61)
              {
                v62 = 0;
LABEL_69:
                v44 = v48 < v62;
                goto LABEL_70;
              }

LABEL_63:
              if (!v34 || !v42 || v32 == v40 && v34 == v42)
              {
                goto LABEL_5;
              }

              break;
          }
        }

LABEL_67:
        v44 = sub_23875F630();
LABEL_70:
        sub_23870F348(v12);
        sub_23870F348(v16);
        if ((v44 & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_71:
        if (!v80)
        {
          __break(1u);
          return;
        }

        v63 = v81;
        sub_23870F6FC(v21, v81, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        swift_arrayInitWithTakeFrontToBack();
        sub_23870F6FC(v63, v19, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v19 += v79;
        v21 += v79;
        if (__CFADD__(v20++, 1))
        {
          goto LABEL_6;
        }
      }

      if (v43 != 1)
      {
LABEL_4:
        v75 = *(v12 + 2);
        v76 = v40;
        v22 = v37;
        v77 = v31;
        v23 = v33;
        v24 = v41;
        v25 = v32;
        v26 = v34;
        v27 = v29;
        v28 = v30;
        v74 = v36;
        sub_2384A463C(v22, v36, v38, v39, v24, v40, v42, 2);
        sub_2384A463C(v27, v28, v75, v77, v23, v25, v26, v35);

        sub_2384A46CC(v27, v28, v75, v77, v23, v25, v26, v35);
      }

LABEL_5:
      sub_23870F348(v12);
      sub_23870F348(v16);
LABEL_6:
      a3 = v71 + 1;
      v19 = v70 + v66;
      v20 = v69 - 1;
      v21 = v68 + v66;
    }

    while (v71 + 1 != v67);
  }
}

void sub_2387072F4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v158 = a1;
  v6 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v172 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v161 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v153 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v153 - v12);
  MEMORY[0x28223BE20](v14);
  v187 = (&v153 - v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v156 = (&v153 - v19);
  MEMORY[0x28223BE20](v20);
  v155 = (&v153 - v23);
  v174 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_235:
    a3 = *v158;
    if (!*v158)
    {
      goto LABEL_273;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v176;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_237:
      v186 = v26;
      v149 = *(v26 + 2);
      if (v149 >= 2)
      {
        while (*v174)
        {
          v150 = *&v26[16 * v149];
          v151 = *&v26[16 * v149 + 24];
          sub_238708B1C(*v174 + *(v172 + 72) * v150, *v174 + *(v172 + 72) * *&v26[16 * v149 + 16], *v174 + *(v172 + 72) * v151, a3);
          if (v27)
          {
            goto LABEL_245;
          }

          if (v151 < v150)
          {
            goto LABEL_260;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_238490ED4(v26);
          }

          if (v149 - 2 >= *(v26 + 2))
          {
            goto LABEL_261;
          }

          v152 = &v26[16 * v149];
          *v152 = v150;
          *(v152 + 1) = v151;
          v186 = v26;
          sub_238490E48(v149 - 1);
          v26 = v186;
          v149 = *(v186 + 2);
          if (v149 <= 1)
          {
            goto LABEL_245;
          }
        }

        goto LABEL_271;
      }

LABEL_245:

      return;
    }

LABEL_267:
    v26 = sub_238490ED4(v26);
    goto LABEL_237;
  }

  v162 = v22;
  v163 = v21;
  v154 = a4;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v171 = v10;
  v178 = v13;
LABEL_4:
  v27 = v25;
  v173 = v26;
  if (v25 + 1 >= v24)
  {
    v63 = v25 + 1;
    goto LABEL_95;
  }

  v177 = v24;
  v28 = *v174;
  v29 = *(v172 + 72);
  v30 = *v174 + v29 * (v25 + 1);
  v31 = v155;
  sub_23870F694(v30, v155, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
  v32 = v28 + v29 * v27;
  v33 = v27;
  v34 = v156;
  sub_23870F694(v32, v156, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
  LODWORD(v180) = sub_2384A3F7C(v34, v31);
  sub_23870F348(v34);
  sub_23870F348(v31);
  v157 = v33;
  v35 = v33 + 2;
  a3 = (v28 + v29 * (v33 + 2));
  v36 = v163;
  v26 = v162;
  do
  {
    if (v177 == v35)
    {
      v63 = v177;
      goto LABEL_80;
    }

    sub_23870F694(a3, v26, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    sub_23870F694(v30, v36, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    if (sub_23875BBD0())
    {
      v38 = v36[1];
      v182 = *v36;
      *v183 = v38;
      *&v183[16] = v36[2];
      *&v183[25] = *(v36 + 41);
      v39 = *(v26 + 1);
      v184 = *v26;
      *v185 = v39;
      *&v185[16] = *(v26 + 2);
      *&v185[25] = *(v26 + 41);
      if (v183[40])
      {
        if (v183[40] == 1 && v185[40])
        {
          if (v185[40] == 1)
          {
            if (*v183 != *v185)
            {
              v37 = sub_23875F630();
              goto LABEL_7;
            }
          }

          else
          {
            sub_23870F3A4(&v184, v181);
            sub_23870F3A4(&v182, v181);

            v13 = v178;

            sub_23870F400(&v182);
          }

          v37 = 0;
          goto LABEL_7;
        }

        v37 = 1;
LABEL_7:
        v36 = v163;
        v26 = v162;
        goto LABEL_8;
      }

      v41 = *&v185[24];
      if (v185[40])
      {
        if (v185[40] != 1)
        {
          sub_23870F3A4(&v184, v181);
          sub_23870F3A4(&v182, v181);

          sub_23870F400(&v182);
        }

        v37 = 0;
        goto LABEL_23;
      }

      v42 = v182;
      v43 = *&v183[24];
      v44 = *&v183[32];
      v179 = v184;
      v45 = *&v185[32];
      if (*&v183[8] != *&v185[8])
      {
        v169 = *&v183[24];
        v175 = *&v183[16];
        v168 = *&v183[32];
        v167 = *&v185[32];
        v166 = v182;
        v46 = sub_23875F630();
        v42 = v166;
        v45 = v167;
        v43 = v169;
        v44 = v168;
        if ((v46 & 1) == 0)
        {
          v37 = sub_23875F630();
LABEL_23:
          v13 = v178;
          goto LABEL_7;
        }
      }

      v47 = 1;
      v48 = 2;
      v49 = v41;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v13 = v178;
      v36 = v163;
      v26 = v162;
      switch(v42)
      {
        case 1:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v58 = 1;
          v48 = 4;
          break;
        case 2:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v57 = 1;
          v48 = 5;
          break;
        case 3:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v56 = 1;
          v48 = 6;
          break;
        case 4:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v55 = 1;
          v48 = 7;
          break;
        case 5:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v60 = 0;
          v61 = 0;
          v59 = 1;
          v48 = 3;
          break;
        case 6:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v54 = 1;
          v48 = 8;
          break;
        case 7:
        case 13:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v53 = 1;
          v48 = 9;
          break;
        case 8:
        case 14:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v52 = 1;
          v48 = 10;
          break;
        case 9:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v61 = 0;
          v60 = 1;
          v48 = 1;
          break;
        case 11:
          break;
        case 12:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v61 = 0;
          v48 = 1;
          v60 = 1;
          break;
        case 15:
          v50 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v51 = 1;
          v48 = 11;
          break;
        case 16:
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v50 = 1;
          v48 = 12;
          break;
        default:
          v50 = 0;
          v51 = 0;
          v47 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v48 = 0;
          v61 = 1;
          break;
      }

      switch(v179)
      {
        case 1:
          if (v58)
          {
            goto LABEL_69;
          }

          v62 = 4;
          goto LABEL_76;
        case 2:
          if (v57)
          {
            goto LABEL_69;
          }

          v62 = 5;
          goto LABEL_76;
        case 3:
          if (v56)
          {
            goto LABEL_69;
          }

          v62 = 6;
          goto LABEL_76;
        case 4:
          if (v55)
          {
            goto LABEL_69;
          }

          v62 = 7;
          goto LABEL_76;
        case 5:
          if (v59)
          {
            goto LABEL_69;
          }

          v62 = 3;
          goto LABEL_76;
        case 6:
          if (v54)
          {
            goto LABEL_69;
          }

          v62 = 8;
          goto LABEL_76;
        case 7:
        case 13:
          if (v53)
          {
            goto LABEL_69;
          }

          v62 = 9;
          goto LABEL_76;
        case 8:
        case 14:
          if (v52)
          {
            goto LABEL_69;
          }

          v62 = 10;
          goto LABEL_76;
        case 9:
        case 12:
          if (v60)
          {
            goto LABEL_69;
          }

          v62 = 1;
          goto LABEL_76;
        case 11:
          if (v47)
          {
            goto LABEL_69;
          }

          v62 = 2;
          goto LABEL_76;
        case 15:
          if (v51)
          {
            goto LABEL_69;
          }

          v62 = 11;
          goto LABEL_76;
        case 16:
          if (v50)
          {
            goto LABEL_69;
          }

          v62 = 12;
          goto LABEL_76;
        default:
          if (!v61)
          {
            v62 = 0;
LABEL_76:
            v37 = v48 < v62;
            goto LABEL_8;
          }

LABEL_69:
          if (!v44 || !v45 || v43 == v49 && v44 == v45)
          {
            v37 = 0;
            goto LABEL_8;
          }

          v40 = sub_23875F630();
          break;
      }
    }

    else
    {
      v40 = sub_23875BB50();
    }

    v37 = v40;
LABEL_8:
    sub_23870F348(v36);
    sub_23870F348(v26);
    ++v35;
    a3 = (a3 + v29);
    v30 += v29;
  }

  while (((v180 ^ v37) & 1) == 0);
  v63 = v35 - 1;
LABEL_80:
  v27 = v157;
  if ((v180 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v63 < v157)
  {
    goto LABEL_264;
  }

  if (v157 < v63)
  {
    v64 = v29 * (v63 - 1);
    v65 = v63;
    v66 = v63 * v29;
    v177 = v63;
    v67 = v157 * v29;
    do
    {
      if (v27 != --v65)
      {
        v68 = *v174;
        if (!*v174)
        {
          goto LABEL_270;
        }

        a3 = (v68 + v67);
        sub_23870F6FC(v68 + v67, v161, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        if (v67 < v64 || a3 >= v68 + v66)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v67 != v64)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_23870F6FC(v161, v68 + v64, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      }

      ++v27;
      v64 -= v29;
      v66 -= v29;
      v67 += v29;
    }

    while (v27 < v65);
    v26 = v173;
    v10 = v171;
    v13 = v178;
    v27 = v157;
    v63 = v177;
  }

  else
  {
LABEL_93:
    v26 = v173;
    v10 = v171;
  }

LABEL_95:
  v69 = v174[1];
  if (v63 >= v69)
  {
    goto LABEL_104;
  }

  if (__OFSUB__(v63, v27))
  {
    goto LABEL_263;
  }

  if (v63 - v27 >= v154)
  {
LABEL_104:
    v25 = v63;
    if (v63 < v27)
    {
      goto LABEL_262;
    }

    goto LABEL_105;
  }

  if (__OFADD__(v27, v154))
  {
    goto LABEL_265;
  }

  if (v27 + v154 >= v69)
  {
    v70 = v174[1];
  }

  else
  {
    v70 = v27 + v154;
  }

  if (v70 < v27)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  if (v63 == v70)
  {
    goto LABEL_104;
  }

  v117 = *v174;
  v118 = *(v172 + 72);
  v119 = *v174 + v118 * (v63 - 1);
  v179 = -v118;
  v157 = v27;
  v120 = v27 - v63;
  v180 = v117;
  v159 = v118;
  a3 = (v117 + v63 * v118);
  v170 = v6;
  v160 = v70;
  while (2)
  {
    v177 = v63;
    v164 = a3;
    v165 = v120;
    v166 = v119;
LABEL_159:
    v121 = v187;
    sub_23870F694(a3, v187, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    sub_23870F694(v119, v13, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    if ((sub_23875BBD0() & 1) == 0)
    {
      v125 = sub_23875BB50();
LABEL_167:
      v124 = v125;
      goto LABEL_168;
    }

    v122 = v13[1];
    v182 = *v13;
    *v183 = v122;
    *&v183[16] = v13[2];
    *&v183[25] = *(v13 + 41);
    v123 = v121[1];
    v184 = *v121;
    *v185 = v123;
    *&v185[16] = v121[2];
    *&v185[25] = *(v121 + 41);
    if (!v183[40])
    {
      v127 = *&v185[24];
      if (!v185[40])
      {
        v128 = v182;
        v129 = *&v183[24];
        v130 = *&v183[32];
        v175 = v184;
        v131 = *&v185[32];
        if (*&v183[8] != *&v185[8])
        {
          v168 = *&v185[24];
          v169 = *&v183[32];
          v167 = v182;
          v132 = sub_23875F630();
          v128 = v167;
          v130 = v169;
          v127 = v168;
          if ((v132 & 1) == 0)
          {
            v124 = sub_23875F630();
            v26 = v173;
            v6 = v170;
            v10 = v171;
            goto LABEL_181;
          }
        }

        v133 = 1;
        v134 = 2;
        v135 = 0;
        v136 = 0;
        v137 = 0;
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v26 = v173;
        v10 = v171;
        v13 = v178;
        switch(v128)
        {
          case 1:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v143 = 1;
            v134 = 4;
            break;
          case 2:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v142 = 1;
            v134 = 5;
            break;
          case 3:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v141 = 1;
            v134 = 6;
            break;
          case 4:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v140 = 1;
            v134 = 7;
            break;
          case 5:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v145 = 0;
            v146 = 0;
            v144 = 1;
            v134 = 3;
            break;
          case 6:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v139 = 1;
            v134 = 8;
            break;
          case 7:
          case 13:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v138 = 1;
            v134 = 9;
            break;
          case 8:
          case 14:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v137 = 1;
            v134 = 10;
            break;
          case 9:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v146 = 0;
            v145 = 1;
            v134 = 1;
            break;
          case 11:
            break;
          case 12:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v146 = 0;
            v134 = 1;
            v145 = 1;
            break;
          case 15:
            v135 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v136 = 1;
            v134 = 11;
            break;
          case 16:
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v135 = 1;
            v134 = 12;
            break;
          default:
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v134 = 0;
            v146 = 1;
            break;
        }

        v6 = v170;
        v121 = v187;
        switch(v175)
        {
          case 1:
            if (v143)
            {
              goto LABEL_220;
            }

            v147 = 4;
            goto LABEL_226;
          case 2:
            if (v142)
            {
              goto LABEL_220;
            }

            v147 = 5;
            goto LABEL_226;
          case 3:
            if (v141)
            {
              goto LABEL_220;
            }

            v147 = 6;
            goto LABEL_226;
          case 4:
            if (v140)
            {
              goto LABEL_220;
            }

            v147 = 7;
            goto LABEL_226;
          case 5:
            if (v144)
            {
              goto LABEL_220;
            }

            v147 = 3;
            goto LABEL_226;
          case 6:
            if (v139)
            {
              goto LABEL_220;
            }

            v147 = 8;
            goto LABEL_226;
          case 7:
          case 13:
            if (v138)
            {
              goto LABEL_220;
            }

            v147 = 9;
            goto LABEL_226;
          case 8:
          case 14:
            if (v137)
            {
              goto LABEL_220;
            }

            v147 = 10;
            goto LABEL_226;
          case 9:
          case 12:
            if (v145)
            {
              goto LABEL_220;
            }

            v147 = 1;
            goto LABEL_226;
          case 11:
            if (v133)
            {
              goto LABEL_220;
            }

            v147 = 2;
            goto LABEL_226;
          case 15:
            if (v136)
            {
              goto LABEL_220;
            }

            v147 = 11;
            goto LABEL_226;
          case 16:
            if (v135)
            {
              goto LABEL_220;
            }

            v147 = 12;
            goto LABEL_226;
          default:
            if (!v146)
            {
              v147 = 0;
LABEL_226:
              v124 = v134 < v147;
              v121 = v187;
              goto LABEL_168;
            }

LABEL_220:
            if (!v130 || !v131 || v129 == v127 && v130 == v131)
            {
              goto LABEL_156;
            }

            v125 = sub_23875F630();
            break;
        }

        goto LABEL_167;
      }

      if (v185[40] != 1)
      {
        sub_23870F3A4(&v184, v181);
        sub_23870F3A4(&v182, v181);

        sub_23870F400(&v182);
      }

      v26 = v173;
      v10 = v171;
      v13 = v178;
LABEL_156:
      sub_23870F348(v13);
      sub_23870F348(v121);
LABEL_157:
      v63 = v177 + 1;
      v119 = v166 + v159;
      v120 = v165 - 1;
      a3 = (v164 + v159);
      v25 = v160;
      if (v177 + 1 != v160)
      {
        continue;
      }

      v27 = v157;
      if (v160 < v157)
      {
        goto LABEL_262;
      }

LABEL_105:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_238490EE8(0, *(v26 + 2) + 1, 1, v26);
      }

      v72 = *(v26 + 2);
      v71 = *(v26 + 3);
      v73 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        v26 = sub_238490EE8((v71 > 1), v72 + 1, 1, v26);
      }

      *(v26 + 2) = v73;
      v74 = &v26[16 * v72];
      *(v74 + 4) = v27;
      *(v74 + 5) = v25;
      a3 = *v158;
      if (!*v158)
      {
        goto LABEL_272;
      }

      if (!v72)
      {
LABEL_3:
        v24 = v174[1];
        v13 = v178;
        if (v25 >= v24)
        {
          goto LABEL_235;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v75 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v76 = *(v26 + 4);
          v77 = *(v26 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_124:
          if (v79)
          {
            goto LABEL_251;
          }

          v92 = &v26[16 * v73];
          v94 = *v92;
          v93 = *(v92 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_254;
          }

          v98 = &v26[16 * v75 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_257;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_258;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v73 - 2;
            }

            goto LABEL_145;
          }

          goto LABEL_138;
        }

        v102 = &v26[16 * v73];
        v104 = *v102;
        v103 = *(v102 + 1);
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_138:
        if (v97)
        {
          goto LABEL_253;
        }

        v105 = &v26[16 * v75];
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_256;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_145:
        v113 = v75 - 1;
        if (v75 - 1 >= v73)
        {
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
          goto LABEL_266;
        }

        if (!*v174)
        {
          goto LABEL_269;
        }

        v114 = *&v26[16 * v113 + 32];
        v27 = *&v26[16 * v75 + 40];
        v115 = v176;
        sub_238708B1C(*v174 + *(v172 + 72) * v114, *v174 + *(v172 + 72) * *&v26[16 * v75 + 32], *v174 + *(v172 + 72) * v27, a3);
        v176 = v115;
        if (v115)
        {
          goto LABEL_245;
        }

        if (v27 < v114)
        {
          goto LABEL_247;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_238490ED4(v26);
        }

        if (v113 >= *(v26 + 2))
        {
          goto LABEL_248;
        }

        v116 = &v26[16 * v113];
        *(v116 + 4) = v114;
        *(v116 + 5) = v27;
        v186 = v26;
        sub_238490E48(v75);
        v26 = v186;
        v73 = *(v186 + 2);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = &v26[16 * v73 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_249;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_250;
      }

      v87 = &v26[16 * v73];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_252;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_255;
      }

      if (v91 >= v83)
      {
        v109 = &v26[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_259;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_145;
      }

      goto LABEL_124;
    }

    break;
  }

  if (v183[40] == 1 && v185[40])
  {
    if (v185[40] != 1)
    {
      sub_23870F3A4(&v184, v181);
      sub_23870F3A4(&v182, v181);

      sub_23870F400(&v182);
LABEL_230:
      v13 = v178;
      v121 = v187;
      goto LABEL_156;
    }

    if (*v183 == *v185)
    {
      goto LABEL_230;
    }

    v124 = sub_23875F630();
LABEL_181:
    v13 = v178;
    v121 = v187;
LABEL_168:
    sub_23870F348(v13);
    sub_23870F348(v121);
    if ((v124 & 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else
  {
    v13 = v178;
    sub_23870F348(v178);
    sub_23870F348(v121);
  }

  if (v180)
  {
    sub_23870F6FC(a3, v10, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    swift_arrayInitWithTakeFrontToBack();
    sub_23870F6FC(v10, v119, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v119 += v179;
    a3 = (a3 + v179);
    if (__CFADD__(v120++, 1))
    {
      goto LABEL_157;
    }

    goto LABEL_159;
  }

  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
}