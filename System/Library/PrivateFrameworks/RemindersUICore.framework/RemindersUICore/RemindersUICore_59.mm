void *assignWithCopy for TTRUserActivityListPayload(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityListPayload.State);
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v8 = sub_21DBF6C1C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v6 = *a2;
    *a1 = *a2;
    v7 = v6;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for TTRUserActivityListPayload(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v5 = sub_21DBF6C1C();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }
}

void *assignWithTake for TTRUserActivityListPayload(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityListPayload.State);
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v5 = sub_21DBF6C1C();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_21D678C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRUserActivityListPayload.State(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v14;
      sub_21DBF8E0C();
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_21DBF6C1C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

double destroy for TTRUserActivityListPayload.State(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v6 = sub_21DBF6C1C();
      v7 = *(*(v6 - 8) + 8);

      v7(a1, v6);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v5 = *a1;
  }

  return result;
}

void *initializeWithCopy for TTRUserActivityListPayload.State(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      sub_21DBF8E0C();
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v9 = sub_21DBF6C1C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      goto LABEL_11;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithCopy for TTRUserActivityListPayload.State(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityListPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v9 = sub_21DBF6C1C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithTake for TTRUserActivityListPayload.State(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v6 = sub_21DBF6C1C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for TTRUserActivityListPayload.State(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityListPayload.State);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v6 = sub_21DBF6C1C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_21D67937C(uint64_t a1)
{
  result = sub_21DBF6C1C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *_s13ExtractedInfoVwCP(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v7;
    v8 = *(a3 + 24);
    v9 = sub_21DBF54CC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v11(&a2[v8], 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }
  }

  return v4;
}

uint64_t _s13ExtractedInfoVwxx(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_21DBF54CC();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *_s13ExtractedInfoVwcp(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a3 + 24);
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v10(&a2[v7], 1, v8))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  return a1;
}

char *_s13ExtractedInfoVwca(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_21DBF8E0C();

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  sub_21DBF8E0C();

  v6 = *(a3 + 24);
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
  return a1;
}

char *_s13ExtractedInfoVwtk(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  return a1;
}

char *_s13ExtractedInfoVwta(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = *(a3 + 24);
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(&a1[v8], &a2[v8], v9);
      return a1;
    }

    (*(v10 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v10 + 32))(&a1[v8], &a2[v8], v9);
  (*(v10 + 56))(&a1[v8], 0, 1, v9);
  return a1;
}

void sub_21D679C4C(uint64_t a1)
{
  sub_21D679D00(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D679D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D679D54(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21D679D9C()
{
  result = qword_280D178F0;
  if (!qword_280D178F0)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BD0], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, &qword_280D178F0);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRDateChangeType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for TTRDateChangeType(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v4 = sub_21DBF509C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for TTRDateChangeType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = sub_21DBF509C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithCopy for TTRDateChangeType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D1A94E8(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = sub_21DBF509C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata accessor for TTRDateChangeType(uint64_t a1)
{
  result = qword_280D163C8;
  if (!qword_280D163C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *initializeWithTake for TTRDateChangeType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = sub_21DBF509C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for TTRDateChangeType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D1A94E8(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = sub_21DBF509C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_21D67A4C0(uint64_t a1)
{
  result = sub_21DBF509C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D67A548@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = sub_21DBF5A2C();
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v55 = sub_21DBF509C();
  v15 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v21 = type metadata accessor for TTRDateChangeType(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D450204(v3, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v54;
    v29 = v23;
    v27 = v55;
    (*(v15 + 32))(v54, v29, v55);
LABEL_33:
    v30 = 0;
    return (*(v15 + 56))(v28, v30, 1, v27);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(v15 + 32);
    v26 = v23;
    v27 = v55;
    v25(v20, v26, v55);
    sub_21D1A91F8(v53, v14);
    if ((*(v15 + 48))(v14, 1, v27) == 1)
    {
      sub_21D0CF7E0(v14, &qword_27CE58D60, &unk_21DC0A690);
      v28 = v54;
      v25(v54, v20, v27);
    }

    else
    {
      v31 = v25;
      v32 = v17;
      v33 = v17;
      v34 = v31;
      v31(v33, v14, v27);
      sub_21DBF505C();
      v35 = v52;
      if ((*(v52 + 48))(v8, 1, v9) == 1)
      {
        sub_21D0CF7E0(v8, &qword_27CE5A8B0, &unk_21DC18C20);
      }

      else
      {
        (*(v35 + 32))(v11, v8, v9);
        v36 = *(v35 + 16);
        v37 = v35;
        v38 = v51;
        v36(v51, v11, v9);
        (*(v37 + 56))(v38, 0, 1, v9);
        sub_21DBF506C();
        (*(v37 + 8))(v11, v9);
      }

      v28 = v54;
      sub_21DBF4F2C();
      if ((v39 & 1) == 0)
      {
        sub_21DBF4F3C();
      }

      sub_21DBF4F7C();
      if ((v40 & 1) == 0)
      {
        sub_21DBF4F8C();
      }

      sub_21DBF4F9C();
      if ((v41 & 1) == 0)
      {
        sub_21DBF4FAC();
      }

      sub_21DBF4F0C();
      if ((v42 & 1) == 0)
      {
        sub_21DBF4F1C();
      }

      sub_21DBF502C();
      if ((v43 & 1) == 0)
      {
        sub_21DBF503C();
      }

      sub_21DBF4E7C();
      if ((v44 & 1) == 0)
      {
        sub_21DBF4E8C();
      }

      sub_21DBF500C();
      if ((v45 & 1) == 0)
      {
        sub_21DBF501C();
      }

      sub_21DBF4E5C();
      if ((v46 & 1) == 0)
      {
        sub_21DBF4E6C();
      }

      sub_21DBF4E0C();
      if ((v47 & 1) == 0)
      {
        sub_21DBF4E1C();
      }

      sub_21DBF4E9C();
      if ((v48 & 1) == 0)
      {
        sub_21DBF4EAC();
      }

      if (sub_21DBF4E3C() != 2)
      {
        sub_21DBF4E4C();
      }

      v27 = v55;
      (*(v15 + 8))(v20, v55);
      v34(v28, v32, v27);
    }

    goto LABEL_33;
  }

  v30 = 1;
  v28 = v54;
  v27 = v55;
  return (*(v15 + 56))(v28, v30, 1, v27);
}

uint64_t TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_21D0D32E4(a1, v21);
  type metadata accessor for MainProcessorContext();
  swift_allocObject();
  v6 = sub_21D67B728(v21);
  type metadata accessor for HashtagProcessor();
  inited = swift_initStackObject();
  *(inited + 16) = v6;
  *(inited + 24) = &off_282ECAC40;

  sub_21D67BA00(v21);
  v8 = v21[1];
  v9 = v22;
  *(v6 + 16) = v21[0];
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;

  if ((v5 & 2) != 0)
  {
    type metadata accessor for InlineHashtagResurrectionProcessor();
    v10 = swift_initStackObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = &off_282ECAC00;
    sub_21D67ADA8();
  }

  if (v5)
  {
    type metadata accessor for URLDetectionProcessor();
    v11 = swift_initStackObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = &off_282ECAC28;
    v12 = byte_282EA6338;

    sub_21D67C084(v12);
    sub_21D67C084(byte_282EA6339);
  }

  sub_21D67B67C(0);
  v14 = v13;
  sub_21D67B67C(1);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = *(v6 + 16);
  v18 = *(v6 + 24);
  v19 = *(v6 + 32);
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  return result;
}

id TTRReminderViewModelComputedProperties.modifiedTitle.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRReminderViewModelComputedProperties.modifiedNotes.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

double TTRReminderViewModelComputedProperties.hashtagData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

void sub_21D67ADA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v1 - 8);
  v86 = &v72 - v2;
  v3 = sub_21DBF5B9C();
  MEMORY[0x28223BE20](v3);
  v7 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 16);
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = *(v8 + 40);
  v95 = *(v8 + 16);
  v96 = v9;
  *&v97 = v10;
  *(&v97 + 1) = v11;
  if (*(v11 + 16))
  {
    v73 = v5;
    v74 = v4;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF5B8C();
    if (v10 >> 62)
    {
      goto LABEL_53;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v13 = 0;
      v81 = v10 & 0xC000000000000001;
      v80 = v10 & 0xFFFFFFFFFFFFFF8;
      v79 = v10 + 32;
      v75 = v11 + 56;
      v83 = v94;
      v14 = &unk_282EA6000;
      v77 = v11;
      v85 = v8;
      v82 = v7;
      v78 = v10;
      v76 = i;
      while (1)
      {
        if (v81)
        {
          v15 = MEMORY[0x223D44740](v13, v10);
        }

        else
        {
          if (v13 >= *(v80 + 16))
          {
            goto LABEL_52;
          }

          v15 = *(v79 + 8 * v13);
        }

        v88 = v15;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v84 = v13 + 1;
        v16 = [v88 objectIdentifier];
        v17 = sub_21DBFA16C();
        v19 = v18;

        if (!*(v11 + 16) || (sub_21DBFC7DC(), sub_21DBFA27C(), v20 = sub_21DBFC82C(), v21 = -1 << *(v11 + 32), v22 = v20 & ~v21, v23 = v75, ((*(v75 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
        {
LABEL_5:

          goto LABEL_6;
        }

        v10 = ~v21;
        while (1)
        {
          v24 = (*(v11 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v19;
          if (v25 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v10;
          if (((*(v23 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_beginAccess();
        v11 = byte_282EA6310;
        v26 = *(v8 + 96);
        v7 = &selRef_setAttributedText_;
        if (*(v26 + 16) <= byte_282EA6310)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          break;
        }

        v27 = 0;
        v28 = 0;
        v87 = v13;
        while (1)
        {
          v29 = *(v26 + 8 * v11 + 32);
          if (v29)
          {
            v89 = v28;
            v30 = v29;
            goto LABEL_31;
          }

          v31 = *(v8 + 88);
          if (*(v31 + 16) <= v11)
          {
            goto LABEL_50;
          }

          v32 = *(v31 + 8 * v11 + 32);
          if (v32)
          {
            break;
          }

LABEL_42:
          if (v28)
          {
            if (v27)
            {
              goto LABEL_47;
            }

LABEL_24:
            v28 = 1;
            goto LABEL_25;
          }

LABEL_43:
          if (v27)
          {
            goto LABEL_6;
          }

          v28 = 0;
LABEL_25:
          v11 = v14[785];
          v26 = *(v8 + 96);
          v27 = 1;
          if (*(v26 + 16) <= v11)
          {
            goto LABEL_49;
          }
        }

        v89 = v28;
        v30 = v32;
        v29 = 0;
LABEL_31:
        v33 = v29;
        v10 = [v30 string];
        v34 = sub_21DBFA16C();
        v36 = v35;

        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (!v37)
        {
          goto LABEL_41;
        }

        v10 = [v88 name];
        v38 = sub_21DBFA16C();
        v40 = v39;

        v41 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (!v41)
        {
LABEL_41:

          LOBYTE(v28) = v89;
          goto LABEL_42;
        }

        v42 = sub_21DBFA23C();
        v44 = v43;
        v45 = [v88 name];
        v46 = sub_21DBFA16C();
        v48 = v47;

        aBlock = v42;
        v93 = v44;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v46, v48);

        v49 = aBlock;
        v50 = v93;
        v51 = [v30 string];
        v52 = sub_21DBFA16C();
        v54 = v53;

        aBlock = v52;
        v93 = v54;
        v90 = v49;
        v91 = v50;
        v55 = sub_21DBF582C();
        v56 = v86;
        (*(*(v55 - 8) + 56))(v86, 1, 1, v55);
        sub_21D176F0C();
        v10 = sub_21DBFBBAC();
        v58 = v57;
        LOBYTE(v49) = v59;
        v60 = v56;
        v7 = &selRef_setAttributedText_;
        sub_21D0CF7E0(v60, &unk_27CE65010, &qword_21DC08D60);

        if (v49 & 1) != 0 || (aBlock = v10, v93 = v58, v61 = [v30 string], v62 = sub_21DBFA16C(), v64 = v63, v61, v90 = v62, v91 = v64, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0), sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00, &unk_21DC18DC0, MEMORY[0x277D83D30]), v10 = sub_21DBFB9DC(), v66 = v65, v67 = swift_allocObject(), *(v67 + 16) = 0, v68 = (v67 + 16), v94[2] = sub_21D24BDA4, v94[3] = v67, aBlock = MEMORY[0x277D85DD0], v93 = 1107296256, v94[0] = sub_21D472974, v94[1] = &block_descriptor_71, v69 = _Block_copy(&aBlock), , , objc_msgSend(v30, sel_rem_enumerateHashtagInRange_options_usingBlock_, v10, v66, 0x100000, v69), _Block_release(v69), swift_beginAccess(), LOBYTE(v68) = *v68, , (v68))
        {

          v8 = v85;
          if (v89)
          {
            goto LABEL_46;
          }

          v14 = &unk_282EA6000;
          goto LABEL_43;
        }

        v70 = v88;
        v8 = v85;
        sub_21D67D2C0((v11 & 1), v85, v70, v10, v66);

LABEL_46:
        v14 = &unk_282EA6000;
        if ((v27 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_47:
        sub_21DBF5AFC();
LABEL_6:

        v13 = v84;
        v7 = v82;
        v10 = v78;
        v11 = v77;
        if (v84 == v76)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      ;
    }

LABEL_54:
    if ((sub_21DBF5B1C() & 1) == 0)
    {
      sub_21D25CC08();
    }

    (*(v73 + 8))(v7, v74);
    v71 = v96;
    *(v8 + 16) = v95;
    *(v8 + 24) = v71;
    *(v8 + 32) = v97;
  }
}

void sub_21D67B67C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  if (*(v3 + 16) <= (a1 & 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 8 * (a1 & 1) + 32);
    if (v4)
    {
      [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
    }
  }
}

void sub_21D67B700()
{
  byte_280D16BC0 = 0;
  qword_280D16BC8 = 0;
  unk_280D16BD0 = MEMORY[0x277D84F90];
  qword_280D16BD8 = MEMORY[0x277D84FA0];
}

uint64_t sub_21D67B728(void *a1)
{
  v2 = v1;
  if (qword_280D16BB8 != -1)
  {
    swift_once();
  }

  v4 = qword_280D16BC8;
  v5 = unk_280D16BD0;
  v6 = qword_280D16BD8;
  *(v2 + 16) = byte_280D16BC0;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F7E8, &qword_21DC21718);
  v7 = sub_21DBFA69C();
  v7[2] = 2;
  v7[4] = 0;
  v7[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F7F0, &unk_21DC21720);
  v8 = sub_21DBFA69C();
  v8[2] = 2;
  v8[4] = 0;
  v8[5] = 0;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 40))(v9, v10);
  if (v7[2])
  {
    v12 = v7[4];
    v7[4] = result;

    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    result = (*(v14 + 56))(v13, v14);
    if (v7[2] >= 2uLL)
    {
      v15 = v7[5];
      v7[5] = result;

      sub_21D0D32E4(a1, v2 + 48);
      *(v2 + 88) = v7;
      *(v2 + 96) = v8;
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21D67B8F8(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = a1 & 1;
  if (*(v3 + 16) <= v4)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 8 * v4 + 32);
    if (v5)
    {
LABEL_5:
      v8 = v5;
      return;
    }

    v6 = *(v1 + 88);
    if (*(v6 + 16) > v4)
    {
      v7 = *(v6 + 8 * v4 + 32);
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_21D67B98C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return swift_deallocClassInstance();
}

void sub_21D67BA00(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[9];
  v5 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v4);
  (*(v5 + 216))(&aBlock, v4, v5);
  v6 = v45;
  if (v45)
  {
    v7 = v46;
    __swift_project_boxed_opaque_existential_1(&aBlock, v45);
    v8 = v7[1](v6, v7);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v41 = v8;
    aBlock = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A148, &qword_21DC21710);
    sub_21D0D0F1C(&qword_280D0C370, &qword_27CE5A148, &qword_21DC21710, MEMORY[0x277D83B68]);
    v40 = sub_21DBFA42C();
    sub_21D67B8F8(0);
    v10 = MEMORY[0x277D84FA0];
    if (v9)
    {
      v11 = v9;
      v12 = [v9 string];
      v13 = sub_21DBFA16C();
      v15 = v14;

      v16 = MEMORY[0x223D42B30](v13, v15);

      v17 = swift_allocObject();
      *(v17 + 16) = v10;
      v18 = (v17 + 16);
      v46 = sub_21D47BA94;
      v47 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_21D472974;
      v45 = &block_descriptor_53_2;
      v19 = _Block_copy(&aBlock);

      [v11 rem:0 enumerateHashtagInRange:v16 options:0x100000 usingBlock:v19];

      _Block_release(v19);
      swift_beginAccess();
      v10 = *v18;
      sub_21DBF8E0C();
    }

    sub_21D67B8F8(1);
    v21 = MEMORY[0x277D84FA0];
    if (v20)
    {
      v22 = v20;
      v23 = [v20 string];
      v24 = sub_21DBFA16C();
      v26 = v25;

      v27 = MEMORY[0x223D42B30](v24, v26);

      v28 = swift_allocObject();
      *(v28 + 16) = v21;
      v29 = (v28 + 16);
      v46 = sub_21D24B444;
      v47 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_21D472974;
      v45 = &block_descriptor_48_2;
      v30 = _Block_copy(&aBlock);

      [v22 rem:0 enumerateHashtagInRange:v27 options:0x100000 usingBlock:v30];

      _Block_release(v30);
      swift_beginAccess();
      v21 = *v29;
      sub_21DBF8E0C();
    }

    sub_21D996B68(v21, v10);
    v32 = v31;
    if (*(v40 + 16) <= *(v31 + 16) >> 3)
    {
      v48 = v31;
      sub_21DBF8E0C();
      sub_21D9F86E8(v40);
      v33 = v48;
    }

    else
    {
      sub_21DBF8E0C();
      v33 = sub_21D9F8D40(v40, v32);
    }

    if (*(v32 + 16) <= *(v40 + 16) >> 3)
    {
      v48 = v40;
      sub_21D9F86E8(v32);

      v37 = v48;
    }

    else
    {
      v37 = sub_21D9F8D40(v32, v40);
    }

    sub_21DBF8E0C();
    v38 = sub_21D67CFC0(v41, v37);

    v48 = v38;
    v39 = sub_21DBF780C();

    *a1 = 1;
    *(a1 + 8) = v33;
    *(a1 + 16) = v39;
    *(a1 + 24) = v37;
  }

  else
  {
    sub_21D0CF7E0(&aBlock, &qword_27CE5A140, &unk_21DC0E560);
    if (qword_280D16BB8 != -1)
    {
      swift_once();
    }

    v34 = qword_280D16BC8;
    v35 = unk_280D16BD0;
    v36 = qword_280D16BD8;
    *a1 = byte_280D16BC0;
    *(a1 + 8) = v34;
    *(a1 + 16) = v35;
    *(a1 + 24) = v36;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }
}

void sub_21D67BF78(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 type] == 1)
  {
    v4 = [v3 objectIdentifier];
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_21D67C008(id *a1)
{
  v1 = [*a1 name];
  v2 = sub_21DBFA16C();

  return v2;
}

void sub_21D67C084(int a1)
{
  v3 = sub_21DBF4CAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v38 = a1;
  v37 = v7;
  sub_21D67B8F8(a1 & 1);
  if (!v8)
  {
    return;
  }

  v43 = v8;
  v9 = [v8 string];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    v27 = v43;

    return;
  }

  v14 = [v43 string];
  if (!v14)
  {
    sub_21DBFA16C();
    v14 = sub_21DBFA12C();
  }

  v15 = sub_21DBFA16C();
  v17 = v16;
  if (qword_280D0C410 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v18 = MEMORY[0x277D84F90];
    if (qword_280D0C418)
    {
      v19 = v15;
      aBlock = v15;
      v45 = v17;
      v20 = qword_280D0C418;
      sub_21DBF4C5C();
      sub_21D176F0C();
      v21 = sub_21DBFBB3C();
      v23 = v22;
      v24 = *(v4 + 8);
      v4 += 8;
      v24(v6, v3);

      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v26 = [v20 matchesInString:v14 options:0 range:{0, MEMORY[0x223D42B30](v19, v17)}];

        sub_21D0D8CF0(0, &qword_280D0C278, 0x277CCACC0);
        v3 = sub_21DBFA5EC();

        goto LABEL_18;
      }
    }

    v3 = MEMORY[0x277D84F90];
LABEL_18:

    v48 = v18;
    if (v3 >> 62)
    {
      break;
    }

    v28 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_35;
    }

LABEL_20:
    v6 = 0;
    v41 = v3 & 0xFFFFFFFFFFFFFF8;
    v42 = v3 & 0xC000000000000001;
    v40 = v46;
    v39 = v28;
    while (1)
    {
      if (v42)
      {
        v15 = MEMORY[0x223D44740](v6, v3);
      }

      else
      {
        if (v6 >= *(v41 + 16))
        {
          goto LABEL_32;
        }

        v15 = *(v3 + 8 * v6 + 32);
      }

      v29 = v15;
      v17 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v30 = [v15 range];
      v32 = v31;
      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      v46[2] = sub_21D67D5D4;
      v47 = v4;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46[0] = sub_21D472974;
      v46[1] = &block_descriptor_42_3;
      v33 = _Block_copy(&aBlock);
      v14 = v47;

      [v43 rem:v30 enumerateHashtagInRange:v32 options:0x100000 usingBlock:v33];
      _Block_release(v33);
      swift_beginAccess();
      LOBYTE(v30) = *(v4 + 16);

      if (v30)
      {
      }

      else
      {
        sub_21DBFBFEC();
        v4 = v48[2];
        sub_21DBFC03C();
        sub_21DBFC04C();
        v15 = sub_21DBFBFFC();
      }

      ++v6;
      if (v17 == v39)
      {
        v34 = v48;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v35 = v15;
    swift_once();
    v15 = v35;
  }

  v15 = sub_21DBFBD7C();
  v28 = v15;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_35:
  v34 = MEMORY[0x277D84F90];
LABEL_36:

  if ((v34 & 0x8000000000000000) != 0 || (v34 & 0x4000000000000000) != 0)
  {
    if (!sub_21DBFBD7C())
    {
      goto LABEL_41;
    }

LABEL_39:

    v36._rawValue = v34;
    sub_21D67D460((v38 & 1), v37, v36);
  }

  else
  {
    if (*(v34 + 16))
    {
      goto LABEL_39;
    }

LABEL_41:
  }
}

unint64_t sub_21D67C5E8()
{
  result = qword_27CE5F7C8;
  if (!qword_27CE5F7C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderViewModelComputedProperties.PostProcessingOperations, &type metadata for TTRReminderViewModelComputedProperties.PostProcessingOperations, v0, v1);
    atomic_store(result, &qword_27CE5F7C8);
  }

  return result;
}

unint64_t sub_21D67C640()
{
  result = qword_27CE5F7D0;
  if (!qword_27CE5F7D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderViewModelComputedProperties.PostProcessingOperations, &type metadata for TTRReminderViewModelComputedProperties.PostProcessingOperations, v0, v1);
    atomic_store(result, &qword_27CE5F7D0);
  }

  return result;
}

unint64_t sub_21D67C698()
{
  result = qword_27CE5F7D8;
  if (!qword_27CE5F7D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderViewModelComputedProperties.PostProcessingOperations, &type metadata for TTRReminderViewModelComputedProperties.PostProcessingOperations, v0, v1);
    atomic_store(result, &qword_27CE5F7D8);
  }

  return result;
}

unint64_t sub_21D67C6F0()
{
  result = qword_27CE5F7E0;
  if (!qword_27CE5F7E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderViewModelComputedProperties.PostProcessingOperations, &type metadata for TTRReminderViewModelComputedProperties.PostProcessingOperations, v0, v1);
    atomic_store(result, &qword_27CE5F7E0);
  }

  return result;
}

double destroy for TTRReminderViewModelComputedProperties(id *a1)
{

  return result;
}

uint64_t initializeWithCopy for TTRReminderViewModelComputedProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = v3;
  v7 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderViewModelComputedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderViewModelComputedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

unint64_t *sub_21D67C90C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_21DBF8E0C();
    sub_21D67C9A8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_21D67C9A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v33 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    if ([v15 type])
    {
      v30 = v14;
      v32 = v9;
      v16 = [v15 objectIdentifier];
      v17 = sub_21DBFA16C();
      v19 = v18;

      if (*(a4 + 16))
      {
        sub_21DBFC7DC();
        sub_21DBFA27C();
        v20 = sub_21DBFC82C();
        v21 = -1 << *(a4 + 32);
        v22 = v20 & ~v21;
        if ((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = (*(a4 + 48) + 16 * v22);
            v25 = *v24 == v17 && v24[1] == v19;
            if (v25 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v9 = v32;
          v14 = v30;
          goto LABEL_25;
        }
      }

LABEL_5:

      v9 = v32;
    }

    else
    {

LABEL_25:
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v29++, 1))
      {
        goto LABEL_31;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      sub_21D7BFC3C(a1, v27, v29, a3);
      return;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t *sub_21D67CC10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = sub_21DBF8E0C();
  v42 = a2;
  if (v7 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v35[1] = v3;
    v35[2] = v35;
    v36 = v8;
    MEMORY[0x28223BE20](v10);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v38 = 0;
    v39 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v41 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      if ([v20 type])
      {
        v40 = v19;
        v9 = [v20 objectIdentifier];
        v3 = sub_21DBFA16C();
        v22 = v21;

        if (*(v42 + 16))
        {
          sub_21DBFC7DC();
          sub_21DBFA27C();
          v23 = sub_21DBFC82C();
          v24 = v42;
          v25 = -1 << *(v42 + 32);
          v9 = v23 & ~v25;
          if ((*(v41 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
          {
            v26 = ~v25;
            while (1)
            {
              v27 = (*(v24 + 48) + 16 * v9);
              v28 = *v27 == v3 && v27[1] == v22;
              if (v28 || (sub_21DBFC64C() & 1) != 0)
              {
                break;
              }

              v9 = (v9 + 1) & v26;
              v24 = v42;
              if (((*(v41 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v5 = v39;
            v19 = v40;
            goto LABEL_26;
          }
        }

LABEL_6:

        v5 = v39;
      }

      else
      {

LABEL_26:
        *&v37[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_33;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        v30 = sub_21D7BFC3C(v37, v36, v38, v5);

        return v30;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      a2 = v42;
      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();
  v33 = v42;
  sub_21DBF8E0C();
  v34 = sub_21D67C90C(v32, v8, v5, v33);

  MEMORY[0x223D46520](v32, -1, -1);

  return v34;
}

uint64_t sub_21D67CFC0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21D67CC10(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  sub_21DBF8E0C();
  sub_21DBFBD1C();
  if (sub_21DBFBDBC())
  {
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    v4 = a2 + 56;
    while (1)
    {
      swift_dynamicCast();
      if (![v26 type])
      {
        goto LABEL_18;
      }

      v5 = [v26 objectIdentifier];
      v6 = sub_21DBFA16C();
      v8 = v7;

      if (*(a2 + 16))
      {
        sub_21DBFC7DC();
        sub_21DBFA27C();
        v9 = sub_21DBFC82C();
        v10 = -1 << *(a2 + 32);
        v11 = v9 & ~v10;
        if ((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          break;
        }
      }

LABEL_4:

LABEL_5:
      if (!sub_21DBFBDBC())
      {
        goto LABEL_31;
      }
    }

    v12 = ~v10;
    while (1)
    {
      v13 = (*(a2 + 48) + 16 * v11);
      v14 = *v13 == v6 && v13[1] == v8;
      if (v14 || (sub_21DBFC64C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_18:
    v15 = *(v3 + 16);
    if (*(v3 + 24) <= v15)
    {
      sub_21D8AD2CC(v15 + 1);
    }

    v3 = v27;
    result = sub_21DBFB62C();
    v17 = v27 + 56;
    v18 = -1 << *(v27 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6))) != 0)
    {
      v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      do
      {
        if (++v20 == v23 && (v22 & 1) != 0)
        {
          __break(1u);
          return result;
        }

        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v17 + 8 * v20);
      }

      while (v25 == -1);
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
    }

    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v27 + 48) + 8 * v21) = v26;
    ++*(v27 + 16);
    goto LABEL_5;
  }

LABEL_31:

  return v3;
}

void sub_21D67D2C0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a2 + 96);
  v11 = a1 & 1;
  if (*(v10 + 16) <= v11)
  {
    __break(1u);
LABEL_12:
    a5 = sub_21D256E60(a5);
    *(a2 + 96) = a5;
    goto LABEL_8;
  }

  v12 = v10 + 8 * v11;
  v13 = *(v12 + 32);
  if (v13)
  {
    a1 = *(v12 + 32);
  }

  else
  {
    v14 = *(a2 + 88);
    if (*(v14 + 16) <= v11)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v15 = *(v14 + 8 * v11 + 32);
    if (!v15)
    {
      return;
    }

    a1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v13 = 0;
  }

  v16 = objc_opt_self();
  v17 = v13;
  v18 = [v16 attributeFromHashtag_];
  [a1 rem:v18 addHashtag:a4 range:a5];

  swift_beginAccess();
  a5 = *(a2 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 96) = a5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(a5 + 16) <= v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = a5 + 8 * v11;
  v21 = *(v20 + 32);
  *(v20 + 32) = a1;
  *(a2 + 96) = a5;
  swift_endAccess();
}

void sub_21D67D460(id a1, uint64_t a2, Swift::OpaquePointer a3)
{
  swift_beginAccess();
  v6 = *(a2 + 96);
  v7 = a1 & 1;
  if (*(v6 + 16) <= v7)
  {
    __break(1u);
LABEL_12:
    a3._rawValue = sub_21D256E60(a3._rawValue);
    *(a2 + 96) = a3;
    goto LABEL_8;
  }

  v8 = *(v6 + 8 * v7 + 32);
  if (v8)
  {
    a1 = v8;
  }

  else
  {
    v9 = *(a2 + 88);
    if (*(v9 + 16) <= v7)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v10 = *(v9 + 8 * v7 + 32);
    if (!v10)
    {
      return;
    }

    a1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v8 = 0;
  }

  v11 = v8;
  v12 = sub_21D11274C(MEMORY[0x277D84F90]);
  NSMutableAttributedString.formatDetectedLinksAndPhoneNumbers(_:adding:)(a3, v12);

  swift_beginAccess();
  a3._rawValue = *(a2 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 96) = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(a3._rawValue + 2) <= v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = a3._rawValue + 8 * v7;
  v15 = *(v14 + 4);
  *(v14 + 4) = a1;
  *(a2 + 96) = a3;
  swift_endAccess();
}

RemindersUICore::TTRLocationQuickPickItem_optional __swiftcall TTRLocationQuickPickItem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTRLocationQuickPickItem.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E6572727563;
  v3 = 0x49676E6974746567;
  v4 = 0x4F676E6974746567;
  if (v1 != 4)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701670760;
  if (v1 != 1)
  {
    v5 = 1802661751;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21D67D710()
{
  result = qword_27CE5F7F8;
  if (!qword_27CE5F7F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRLocationQuickPickItem, &type metadata for TTRLocationQuickPickItem, v0, v1);
    atomic_store(result, &qword_27CE5F7F8);
  }

  return result;
}

double sub_21D67D76C(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

void sub_21D67D870(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E6572727563;
  v5 = 0xEC0000007261436ELL;
  v6 = 0x49676E6974746567;
  v7 = 0xEF726143664F7475;
  v8 = 0x4F676E6974746567;
  if (v2 != 4)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1701670760;
  if (v2 != 1)
  {
    v9 = 1802661751;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
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

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.ItemID.NamedID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.ItemID.NamedID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration.init(showsMenuTitle:showsNoneOption:showsIcons:menuStateByPostponeType:handleSelection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration.init(availableQuickPickItems:selectedQuickPickItem:handleSelection:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration.init(assigneeCandidates:viewScale:isRTL:showsMenuTitle:showsNoneOption:itemCountByAssigneeID:updateAssigneeCandidateAvatarImages:handleSelection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 17) = a3;
  *(a9 + 18) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a11;
  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration.init(showsScanTextOption:handleSelection:handleScanText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_21D67DAF4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_21D683B60, v4);
}

void sub_21D67DB88(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
  v3 = sub_21DBFA5DC();
  (*(a2 + 16))(a2, v3);
}

uint64_t TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_21D67DC54(unsigned __int8 *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a6;
  v7 = a3;
  v73 = a3 & 0x10000;
  v10 = sub_21DBF5A2C();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v62 - v14;
  v15 = sub_21DBF563C();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x28223BE20](v15);
  v64 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v20 = sub_21DBF509C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  if (*(a4 + 16) && (v25 = sub_21D17E11C(*a1), (v26 & 1) != 0))
  {
    v70 = *(*(a4 + 56) + 8 * v25);
    if (!v73)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v70 = 0;
    if (!v73)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    v27 = a2;
LABEL_13:
    v39 = 0;
    v40 = 0;
    goto LABEL_14;
  }

  v74 = v24;
  TTRRemindersListPostponeType.dateChangeType.getter(v19);
  v28 = type metadata accessor for TTRDateChangeType(0);
  if ((*(*(v28 - 8) + 48))(v19, 1, v28) == 1 || swift_getEnumCaseMultiPayload() >= 2)
  {
LABEL_12:
    a2 = 0;
    goto LABEL_13;
  }

  v29 = v21;
  (*(v21 + 32))(v23, v19, v20);
  v30 = sub_21DBF4F0C();
  v32 = sub_21D933D08(v30, v31 & 1);
  v33 = objc_opt_self();
  v63 = v32;
  v34 = v32;
  v35 = [v33 currentCalendar];
  sub_21DBF596C();

  v36 = v65;
  sub_21DBF597C();
  (*(v66 + 8))(v12, v67);
  (*(v29 + 8))(v23, v20);
  v38 = v68;
  v37 = v69;
  if ((*(v68 + 48))(v36, 1, v69) == 1)
  {
    sub_21D46CB6C(v36);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v57 = v64;
    (*(v38 + 32))(v64, v36, v37);
    if (qword_280D171B8 != -1)
    {
      swift_once();
    }

    v58 = qword_280D171C0;
    v59 = sub_21DBF55BC();
    v60 = [v58 stringFromDate_];

    v39 = sub_21DBFA16C();
    v40 = v61;

    (*(v38 + 8))(v57, v37);
  }

  a2 = v63;
LABEL_14:
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  v78 = v24;
  TTRRemindersListPostponeType.localizedDescription.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = v7 & 1;
  *(v41 + 17) = HIBYTE(v7) & 1;
  *(v41 + 18) = BYTE2(v73);
  v42 = v71;
  v43 = v72;
  *(v41 + 24) = a4;
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  *(v41 + 48) = v24;
  sub_21DBF8E0C();

  v44 = sub_21DBFB77C();
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_21DC08D20;
    v77 = v24;
    *(v45 + 32) = TTRRemindersListPostponeType.localizedDescription.getter();
    *(v45 + 40) = v46;
    *(v45 + 48) = v39;
    *(v45 + 56) = v40;
    v76 = v45;
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    sub_21DBFA07C();

    v47 = v44;
    v48 = sub_21DBFA12C();

    [v47 setAccessibilityLabel_];

    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_21DC08D00;
    v75 = v24;
    *(v49 + 32) = TTRRemindersListPostponeType.localizedDescription.getter();
    *(v49 + 40) = v50;
    v51 = sub_21DBFA5DC();

    [v47 setAccessibilityUserInputLabels_];
  }

  if (v24 > 4)
  {
  }

  else
  {
    v52 = sub_21DBFC64C();

    if ((v52 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v53 = qword_27CE57488;
  v54 = v44;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = sub_21DBFA12C();
  [v54 setAccessibilityHint_];

LABEL_25:
  return v44;
}

uint64_t TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.fetchAllHashtagLabels.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.handleCustomTags.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.handleTagSelection.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.handleClearTags.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

__n128 TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.init(showsMenuTitle:itemCount:customTagsOption:itemCountByHashtagLabel:fetchAllHashtagLabels:handleCustomTags:handleTagSelection:handleClearTags:)@<Q0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11)
{
  result = a10;
  v12 = *a3;
  a9->n128_u8[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u8[0] = v12;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  return result;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.createHashtagsContextMenu(configuration:)(__int128 *a1)
{
  v2 = a1[3];
  v58 = a1[2];
  v59 = v2;
  v3 = a1[5];
  v60 = a1[4];
  v61 = v3;
  v4 = a1[1];
  v56 = *a1;
  v57 = v4;
  v55 = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  v6 = a1[3];
  v5[3] = a1[2];
  v5[4] = v6;
  v7 = a1[5];
  v5[5] = a1[4];
  v5[6] = v7;
  v8 = a1[1];
  v5[1] = *a1;
  v5[2] = v8;
  aBlock[4] = sub_21D682B6C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D67DAF4;
  aBlock[3] = &block_descriptor_72;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();
  sub_21D682B74(&v56, v53);
  v11 = [v10 elementWithProvider_];
  _Block_release(v9);

  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC09CF0;
  *(v12 + 32) = v11;
  v13 = v11;
  v14 = sub_21DBFB58C();
  MEMORY[0x223D42D80](v14);
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_41:
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  v15 = 0;
  v16 = v55;
  v17 = 1 << *(*(&v57 + 1) + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(*(&v57 + 1) + 64);
  v20 = (v17 + 63) >> 6;
  do
  {
    if (!v19)
    {
      while (1)
      {
        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v21 >= v20)
        {
          goto LABEL_18;
        }

        v19 = *(*(&v57 + 1) + 64 + 8 * v21);
        ++v15;
        if (v19)
        {
          v15 = v21;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v21 = v15;
LABEL_12:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
  }

  while (*(*(*(&v57 + 1) + 56) + ((v21 << 9) | (8 * v22))) < 1);
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v23 = swift_allocObject();
  v24 = v59;
  v23[3] = v58;
  v23[4] = v24;
  v25 = v61;
  v23[5] = v60;
  v23[6] = v25;
  v26 = v57;
  v23[1] = v56;
  v23[2] = v26;
  sub_21D682B74(&v56, v53);
  v27 = sub_21DBFB77C();
  MEMORY[0x223D42D80](v27, v28, v29, v30, v31);
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();

  v16 = v55;
LABEL_18:
  if (v57 != 2)
  {
    if (v57 == 3)
    {
      sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v32 = sub_21DBFA12C();
      v33 = [objc_opt_self() _systemImageNamed_];

      v34 = swift_allocObject();
      v35 = v59;
      v34[3] = v58;
      v34[4] = v35;
      v36 = v61;
      v34[5] = v60;
      v34[6] = v36;
      v37 = v57;
      v34[1] = v56;
      v34[2] = v37;
      sub_21D682B74(&v56, v53);
      v38 = sub_21DBFB77C();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_21DC09CF0;
      *(v39 + 32) = v38;
      v40 = v38;
      v41 = sub_21DBFB58C();
      MEMORY[0x223D42D80](v41, v42, v43, v44, v45);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    else
    {
      if (*(&v56 + 1) == 1 && (v57 & 1) != 0)
      {
        if (qword_280D1BAA8 != -1)
        {
          goto LABEL_44;
        }
      }

      else if (qword_280D1BAA8 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        sub_21DBF516C();
        sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
        v46 = swift_allocObject();
        v47 = v59;
        v46[3] = v58;
        v46[4] = v47;
        v48 = v61;
        v46[5] = v60;
        v46[6] = v48;
        v49 = v57;
        v46[1] = v56;
        v46[2] = v49;
        sub_21D682B74(&v56, v53);
        v40 = sub_21DBFB77C();
        if (!(v16 >> 62) || (sub_21DBFBD7C() & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

      sub_21DBD1730(0, 0, v40);
    }
  }

  if (v56)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
  }

  if (qword_27CE567C0 != -1)
  {
    swift_once();
  }

  v50 = qword_27CE5C4E8;
  v51 = sub_21DBFB58C();

  return v51;
}

uint64_t sub_21D67EF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v7 = swift_allocObject();
  v8 = *(a3 + 48);
  *(v7 + 48) = *(a3 + 32);
  *(v7 + 64) = v8;
  v9 = *(a3 + 80);
  *(v7 + 80) = *(a3 + 64);
  *(v7 + 96) = v9;
  v10 = *(a3 + 16);
  *(v7 + 16) = *a3;
  *(v7 + 32) = v10;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  sub_21D682B74(a3, &v12);

  v6(sub_21D683B68, v7);
}

uint64_t sub_21D67F040(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4)
{
  v30 = a3;
  v7 = sub_21DBF78CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v14 = sub_21DBFB12C();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v15 = sub_21DBF9DAC();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = v8;
  v16 = *(a2 + 24);
  v33 = v16;
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_5:
    v22 = sub_21DBF784C();
    MEMORY[0x28223BE20](v22);
    *(&v25 - 2) = v10;
    *(&v25 - 1) = a2;
    v23 = sub_21D1742D4(sub_21D683B74, (&v25 - 4), a1);
    if (!(v23 >> 62))
    {
      sub_21DBF8E0C();
      sub_21DBFC65C();
      sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
      v24 = v23;
LABEL_7:

      (v30)(v24);

      return (*(v29 + 8))(v10, v7);
    }

LABEL_9:
    sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
    v24 = sub_21DBFC33C();
    goto LABEL_7;
  }

  v26 = a2;
  v27 = a1;
  v28 = a4;
  v18 = sub_21D9D6344(v17, 0);
  v19 = sub_21D9D5774(&v32, v18 + 4, v17, v16);
  v20 = v32;
  sub_21D0D3954(&v33, v31, &qword_27CE5F808, &unk_21DC21A20);
  result = sub_21D0CFAF8(v20);
  if (v19 == v17)
  {
    a1 = v27;
    a2 = v26;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D67F3B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = sub_21DBF781C();
  if (v8)
  {
    v9 = *(a2 + 24);
    if (*(v9 + 16))
    {
      v10 = sub_21D0CEF70(v7, v8);
      v12 = v11;

      if (v12)
      {
        v13 = *(*(v9 + 56) + 8 * v10);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_7:
  v20[0] = sub_21DBFA23C();
  v20[1] = v14;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v6, v5);

  if (v13)
  {
    if (*(a2 + 8) == v13)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  v15 = swift_allocObject();
  v16 = *(a2 + 48);
  *(v15 + 48) = *(a2 + 32);
  *(v15 + 64) = v16;
  v17 = *(a2 + 80);
  *(v15 + 80) = *(a2 + 64);
  *(v15 + 96) = v17;
  v18 = *(a2 + 16);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v18;
  *(v15 + 112) = v6;
  *(v15 + 120) = v5;
  *(v15 + 128) = v13;
  sub_21D682B74(a2, v20);
  sub_21DBF8E0C();
  result = sub_21DBFB77C();
  *a3 = result;
  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration.updateAssigneeCandidateAvatarImages.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21D67F5E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A300, &unk_21DC0EA70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  *(v10 + 32) = a3[1];
  v11 = *(a3 + 16);
  v12 = a3[4];
  v13 = *a3;
  v19 = vdupq_n_s64(0x4044000000000000uLL);
  v20 = v10;
  v21 = v11 & 1;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = *(a3 + 1);
  *(v14 + 32) = *a3;
  *(v14 + 48) = v15;
  v16 = *(a3 + 3);
  *(v14 + 64) = *(a3 + 2);
  *(v14 + 80) = v16;
  *(v14 + 96) = a1;
  *(v14 + 104) = a2;
  sub_21DBF8E0C();
  sub_21D683D4C(a3, &v18);

  v12(v13, &v19, sub_21D683DCC, v14);
}

double sub_21D67F71C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void (*a5)(uint64_t, __n128))
{
  v5 = a5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_26;
  }

  v34 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  v11 = (a1 + 32);
  do
  {
    v22 = v11[4];
    v23 = v11[5];
    v24 = v11[2];
    v38 = v11[3];
    v39 = v22;
    v25 = v11[6];
    v40 = v23;
    v41 = v25;
    v26 = v11[1];
    v35 = *v11;
    v36 = v26;
    v37 = v24;
    if (*(a2 + 16))
    {
      v27 = v35;
      sub_21D1D9C94(&v35, v33);
      sub_21D17EB08(v27);
      if (v28)
      {
        if (v41)
        {
          goto LABEL_12;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_21D1D9C94(&v35, v33);
    }

    if (v41)
    {
LABEL_12:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      goto LABEL_5;
    }

LABEL_3:
    v42[2] = v38;
    v42[3] = v39;
    v42[4] = v40;
    v42[0] = v36;
    v42[1] = v37;
    if (*(&v37 + 1))
    {
      goto LABEL_4;
    }

    if (*(&v42[0] + 1))
    {
      sub_21DBF8E0C();
LABEL_4:
      sub_21DBF8E0C();
      goto LABEL_5;
    }

    v43 = v39;
    if (*(&v39 + 1))
    {
      v29 = &v43;
LABEL_21:
      sub_21D0D3954(v29, v33, &qword_27CE588A0, &qword_21DC09AF0);
      goto LABEL_5;
    }

    v44 = v40;
    if (*(&v40 + 1))
    {
      v29 = &v44;
      goto LABEL_21;
    }

    sub_21D1D9B34(v42, v33);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    sub_21D1D9B90(v42);
LABEL_5:
    v12 = *(&v41 + 1);
    v13 = swift_allocObject();
    v14 = *(a4 + 1);
    v13[1] = *a4;
    v13[2] = v14;
    v15 = *(a4 + 3);
    v13[3] = *(a4 + 2);
    v13[4] = v15;
    v16 = v38;
    v17 = v40;
    v18 = v41;
    v13[9] = v39;
    v13[10] = v17;
    v13[11] = v18;
    v19 = v36;
    v20 = v37;
    v13[5] = v35;
    v13[6] = v19;
    v13[7] = v20;
    v13[8] = v16;
    v21 = v12;
    sub_21D683D4C(a4, v33);
    sub_21DBFB77C();
    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
    v11 += 7;
    --v6;
  }

  while (v6);
  v7 = v34;
  v5 = a5;
LABEL_26:
  if (v7 >> 62)
  {
    sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
    sub_21DBF8E0C();
    v30 = sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
    v30 = v7;
  }

  (v5)(v30);

  return result;
}

uint64_t sub_21D67FBD4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3[5];
  v12 = a3[4];
  v13 = v3;
  v14 = a3[6];
  v4 = a3[1];
  v8 = *a3;
  v9 = v4;
  v5 = a3[3];
  v10 = a3[2];
  v11 = v5;
  v6 = *(a2 + 48);
  sub_21D1D9C94(a3, v15);
  v6(&v8);
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  return sub_21D1D9AE0(v15);
}

uint64_t TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration.init(flaggedState:shouldUseFilledIcon:handleSelection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeFlagContextMenuAction(configuration:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  if (v1 == 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v9 = 0x800000021DC665F0;
    sub_21DBF516C();
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v9 = 0x800000021DC665D0;
    sub_21DBF516C();
  }

  v5 = sub_21DBFA12C();

  v6 = [objc_opt_self() _systemImageNamed_];

  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 17) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;

  return sub_21DBFB77C();
}

uint64_t TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration.handleScanText.getter()
{
  v1 = *(v0 + 24);
  sub_21D0D0E78(v1, *(v0 + 32));
  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration.init(alreadySetPriorityLevels:handleSelection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makePriorityContextMenu(configuration:)(__int128 *a1)
{
  v43 = *a1;
  v1 = *(a1 + 2);
  v45[0] = 0;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v45[1] = sub_21DBF516C();
  v45[2] = v2;
  v45[3] = 1;
  v45[4] = sub_21DBF516C();
  v45[5] = v3;
  v45[6] = 2;
  v45[7] = sub_21DBF516C();
  v45[8] = v4;
  v45[9] = 3;
  v45[10] = sub_21DBF516C();
  v45[11] = v5;
  if (*(v43 + 16) <= 1uLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v42 = v6;
  v44 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  v7 = sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  v8 = 0;
  v9 = v43 + 56;
  do
  {
    v12 = v45[3 * v8];
    if (*(v43 + 16) && (sub_21DBFC7DC(), MEMORY[0x223D44FA0](v12), v13 = sub_21DBFC82C(), v14 = -1 << *(v43 + 32), v15 = v13 & ~v14, ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
    {
      v16 = ~v14;
      while (*(*(v43 + 48) + 8 * v15) != v12)
      {
        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v10 = v42;
    }

    else
    {
LABEL_7:
      v10 = 0;
    }

    ++v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v43;
    *(v11 + 32) = v1;
    *(v11 + 40) = v12;
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    v38 = 0;
    v40 = sub_21D682C28;
    v41 = v11;
    v39 = v10;
    sub_21DBFB77C();
    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v8 != 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F800, &qword_21DC21818);
  swift_arrayDestroy();
  v17 = v44 < 0 || (v44 & 0x4000000000000000) != 0;
  if (!v17)
  {
    v18 = *(v44 + 16);
    if (v18)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  result = sub_21DBFBD7C();
  if (result < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  v18 = result;
  result = sub_21DBFBD7C();
  if (result < 1)
  {
LABEL_56:
    __break(1u);
    return result;
  }

  if (sub_21DBFBD7C() >= v18)
  {
LABEL_21:
    if ((v44 & 0xC000000000000001) != 0)
    {
      sub_21DBF8E0C();
      if (v18 != 1)
      {
        v20 = 1;
        do
        {
          v21 = v20 + 1;
          sub_21DBFBF6C();
          v20 = v21;
        }

        while (v18 != v21);
      }

      if (v17)
      {
LABEL_26:

        v23 = sub_21DBFC3BC();
        v25 = v24;
        v27 = v26;
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_21DBF8E0C();
      if (v17)
      {
        goto LABEL_26;
      }
    }

    v22 = v44 + 32;
    v25 = 1;
    v27 = (2 * v18) | 1;
    v23 = v44;
    if ((v27 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_31:
    v30 = v22;
    sub_21DBFC66C();
    swift_unknownObjectRetain_n();
    v31 = swift_dynamicCastClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      v31 = MEMORY[0x277D84F90];
    }

    v32 = *(v31 + 16);

    if (__OFSUB__(v27 >> 1, v25))
    {
      goto LABEL_53;
    }

    if (v32 != (v27 >> 1) - v25)
    {
      goto LABEL_54;
    }

    i = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (i)
    {
      goto LABEL_38;
    }

    for (i = MEMORY[0x277D84F90]; ; i = v28)
    {
      swift_unknownObjectRelease();
LABEL_38:
      if (i < 0 || (i & 0x4000000000000000) != 0)
      {
        sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
        sub_21DBF8E0C();
        sub_21DBFC33C();
      }

      else
      {
        sub_21DBF8E0C();
        sub_21DBFC65C();
        sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
      }

      v25 = sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
      v1 = sub_21DBFB58C();
      v23 = sub_21DBF516C();
      v27 = v33;
      v34 = sub_21DBFA12C();
      v30 = [objc_opt_self() _systemImageNamed_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21DC0AA00;
      if ((v44 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v44 + 16))
      {
        v35 = *(v44 + 32);
        goto LABEL_44;
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_unknownObjectRelease();
      v22 = v30;
LABEL_30:
      sub_21D1989FC(v23, v22, v25, v27, v19);
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v35 = MEMORY[0x223D44740](0, v44);
LABEL_44:
  v36 = v35;

  *(v7 + 32) = v36;
  *(v7 + 40) = v1;
  return sub_21DBFB58C();
}

uint64_t TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration.init(numberOfTasksOutdented:numberOfTopLevelRemindersIndented:isForGroceries:handleSelection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 25) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeIndentOutdentContextMenuAction(configuration:)(__int128 *a1)
{
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  v13 = a1[2];
  v3 = BYTE9(v2);
  if (!(BYTE8(v11) & 1 | (v11 < 1)))
  {
    _s15RemindersUICore21TTRLocalizableStringsO0A4ListO07outdentA4Text9withCount14isForGroceriesSSSi_SbtFZ_0(v11, SBYTE9(v12));
    if (qword_27CE56838 != -1)
    {
      swift_once();
    }

    v4 = v12;
    v5 = qword_27CE5C560;
    v6 = 0;
    if ((BYTE8(v12) & 1) != 0 || v12 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((BYTE8(v12) & 1) == 0)
  {
    v4 = v12;
    if (v12 >= 1)
    {
      v5 = 0;
LABEL_9:

      _s15RemindersUICore21TTRLocalizableStringsO0A4ListO06indentA4Text9withCount14isForGroceriesSSSi_SbtFZ_0(v4, v3);
      if (qword_27CE56830 != -1)
      {
        swift_once();
      }

      qword_27CE5C558;

      v6 = 1;
LABEL_12:
      sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
      v7 = swift_allocObject();
      v8 = a1[1];
      *(v7 + 16) = *a1;
      *(v7 + 32) = v8;
      *(v7 + 48) = a1[2];
      *(v7 + 64) = v6;
      sub_21D682C84(&v11, v10);
      return sub_21DBFB77C();
    }
  }

  return 0;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeDeleteContextMenuAction(shouldUseFilledIcon:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v5 = sub_21DBFA12C();

  v6 = [objc_opt_self() _systemImageNamed_];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  return sub_21DBFB77C();
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeDetailsContextMenuAction(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return sub_21DBFB77C();
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeCutContextMenuAction(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return sub_21DBFB77C();
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeCopyContextMenuAction(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return sub_21DBFB77C();
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makePasteContextMenuAction(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return sub_21DBFB77C();
}

uint64_t _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO018makeDueDateContextF013configurationSo6UIMenuCAC0ijkF13ConfigurationV_tFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = sub_21DBFA12C();
  v8 = objc_opt_self();
  [v8 _systemImageNamed_];

  v9 = sub_21DBFA12C();
  v21 = [v8 _systemImageNamed_];

  if (v2)
  {
    LOBYTE(v22) = 0;
    if (v3)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = 0;
    }

    v20 = sub_21D67DC54(&v22, 0, v10 | v1 | 0x100u, v4, v5, v6);
    v11 = 256;
  }

  else
  {
    v11 = 0;
    v20 = 0;
    if (v3)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = 0;
    }
  }

  v23 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  LOBYTE(v22) = byte_282EA6388;
  v12 = v1 | v11;
  sub_21D67DC54(&v22, 0, v1 | v11 | v10, v4, v5, v6);
  sub_21DBFBFEC();
  sub_21DBFC03C();
  sub_21DBFC04C();
  sub_21DBFBFFC();
  LOBYTE(v22) = byte_282EA6389;
  sub_21D67DC54(&v22, 0, v1 | v11 | v10, v4, v5, v6);
  sub_21DBFBFEC();
  sub_21DBFC03C();
  sub_21DBFC04C();
  sub_21DBFBFFC();
  LOBYTE(v22) = byte_282EA638A;
  sub_21D67DC54(&v22, 0, v1 | v11 | v10, v4, v5, v6);
  sub_21DBFBFEC();
  sub_21DBFC03C();
  sub_21DBFC04C();
  sub_21DBFBFFC();
  LOBYTE(v22) = byte_282EA638B;
  sub_21D67DC54(&v22, 0, v1 | v11 | v10, v4, v5, v6);
  sub_21DBFBFEC();
  sub_21DBFC03C();
  sub_21DBFC04C();
  sub_21DBFBFFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  LOBYTE(v22) = 5;
  *(inited + 32) = sub_21D67DC54(&v22, v21, v12 | v10, v4, v5, v6);
  sub_21D5621D8(inited);
  if (v23 >> 62)
  {
    sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
  }

  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  v14 = sub_21DBFB58C();
  if (v1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59720, &unk_21DC0BF60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DC08D20;
  *(v15 + 32) = v20;
  *(v15 + 40) = v14;
  v22 = v15;
  v16 = v20;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59728, &qword_21DC21A30);
  sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
  sub_21D0D0F1C(&qword_27CE59730, &qword_27CE59728, &qword_21DC21A30, MEMORY[0x277D83970]);
  sub_21DBFA41C();

  v18 = sub_21DBFB58C();

  return v18;
}

uint64_t _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO019makeLocationContextF013configurationSo6UIMenuCAC0ijF13ConfigurationV_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v36 = a1[2];
  v37 = a1[3];
  v3 = *(*a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v39 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
    v5 = 32;
    v38 = v2;
    while (1)
    {
      v9 = *(v1 + v5);
      v40 = TTRLocationQuickPickItem.titleAndImageForMenuItem()();
      isa = v40.image.value.super.isa;
      if (v2 == 6)
      {
        break;
      }

      if (v9 == 6)
      {
        goto LABEL_12;
      }

      if (v2 > 2)
      {
        if (v2 == 3)
        {
          v16 = 0x49676E6974746567;
          v17 = 0xEC0000007261436ELL;
        }

        else
        {
          if (v2 == 4)
          {
            v16 = 0x4F676E6974746567;
          }

          else
          {
            v16 = 0x6D6F74737563;
          }

          if (v2 == 4)
          {
            v17 = 0xEF726143664F7475;
          }

          else
          {
            v17 = 0xE600000000000000;
          }
        }
      }

      else if (v2)
      {
        if (v2 == 1)
        {
          v16 = 1701670760;
        }

        else
        {
          v16 = 1802661751;
        }

        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE700000000000000;
        v16 = 0x746E6572727563;
      }

      v19 = 0x4F676E6974746567;
      if (v9 != 4)
      {
        v19 = 0x6D6F74737563;
      }

      v20 = 0xEF726143664F7475;
      if (v9 != 4)
      {
        v20 = 0xE600000000000000;
      }

      if (v9 == 3)
      {
        v19 = 0x49676E6974746567;
        v20 = 0xEC0000007261436ELL;
      }

      v21 = 1802661751;
      if (v9 == 1)
      {
        v21 = 1701670760;
      }

      v22 = 0xE400000000000000;
      if (!v9)
      {
        v21 = 0x746E6572727563;
        v22 = 0xE700000000000000;
      }

      if (v9 <= 2)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v9 <= 2)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (v16 == v23 && v17 == v24)
      {
        v25 = isa;
        sub_21DBF8E0C();

        v12 = 1;
        LOBYTE(v2) = v38;
      }

      else
      {
        v26 = sub_21DBFC64C();
        v27 = isa;
        sub_21DBF8E0C();

        LOBYTE(v2) = v38;
        if ((v26 & 1) == 0)
        {
          goto LABEL_13;
        }

        v12 = 1;
      }

LABEL_14:
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      *(v14 + 24) = v2;
      *(v14 + 32) = v36;
      *(v14 + 40) = v37;
      *(v14 + 48) = v9;
      sub_21DBF8E0C();

      v35 = v14;
      v15 = sub_21DBFB77C();
      if (v9 > 4)
      {

LABEL_4:
        v6 = qword_27CE57490;
        v7 = v15;
        if (v6 != -1)
        {
          swift_once();
        }

        v8 = sub_21DBFA12C();
        [v7 setAccessibilityHint_];

        goto LABEL_7;
      }

      v18 = sub_21DBFC64C();

      if (v18)
      {
        goto LABEL_4;
      }

LABEL_7:

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      ++v5;
      --v3;
      v2 = v38;
      if (!v3)
      {
        v4 = v39;
        goto LABEL_55;
      }
    }

    if (v9 == 6)
    {
      v11 = v40.image.value.super.isa;
      sub_21DBF8E0C();
      v12 = 1;
      goto LABEL_14;
    }

LABEL_12:
    v13 = v40.image.value.super.isa;
    sub_21DBF8E0C();
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

LABEL_55:
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  *(v28 + 24) = v2;
  *(v28 + 32) = v36;
  *(v28 + 40) = v37;
  sub_21DBF8E0C();

  v29 = sub_21DBFB77C();
  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21DC09CF0;
  *(v30 + 32) = v29;
  v31 = v29;
  v32 = sub_21DBFB58C();
  if (v4 >> 62 && (result = sub_21DBFBD7C(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_21DBD1730(0, 0, v32);
    v33 = sub_21DBFB58C();

    return v33;
  }

  return result;
}

uint64_t _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO017makeAssignContextF013configurationSo6UIMenuCAC0ijF13ConfigurationV_tFZ_0(__n128 *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = *a1;
  v38 = a1[1];
  v39 = v1;
  v40 = v2;
  v37 = v3;
  v4 = v38.n128_u64[1];
  v5 = *(v38.n128_u64[1] + 16);
  v36 = MEMORY[0x277D84F90];
  if (v38.n128_u8[2])
  {
    sub_21DBF8E0C();
    if (v5)
    {
      sub_21D17EB08(0);
    }

    sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v7 = swift_allocObject();
    v8 = a1[1];
    *(v7 + 16) = *a1;
    *(v7 + 32) = v8;
    v9 = a1[3];
    *(v7 + 48) = a1[2];
    *(v7 + 64) = v9;
    sub_21D683D4C(&v37, v34);
    v10 = sub_21DBFB77C();
    MEMORY[0x223D42D80](v10, v11, v12, v13, v14);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  else
  {
    sub_21DBF8E0C();
  }

  v15 = swift_allocObject();
  v16 = v38;
  v17 = v39;
  *(v15 + 16) = v37;
  *(v15 + 32) = v16;
  v18 = v40;
  *(v15 + 48) = v17;
  *(v15 + 64) = v18;
  *(v15 + 80) = v4;
  *(v15 + 88) = v5 > 1;
  aBlock[4] = sub_21D683D3C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D67DAF4;
  aBlock[3] = &block_descriptor_65_1;
  v19 = _Block_copy(aBlock);
  v20 = objc_opt_self();
  sub_21D683D4C(&v37, v34);
  v21 = [v20 elementWithProvider_];
  _Block_release(v19);

  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC09CF0;
  *(v22 + 32) = v21;
  v23 = v21;
  v33 = v22;
  v24 = sub_21DBFB58C();
  MEMORY[0x223D42D80](v24, v25, v26, v27, v28);
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  if (v38.n128_u8[1])
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v33 = 0x800000021DC666E0;
    sub_21DBF516C();
  }

  v29 = sub_21DBFA12C();
  v30 = [objc_opt_self() _systemImageNamed_];

  v31 = sub_21DBFB58C();
  return v31;
}

uint64_t _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO014makeAttachmentF013configurationSo6UIMenuCAC0iF13ConfigurationV_tFZ_0(__int128 *a1)
{
  v1 = a1[1];
  v33 = *a1;
  v34 = v1;
  v35 = *(a1 + 4);
  v32 = MEMORY[0x277D84F90];
  if (v33)
  {
    sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    v5 = swift_allocObject();
    v6 = a1[1];
    *(v5 + 16) = *a1;
    *(v5 + 32) = v6;
    *(v5 + 48) = *(a1 + 4);
    sub_21D683C80(&v33, v31);
    v7 = sub_21DBFB77C();
    MEMORY[0x223D42D80](v7, v8, v9, v10, v11);
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  v12 = _s15RemindersUICore33TTRIAttachmentImportingControllerC16availableSourcesShyAC6SourceOGvgZ_0();
  v13 = 0;
  v14 = v12 + 56;
  do
  {
    if (!*(v12 + 16))
    {
      goto LABEL_12;
    }

    v25 = byte_282EA6EA0[v13 + 32];
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v25);
    v26 = sub_21DBFC82C();
    v27 = -1 << *(v12 + 32);
    v28 = v26 & ~v27;
    if (((*(v14 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_12;
    }

    v29 = ~v27;
    while (*(*(v12 + 48) + v28) != v25)
    {
      v28 = (v28 + 1) & v29;
      if (((*(v14 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (v25)
    {
      if (v25 != 1)
      {
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_9;
        }

LABEL_24:
        swift_once();
        goto LABEL_9;
      }

      if (qword_280D1BAA8 != -1)
      {
        goto LABEL_24;
      }
    }

    else if (qword_280D1BAA8 != -1)
    {
      goto LABEL_24;
    }

LABEL_9:
    sub_21DBF516C();
    v15 = sub_21DBFA12C();
    v16 = [objc_opt_self() _systemImageNamed_];

    sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
    v17 = swift_allocObject();
    v18 = v34;
    *(v17 + 16) = v33;
    *(v17 + 32) = v18;
    *(v17 + 48) = v35;
    *(v17 + 56) = v25;
    sub_21D683C80(&v33, v31);
    v19 = v16;
    v20 = sub_21DBFB77C();
    MEMORY[0x223D42D80](v20, v21, v22, v23, v24);
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

LABEL_12:
    ++v13;
  }

  while (v13 != 3);

  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  return sub_21DBFB58C();
}

uint64_t sub_21D682C84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *a2 = v3;
  v4 = a1[2];
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 25) = *(a1 + 25);
  v6 = a1[4];
  v5 = a1[5];
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;

  return a2;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration()
{
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);

  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration()
{
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration()
{
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;

  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  v4 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle.Separator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration()
{
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 3);
  v4 = a2[7];
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = a2[3];
  sub_21DBF8E0C();

  v4 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v4;

  v5 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v5;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;

  return a1;
}

uint64_t sub_21D683598(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = *v6;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;

      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v6;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return a1;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration()
{
}

uint64_t sub_21D6838B0(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t *assignWithCopy for TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  v4 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 25) = *(a2 + 25);
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t objectdestroy_49Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 120));

  return swift_deallocObject();
}

uint64_t sub_21D683C40(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 56);
  return v2(&v4, a1);
}

uint64_t objectdestroy_55Tm(uint64_t a1)
{

  if (*(v1 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D683D0C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_21D683D84()
{
  v1 = *(v0 + 64);
  memset(v3, 0, sizeof(v3));
  return v1(v3);
}

uint64_t sub_21D683DEC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 48);
  return v2(&v4, a1);
}

uint64_t objectdestroy_76Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_21D683E7C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = 6;
  return v2(&v4, a1);
}

unint64_t REMRemindersListDataView.SortingStyle.ChangeReason.rawValue.getter()
{
  v1 = 0x6E65746E49707061;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x724F6C61756E616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void REMRemindersListDataView.SortingStyle.ChangeReason.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_21DBFC45C();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_21D683FD0()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D6840A8(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D68416C(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D68424C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E65746E49707061;
  v4 = 0xD000000000000017;
  v5 = 0x800000021DC43930;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001BLL;
    v5 = 0x800000021DC43950;
  }

  if (*v1)
  {
    v3 = 0x724F6C61756E616DLL;
    v2 = 0xEE00676E69726564;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF70DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  sub_21D0FACE0(a1, &v18);
  if (v19)
  {
    sub_21D0D0FD0(&v18, v20);
    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v15 = (*(v14 + 64))(v13, v14);
    sub_21DBFAF7C();

    (*(v7 + 104))(v9, *MEMORY[0x277D45420], v6);
    LOBYTE(v15) = MEMORY[0x223D3F870](v12, v9);
    v16 = *(v7 + 8);
    v16(v9, v6);
    if (v15)
    {
      v16(v12, v6);
      (*(v7 + 16))(a3, a2, v6);
    }

    else
    {
      (*(v7 + 32))(a3, v12, v6);
    }

    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_21D45C980(&v18);
    return (*(v7 + 16))(a3, a2, v6);
  }
}

unint64_t sub_21D684504()
{
  result = qword_27CE5F810;
  if (!qword_27CE5F810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for REMRemindersListDataView.SortingStyle.ChangeReason, &type metadata for REMRemindersListDataView.SortingStyle.ChangeReason, v0, v1);
    atomic_store(result, &qword_27CE5F810);
  }

  return result;
}

uint64_t TTRShowScheduledSectionHeaderTitleFormatter.__allocating_init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v8 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v8 + v11, a2, v12);
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v8;
}

double TTRShowScheduledSectionHeaderTitleFormatter.title(for:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(a1, *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates), v8);
  v4 = v8[1];
  v5 = v10;
  v6 = v9;
  *a2 = v8[0];
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 64;
  *(a2 + 68) = 3;
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 255;
  return result;
}

uint64_t TTRShowScheduledSectionHeaderTitleFormatter.init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v4;
}

uint64_t TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)@<X0>(void (*a1)(void, void, void)@<X0>, int a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a4;
  v190 = a3;
  LODWORD(v200) = a2;
  v201 = a1;
  v183 = sub_21DBF732C();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_21DBF731C();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  v202 = v8;
  v203 = v9;
  MEMORY[0x28223BE20](v8);
  v176 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v193 = &v174 - v12;
  MEMORY[0x28223BE20](v13);
  v175 = &v174 - v14;
  MEMORY[0x28223BE20](v15);
  v184 = &v174 - v16;
  MEMORY[0x28223BE20](v17);
  v195 = &v174 - v18;
  MEMORY[0x28223BE20](v19);
  v191 = &v174 - v20;
  MEMORY[0x28223BE20](v21);
  v194 = &v174 - v22;
  v23 = sub_21DBF75BC();
  v198 = *(v23 - 8);
  v199 = v23;
  MEMORY[0x28223BE20](v23);
  v178 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v177 = &v174 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v174 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v174 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v174 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v36 - 8);
  v180 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v192 = &v174 - v39;
  MEMORY[0x28223BE20](v40);
  v179 = &v174 - v41;
  MEMORY[0x28223BE20](v42);
  v188 = &v174 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v174 - v45;
  MEMORY[0x28223BE20](v47);
  v196 = &v174 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v174 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v174 - v53;
  v55 = sub_21DBF75CC();
  v56 = *(v55 - 8);
  v57 = MEMORY[0x28223BE20](v55);
  v59 = (&v174 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v59, v201, v55, v57);
  v60 = (*(v56 + 88))(v59, v55);
  if (v60 == *MEMORY[0x277D455D0])
  {
    (*(v56 + 96))(v59, v55);
    v61 = *v59;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v62 = sub_21DBF516C();
    v201 = v63;
    v65 = v202;
    v64 = v203;
    if (*(v61 + 16))
    {
      v66 = v198;
      v67 = v199;
      (*(v198 + 16))(v35, v61 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v199);

      MEMORY[0x223D3FD50](v68);
      (*(v66 + 8))(v35, v67);
      v69 = 0;
      v70 = 0;
    }

    else
    {

      v70 = 2;
      v69 = 1;
    }

    (*(v64 + 56))(v54, v69, 1, v65);
    if (v200)
    {
      v93 = 2;
    }

    else
    {
      v93 = 3;
    }

    sub_21D46CAFC(v54, v51);
    if ((*(v64 + 48))(v51, 1, v65) == 1)
    {
      sub_21D46CB6C(v51);
      v94 = v201;
      *a5 = v62;
      *(a5 + 8) = v94;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *(a5 + 64) = -64;
      v95 = 1;
    }

    else
    {
      v96 = v194;
      (*(v64 + 32))(v194, v51, v65);
      TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v96, 0, &v204);
      v200 = v204;
      v97 = v64;
      v98 = v205;
      v99 = v206;
      v100 = v207;
      (*(v97 + 8))(v96, v65);
      v95 = 0;
      v101 = v201;
      *a5 = v62;
      *(a5 + 8) = v101;
      *(a5 + 16) = v200;
      *(a5 + 32) = v98;
      *(a5 + 40) = v99;
      *(a5 + 48) = v100;
      *(a5 + 56) = 0;
      *(a5 + 64) = 0x80;
    }

    *(a5 + 66) = v70;
    *(a5 + 65) = 0;
    *(a5 + 67) = 0;
    *(a5 + 68) = v93;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0;
    *(a5 + 112) = 0;
    *(a5 + 120) = -1;
    *(a5 + 121) = v95;
    v102 = v54;
    return sub_21D46CB6C(v102);
  }

  if (v60 == *MEMORY[0x277D455B0])
  {
    (*(v56 + 96))(v59, v55);
    v71 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F818, &qword_21DC21B08) + 48));
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v72 = sub_21DBF516C();
    v201 = v73;
    if (*(v71 + 16))
    {
      v75 = v198;
      v74 = v199;
      (*(v198 + 16))(v32, v71 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v199);

      v77 = v196;
      MEMORY[0x223D3FD50](v76);
      (*(v75 + 8))(v32, v74);
      v78 = 0;
      v79 = 0;
    }

    else
    {

      v79 = 2;
      v78 = 1;
      v77 = v196;
    }

    v120 = v202;
    v119 = v203;
    (*(v203 + 56))(v77, v78, 1, v202);
    if (v200)
    {
      v121 = 2;
    }

    else
    {
      v121 = 3;
    }

    sub_21D46CAFC(v77, v46);
    if ((*(v119 + 48))(v46, 1, v120) == 1)
    {
      sub_21D46CB6C(v46);
      v122 = v201;
      *a5 = v72;
      *(a5 + 8) = v122;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *(a5 + 64) = -64;
      v123 = 1;
    }

    else
    {
      v124 = v191;
      (*(v119 + 32))(v191, v46, v120);
      TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v124, 0, &v204);
      v200 = v204;
      v125 = v205;
      v126 = v206;
      v127 = v207;
      v128 = v124;
      v77 = v196;
      (*(v203 + 8))(v128, v120);
      v123 = 0;
      v129 = v201;
      *a5 = v72;
      *(a5 + 8) = v129;
      *(a5 + 16) = v200;
      *(a5 + 32) = v125;
      *(a5 + 40) = v126;
      *(a5 + 48) = v127;
      *(a5 + 56) = 0;
      v119 = v203;
      *(a5 + 64) = 0x80;
    }

    *(a5 + 66) = v79;
    *(a5 + 65) = 0;
    *(a5 + 67) = 0;
    *(a5 + 68) = v121;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0;
    *(a5 + 112) = 0;
    *(a5 + 120) = -1;
    *(a5 + 121) = v123;
    sub_21D46CB6C(v77);
    return (*(v119 + 8))(v59, v120);
  }

  else
  {
    if (v60 != *MEMORY[0x277D455B8])
    {
      v104 = v198;
      v103 = v199;
      v105 = v195;
      if (v60 == *MEMORY[0x277D455C8])
      {
        (*(v56 + 96))(v59, v55);
        v106 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F818, &qword_21DC21B08) + 48));
        v107 = v203;
        v108 = *(v203 + 32);
        v109 = v184;
        v110 = v59;
        v111 = v202;
        v108(v184, v110, v202);
        if (*(v106 + 16))
        {
          v112 = *(v104 + 16);
          v113 = v106 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
          v201 = v108;
          v114 = v177;
          v112(v177, v113, v103);

          v116 = v188;
          MEMORY[0x223D3FD50](v115);
          v117 = v114;
          v108 = v201;
          (*(v104 + 8))(v117, v103);
          v118 = 0;
        }

        else
        {

          v118 = 1;
          v116 = v188;
        }

        (*(v107 + 56))(v116, v118, 1, v111);
        v144 = v109;
        v197 = TTRDateBucketSectionHeaderTitleFormatterBase.monthHeaderTitleString(for:)(v109);
        v198 = v145;
        v146 = v116;
        v147 = *(v107 + 48);
        LODWORD(v199) = 2 * (v147(v146, 1, v111) == 1);
        if (v200)
        {
          v148 = 2;
        }

        else
        {
          v148 = 3;
        }

        LODWORD(v201) = v148;
        v149 = v146;
        v150 = v179;
        sub_21D46CAFC(v149, v179);
        if (v147(v150, 1, v111) == 1)
        {
          (*(v107 + 8))(v144, v111);
          sub_21D46CB6C(v150);
          v151 = v198;
          *a5 = v197;
          *(a5 + 8) = v151;
          *(a5 + 16) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          *(a5 + 64) = -64;
          v152 = 1;
        }

        else
        {
          v153 = v150;
          v154 = v175;
          v108(v175, v153, v111);
          TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v154, 0, &v204);
          v200 = v204;
          v155 = v205;
          v156 = v206;
          v157 = v207;
          v158 = *(v107 + 8);
          v158(v154, v111);
          v158(v144, v111);
          v152 = 0;
          v159 = v198;
          *a5 = v197;
          *(a5 + 8) = v159;
          *(a5 + 16) = v200;
          *(a5 + 32) = v155;
          *(a5 + 40) = v156;
          *(a5 + 48) = v157;
          *(a5 + 56) = 0;
          *(a5 + 64) = 0x80;
        }

        *(a5 + 66) = v199;
        *(a5 + 65) = 0;
        *(a5 + 67) = 0;
        *(a5 + 68) = v201;
        *(a5 + 72) = 0u;
        *(a5 + 88) = 0u;
        *(a5 + 104) = 0;
        *(a5 + 112) = 0;
        *(a5 + 120) = -1;
        *(a5 + 121) = v152;
        v102 = v188;
      }

      else
      {
        v134 = v203;
        if (v60 != *MEMORY[0x277D455C0])
        {
          result = sub_21DBFC63C();
          __break(1u);
          return result;
        }

        (*(v56 + 96))(v59, v55);
        v135 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F818, &qword_21DC21B08) + 48));
        v136 = v193;
        v137 = v59;
        v138 = v202;
        v196 = *(v134 + 32);
        (v196)(v193, v137, v202);
        (*(v134 + 16))(v105, v136, v138);
        (*(v182 + 104))(v181, *MEMORY[0x277D454D8], v183);
        v139 = v185;
        sub_21DBF730C();
        v140 = v192;
        if (*(v135 + 16))
        {
          v141 = v178;
          (*(v104 + 16))(v178, v135 + ((*(v104 + 80) + 32) & ~*(v104 + 80)), v103);

          MEMORY[0x223D3FD50](v142);
          (*(v104 + 8))(v141, v103);
          v143 = 0;
        }

        else
        {

          v143 = 1;
        }

        v160 = v180;
        (*(v134 + 56))(v140, v143, 1, v138);
        v161 = v139;
        v197 = TTRDateBucketSectionHeaderTitleFormatterBase.yearHeaderTitleString(for:)();
        v198 = v162;
        v163 = v140;
        v164 = *(v134 + 48);
        LODWORD(v199) = 2 * (v164(v163, 1, v138) == 1);
        if (v200)
        {
          v165 = 2;
        }

        else
        {
          v165 = 3;
        }

        LODWORD(v201) = v165;
        sub_21D46CAFC(v163, v160);
        if (v164(v160, 1, v138) == 1)
        {
          (*(v186 + 8))(v161, v187);
          (*(v134 + 8))(v193, v138);
          sub_21D46CB6C(v160);
          v166 = v198;
          *a5 = v197;
          *(a5 + 8) = v166;
          *(a5 + 16) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          *(a5 + 64) = -64;
          v167 = 1;
        }

        else
        {
          v168 = v176;
          (v196)(v176, v160, v138);
          TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v168, 0, &v204);
          v200 = v204;
          v169 = v205;
          v170 = v206;
          v171 = v207;
          v172 = *(v134 + 8);
          v172(v168, v138);
          (*(v186 + 8))(v161, v187);
          v172(v193, v138);
          v167 = 0;
          v173 = v198;
          *a5 = v197;
          *(a5 + 8) = v173;
          *(a5 + 16) = v200;
          *(a5 + 32) = v169;
          *(a5 + 40) = v170;
          *(a5 + 48) = v171;
          *(a5 + 56) = 0;
          *(a5 + 64) = 0x80;
        }

        *(a5 + 66) = v199;
        *(a5 + 65) = 0;
        *(a5 + 67) = 0;
        *(a5 + 68) = v201;
        *(a5 + 72) = 0u;
        *(a5 + 88) = 0u;
        *(a5 + 104) = 0;
        *(a5 + 112) = 0;
        *(a5 + 120) = -1;
        *(a5 + 121) = v167;
        v102 = v192;
      }

      return sub_21D46CB6C(v102);
    }

    (*(v56 + 96))(v59, v55);
    v80 = v198;
    v81 = (*(v198 + 32))(v29, v59, v199);
    v82 = v195;
    MEMORY[0x223D3FD50](v81);
    TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v82, *(v197 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates), &v204);
    v196 = v204;
    v193 = v205;
    v194 = *(&v204 + 1);
    v192 = v206;
    v201 = v207;
    v83 = v202;
    v84 = *(v203 + 8);
    v84(v82, v202);
    sub_21DBF75AC();
    LODWORD(v203) = v190();

    MEMORY[0x223D3FD50](v85);
    v86 = sub_21DBF589C();
    v87 = (v84)(v82, v83);
    if (v86)
    {
      result = (*(v80 + 8))(v29, v199);
      v89 = 0;
      v90 = 0;
      v91 = 0;
      if (v200)
      {
        v92 = 2;
      }

      else
      {
        v92 = 3;
      }
    }

    else
    {
      MEMORY[0x223D3FD50](v87);
      v130 = sub_21DBF590C();
      v84(v82, v83);
      result = (*(v80 + 8))(v29, v199);
      v90 = 1;
      if (v203)
      {
        v91 = 1;
      }

      else
      {
        v91 = 2;
      }

      v89 = v203 ^ 1;
      v92 = (v203 ^ 1) & 1;
      if (v130)
      {
        v92 = 3;
      }
    }

    v132 = v193;
    v131 = v194;
    *a5 = v196;
    *(a5 + 8) = v131;
    v133 = v192;
    *(a5 + 16) = v132;
    *(a5 + 24) = v133;
    *(a5 + 32) = v201;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 64;
    *(a5 + 66) = v91;
    *(a5 + 65) = v90;
    *(a5 + 67) = 0;
    *(a5 + 68) = v92;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 120) = -1;
    *(a5 + 121) = v89 & 1;
  }

  return result;
}

double TTRShowScheduledSectionHeaderTitleFormatter.title(for:hasVisibleReminders:)@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a2;
  v17 = a1;
  v5 = sub_21DBF563C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223D3FD50](v7);
  TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v9, *(v3 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates), &v18);
  v15 = v18;
  v11 = v19;
  v10 = v20;
  v12 = v21;
  (*(v6 + 8))(v9, v5);
  sub_21DBF75AC();
  v13 = v17();

  *a3 = v15;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v12;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 65856;
  *(a3 + 68) = (v13 & 1) == 0;
  result = 0.0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 255;
  return result;
}

uint64_t TTRShowScheduledSectionHeaderTitleFormatter.__deallocating_deinit()
{
  TTRDateBucketSectionHeaderTitleFormatterBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowScheduledSectionHeaderTitleFormatter(uint64_t a1)
{
  result = qword_280D0E688;
  if (!qword_280D0E688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s15RemindersUICore17TTRAttachmentInfoO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_21DBF54CC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for TTRAttachmentInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v44 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v44 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE5F830, &qword_21DC21BC8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v44 - v24;
  v27 = (&v44 + *(v26 + 56) - v24);
  sub_21D686BFC(a1, &v44 - v24);
  sub_21D686BFC(v47, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D686BFC(v25, v16);
      v37 = *v16;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_21D686BFC(v25, v13);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v30 = v44;
          v29 = v45;
          v31 = v46;
          (*(v45 + 32))(v44, v27, v46);
          v32 = sub_21DBF544C();
          v33 = *(v29 + 8);
          v33(v30, v31);
          v34 = v13;
LABEL_15:
          v33(v34, v31);
          goto LABEL_20;
        }

        (*(v45 + 8))(v13, v46);
        goto LABEL_18;
      }

      sub_21D686BFC(v25, v10);
      v37 = *v10;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_12:

        goto LABEL_18;
      }
    }

    v38 = *v27;
    sub_21D1B2ABC();
    v32 = sub_21DBFB63C();

LABEL_20:
    sub_21D686858(v25, v39);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D686BFC(v25, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v45;
      v31 = v46;
      (*(v45 + 32))(v7, v27, v46);
      v32 = sub_21DBF544C();
      v33 = *(v40 + 8);
      v33(v7, v31);
      v34 = v19;
      goto LABEL_15;
    }

    (*(v45 + 8))(v19, v46);
  }

  else
  {
    sub_21D686BFC(v25, v22);
    v35 = *v22;
    v36 = v22[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v42 = *v27;
      v41 = v27[1];
      v32 = sub_21D89346C(v35, v36, v42, v41);
      sub_21D17B8A8(v42, v41);
      sub_21D17B8A8(v35, v36);
      goto LABEL_20;
    }

    sub_21D17B8A8(v35, v36);
  }

LABEL_18:
  sub_21D686C60(v25);
  v32 = 0;
  return v32 & 1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRAttachmentInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_9:
        v12 = sub_21DBF54CC();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        goto LABEL_10;
      }

      v9 = *a2;
      v8 = a2[1];
      sub_21D1BAF70(v9, v8);
      *a1 = v9;
      a1[1] = v8;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_9;
      }

      v10 = *a2;
      *a1 = *a2;
      v11 = v10;
    }

LABEL_10:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *a2;
  *a1 = *a2;
  a1 = (v7 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRAttachmentInfo(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_5:
      v4 = *a1;

      return;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        return;
      }

      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return;
    }

LABEL_10:
    v5 = sub_21DBF54CC();
    v6 = *(*(v5 - 8) + 8);

    v6(a1, v5);
    return;
  }

  v7 = *a1;
  v8 = *(a1 + 8);

  sub_21D17B8A8(v7, v8);
}

uint64_t *initializeWithCopy for TTRAttachmentInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_7:
      v10 = sub_21DBF54CC();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      goto LABEL_8;
    }

    v7 = *a2;
    v6 = a2[1];
    sub_21D1BAF70(v7, v6);
    *a1 = v7;
    a1[1] = v6;
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_7;
    }

    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
  }

LABEL_8:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *assignWithCopy for TTRAttachmentInfo(uint64_t *a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  if (a1 != a2)
  {
    sub_21D686858(a1, a4);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_8:
        v11 = sub_21DBF54CC();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        goto LABEL_9;
      }

      v8 = *a2;
      v7 = a2[1];
      sub_21D1BAF70(v8, v7);
      *a1 = v8;
      a1[1] = v7;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_8;
      }

      v9 = *a2;
      *a1 = *a2;
      v10 = v9;
    }

LABEL_9:
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D686858(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRAttachmentInfo(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TTRAttachmentInfo(uint64_t a1)
{
  result = qword_27CE5F820;
  if (!qword_27CE5F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *initializeWithTake for TTRAttachmentInfo(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 1)
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

void *assignWithTake for TTRAttachmentInfo(void *a1, const void *a2, uint64_t a3, __n128 a4)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D686858(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 1)
  {
    v8 = sub_21DBF54CC();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_21D686B58(uint64_t a1)
{
  result = sub_21DBF54CC();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D686BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAttachmentInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D686C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE5F830, &qword_21DC21BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static UIColor.transformOptionalValue(_:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = [objc_opt_self() magentaColor];
  }

  v3 = a1;
  return v2;
}

id sub_21D686D90@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = [objc_opt_self() magentaColor];
    v3 = 0;
  }

  *a2 = v4;

  return v3;
}

uint64_t TTRValueBasedMenuItem.SelectionState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D686EA0(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRValueBasedMenuItem.SelectionState.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t TTRValueBasedMenuItem.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void TTRValueBasedMenuItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void *TTRValueBasedMenuItem.image.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRValueBasedMenuItem.init(title:image:state:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a4;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = v11;
  v12 = type metadata accessor for TTRValueBasedMenuItem(0, a6, a7, a4);
  v13 = *(*(a6 - 8) + 32);
  v14 = a8 + *(v12 + 44);

  return v13(v14, a5, a6);
}

uint64_t static TTRValueBasedMenuItem.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  v9 = *a1 == *a2 && a1[1] == v8;
  if (!v9 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[2];
  v11 = *(a2 + 16);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    sub_21D5B4B18();
    v12 = v11;
    v13 = v10;
    v14 = sub_21DBFB63C();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    type metadata accessor for TTRValueBasedMenuItem(0, a3, a4, v8);
    return sub_21DBFA10C() & 1;
  }

  return 0;
}

uint64_t static TTRValueBasedMenuElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v7 = type metadata accessor for TTRValueBasedMenuItem(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v30 = &v30 - v9;
  v31 = a3;
  v32 = a4;
  v11 = type metadata accessor for TTRValueBasedMenuElement(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v35 = (&v30 - v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v12;
  v21 = *(v12 + 16);
  v21(&v30 - v17, v34, v11, v16);
  (v21)(&v18[v20], a2, v11);
  v34 = v8;
  v22 = *(v8 + 48);
  if (v22(v18, 1, v7) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v35, v18, v11);
    if (v22(&v18[v20], 1, v7) != 1)
    {
      v24 = v34;
      v25 = &v18[v20];
      v26 = v30;
      (*(v34 + 32))(v30, v25, v7);
      v27 = v35;
      v23 = static TTRValueBasedMenuItem.== infix(_:_:)(v35, v26, v31, v32);
      v28 = *(v24 + 8);
      v28(v26, v7);
      v28(v27, v7);
LABEL_8:
      v15 = v33;
      goto LABEL_9;
    }

    (*(v34 + 8))(v35, v7);
  }

  v23 = 0;
  v11 = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, v11);
  return v23 & 1;
}

uint64_t TTRValueBasedMenu.selectedItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for TTRValueBasedMenuItem(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v12 = type metadata accessor for TTRValueBasedMenuElement(0, v5, v6, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v34 = &v28 - v17;
  v18 = *v3;
  sub_21DBF8E0C();
  if (sub_21DBFA6DC())
  {
    v28 = v14;
    v29 = v8;
    v30 = a3;
    v19 = 0;
    v35 = (v13 + 32);
    v36 = (v13 + 16);
    v20 = (v8 + 48);
    v31 = (v8 + 8);
    v32 = (v13 + 8);
    v33 = (v8 + 32);
    v21 = v34;
    while (1)
    {
      v22 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v22)
      {
        (*(v13 + 16))(v21, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19, v12);
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        if (v28 != 8)
        {
          __break(1u);
          return result;
        }

        v37 = result;
        (*v36)(v21, &v37, v12);
        swift_unknownObjectRelease();
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:

          v27 = 1;
          v8 = v29;
          a3 = v30;
          return (*(v8 + 56))(a3, v27, 1, v7);
        }
      }

      (*v35)(v15, v21, v12);
      if ((*v20)(v15, 1, v7) == 1)
      {
        (*v32)(v15, v12);
      }

      else
      {
        v24 = v10;
        v25 = *v33;
        (*v33)(v24, v15, v7);
        if (!v24[24])
        {

          a3 = v30;
          v25(v30, v24, v7);
          v27 = 0;
          v8 = v29;
          return (*(v8 + 56))(a3, v27, 1, v7);
        }

        (*v31)(v24, v7);
        v10 = v24;
        v21 = v34;
      }

      ++v19;
      if (v23 == sub_21DBFA6DC())
      {
        goto LABEL_14;
      }
    }
  }

  v27 = 1;
  return (*(v8 + 56))(a3, v27, 1, v7);
}

uint64_t static TTRValueBasedMenu.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TTRValueBasedMenuElement(0, a3, a4, a4);
  swift_getWitnessTable(protocol conformance descriptor for TTRValueBasedMenuElement<A>, v4);

  return sub_21DBFA75C();
}

uint64_t sub_21D687A3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D687AEC(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-26 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
    v14 = v11 + v6 + 9;
    v15 = v12 + v6 + 9;
    v16 = *(v5 + 16);
    sub_21DBF8E0C();
    v17 = v13;
    v16(v14 & ~v6, v15 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_21D687C1C(uint64_t a1, uint64_t a2)
{

  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);

  return v6(v7);
}

void *sub_21D687CA0(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  v8 = *(a3 + 16);
  v9 = *(*(v8 - 8) + 16);
  v10 = *(*(v8 - 8) + 80);
  v11 = v10 + 9 + v5;
  v12 = v10 + 9 + v6;
  sub_21DBF8E0C();
  v13 = v7;
  v9(v11 & ~v10, v12 & ~v10, v8);
  return a1;
}

void *sub_21D687D54(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v6 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *v6;
  *v6 = *v7;
  v10 = v8;

  *(v6 + 8) = *(v7 + 8);
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 24))((*(v11 + 80) + 9 + v6) & ~*(v11 + 80), (*(v11 + 80) + 9 + v7) & ~*(v11 + 80));
  return a1;
}

_OWORD *sub_21D687E20(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((*(v6 + 80) + 9 + v4) & ~*(v6 + 80), (*(v6 + 80) + 9 + v5) & ~*(v6 + 80));
  return a1;
}

void *sub_21D687EB0(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v7;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 9 + v7) & ~*(v10 + 80), (*(v10 + 80) + 9 + v8) & ~*(v10 + 80));
  return a1;
}

uint64_t sub_21D687F60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 25) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
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

void sub_21D6880EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 25) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

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

uint64_t sub_21D68835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TTRValueBasedMenuItem(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_21D6883D8(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 25) & ~v6) + *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *__dst = *a2;
    __dst = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  v11 = ~v6;
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = a2[1];
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & v11, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    v16 = a2[1];
    *__dst = *a2;
    __dst[1] = v16;
    v17 = (__dst + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    v20 = v18 + v6;
    v21 = v17 + v6 + 9;
    v22 = v20 + 9;
    v23 = *(v5 + 16);
    sub_21DBF8E0C();
    v24 = v19;
    v23(v21 & v11, v22 & v11, v4);
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v7);
}

uint64_t sub_21D688590(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v11 = v4;
  if ((*(v4 + 84) & 0x80000000) != 0)
  {
    result = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & v6);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 8);
  if (v7 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

    v10 = *(v11 + 8);

    return v10((v9 + v5 + 9) & v6, v3);
  }

  return result;
}

void *sub_21D6886A0(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ~v5;
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v8 = a2[1];
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    if (v8 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v14 = a2[1];
    *a1 = *a2;
    a1[1] = v14;
    v15 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v16 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
    v18 = v15 + v5 + 9;
    v19 = v16 + v5 + 9;
    v20 = *(v4 + 16);
    v21 = a1;
    sub_21DBF8E0C();
    v22 = v17;
    v20(v18 & v7, v19 & v7, v3);
    return v21;
  }

  v10 = a1;
  v11 = a2;
  v12 = (*(v4 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & v7, *(v4 + 84), v3);
  a2 = v11;
  v13 = v12;
  a1 = v10;
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 25) & ~v5) + v6);
}

void *sub_21D688828(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = (v8 + 25) & ~v8;
  v30 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v15 = *(v6 + 48);
    v29 = v15((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8, v7, v5);
    v10 = (v8 + 25) & ~v8;
    v13 = v15((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8, v7, v5);
    if (!v29)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v13)
    {
      goto LABEL_9;
    }

    *a1 = *a2;
    a1[1] = a2[1];
    v17 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    v20 = v17 + v8 + 9;
    v21 = v18 + v8 + 9;
    v22 = *(v6 + 16);
    sub_21DBF8E0C();
    v23 = v19;
    v22(v20 & v30, v21 & v30, v5);
    return a1;
  }

  v11 = a1[1];
  v12 = a2[1];
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  v13 = v12 + 1;
  if (v11 <= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v13)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    sub_21DBF8E0C();

    v24 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    v27 = *v24;
    *v24 = *v25;
    v28 = v26;

    *(v24 + 8) = *(v25 + 8);
    (*(v6 + 24))((v24 + v8 + 9) & v30, (v25 + v8 + 9) & v30, v5);
    return a1;
  }

  v14 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(v6 + 8))((v14 + v8 + 9) & v30, v5);
LABEL_9:

  return memcpy(a1, a2, v10 + v9);
}

_OWORD *sub_21D688AEC(_OWORD *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ~v5;
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v8 = a2[1];
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    if (v8 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v14 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
    v16 = v14 + v5 + 9;
    v17 = v15 + v5 + 9;
    v18 = a1;
    (*(v4 + 32))(v16 & v7, v17 & v7, v3);
    return v18;
  }

  v10 = a1;
  v11 = a2;
  v12 = (*(v4 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & v7, *(v4 + 84), v3);
  a2 = v11;
  v13 = v12;
  a1 = v10;
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 25) & ~v5) + v6);
}

void *sub_21D688C68(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = *(v6 + 64);
  v11 = (v8 + 25) & ~v8;
  v25 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v16 = *(v6 + 48);
    v17 = v16((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & v9, v7, v5);
    v14 = v16((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & v9, v7, v5);
    v11 = (v8 + 25) & ~v8;
    if (!v17)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v14)
    {
      goto LABEL_9;
    }

    *a1 = *a2;
    v19 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    (*(v6 + 32))((v19 + v8 + 9) & v25, (v20 + v8 + 9) & v25, v5);
    return a1;
  }

  v12 = a1[1];
  v13 = a2[1];
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 + 1;
  if (v12 <= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v14)
  {
    v21 = a2[1];
    *a1 = *a2;
    a1[1] = v21;

    v22 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v22;
    *v22 = *v23;

    *(v22 + 8) = *(v23 + 8);
    (*(v6 + 40))((v22 + v8 + 9) & v25, (v23 + v8 + 9) & v25, v5);
    return a1;
  }

  v15 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(v6 + 8))((v15 + v8 + 9) & v25, v5);
LABEL_9:

  return memcpy(a1, a2, v11 + v10);
}

uint64_t sub_21D688EF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 25) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_7;
  }

  v12 = (((1 << v9) + a2 - v7) >> v9) + 1;
  if (HIWORD(v12))
  {
    v10 = *(a1 + v8);
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      v17 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
    }

    else
    {
      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      v17 = v16 + 1;
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v12 > 0xFF)
  {
    v10 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v12 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 <= 3)
    {
      v14 = ((v6 + 25) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v15 = *a1;
      }
    }

    else if (v14 == 1)
    {
      v15 = *a1;
    }

    else
    {
      v15 = *a1;
    }
  }

  else
  {
    v15 = 0;
  }

  return (v15 | v13) + v7;
}

void sub_21D6890A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 25) & ~v10) + *(*(*(a4 + 16) - 8) + 64);
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10;
        v20 = a2 + 1;

        v18(v19, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *a1 = a2 - 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

uint64_t sub_21D689310(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if ((*(v2 + 84) & 0x80000000) != 0)
  {
    return (*(v2 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v2 + 80) + 9) & ~*(v2 + 80));
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  return (v3 + 1);
}

void sub_21D689384(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  if (v4 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v3 + 84);
  }

  v6 = *(v3 + 80);
  v7 = ~v6;
  if (v5 >= a2)
  {
    if (a2)
    {
      if ((v4 & 0x80000000) != 0)
      {
        v13 = *(v3 + 56);
        v14 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & v7;

        v13(v14);
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
  }

  else
  {
    v8 = ((v6 + 25) & v7) + *(v3 + 64);
    if (v8 <= 3)
    {
      v9 = ~(-1 << (8 * v8));
    }

    else
    {
      v9 = -1;
    }

    if (v8)
    {
      v10 = v9 & (~v5 + a2);
      if (v8 <= 3)
      {
        v11 = v8;
      }

      else
      {
        v11 = 4;
      }

      bzero(a1, v8);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          *a1 = v10;
          a1[2] = BYTE2(v10);
        }

        else
        {
          *a1 = v10;
        }
      }

      else if (v11 == 1)
      {
        *a1 = v10;
      }

      else
      {
        *a1 = v10;
      }
    }
  }
}

uint64_t TTRTipTimeZoneOverride.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipTimeZoneOverride.message.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipTimeZoneOverride.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8, &unk_21DC21E50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0, &unk_21DC2A310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8, &qword_21DC21E60);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

unint64_t sub_21D689974()
{
  result = qword_27CE5F9D0;
  if (!qword_27CE5F9D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTipTimeZoneOverride, &type metadata for TTRTipTimeZoneOverride, v0, v1);
    atomic_store(result, &qword_27CE5F9D0);
  }

  return result;
}

