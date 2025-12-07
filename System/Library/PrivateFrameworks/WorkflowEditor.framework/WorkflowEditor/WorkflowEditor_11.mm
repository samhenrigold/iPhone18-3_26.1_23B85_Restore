BOOL sub_274506CE0(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 value];
  }

  else
  {
    v2 = a1;
  }

  v3 = v2;
  v4 = [v2 valueType];

  return v4 == 6;
}

uint64_t sub_274506D3C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
  return sub_27463BF7C() & 1;
}

uint64_t sub_274506DDC(uint64_t a1, char a2)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a2 & 1);
  sub_27463BF8C();
  return sub_27463C7AC();
}

uint64_t sub_274506E74(char a1)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a1 & 1);
  return sub_27463C7AC();
}

uint64_t sub_274506EEC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_27463C74C();
  sub_274506DA4(v5, v2, v3);
  return sub_27463C7AC();
}

void sub_274506F78()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v2;
  sub_2746380BC();
  OUTLINED_FUNCTION_14_11();
  v34 = v15;
  OUTLINED_FUNCTION_4_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  *(v1 + qword_280965EB8) = 0;
  *(v1 + qword_280965EC0) = v6;
  *(v1 + qword_280965EC8) = v4;
  (*(v17 + 16))(v20 - v19, v14);
  sub_27463B9CC();
  v22 = v9;
  v32 = v4;

  v23 = sub_27463B9BC();
  v24 = OUTLINED_FUNCTION_10_14(&unk_28836AAC0);
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v13;
  v24[5] = v11;
  v24[6] = v9;

  v26 = v22;
  v27 = sub_27463B9BC();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = MEMORY[0x277D85700];
  v28[4] = v13;
  v28[5] = v11;
  v28[6] = v9;
  v28[7] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8B8, &qword_274655710);
  sub_27463AF0C();
  OUTLINED_FUNCTION_13_11();
  sub_2745076E8(v21, v29, v30, v31, &qword_28094F970, &qword_274655A88);

  swift_unknownObjectRelease();
  (*(v17 + 8))(v35, v34);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_23();
}

void sub_2745071D0(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F980, &qword_274655A98);
  MEMORY[0x277C575F0](&v16, v2);
  v3 = v16;
  if (!v16)
  {
    goto LABEL_13;
  }

  v4 = [v16 values];

  sub_274412734(0, &qword_28094F988, 0x277D7C770);
  v5 = sub_27463B81C();

  v6 = sub_274453594();
  if (!v6)
  {

LABEL_13:
    v9 = MEMORY[0x277D84F90];
LABEL_14:
    *a1 = v9;
    return;
  }

  v7 = v6;
  v15 = MEMORY[0x277D84F90];
  sub_27445143C(0, v6 & ~(v6 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v15;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_27445143C(v12 > 1, v13 + 1, 1);
      }

      ++v8;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = 0;
    }

    while (v7 != v8);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_274507370(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v37 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_274637EEC();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = *a1;
  v42[1] = a4;
  v42[2] = a5;
  v42[3] = a6;
  v21 = *(v20 + 16);
  v38 = a5;
  if (v21)
  {
    v39 = MEMORY[0x277D84F90];
    v35 = a6;
    v22 = a6;
    v34 = a4;

    sub_27463C44C();
    v23 = (v20 + 40);
    do
    {
      v24 = *(v23 - 1);
      if (*v23)
      {
        v25 = [v24 value];
      }

      else
      {
        v26 = v24;
      }

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v23 += 16;
      --v21;
    }

    while (v21);
    v27 = v38;
    v28 = v39;
    a4 = v34;
    a6 = v35;
  }

  else
  {
    v29 = a6;

    v27 = a5;
    v28 = MEMORY[0x277D84F90];
  }

  v39 = a4;
  v40 = v27;
  v41 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F980, &qword_274655A98);
  MEMORY[0x277C575F0](v42);
  v30 = v42[0];
  if (v42[0])
  {
    v31 = [v42[0] identity];

    sub_274637ECC();
    v32 = *(v36 + 32);
    v32(v13, v16, v14);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    v32(v19, v13, v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_274637EDC();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_27450A21C(v13);
    }
  }

  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v39 = sub_27450A160(v28, v19, &qword_28094F988, 0x277D7C770, &selRef_initWithValues_identity_);
  sub_27463AEBC();
}

id sub_2745076E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v13 = qword_280965F70;
  v14 = sub_2746380BC();
  OUTLINED_FUNCTION_4_0();
  v16 = v15;
  (*(v17 + 16))(&v6[v13], a1, v14);
  v18 = &v6[qword_280954408];
  *v18 = a2;
  *(v18 + 1) = a3;
  *(v18 + 2) = a4;
  v21.receiver = v6;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v16 + 8))(a1, v14);
  return v19;
}

void sub_274507808()
{
  OUTLINED_FUNCTION_24();
  v3 = v0;
  v5 = v4;
  v30 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_4_21(v9, v10);
  OUTLINED_FUNCTION_14_11();
  v31 = v11;
  OUTLINED_FUNCTION_4_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v17 = v16 - v15;
  *(v3 + qword_280965EB8) = 1;
  *(v3 + qword_280965EC0) = v5;
  v18 = OUTLINED_FUNCTION_2_21(qword_280965EC8);
  v19(v18);
  sub_27463B9CC();
  v20 = v8;

  v21 = sub_27463B9BC();
  v22 = OUTLINED_FUNCTION_10_14(&unk_28836AA70);
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v1;
  v22[5] = v2;
  v22[6] = v8;

  v24 = v20;
  v25 = sub_27463B9BC();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = MEMORY[0x277D85700];
  v26[4] = v1;
  v26[5] = v2;
  v26[6] = v8;
  v26[7] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8B8, &qword_274655710);
  sub_27463AF0C();
  OUTLINED_FUNCTION_13_11();
  sub_2745076E8(v17, v27, v28, v29, &qword_28094F970, &qword_274655A88);

  (*(v13 + 8))(v32, v31);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_23();
}

void sub_274507A24(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F978, &qword_274655A90);
  MEMORY[0x277C575F0](&v16, v2);
  v3 = v16;
  if (!v16)
  {
    goto LABEL_13;
  }

  v4 = [v16 keyValuePairs];

  sub_274412734(0, &unk_28094B310, 0x277D7C368);
  v5 = sub_27463B81C();

  v6 = sub_274453594();
  if (!v6)
  {

LABEL_13:
    v9 = MEMORY[0x277D84F90];
LABEL_14:
    *a1 = v9;
    return;
  }

  v7 = v6;
  v15 = MEMORY[0x277D84F90];
  sub_27445143C(0, v6 & ~(v6 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v15;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_27445143C(v12 > 1, v13 + 1, 1);
      }

      ++v8;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = 1;
    }

    while (v7 != v8);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_274507BC8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v39 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_274637EEC();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v38 = &v35 - v17;
  v18 = *a1;
  v45[1] = a4;
  v45[2] = a5;
  v45[3] = a6;
  v19 = MEMORY[0x277D84F90];
  v41 = a4;
  v42 = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);

  v40 = a5;

  result = a6;
  v37 = result;
  v22 = 0;
LABEL_2:
  v23 = (v18 + 40 + 16 * v22);
  while (v20 != v22)
  {
    if (v22 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    v24 = v23 + 16;
    ++v22;
    v25 = *v23;
    v23 += 16;
    if (v25 == 1)
    {
      v26 = *(v24 - 3);
      MEMORY[0x277C57F30]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      result = sub_27463B8AC();
      v19 = v42;
      goto LABEL_2;
    }
  }

  v42 = v41;
  v43 = v40;
  v44 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F978, &qword_274655A90);
  MEMORY[0x277C575F0](v45);
  v27 = v45[0];
  if (v45[0])
  {
    v28 = [v45[0] identity];

    v29 = v35;
    sub_274637ECC();

    v30 = *(v36 + 32);
    v30(v13, v29, v14);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    v31 = v38;
    v30(v38, v13, v14);
    v32 = v37;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    v31 = v38;
    sub_274637EDC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
    v32 = v37;
    if (EnumTagSinglePayload != 1)
    {
      sub_27450A21C(v13);
    }
  }

  v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v42 = sub_27450A160(v19, v31, &unk_28094B310, 0x277D7C368, &selRef_initWithKeyValuePairs_identity_);
  sub_27463AEBC();
}

void sub_274507F40()
{
  OUTLINED_FUNCTION_24();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_21(v8, v9);
  OUTLINED_FUNCTION_14_11();
  v27 = v10;
  OUTLINED_FUNCTION_4_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  *(v3 + qword_280965EB8) = 0;
  *(v3 + qword_280965EC0) = v5;
  v17 = OUTLINED_FUNCTION_2_21(qword_280965EC8);
  v18(v17);
  sub_27463B9CC();
  v19 = v7;

  sub_27463B9BC();
  v20 = OUTLINED_FUNCTION_10_14(&unk_28836ABB0);
  OUTLINED_FUNCTION_16_11(v20, MEMORY[0x277D85700]);

  v21 = v19;
  v22 = sub_27463B9BC();
  v23 = OUTLINED_FUNCTION_10_14(&unk_28836ABD8);
  v23[2] = v22;
  v23[3] = MEMORY[0x277D85700];
  v23[4] = v1;
  v23[5] = v2;
  v23[6] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8B8, &qword_274655710);
  sub_27463AF0C();
  OUTLINED_FUNCTION_13_11();
  sub_2745076E8(v16, v24, v25, v26, &qword_28094F970, &qword_274655A88);

  (*(v12 + 8))(v28, v27);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_23();
}

void sub_274508134(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9B8, &qword_274655AB8);
  MEMORY[0x277C575F0](&v22, v5);
  v6 = v22;
  if (!v22)
  {
    goto LABEL_13;
  }

  v7 = [v22 values];

  sub_274412734(0, &qword_28094F988, 0x277D7C770);
  v8 = sub_27463B81C();

  v9 = sub_274453594();
  if (!v9)
  {

LABEL_13:
    v12 = MEMORY[0x277D84F90];
LABEL_14:
    *a4 = v12;
    return;
  }

  v10 = v9;
  v19 = MEMORY[0x277D84F90];
  sub_27445143C(0, v9 & ~(v9 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v19;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C58B20](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_27445143C(v15 > 1, v16 + 1, 1);
      }

      ++v11;
      *(v19 + 16) = v16 + 1;
      v17 = v19 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = 0;
    }

    while (v10 != v11);

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_2745082D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    v8 = a6;

    sub_27463C44C();
    v9 = (v6 + 40);
    do
    {
      v10 = *(v9 - 1);
      if (*v9)
      {
        v11 = [v10 value];
      }

      else
      {
        v12 = v10;
      }

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v9 += 16;
      --v7;
    }

    while (v7);
    v13 = v15;
  }

  else
  {
    v8 = a6;

    v13 = MEMORY[0x277D84F90];
  }

  sub_274412734(0, &qword_28094F9B0, 0x277D7C148);
  sub_2745089AC(v13, &qword_28094F988, 0x277D7C770, &selRef_initWithValues_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9B8, &qword_274655AB8);
  sub_27463AEBC();
}

void sub_274508478()
{
  OUTLINED_FUNCTION_24();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_21(v8, v9);
  OUTLINED_FUNCTION_14_11();
  v27 = v10;
  OUTLINED_FUNCTION_4_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  *(v3 + qword_280965EB8) = 1;
  *(v3 + qword_280965EC0) = v5;
  v17 = OUTLINED_FUNCTION_2_21(qword_280965EC8);
  v18(v17);
  sub_27463B9CC();
  v19 = v7;

  sub_27463B9BC();
  v20 = OUTLINED_FUNCTION_10_14(&unk_28836AC00);
  OUTLINED_FUNCTION_16_11(v20, MEMORY[0x277D85700]);

  v21 = v19;
  v22 = sub_27463B9BC();
  v23 = OUTLINED_FUNCTION_10_14(&unk_28836AC28);
  v23[2] = v22;
  v23[3] = MEMORY[0x277D85700];
  v23[4] = v1;
  v23[5] = v2;
  v23[6] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8B8, &qword_274655710);
  sub_27463AF0C();
  OUTLINED_FUNCTION_13_11();
  sub_2745076E8(v16, v24, v25, v26, &qword_28094F970, &qword_274655A88);

  (*(v12 + 8))(v28, v27);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_23();
}

void sub_274508670(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9C8, &qword_274655AC0);
  MEMORY[0x277C575F0](&v22, v5);
  v6 = v22;
  if (!v22)
  {
    goto LABEL_13;
  }

  v7 = [v22 keyValuePairs];

  sub_274412734(0, &unk_28094B310, 0x277D7C368);
  v8 = sub_27463B81C();

  v9 = sub_274453594();
  if (!v9)
  {

LABEL_13:
    v12 = MEMORY[0x277D84F90];
LABEL_14:
    *a4 = v12;
    return;
  }

  v10 = v9;
  v19 = MEMORY[0x277D84F90];
  sub_27445143C(0, v9 & ~(v9 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v19;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C58B20](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_27445143C(v15 > 1, v16 + 1, 1);
      }

      ++v11;
      *(v19 + 16) = v16 + 1;
      v17 = v19 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = 1;
    }

    while (v10 != v11);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_274508814(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  v8 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v9 = *(*a1 + 16);

  result = a6;
  v11 = result;
  v12 = 0;
LABEL_2:
  v13 = (v7 + 40 + 16 * v12);
  while (1)
  {
    if (v9 == v12)
    {
      sub_274412734(0, &qword_28094F9C0, 0x277D7C378);
      sub_2745089AC(v8, &unk_28094B310, 0x277D7C368, &selRef_initWithKeyValuePairs_);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9C8, &qword_274655AC0);
      sub_27463AEBC();
    }

    if (v12 >= *(v7 + 16))
    {
      break;
    }

    v14 = v13 + 16;
    ++v12;
    v15 = *v13;
    v13 += 16;
    if (v15 == 1)
    {
      v16 = *(v14 - 3);
      MEMORY[0x277C57F30]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      result = sub_27463B8AC();
      v8 = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_2745089AC(uint64_t a1, unint64_t *a2, void *a3, SEL *a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_274412734(0, a2, a3);
  v8 = sub_27463B7FC();

  v9 = [v7 *a4];

  return v9;
}

uint64_t sub_274508A3C()
{
  OUTLINED_FUNCTION_79();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = sub_27463B9CC();
  v1[5] = sub_27463B9BC();
  v4 = sub_27463B96C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_274508AD4, v4, v3);
}

uint64_t sub_274508AD4()
{
  v1 = *(v0[3] + qword_280965EC8);
  v0[8] = v1;
  if (v1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = v0[2];
    v3 = v1;
    v4 = sub_27463B9BC();
    v0[9] = v4;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_274508C88;
    v7 = MEMORY[0x277D85700];
    v8 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 13, v4, v7, 0x612865766F6D6572, 0xEB00000000293A74, sub_27450A48C, v5, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_3_25(v9);

    return sub_27450945C(v10);
  }
}

uint64_t sub_274508C88()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274508DE8, v3, v2);
}

uint64_t sub_274508DE8()
{
  OUTLINED_FUNCTION_79();

  if (*(v0 + 104))
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v2 = OUTLINED_FUNCTION_3_25(v1);

    return sub_27450945C(v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(0);
  }
}

uint64_t sub_274508EB4()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  *(*v0 + 105) = v2;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274508FD8, v4, v3);
}

uint64_t sub_274508FD8()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 105);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_274509038(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9D0, &unk_274655AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = *(v6 + 16);
  v12(&v28 - v10, a1, v5, v9);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v12)(v32, v11, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v33 = v6;
  v34 = v5;
  v15 = *(v6 + 32);
  v31 = v14;
  v15(v14 + v13, v11, v5);
  v29 = a2;
  v16 = [a2 eventObservers];
  v17 = [v16 allObjects];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9D8, &unk_274655AE0);
  v18 = sub_27463B81C();

  v19 = sub_274453594();
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C58B20](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        swift_unknownObjectRetain();
      }

      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      aBlock[6] = &unk_2883EEE98;
      v23 = swift_dynamicCastObjCProtocolConditional();
      if (v23)
      {
        v24 = v23;
        if ([v23 respondsToSelector_])
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      ++v21;
      if (v22 == v20)
      {
        goto LABEL_11;
      }
    }

    if ([v24 respondsToSelector_])
    {
      aBlock[4] = sub_27450A494;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2745AA044;
      aBlock[3] = &block_descriptor_21;
      v27 = _Block_copy(aBlock);

      [v24 &selRef:v29 setExclusionRects:{v30, v27} + 5];
      _Block_release(v27);

      swift_unknownObjectRelease();
      (*(v33 + 8))(v32, v34);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v33 + 8))(v32, v34);
    }
  }

  else
  {
LABEL_11:

    LOBYTE(aBlock[0]) = 1;
    v25 = v34;
    v26 = v32;
    sub_27463B98C();

    (*(v33 + 8))(v26, v25);
  }
}

uint64_t sub_27450945C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745094F4, v4, v3);
}

void sub_2745094F4()
{
  v1 = *(v0 + 16);

  v2 = *(sub_2745420FC() + 16);

  v4 = v1 >= 0 && v2 > v1;
  if (v4)
  {
    v5 = sub_2745420FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_27453AD1C(v5);
      v5 = v12;
    }

    v6 = *(v0 + 16);
    v7 = *(v5 + 16);
    if (v7 <= v6)
    {
      __break(1u);
      return;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v6;
    v10 = *(v9 + 32);
    sub_274451080((v9 + 48), v7 - 1 - v6, (v9 + 32));
    *(v5 + 16) = v8;

    sub_274542164(v5);
  }

  v11 = *(v0 + 8);

  v11(v4);
}

void sub_2745095F0(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_2746380BC();
  v6 = OUTLINED_FUNCTION_53_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v7 = *(sub_2745420FC() + 16);

  if ((a1 & 0x8000000000000000) == 0 && v7 > a1)
  {
    v8 = sub_2745420FC();
    if (*(v8 + 16) <= a1)
    {
      __break(1u);
    }

    else
    {
      v9 = v8 + 16 * a1;
      v10 = *(v9 + 40);
      v11 = *(v9 + 32);

      if (v10)
      {
        v12 = [v11 value];
      }

      else
      {
        v12 = v11;
      }

      v13 = v12;
      v14 = [v12 valueType];

      if (v14 == 1)
      {
        sub_27463809C();
        sub_27463B9CC();
        v23 = v3;
        v24 = sub_27463B9BC();
        OUTLINED_FUNCTION_2_6();
        v25 = swift_allocObject();
        v26 = MEMORY[0x277D85700];
        v25[2] = v24;
        v25[3] = v26;
        v25[4] = a1;
        v25[5] = v23;
        v27 = v23;
        v28 = sub_27463B9BC();
        OUTLINED_FUNCTION_2_6();
        v29 = swift_allocObject();
        v29[2] = v28;
        v29[3] = v26;
        v29[4] = a1;
        v29[5] = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9A0, &qword_274655AA8);
        sub_27463AF0C();
        v30 = objc_allocWithZone(type metadata accessor for PropertyListOutlineContent(0));

        OUTLINED_FUNCTION_5_23();
        sub_274508478();
      }

      else if (v14 == 2)
      {
        sub_27463809C();
        sub_27463B9CC();
        v15 = v3;
        v16 = sub_27463B9BC();
        OUTLINED_FUNCTION_2_6();
        v17 = swift_allocObject();
        v18 = MEMORY[0x277D85700];
        v17[2] = v16;
        v17[3] = v18;
        v17[4] = a1;
        v17[5] = v15;
        v19 = v15;
        v20 = sub_27463B9BC();
        OUTLINED_FUNCTION_2_6();
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = v18;
        v21[4] = a1;
        v21[5] = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9A8, &qword_274655AB0);
        sub_27463AF0C();
        v22 = objc_allocWithZone(type metadata accessor for PropertyListOutlineContent(0));

        OUTLINED_FUNCTION_5_23();
        sub_274507F40();
      }
    }
  }
}