uint64_t sub_21D6899CC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D689AA4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D689B98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8, &unk_21DC21E50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0, &unk_21DC2A310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8, &qword_21DC21E60);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D689E54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21D44DA88();
  result = MEMORY[0x223D41550](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *TTRReminderLocationOptionsProvider.__allocating_init(store:meCardProvider:geoService:)(void *a1, void *a2, void *a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = sub_21D68C0AC(a1, v9, v12, v3, v7, v10, v8, v11);

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v13;
}

uint64_t TTRReminderLocationOptionsProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderLocationOptionsProvider.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRReminderLocationOptionsProvider.homeLocation.getter()
{

  sub_21DBF909C();

  return v1;
}

uint64_t TTRReminderLocationOptionsProvider.workLocation.getter()
{

  sub_21DBF909C();

  return v2;
}

uint64_t TTRReminderLocationOptionsProvider.canUseVehicleEvent.getter()
{

  sub_21DBF909C();

  return v3;
}

uint64_t TTRReminderLocationOptionsProvider.locationOptionsPublisher.getter()
{
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E760, &qword_21DC1CD80);
  sub_21D0D0F1C(&unk_280D0C440, &qword_27CE5E760, &qword_21DC1CD80, MEMORY[0x277CBCE48]);
  sub_21DBF921C();

  v5 = sub_21DBF920C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

_BYTE *sub_21D68A324@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result[17])
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = result[16];
    v5 = *result;
    v3 = *(result + 1);
    v6 = v3;
    result = v5;
  }

  *a2 = v5;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