void sub_274509934(unint64_t a2@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_2745420FC();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v6 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = v6 + 16 * a2;
  v8 = *(v7 + 40);
  v9 = *(v7 + 32);

  if (v8 == 1)
  {
    v10 = [v9 value];

    v9 = v10;
  }

  v11 = [v9 state];

  if (v11)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      *a4 = v12;
      return;
    }

    swift_unknownObjectRelease();
  }

  *a4 = 0;
}

void sub_274509A28()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_274637EEC();
  v9 = OUTLINED_FUNCTION_53_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = *v7;
  if (!*v7)
  {
    v15 = sub_2745420FC();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v14 = v13;
  v15 = v3;
  v16 = sub_2745420FC();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v16 + 16) > v5)
  {
    v17 = v16 + 16 * v5;
    v18 = *(v17 + 40);
    v19 = *(v17 + 32);

    if (v18 == 1)
    {
      v20 = [v19 value];

      v19 = v20;
    }

    v21 = [v19 identity];

    sub_274637ECC();
    v22 = objc_allocWithZone(MEMORY[0x277D7C770]);
    v14 = v14;
    v1 = sub_27450A0B4(v1, v13, v12);
    v15 = v3;
    v12 = sub_2745420FC();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_15:
  sub_27453AD1C(v12);
  v12 = v28;
LABEL_7:
  if (*(v12 + 16) > v5)
  {
    sub_274506720(v1);
    sub_274542164(v12);

LABEL_12:
    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
LABEL_17:
  sub_27453AD1C(v15);
  v15 = v29;
LABEL_10:
  v23 = *(v15 + 16);
  if (v23 > v5)
  {
    v24 = v23 - 1;
    v25 = v23 - 1 - v5;
    v26 = v15 + 16 * v5;
    v27 = *(v26 + 32);
    sub_274451080((v26 + 48), v25, (v26 + 32));
    *(v15 + 16) = v24;

    sub_274542164(v15);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_274509C34()
{

  v1 = *(v0 + qword_280965EC8);
}

id sub_274509C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PropertyListOutlineContent(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274509CAC(uint64_t a1)
{

  v2 = *(a1 + qword_280965EC8);
}

uint64_t type metadata accessor for PropertyListOutlineContent(uint64_t a1)
{
  result = qword_28094F928;
  if (!qword_28094F928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PropertyListOutlineContent.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274509EA4()
{
  result = qword_28094F940;
  if (!qword_28094F940)
  {
    sub_274637EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F940);
  }

  return result;
}

unint64_t sub_274509F00()
{
  result = qword_28094F948;
  if (!qword_28094F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F948);
  }

  return result;
}

unint64_t sub_274509F54(uint64_t a1)
{
  *(a1 + 8) = sub_274509F84();
  result = sub_274509FD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_274509F84()
{
  result = qword_28094F950;
  if (!qword_28094F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F950);
  }

  return result;
}

unint64_t sub_274509FD8()
{
  result = qword_28094F958;
  if (!qword_28094F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F958);
  }

  return result;
}

unint64_t sub_27450A030()
{
  result = qword_28094F960;
  if (!qword_28094F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F960);
  }

  return result;
}

id sub_27450A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_274637EAC();
  v9 = [v4 initWithType:a1 state:a2 identity:v8];
  swift_unknownObjectRelease();

  v10 = sub_274637EEC();
  (*(*(v10 - 8) + 8))(a3, v10);
  return v9;
}

id sub_27450A160(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, SEL *a5)
{
  v7 = v5;
  sub_274412734(0, a3, a4);
  v9 = sub_27463B7FC();

  v10 = sub_274637EAC();
  v11 = [v7 *a5];

  sub_274637EEC();
  OUTLINED_FUNCTION_4_2();
  (*(v12 + 8))(a2);
  return v11;
}

uint64_t sub_27450A21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_27Tm_1()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_27450A494(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9D0, &unk_274655AD0);
  OUTLINED_FUNCTION_53_0(v2);

  return sub_274509410(a1);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_4_21(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;

  return sub_2746380BC();
}

uint64_t OUTLINED_FUNCTION_10_14(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_11@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = v5;
  a1[3] = a2;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
}

uint64_t WFArrayParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_27450A7C0();

  sub_27463950C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_27450AD00;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5F8, &unk_274655AF0));
  swift_retain_n();
  sub_27444A62C(v1);
  sub_27440CA78(&qword_28094FA50, &qword_28094B5F8, &unk_274655AF0, &unk_274648AD8);
  sub_27463950C();
  swift_getKeyPath();
  sub_27450AD08();
  return sub_27463AE9C();
}

unint64_t sub_27450A7C0()
{
  result = qword_28094B550;
  if (!qword_28094B550)
  {
    type metadata accessor for ParameterStateStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B550);
  }

  return result;
}

uint64_t sub_27450A81C@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x49uLL);
  v3 = memcpy(v13, v1, sizeof(v13));
  sub_27450A940(v3, v4);
  v6 = v5;
  v7 = sub_274506070(*(__dst[1] + qword_28094A100));
  if (v7)
  {
    sub_27450423C(v7);
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = swift_allocObject();
  memcpy((v10 + 16), __dst, 0x49uLL);
  *a1 = v6;
  *(a1 + 8) = sub_274446ACC;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = v9;
  *(a1 + 56) = sub_27450A604;
  *(a1 + 64) = 0;
  *(a1 + 72) = sub_27450AE2C;
  *(a1 + 80) = v10;
  return sub_27450AE38(__dst, v12);
}

void sub_27450A940(uint64_t a1, uint64_t a2)
{
  v3 = sub_2746380BC();
  MEMORY[0x28223BE20](v3 - 8);
  v20 = sub_274639ABC();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 8);
  v8 = *(v2 + 32);
  v25[0] = *(v2 + 16);
  v25[1] = v8;
  v25[2] = *(v2 + 48);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  sub_27450AE70(v25, v24);
  v11 = sub_2745054D0();
  v22 = v12;
  v23 = v11;
  v21 = v13;
  sub_27450AEE0(v25);
  v14 = qword_28094A100;
  [*(v7 + qword_28094A100) stateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &qword_28094FA70, 0x277D7C140);
  swift_dynamicCastMetatypeUnconditional();
  v15 = sub_274506070(*(v7 + v14));
  if (v15)
  {
    sub_27450423C(v15);
  }

  v16 = *(v7 + v14);
  if (v10)
  {
    sub_27450AF48(v9, 1);
  }

  else
  {
    sub_27450AF48(v9, 0);
    sub_27463BC0C();
    v17 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v9, 0);
    (*(v4 + 8))(v6, v20);
  }

  sub_2746380AC();
  v18 = objc_allocWithZone(type metadata accessor for PropertyListOutlineContent(0));
  sub_274506F78();
}

__n128 sub_27450ABEC@<Q0>(uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA60, &unk_27464B100);
  sub_27463AEEC();
  swift_getKeyPath();
  sub_27463AECC();

  v8 = sub_274505FCC(*(*(a5 + 8) + qword_28094A100));
  v9 = MEMORY[0x277D84FA0];
  *a6 = v11;
  if (v8)
  {
    v9 = v8;
  }

  result = v12;
  *(a6 + 8) = v12;
  *(a6 + 24) = v9;
  return result;
}

unint64_t sub_27450AD08()
{
  result = qword_28094FA58;
  if (!qword_28094FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FA58);
  }

  return result;
}

uint64_t sub_27450AD6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27450ADAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27450AE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8C8, &qword_274655720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27450AEE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8C8, &qword_274655720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_27450AF48(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  else
  {
  }
}

id sub_27450AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v35 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v17 = (v16 - v15);
  v18 = sub_274637EEC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  sub_27445EAD4(v12, v9, &unk_280953870, &qword_27464B0D0);
  sub_27463ACDC();
  v19 = v33;
  sub_27440CB1C(v12, &unk_280953870, &qword_27464B0D0);
  v20 = v13[10];
  *(v17 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8, &qword_2746502A0);
  swift_storeEnumTagMultiPayload();
  *v17 = a1;
  v17[1] = a2;
  v21 = v34;
  v17[2] = v19;
  v17[3] = v21;
  v36 = a1;
  v37 = a2;
  v38 = v19;
  v34 = v19;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90, &qword_274655D48);
  MEMORY[0x277C575F0](&v39, v22);
  v23 = v39;
  if (v39)
  {
    v24 = [v39 synonyms];

    sub_274412734(0, &qword_28094FA98, 0x277D7C1D8);
    v25 = sub_27463B81C();
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v17[4] = v25;
  v17[5] = 0;
  OUTLINED_FUNCTION_68_0();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v26[4] = v19;
  v27 = v17 + v13[8];
  *v27 = sub_274511A60;
  *(v27 + 1) = v26;
  v27[16] = 0;
  OUTLINED_FUNCTION_68_0();
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = v19;
  v29 = v17 + v13[9];
  *v29 = sub_2745103E8;
  *(v29 + 1) = v28;
  v29[16] = 0;
  sub_27451041C(v17, v35);

  v30 = v34;

  return v30;
}

void sub_27450B23C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a1;
  v37 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  OUTLINED_FUNCTION_53_0(v12);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_68_0();
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v43 = 0;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v24 = a6;
  v38 = a3;

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90, &qword_274655D48);
  MEMORY[0x277C575F0](&v42, v25);
  v26 = v42;
  if (v42)
  {
    sub_27463BEDC();

    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    (*(v18 + 32))(v22, v15, v16);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_27440CB1C(v15, &unk_2809530C0, &qword_274655D40);
    }
  }

  v27 = [objc_opt_self() preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  swift_allocObject();
  v28 = sub_2746388DC();
  v29 = [objc_opt_self() secondaryLabelColor];
  sub_2746389AC();
  LOBYTE(v42) = 0;
  v30 = v38;
  v39 = v38;
  v31 = *MEMORY[0x277D7D040];

  v32 = sub_2745FEC80(v31);

  v33 = v39;
  v34 = v43;
  v35 = v42;
  *a7 = v36;
  *(a7 + 8) = v37;
  *(a7 + 16) = v30;
  *(a7 + 24) = v33;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 56) = sub_27450F4D4;
  *(a7 + 64) = v23;
  *(a7 + 72) = v34;
  *(a7 + 80) = sub_27450F508;
  *(a7 + 88) = v28;
  *(a7 + 96) = v35;
}

uint64_t sub_27450B55C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_274638C1C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v38 = sub_274639C6C();
  v42 = 0;
  sub_27450B864(v2, v40);
  memcpy(v45, v40, sizeof(v45));
  memcpy(v46, v40, 0x140uLL);
  sub_27445EAD4(v45, v39, &qword_28094FAE0, &unk_274655F80);
  sub_27440CB1C(v46, &qword_28094FAE0, &unk_274655F80);
  memcpy(&v41[7], v45, 0x140uLL);
  v36 = v42;
  v37 = sub_27463A33C();
  v11 = *MEMORY[0x277D79BD8];
  v12 = *(v6 + 104);
  v12(v10, v11, v4);
  sub_274638C0C();
  v13 = *(v6 + 8);
  v13(v10, v4);
  sub_2746390AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v43 = 0;
  v22 = sub_27463A34C();
  v12(v10, v11, v4);
  sub_274638C0C();
  v13(v10, v4);
  sub_2746390AC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v44 = 0;
  v40[0] = *(v35 + 32);
  *&v40[1] = *(v35 + 48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90, &qword_274655D48);
  MEMORY[0x277C575F0](v39, v31);
  v32 = v39[0];
  v33 = swift_allocObject();
  memcpy((v33 + 16), v35, 0x61uLL);
  *a1 = v38;
  *(a1 + 8) = 0xC010000000000000;
  *(a1 + 16) = v36;
  memcpy((a1 + 17), v41, 0x147uLL);
  *(a1 + 344) = v37;
  *(a1 + 352) = v15;
  *(a1 + 360) = v17;
  *(a1 + 368) = v19;
  *(a1 + 376) = v21;
  *(a1 + 384) = 0;
  *(a1 + 392) = v22;
  *(a1 + 400) = v24;
  *(a1 + 408) = v26;
  *(a1 + 416) = v28;
  *(a1 + 424) = v30;
  *(a1 + 432) = 0;
  *(a1 + 440) = v32;
  *(a1 + 448) = sub_2745108E0;
  *(a1 + 456) = v33;
  return sub_2745108E8(v35, v40);
}

uint64_t sub_27450B864@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  *&v36 = sub_274638C1C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v34[1] = v6;
  v43 = sub_27463920C();
  v54 = *a1;
  v53 = *(a1 + 2);
  v41 = swift_allocObject();
  memcpy((v41 + 16), a1, 0x61uLL);
  v7 = *MEMORY[0x277D7A628];
  v8 = *MEMORY[0x277D7A5C0];

  sub_27445EAD4(&v53, v55, &unk_280953A00, &qword_27464F8C0);
  sub_27448E448(&v54, v55);
  sub_2745108E8(a1, v55);
  v9 = type metadata accessor for WorkflowEditorOptions(0);
  sub_274510758(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v10 = v7;
  *&v40 = v8;
  v34[2] = v9;
  v11 = sub_27463979C();
  v38 = v12;
  v39 = v11;
  v56 = v54;
  v37 = v53;
  v13 = v36;
  (*(v3 + 104))(v5, *MEMORY[0x277D79BD8], v36);
  LOBYTE(v8) = sub_274638C0C();
  (*(v3 + 8))(v5, v13);
  if (v8)
  {
    v14 = sub_27463920C();
    sub_27463B70C("Subtitle", 8);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v15 = qword_28094BB00;
    v16 = sub_27463B66C();
    v17 = sub_27463B66C();

    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    v19 = sub_27463B6AC();
    v21 = v20;

    v22 = swift_allocObject();
    memcpy((v22 + 16), a1, 0x61uLL);
    sub_2745108E8(a1, v55);
    v23 = v10;
    v24 = v40;
    v25 = v40;
    v26 = sub_27463979C();
    *&v48[0] = v14;
    BYTE8(v48[0]) = 2;
    v48[1] = 0uLL;
    *&v48[2] = v19;
    *(&v48[2] + 1) = v21;
    LOWORD(v48[3]) = 256;
    BYTE2(v48[3]) = 0;
    *(&v48[3] + 1) = 0;
    LOBYTE(v48[4]) = 0;
    *(&v48[4] + 1) = v53;
    v48[5] = xmmword_274653F30;
    *&v48[6] = sub_274510A50;
    *(&v48[6] + 1) = v22;
    *&v48[7] = v23;
    *(&v48[7] + 1) = v25;
    v48[8] = xmmword_27464F170;
    *&v48[9] = v26;
    *(&v48[9] + 1) = v27;
    CGSizeMake();
    memcpy(v55, v48, sizeof(v55));
  }

  else
  {
    sub_27440CB1C(&v53, &unk_280953A00, &qword_27464F8C0);
    sub_274510920(v55);
    v24 = v40;
  }

  v35 = v10;
  memcpy(v47, v55, sizeof(v47));
  *&v45[0] = v43;
  BYTE8(v45[0]) = 2;
  *(v45 + 9) = *v52;
  HIDWORD(v45[0]) = *&v52[3];
  v45[1] = 0uLL;
  v45[2] = v56;
  LOWORD(v45[3]) = 256;
  BYTE2(v45[3]) = 0;
  *(&v45[3] + 3) = v50;
  BYTE7(v45[3]) = v51;
  *(&v45[3] + 1) = 0;
  LOBYTE(v45[4]) = 0;
  DWORD1(v45[4]) = *(v49 + 3);
  *(&v45[4] + 1) = v49[0];
  *(&v45[4] + 1) = v37;
  v40 = xmmword_274653F30;
  v45[5] = xmmword_274653F30;
  *&v45[6] = sub_274511A58;
  v28 = v41;
  *(&v45[6] + 1) = v41;
  *&v45[7] = v10;
  v29 = v24;
  *(&v45[7] + 1) = v24;
  v36 = xmmword_27464F170;
  v45[8] = xmmword_27464F170;
  v30 = v38;
  v31 = v39;
  *&v45[9] = v39;
  v32 = v37;
  *(&v45[9] + 1) = v38;
  memcpy(v44, v45, 0xA0uLL);
  memcpy(v46, v55, sizeof(v46));
  memcpy(&v44[160], v55, 0xA0uLL);
  memcpy(v42, v44, 0x140uLL);
  sub_274510928(v45, v48);
  sub_27445EAD4(v46, v48, &qword_28094FAE8, &qword_274655F90);
  sub_27440CB1C(v47, &qword_28094FAE8, &qword_274655F90);
  *&v48[0] = v43;
  BYTE8(v48[0]) = 2;
  *(v48 + 9) = *v52;
  HIDWORD(v48[0]) = *&v52[3];
  v48[1] = 0uLL;
  v48[2] = v56;
  LOWORD(v48[3]) = 256;
  BYTE2(v48[3]) = 0;
  *(&v48[3] + 3) = v50;
  BYTE7(v48[3]) = v51;
  *(&v48[3] + 1) = 0;
  LOBYTE(v48[4]) = 0;
  DWORD1(v48[4]) = *(v49 + 3);
  *(&v48[4] + 1) = v49[0];
  *(&v48[4] + 1) = v32;
  v48[5] = v40;
  *&v48[6] = sub_274511A58;
  *(&v48[6] + 1) = v28;
  *&v48[7] = v35;
  *(&v48[7] + 1) = v29;
  v48[8] = v36;
  *&v48[9] = v31;
  *(&v48[9] + 1) = v30;
  return sub_274510984(v48);
}

uint64_t sub_27450BED8(__n128 a1)
{
  v2 = sub_2746382DC();
  MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  sub_27463920C();
  sub_27463896C();

  v11 = *(v1 + 32);
  v12 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90, &qword_274655D48);
  MEMORY[0x277C575F0](&v8);
  v4 = v8;
  if (v8)
  {
    v5 = [v8 synonyms];

    sub_274412734(0, &qword_28094FA98, 0x277D7C1D8);
    sub_27463B81C();
  }

  sub_274412734(0, &qword_280953EA0, 0x277D7C1D0);
  sub_27463920C();
  sub_27463896C();

  v6 = sub_27463BECC();
  v9 = v11;
  v10 = v12;
  v8 = v6;
  return sub_27463AEBC();
}

uint64_t sub_27450C128(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v20 = &v20 - v6;
  v7 = sub_2746382DC();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v22 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v13 = v12;
  sub_27463920C();
  if (v12)
  {
    v14 = v20;
    sub_27463BE7C();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v7);
    v15 = v21;
    (*(v21 + 32))(v11, v14, v7);
  }

  else
  {
    v16 = v20;
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v7);
    sub_2746382CC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v7);
    v15 = v21;
    if (EnumTagSinglePayload != 1)
    {
      sub_27440CB1C(v16, &unk_2809530C0, &qword_274655D40);
    }
  }

  sub_27463897C();

  sub_27463920C();
  v18 = v23;
  if (v13)
  {
    sub_27463BEDC();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v7);
    (*(v15 + 32))(v22, v18, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v7);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v18, 1, v7) != 1)
    {
      sub_27440CB1C(v18, &unk_2809530C0, &qword_274655D40);
    }
  }

  sub_27463897C();
}

uint64_t sub_27450C4C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90, &qword_274655D48);
  v20 = MEMORY[0x277C575F0](&v24, v19);
  v21 = v24;
  if (v24)
  {
    a4(v20);

    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    (*(v14 + 32))(v18, v11, v12);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_27440CB1C(v11, &unk_2809530C0, &qword_274655D40);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_27450C6A8(__n128 a1)
{
  v1 = sub_2746382DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_274637EEC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_274412734(0, &qword_28094FA98, 0x277D7C1D8);
  sub_274637EDC();
  sub_27463828C();
  sub_27463BE6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28, &unk_274655FF8);
  v3 = sub_27463ACEC();
  MEMORY[0x277C57F30](v3);
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_27463B85C();
  }

  sub_27463B8AC();
  sub_27463ACFC();
}

void WFChooseFromMenuItemSynonym.id.getter()
{
  v1 = [v0 identity];
  sub_274637ECC();
}