void *TTRReminderLocationOptionsProvider.init(store:meCardProvider:geoService:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a3[3];
  v16 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_21D68BF44(a1, v13, v20, v4, v9, v15, v8, v16);

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v22;
}

uint64_t sub_21D68A53C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9E0, &qword_21DC21FF8);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  MEMORY[0x28223BE20](v1);
  v32 = v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9E8, &qword_21DC22000);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v33 = v31 - v6;
  v7 = sub_21DBF63EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D32E4(v0 + 72, &v39);
  v11 = swift_allocObject();
  sub_21D0D0FD0(&v39, v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9F0, &qword_21DC22008);
  swift_allocObject();
  *&v39 = sub_21DBF911C();
  sub_21D0D0F1C(&qword_280D17950, &qword_27CE5F9F0, &qword_21DC22008, MEMORY[0x277CBCEB0]);
  v12 = sub_21DBF920C();

  *&v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9F8, &qword_21DC22010);
  v13 = MEMORY[0x277CBCD90];
  sub_21D0D0F1C(&qword_280D17970, &qword_27CE5F9F8, &qword_21DC22010, MEMORY[0x277CBCD90]);
  v14 = sub_21DBF92EC();

  *&v39 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA00, &qword_21DC22018);
  sub_21D0D0F1C(&qword_280D179E0, &qword_27CE5FA00, &qword_21DC22018, MEMORY[0x277CBCC78]);
  v15 = sub_21DBF920C();

  v16 = *(v8 + 104);
  v16(v10, *MEMORY[0x277D44FD8], v7);
  v17 = v31[1];
  v18 = sub_21D68AB74(v10, v15);
  v19 = *(v8 + 8);
  v19(v10, v7);
  v16(v10, *MEMORY[0x277D44FE0], v7);
  v20 = v17;
  v21 = sub_21D68AB74(v10, v15);
  v19(v10, v7);

  sub_21DBF909C();

  v22 = *(&v39 + 1);
  LOBYTE(v8) = v40;

  v38 = v21;
  *&v39 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA08, &qword_21DC22020);
  sub_21D0D0F1C(&qword_280D17978, &qword_27CE5FA08, &qword_21DC22020, v13);
  v23 = v32;
  sub_21DBF8F8C();
  v24 = swift_allocObject();
  *(v24 + 16) = v8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_21D68C2B8;
  *(v25 + 24) = v24;
  sub_21D0D0F1C(&qword_280D179E8, &qword_27CE5F9E0, &qword_21DC21FF8, MEMORY[0x277CBCC10]);
  v27 = v33;
  v26 = v34;
  sub_21DBF927C();

  (*(v35 + 8))(v23, v26);
  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D17A00, &qword_27CE5F9E8, &qword_21DC22000, MEMORY[0x277CBCC08]);
  v28 = v36;
  v29 = sub_21DBF93CC();

  (*(v37 + 8))(v27, v28);
  *(v20 + 120) = v29;
}