uint64_t sub_27450C900@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v3 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  v46 = *(v3 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27463B06C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAF0, &qword_274655F98) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAF8, &qword_274655FA0) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v17);
  v41 = &v40 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB00, &qword_274655FA8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  v42 = &v40 - v20;
  v49 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB08, &qword_274655FB0);
  sub_27440CA78(&qword_28094FB10, &qword_28094FB08, &qword_274655FB0, MEMORY[0x277CE14C0]);
  sub_27463A48C();
  KeyPath = swift_getKeyPath();
  v22 = &v15[*(v12 + 44)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB18, &qword_274655FE8) + 28);
  (*(v7 + 104))(v11, *MEMORY[0x277CDF0D0], v5);
  sub_27463AF1C();
  (*(v7 + 8))(v11, v5);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB20, &qword_274655FF0);
  __swift_storeEnumTagSinglePayload(v22 + v23, 0, 1, v24);
  *v22 = KeyPath;
  sub_27463B0CC();
  sub_27463973C();
  v25 = v41;
  sub_27445EA84(v15, v41, &qword_28094FAF0, &qword_274655F98);
  memcpy((v25 + *(v16 + 44)), __src, 0x70uLL);
  v26 = v40;
  v27 = *(v40 + 40);
  v51 = *(v40 + 32);
  v52 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28, &unk_274655FF8);
  sub_27463ACEC();
  v28 = v50;
  v29 = v44;
  sub_274449120(v26, v44, v30);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_27451041C(v29, v32 + v31);
  v33 = v42;
  sub_27445EA84(v25, v42, &qword_28094FAF8, &qword_274655FA0);
  v34 = (v33 + *(v43 + 36));
  *v34 = v28;
  v34[1] = sub_274510A7C;
  v34[2] = v32;
  v48 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A6F0, &unk_27464FCC0);
  sub_274510AEC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  OUTLINED_FUNCTION_44_0();
  v38 = sub_27440CA78(v36, &unk_28094D100, &qword_274649520, v37);
  v51 = v35;
  v52 = v38;
  OUTLINED_FUNCTION_43_0();
  swift_getOpaqueTypeConformance2();
  sub_27463AA0C();
  return sub_27440CB1C(v33, &qword_28094FB00, &qword_274655FA8);
}

uint64_t sub_27450CE78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a1;
  v70 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB78, &qword_274656020);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v79 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v69 - v5;
  v6 = sub_274638C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB80, &qword_274656028);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v15);
  v76 = &v69 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB88, &qword_274656030);
  v69 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v69 - v20;
  sub_27463B70C("Name", 4, v19);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v22 = qword_28094BB00;
  v23 = sub_27463B66C();
  v24 = sub_27463B66C();

  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  v26 = sub_27463B6AC();
  v28 = v27;

  v81 = v26;
  v82 = v28;
  v83 = 0;
  v84 = 0;
  MEMORY[0x28223BE20](v29);
  *(&v69 - 2) = v73;
  sub_274510D7C();
  sub_274506594();
  v74 = v21;
  sub_27463AFAC();
  (*(v7 + 104))(v9, *MEMORY[0x277D79BD8], v6);
  LOBYTE(v28) = sub_274638C0C();
  (*(v7 + 8))(v9, v6);
  if (v28)
  {
    sub_27463B70C("Subtitle", 8);
    v30 = sub_27463B66C();
    v31 = sub_27463B66C();

    v32 = [v22 localizedStringForKey:v30 value:v31 table:0];

    v33 = sub_27463B6AC();
    v35 = v34;

    v81 = v33;
    v82 = v35;
    v83 = 0;
    v84 = 0;
    MEMORY[0x28223BE20](v36);
    v37 = v73;
    *(&v69 - 2) = v73;
    sub_27463AFAC();
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v37 = v73;
  }

  __swift_storeEnumTagSinglePayload(v14, v38, 1, v80);
  v39 = v76;
  sub_27445EA84(v14, v76, &qword_28094FB80, &qword_274656028);
  sub_27463B70C("Synonyms", 8);
  v40 = sub_27463B66C();
  v41 = sub_27463B66C();

  v42 = [v22 localizedStringForKey:v40 value:v41 table:0];

  v43 = sub_27463B6AC();
  v45 = v44;

  sub_27463B70C("When using Siri, you can choose this option by saying the name or any synonym. Synonyms are not shown in menus.", 111);
  v46 = sub_27463B66C();
  v47 = sub_27463B66C();

  v48 = [v22 localizedStringForKey:v46 value:v47 table:0];

  v49 = sub_27463B6AC();
  v51 = v50;

  v81 = v43;
  v82 = v45;
  v83 = v49;
  v84 = v51;
  MEMORY[0x28223BE20](v52);
  *(&v69 - 2) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB98, &qword_274656038);
  sub_274510DD8();
  v53 = v78;
  sub_27463AFAC();
  v54 = v69;
  v55 = *(v69 + 16);
  v56 = v75;
  v57 = v80;
  v55(v75, v74, v80);
  sub_27445EAD4(v39, v77, &qword_28094FB80, &qword_274656028);
  v59 = v71;
  v58 = v72;
  v60 = *(v71 + 16);
  v60(v79, v53, v72);
  v61 = v70;
  v55(v70, v56, v57);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBC8, &qword_274656050);
  v63 = v77;
  sub_27445EAD4(v77, &v61[*(v62 + 48)], &qword_28094FB80, &qword_274656028);
  v64 = v79;
  v60(&v61[*(v62 + 64)], v79, v58);
  v65 = *(v59 + 8);
  v65(v78, v58);
  sub_27440CB1C(v76, &qword_28094FB80, &qword_274656028);
  v66 = *(v54 + 8);
  v67 = v80;
  v66(v74, v80);
  v65(v64, v58);
  sub_27440CB1C(v63, &qword_28094FB80, &qword_274656028);
  return (v66)(v75, v67);
}

uint64_t sub_27450D6D4(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = sub_2746382DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v24[0] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  v24[1] = *a1;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v26 = *a2;
  v27 = v17;
  v28 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90, &qword_274655D48);
  MEMORY[0x277C575F0](&v25);
  v20 = v25;
  if (v25)
  {
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    (*(v11 + 32))(v15, v9, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_27440CB1C(v9, &unk_2809530C0, &qword_274655D40);
    }
  }

  v26 = v16;
  v27 = v17;
  v28 = v18;

  MEMORY[0x277C575F0](&v25, v19);
  v21 = v25;
  if (v25)
  {
    sub_27463BEDC();

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    (*(v11 + 32))(v24[0], v6, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
    {
      sub_27440CB1C(v6, &unk_2809530C0, &qword_274655D40);
    }
  }

  sub_274412734(0, &qword_280953EA0, 0x277D7C1D0);
  v22 = sub_27463BECC();
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v25 = v22;
  return sub_27463AEBC();
}

uint64_t sub_27450DA04(uint64_t a1)
{
  v2 = sub_274639EBC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D100, &qword_274649520);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_274639EAC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0, &unk_274646750);
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
  sub_27463925C();
  v7 = sub_27440CA78(&qword_28094A700, &unk_28094D100, &qword_274649520, MEMORY[0x277CDD7A8]);
  MEMORY[0x277C56680](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_27450DBF0(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  sub_27463B70C("Done", 4, v6);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v7 = qword_28094BB00;
  v8 = sub_27463B66C();
  v9 = sub_27463B66C();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_27463B6AC();
  v13 = v12;

  v18[0] = v11;
  v18[1] = v13;
  sub_274449120(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_27451041C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_274412BBC();
  return sub_27463AD7C();
}

uint64_t sub_27450DDDC(uint64_t a1)
{
  v16 = sub_274639ABC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8, &qword_2746502A0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_27463936C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  sub_27445EAD4(a1 + *(v12 + 40), v7, &qword_28094BAE8, &qword_2746502A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_27463935C();
  return (*(v9 + 8))(v11, v8);
}

double sub_27450E064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v7 = sub_27463920C();
  sub_27463B70C("ChooseFromMenuTextPlaceholder", 29);
  sub_27463B70C("Text", 4);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v8 = qword_28094BB00;
  v9 = sub_27463B66C();

  v10 = sub_27463B66C();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = sub_27463B6AC();
  v14 = v13;

  v15 = *(a1 + 24);
  sub_274449120(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v17 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v18 = swift_allocObject();
  sub_27451041C(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = *MEMORY[0x277D7A628];
  v20 = *MEMORY[0x277D7A5C0];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274510758(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);

  v21 = v19;
  v22 = v20;
  v23 = sub_27463979C();
  *a2 = v7;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v15;
  *(a2 + 80) = xmmword_274653F30;
  *(a2 + 96) = sub_2745114EC;
  *(a2 + 104) = v18;
  *(a2 + 112) = v21;
  *(a2 + 120) = v22;
  result = 40.0;
  *(a2 + 128) = xmmword_27464F170;
  *(a2 + 144) = v23;
  *(a2 + 152) = v25;
  return result;
}

uint64_t sub_27450E390(__n128 a1)
{
  v2 = sub_2746382DC();
  MEMORY[0x28223BE20](v2 - 8);
  v13[3] = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v13[2] = type metadata accessor for ChooseFromMenuItemDetailView(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v13[1] = v5;
  sub_27463920C();
  sub_27463896C();

  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v15 = *v1;
  v16 = v7;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FA90, &qword_274655D48);
  MEMORY[0x277C575F0](&v14);
  v9 = v14;
  if (v14)
  {
    v10 = [v14 synonyms];

    sub_274412734(0, &qword_28094FA98, 0x277D7C1D8);
    sub_27463B81C();
  }

  sub_274412734(0, &qword_280953EA0, 0x277D7C1D0);
  sub_27463920C();
  sub_27463896C();

  v11 = sub_27463BECC();
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v14 = v11;
  return sub_27463AEBC();
}

double sub_27450E5EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v7 = sub_27463920C();
  sub_27463B70C("ChooseFromMenuTextPlaceholder", 29);
  sub_27463B70C("Text", 4);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v8 = qword_28094BB00;
  v9 = sub_27463B66C();

  v10 = sub_27463B66C();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = sub_27463B6AC();
  v14 = v13;

  v15 = *(a1 + 24);
  sub_274449120(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v17 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v18 = swift_allocObject();
  sub_27451041C(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = *MEMORY[0x277D7A628];
  v20 = *MEMORY[0x277D7A5C0];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274510758(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);

  v21 = v19;
  v22 = v20;
  v23 = sub_27463979C();
  *a2 = v7;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v15;
  *(a2 + 80) = xmmword_274653F30;
  *(a2 + 96) = sub_274511A5C;
  *(a2 + 104) = v18;
  *(a2 + 112) = v21;
  *(a2 + 120) = v22;
  result = 40.0;
  *(a2 + 128) = xmmword_27464F170;
  *(a2 + 144) = v23;
  *(a2 + 152) = v25;
  return result;
}

uint64_t sub_27450E918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0, &unk_274646750);
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBD0, &qword_274656058);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  sub_27450EC74(&v28 - v17);
  sub_274449120(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_27451041C(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_27463AD5C();
  v29 = v15;
  sub_27445EAD4(v18, v15, &qword_28094FBD0, &qword_274656058);
  v22 = *(v7 + 16);
  v23 = v30;
  v22(v9, v12, v30);
  v24 = v31;
  sub_27445EAD4(v15, v31, &qword_28094FBD0, &qword_274656058);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBD8, &qword_274656060);
  v22((v24 + *(v25 + 48)), v9, v23);
  v26 = *(v7 + 8);
  v26(v12, v23);
  sub_27440CB1C(v18, &qword_28094FBD0, &qword_274656058);
  v26(v9, v23);
  return sub_27440CB1C(v29, &qword_28094FBD0, &qword_274656058);
}

uint64_t sub_27450EC74@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v3 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBE0, &qword_274656068) - 8;
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - v6;
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v23 = v2;
  v27 = v8;
  v28 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28, &unk_274655FF8);
  sub_27463AD0C();
  sub_274449120(v2, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_27451041C(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBE8, &qword_274656070);
  sub_274637EEC();
  sub_274510FA4();
  sub_274511090();
  sub_2745110E4();
  sub_27463AF8C();
  v12 = v23;
  sub_274449120(v23, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v14 = swift_allocObject();
  sub_27451041C(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2745111D0;
  *(v15 + 24) = v14;
  v16 = &v7[*(v24 + 44)];
  *v16 = sub_274511248;
  *(v16 + 1) = v15;
  sub_274449120(v12, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v18 = swift_allocObject();
  sub_27451041C(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v10);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_274511274;
  *(v19 + 24) = v18;
  v20 = v25;
  sub_27445EAD4(v7, v25, &qword_28094FBE0, &qword_274656068);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FBD0, &qword_274656058) + 36));
  *v21 = sub_2745112DC;
  v21[1] = v19;
  return sub_27440CB1C(v7, &qword_28094FBE0, &qword_274656068);
}

uint64_t sub_27450EFB8@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C("Add New Synonym…", 18);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

double sub_27450F0D8@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC18, &qword_274656078);
  sub_27463AEEC();
  v5 = *(a2 + 24);
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 24) = v5;
  *(a3 + 32) = sub_27450F510;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;

  return result;
}

uint64_t sub_27450F170(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28, &unk_274655FF8);
  sub_27463ACEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAD0, &qword_274655ED8);
  sub_27440CA78(&qword_28094FBF8, &qword_28094FAD0, &qword_274655ED8, MEMORY[0x277D83960]);
  sub_27463B5AC();
  sub_27463ACFC();
}

uint64_t sub_27450F27C(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v10 = *(a2 + 40);
  v14 = *(a2 + 32);
  v9 = v14;
  v15 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FB28, &unk_274655FF8);
  sub_27463ACEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAD0, &qword_274655ED8);
  sub_27440CA78(&qword_28094FBF8, &qword_28094FAD0, &qword_274655ED8, MEMORY[0x277D83960]);
  sub_27440CA78(&qword_28094FC28, &qword_28094FAD0, &qword_274655ED8, MEMORY[0x277D83990]);
  sub_27463BB4C();
  v13[3] = v9;
  v13[4] = v10;
  v13[2] = v16;
  sub_27463ACFC();

  v11 = sub_274637EEC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  type metadata accessor for ChooseFromMenuItemDetailView(0);
  sub_27445EAD4(v8, v5, &unk_280953870, &qword_27464B0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAA0, &unk_274655EA0);
  sub_27463ACFC();
  return sub_27440CB1C(v8, &unk_280953870, &qword_27464B0D0);
}

uint64_t sub_27450F510(__n128 a1)
{
  v1 = sub_2746382DC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2746382CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_27450F5AC@<X0>(uint64_t a2@<X8>)
{
  v34 = sub_274639B2C();
  v38 = 1;
  v33 = sub_274639C6C();
  v37 = 1;
  v5 = v2[4];
  v4 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v35 = v4;
  v32 = sub_27463920C();
  sub_27463B70C("Synonym", 7);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v6 = qword_28094BB00;
  v7 = sub_27463B66C();
  v8 = sub_27463B66C();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = sub_27463B6AC();
  v30 = v11;
  v31 = v10;

  v12 = v2[2];
  v13 = v2[3];
  v39 = *v2;
  v40 = v13;
  v14 = swift_allocObject();
  v15 = *(v2 + 1);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v2 + 2);
  *(v14 + 64) = *(v2 + 48);
  v16 = *MEMORY[0x277D7A628];
  v17 = *MEMORY[0x277D7A5C0];

  sub_27445EAD4(&v40, v36, &unk_280953A00, &qword_27464F8C0);
  sub_27445E9E4(&v39, v36);

  v29 = v12;
  sub_274506470(v5, v35);
  type metadata accessor for WorkflowEditorOptions(0);
  v28 = v5;
  sub_274510758(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v18 = v16;
  v19 = v17;
  v20 = sub_27463979C();
  v22 = v21;
  v23 = v40;
  LOBYTE(v6) = v37;
  LOBYTE(v7) = v38;
  v24 = swift_allocObject();
  v25 = *(v2 + 1);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v2 + 2);
  *(v24 + 64) = *(v2 + 48);
  *a2 = v34;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 24) = v33;
  *(a2 + 32) = 0;
  *(a2 + 40) = v6;
  *(a2 + 48) = v32;
  *(a2 + 56) = 2;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v31;
  *(a2 + 88) = v30;
  *(a2 + 96) = 256;
  *(a2 + 98) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = v23;
  *(a2 + 128) = xmmword_274653F30;
  *(a2 + 144) = sub_2745117F8;
  *(a2 + 152) = v14;
  *(a2 + 160) = v18;
  *(a2 + 168) = v19;
  *(a2 + 176) = xmmword_27464F170;
  *(a2 + 192) = v20;
  *(a2 + 200) = v22;
  *(a2 + 208) = sub_274511800;
  *(a2 + 216) = v24;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  sub_27445EAD4(&v40, v36, &unk_280953A00, &qword_27464F8C0);
  sub_27445E9E4(&v39, v36);

  v26 = v29;
  return sub_274506470(v28, v35);
}

uint64_t sub_27450F964(__int128 *a1, __n128 a2)
{
  v3 = sub_2746382DC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_274637EEC();
  MEMORY[0x28223BE20](v4 - 8);
  sub_274412734(0, &qword_28094FA98, 0x277D7C1D8);
  v12 = *a1;
  v13 = *(a1 + 2);
  v10 = *a1;
  v11 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC18, &qword_274656078);
  MEMORY[0x277C575F0](&v9);
  v5 = v9;
  v6 = [v9 identity];

  sub_274637ECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  sub_27463920C();
  sub_27463896C();

  v7 = sub_27463BE6C();
  v10 = v12;
  v11 = v13;
  v9 = v7;
  return sub_27463AEBC();
}

uint64_t sub_27450FB78(__int128 *a1, __n128 a2)
{
  v3 = sub_2746382DC();
  MEMORY[0x28223BE20](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  sub_27463920C();
  v8 = *a1;
  v9 = *(a1 + 2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC18, &qword_274656078);
  MEMORY[0x277C575F0](&v7, v4);
  v5 = v7;
  sub_27463BE5C();

  sub_27463897C();
}

uint64_t sub_27450FD00@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC80, &qword_274656220);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC88, &qword_274656228);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = sub_274639C6C();
  v44 = 0;
  sub_27451001C(a4, v42);
  memcpy(v45, v42, 0x51uLL);
  memcpy(__dst, v42, 0x51uLL);
  sub_27445EAD4(v45, &v41, &qword_28094FC90, &qword_274656230);
  sub_27440CB1C(__dst, &qword_28094FC90, &qword_274656230);
  memcpy(&v43[7], v45, 0x51uLL);
  v15 = v44;
  v16 = &v9[*(v7 + 44)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FC98, &qword_274656238) + 28);
  v18 = sub_27463A4EC();
  __swift_storeEnumTagSinglePayload(v16 + v17, 1, 1, v18);
  *v16 = swift_getKeyPath();
  *v9 = v14;
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = v15;
  memcpy(v9 + 17, v43, 0x58uLL);
  LOBYTE(v16) = sub_27463A31C();
  v19 = [objc_opt_self() mainScreen];
  [v19 bounds];

  sub_2746390AC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_27445EA84(v9, v13, &qword_28094FC80, &qword_274656220);
  v28 = &v13[*(v11 + 44)];
  *v28 = v16;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v19) = sub_27463A34C();
  sub_2746390AC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v40;
  sub_27445EA84(v13, v40, &qword_28094FC88, &qword_274656228);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FCA0, &qword_274656270);
  v39 = v37 + *(result + 36);
  *v39 = v19;
  *(v39 + 8) = v30;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_27451001C@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_274412BBC();

  v6 = sub_27463A53C();
  v8 = v7;
  v10 = v9;
  sub_27463A41C();
  sub_27463A3FC();
  sub_27463A42C();

  v11 = sub_27463A50C();
  v13 = v12;
  v15 = v14;

  sub_274412C10(v6, v8, v10 & 1);

  sub_27463ABBC();
  v16 = sub_27463A4DC();
  v45 = v17;
  v46 = v18;
  v20 = v19;

  sub_274412C10(v11, v13, v15 & 1);

  if (a4)
  {

    v21 = sub_27463A53C();
    v23 = v22;
    v25 = v24;
    sub_27463A39C();
    v26 = sub_27463A50C();
    v43 = v20;
    v28 = v27;
    v30 = v29;

    sub_274412C10(v21, v23, v25 & 1);

    sub_27463ABCC();
    v31 = sub_27463A4DC();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = v28;
    v20 = v43;
    sub_274412C10(v26, v38, v30 & 1);

    KeyPath = swift_getKeyPath();
    v40 = v35 & 1;
    a4 = v31;
    sub_27440B094(v31, v33, v40);

    v41 = 1;
  }

  else
  {
    v33 = 0;
    v40 = 0;
    v37 = 0;
    KeyPath = 0;
    v41 = 0;
  }

  *a5 = v16;
  *(a5 + 8) = v45;
  *(a5 + 16) = v20 & 1;
  *(a5 + 24) = v46;
  *(a5 + 32) = a4;
  *(a5 + 40) = v33;
  *(a5 + 48) = v40;
  *(a5 + 56) = v37;
  *(a5 + 64) = KeyPath;
  *(a5 + 72) = 0;
  *(a5 + 80) = v41;
  sub_27440B094(v16, v45, v20 & 1);

  sub_2744C8580(a4, v33, v40, v37, KeyPath);
  sub_2744A1F64(a4, v33, v40, v37);
  sub_2744A1F64(a4, v33, v40, v37);
  sub_274412C10(v16, v45, v20 & 1);
}

uint64_t type metadata accessor for ChooseFromMenuItemDetailView(uint64_t a1)
{
  result = qword_28094FAA8;
  if (!qword_28094FAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_27451041C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274510488(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2745104C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_27451055C(uint64_t a1)
{
  sub_2745107A0(319, &qword_28094FAB8, &qword_28094FAC0, &qword_274655ED0, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_2745106C4(319);
    if (v2 <= 0x3F)
    {
      sub_2745107A0(319, &qword_28094FAC8, &qword_28094FAD0, &qword_274655ED8, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2745107A0(319, &qword_28094FAD8, &unk_280953870, &qword_27464B0D0, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_274510804(319);
          if (v5 <= 0x3F)
          {
            sub_27449859C(319);
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

void sub_2745106C4(uint64_t a1)
{
  if (!qword_280953280)
  {
    type metadata accessor for WFVariableType(255);
    sub_274510758(&qword_28094BAE0, type metadata accessor for WFVariableType, &unk_274646ED4);
    v1 = sub_27463BA9C();
    if (!v2)
    {
      atomic_store(v1, &qword_280953280);
    }
  }
}

uint64_t sub_274510758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2745107A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_274510804(uint64_t a1)
{
  if (!qword_280953A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809532C0, &qword_27464F610);
    sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
    v1 = sub_27463922C();
    if (!v2)
    {
      atomic_store(v1, &qword_280953A30);
    }
  }
}

uint64_t objectdestroy_14Tm()
{

  sub_2743F459C(*(v0 + 72), *(v0 + 80));
  sub_2743F459C(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_274510A7C(uint64_t *a1)
{
  v3 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return sub_27450D6D4(a1, (v1 + v4));
}

unint64_t sub_274510AEC()
{
  result = qword_28094FB30;
  if (!qword_28094FB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FB00, &qword_274655FA8);
    sub_274510BA4();
    sub_27440CA78(&qword_28094FB60, &qword_28094FB68, &qword_274656010, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FB30);
  }

  return result;
}

unint64_t sub_274510BA4()
{
  result = qword_28094FB38;
  if (!qword_28094FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FAF8, &qword_274655FA0);
    sub_274510C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FB38);
  }

  return result;
}

unint64_t sub_274510C30()
{
  result = qword_28094FB40;
  if (!qword_28094FB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FAF0, &qword_274655F98);
    sub_27440CA78(&qword_28094FB48, &qword_28094FB50, &qword_274656008, MEMORY[0x277CDE580]);
    sub_27440CA78(&qword_28094FB58, &qword_28094FB18, &qword_274655FE8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FB40);
  }

  return result;
}

uint64_t sub_274510D1C()
{
  v1 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_30_2();

  return sub_27450DDDC(v0 + v2);
}

unint64_t sub_274510D7C()
{
  result = qword_28094FB90;
  if (!qword_28094FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FB90);
  }

  return result;
}

unint64_t sub_274510DD8()
{
  result = qword_28094FBA0;
  if (!qword_28094FBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FB98, &qword_274656038);
    sub_274510E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FBA0);
  }

  return result;
}

unint64_t sub_274510E5C()
{
  result = qword_28094FBA8;
  if (!qword_28094FBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FBB0, &qword_274656040);
    sub_27440CA78(&qword_28094FBB8, &qword_28094FBC0, &qword_274656048, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FBA8);
  }

  return result;
}

double sub_274510F2C@<D0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_30_2();

  return sub_27450F0D8(v2 + v5, a2);
}

unint64_t sub_274510FA4()
{
  result = qword_28094FBF0;
  if (!qword_28094FBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FBE8, &qword_274656070);
    sub_27440CA78(&qword_28094FBF8, &qword_28094FAD0, &qword_274655ED8, MEMORY[0x277D83960]);
    sub_27440CA78(&qword_28094FC00, &qword_28094FAD0, &qword_274655ED8, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FBF0);
  }

  return result;
}

unint64_t sub_274511090()
{
  result = qword_28094FC08;
  if (!qword_28094FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC08);
  }

  return result;
}

unint64_t sub_2745110E4()
{
  result = qword_28094FC10;
  if (!qword_28094FC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FC18, &qword_274656078);
    sub_274511168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC10);
  }

  return result;
}

unint64_t sub_274511168()
{
  result = qword_28094FC20;
  if (!qword_28094FC20)
  {
    sub_274412734(255, &qword_28094FA98, 0x277D7C1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC20);
  }

  return result;
}

uint64_t sub_2745111D0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_30_2();

  return sub_27450F170(a1, a2, v2 + v6);
}

uint64_t sub_274511274(uint64_t a1)
{
  v3 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return sub_27450F27C(a1, v1 + v4);
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[7];
  v4 = sub_274637EEC();
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAA0, &unk_274655EA0);

  sub_2743F459C(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  sub_2743F459C(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8, &qword_2746502A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463936C();
    OUTLINED_FUNCTION_7();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274511504(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_30_2();
  return a1();
}

unint64_t sub_274511580()
{
  result = qword_28094FC30;
  if (!qword_28094FC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FC38, &qword_274656158);
    sub_274511808(&qword_28094FC40, &qword_28094FC48, &qword_274656160, sub_274511664);
    sub_27440CA78(&qword_28094FC70, &qword_28094FC78, &qword_274656178, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC30);
  }

  return result;
}

unint64_t sub_274511664()
{
  result = qword_28094FC50;
  if (!qword_28094FC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FC58, &qword_274656168);
    sub_27440CA78(&qword_28094FC60, &qword_28094FC68, &qword_274656170, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FC50);
  }

  return result;
}

uint64_t sub_274511754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_53_0(v11);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_27445EAD4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_274511808(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2745118BC()
{
  result = qword_28094FCC0;
  if (!qword_28094FCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FC80, &qword_274656220);
    sub_27440CA78(&qword_28094FCC8, &qword_28094FCD0, &qword_2746562B0, MEMORY[0x277CE1198]);
    sub_27440CA78(&qword_28094FCD8, &qword_28094FC98, &qword_274656238, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FCC0);
  }

  return result;
}

unint64_t sub_2745119A0()
{
  result = qword_28094FCE0;
  if (!qword_28094FCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FCE8, &qword_2746562B8);
    sub_27440CA78(&qword_28094FCF0, &qword_28094FCF8, &unk_2746562C0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FCE0);
  }

  return result;
}

uint64_t WFMediaPickerParameter.view(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD00, &qword_2746562D0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v9 = *(v8 + 56);
  *(v4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v10 = v4 + v2[15];
  *v10 = swift_getKeyPath();
  *(v10 + 4) = 0;
  v11 = v4 + v2[16];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v4 + v2[17];
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v13 = v1;
  sub_27444A564(v13);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v4 = sub_27463950C();
  v4[1] = v14;
  v15 = [v13 localizedLabel];
  v16 = sub_27463B6AC();
  v18 = v17;

  v19 = [v13 localizedDescription];
  if (v19)
  {
    v20 = v19;
    v21 = sub_27463B6AC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v4[2] = v16;
  v4[3] = v18;
  v4[4] = v21;
  v4[5] = v23;
  v24 = v4 + v2[12];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = v2[11];
  v26 = v13;

  sub_27444ACC8(v26, 0, 4, 0, 0, v4 + v25);
  *(v4 + v2[13]) = 0;
  sub_274511F94(v4, v7);
  sub_27440CA78(&unk_28094FD10, &unk_28094FD00, &qword_2746562D0, &protocol conformance descriptor for ParameterLayoutView<A>);
  return sub_27463AE9C();
}

uint64_t WFMediaPickerParameter.moduleSummarySlots(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274466DA4();
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (a1 && (objc_opt_self(), (v13 = swift_dynamicCastObjCClass()) != 0))
  {
    v14 = v13;
    swift_unknownObjectRetain();
    v15 = [v14 variable];
    if (v15)
    {
      v16 = v15;
      [v12 populateWith_];
    }

    else
    {
      v18 = [v2 localizedLabelForState_];
      [v12 populateWithString_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_274648560;
    *(v17 + 32) = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_274648560;
    *(v17 + 32) = v12;
  }

  return v17;
}

id sub_274511F08(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = swift_unknownObjectRetain();
  v5 = WFMediaPickerParameter.moduleSummarySlots(for:)(v4);
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_274466DA4();
    v6 = sub_27463B7FC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_274511F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD00, &qword_2746562D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_274512004()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_43_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  OUTLINED_FUNCTION_53_0(v7);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_4(v9, v15);
  v10 = sub_27463B9FC();
  OUTLINED_FUNCTION_64_1(v10);
  if (v6 == 1)
  {
    sub_27451C79C(v1);
  }

  else
  {
    sub_27463B9EC();
    OUTLINED_FUNCTION_60_2();
    (*(v11 + 8))(v1, v5);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_27451C79C(v3);
    OUTLINED_FUNCTION_39();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_27463B96C();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_27463B6EC();
  OUTLINED_FUNCTION_39();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_71(v13);
  swift_task_create();

  sub_27451C79C(v3);

LABEL_9:
  OUTLINED_FUNCTION_23();
}

void sub_27451222C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_43_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  OUTLINED_FUNCTION_53_0(v7);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_4(v9, v15);
  v10 = sub_27463B9FC();
  OUTLINED_FUNCTION_64_1(v10);
  if (v6 == 1)
  {
    sub_27451C79C(v1);
  }

  else
  {
    sub_27463B9EC();
    OUTLINED_FUNCTION_60_2();
    (*(v11 + 8))(v1, v5);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_27451C79C(v3);
    OUTLINED_FUNCTION_39();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_27463B96C();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_27463B6EC();
  OUTLINED_FUNCTION_39();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_71(v13);
  swift_task_create();

  sub_27451C79C(v3);

LABEL_9:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_27451245C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList;
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
    type metadata accessor for ActionList(0);
    swift_allocObject();
    v5 = v4;
    ActionList.init(workflow:)();
    v2 = v6;
    *(v3 + v1) = v6;
  }

  return v2;
}

uint64_t sub_274512524()
{
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_274512570()
{
  OUTLINED_FUNCTION_32_5();
  v2 = v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate;
  OUTLINED_FUNCTION_72_1(v2, v4);
  *(v2 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2745125D0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_27451265C;
}

void sub_27451265C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_274512710()
{
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2745127A4()
{
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2745127E8(uint64_t a1)
{
  OUTLINED_FUNCTION_72_1(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_auxiliaryViewPresenter, v3);
  swift_unknownObjectWeakAssign();
  sub_274512710();
  return swift_unknownObjectRelease();
}

void (*sub_274512844(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_auxiliaryViewPresenter;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_2745128C8;
}

void sub_2745128C8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_274512710();
  }

  free(v3);
}

id EditorHostingViewController.__allocating_init(workflow:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_19_8();
  return EditorHostingViewController.init(workflow:)(v2);
}

id EditorHostingViewController.init(workflow:)(void *a1)
{
  sub_274637EEC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v4 = (v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0)) init];
  v6 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorResults;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for WorkflowEditorResults(0)) init];
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_observers) = MEMORY[0x277D84FA0];
  v7 = (v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_coordinateSpaceName);
  sub_274637EDC();
  v8 = sub_274637E9C();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_63_2();
  v12(v11);
  *v7 = v8;
  v7[1] = v10;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow) = a1;
  v13 = objc_allocWithZone(type metadata accessor for EditorShortcutRunner(0));
  v14 = a1;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_runner) = sub_27452FC3C(v14);
  v19 = type metadata accessor for EditorHostingViewController();
  OUTLINED_FUNCTION_16_12();
  v17 = objc_msgSendSuper2(v15, v16, v1, v19);
  sub_274512D50();

  return v17;
}

void sub_274512B70()
{
  v1 = v0;
  v2 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = (v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions;
  *(v1 + v10) = [objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0)) init];
  v11 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorResults;
  *(v1 + v11) = [objc_allocWithZone(type metadata accessor for WorkflowEditorResults(0)) init];
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController____lazy_storage___actionList) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_observers) = MEMORY[0x277D84FA0];
  v12 = (v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_coordinateSpaceName);
  sub_274637EDC();
  v13 = sub_274637E9C();
  v15 = v14;
  (*(v4 + 8))(v8, v2);
  *v12 = v13;
  v12[1] = v15;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_27463C56C();
  __break(1u);
}

void sub_274512D50()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FE90, &unk_274657610);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF40, &qword_27464A5E0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  sub_27443B240(0);
  v10 = v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
  OUTLINED_FUNCTION_72_1(v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate, &v18);
  *(v10 + 8) = &protocol witness table for EditorHostingViewController;
  swift_unknownObjectWeakAssign();
  v11 = v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate;
  OUTLINED_FUNCTION_72_1(v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate, &v17);
  *(v11 + 8) = &protocol witness table for EditorHostingViewController;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_24_7(v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__variablePickingState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEA0, &unk_27465C110);
  sub_274638F7C();
  swift_endAccess();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&qword_2809526E0, &qword_28094AF40, &qword_27464A5E0);
  sub_274638FFC();

  (*(v5 + 8))(v8, v3);
  v12 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_observers;
  OUTLINED_FUNCTION_24_7(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_observers);
  sub_274638EAC();
  swift_endAccess();

  v13 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_runner);
  OUTLINED_FUNCTION_24_7(v13 + OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner__runningState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEB0, &qword_2746565C0);
  sub_274638F7C();
  swift_endAccess();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952590, &unk_28094FE90, &unk_274657610);
  sub_274638FFC();

  v14 = OUTLINED_FUNCTION_42_4();
  v15(v14);
  OUTLINED_FUNCTION_24_7(v1 + v12);
  sub_274638EAC();
  swift_endAccess();

  v16[1] = *(v13 + OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_onLifecycleEvent);
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEC0, &qword_2746565C8);
  sub_274458A14(&unk_280952580, &qword_28094FEC0, &qword_2746565C8);
  sub_274638FFC();

  OUTLINED_FUNCTION_24_7(v1 + v12);
  sub_274638EAC();
  swift_endAccess();

  [*(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow) setEditingDelegate_];
  OUTLINED_FUNCTION_23();
}

void sub_2745131CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate;
    if (v2)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v6 + 24))(v4, 0, ObjectType, v6);
LABEL_7:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v5 + 8);
        v9 = swift_getObjectType();
        (*(v8 + 24))(v4, 1, v9, v8);
        goto LABEL_7;
      }
    }
  }
}

void sub_2745132D0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v3 && (v7 = Strong + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v6, 1, (v4 >> 8) & 1, ObjectType, v8, v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2745133B8(void **a1, uint64_t a2)
{
  v3 = sub_274638DAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_274638C2C();
    sub_27451CF6C(v7, v8, v9);
    v12 = sub_274638D9C();
    v13 = sub_27463BC1C();
    sub_27451CFCC(v7, v8, v9);
    v14 = os_log_type_enabled(v12, v13);
    v28 = v7;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v27 = v4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v29[0] = v17;
      v29[1] = v7;
      *v16 = 136315138;
      v29[2] = v8;
      v30 = v9;
      sub_27451CF6C(v7, v8, v9);
      v18 = sub_27463B6BC();
      v26 = v3;
      v20 = sub_2745E7980(v18, v19, v29);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2743F0000, v12, v13, "Running lifecycle event: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x277C5A270](v17, -1, -1);
      MEMORY[0x277C5A270](v16, -1, -1);

      (*(v27 + 8))(v6, v26);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v21 = &v11[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = v9 == 2 && (v8 | v28) == 0;
      v24 = *(v21 + 1);
      ObjectType = swift_getObjectType();
      (*(v24 + 16))(v11, v23, ObjectType, v24);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_274513688()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setView_];

  v3 = [objc_opt_self() systemShortcutsUserDefaults];
  v4 = sub_27463B66C();
  v5 = [v3 BOOLForKey_];

  if (v5)
  {
    v6 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    v7 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions];
    v8 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorResults];
    v9 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_runner];
    v10 = objc_allocWithZone(type metadata accessor for UIKitEditorViewController());
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = OUTLINED_FUNCTION_24_5();
    sub_274589124(v15, v16, v13, v17);
    v19 = v18;
    *&v18[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorDelegate + 8] = &protocol witness table for EditorHostingViewController;
    swift_unknownObjectWeakAssign();
    v20 = sub_27451CC94(&unk_28094FD70, type metadata accessor for UIKitEditorViewController);
  }

  else
  {
    v19 = sub_274513AA0();
    v20 = v21;
  }

  v22 = v19;
  [v1 addChildViewController_];
  v23 = OUTLINED_FUNCTION_73_1();
  if (!v23)
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v1 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  [v25 bounds];
  OUTLINED_FUNCTION_6_6();

  v27 = OUTLINED_FUNCTION_7_16();
  [v28 v29];

  v30 = OUTLINED_FUNCTION_73_1();
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = v30;
  v32 = objc_allocWithZone(MEMORY[0x277D75348]);
  v33 = sub_27451A6B0(sub_2745139EC, 0);
  [v31 setBackgroundColor_];

  v34 = OUTLINED_FUNCTION_73_1();
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  [v34 setAutoresizingMask_];

  v36 = [v1 view];
  if (!v36)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37 = v36;
  v38 = OUTLINED_FUNCTION_73_1();
  if (!v38)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v39 = v38;
  [v37 addSubview_];

  [v22 didMoveToParentViewController_];
  v40 = &v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController];
  v41 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController];
  *v40 = v22;
  *(v40 + 1) = v20;
}

id sub_2745139EC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_blackColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray6Color;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_274513AA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
  v1;
  sub_27451245C();
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorResults);
  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_runner);
  v2;
  sub_27463902C();
  swift_getKeyPath();
  WFUserInterfaceFromViewController();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_24_5();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(v4, v5));
  OUTLINED_FUNCTION_19_8();

  sub_274639CDC();
  sub_274458A14(&qword_28094FE88, &qword_28094FE80, &unk_2746565B0);
  return OUTLINED_FUNCTION_0_10();
}

BOOL sub_274513C7C()
{
  sub_274530580();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t (*sub_274513D24(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *(a1 + 8) = (sub_27443B4C4() & 1) == 0;
  return sub_274513D80;
}

uint64_t (*sub_274513E0C(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *(a1 + 8) = sub_27443A95C() & 1;
  return sub_274513E64;
}

uint64_t (*sub_274513EE8(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *(a1 + 8) = sub_27443AC4C() & 1;
  return sub_274513F40;
}

uint64_t (*sub_274513FC0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *a1 = sub_27443AF38();
  return sub_274514014;
}

uint64_t sub_274514038(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_274514094(v1);
}

void (*sub_2745140C0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  *a1 = sub_27443B680();
  return sub_274514114;
}

void sub_274514114(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_27443B694(v2);
  }

  else
  {
    sub_27443B694(*a1);
  }
}

BOOL sub_27451417C()
{
  v0 = sub_27443B680();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

double sub_2745141BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions);
  v2 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_canvasWidth;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_27451420C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  sub_274514AFC();
  v7 = sub_27451417C();
  v8 = *MEMORY[0x277D7A840];
  if (!v7)
  {
    v8 = a1;
  }

  v9 = v8;
  v10 = sub_27463B9FC();
  OUTLINED_FUNCTION_49_2(v6, v11, v12, v10);
  v13 = v1;
  v14 = v9;
  v15 = sub_27463B9BC();
  OUTLINED_FUNCTION_2_6();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  OUTLINED_FUNCTION_36_3();
  sub_274512004();
}

uint64_t sub_274514324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_27463B9CC();
  v5[20] = sub_27463B9BC();
  v7 = sub_27463B96C();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2822009F8](sub_2745143BC, v7, v6);
}