uint64_t sub_21D68AB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF63EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA10, &qword_21DC22028);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v20 = v19 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA18, &qword_21DC22030);
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v19 - v8;
  v25 = a2;
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v19[1] = sub_21DBF8FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9F8, &qword_21DC22010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA20, &qword_21DC22038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA28, &qword_21DC22040);
  v13 = MEMORY[0x277CBCD90];
  sub_21D0D0F1C(&qword_280D17970, &qword_27CE5F9F8, &qword_21DC22010, MEMORY[0x277CBCD90]);
  sub_21D0D0F1C(&qword_280D17980, &qword_27CE5FA28, &qword_21DC22040, v13);
  v14 = v20;
  sub_21DBF934C();

  v25 = 0;
  sub_21D0D0F1C(&qword_280D179C8, &qword_27CE5FA10, &qword_21DC22028, MEMORY[0x277CBCCE0]);
  v15 = v22;
  sub_21DBF922C();
  (*(v24 + 8))(v14, v15);
  sub_21D0D0F1C(&qword_280D17A18, &qword_27CE5FA18, &qword_21DC22030, MEMORY[0x277CBCB78]);
  v16 = v21;
  v17 = sub_21DBF920C();
  (*(v23 + 8))(v9, v16);
  return v17;
}

void sub_21D68AF98(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = v3;

    v5 = v2;
    sub_21DBF908C();
  }
}