uint64_t sub_2745143BC()
{
  v1 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80, &unk_27464A6E0);
  sub_274458A14(&qword_28094FE70, &unk_28094AF80, &unk_27464A6E0);
  sub_274638F5C();
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
  v0[2] = v0;
  v0[3] = sub_27451455C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE78, &unk_274656548);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2745EA490;
  v0[13] = &block_descriptor_103;
  v0[14] = v3;
  [v2 saveWithCompletionBlock_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27451455C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 184) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_2745146EC;
  }

  else
  {
    v7 = sub_274514680;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_274514680()
{
  OUTLINED_FUNCTION_79();

  sub_27452FDF0();
  OUTLINED_FUNCTION_92();

  return v0();
}

uint64_t sub_2745146EC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 184);

  swift_willThrow();

  sub_27452FDF0();
  OUTLINED_FUNCTION_92();

  return v2();
}

uint64_t sub_2745147A0()
{
  memset(v1, 0, sizeof(v1));
  v2 = 2;
  return sub_27443CA58(v1);
}

uint64_t sub_27451481C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27443AC60(0);
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v8 = a3;

  return sub_27443D214(&v7);
}

uint64_t sub_2745148D0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a3;
  *(&v6 + 1) = a1;
  v7 = a2;

  v4 = a3;
  return sub_274439E10(&v6);
}

void sub_274514920()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController);
  if (v1)
  {
    OUTLINED_FUNCTION_32_5();
    swift_getObjectType();
    v2 = v1;
    sub_27463B4DC();
    sub_2746391EC();
  }
}

id sub_2745149E4(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController);
  if (result)
  {
    return [result contentScrollViewForEdge_];
  }

  return result;
}

uint64_t sub_274514A6C(__n128 a1)
{
  sub_274514AFC();
  v2 = v1 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_delegate;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(v1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_274514AFC()
{
  sub_27443A580();
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow) actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_27463B81C();

  v3 = sub_274453594();
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C58B20](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v5 setOutput_];
  }
}

uint64_t sub_274514C24()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow) actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_0_10();
  sub_27463B81C();

  v2 = sub_274453594();

  return v2;
}

uint64_t sub_274514CA4()
{
  OUTLINED_FUNCTION_79();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_27463B9CC();
  v1[5] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v5 = sub_27463B96C();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_274514D38, v5, v4);
}

uint64_t sub_274514D38()
{
  OUTLINED_FUNCTION_42_1();
  v1 = [*(v0 + 16) actionsNestedInsideAction_];
  if (v1)
  {
    v2 = v1;
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    OUTLINED_FUNCTION_0_10();
    v3 = sub_27463B81C();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_274514E28;

  return sub_2745196F4();
}

uint64_t sub_274514E28()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_70();
  *v5 = v4;
  *(v7 + 80) = v6;

  v8 = *(v1 + 56);
  v9 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274514F68, v9, v8);
}

uint64_t sub_274514F68()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 80);

  if (v1)
  {
    if (sub_274453594())
    {
      sub_274518740();
    }
  }

  OUTLINED_FUNCTION_31_5();

  return v2();
}

uint64_t sub_274515094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_27463B9CC();
  v4[6] = sub_27463B9BC();
  v6 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274515130, v6, v5);
}

uint64_t sub_274515130()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_2745151F8;

  return sub_274514CA4();
}

uint64_t sub_2745151F8(char a1)
{
  OUTLINED_FUNCTION_28_2();
  v4 = v3;
  OUTLINED_FUNCTION_70();
  *v5 = v4;
  v7 = v6[7];
  v8 = v6[5];
  v9 = v6[3];
  v10 = v6[2];
  v11 = *v1;
  OUTLINED_FUNCTION_13_4();
  *v12 = v11;

  if (v7)
  {
    v13 = *(v4 + 56);
    v13[2](v13, a1 & 1);
    _Block_release(v13);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_27451537C()
{
  sub_274514C24();
  v0 = OUTLINED_FUNCTION_0_10();

  return sub_2745153B8(v0);
}

uint64_t sub_2745153B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_274648560;
  *(v2 + 32) = a1;
  v3 = sub_27451B594(a1);
  if (v3)
  {
    sub_27445BC10(v3);
  }

  OUTLINED_FUNCTION_42_4();
  sub_274515460();
}

uint64_t sub_274515460()
{
  OUTLINED_FUNCTION_32_5();
  type metadata accessor for EditorHostingViewController.InsertDestination(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  v4 = v3 - v2;
  *(v3 - v2) = v0;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24_5();
  sub_2745172F8();
  return sub_27451B6F4(v4);
}

uint64_t sub_274515500(uint64_t a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = *a2;
  v10 = sub_27463B9FC();
  OUTLINED_FUNCTION_49_2(v8, v11, v12, v10);
  v13 = v2;

  v14 = sub_27463B9BC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = a1;
  *(v15 + 48) = v9;
  OUTLINED_FUNCTION_36_3();
  sub_27451222C();
}

uint64_t sub_274515600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = sub_27463B9CC();
  *(v6 + 32) = sub_27463B9BC();
  *(v6 + 48) = a6;
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_2745156C8;

  return sub_27451585C();
}

uint64_t sub_2745156C8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v4 = v3;
  *(v6 + 49) = v5;

  v8 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745157F8, v8, v7);
}

uint64_t sub_2745157F8()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 49);
  v2 = *(v0 + 16);

  *v2 = v1;
  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t sub_27451585C()
{
  OUTLINED_FUNCTION_79();
  v1[3] = v2;
  v1[4] = v0;
  sub_27463B9CC();
  v1[5] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v4 = sub_27463B96C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_2745158EC, v4, v3);
}

void sub_2745158EC()
{
  if ((sub_27443B4C4() & 1) != 0 || sub_274513C7C())
  {

    goto LABEL_4;
  }

  sub_2745E1C9C(v4);
  v6 = v5;
  *(v1 + 16) = v5;
  v7 = sub_274453594();
  *(v1 + 64) = v7;
  if (!v7)
  {

LABEL_44:
    v43 = *(v1 + 32);
    v44 = OUTLINED_FUNCTION_19_8();
    v45 = sub_2745E012C(v44);
    OUTLINED_FUNCTION_69_1(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    if (v0)
    {

      OUTLINED_FUNCTION_23_7();

      return;
    }

    sub_274518740();

    sub_274516284(v6);

LABEL_4:
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_23_7();

    __asm { BRAA            X2, X16 }
  }

  v8 = 0;
  v9 = 0x277D7C000uLL;
  *(v1 + 72) = *(*(v1 + 32) + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
  v10 = &qword_28094E040;
  v11 = &selRef_editingContext;
  v12 = &unk_279EDC000;
  v13 = &unk_279EDC000;
  while (1)
  {
    if ((*(v1 + 24) & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x277C58B20](v8);
    }

    else
    {
      OUTLINED_FUNCTION_61_3();
      if (v16)
      {
        goto LABEL_53;
      }

      v14 = *(v15 + 8 * v8 + 32);
    }

    v0 = v14;
    *(v1 + 80) = v14;
    *(v1 + 88) = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_52;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v8 = v17;
      v18 = v0;
      if (![v8 *(v12 + 3984)] && objc_msgSend(*(v1 + 72), v13[497], v8))
      {
        v19 = OUTLINED_FUNCTION_21();
        sub_274412734(v19, &qword_28094E040, 0x277D7C098);
        OUTLINED_FUNCTION_21_2();
        v20 = v0;
        v21 = sub_27463B81C();

        v8 = v1 + 16;
        v22 = v21;
        v0 = v20;
        v13 = &unk_279EDC000;
        sub_274588310(v22);
      }
    }

    if ([*(v1 + 72) v11[258]])
    {
      break;
    }

LABEL_36:
    v32 = *(v1 + 88);
    v33 = *(v1 + 64);

    if (v32 == v33)
    {

      v6 = *(v1 + 16);
      goto LABEL_44;
    }

    v8 = *(v1 + 88);
  }

  v23 = OUTLINED_FUNCTION_59_3();
  sub_274412734(v23, v24, 0x277D7C098);
  v25 = sub_27463B81C();
  *(v1 + 96) = v25;

  sub_274453594();
  OUTLINED_FUNCTION_10_15();
  while (1)
  {
    if (v12 == v9)
    {

      v9 = 0x277D7C000;
      v10 = &qword_28094E040;
      v11 = &selRef_editingContext;
      v12 = 0x279EDC000;
      v13 = &unk_279EDC000;
      goto LABEL_36;
    }

    if (v10)
    {
      v26 = MEMORY[0x277C58B20](v12);
    }

    else
    {
      if (v12 >= *(v62 + 16))
      {
        goto LABEL_51;
      }

      v26 = *(v25 + 8 * v12);
    }

    v0 = v26;
    if (__OFADD__(v12++, 1))
    {
      break;
    }

    if (v61)
    {

      v28 = v0;
      v0 = sub_27463C2CC();

      if ((v0 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (!v13[2])
      {
        goto LABEL_39;
      }

      sub_27463BF6C();
      OUTLINED_FUNCTION_57_2();
      do
      {
        OUTLINED_FUNCTION_40_4();
        if ((v29 & 1) == 0)
        {

LABEL_39:

LABEL_40:
          v34 = swift_task_alloc();
          *(v1 + 112) = v34;
          *v34 = v1;
          OUTLINED_FUNCTION_12_11(v34, v35, v36, v37, v38, v39, v40, v41, v54, v55, v56, v57, v58);
          OUTLINED_FUNCTION_23_7();

          sub_2745196F4();
          return;
        }

        v30 = *&v13[6][8 * v10];
        v31 = sub_27463BF7C();
      }

      while ((v31 & 1) == 0);

      v10 = v56;
      v9 = v57;
      v25 = v55;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_274515D30()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_70();
  *v5 = v4;
  *(v7 + 120) = v6;

  v8 = *(v1 + 56);
  v9 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274515E70, v9, v8);
}

void sub_274515E70()
{
  v63 = v1;
  v2 = *(v1 + 120);
  if (!v2)
  {
    v38 = *(v1 + 80);

    goto LABEL_37;
  }

  sub_274522144(v62, *(v1 + 80));

  sub_274588310(v2);
  v3 = 0x277D7C000uLL;
  v4 = &qword_28094E040;
  v5 = &selRef_editingContext;
  v6 = &unk_279EDC000;
  for (i = &unk_279EDC000; ; i = 0x279EDC000)
  {
    do
    {
      v8 = *(v1 + 88);
      v9 = *(v1 + 64);

      if (v8 == v9)
      {

        v41 = *(v1 + 16);
        v42 = *(v1 + 32);
        v43 = OUTLINED_FUNCTION_19_8();
        v44 = sub_2745E012C(v43);
        OUTLINED_FUNCTION_69_1(v44, v45, v46, v47, v48, v49, v50, v51, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]);
        if (v0)
        {

          OUTLINED_FUNCTION_23_7();

          return;
        }

        sub_274518740();

        sub_274516284(v41);

LABEL_37:
        OUTLINED_FUNCTION_31_5();
        OUTLINED_FUNCTION_23_7();

        __asm { BRAA            X2, X16 }
      }

      v10 = *(v1 + 88);
      if ((*(v1 + 24) & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x277C58B20](*(v1 + 88));
      }

      else
      {
        OUTLINED_FUNCTION_61_3();
        if (v13)
        {
          goto LABEL_48;
        }

        v11 = *(v12 + 8 * v10 + 32);
      }

      v0 = v11;
      *(v1 + 80) = v11;
      *(v1 + 88) = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_47;
      }

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v10 = v14;
        v15 = v0;
        if (![v10 v6[498]] && objc_msgSend(*(v1 + 72), *(i + 3976), v10))
        {
          v16 = OUTLINED_FUNCTION_21();
          sub_274412734(v16, &qword_28094E040, 0x277D7C098);
          OUTLINED_FUNCTION_21_2();
          v17 = v0;
          v18 = sub_27463B81C();

          v10 = v1 + 16;
          v19 = v18;
          v0 = v17;
          i = 0x279EDC000;
          sub_274588310(v19);
        }
      }
    }

    while (![*(v1 + 72) v5[258]]);
    v20 = OUTLINED_FUNCTION_59_3();
    sub_274412734(v20, v21, 0x277D7C098);
    v22 = sub_27463B81C();
    *(v1 + 96) = v22;

    sub_274453594();
    OUTLINED_FUNCTION_10_15();
LABEL_16:
    if (i != v3)
    {
      break;
    }

    v3 = 0x277D7C000;
    v4 = &qword_28094E040;
    v5 = &selRef_editingContext;
    v6 = &unk_279EDC000;
  }

  if (v4)
  {
    v23 = MEMORY[0x277C58B20](i);
  }

  else
  {
    if (i >= *(v61 + 16))
    {
      goto LABEL_46;
    }

    v23 = *(v22 + 8 * i);
  }

  v0 = v23;
  if (!__OFADD__(i++, 1))
  {
    if (v60)
    {

      v25 = v0;
      v0 = sub_27463C2CC();

      if ((v0 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (!MEMORY[0x277D7C0A8])
      {
        goto LABEL_32;
      }

      sub_27463BF6C();
      OUTLINED_FUNCTION_57_2();
      do
      {
        OUTLINED_FUNCTION_40_4();
        if ((v26 & 1) == 0)
        {

LABEL_32:

LABEL_33:
          v29 = swift_task_alloc();
          *(v1 + 112) = v29;
          *v29 = v1;
          OUTLINED_FUNCTION_12_11(v29, v30, v31, v32, v33, v34, v35, v36, v53, v54, v55, v56, v57);
          OUTLINED_FUNCTION_23_7();

          sub_2745196F4();
          return;
        }

        v27 = *(MEMORY[0x277D7C0C8] + 8 * v4);
        v28 = sub_27463BF7C();
      }

      while ((v28 & 1) == 0);

      v4 = v55;
      v3 = v56;
      v22 = v54;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

BOOL sub_274516284(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_27463C27C();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_2745162C4()
{
  OUTLINED_FUNCTION_32_5();
  type metadata accessor for EditorHostingViewController.MoveActionMode(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FD80, &qword_2746563F0) + 48);
  sub_27463BDAC();
  OUTLINED_FUNCTION_7();
  (*(v7 + 16))(v5, v1);
  *(v5 + v6) = v0;
  swift_storeEnumTagMultiPayload();
  sub_2745164A4();
  OUTLINED_FUNCTION_5_24();
  return sub_27451B6F4(v5);
}

void sub_2745163A8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_32_5();
  type metadata accessor for EditorHostingViewController.MoveActionMode(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD88, &qword_2746563F8) + 48);
  v7 = sub_27463800C();
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 16);
  v9(v5, v1, v7);
  v9(v5 + v6, v0, v7);
  swift_storeEnumTagMultiPayload();
  sub_2745164A4();
  OUTLINED_FUNCTION_5_24();
  sub_27451B6F4(v5);
  OUTLINED_FUNCTION_23();
}

void sub_2745164A4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v4 = sub_274637F9C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v171 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v169 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v153 - v17;
  MEMORY[0x28223BE20](v19);
  v162 = &v153 - v20;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v21);
  v163 = &v153 - v22;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v23);
  v170 = (&v153 - v24);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  v164 = &v153 - v26;
  OUTLINED_FUNCTION_51_3();
  sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v165 = v28;
  v166 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  v167 = (v30 - v29);
  v31 = OUTLINED_FUNCTION_51_3();
  v168 = type metadata accessor for EditorHostingViewController.MoveActionMode(v31);
  OUTLINED_FUNCTION_1();
  v159 = v32;
  MEMORY[0x28223BE20](v33);
  v161 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v153 - v36;
  v160 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v153 - v40;
  if ((sub_27443B4C4() & 1) != 0 || sub_274513C7C())
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_15_10();
  sub_27451CB14(v3, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v158 = v41;
  if (EnumCaseMultiPayload != 1)
  {
    v48 = MEMORY[0x277D84F90];
    v49 = *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FD80, &qword_2746563F0) + 48)];
    v50 = OUTLINED_FUNCTION_63_2();
    v51(v50);
    v52 = sub_27463BD8C();
    v53 = sub_27463BD8C();
    v54 = sub_274453594();
    v157 = v0;
    v155 = v52;
    v156 = v49;
    if (v54)
    {
      v55 = v54;
      v173 = v48;
      OUTLINED_FUNCTION_68_2(v54);
      if (v55 < 0)
      {
        goto LABEL_64;
      }

      v56 = 0;
      v57 = v173;
      v58 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
      do
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v59 = OUTLINED_FUNCTION_42_4();
          v60 = MEMORY[0x277C58B20](v59);
        }

        else
        {
          v60 = *(v53 + 8 * v56 + 32);
        }

        v61 = v60;
        v62 = [v58 indexOfAction_];

        v173 = v57;
        v64 = v57[2];
        v63 = v57[3];
        if (v64 >= v63 >> 1)
        {
          v65 = OUTLINED_FUNCTION_0_8(v63);
          sub_27445126C(v65, v64 + 1, 1);
          v57 = v173;
        }

        ++v56;
        v57[2] = v64 + 1;
        v57[v64 + 4] = v62;
      }

      while (v55 != v56);

      v1 = v157;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_1_21();
    sub_27451CC94(v79, v80);
    v82 = v170;
    v81 = v171;
    sub_27463C1DC();
    v83 = v57[2];
    if (v83)
    {
      v84 = v57 + 4;
      do
      {
        v85 = *v84++;
        v172 = v85;
        sub_27463C1AC();
        --v83;
      }

      while (v83);
    }

    v86 = *(v169 + 32);
    v169 += 32;
    v154 = v86;
    v86(v164, v82, v81);
    v170 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    v87 = [v170 actionTree];
    v52 = v167;
    sub_27463BDBC();

    v88 = sub_27463BD8C();
    v89 = sub_274453594();
    if (v89)
    {
      v90 = v89;
      v173 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_68_2(v89);
      if (v90 < 0)
      {
        goto LABEL_65;
      }

      v91 = 0;
      v92 = v173;
      do
      {
        if ((v88 & 0xC000000000000001) != 0)
        {
          v93 = MEMORY[0x277C58B20](v91, v88);
        }

        else
        {
          v93 = *(v88 + 8 * v91 + 32);
        }

        v94 = v93;
        v95 = [v170 indexOfAction_];

        v173 = v92;
        v97 = v92[2];
        v96 = v92[3];
        if (v97 >= v96 >> 1)
        {
          v98 = OUTLINED_FUNCTION_0_8(v96);
          sub_27445126C(v98, v97 + 1, 1);
          v92 = v173;
        }

        ++v91;
        v92[2] = v97 + 1;
        v92[v97 + 4] = v95;
      }

      while (v90 != v91);

      v1 = v157;
    }

    else
    {

      v92 = MEMORY[0x277D84F90];
    }

    v99 = v162;
    v100 = v171;
    sub_27463C1DC();
    v101 = v92[2];
    v102 = v155;
    if (v101)
    {
      v103 = v92 + 4;
      do
      {
        v104 = *v103++;
        v172 = v104;
        sub_27463C1AC();
        --v101;
      }

      while (v101);
    }

    (*(v165 + 8))(v167, v166);

    v105 = v163;
    v106 = v154;
    v154(v163, v99, v100);
    v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD88, &qword_2746563F8) + 48);
    v108 = v158;
    v106(v158, v105, v100);
    v106((v108 + v107), v164, v100);
    swift_storeEnumTagMultiPayload();