void sub_21D68B040(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21DBF633C();

  sub_21DBF631C();
  sub_21DBF6A6C();

  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D22D130;
  *(v7 + 24) = v6;

  v8 = sub_21DBF816C();
  sub_21DBF820C();

  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D22D130;
  *(v9 + 24) = v6;
  v10 = sub_21DBF816C();
  sub_21DBF822C();
}

uint64_t sub_21D68B1D4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a3;
  v39 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA30, &qword_21DC22048);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA38, &qword_21DC22050);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA40, &qword_21DC22058);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA48, &unk_21DC22060);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = *a1;
  v20 = sub_21DBFB9FC();
  if (*(v20 + 16) && (v21 = sub_21D17EDE0(a2), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v40 = sub_21D68B78C(v23, a2, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA60, &unk_21DC22070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA20, &qword_21DC22038);
      sub_21D0D0F1C(&qword_27CE5FA68, &qword_27CE5FA60, &unk_21DC22070, MEMORY[0x277CBCD90]);
      v24 = v35;
      sub_21DBF927C();

      sub_21D0D0F1C(&qword_27CE5FA70, &qword_27CE5FA30, &qword_21DC22048, MEMORY[0x277CBCC08]);
      v25 = v37;
      v26 = sub_21DBF920C();

      result = (*(v36 + 8))(v24, v25);
    }

    else
    {
      v28 = objc_opt_self();
      v29 = sub_21DBFA12C();
      v30 = [v28 internalErrorWithDebugDescription_];

      v40 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA20, &qword_21DC22038);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
      sub_21DBF90CC();
      sub_21D0D0F1C(&qword_27CE5FA58, &qword_27CE5FA38, &qword_21DC22050, MEMORY[0x277CBCE70]);
      v31 = v34;
      v26 = sub_21DBF920C();

      result = (*(v33 + 8))(v10, v31);
    }
  }

  else
  {

    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA20, &qword_21DC22038);
    sub_21DBF90EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    sub_21DBF90DC();
    (*(v12 + 8))(v14, v11);
    sub_21D0D0F1C(&qword_27CE5FA50, &qword_27CE5FA48, &unk_21DC22060, MEMORY[0x277CBCF40]);
    v26 = sub_21DBF920C();
    result = (*(v16 + 8))(v18, v15);
  }

  *v39 = v26;
  return result;
}