LABEL_47:
    v119 = sub_274453594();
    if (v119)
    {
      v52 = v119;
      if (v119 < 1)
      {
        goto LABEL_63;
      }

      for (i = 0; i != v52; i = i + 1)
      {
        if ((v102 & 0xC000000000000001) != 0)
        {
          v121 = MEMORY[0x277C58B20](i, v102);
        }

        else
        {
          v121 = *(v102 + 8 * i + 32);
        }

        v122 = v121;
        [v121 snapInputParameterIfNecessary];
      }
    }

    sub_274514A6C(v123);
    v124 = [v1 undoManager];
    if (v124)
    {
      v52 = v124;
      v125 = sub_27463B70C("Move %d Actions", v153);
      v127 = v126;
      OUTLINED_FUNCTION_17_9();
      if (v128)
      {
        OUTLINED_FUNCTION_70_2();

        v173 = v125;
        v174 = v127;
        v152 = OUTLINED_FUNCTION_46_4();
        v151 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_16_12();
        v173 = OUTLINED_FUNCTION_45_4(v129, v130, v131, v132, v133, v134, v135, v136, v151, v152, v152, v152, v153, v154, v155, v156, v157, v158);
        v174 = v137;
        OUTLINED_FUNCTION_29_6();
        if (qword_2809492C0 != -1)
        {
          goto LABEL_66;
        }

        goto LABEL_57;
      }

LABEL_58:
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
      v143 = OUTLINED_FUNCTION_48_3(v142);
      *(v143 + 16) = xmmword_274648570;
      v144 = sub_274453594();

      v145 = MEMORY[0x277D83C10];
      *(v143 + 56) = MEMORY[0x277D83B88];
      *(v143 + 64) = v145;
      *(v143 + 32) = v144;
      OUTLINED_FUNCTION_42_4();
      sub_27463B67C();

      v146 = sub_27463B66C();

      [v52 setActionName_];

      OUTLINED_FUNCTION_15_10();
      v147 = v158;
      v148 = v161;
      sub_27451CB14(v158, v161);
      v149 = (*(v159 + 80) + 16) & ~*(v159 + 80);
      v150 = swift_allocObject();
      sub_27451C630(v148, v150 + v149);
      type metadata accessor for EditorHostingViewController();
      sub_27463BBDC();

      OUTLINED_FUNCTION_5_24();
      sub_27451B6F4(v147);
    }

    else
    {
      sub_27451B6F4(v158);
    }

    goto LABEL_60;
  }

  v166 = v6;
  v167 = v4;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD88, &qword_2746563F8);
  v43 = v170[12];
  v44 = v169;
  v45 = *(v169 + 32);
  v46 = v171;
  v45(v18, v37, v171);
  v45(v15, &v37[v43], v46);
  if (MEMORY[0x277C54700](v18, v15))
  {
    v47 = *(v44 + 8);
    v47(v15, v46);
    v47(v18, v46);
LABEL_60:
    OUTLINED_FUNCTION_23();
    return;
  }

  OUTLINED_FUNCTION_1_21();
  sub_27451CC94(v66, v67);
  v68 = sub_27463BADC();
  if (!v68)
  {
    v109 = MEMORY[0x277D84F90];
LABEL_46:
    v110 = v169;
    v111 = v170[12];
    v112 = *(v169 + 16);
    v113 = v158;
    v114 = v171;
    v112(v158, v15, v171);
    v112((v113 + v111), v18, v114);
    swift_storeEnumTagMultiPayload();
    v115 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);

    v116 = sub_274637FAC();
    v117 = sub_274637FAC();
    [v115 moveActionsAtIndexes:v116 toIndexes:v117];

    v118 = *(v110 + 8);
    v118(v15, v114);
    v118(v18, v114);
    v102 = v109;
    goto LABEL_47;
  }

  v69 = v68;
  v172 = MEMORY[0x277D84F90];
  sub_27463C44C();
  sub_27463BACC();
  if ((v69 & 0x8000000000000000) == 0)
  {
    v70 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
    v52 = v171;
    while (1)
    {
      sub_27463BB3C();
      v71 = OUTLINED_FUNCTION_53_3();
      v72(v71);
      v73 = [v70 actions];
      v74 = OUTLINED_FUNCTION_39_4();
      sub_274412734(v74, &qword_28094E040, 0x277D7C098);
      OUTLINED_FUNCTION_0_10();
      v75 = sub_27463B81C();

      if ((v75 & 0xC000000000000001) != 0)
      {
        v78 = OUTLINED_FUNCTION_63_2();
        MEMORY[0x277C58B20](v78);
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          OUTLINED_FUNCTION_2_22(&qword_2809492C0);
LABEL_57:
          v138 = qword_28094BB00;
          v139 = sub_27463B66C();

          OUTLINED_FUNCTION_42_4();
          v140 = sub_27463B66C();

          v141 = [v138 localizedStringForKey:v139 value:v140 table:0];

          sub_27463B6AC();
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_61_3();
        if (v76)
        {
          goto LABEL_62;
        }

        v77 = *(v75 + 8 * v18 + 32);
      }

      sub_27463C41C();
      sub_27463C46C();
      OUTLINED_FUNCTION_13_3();
      sub_27463C47C();
      sub_27463C42C();
      v52 = v171;
      sub_27463BB1C();
      if (!--v69)
      {
        (*(v166 + 8))(v10, v167);
        v109 = v172;
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2745171EC(uint64_t a1, uint64_t a2)
{
  sub_27463B9CC();
  v5[2] = a1;
  v5[3] = a2;
  return sub_274581604(sub_27451C6FC, v5, "WorkflowEditor/EditorHostingViewController.swift", 48, 2u, 637);
}

uint64_t sub_274517268()
{
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v1 = OUTLINED_FUNCTION_62_3();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2745172F8()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  LODWORD(v131) = v3;
  v5 = v4;
  OUTLINED_FUNCTION_39_4();
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v129 = v7;
  v130 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v127 = v9 - v8;
  OUTLINED_FUNCTION_51_3();
  v128 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v126 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v125 = v13 - v12;
  OUTLINED_FUNCTION_51_3();
  sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v133 = v14;
  v134 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v124 = v16 - v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  v132 = &v122 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  OUTLINED_FUNCTION_53_0(v20);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v122 - v22;
  v24 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  v30 = (v29 - v28);
  inserted = type metadata accessor for EditorHostingViewController.InsertDestination(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_0();
  v35 = (v34 - v33);
  if ((sub_27443B4C4() & 1) != 0 || sub_274513C7C())
  {
    goto LABEL_46;
  }

  sub_27451CB14(v5, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v26 + 32))(v30, v35, v24);
    v36 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    OUTLINED_FUNCTION_0_10();
    v37 = sub_27463B7FC();
    v38 = sub_274637FAC();
    [v36 insertActions:v37 atIndexes:v38];

    v39 = *(v26 + 8);
    v26 += 8;
    v39(v30, v24);
  }

  else
  {
    v40 = *v35;
    v36 = *&v2[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    OUTLINED_FUNCTION_0_10();
    v41 = sub_27463B7FC();
    [v36 insertActions:v41 atIndex:v40];
  }

  v42 = sub_27463B9FC();
  OUTLINED_FUNCTION_49_2(v23, v43, v44, v42);
  v45 = v2;
  OUTLINED_FUNCTION_28_1();

  v46 = sub_27463B9BC();
  OUTLINED_FUNCTION_2_6();
  v47 = swift_allocObject();
  v48 = MEMORY[0x277D85700];
  v47[2] = v46;
  v47[3] = v48;
  v123 = v26;
  v47[4] = v26;
  v47[5] = v0;
  OUTLINED_FUNCTION_36_3();
  sub_274512004();

  v49 = sub_274453594();
  v50 = v49;
  if (v49)
  {
    if (v49 < 1)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v51 = 0;
    v26 = v0 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v52 = OUTLINED_FUNCTION_62_3();
        v53 = MEMORY[0x277C58B20](v52);
      }

      else
      {
        v53 = *(v0 + 8 * v51 + 32);
      }

      v54 = v53;
      ++v51;
      [v53 wasAddedToWorkflowByUser_];
    }

    while (v50 != v51);
  }

  v55 = [v36 actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v56 = sub_27463B81C();

  v57 = sub_274453594();
  if (!v57)
  {
    goto LABEL_20;
  }

  v58 = v57;
  if (v57 < 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v59 = 0;
  v26 = v56 & 0xC000000000000001;
  do
  {
    if (v26)
    {
      v60 = MEMORY[0x277C58B20](v59, v56);
    }

    else
    {
      v60 = *(v56 + 8 * v59 + 32);
    }

    v30 = v60;
    ++v59;
    [v60 snapInputParameterIfNecessary];
  }

  while (v58 != v59);
LABEL_20:

  v61 = v123;
  sub_274514A6C(v62);
  inserted = MEMORY[0x277D84F90];
  if (v131)
  {
    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v122 = sub_27463BCEC();
    v63 = v124;
    sub_27463B22C();
    sub_27463B28C();
    v64 = *(v134 + 8);
    v134 += 8;
    v131 = v64;
    v64(v63, v133);
    OUTLINED_FUNCTION_39();
    v65 = swift_allocObject();
    *(v65 + 16) = v0;
    *(v65 + 24) = v61;
    v139 = sub_27451CC74;
    v140 = v65;
    v135 = MEMORY[0x277D85DD0];
    v136 = 1107296256;
    v137 = sub_27443E0E8;
    v138 = &block_descriptor_22;
    v26 = _Block_copy(&v135);
    v66 = v61;

    v67 = v125;
    sub_27463B20C();
    v143 = inserted;
    sub_27451CC94(&qword_28094E100, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    sub_274458A14(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0);
    v68 = v127;
    v30 = v130;
    v61 = v123;
    sub_27463C1EC();
    v69 = v132;
    v70 = v122;
    MEMORY[0x277C58400](v132, v67, v68, v26);
    _Block_release(v26);

    v71 = v68;
    inserted = MEMORY[0x277D84F90];
    (*(v129 + 8))(v71, v30);
    (*(v126 + 8))(v67, v128);
    v131(v69, v133);
  }

  if ([v61 undoManager])
  {
    OUTLINED_FUNCTION_28_1();
    v72 = sub_274453594();
    v73 = v72;
    v133 = v26;
    v134 = v72;
    if (v50 && v72 == 1)
    {
      sub_2744535A4();
      if ((v0 & 0xC000000000000001) != 0)
      {
        goto LABEL_52;
      }

      for (i = *(v0 + 32); ; i = MEMORY[0x277C58B20](0, v0))
      {
        v75 = i;
        v76 = inserted;
        sub_27463B70C("Add “%@”", 12);
        OUTLINED_FUNCTION_66_0();
        if (qword_2809492C0 != -1)
        {
          OUTLINED_FUNCTION_2_22(&qword_2809492C0);
        }

        v77 = qword_28094BB00;
        OUTLINED_FUNCTION_41_4();
        v78 = sub_27463B66C();
        OUTLINED_FUNCTION_41_4();
        v79 = sub_27463B66C();

        v80 = [v77 localizedStringForKey:v78 value:v79 table:0];

        sub_27463B6AC();
        OUTLINED_FUNCTION_66_0();

        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
        v82 = OUTLINED_FUNCTION_48_3(v81);
        *(v82 + 16) = xmmword_274648570;
        v83 = [v75 localizedName];
        v84 = sub_27463B6AC();
        v86 = v85;

        *(v82 + 56) = MEMORY[0x277D837D0];
        *(v82 + 64) = sub_27440F250();
        *(v82 + 32) = v84;
        *(v82 + 40) = v86;
        OUTLINED_FUNCTION_41_4();
        v132 = sub_27463B67C();
        v88 = v87;

        inserted = v76;
        v73 = v134;
LABEL_35:
        v131 = v88;
        v135 = inserted;
        sub_27445126C(0, v73 & ~(v73 >> 63), 0);
        if ((v73 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        ;
      }

      v108 = 0;
      v109 = v135;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v110 = OUTLINED_FUNCTION_13_3();
          v111 = MEMORY[0x277C58B20](v110);
        }

        else
        {
          v111 = *(v0 + 8 * v108 + 32);
        }

        v112 = v111;
        v113 = [v36 indexOfAction_];
        v114 = sub_274637CAC();

        if (v113 == v114)
        {
          __break(1u);
          goto LABEL_49;
        }

        v135 = v109;
        v116 = *(v109 + 16);
        v115 = *(v109 + 24);
        inserted = v116 + 1;
        if (v116 >= v115 >> 1)
        {
          v117 = OUTLINED_FUNCTION_0_8(v115);
          sub_27445126C(v117, v116 + 1, 1);
          v109 = v135;
        }

        ++v108;
        *(v109 + 16) = inserted;
        *(v109 + 8 * v116 + 32) = v113;
      }

      while (v134 != v108);
      v118 = v133;
    }

    else
    {
      sub_27463B70C("Add %d Actions", v122);
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_17_9();
      if (v89)
      {
        v135 = 0;
        v136 = 0xE000000000000000;
        sub_27463C38C();

        v135 = v30;
        v136 = v26;
        v143 = 10;
        v144 = 0xE100000000000000;
        v141 = 32;
        v142 = 0xE100000000000000;
        v121 = sub_274412BBC();
        v120 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_16_12();
        v135 = OUTLINED_FUNCTION_45_4(v90, v91, v92, v93, v94, v95, v96, v97, v120, v121, v121, v121, v122, v123, v124, v125, v126, v127);
        v136 = v98;
        OUTLINED_FUNCTION_29_6();
        if (qword_2809492C0 != -1)
        {
          OUTLINED_FUNCTION_2_22(&qword_2809492C0);
        }

        v99 = qword_28094BB00;
        v100 = sub_27463B66C();

        OUTLINED_FUNCTION_41_4();
        v101 = sub_27463B66C();

        v102 = [v99 localizedStringForKey:v100 value:v101 table:0];

        sub_27463B6AC();
        OUTLINED_FUNCTION_66_0();

        v73 = v134;
      }

      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
      v104 = OUTLINED_FUNCTION_48_3(v103);
      v105 = MEMORY[0x277D83B88];
      *(v104 + 16) = xmmword_274648570;
      v106 = MEMORY[0x277D83C10];
      *(v104 + 56) = v105;
      *(v104 + 64) = v106;
      *(v104 + 32) = v73;
      OUTLINED_FUNCTION_41_4();
      v132 = sub_27463B67C();
      v88 = v107;

      if (v73)
      {
        goto LABEL_35;
      }

      v109 = MEMORY[0x277D84F90];
      v118 = v133;
    }

    v119 = sub_27463B66C();

    [v118 setActionName_];

    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = v109;
    type metadata accessor for EditorHostingViewController();
    sub_27463BBDC();
  }

LABEL_46:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274517F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_274638DAC();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  sub_27463B9CC();
  v5[23] = sub_27463B9BC();
  v8 = sub_27463B96C();
  v5[24] = v8;
  v5[25] = v7;

  return MEMORY[0x2822009F8](sub_274518020, v8, v7);
}

uint64_t sub_274518020()
{
  OUTLINED_FUNCTION_27_5();
  v1 = *(v0[18] + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow);
  v2 = [v1 database];
  v0[26] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [v1 reference];
    v0[27] = v4;
    if (v4)
    {
      v5 = v4;
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      v6 = sub_27463B7FC();
      v0[28] = v6;
      v0[2] = v0;
      v0[3] = sub_2745182A8;
      v7 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2745ECED0;
      v0[13] = &block_descriptor_77;
      v0[14] = v7;
      [v3 createSmartPromptStatesForInsertedActions:v6 forReference:v5 completionHandler:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  sub_274638C2C();
  v8 = sub_274638D9C();
  v9 = sub_27463BBFC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  if (v10)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2743F0000, v8, v9, "Could not create smart prompt states for inserted actions, missing database/reference.", v14, 2u);
    MEMORY[0x277C5A270](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);

  OUTLINED_FUNCTION_92();

  return v15();
}

uint64_t sub_2745182A8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v1 = v0;
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return MEMORY[0x2822009F8](sub_2745183A4, v4, v3);
}

uint64_t sub_2745183A4()
{
  OUTLINED_FUNCTION_42_1();
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);

  OUTLINED_FUNCTION_92();

  return v3();
}

void sub_274518424(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_27463C27C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_2744535A4();
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v4 = MEMORY[0x277C58B20](v3, a1);
    goto LABEL_6;
  }

  v4 = *(a1 + 8 * v3 + 32);
LABEL_6:
  v7 = v4;
  sub_27463B1CC();
  sub_27443DA88(v7, 1, v5, v6, 0);
}

uint64_t sub_274518514(uint64_t a1, uint64_t a2)
{
  sub_27463B9CC();
  v5[2] = a1;
  v5[3] = a2;
  return sub_274581604(sub_27451CCD8, v5, "WorkflowEditor/EditorHostingViewController.swift", 48, 2u, 734);
}

uint64_t sub_274518590(uint64_t a1, uint64_t a2)
{
  v3 = sub_27463800C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  sub_27451CC94(&qword_28094FE40, MEMORY[0x277CC9A28]);
  sub_27463C1DC();
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 32);
    do
    {
      v12 = *v11++;
      v14[1] = v12;
      sub_27463C1AC();
      --v10;
    }

    while (v10);
  }

  (*(v4 + 32))(v9, v6, v3);
  sub_2745189E4();
  return (*(v4 + 8))(v9, v3);
}

void sub_274518740()
{
  OUTLINED_FUNCTION_24();
  v35 = v0;
  OUTLINED_FUNCTION_21();
  sub_27463800C();
  OUTLINED_FUNCTION_1();
  v32 = v2;
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v30 = v3 - v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v5);
  v31 = &v30 - v6;
  v7 = sub_274453594();
  v8 = 0;
  v9 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
  v34 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x277C58B20](v8, v0);
    }

    else
    {
      if (v8 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v10 = *(v0 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v13 = [*(v35 + v9) indexOfAction_];
    v14 = sub_274637CAC();

    ++v8;
    if (v13 != v14)
    {
      v15 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450574();
        v15 = v19;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v34 = v15;
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v16);
        sub_274450574();
        v34 = v20;
      }

      v18 = v34;
      *(v34 + 16) = v17 + 1;
      *(v18 + 8 * v17 + 32) = v13;
      v8 = v12;
    }
  }

  OUTLINED_FUNCTION_1_21();
  sub_27451CC94(v21, v22);
  v23 = v30;
  v24 = v33;
  sub_27463C1DC();
  v25 = *(v34 + 16);
  if (v25)
  {
    v26 = (v34 + 32);
    do
    {
      v27 = *v26++;
      v36 = v27;
      sub_27463C1AC();
      --v25;
    }

    while (v25);
  }

  (*(v32 + 32))(v31, v23, v24);
  sub_2745189E4();
  v28 = OUTLINED_FUNCTION_24_5();
  v29(v28);
  OUTLINED_FUNCTION_23();
}