uint64_t sub_21D68B78C(void *a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v27 = a2;
  v5 = sub_21DBF63EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA78, &qword_21DC24020);
  v10 = *(v9 - 8);
  v30 = v9;
  v31 = v10;
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - v11;
  v13 = v3[7];
  v12 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v13);
  v32 = a1;
  v33 = 0;
  v34 = 0;
  v14 = *(v12 + 56);
  v15 = a1;
  v16 = v14(&v32, v13, v12);
  v17 = sub_21D181CB8(v32, v33, v34);
  v32 = v16;
  (*(v6 + 16))(v8, v27, v5, v17);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v5);
  v21 = v29;
  *(v20 + v19) = v29;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA80, &unk_21DC22080);
  sub_21D68C488();
  sub_21D0D0F1C(&qword_27CE5FA88, &qword_27CE5FA80, &unk_21DC22080, MEMORY[0x277CBCD90]);
  v23 = v28;
  sub_21DBF931C();

  sub_21D0D0F1C(&qword_27CE5FA90, &qword_27CE5FA78, &qword_21DC24020, MEMORY[0x277CBCCC0]);
  v24 = v30;
  v25 = sub_21DBF920C();
  (*(v31 + 8))(v23, v24);
  return v25;
}

id sub_21D68BAA0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_21D68BAAC@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ([*a1 location])
  {
    sub_21DBF63DC();
    if (v5)
    {
      v6 = sub_21DBFA12C();
    }

    else
    {
      v6 = 0;
    }

    v10 = [objc_opt_self() ttr:v6 localizedAddressTitleForLabel:a2 contact:?];

    sub_21DBFA16C();
    sub_21D68C488();
    result = sub_21DBFB3FC();
    *a3 = result;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = sub_21DBFA12C();
    [v7 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  return result;
}

uint64_t TTRReminderLocationOptionsProvider.deinit()
{
  sub_21D157444(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return v0;
}

uint64_t TTRReminderLocationOptionsProvider.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_21D68BC90()
{
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E760, &qword_21DC1CD80);
  sub_21D0D0F1C(&unk_280D0C440, &qword_27CE5E760, &qword_21DC1CD80, MEMORY[0x277CBCE48]);
  sub_21DBF921C();

  v5 = sub_21DBF920C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_21D68BE4C()
{

  sub_21DBF909C();

  return v1;
}

uint64_t sub_21D68BE9C()
{

  sub_21DBF909C();

  return v2;
}

uint64_t sub_21D68BEEC()
{

  sub_21DBF909C();

  return v3;
}

void *sub_21D68BF44(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[3] = a5;
  v19[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a2, a5);
  v18[3] = a6;
  v18[4] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(a6 - 8) + 32))(v16, a3, a6);
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[15] = 0;
  sub_21D0D32E4(v18, (a4 + 4));
  sub_21D0D32E4(v19, (a4 + 9));
  [a1 everConnectedToCar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E760, &qword_21DC1CD80);
  swift_allocObject();
  a4[14] = sub_21DBF90AC();
  sub_21D68A53C();
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return a4;
}

void *sub_21D68C0AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a2, a5);
  (*(v13 + 16))(v15, a3, a6);
  return sub_21D68BF44(a1, v20, v15, v21, a5, a6, v23, v24);
}

id sub_21D68C2B8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v4;
  v5 = a2;

  return a1;
}

uint64_t sub_21D68C334@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF63EC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D68B1D4(a1, v2 + v6, v7, a2);
}

unint64_t sub_21D68C488()
{
  result = qword_280D17760;
  if (!qword_280D17760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17760);
  }

  return result;
}

double TTRReminderTextChangeDetailCapturer.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

Swift::Void __swiftcall TTRReminderTextChangeDetailCapturer.capture(_:)(RemindersUICore::TTRReminderTextChangeDetail *a1)
{
  if (*(v1 + 16))
  {
    if (qword_27CE56B70 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE5FA98);
    oslog = sub_21DBF84AC();
    v3 = sub_21DBFAEAC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v3, "TTRReminderTextChangeDetailCapturer: ignoring new detail", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }
  }

  else
  {
    countAndFlagsBits = a1->replacementText.value._countAndFlagsBits;
    object = a1->replacementText.value._object;
    isa = a1->originalText.super.isa;
    *(v1 + 16) = a1->originalText.super.isa;
    *(v1 + 24) = a1->originalRangeReplaced;
    *(v1 + 40) = countAndFlagsBits;
    *(v1 + 48) = object;
    sub_21DBF8E0C();
    v8 = isa;

    sub_21D300F14(0);
  }
}