void sub_2745189E4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v123 = v2;
  v3 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = sub_274637F9C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = *&v0[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_editorOptions];
  if ((sub_27443B4C4() & 1) != 0 || sub_274513C7C())
  {
LABEL_82:
    OUTLINED_FUNCTION_23();
    return;
  }

  v116 = v11;
  v117 = v9;
  v118 = v7;
  v119 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_21();
  sub_27451CC94(v17, v18);
  v19 = v123;
  v20 = sub_27463BADC();
  v21 = &qword_28094F000;
  v121 = v0;
  v122 = v3;
  v120 = v5;
  v115 = MEMORY[0x277D84F90];
  if (v20)
  {
    v22 = v20;
    v114 = v16;
    v124 = MEMORY[0x277D84F90];
    sub_27463C44C();
    v23 = v19;
    sub_27463BACC();
    if (v22 < 0)
    {
      goto LABEL_91;
    }

    v24 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow];
    v19 = &v125;
    v16 = 0x277D7C098;
    v23 = v123;
    while (1)
    {
      sub_27463BB3C();
      v25 = OUTLINED_FUNCTION_53_3();
      v26(v25);
      v1 = [v24 actions];
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      v27 = sub_27463B81C();

      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = OUTLINED_FUNCTION_63_2();
        MEMORY[0x277C58B20](v30);
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
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
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          OUTLINED_FUNCTION_2_22(&qword_2809492C0);
LABEL_78:
          v96 = qword_28094BB00;
          OUTLINED_FUNCTION_62_3();
          sub_27463B66C();
          OUTLINED_FUNCTION_19_8();

          v97 = sub_27463B66C();

          v98 = [v96 localizedStringForKey:v23 value:v97 table:0];

          sub_27463B6AC();
          goto LABEL_79;
        }

        OUTLINED_FUNCTION_61_3();
        if (v28)
        {
          goto LABEL_84;
        }

        v29 = *(v27 + 8 * v23 + 32);
      }

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v23 = v123;
      sub_27463BB1C();
      if (!--v22)
      {
        (*(v116 + 8))(v15, v117);
        v31 = v124;
        v1 = v121;
        v21 = &qword_28094F000;
        v16 = v114;
        goto LABEL_14;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_14:
  v32 = sub_27443C514();
  if (!v32 || (v33 = v32, v34 = [v32 anchor], v33, v19 = objc_msgSend(v34, sel_variableProvider), v34, !v19))
  {
LABEL_61:
    v61 = *&v1[v21[420]];
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    v62 = sub_27463B7FC();
    [v61 removeActions_];

    v63 = [v61 actions];
    v64 = sub_27463B81C();

    v65 = sub_274453594();
    if (v65)
    {
      v23 = v65;
      if (v65 < 1)
      {
        goto LABEL_92;
      }

      for (i = 0; i != v23; i = (i + 1))
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x277C58B20](i, v64);
        }

        else
        {
          v67 = *(v64 + 8 * i + 32);
        }

        v68 = v67;
        [v67 snapInputParameterIfNecessary];
      }
    }

    sub_274514A6C(v69);
    v70 = [v1 undoManager];
    if (v70)
    {
      v16 = v70;
      v1 = sub_274453594();
      if (v1 == 1 && sub_274453594())
      {
        sub_2744535A4();
        if ((v31 & 0xC000000000000001) != 0)
        {
          v71 = MEMORY[0x277C58B20](0, v31);
        }

        else
        {
          v71 = *(v31 + 32);
        }

        v72 = v71;
        v19 = v31;
        v73 = sub_27463B70C("Remove “%@”", 15);
        if (qword_2809492C0 != -1)
        {
          OUTLINED_FUNCTION_2_22(&qword_2809492C0);
        }

        v74 = qword_28094BB00;
        OUTLINED_FUNCTION_13_3();
        v75 = sub_27463B66C();
        OUTLINED_FUNCTION_13_3();
        sub_27463B66C();
        OUTLINED_FUNCTION_28_1();

        v76 = [v74 localizedStringForKey:v75 value:v73 table:0];

        sub_27463B6AC();
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
        v78 = OUTLINED_FUNCTION_48_3(v77);
        *(v78 + 16) = xmmword_274648570;
        v79 = [v72 localizedName];
        v80 = sub_27463B6AC();
        v82 = v81;

        *(v78 + 56) = MEMORY[0x277D837D0];
        *(v78 + 64) = sub_27440F250();
        *(v78 + 32) = v80;
        *(v78 + 40) = v82;
        sub_27463B67C();
      }

      else
      {
        v19 = v31;
        v83 = sub_27463B70C("Remove %d Actions", v111);
        v85 = v84;
        OUTLINED_FUNCTION_17_9();
        if (v86)
        {
          OUTLINED_FUNCTION_70_2();

          v125 = v83;
          v126 = v85;
          v110 = OUTLINED_FUNCTION_46_4();
          v109 = MEMORY[0x277D837D0];
          OUTLINED_FUNCTION_16_12();
          v125 = OUTLINED_FUNCTION_45_4(v87, v88, v89, v90, v91, v92, v93, v94, v109, v110, v110, v110, v111, v112, v113, v114, v115, v116);
          v126 = v95;
          OUTLINED_FUNCTION_29_6();
          v23 = v125;
          if (qword_2809492C0 != -1)
          {
            goto LABEL_93;
          }

          goto LABEL_78;
        }

LABEL_79:
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
        v100 = OUTLINED_FUNCTION_48_3(v99);
        v101 = MEMORY[0x277D83B88];
        *(v100 + 16) = xmmword_274648570;
        v102 = MEMORY[0x277D83C10];
        *(v100 + 56) = v101;
        *(v100 + 64) = v102;
        *(v100 + 32) = v1;
        sub_27463B67C();
      }

      v103 = sub_27463B66C();

      [v16 setActionName_];

      v105 = v119;
      v104 = v120;
      v106 = v122;
      (*(v120 + 16))(v119, v123, v122);
      v107 = (*(v104 + 80) + 24) & ~*(v104 + 80);
      v108 = swift_allocObject();
      *(v108 + 16) = v19;
      (*(v104 + 32))(v108 + v107, v105, v106);
      type metadata accessor for EditorHostingViewController();
      sub_27463BBDC();
    }

    else
    {
    }

    goto LABEL_82;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    goto LABEL_61;
  }

  v36 = v35;
  v1 = sub_274453594();
  v23 = 0;
  v37 = v31 & 0xFFFFFFFFFFFFFF8;
  v38 = v31 + 32;
  while (v23 != v1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v117 = v37;
      v40 = MEMORY[0x277C58B20](v23, v31);
      v41 = __OFADD__(v23++, 1);
      if (v41)
      {
        goto LABEL_97;
      }

      v42 = v40;
      swift_unknownObjectRelease();
      v37 = v117;
      if (v42 == v36)
      {
LABEL_26:
        sub_27443C58C(0);
        swift_unknownObjectRelease();
        v1 = v121;
        goto LABEL_61;
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      if (v23 >= *(v37 + 16))
      {
        goto LABEL_86;
      }

      v39 = *(v38 + 8 * v23++);
      if (v39 == v36)
      {
        goto LABEL_26;
      }
    }
  }

  v116 = v31;
  v117 = v37;
  v112 = v31 & 0xC000000000000001;
  v113 = v19;
  v114 = v16;
  v23 = [v36 containedVariables];
  sub_274412734(0, &qword_28094BD90, 0x277D7C9F8);
  OUTLINED_FUNCTION_21_2();
  v43 = sub_27463B81C();

  v125 = MEMORY[0x277D84F90];
  v44 = sub_274453594();
  v45 = 0;
  v19 = (v43 & 0xC000000000000001);
  while (v44 != v45)
  {
    if (v19)
    {
      v46 = MEMORY[0x277C58B20](v45, v43);
    }

    else
    {
      if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v46 = *(v43 + 8 * v45 + 32);
    }

    v23 = v46;
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_87;
    }

    v16 = sub_2745AA098();

    ++v45;
    if (v16)
    {
      v23 = &v125;
      MEMORY[0x277C57F30]();
      v48 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v48 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v48);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v115 = v125;
      v45 = v47;
    }
  }

  v49 = v115;
  v50 = sub_274453594();
  if (!v50)
  {
    swift_unknownObjectRelease();

LABEL_60:
    v1 = v121;
    v31 = v116;
    v21 = &qword_28094F000;
    goto LABEL_61;
  }

  v51 = v50;
  v23 = 0;
  v19 = (v49 & 0xC000000000000001);
  v52 = v49 & 0xFFFFFFFFFFFFFF8;
  v16 = (v49 + 32);
  v53 = v49;
  v54 = v112;
  while (2)
  {
    if (v19)
    {
      v55 = MEMORY[0x277C58B20](v23, v53);
    }

    else
    {
      if (v23 >= *(v52 + 16))
      {
        goto LABEL_96;
      }

      v55 = *&v16[8 * v23];
    }

    v56 = v55;
    v41 = __OFADD__(v23++, 1);
    v57 = v117;
    if (!v41)
    {
      v58 = 0;
      while (v58 != v1)
      {
        if (v54)
        {
          v60 = MEMORY[0x277C58B20](v58, v116);
          v41 = __OFADD__(v58++, 1);
          if (v41)
          {
            goto LABEL_98;
          }

          v111 = v60;
          swift_unknownObjectRelease();
          v57 = v117;
          if (v111 == v56)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_89;
          }

          if (v58 >= *(v57 + 16))
          {
            goto LABEL_90;
          }

          v59 = *(v38 + 8 * v58++);
          if (v59 == v56)
          {
LABEL_58:

            sub_27443C58C(0);

            swift_unknownObjectRelease();
            goto LABEL_60;
          }
        }
      }

      v53 = v115;
      v21 = &qword_28094F000;
      if (v23 != v51)
      {
        continue;
      }

      swift_unknownObjectRelease();

      v1 = v121;
      v31 = v116;
      goto LABEL_61;
    }

    break;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

uint64_t sub_274519564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27463B9CC();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  return sub_274581604(sub_27451C558, v7, "WorkflowEditor/EditorHostingViewController.swift", 48, 2u, 829);
}

uint64_t sub_2745195E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  inserted = type metadata accessor for EditorHostingViewController.InsertDestination(0);
  MEMORY[0x28223BE20](inserted);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27463800C();
  (*(*(v7 - 8) + 16))(v6, a3, v7);
  swift_storeEnumTagMultiPayload();
  sub_2745172F8();
  return sub_27451B6F4(v6);
}

uint64_t sub_2745196F4()
{
  OUTLINED_FUNCTION_79();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = sub_27463B9CC();
  v1[7] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v5 = sub_27463B96C();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x2822009F8](sub_27451978C, v5, v4);
}

uint64_t sub_27451978C()
{
  OUTLINED_FUNCTION_27_5();
  v1 = v0[4];
  if (v1 && sub_274453594())
  {
    v2 = v0[5];
    v3 = v0[3];
    v4 = sub_27463B9BC();
    v0[10] = v4;
    v5 = swift_task_alloc();
    v0[11] = v5;
    v5[2] = v3;
    v5[3] = v1;
    v5[4] = v2;
    v6 = swift_task_alloc();
    v0[12] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE50, &qword_274656518);
    *v6 = v0;
    v6[1] = sub_274519908;
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 2, v4, v8, 0xD000000000000033, 0x800000027468BFF0, sub_27451CCF4, v5, v7);
  }

  else
  {

    OUTLINED_FUNCTION_31_5();
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_274519908()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_274519A5C, v5, v4);
}

uint64_t sub_274519A5C()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_31_5();

  return v0();
}

uint64_t sub_274519AB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = a1;
  v72 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58, &qword_274656520);
  v75 = *(v79 - 8);
  v69 = *(v75 + 64);
  MEMORY[0x28223BE20](v79);
  v70 = &v66 - v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CFC218]) init];
  sub_27463B70C("Delete the actions inside “%@”, too?", 40);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v8 = qword_28094BB00;
  v9 = sub_27463B66C();
  v10 = sub_27463B66C();

  v73 = v8;
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v12 = swift_allocObject();
  v78 = xmmword_274648570;
  *(v12 + 16) = xmmword_274648570;
  v13 = [a2 localizedName];
  v14 = sub_27463B6AC();
  v16 = v15;

  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_27440F250();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v17 = sub_27463B67C();
  v19 = v18;

  sub_274489628(v17, v19, v7);
  v20 = sub_27463B70C("%d actions would be deleted.", v66);
  v21 = v20;
  v23 = v22;
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    aBlock = 0;
    v81 = 0xE000000000000000;
    sub_27463C38C();

    aBlock = v21;
    v81 = v23;
    v88 = 10;
    v89 = 0xE100000000000000;
    v86 = 32;
    v87 = 0xE100000000000000;
    sub_274412BBC();
    aBlock = sub_27463C0FC();
    v81 = v25;
    MEMORY[0x277C57EA0](0xD000000000000010, 0x800000027468ABB0);
    v26 = sub_27463B66C();

    v27 = sub_27463B66C();

    v28 = [v73 localizedStringForKey:v26 value:v27 table:0];

    sub_27463B6AC();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v78;
  v68 = a3;
  v30 = sub_274453594();
  v31 = MEMORY[0x277D83C10];
  *(v29 + 56) = MEMORY[0x277D83B88];
  *(v29 + 64) = v31;
  *(v29 + 32) = v30;
  v32 = sub_27463B67C();
  v34 = v33;

  sub_274489634(v32, v34, v7);
  v35 = objc_opt_self();
  v36 = v75;
  v37 = v7;
  v67 = v7;
  v74 = *(v75 + 16);
  *&v78 = v75 + 16;
  v38 = v70;
  v39 = v71;
  v40 = v79;
  v74(v70, v71, v79);
  v77 = *(v36 + 80);
  v69 += (v77 + 16) & ~v77;
  v41 = (v77 + 16) & ~v77;
  v76 = v41;
  v42 = swift_allocObject();
  v75 = *(v36 + 32);
  (v75)(v42 + v41, v38, v40);
  v84 = sub_27451CD00;
  v85 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_27443E0E8;
  v83 = &block_descriptor_84;
  v43 = _Block_copy(&aBlock);

  v44 = [v35 cancelButtonWithHandler_];
  _Block_release(v43);
  [v37 addButton_];

  sub_274412734(0, &unk_28094FE60, 0x277CFC220);
  sub_27463B70C("Keep Actions", 12);
  v45 = sub_27463B66C();
  v46 = sub_27463B66C();

  v47 = v73;
  v48 = [v73 localizedStringForKey:v45 value:v46 table:0];

  v49 = sub_27463B6AC();
  v51 = v50;

  v74(v38, v39, v40);
  v52 = v69;
  v53 = swift_allocObject();
  (v75)(v53 + v76, v38, v40);
  v54 = sub_274588E0C(v49, v51, 0, sub_27451CD94, v53);
  v55 = v67;
  [v67 addButton_];

  sub_27463B70C("Delete Actions", 14);
  v56 = sub_27463B66C();
  v57 = sub_27463B66C();

  v58 = [v47 localizedStringForKey:v56 value:v57 table:0];

  v59 = sub_27463B6AC();
  v61 = v60;

  v62 = v79;
  v74(v38, v39, v79);
  v63 = swift_allocObject();
  (v75)(v63 + v76, v38, v62);
  *(v63 + ((v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v68;

  v64 = sub_274588E0C(v59, v61, 2, sub_27451CE0C, v63);
  [v55 addButton_];

  [WFUserInterfaceFromViewController() presentAlert_];
  return swift_unknownObjectRelease();
}

uint64_t sub_27451A324(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58, &qword_274656520);
  return sub_27463B98C();
}

id EditorHostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_27463B66C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EditorHostingViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorHostingViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t EditorHostingViewController.swiftUICoordinateSpaceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_coordinateSpaceName);

  return v1;
}