void __swiftcall TTRReminderTextChangeDetailCapturer.consume(editedText:textViewHasMarkedText:)(RemindersUICore::TTRReminderTextChangeDetail_optional *__return_ptr retstr, Swift::String editedText, Swift::Bool textViewHasMarkedText)
{
  v4 = v3;
  if (textViewHasMarkedText)
  {
    if (qword_27CE56B70 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5FA98);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEAC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "TTRReminderTextChangeDetailCapturer: disallow detail consumption because textViewHasMarkedText == true", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    retstr->value.replacementText.value._object = 0;
    *&retstr->value.originalText.super.isa = 0u;
    *&retstr->value.originalRangeReplaced.length = 0u;
  }

  else
  {
    object = editedText._object;
    countAndFlagsBits = editedText._countAndFlagsBits;
    v12 = v4[2];
    v13 = v4[3];
    v14 = v4[4];
    v15 = v4[5];
    v16 = v4[6];
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    v4[6] = 0;
    sub_21D300ED0(v12, v13, v14, v15, v16);
    sub_21D300F14(v12);
    v17[0] = v12;
    v17[1] = v13;
    v17[2] = v14;
    v17[3] = v15;
    v17[4] = v16;
    sub_21D68C9B8(v17, countAndFlagsBits, object, retstr);

    sub_21D300F14(v12);
  }
}

uint64_t sub_21D68C8C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FA98);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FA98);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRReminderTextChangeDetailCapturer.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void __swiftcall TTRReminderTextChangeDetailCapturer.peek()(RemindersUICore::TTRReminderTextChangeDetail_optional *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  retstr->value.originalText.super.isa = v2;
  retstr->value.originalRangeReplaced.location = v3;
  retstr->value.originalRangeReplaced.length = v4;
  retstr->value.replacementText.value._countAndFlagsBits = v5;
  retstr->value.replacementText.value._object = v6;
  sub_21D300ED0(v2, v3, v4, v5, v6);
}

void sub_21D68C9B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (*a1)
  {
    v33 = a4;
    sub_21D300ED0(v4, v5, v6, v7, v8);
    sub_21DBF8E0C();
    v11 = [v4 string];
    v12 = sub_21DBFA16C();
    v14 = v13;

    v15 = sub_21D5E2268(a2, a3, v12, v14, v5, v6, v7, v8);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if (v21)
    {
      v22 = v4;
      sub_21D300F14(v4);
      v23 = qword_27CE56B70;
      sub_21DBF8E0C();
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = sub_21DBF84BC();
      __swift_project_value_buffer(v24, qword_27CE5FA98);
      sub_21DBF8E0C();
      v25 = sub_21DBF84AC();
      v26 = sub_21DBFAEAC();

      if (os_log_type_enabled(v25, v26))
      {
        v32 = v17;
        v27 = v19;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 136315138;
        v34 = v29;
        sub_21DBFBEEC();

        v30 = sub_21DBFB9BC();
        MEMORY[0x223D42AA0](v30);

        MEMORY[0x223D42AA0](0xD000000000000014, 0x800000021DC62EE0);
        MEMORY[0x223D42AA0](v27, v21);
        MEMORY[0x223D42AA0](32034, 0xE200000000000000);

        v31 = sub_21D0CDFB4(0xD000000000000018, 0x800000021DC62EC0, &v34);

        *(v28 + 4) = v31;
        _os_log_impl(&dword_21D0C9000, v25, v26, "TTRReminderTextChangeDetailCapturer: change detail needs adjustment {adjustment:%s}", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x223D46520](v29, -1, -1);
        MEMORY[0x223D46520](v28, -1, -1);

        v5 = v15;
        v6 = v32;
        v7 = v27;
      }

      else
      {

        v5 = v15;
        v6 = v17;
        v7 = v19;
      }

      v8 = v21;
    }

    a4 = v33;
  }

  *a4 = v4;
  a4[1] = v5;
  a4[2] = v6;
  a4[3] = v7;
  a4[4] = v8;
}

uint64_t TTRReminderTextChangeDetailCapturer.__deallocating_deinit()
{
  sub_21D300F14(*(v0 + 16));

  return swift_deallocClassInstance();
}

id static UIScreen.ttr_main.getter()
{
  v0 = [swift_getObjCClassFromMetadata() mainScreen];

  return v0;
}

double TTRIRemindersListReminderCell.viewModel.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1 + v3, &v8, &unk_27CE5FAD0, &unk_21DC10470);
  *&v7[10] = *&v9[10];
  v6 = v8;
  *v7 = *v9;
  if (v9[25])
  {
    if (v9[25] == 1)
    {
      result = *&v8;
      v5 = *v9;
      *a1 = v8;
      *(a1 + 16) = v5;
      *(a1 + 32) = *&v9[16];
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    sub_21D0D0FD0(&v6, a1);
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell.titleModule.setter(uint64_t a1)
{
  v3 = &v1[qword_280D132A8];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE5F240, &unk_21DC104A0);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell, ObjectType, v4);
    (*(v4 + 48))(*&v7[qword_280D13278], ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
}

uint64_t TTRIRemindersListReminderCell.viewModel.setter(uint64_t a1)
{
  sub_21D0D3954(a1, &v13, &unk_27CE5FAE0, &unk_21DC18590);
  if (v14)
  {
    sub_21D0D0FD0(&v13, aBlock);
    v3 = &v1[qword_280D13268];
    swift_beginAccess();
    sub_21D0CF7E0(v3, &unk_27CE5FAD0, &unk_21DC10470);
    sub_21D0D32E4(aBlock, v3);
    *(v3 + 40) = 1;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    goto LABEL_3;
  }

  sub_21D0CF7E0(&v13, &unk_27CE5FAE0, &unk_21DC18590);
  v10 = &v1[qword_280D13268];
  swift_beginAccess();
  sub_21D0D3954(v10, aBlock, &unk_27CE5FAD0, &unk_21DC10470);
  if (!BYTE1(v12))
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    goto LABEL_9;
  }

  if (BYTE1(v12) != 1)
  {
LABEL_9:
    swift_endAccess();
    return sub_21D0CF7E0(a1, &unk_27CE5FAE0, &unk_21DC18590);
  }

  sub_21D0CF7E0(v10, &unk_27CE5FAD0, &unk_21DC10470);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 25) = 0u;
  *(v10 + 41) = 2;
  sub_21D0CF7E0(aBlock, &unk_27CE5FAD0, &unk_21DC10470);
  swift_endAccess();
LABEL_3:
  v4 = *&v1[qword_280D13DD0];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D696C3C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  v12 = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_73;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  [v4 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    sub_21D695350();

    return sub_21D0CF7E0(a1, &unk_27CE5FAE0, &unk_21DC18590);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRIRemindersListReminderCell.beginEditingTitle(withInput:)(RemindersUICore::TTREditingStateOption::InputType withInput)
{
  if (*withInput == 1)
  {
    [*(v1 + qword_280D13278) set:3 textInputSource:?];
  }

  v2 = *(v1 + qword_280D13278);
  v3 = [v2 window];
  [v3 makeKeyWindow];

  [v2 becomeFirstResponder];
  v4 = [v2 selectedTextRange];
  if (!v4)
  {
    v5 = [v2 endOfDocument];
    v6 = [v2 endOfDocument];
    v7 = [v2 textRangeFromPosition:v5 toPosition:v6];

    [v2 setSelectedTextRange_];
    v4 = v7;
  }
}

void *sub_21D68D3D0(unint64_t a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_27CE56B90 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5FD40);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "cachedView called outside of performSubviewUpdates", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

LABEL_6:
    v8 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewInfos;
    swift_beginAccess();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    v9 = *(v2 + v8);
    if (*(v9 + 16) > a1)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
  }

  v10 = *(v9 + 32 * a1 + 32);
  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

NSAttributedString_optional __swiftcall NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(Swift::OpaquePointer placeholderToSymbolNames)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v51 - v5;
  if (*(placeholderToSymbolNames._rawValue + 2) && ([v1 mutableCopy], sub_21DBFBC1C(), swift_unknownObjectRelease(), sub_21D0D8CF0(0, &qword_27CE5FAF0, 0x277CCAB48), (swift_dynamicCast() & 1) != 0))
  {
    v52 = v6;
    v55 = v61;
    v57 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D769D0] scale:1];
    v7 = placeholderToSymbolNames._rawValue + 64;
    v8 = 1 << *(placeholderToSymbolNames._rawValue + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(placeholderToSymbolNames._rawValue + 8);
    v11 = (v8 + 63) >> 6;
    v12 = sub_21DBF8E0C();
    v14 = 0;
    v58 = v11;
    rawValue = placeholderToSymbolNames._rawValue;
    while (v10)
    {
      v15 = v14;
LABEL_13:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(placeholderToSymbolNames._rawValue + 7);
      v19 = (*(placeholderToSymbolNames._rawValue + 6) + 16 * v17);
      v20 = v19[1];
      v59 = *v19;
      v21 = v18 + 24 * v17;
      v22 = *(v21 + 8);
      v23 = *(v21 + 16);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v24 = v23;
      v25 = sub_21DBFA12C();
      v26 = [objc_opt_self() _systemImageNamed_];

      if (v26)
      {
        v60 = v22;
        v27 = [v26 imageWithSymbolConfiguration_];

        if (v27 && (v28 = [v27 imageWithTintColor_], v27, v29 = v20, v28))
        {
          v30 = v28;
          v31 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
          [v31 setImage_];
          v32 = objc_opt_self();
          v54 = v31;
          v53 = [v32 attributedStringWithAttachment_];
          v33 = [v55 string];
          v34 = sub_21DBFA16C();
          v36 = v35;

          v63 = v34;
          v64 = v36;
          v61 = v59;
          v62 = v29;
          v37 = sub_21DBF582C();
          v38 = v52;
          (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
          v59 = sub_21D176F0C();
          v39 = sub_21DBFBBAC();
          v51 = v40;
          v42 = v41;
          sub_21D0CF7E0(v38, &unk_27CE65010, &qword_21DC08D60);

          if (v42)
          {
          }

          else
          {
            v63 = v39;
            v64 = v51;
            v43 = v55;
            v44 = [v55 string];
            v45 = sub_21DBFA16C();
            v47 = v46;

            v61 = v45;
            v62 = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
            sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00, &unk_21DC18DC0, MEMORY[0x277D83D30]);
            v48 = sub_21DBFB9DC();
            v49 = v53;
            [v43 replaceCharactersInRange:v48 withAttributedString:{v50, v53}];
          }

          v14 = v15;
          placeholderToSymbolNames._rawValue = rawValue;
          v11 = v58;
        }

        else
        {

          v14 = v15;
          placeholderToSymbolNames._rawValue = rawValue;
          v11 = v58;
        }
      }

      else
      {

        v14 = v15;
        v11 = v58;
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        v12 = v55;
        goto LABEL_23;
      }

      v10 = *&v7[8 * v15];
      ++v14;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = v1;
  }

LABEL_23:
  result.value.super.isa = v12;
  result.is_nil = v13;
  return result;
}

uint64_t sub_21D68DAB0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FAB0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FAB0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRIRemindersListReminderCellViewModel.style.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_280D15938 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_280D15940);
  v3 = byte_280D15942;
  v5 = qword_280D15948;
  v4 = qword_280D15950;
  v6 = word_280D15958;
  v7 = HIBYTE(word_280D15958);
  *a1 = word_280D15940;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

id TTRIRemindersListReminderCellGrid.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIRemindersListReminderCellGrid.init(frame:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = &v6[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
  v12 = type metadata accessor for TTRIRemindersListReminderCellGrid();
  *v11 = 0;
  *(v11 + 1) = 0;
  v14.receiver = v6;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a3, a4, a5, a6);
}

id TTRIRemindersListReminderCellGrid.__allocating_init(arrangedSubviewRows:)(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviewRows_];

  return v3;
}

id TTRIRemindersListReminderCellGrid.init(arrangedSubviewRows:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
  *v3 = 0;
  *(v3 + 1) = 0;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  v5 = objc_msgSendSuper2(&v7, sel_initWithArrangedSubviewRows_, v4);

  return v5;
}

id TTRIRemindersListReminderCellGrid.init(coder:)(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
  v5 = type metadata accessor for TTRIRemindersListReminderCellGrid();
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v2;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id TTRIRemindersListReminderCellGrid.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void (*TTRIRemindersListReminderCell.delegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_280D131E0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D6A4448;
}

void (*TTRIRemindersListReminderCell.viewModel.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = v1;
  v5 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1 + v5, v4, &unk_27CE5FAD0, &unk_21DC10470);
  *(v4 + 74) = *(v4 + 26);
  v6 = *(v4 + 16);
  *(v4 + 48) = *v4;
  *(v4 + 64) = v6;
  if (*(v4 + 89))
  {
    if (*(v4 + 89) == 1)
    {
      v7 = *(v4 + 16);
      *(v4 + 96) = *v4;
      *(v4 + 112) = v7;
      *(v4 + 128) = *(v4 + 32);
    }

    else
    {
      *(v4 + 128) = 0;
      *(v4 + 96) = 0u;
      *(v4 + 112) = 0u;
    }
  }

  else
  {
    sub_21D0D0FD0((v4 + 48), v4 + 96);
  }

  return sub_21D68E2FC;
}

void sub_21D68E2FC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21D0D3954(v2 + 96, v2, &unk_27CE5FAE0, &unk_21DC18590);
    TTRIRemindersListReminderCell.viewModel.setter(v2);
    sub_21D0CF7E0(v2 + 96, &unk_27CE5FAE0, &unk_21DC18590);
  }

  else
  {
    TTRIRemindersListReminderCell.viewModel.setter(v2 + 96);
  }

  free(v2);
}

uint64_t TTRIRemindersListReminderCell.treeCellViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280D132B8;
  swift_beginAccess();
  return sub_21D0D3954(v1 + v3, a1, &unk_27CE5FB20, &unk_21DC220F0);
}

void (*TTRIRemindersListReminderCell.treeCellViewDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_280D132C8[0];
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1E55F4;
}

uint64_t TTRIRemindersListReminderCell.setTreeCellViewModel(_:animator:)(uint64_t a1)
{
  v3 = qword_280D132B8;
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v3, &unk_27CE5FB20, &unk_21DC220F0);
  swift_endAccess();
  return sub_21D68E520(1);
}