__C::CGRect __swiftcall EditorHostingViewController.convertRectToUserInterfaceCoordinateSpace(_:)(__C::CGRect a1)
{
  v2 = *&v1[OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_contentViewController];
  if (v2)
  {
    height = a1.size.height;
    width = a1.size.width;
    y = a1.origin.y;
    x = a1.origin.x;
    v7 = [v2 view];
    if (v7)
    {
      v8 = v7;
      v9 = [v1 view];
      if (v9)
      {
        v10 = v9;
        [v9 convertRect:v8 fromCoordinateSpace:{x, y, width, height}];
        OUTLINED_FUNCTION_6_6();
      }

      else
      {
      }
    }
  }

  v11 = OUTLINED_FUNCTION_7_16();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void *sub_27451A6B0(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_27451A750;
  v5[3] = &block_descriptor_106;
  [v2 initWithDynamicProvider_];
  v3 = OUTLINED_FUNCTION_19_8();
  _Block_release(v3);

  return v2;
}

id sub_27451A750(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_27451A7B8()
{
  OUTLINED_FUNCTION_27_5();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_4(v4);
  *v5 = v6;
  v5[1] = sub_27445358C;
  v7 = OUTLINED_FUNCTION_49_1();

  return sub_274514324(v7, v8, v1, v3, v2);
}

void sub_27451A864(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_274547E98(v3, v6, v7, v8);
    *a1 = v3;
  }

  v9 = *(v3 + 16);
  v11[0] = v3 + 32;
  v11[1] = v9;
  v10 = v4;
  sub_27451A904(v11, v10);
  sub_27463C42C();
}

void sub_27451A904(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2;
  v6 = sub_27463C65C();
  if (v6 < v4)
  {
    v7 = v6;
    v8 = sub_27444FC24(v4 / 2);
    v10[0] = v9;
    v10[1] = (v4 / 2);
    v5 = v5;
    sub_27451AB30(v10, v11, a1, v7, v5);
    if (v2)
    {
      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v4 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4)
  {
    sub_27451AA24(0, v4, 1, a1, v5);
  }

  else
  {
  }
}

void sub_27451AA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    while (2)
    {
      v20 = v7;
      v21 = a3;
      v9 = *(v5 + 8 * a3);
      v19 = v8;
      do
      {
        v10 = *v7;
        v11 = *&a5[v6];
        v12 = v9;
        v13 = v10;
        v14 = [v11 indexOfAction_];
        v15 = [v11 indexOfAction_];

        if (v14 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v16 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v16;
        v7 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v21 + 1;
      v7 = v20 + 8;
      v8 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_27451AB30(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v100 = a5;
    v10 = MEMORY[0x277D84F90];
LABEL_95:
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    v117 = a5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v102 = v10 + 16;
      v101 = *(v10 + 2);
      for (i = v10; ; v10 = i)
      {
        if (v101 < 2)
        {

          return;
        }

        v103 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v10 += 16 * v101;
        v104 = *v10;
        v105 = v102;
        v106 = &v102[16 * v101];
        v107 = *(v106 + 1);
        v127 = (v103 + 8 * *v106);
        v129 = (v103 + 8 * *v10);
        v108 = (v103 + 8 * v107);
        v109 = v117;
        sub_27451B304(v129, v127, v108, v116, v109);
        if (v123)
        {
          break;
        }

        if (v107 < v104)
        {
          goto LABEL_123;
        }

        if (v101 - 2 >= *v105)
        {
          goto LABEL_124;
        }

        v102 = v105;
        *v10 = v104;
        *(v10 + 1) = v107;
        v6 = *v105 - v101;
        if (*v105 < v101)
        {
          goto LABEL_125;
        }

        v123 = 0;
        v101 = *v105 - 1;
        sub_274546A38(v106 + 16, v6, v106);
        *v105 = v101;
      }

LABEL_107:
      return;
    }

LABEL_132:
    v10 = sub_274546A20(v10, v6, v7, v8);
    goto LABEL_97;
  }

  v128 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
  v115 = a5;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v5)
    {
      v118 = v10;
      v124 = v9 + 1;
      v13 = v9;
      v14 = (*a3 + 8 * v9);
      v110 = 8 * v9;
      v16 = *v14;
      v15 = v14 + 2;
      v17 = *&a5[v128];
      v10 = *(*a3 + 8 * v12);
      v18 = v16;
      v117 = [v17 indexOfAction_];
      v116 = [v17 indexOfAction_];

      v112 = v13;
      v19 = v13 + 2;
      while (1)
      {
        v20 = v19;
        if (v124 + 1 >= v5)
        {
          break;
        }

        ++v124;
        v21 = *(v15 - 1);
        v22 = *&a5[v128];
        v23 = *v15;
        v24 = v21;
        v25 = [v22 indexOfAction_];
        v10 = [v22 indexOfAction_];

        ++v15;
        v19 = v20 + 1;
        if (v117 < v116 == v25 >= v10)
        {
          goto LABEL_9;
        }
      }

      v124 = v5;
LABEL_9:
      if (v117 >= v116)
      {
        v10 = v118;
        v12 = v124;
        v11 = v112;
      }

      else
      {
        v12 = v124;
        v11 = v112;
        if (v124 < v112)
        {
          goto LABEL_129;
        }

        if (v112 >= v124)
        {
          v10 = v118;
        }

        else
        {
          if (v5 >= v20)
          {
            v26 = v20;
          }

          else
          {
            v26 = v5;
          }

          v27 = 8 * v26 - 8;
          v28 = v112;
          v10 = v118;
          v29 = v110;
          do
          {
            if (v28 != --v12)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v31 = *(v30 + v29);
              *(v30 + v29) = *(v30 + v27);
              *(v30 + v27) = v31;
            }

            ++v28;
            v27 -= 8;
            v29 += 8;
          }

          while (v28 < v12);
          v12 = v124;
        }
      }
    }

    v32 = a3[1];
    if (v12 >= v32)
    {
      goto LABEL_41;
    }

    v33 = v12;
    v68 = __OFSUB__(v12, v11);
    v34 = v12 - v11;
    if (v68)
    {
      goto LABEL_128;
    }

    if (v34 < a4)
    {
      break;
    }

    v12 = v33;
LABEL_41:
    if (v12 < v11)
    {
      goto LABEL_127;
    }

    v126 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2744503AC(0, *(v10 + 2) + 1, 1, v10);
      v10 = v98;
    }

    v50 = *(v10 + 2);
    v49 = *(v10 + 3);
    v51 = v50 + 1;
    v52 = v126;
    if (v50 >= v49 >> 1)
    {
      sub_2744503AC(v49 > 1, v50 + 1, 1, v10);
      v52 = v126;
      v10 = v99;
    }

    *(v10 + 2) = v51;
    v53 = (v10 + 32);
    v54 = &v10[16 * v50 + 32];
    *v54 = v11;
    *(v54 + 1) = v52;
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v50)
    {
      v116 = (v10 + 32);
      v120 = v10;
      while (1)
      {
        v55 = v51 - 1;
        v56 = &v53[2 * v51 - 2];
        v57 = &v10[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(v10 + 4);
          v59 = *(v10 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_62:
          if (v61)
          {
            goto LABEL_114;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_117;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_120;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_122;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v51 < 2)
        {
          goto LABEL_116;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_77:
        if (v76)
        {
          goto LABEL_119;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_121;
        }

        if (v83 < v75)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v55 - 1 >= v51)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v87 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v88 = &v53[2 * v55 - 2];
        v89 = *v88;
        v90 = v55;
        v91 = &v53[2 * v55];
        v92 = v91[1];
        v93 = (v87 + 8 * *v88);
        v94 = (v87 + 8 * *v91);
        v95 = (v87 + 8 * v92);
        v96 = v115;
        sub_27451B304(v93, v94, v95, v117, v96);
        if (v123)
        {

          goto LABEL_107;
        }

        v10 = v120;
        if (v92 < v89)
        {
          goto LABEL_109;
        }

        v97 = *(v120 + 2);
        if (v90 > v97)
        {
          goto LABEL_110;
        }

        *v88 = v89;
        v88[1] = v92;
        if (v90 >= v97)
        {
          goto LABEL_111;
        }

        v123 = 0;
        v51 = v97 - 1;
        sub_274546A38(v91 + 16, v97 - 1 - v90, v91);
        *(v120 + 2) = v97 - 1;
        v53 = v116;
        if (v97 <= 2)
        {
          goto LABEL_91;
        }
      }

      v62 = &v53[2 * v51];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_112;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_113;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_115;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_118;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_126;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v5 = a3[1];
    v9 = v126;
    if (v126 >= v5)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_130;
  }

  if (v11 + a4 >= v32)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = v11 + a4;
  }

  if (v35 < v11)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v12 = v33;
  if (v33 == v35)
  {
    goto LABEL_41;
  }

  v119 = v10;
  v36 = *a3;
  v37 = *a3 + 8 * v33 - 8;
  v113 = v11;
  v38 = v11 - v33;
  v116 = v35;
LABEL_33:
  v125 = v12;
  v39 = *(v36 + 8 * v12);
  v40 = v38;
  v117 = v37;
  while (1)
  {
    v41 = *v37;
    v42 = *&a5[v128];
    v43 = v39;
    v44 = v41;
    v45 = [v42 indexOfAction_];
    v46 = [v42 indexOfAction_];

    if (v45 >= v46)
    {
LABEL_38:
      v12 = v125 + 1;
      v37 = (v117 + 8);
      --v38;
      if ((v125 + 1) == v116)
      {
        v12 = v116;
        v10 = v119;
        v11 = v113;
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    if (!v36)
    {
      break;
    }

    v47 = *v37;
    v39 = *(v37 + 8);
    *v37 = v39;
    *(v37 + 8) = v47;
    v37 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_134:

  __break(1u);
LABEL_135:

  __break(1u);
LABEL_136:

  __break(1u);
LABEL_137:

  __break(1u);
LABEL_138:

  __break(1u);
}

uint64_t sub_27451B304(void **a1, id *a2, id *a3, void **a4, char *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    sub_274453590(a1, a2 - a1, a4);
    v11 = &v5[v9];
    v38 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
    for (i = v11; ; v11 = i)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v13 = v6;
      v14 = *v5;
      v15 = *&a5[v38];
      v16 = *v7;
      v17 = v14;
      v18 = [v15 indexOfAction_];
      v19 = [v15 indexOfAction_];

      if (v18 >= v19)
      {
        break;
      }

      v20 = v7;
      v21 = v8 == v7++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v6 = v13;
    }

    v20 = v5;
    v21 = v8 == v5++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v20;
    goto LABEL_13;
  }

  sub_274453590(a2, a3 - a2, a4);
  v11 = &v5[v10];
  v39 = OBJC_IVAR____TtC14WorkflowEditor27EditorHostingViewController_workflow;
  v40 = v5;
  v37 = v8;
LABEL_15:
  v22 = v7 - 1;
  v23 = v6 - 1;
  while (v11 > v5 && v7 > v8)
  {
    v25 = v23;
    v26 = v22;
    v27 = *v22;
    v28 = *&a5[v39];
    v29 = *(v11 - 1);
    v30 = v27;
    v31 = [v28 indexOfAction_];
    v32 = [v28 indexOfAction_];

    if (v31 < v32)
    {
      v6 = v25;
      v21 = v25 + 1 == v7;
      v7 = v26;
      v8 = v37;
      v5 = v40;
      if (!v21)
      {
        *v6 = *v26;
        v7 = v26;
      }

      goto LABEL_15;
    }

    if (v11 != v25 + 1)
    {
      *v25 = *(v11 - 1);
    }

    v23 = v25 - 1;
    --v11;
    v8 = v37;
    v5 = v40;
    v22 = v26;
  }

LABEL_28:
  v33 = v11 - v5;
  if (v7 != v5 || v7 >= &v5[v33])
  {
    memmove(v7, v5, 8 * v33);
  }

  return 1;
}

uint64_t sub_27451B594(void *a1)
{
  v1 = [a1 createAccompanyingActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_0_10();
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_27451B620()
{
  OUTLINED_FUNCTION_27_5();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_4(v5);
  *v6 = v7;
  v6[1] = sub_27445358C;
  v8 = OUTLINED_FUNCTION_49_1();

  return sub_274515600(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_27451B6F4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_39_4();
  v3(v2);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t dispatch thunk of EditorHostingViewController.workflow(_:askToRemoveNestedActionsWithin:)()
{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_32_5();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x220);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_27451C0B4;

  return v7(v2, v0);
}

uint64_t sub_27451C0B4()
{
  OUTLINED_FUNCTION_79();
  v2 = v1;
  OUTLINED_FUNCTION_28_2();
  v3 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v4 = v3;

  OUTLINED_FUNCTION_31_5();

  return v5(v2);
}

void sub_27451C340(uint64_t a1)
{
  sub_27451C3B4(319);
  if (v1 <= 0x3F)
  {
    sub_27451C41C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_27451C3B4(uint64_t a1)
{
  if (!qword_28094FE08)
  {
    sub_27463BDAC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28094FE08);
    }
  }
}

void sub_27451C41C(uint64_t a1)
{
  if (!qword_28094FE10)
  {
    sub_27463800C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28094FE10);
    }
  }
}

uint64_t sub_27451C480(uint64_t a1)
{
  result = sub_27463800C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27451C4EC(uint64_t a1)
{
  OUTLINED_FUNCTION_39_4();
  v3 = sub_27463800C();
  OUTLINED_FUNCTION_53_0(v3);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_274519564(v1, v5, v6);
}

uint64_t sub_27451C578()
{
  OUTLINED_FUNCTION_27_5();
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27445358C;
  v6 = OUTLINED_FUNCTION_28_1();

  return v7(v6, v2, v4, v3);
}

uint64_t sub_27451C630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorHostingViewController.MoveActionMode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27451C694(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_39_4();
  v4 = type metadata accessor for EditorHostingViewController.MoveActionMode(v3);
  OUTLINED_FUNCTION_53_0(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2745171EC(v1, v6);
}

uint64_t sub_27451C72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27451C79C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27451C804(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_27451C8F8;

  return v5(v2 + 32);
}

uint64_t sub_27451C8F8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v2 = v1;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_92();

  return v8();
}

uint64_t sub_27451C9F4()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_52_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_26(v1);

  return v4(v3);
}

uint64_t sub_27451CA84()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_52_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_26(v1);

  return v4(v3);
}

uint64_t sub_27451CB14(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21();
  v5(v4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_62_3();

  return swift_deallocObject();
}

uint64_t sub_27451CBC0()
{
  OUTLINED_FUNCTION_27_5();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_4(v4);
  *v5 = v6;
  v5[1] = sub_27444E7E4;
  v7 = OUTLINED_FUNCTION_49_1();

  return sub_274517F2C(v7, v8, v1, v3, v2);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27451CC94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_80Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58, &qword_274656520);
  OUTLINED_FUNCTION_7();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_27451CDA0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58, &qword_274656520);
  OUTLINED_FUNCTION_53_0(v3);
  return sub_27451A2D8(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_27451CE0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58, &qword_274656520) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_27451A324(v0 + v2, v3);
}

uint64_t sub_27451CEA4()
{
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_52_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_26(v1);

  return v4(v3);
}

id sub_27451CF6C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else
  {
    if (a3)
    {
      return result;
    }

    v4 = result;

    result = v4;
  }

  return result;
}

void sub_27451CFCC(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_24_7(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_29_6()
{

  JUMPOUT(0x277C57EA0);
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_27463C0FC();
}

unint64_t OUTLINED_FUNCTION_46_4()
{
  *(v0 - 136) = 10;
  *(v0 - 128) = 0xE100000000000000;
  *(v0 - 152) = 32;
  *(v0 - 144) = 0xE100000000000000;

  return sub_274412BBC();
}

uint64_t OUTLINED_FUNCTION_47_4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_27451C72C(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_48_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_27463B9CC();
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

char *OUTLINED_FUNCTION_68_2(uint64_t a1)
{

  return sub_27445126C(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a18 = a1;

  sub_27451A864(&a18, v18);
}

uint64_t OUTLINED_FUNCTION_70_2()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  return sub_27463C38C();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

double OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

id OUTLINED_FUNCTION_73_1()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_27451D4D0(uint64_t a1, unsigned __int8 a2)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a2);
  return sub_27463C7AC();
}

uint64_t sub_27451D514(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_27463C77C();
  return sub_27463C7AC();
}

uint64_t sub_27451D558(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a2);
  return sub_27463C7AC();
}

uint64_t ActionList.__allocating_init(workflow:)(uint64_t a1)
{
  v1 = swift_allocObject();
  ActionList.init(workflow:)();
  return v1;
}

uint64_t sub_27451D5DC()
{
  sub_274527C78();
  sub_274639ACC();
  return v1;
}

uint64_t sub_27451D694(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 32;
  v7 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_9:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v8 = *(v6 + 8 * v4);
      sub_27463C74C();
      MEMORY[0x277C58EA0](v8);
      result = sub_27463C7AC();
      v9 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v10 = result & v9;
        if (((*(v7 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          break;
        }

        result = v10 + 1;
        if (*(*(a2 + 48) + 8 * v10) == v8)
        {
          ++v4;
          goto LABEL_2;
        }
      }
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t ActionIdentity.hashValue.getter()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_27451D810(uint64_t a1)
{
  v2 = *v1;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v2);
  return sub_27463C7AC();
}

uint64_t sub_27451D854@<X0>(uint64_t *a1@<X8>)
{
  result = ActionIdentity.id.getter();
  *a1 = result;
  return result;
}

uint64_t ActionMove.fromIndexSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27463800C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_27451D950(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();

  return v3;
}

uint64_t sub_27451D9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

uint64_t sub_27451DA84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();
}

void sub_27451DAF8()
{
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_75();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_13_3();
  v2(v1);

  sub_274638FBC();
  v3 = OUTLINED_FUNCTION_24_3();
  v4(v3);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_27451DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75();
  (*(v11 + 16))(v7, a1);
  return a7(v7);
}

double sub_27451DCBC()
{
  OUTLINED_FUNCTION_30_1(v0 + OBJC_IVAR____TtC14WorkflowEditor10ActionList__visibleActions, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED0, &unk_274656628);
  sub_274638F7C();
  swift_endAccess();
  return result;
}

uint64_t sub_27451DD28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFC8, &qword_274656930);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_75();
  v2 = OUTLINED_FUNCTION_13_3();
  v3(v2);
  OUTLINED_FUNCTION_30_1(v0 + OBJC_IVAR____TtC14WorkflowEditor10ActionList__visibleActions, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED0, &unk_274656628);
  sub_274638F8C();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_24_3();
  return v5(v4);
}

void sub_27451DE38(uint64_t a1)
{
  sub_2744D40AC(*(v1 + OBJC_IVAR____TtC14WorkflowEditor10ActionList_manuallyCollapsedControlFlowActions), a1);
  if ((v2 & 1) == 0)
  {

    sub_274520448();
  }
}

void sub_27451DE9C(uint64_t a1)
{

  sub_2744D43E8(v2, a1);
  LOBYTE(a1) = v3;

  if ((a1 & 1) == 0)
  {

    sub_274520448();
  }
}

uint64_t sub_27451DF30(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  a3(v4);
}

void ActionList.init(workflow:)()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v46 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED0, &unk_274656628);
  OUTLINED_FUNCTION_1();
  v44 = v4;
  v45 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v42 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED8, &qword_274656638);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEE0, &qword_274656640);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  *(v1 + 2) = MEMORY[0x277D84F90];
  v27 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__draggingActionTree;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEF0, &qword_274656648);
  sub_274638F6C();
  (*(v23 + 32))(&v1[v27], v26, v21);
  v28 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__inputAction;
  v48 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF00, &qword_274656650);
  sub_274638F6C();
  v29 = v40;
  (*(v17 + 32))(&v1[v28], v20, v40);
  v30 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__visibleActions;
  sub_27444A444();
  sub_27463832C();
  (*(v9 + 16))(v42, v15, v7);
  v31 = v43;
  sub_274638F6C();
  (*(v9 + 8))(v15, v7);
  (*(v44 + 32))(&v1[v30], v31, v45);
  v32 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC14WorkflowEditor10ActionList_manuallyCollapsedControlFlowActions] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC14WorkflowEditor10ActionList_collapsedActionGroupIdentifiersForDragging] = v32;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor10ActionList_lastActions] = MEMORY[0x277D84F90];
  v33 = v46;
  *(v1 + 3) = v46;
  v34 = v33;
  v35 = [v34 inputAction];
  OUTLINED_FUNCTION_30_1(&v1[v28], &v48);
  (*(v17 + 8))(&v1[v28], v29);
  v47 = v35;
  sub_274638F6C();
  swift_endAccess();
  type metadata accessor for WorkflowSelectionCoordinator(0);
  swift_allocObject();
  *(v1 + 4) = sub_2745E0E14();
  type metadata accessor for ActionViewModelStore(0);
  v36 = swift_allocObject();
  sub_2745214A8();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor10ActionList_actionViewModelStore] = v36;
  [v34 addEditingObserver_];
  v37 = [v34 actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_21_2();
  v38 = sub_27463B81C();

  sub_274520070(v38);

  sub_27451D9B8([v34 inputAction]);

  swift_weakAssign();
  OUTLINED_FUNCTION_23();
}

uint64_t ActionList.deinit()
{
  [*(v0 + 24) removeEditingObserver_];

  v1 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__draggingActionTree;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEE0, &qword_274656640);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__inputAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED8, &qword_274656638);
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC14WorkflowEditor10ActionList__visibleActions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FED0, &unk_274656628);
  OUTLINED_FUNCTION_4_2();
  (*(v6 + 8))(v0 + v5);

  return v0;
}

uint64_t ActionList.__deallocating_deinit()
{
  ActionList.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_27451E628(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  for (i = 48; ; i += 16)
  {
    if (v6 == v4)
    {
      v4 = *(v5 + 16);
      v9 = v4;
      goto LABEL_22;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    sub_274527BD8(v5 + i - 16, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_274527C10(v21);
    if (!Strong)
    {
      v9 = v4 + 1;
      v10 = *(v5 + 16);
      if (v10 - 1 != v4)
      {
        while (v9 < v10)
        {
          sub_274527BD8(v5 + i, v21);
          v11 = swift_unknownObjectWeakLoadStrong();
          sub_274527C10(v21);
          if (v11)
          {
            swift_unknownObjectRelease();
            if (v9 != v4)
            {
              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v12 = *(v5 + 16);
              if (v4 >= v12)
              {
                goto LABEL_32;
              }

              sub_274527BD8(v5 + 32 + 16 * v4, v21);
              if (v9 >= v12)
              {
                goto LABEL_33;
              }

              sub_274527BD8(v5 + i, v20);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a1 + 16) = v5;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_27453AD30();
                v5 = v14;
                *(a1 + 16) = v14;
              }

              if (v4 >= *(v5 + 16))
              {
                goto LABEL_34;
              }

              sub_274527C40(v20, v5 + 16 * v4 + 32);
              *(a1 + 16) = v5;
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_35;
              }

              sub_274527C40(v21, v5 + i);
              *(a1 + 16) = v5;
            }

            ++v4;
          }

          ++v9;
          v10 = *(v5 + 16);
          i += 16;
          if (v9 == v10)
          {
            if (v9 < v4)
            {
              goto LABEL_36;
            }

            goto LABEL_22;
          }
        }

        goto LABEL_30;
      }

LABEL_22:
      sub_2745C3664(v4, v9);
      swift_endAccess();
      v15 = *(a1 + 16);
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 32;

        do
        {
          sub_274527BD8(v17, v22);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = v23;
            ObjectType = swift_getObjectType();
            (*(v18 + 16))(a2, ObjectType, v18);
            swift_unknownObjectRelease();
          }

          sub_274527C10(v22);
          v17 += 16;
          --v16;
        }

        while (v16);
      }

      else
      {
      }

      return;
    }

    swift_unknownObjectRelease();
    ++v4;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_27451E8C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  for (i = 48; ; i += 16)
  {
    if (v6 == v4)
    {
      v4 = *(v5 + 16);
      v9 = v4;
      goto LABEL_22;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    sub_274527BD8(v5 + i - 16, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_274527C10(v21);
    if (!Strong)
    {
      v9 = v4 + 1;
      v10 = *(v5 + 16);
      if (v10 - 1 != v4)
      {
        while (v9 < v10)
        {
          sub_274527BD8(v5 + i, v21);
          v11 = swift_unknownObjectWeakLoadStrong();
          sub_274527C10(v21);
          if (v11)
          {
            swift_unknownObjectRelease();
            if (v9 != v4)
            {
              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v12 = *(v5 + 16);
              if (v4 >= v12)
              {
                goto LABEL_32;
              }

              sub_274527BD8(v5 + 32 + 16 * v4, v21);
              if (v9 >= v12)
              {
                goto LABEL_33;
              }

              sub_274527BD8(v5 + i, v20);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a1 + 16) = v5;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_27453AD30();
                v5 = v14;
                *(a1 + 16) = v14;
              }

              if (v4 >= *(v5 + 16))
              {
                goto LABEL_34;
              }

              sub_274527C40(v20, v5 + 16 * v4 + 32);
              *(a1 + 16) = v5;
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_35;
              }

              sub_274527C40(v21, v5 + i);
              *(a1 + 16) = v5;
            }

            ++v4;
          }

          ++v9;
          v10 = *(v5 + 16);
          i += 16;
          if (v9 == v10)
          {
            if (v9 < v4)
            {
              goto LABEL_36;
            }

            goto LABEL_22;
          }
        }

        goto LABEL_30;
      }

LABEL_22:
      sub_2745C3664(v4, v9);
      swift_endAccess();
      v15 = *(a1 + 16);
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 32;

        do
        {
          sub_274527BD8(v17, v22);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = v23;
            ObjectType = swift_getObjectType();
            (*(v18 + 8))(a2, ObjectType, v18);
            swift_unknownObjectRelease();
          }

          sub_274527C10(v22);
          v17 += 16;
          --v16;
        }

        while (v16);
      }

      else
      {
      }

      return;
    }

    swift_unknownObjectRelease();
    ++v4;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}