uint64_t sub_1B8184448()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B81844C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B818450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B81F7A38();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_58(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1B81845B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B81F7A38();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B818465C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_58(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8E0, &unk_1B81FCCC0);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1B81846E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8E0, &unk_1B81FCCC0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B81847C4()
{
  v0 = OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_1B81F8368();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_53();
  sub_1B81930C0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_22_0();
  sub_1B8190720(v6, v7, MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B81848B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 35, 7);
}

uint64_t sub_1B81848F4()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B818492C()
{
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

double sub_1B818496C(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1B81849B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_58(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
  v8 = a1 + *(a3 + 40);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_1B8184A38()
{
  OUTLINED_FUNCTION_128();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
    v5 = OUTLINED_FUNCTION_104(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8184AB0(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_58(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF00, &unk_1B81FEE60);
  OUTLINED_FUNCTION_63_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[9];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
    OUTLINED_FUNCTION_63_0();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF08, &unk_1B81FD7E0);
      OUTLINED_FUNCTION_63_0();
      if (*(v14 + 84) == a2)
      {
        v9 = v13;
        v10 = a3[12];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0, &qword_1B81FD310);
        v10 = a3[13];
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void sub_1B8184C1C()
{
  OUTLINED_FUNCTION_128();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF00, &unk_1B81FEE60);
    OUTLINED_FUNCTION_63_0();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
      OUTLINED_FUNCTION_63_0();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF08, &unk_1B81FD7E0);
        OUTLINED_FUNCTION_63_0();
        if (*(v10 + 84) == v6)
        {
          v8 = v5[12];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0, &qword_1B81FD310);
          v8 = v5[13];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_104(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_1B8184D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81();
  sub_1B81F8178();
  OUTLINED_FUNCTION_63_0();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_58(*(v3 + *(a3 + 24)));
  }

  v8 = v6;
  v9 = v3 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1B8184E18(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_1B81F8178();
  OUTLINED_FUNCTION_63_0();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_104(*(a4 + 20));

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1B8184EB8()
{
  OUTLINED_FUNCTION_53();
  sub_1B81F8DC8();
  OUTLINED_FUNCTION_53();
  sub_1B81F8DA8();
  sub_1B81F8728();
  sub_1B81F8CD8();
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_0();
  return swift_getWitnessTable();
}

uint64_t sub_1B8184F70()
{
  v0 = OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_53();
  sub_1B81A2158(v2, v3, v4, v5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B818502C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8185074()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B81850B8()
{
  OUTLINED_FUNCTION_69_0();
  type metadata accessor for SubtitleView(0);
  OUTLINED_FUNCTION_57_1();
  v29 = *(v4 + 64);
  v30 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v31 = v1;
  v5 = v1 + v30;

  v6 = type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_127_0(v6);

  v7 = *(type metadata accessor for SGBannerIconParams(0) + 72);
  v8 = sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 8);
  v10(v2 + v7, v8);

  v11 = type metadata accessor for SGBannerPaddingParams(0);
  v12 = OUTLINED_FUNCTION_107_0(v11);
  (v10)(v12);
  v13 = *(v0 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90, &qword_1B81FD1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_2();
    v15 = (*(v14 + 8))(v5 + v13);
  }

  else
  {
  }

  OUTLINED_FUNCTION_112_0(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31);
  OUTLINED_FUNCTION_67_0();

  return MEMORY[0x1EEE6BDD0](v23, v24, v25);
}

uint64_t sub_1B8185298()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B81852E4()
{
  OUTLINED_FUNCTION_84();
  v3 = v2;
  sub_1B81F7908();
  OUTLINED_FUNCTION_63_0();
  if (*(v5 + 84) == v0)
  {
    v6 = v4;
    v7 = v3;
  }

  else
  {
    if (v0 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_58(*(v3 + v1[5]));
    }

    type metadata accessor for SGBannerViewModel(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v10 + 84) == v0)
    {
      v6 = v9;
      v11 = v1[6];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
      v11 = v1[9];
    }

    v7 = v3 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v0, v6);
}

void sub_1B81853EC()
{
  OUTLINED_FUNCTION_103_0();
  v3 = v2;
  v5 = v4;
  sub_1B81F7908();
  OUTLINED_FUNCTION_63_0();
  if (*(v7 + 84) == v1)
  {
    v8 = v6;
    v9 = v5;
  }

  else
  {
    if (v1 == 0x7FFFFFFF)
    {
      *(v5 + v0[5]) = (v3 - 1);
      return;
    }

    type metadata accessor for SGBannerViewModel(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v11 + 84) == v1)
    {
      v8 = v10;
      v12 = v0[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
      v12 = v0[9];
    }

    v9 = v5 + v12;
  }

  __swift_storeEnumTagSinglePayload(v9, v3, v3, v8);
}

uint64_t sub_1B81854FC()
{
  OUTLINED_FUNCTION_29_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_58(*v1);
  }

  OUTLINED_FUNCTION_84();
  type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_63_0();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
    v6 = *(v2 + 44);
  }

  v7 = OUTLINED_FUNCTION_46_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B81855B4()
{
  OUTLINED_FUNCTION_128();
  if (v2)
  {
    OUTLINED_FUNCTION_119_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    type metadata accessor for SGBannerViewModel(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
      v4 = *(v0 + 44);
    }

    v5 = OUTLINED_FUNCTION_104(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8185690()
{
  OUTLINED_FUNCTION_29_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_58(*(v1 + 8));
  }

  OUTLINED_FUNCTION_84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0, &qword_1B81FDA38);
  OUTLINED_FUNCTION_63_0();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
    v6 = *(v2 + 52);
  }

  v7 = OUTLINED_FUNCTION_46_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8185754()
{
  OUTLINED_FUNCTION_128();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0, &qword_1B81FDA38);
    OUTLINED_FUNCTION_63_0();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
      v6 = *(v2 + 52);
    }

    v7 = OUTLINED_FUNCTION_104(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8185818()
{
  OUTLINED_FUNCTION_29_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_58(*v0);
  }

  OUTLINED_FUNCTION_84();
  type metadata accessor for SGBannerViewModel(0);
  v4 = OUTLINED_FUNCTION_46_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8185884()
{
  OUTLINED_FUNCTION_128();
  if (v1)
  {
    OUTLINED_FUNCTION_119_0();
  }

  else
  {
    v2 = v0;
    type metadata accessor for SGBannerViewModel(0);
    v3 = OUTLINED_FUNCTION_104(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B81859FC()
{
  OUTLINED_FUNCTION_29_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_58(*v1);
  }

  OUTLINED_FUNCTION_84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
  OUTLINED_FUNCTION_63_0();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D750, &qword_1B81FE698);
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_46_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8185AC0()
{
  OUTLINED_FUNCTION_128();
  if (v2)
  {
    OUTLINED_FUNCTION_119_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
    OUTLINED_FUNCTION_63_0();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D750, &qword_1B81FE698);
      v4 = *(v0 + 24);
    }

    v5 = OUTLINED_FUNCTION_104(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8185B84()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8185BBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D778, &qword_1B81FE710);
  v0 = OUTLINED_FUNCTION_8_2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_1B81B4AFC();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_96();
  sub_1B81B5290(v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8185C94()
{
  MEMORY[0x1B8CBBB90](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8185CCC()
{
  MEMORY[0x1B8CBBB90](v0 + 16);
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8185D00()
{

  v0 = OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B8185D38()
{

  v0 = OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B8185D70()
{
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8185DA4()
{

  v0 = OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B8185DE4()
{
  MEMORY[0x1B8CBBB90](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8185E1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF00, &unk_1B81FEE60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[8];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1B81F91C8();
    v8 = a3[10];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[9] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1B8185EFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF00, &unk_1B81FEE60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[8];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1B81F91C8();
    v10 = a4[10];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1B8185FE0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB28, &qword_1B81FEEF0);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_16_0();
  v4(v3);
  return a2;
}

uint64_t sub_1B8186054()
{
  MEMORY[0x1B8CBBB90](v0 + 16);
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8186088()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B81860D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8186110()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8186144()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8186180()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B81861F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B81863AC()
{
  OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFE0, &qword_1B81FF9A0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_16_0();
  v2(v1);
  return v0;
}

uint64_t sub_1B818640C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFE0, &qword_1B81FF9A0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1B818646C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B81F8178();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1B81864B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B81F8178();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1B8186504(uint64_t *a1)
{
  OUTLINED_FUNCTION_53();
  sub_1B81F8A78();
  sub_1B81F8A98();
  sub_1B81F8728();
  sub_1B81F8CD8();
  OUTLINED_FUNCTION_4_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_0();
  return swift_getWitnessTable();
}

uint64_t sub_1B818662C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8186664()
{

  return MEMORY[0x1EEE6BDD0](v0, 35, 7);
}

uint64_t sub_1B81866A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8186704()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B81867A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B81F8058();
  OUTLINED_FUNCTION_63_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 80);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 88));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1B8186864(uint64_t a1, char a2, int a3, uint64_t a4)
{
  sub_1B81F8058();
  OUTLINED_FUNCTION_63_0();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_104(*(a4 + 80));

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 88)) = a2 + 1;
  }
}

uint64_t sub_1B8186904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_1B81F8058();
    v10 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1B8186998(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    sub_1B81F8058();
    v5 = OUTLINED_FUNCTION_104(*(a4 + 72));

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_1B8186A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for SGBannerIconParams(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 48);
    }

    else
    {
      v10 = type metadata accessor for SGBannerPaddingParams(0);
      v11 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1B8186AD8(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    type metadata accessor for SGBannerIconParams(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v6 + 84) == a3)
    {
      v7 = *(a4 + 48);
    }

    else
    {
      type metadata accessor for SGBannerPaddingParams(0);
      v7 = *(a4 + 56);
    }

    v8 = OUTLINED_FUNCTION_104(v7);

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1B8186B94()
{
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8186BD0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8186C1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B8186C64(uint64_t a1@<X8>)
{
  sub_1B8186C5C();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

unint64_t sub_1B8186FF8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1B818701C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B81F8F98();
  v4 = v3;
  if (v2 == sub_1B81F8F98() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B81F9388();
  }

  return v7 & 1;
}

uint64_t sub_1B81870B8(unsigned __int8 a1)
{
  sub_1B81F93B8();
  MEMORY[0x1B8CBB1D0](a1);
  return sub_1B81F93D8();
}

uint64_t sub_1B8187138(uint64_t a1, unsigned __int8 a2)
{
  sub_1B81F93B8();
  MEMORY[0x1B8CBB1D0](a2);
  return sub_1B81F93D8();
}

unint64_t sub_1B818717C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8186FF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B81871A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8187008(*v1);
  *a1 = result;
  return result;
}

id sub_1B81871D4(uint64_t a1, uint64_t a2)
{
  sub_1B8189AF0(0, &unk_1EDC8A5B0, 0x1E696AAE8);
  result = sub_1B818728C(0xD00000000000001BLL, 0x80000001B82008C0);
  if (result)
  {
    v3 = result;
    v4 = sub_1B81F7948();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B818728C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B81F8F58();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

uint64_t sub_1B81872F0(uint64_t a1)
{
  v2 = sub_1B81F8178();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    sub_1B8189AF0(0, &qword_1EBA7C4B8, 0x1E69DC888);
    sub_1B81874A4(15461355);

    return sub_1B81F8C38();
  }

  else
  {
    v7 = sub_1B81F8E98();
    (*(v3 + 104))(v1, *MEMORY[0x1E697DBA8], v2);
    v8 = sub_1B81F8168();
    (*(v3 + 8))(v1, v2);
    if (v7)
    {
      if (v8)
      {
        sub_1B81AF8B0();
      }

      else
      {
        sub_1B81B0364();
      }
    }

    else if (v8)
    {
      sub_1B81B02A8();
    }

    else
    {
      sub_1B81B0230();
    }
  }
}

uint64_t sub_1B81874B8()
{
  v0 = sub_1B8187584();
  v1 = [v0 string];
  sub_1B81F8F98();

  sub_1B8188DE0();
  v2 = sub_1B81F9208();

  return v2;
}

id sub_1B8187584()
{
  v24 = 0;
  v22 = 0;
  v23 = 0;
  OUTLINED_FUNCTION_14();
  v1 = (*(v0 + 368))();
  if (!v1)
  {
    OUTLINED_FUNCTION_9();
    v13 += 43;
    v14 = *v13;
    (*v13)();
    if (v15 && (v16 = sub_1B81F8FE8(), v17 = , v16 >= 1) && ((v14)(v17), v18))
    {
      sub_1B8189AF0(0, &unk_1EDC8A5C0, 0x1E696AD40);
      v19 = OUTLINED_FUNCTION_22();
    }

    else
    {
      sub_1B8189AF0(0, &unk_1EDC8A5C0, 0x1E696AD40);
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    v2 = sub_1B8187C0C(v19, v20);
    v12 = 0;
    v4 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 length];
  v4 = OUTLINED_FUNCTION_24(&unk_1F300FB00);
  v4[2] = &v24;
  v4[3] = &v23;
  v4[4] = &v22;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B8189114;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1B8189120;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8187B50;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);

  [v2 enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v3) = OUTLINED_FUNCTION_23(v5, "");

  if ((v3 & 1) == 0)
  {
    v9 = v22;
    v8 = v23;
    v10 = v22;
    v11 = v8;
    v12 = sub_1B8189114;
LABEL_10:

    sub_1B8188E34(v12, v4);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8187834(uint64_t a1, _BYTE *a2, void **a3, void **a4)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v13 = __clz(__rbit64(v8)) | (v11 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      sub_1B8189A2C(*(a1 + 56) + 32 * v13, v48);
      v47 = v14;
      v15 = sub_1B81F8F98();
      v17 = v16;
      if (v15 == sub_1B81F8F98() && v17 == v18)
      {
        break;
      }

      v20 = sub_1B81F9388();
      v21 = v14;

      if (v20)
      {
        goto LABEL_25;
      }

      v22 = sub_1B81F8F98();
      v24 = v23;
      v25 = sub_1B81F8F98();
      if (v22 == v25 && v24 == v26)
      {

LABEL_27:
        sub_1B8189A2C(v48, v46);
        sub_1B8189AF0(0, &qword_1EBA7C578, 0x1E69DB878);
        v37 = swift_dynamicCast();
        v38 = v45;
        if (!v37)
        {
          v38 = 0;
        }

        v39 = a3;
        goto LABEL_30;
      }

      v28 = OUTLINED_FUNCTION_17(v25);

      if (v28)
      {
        goto LABEL_27;
      }

      v29 = sub_1B81F8F98();
      v31 = v30;
      v32 = sub_1B81F8F98();
      if (v29 == v32 && v31 == v33)
      {

LABEL_34:
        sub_1B8189A2C(v48, v46);
        sub_1B8189AF0(0, &qword_1EBA7C4B8, 0x1E69DC888);
        v41 = swift_dynamicCast();
        v38 = v45;
        if (!v41)
        {
          v38 = 0;
        }

        v39 = a4;
LABEL_30:
        v40 = *v39;
        *v39 = v38;

        goto LABEL_31;
      }

      v35 = OUTLINED_FUNCTION_17(v32);

      if (v35)
      {
        goto LABEL_34;
      }

      *a2 = 0;
LABEL_31:
      v8 &= v8 - 1;
      result = sub_1B8189A88(&v47);
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    v36 = v14;

LABEL_25:
    *a2 = 1;
    goto LABEL_31;
  }

LABEL_4:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8187B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1B8189978(&qword_1EBA7C558, &unk_1B8200380);
  v9 = sub_1B81F8EF8();
  v8(v9, a3, a4, a5);
}

id sub_1B8187C0C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B81F8F58();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_1B8187C80(void *a1)
{
  v2 = sub_1B81F7968();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_16();
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x140))())
  {

    return MEMORY[0x1EEDC3200]();
  }

  else
  {
    (*((*v3 & *a1) + 0x128))();
    sub_1B81F7958();
    return sub_1B81F7918();
  }
}

char *sub_1B8187DB0(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a1;
  v7 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
  v8 = [v6 count];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v1 = v8;
  if (!v8)
  {

LABEL_22:
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v2 = 0;
  do
  {
    v10 = [v6 objectAtIndexedSubscript_];
    v3 = [v10 count];

    if (v3)
    {
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    ++v2;
  }

  while (v1 != v2);

  if (v4 == 1)
  {
    v2 = [v6 objectAtIndexedSubscript_];

    v25 = [v2 category];
    if (!v25)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v26 = [v25 suggestionCategoryTitle];
    v3 = sub_1B81F8F98();
    v7 = v27;

    v1 = sub_1B81891F8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v1 + 2);
    v9 = *(v1 + 3);
    v4 = v5 + 1;
    if (v5 >= v9 >> 1)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  v12 = [v6 count];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v1 = sub_1B81891F8((v9 > 1), v4, 1, v1);
LABEL_27:

    swift_unknownObjectRelease();
    *(v1 + 2) = v4;
    v28 = &v1[16 * v5];
    *(v28 + 4) = v3;
    *(v28 + 5) = v7;
    return v1;
  }

  v13 = v12;
  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = [v6 objectAtIndexedSubscript_];
    v16 = [v15 category];

    if (v16)
    {
      v17 = [v16 suggestionCategoryTitle];
      v18 = sub_1B81F8F98();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1B81891F8(0, *(v1 + 2) + 1, 1, v1);
      }

      v22 = *(v1 + 2);
      v21 = *(v1 + 3);
      if (v22 >= v21 >> 1)
      {
        v1 = sub_1B81891F8((v21 > 1), v22 + 1, 1, v1);
      }

      swift_unknownObjectRelease();
      *(v1 + 2) = v22 + 1;
      v23 = &v1[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
    }

    ++v14;
  }

  while (v13 != v14);

  return v1;
}

uint64_t sub_1B81880A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E69E7CC0];
  v75 = MEMORY[0x1E69E7CC0];
  if (!a3)
  {
    return v3;
  }

  v6 = a3;
  v7 = sub_1B81888BC(a1, a2, v6);
  if (v7 == -1)
  {
LABEL_35:

    return MEMORY[0x1E69E7CC0];
  }

  v66 = [v6 objectAtIndexedSubscript_];
  result = [v66 count];
  if (result < 0)
  {
    goto LABEL_38;
  }

  v9 = result;
  if (!result)
  {

    v6 = v66;
    goto LABEL_35;
  }

  v64 = v6;
  type metadata accessor for SGBannerContent();
  v10 = 0;
  v11 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
  v12 = MEMORY[0x1E69E7D40];
  v13 = &unk_1E7CD9000;
  v65 = v9;
  while (1)
  {
    v14 = [v66 objectAtIndexedSubscript_];
    v15 = SGBannerContent.__allocating_init()();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    v73 = sub_1B8189300;
    v74 = v16;
    OUTLINED_FUNCTION_3();
    v71 = sub_1B81889F4;
    v72 = &block_descriptor_9;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    swift_unknownObjectRetain();

    dispatchInContext(1, v17);
    _Block_release(v17);
    if ([v14 v13[323]])
    {
      v15 = [v14 v11[350]];
      if (!v15)
      {
        OUTLINED_FUNCTION_8();
        (*(v19 + 424))();
        goto LABEL_11;
      }
    }

    else
    {
      v20 = [objc_msgSend(v14 suggestionCategory)];
      OUTLINED_FUNCTION_15();
      swift_unknownObjectRelease();
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v22 = OUTLINED_FUNCTION_24(v21);
    *(v22 + 16) = xmmword_1B81FC210;
    *(v22 + 32) = v15;
    v23 = *((*v12 & *v18) + 0x1A8);
    v24 = v15;
    v25 = OUTLINED_FUNCTION_15();
    v23(v25);

LABEL_11:
    if ([v14 v13[323]])
    {
      v26 = [v14 suggestionImageSGView];
      if (v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v27 = [v14 suggestionCategory];
      v26 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
      if ([v27 v13[323]])
      {
        v28 = [v27 suggestionCategoryImageSGView];
        OUTLINED_FUNCTION_15();
        swift_unknownObjectRelease();
LABEL_16:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
        v30 = OUTLINED_FUNCTION_24(v29);
        *(v30 + 16) = xmmword_1B81FC210;
        *(v30 + 32) = v26;
        v31 = *((*v12 & *v18) + 0x250);
        v32 = v26;
        v33 = OUTLINED_FUNCTION_15();
        v31(v33);

        goto LABEL_19;
      }

      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_8();
    (*(v34 + 592))(0);
LABEL_19:
    if ([v14 v13[323]])
    {
      (*((*v12 & *v18) + 0x178))([v14 suggestionAttributedSubtitle]);
    }

    OUTLINED_FUNCTION_8();
    v36 = *(v35 + 472);
    v37 = swift_unknownObjectRetain();
    v38 = v36(v37);
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v39 = (*((*v12 & *v18) + 0x170))(v38);
    if (!v39)
    {
      OUTLINED_FUNCTION_8();
      v52 += 43;
      v53 = *v52;
      (*v52)();
      if (v54 && (sub_1B81F8FE8(), OUTLINED_FUNCTION_12(), v55 = , v18 > 0) && ((v53)(v55), v56))
      {
        sub_1B8189AF0(0, &unk_1EDC8A5C0, 0x1E696AD40);
        v57 = OUTLINED_FUNCTION_22();
      }

      else
      {
        sub_1B8189AF0(0, &unk_1EDC8A5C0, 0x1E696AD40);
        v57 = 0;
        v58 = 0xE000000000000000;
      }

      v40 = sub_1B8187C0C(v57, v58);
      v51 = 0;
      v42 = 0;
      v47 = 0;
      v48 = 0;
      goto LABEL_30;
    }

    v40 = v39;
    v41 = [v39 length];
    v42 = OUTLINED_FUNCTION_24(&unk_1F300FBC8);
    v42[2] = &v69;
    v42[3] = &v68;
    v42[4] = &v67;
    swift_allocObject();
    OUTLINED_FUNCTION_7();
    *(v43 + 16) = v44;
    *(v43 + 24) = v42;
    v73 = sub_1B8189B38;
    v74 = v43;
    OUTLINED_FUNCTION_3();
    v71 = sub_1B8187B50;
    v72 = &block_descriptor_20;
    v45 = _Block_copy(aBlock);

    [v40 enumerateAttributesInRange:0 options:v41 usingBlock:{0, v45}];
    _Block_release(v45);
    v46 = OUTLINED_FUNCTION_23(v36, "");

    if (v46)
    {
      break;
    }

    v47 = v68;
    v48 = v67;
    v49 = v47;
    OUTLINED_FUNCTION_7();
    v51 = v50;
LABEL_30:

    sub_1B8188E34(v51, v42);
    v59 = [v40 string];
    v60 = sub_1B81F8F98();
    v62 = v61;

    (*((*MEMORY[0x1E69E7D40] & *v18) + 0x160))(v60, v62);
    v63 = v18;
    MEMORY[0x1B8CBAEA0]();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B81F90D8();
    }

    ++v10;
    sub_1B81F90E8();

    swift_unknownObjectRelease();
    v11 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
    v12 = MEMORY[0x1E69E7D40];
    v13 = &unk_1E7CD9000;
    if (v65 == v10)
    {
      v3 = v75;

      return v3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B81888BC(uint64_t a1, uint64_t a2, id a3)
{
  result = [a3 count];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  if (!result)
  {
    return -1;
  }

  v8 = 0;
  while (1)
  {
    v9 = [a3 objectAtIndexedSubscript_];
    v10 = [v9 category];

    if (v10)
    {
      break;
    }

LABEL_10:
    if (v7 == ++v8)
    {
      return -1;
    }
  }

  v11 = [v10 suggestionCategoryTitle];
  swift_unknownObjectRelease();
  v12 = sub_1B81F8F98();
  v14 = v13;

  if (v12 != a1 || v14 != a2)
  {
    v16 = sub_1B81F9388();

    if (v16)
    {
      return v8;
    }

    goto LABEL_10;
  }

  return v8;
}

uint64_t sub_1B81889F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char **sub_1B8188A38(char **a1)
{
  OUTLINED_FUNCTION_14();
  v3 = (*(v2 + 584))();
  if (!v3)
  {
LABEL_8:
    OUTLINED_FUNCTION_9();
    v8 = (*(v7 + 464))();
    if (v8)
    {
      v9 = v8;
      a1 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
      if ([v8 respondsToSelector_])
      {
        v10 = [v9 suggestionImageSGView];
        OUTLINED_FUNCTION_12();
        swift_unknownObjectRelease();
        return a1;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v4 = v3;
  result = sub_1B8189548(v3);
  if (!result)
  {

    goto LABEL_8;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CBB0B0](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    OUTLINED_FUNCTION_12();

    return a1;
  }

  __break(1u);
  return result;
}

char **sub_1B8188B60(char **a1)
{
  OUTLINED_FUNCTION_14();
  v3 = (*(v2 + 416))();
  if (!v3)
  {
LABEL_8:
    OUTLINED_FUNCTION_9();
    v8 = (*(v7 + 464))();
    if (v8)
    {
      v9 = v8;
      a1 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
      if ([v8 respondsToSelector_])
      {
        v10 = [v9 suggestionImage];
        OUTLINED_FUNCTION_12();
        swift_unknownObjectRelease();
        return a1;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v4 = v3;
  result = sub_1B8189548(v3);
  if (!result)
  {

    goto LABEL_8;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CBB0B0](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    OUTLINED_FUNCTION_12();

    return a1;
  }

  __break(1u);
  return result;
}

id sub_1B8188D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:1.0];
}

unint64_t sub_1B8188DE0()
{
  result = qword_1EDC8AE60;
  if (!qword_1EDC8AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AE60);
  }

  return result;
}

uint64_t sub_1B8188E34(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B8188E54(uint64_t a1, id *a2)
{
  result = sub_1B81F8F78();
  *a2 = 0;
  return result;
}

uint64_t sub_1B8188ED0(uint64_t a1, id *a2)
{
  v3 = sub_1B81F8F88();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B8188F50@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1B81899F0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1B8188F8C(uint64_t a1)
{
  v1 = sub_1B81F8F98();
  v2 = MEMORY[0x1B8CBAE70](v1);

  return v2;
}

uint64_t sub_1B8188FCC(uint64_t a1, uint64_t a2)
{
  sub_1B81F8F98();
  sub_1B81F8FD8();
}

uint64_t sub_1B8189028(uint64_t a1, uint64_t a2)
{
  sub_1B81F8F98();
  sub_1B81F93B8();
  sub_1B81F8FD8();
  v2 = sub_1B81F93D8();

  return v2;
}

uint64_t sub_1B818909C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B81F8F58();

  *a2 = v3;
  return result;
}

uint64_t sub_1B81890E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8189110(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8189160(uint64_t a1)
{
  v2 = sub_1B8189978(&qword_1EBA7C558, &unk_1B8200380);
  v3 = sub_1B8189978(&qword_1EBA7C560, &unk_1B81FD968);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

char *sub_1B81891F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C568, &unk_1B81FDEA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B8189300()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = [v3 suggestionTitle];
  v5 = sub_1B81F8F98();
  v7 = v6;

  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))(v5, v7);
  v18 = [v3 suggestionPrimaryAction];
  v9 = [v18 title];
  v10 = sub_1B81F8F98();
  v12 = v11;

  (*((*v8 & *v2) + 0x1C0))(v10, v12);
  if ([v3 respondsToSelector_])
  {
    v13 = [swift_unknownObjectRetain() suggestionSubtitle];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1B81F8F98();
      v17 = v16;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v15 = 0;
      v17 = 0;
    }

    (*((*v8 & *v2) + 0x160))(v15, v17);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B8189548(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B81F9348();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1B8189570()
{
  result = qword_1EBA7C528;
  if (!qword_1EBA7C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiBannerSectionTypes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MultiBannerSectionTypes(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8189780(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B81897D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B8189854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8189874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1B81898C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B8189978(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B81899F0(uint64_t a1)
{
  sub_1B81F8F98();
  v1 = sub_1B81F8F58();

  return v1;
}

uint64_t sub_1B8189A2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B8189A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C570, &unk_1B81FC720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8189AF0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{

  return sub_1B81F9388();
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6C018](a1, a2, 110, 210, 101, 1);
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B8189CF0()
{
  v1 = (v0 + OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_messageID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B8189DB8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_messageID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B8189E18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8189E74(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);

  return v4(v2, v3);
}

uint64_t sub_1B8189F90(uint64_t a1, void **a2)
{
  v4 = sub_1B81F77E8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x88))(v6);
}

uint64_t sub_1B818A08C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X1>)
{
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_bannerError;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_bannerError, a2);
  sub_1B81F77E8();
  OUTLINED_FUNCTION_2();
  return (*(v5 + 16))(a1, v2 + v4);
}

uint64_t sub_1B818A100(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_bannerError;
  swift_beginAccess();
  sub_1B81F77E8();
  OUTLINED_FUNCTION_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B818A244()
{
  v1 = sub_1B81F77E8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(v3);
  sub_1B818A360();
  v6 = sub_1B81F93A8();
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t sub_1B818A360()
{
  result = qword_1EDC8A558;
  if (!qword_1EDC8A558)
  {
    sub_1B81F77E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A558);
  }

  return result;
}

uint64_t sub_1B818A3DC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_extractionSource;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_extractionSource, a2);
  return *(v2 + v3);
}

uint64_t sub_1B818A43C(int a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_extractionSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B818A48C@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

id SGRealtimeWalletOrderExtractionError.init(messageID:bannerError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_messageID];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_extractionSource] = 3;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_bannerError;
  v9 = sub_1B81F77E8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a3, v9);
  v13.receiver = v3;
  v13.super_class = type metadata accessor for SGRealtimeWalletOrderExtractionError(0);
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a3, v9);
  return v11;
}

uint64_t type metadata accessor for SGRealtimeWalletOrderExtractionError(uint64_t a1)
{
  result = qword_1EDC8CF48;
  if (!qword_1EDC8CF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SGRealtimeWalletOrderExtractionError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGRealtimeWalletOrderExtractionError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGRealtimeWalletOrderExtractionError(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B818A868(uint64_t a1)
{
  result = sub_1B81F77E8();
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

void type metadata accessor for SGSuggestionExtractionSource()
{
  if (!qword_1EBA7C648)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA7C648);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void sub_1B818AC48()
{
  OUTLINED_FUNCTION_39();
  v3 = sub_1B81F80A8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7C6B0, &unk_1B81FC7D0);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  sub_1B81F8078();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v10 = *sub_1B8186EF0();
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC738]) initWithFrame_];
  [v11 addTarget:v0 action:sel_dismissalPressed_ forControlEvents:64];
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v12 = sub_1B818AED8(0xD000000000000011, 0x80000001B8200A70);
  [v11 setImage:v12 forState:0];

  sub_1B8189AF0(0, &unk_1EBA7C6C0, 0x1E69DCAB0);
  v13 = v11;
  sub_1B81F8068();
  sub_1B81F8098();
  sub_1B8186EFC();
  sub_1B81F8088();
  (*(v5 + 8))(v1, v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  OUTLINED_FUNCTION_62();
  v14 = sub_1B81F9158();
  [v13 setHoverStyle_];

  [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  OUTLINED_FUNCTION_29();
}

id sub_1B818AED8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B81F8F58();

  v3 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v3;
}

void sub_1B818AF3C()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_0();
  v1 = (*(v0 + 128))();
  v2 = sub_1B8190624(v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1B8189548(v3);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8CBB0B0](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 respondsToSelector_] && (objc_msgSend(v7, sel_respondsToSelector_, sel_suggestionActionButtonType) & 1) != 0)
      {
        [v7 suggestionActionButtonType];

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
      ++v6;
      if (v8 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:

LABEL_16:
    OUTLINED_FUNCTION_37();
  }
}

uint64_t sub_1B818B08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  type metadata accessor for SGSuggestionStoreWrapper(0);
  OUTLINED_FUNCTION_7_0();
  sub_1B8190720(v12, v13, &unk_1B81FECE8);
  OUTLINED_FUNCTION_44();
  result = sub_1B81F8268();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *(a5 + 40) = result;
  *(a5 + 48) = v15;
  return result;
}

uint64_t sub_1B818B160()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = (*(**(v0 + 48) + 96))();
  v5 = sub_1B81880A0(v2, v3, v4);

  v16 = v5;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = *(v1 + 48);
  sub_1B81906A0(v1, v15);
  v8 = OUTLINED_FUNCTION_52();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C6D8, &qword_1B81FC800);
  OUTLINED_FUNCTION_62();
  sub_1B81930C0(v10, v11, v12, v13);
  sub_1B8190720(&qword_1EBA7C6E8, type metadata accessor for SGBannerContent, MEMORY[0x1E69E81B8]);
  sub_1B8190768();
  return sub_1B81F8E38();
}

void sub_1B818B310(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C760, &qword_1B81FC830);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_49();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB20, &qword_1B81FD070);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v12);
  v13 = sub_1B81F8378();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB28, &qword_1B81FD078);
  v18 = OUTLINED_FUNCTION_21(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v128 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB30, &qword_1B81FD080);
  OUTLINED_FUNCTION_1_0();
  v136 = v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_32();
  v143 = v24;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C738, &qword_1B81FC820);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB38, &qword_1B81FD088);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_0();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB40, &qword_1B81FD090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v128 - v31);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C700, &qword_1B81FC808);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  v141 = v34;
  v35 = *v6;
  if ((*(v4 + 24) & 1) != 0 && *(v4 + 32) == 6)
  {
    v36 = *(v4 + 16);
    v37 = v35;
    v38 = v36;
    v39 = sub_1B81C0B54(v37);
    v145 = 0;
    *&v146 = v37;
    *(&v146 + 1) = v38;
    LOWORD(v147[0]) = v39 & 0x101;
    BYTE2(v147[0]) = BYTE2(v39) & 1;
    memset(v147 + 8, 0, 33);
    v40 = v147[0];
    *v32 = v146;
    v32[1] = v40;
    v32[2] = v147[1];
    *(v32 + 41) = *(&v147[1] + 9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_51();
    sub_1B8192D38(v41, v42, v43, v44);
    v45 = OUTLINED_FUNCTION_16_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
    sub_1B8190880();
    sub_1B819098C();
    sub_1B81F8718();
    OUTLINED_FUNCTION_59();
    sub_1B8192D38(v47, v48, v49, &qword_1B81FC808);
    swift_storeEnumTagMultiPayload();
    sub_1B81907F4();
    sub_1B8190AC4();
    sub_1B81F8718();
    OUTLINED_FUNCTION_53();
    sub_1B8192D84(v50, v51, v52);
    OUTLINED_FUNCTION_42();
LABEL_10:
    sub_1B8192D84(v53, v54, v55);
    goto LABEL_11;
  }

  v139 = v28;
  v56 = j__OUTLINED_FUNCTION_18();
  v57 = *(v4 + 16);
  if (v56)
  {
    v129 = v2;
    v130 = v8;
    v131 = v9;
    v58 = v35;
    v59 = v57;
    v60 = sub_1B81D2A5C(v58);
    v62 = v61;
    *&v146 = v60;
    *(&v146 + 1) = v61;
    LOWORD(v147[0]) = v63 & 0x101;
    BYTE2(v147[0]) = v64 & 1;
    sub_1B81F81D8();
    sub_1B8190A70();
    sub_1B81F8B88();

    v65 = *(v13 + 20);
    v66 = *MEMORY[0x1E697F468];
    v67 = sub_1B81F8548();
    OUTLINED_FUNCTION_2();
    v69 = *(v68 + 104);
    v69(&v21[v65], v66, v67);
    __asm { FMOV            V0.2D, #5.0 }

    v128 = _Q0;
    *v21 = _Q0;
    v75 = sub_1B81F8C68();
    v76 = sub_1B81F88D8();
    v77 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB48, &qword_1B81FD098) + 36)];
    *v77 = v75;
    v77[8] = v76;
    v78 = objc_opt_self();
    v79 = [v78 systemGray6Color];
    v80 = sub_1B81F8C38();
    KeyPath = swift_getKeyPath();
    v82 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB50, &qword_1B81FD0D0) + 36)];
    *v82 = KeyPath;
    v82[1] = v80;
    v83 = v133;
    v69(v133 + *(v13 + 20), v66, v67);
    *v83 = v128;
    v84 = [v78 systemGray4Color];
    v85 = sub_1B81F8C38();
    sub_1B81F81A8();
    v86 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB58, &qword_1B81FD0D8) + 36)];
    sub_1B8192C38();
    v87 = &v86[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB60, &qword_1B81FD0E0) + 36)];
    v88 = v147[0];
    *v87 = v146;
    *(v87 + 1) = v88;
    *(v87 + 4) = *&v147[1];
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB68, &qword_1B81FD0E8);
    *&v86[*(v89 + 52)] = v85;
    *&v86[*(v89 + 56)] = 256;
    v90 = sub_1B81F8EB8();
    v92 = v91;
    sub_1B8192C90(v83);
    v93 = &v86[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB70, &qword_1B81FD0F0) + 36)];
    *v93 = v90;
    v93[1] = v92;
    v94 = sub_1B81F8EB8();
    v96 = v95;
    v97 = &v86[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB78, &qword_1B81FD0F8) + 36)];
    *v97 = v94;
    v97[1] = v96;
    v98 = *sub_1B8186DDC();
    v99 = *sub_1B8186DD0();
    v100 = sub_1B81F88D8();
    v101 = v138;
    v102 = &v21[*(v138 + 36)];
    *v102 = v100;
    *(v102 + 1) = v98;
    *(v102 + 2) = v99;
    *(v102 + 3) = 0;
    *(v102 + 4) = v99;
    v102[40] = 0;
    v103 = OUTLINED_FUNCTION_47();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v101);
    v106 = v135;
    sub_1B8192D38(v21, v135, &qword_1EBA7CB28, &qword_1B81FD078);
    if (__swift_getEnumTagSinglePayload(v106, 1, v101) == 1)
    {
      sub_1B8192D84(v21, &qword_1EBA7CB28, &qword_1B81FD078);
      v107 = 0;
    }

    else
    {
      sub_1B8192CEC(v106, v132, &qword_1EBA7CB20, &qword_1B81FD070);
      sub_1B8192DDC();
      v107 = sub_1B81F8DD8();
      sub_1B8192D84(v21, &qword_1EBA7CB28, &qword_1B81FD078);
    }

    v113 = v134;
    (*(v136 + 32))(v134, v143, v137);
    *(v113 + *(v142 + 36)) = v107;
    OUTLINED_FUNCTION_51();
    sub_1B8192CEC(v114, v115, v116, v117);
    OUTLINED_FUNCTION_51();
    sub_1B8192D38(v118, v119, v120, v121);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C710, &qword_1B81FC810);
    sub_1B8190880();
    sub_1B819098C();
    sub_1B81F8718();
    OUTLINED_FUNCTION_59();
    sub_1B8192D38(v122, v123, v124, &qword_1B81FC808);
    swift_storeEnumTagMultiPayload();
    sub_1B81907F4();
    sub_1B8190AC4();
    sub_1B81F8718();
    OUTLINED_FUNCTION_42();
    sub_1B8192D84(v125, v126, v127);
    OUTLINED_FUNCTION_53();
    goto LABEL_10;
  }

  v108 = *(type metadata accessor for SGSuggestionsTableCell(0) + 28);
  *(v1 + v108) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7C770, &qword_1B81FC868);
  swift_storeEnumTagMultiPayload();
  *v1 = v35;
  *(v1 + 8) = v57;
  v109 = v35;
  v110 = v57;
  v111 = sub_1B81C0B54(v109);
  *(v1 + 16) = v111 & 1;
  *(v1 + 17) = BYTE1(v111) & 1;
  *(v1 + 18) = BYTE2(v111) & 1;
  v112 = v1 + *(v9 + 36);
  *v112 = 0u;
  *(v112 + 16) = 0u;
  *(v112 + 32) = 0;
  sub_1B8192D38(v1, v2, &qword_1EBA7C760, &qword_1B81FC830);
  swift_storeEnumTagMultiPayload();
  sub_1B81907F4();
  sub_1B8190AC4();
  sub_1B81F8718();
  sub_1B8192D84(v1, &qword_1EBA7C760, &qword_1B81FC830);
LABEL_11:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B818BE24()
{
  OUTLINED_FUNCTION_46();
  sub_1B81F7A38();
  OUTLINED_FUNCTION_2();
  v0 = OUTLINED_FUNCTION_16_0();

  return v1(v0);
}

void sub_1B818BE7C(uint64_t a1, uint64_t a2)
{
  sub_1B8188DE0();

  sub_1B81F8AF8();
  sub_1B81D5DA4(MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
}

uint64_t sub_1B818BF00()
{
  v1 = OUTLINED_FUNCTION_61();
  sub_1B8190C24(v1, v2, v0);
}

void sub_1B818BF34()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  v3 = sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v7 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_0();
  v10 = type metadata accessor for SGSuggestionsTableCell(0);
  sub_1B8192D38(v0 + *(v10 + 28), v2, &unk_1EBA7C770, &qword_1B81FC868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F82B8();
    OUTLINED_FUNCTION_2();
    v11 = OUTLINED_FUNCTION_61();
    v12(v11);
  }

  else
  {
    sub_1B81F9198();
    v13 = sub_1B81F88B8();
    sub_1B81F8018();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_37();
}

double sub_1B818C138(uint64_t a1)
{
  v2 = sub_1B81F82B8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  (*(v4 + 104))(v1, *MEMORY[0x1E697E6C8], v2);
  sub_1B8190720(&qword_1EBA7C780, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v6 = sub_1B81F8F38();
  v7 = OUTLINED_FUNCTION_54();
  v8(v7);
  v9 = *sub_1B8186D70();
  if ((v6 & 1) == 0)
  {
    return v9 + *sub_1B8186D7C();
  }

  return v9;
}

void sub_1B818C270()
{
  OUTLINED_FUNCTION_38();
  v2 = sub_1B81F8368();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C788, &qword_1B81FC870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_0();
  v10 = sub_1B81F8518();
  v11 = *sub_1B8186D64();
  *v1 = v10;
  *(v1 + 8) = v11;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C790, &qword_1B81FC878);
  sub_1B818C418(v0);
  sub_1B81F8358();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_41();
  sub_1B81930C0(v12, v13, v14, v15);
  OUTLINED_FUNCTION_22_0();
  sub_1B8190720(v16, v17, MEMORY[0x1E697C240]);
  sub_1B81F8B28();
  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_41();
  sub_1B8192D84(v18, v19, v20);
  OUTLINED_FUNCTION_37();
}

void sub_1B818C418(uint64_t a1)
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA40, &qword_1B81FCF88);
  v10 = OUTLINED_FUNCTION_21(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  if (*(v6 + 16) == 1)
  {
    v51 = v8;
    v16 = sub_1B81F85C8();
    v17 = *v6;
    OUTLINED_FUNCTION_24_0();
    v19 = (*(v18 + 584))();
    v50 = v16;
    if (v19)
    {

      v56[0] = v17;
      LOWORD(v56[1]) = 0;
    }

    else
    {
      v56[0] = v17;
      LOWORD(v56[1]) = 256;
    }

    sub_1B8191F4C();
    sub_1B8191FA0();
    v25 = v17;
    sub_1B81F8718();
    v21 = v57;
    v26 = v58;
    v27 = BYTE1(v58);
    v28 = v57;

    LOBYTE(v57) = 1;
    LOBYTE(v56[0]) = v27;
    LOBYTE(v55) = 1;
    v23 = 1;
    v29 = v27;
    v53 = 1;
    v30 = sub_1B81F8908();
    sub_1B8186D64();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    LOBYTE(v54) = 0;
    v24 = v29 << 8;
    v52 = v30;
    v22 = v26;
    v8 = v51;
    v20 = v50;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v52 = 0;
    v53 = 0;
    v22 = 0;
    v23 = 0;
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v24 = 65280;
    v4 = 0;
  }

  v50 = v23;
  v51 = v21;
  *v15 = sub_1B81F85D8();
  *(v15 + 1) = 0;
  v15[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA48, &qword_1B81FCF90);
  sub_1B818C7F0(v6, v31, v32, v33, v34, v35, v36, v37, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8]);
  v38 = v24 | v22;
  sub_1B8192D38(v15, v12, &qword_1EBA7CA40, &qword_1B81FCF88);
  v56[0] = v20;
  v56[1] = 0;
  v56[2] = v23;
  v56[3] = v21;
  v56[4] = v38;
  v56[5] = 0;
  v39 = v53;
  v56[6] = v53;
  v40 = v20;
  v41 = v52;
  v56[7] = v52;
  v56[8] = v1;
  v56[9] = v2;
  v56[10] = v3;
  v56[11] = v4;
  LOBYTE(v56[12]) = 0;
  memcpy(v8, v56, 0x61uLL);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA50, &qword_1B81FCF98);
  sub_1B8192D38(v12, v8 + *(v42 + 48), &qword_1EBA7CA40, &qword_1B81FCF88);
  sub_1B8192D38(v56, &v57, &qword_1EBA7CA58, &qword_1B81FCFA0);
  OUTLINED_FUNCTION_60();
  sub_1B8192D84(v43, v44, v45);
  OUTLINED_FUNCTION_60();
  sub_1B8192D84(v46, v47, v48);
  v57 = v40;
  v58 = 0;
  v59 = v50;
  v60 = v51;
  v61 = v38;
  v62 = 0;
  v63 = v39;
  v64 = v41;
  v65 = v1;
  v66 = v2;
  v67 = v3;
  v68 = v4;
  v69 = 0;
  sub_1B8192D84(&v57, &qword_1EBA7CA58, &qword_1B81FCFA0);
  OUTLINED_FUNCTION_36();
}

void sub_1B818C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_33();
  a23 = v24;
  a24 = v29;
  v31 = v30;
  v162 = v32;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA60, &qword_1B81FCFA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA68, &qword_1B81FCFB0);
  v36 = OUTLINED_FUNCTION_21(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v38);
  v150 = sub_1B81F8E28();
  OUTLINED_FUNCTION_1_0();
  v149 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CA70, &qword_1B81FCFB8);
  v44 = OUTLINED_FUNCTION_21(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v46);
  v47 = type metadata accessor for SGSuggestionsTableCell(0);
  v155 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v156 = v48;
  OUTLINED_FUNCTION_28(&v148 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DB00, &qword_1B81FCFC0);
  OUTLINED_FUNCTION_1_0();
  v164 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v52);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA80, &qword_1B81FCFC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v55);
  v56 = sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  v58 = v57;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_6();
  v62 = v61 - v60;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA88, &qword_1B81FCFD0);
  v64 = v63 - 8;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v148 - v66;
  *v67 = sub_1B81F8528();
  *(v67 + 1) = 0;
  v173 = 1;
  v67[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA90, &qword_1B81FCFD8);
  sub_1B818D664(v31);
  sub_1B81F8948();
  v68 = *MEMORY[0x1E6980EA8];
  v170 = *(v58 + 104);
  v170(v62, v68, v56);
  sub_1B81F89E8();

  v169 = *(v58 + 8);
  v169(v62, v56);
  v69 = sub_1B81F8968();

  KeyPath = swift_getKeyPath();
  v71 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA98, &qword_1B81FD010) + 36)];
  *v71 = KeyPath;
  v71[1] = v69;
  LOBYTE(v69) = sub_1B81F88E8();
  sub_1B8186D4C();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v72 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CAA0, &qword_1B81FD018) + 36)];
  *v72 = v69;
  *(v72 + 1) = v25;
  *(v72 + 2) = v26;
  *(v72 + 3) = v27;
  *(v72 + 4) = v28;
  v72[40] = 0;
  LOBYTE(v69) = sub_1B81F8928();
  sub_1B8186D64();
  sub_1B81F8148();
  v73 = *(v64 + 44);
  v171 = v67;
  v74 = &v67[v73];
  v75 = v31;
  *v74 = v69;
  *(v74 + 1) = v76;
  *(v74 + 2) = v77;
  *(v74 + 3) = v78;
  *(v74 + 4) = v79;
  v74[40] = 0;
  if (*(v31 + 17) == 1)
  {
    OUTLINED_FUNCTION_24_0();
    v81 = (*(v80 + 344))();
    if (v82)
    {
      v177 = v81;
      v178 = v82;
      sub_1B8188DE0();
      v168 = sub_1B81F8AF8();
      v167 = v83;
      sub_1B81F8948();
      v170(v62, v68, v56);
      sub_1B81F89E8();

      v169(v62, v56);
      v170 = sub_1B81F8AD8();
      v169 = v84;
      v86 = v85;
      v173 = v87;

      v88 = OUTLINED_FUNCTION_52();
      sub_1B8190C24(v88, v89, v90);

      v91 = sub_1B81F8928();
      sub_1B81F8148();
      OUTLINED_FUNCTION_8_0();
      LOBYTE(v177) = v86 & 1;
      LOBYTE(v176[0]) = 0;
      v167 = v86 & 1;
      v168 = v91;
      goto LABEL_7;
    }

    v170 = 0;
    v169 = 0;
    v92 = &a16;
  }

  else
  {
    v170 = 0;
    v92 = &a12;
  }

  *(v92 - 32) = 0;
  v168 = 0;
  v167 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_7:
  v93 = v174;
  sub_1B81F8E18();
  sub_1B81F88E8();
  sub_1B8186D58();
  sub_1B81F8148();
  OUTLINED_FUNCTION_9_0(v93 + *(v154 + 36), v94, v95, v96, v97);
  OUTLINED_FUNCTION_18_0();
  v98 = v157;
  sub_1B8192C38();
  v99 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v100 = swift_allocObject();
  v101 = sub_1B819253C(v98, v100 + v99);
  MEMORY[0x1EEE9AC00](v101);
  *(&v148 - 2) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DB40, &unk_1B81FD020);
  sub_1B81926D4();
  sub_1B81F8D88();
  if (*(v75 + 18) == 1)
  {
    sub_1B81F8E18();
    OUTLINED_FUNCTION_24_0();
    v103 = (*(v102 + 464))();
    if (v103)
    {
      v104 = v103;
      if ([v103 respondsToSelector_])
      {
        v105 = [v104 suggestionDismissAction];
        swift_unknownObjectRelease();
        if (v105)
        {
          v106 = [v105 title];

          v107 = sub_1B81F8F98();
          v109 = v108;

          OUTLINED_FUNCTION_18_0();
          sub_1B8192C38();
          v110 = swift_allocObject();
          v111 = sub_1B819253C(v98, v110 + v99);
          MEMORY[0x1EEE9AC00](v111);
          *(&v148 - 4) = v107;
          *(&v148 - 3) = v109;
          *(&v148 - 2) = v75;
          v112 = v163;
          sub_1B81F8D88();

          (*(v164 + 32))(v153, v112, v166);
          v113 = 0;
LABEL_15:
          v115 = v153;
          __swift_storeEnumTagSinglePayload(v153, v113, 1, v166);
          v116 = v149;
          v117 = *(v149 + 16);
          v118 = v148;
          v119 = v158;
          v120 = v150;
          v117(v148, v158, v150);
          v121 = v151;
          sub_1B8192D38(v115, v151, &qword_1EBA7CA68, &qword_1B81FCFB0);
          v122 = v152;
          v117(v152, v118, v120);
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CAF0, &qword_1B81FD048);
          sub_1B8192D38(v121, v122 + *(v123 + 48), &qword_1EBA7CA68, &qword_1B81FCFB0);
          sub_1B8192D84(v115, &qword_1EBA7CA68, &qword_1B81FCFB0);
          v124 = *(v116 + 8);
          v124(v119, v120);
          sub_1B8192D84(v121, &qword_1EBA7CA68, &qword_1B81FCFB0);
          v124(v118, v120);
          sub_1B8192CEC(v122, v165, &qword_1EBA7CA60, &qword_1B81FCFA8);
          v114 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v113 = 1;
    goto LABEL_15;
  }

  v114 = 1;
LABEL_16:
  v125 = v165;
  __swift_storeEnumTagSinglePayload(v165, v114, 1, v160);
  OUTLINED_FUNCTION_42();
  sub_1B8192D38(v126, v127, v128, v129);
  v130 = v159;
  sub_1B8192D38(v174, v159, &qword_1EBA7CA80, &qword_1B81FCFC8);
  v131 = v164;
  v132 = *(v164 + 16);
  v133 = v163;
  v134 = v166;
  v132(v163, v175, v166);
  v135 = v161;
  sub_1B8192D38(v125, v161, &unk_1EBA7CA70, &qword_1B81FCFB8);
  v136 = v162;
  OUTLINED_FUNCTION_42();
  sub_1B8192D38(v137, v138, v139, &qword_1B81FCFD0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CAE8, &qword_1B81FD040);
  v141 = v140[12];
  v176[0] = v170;
  v176[1] = v169;
  v176[2] = v167;
  v176[3] = v173;
  v176[4] = v168;
  v176[5] = 0;
  v176[6] = v26;
  v176[7] = v27;
  v176[8] = v28;
  LOBYTE(v176[9]) = 0;
  memcpy((v136 + v141), v176, 0x49uLL);
  sub_1B8192D38(v130, v136 + v140[16], &qword_1EBA7CA80, &qword_1B81FCFC8);
  v132(v136 + v140[20], v133, v134);
  sub_1B8192D38(v135, v136 + v140[24], &unk_1EBA7CA70, &qword_1B81FCFB8);
  sub_1B8192D38(v176, &v177, &qword_1EBA7C9D0, &qword_1B81FCEB0);
  OUTLINED_FUNCTION_42();
  sub_1B8192D84(v142, v143, v144);
  v145 = *(v131 + 8);
  v145(v175, v134);
  sub_1B8192D84(v174, &qword_1EBA7CA80, &qword_1B81FCFC8);
  sub_1B8192D84(v171, &qword_1EBA7CA88, &qword_1B81FCFD0);
  sub_1B8192D84(v135, &unk_1EBA7CA70, &qword_1B81FCFB8);
  v145(v133, v134);
  v146 = OUTLINED_FUNCTION_64();
  sub_1B8192D84(v146, v147, &qword_1B81FCFC8);
  v177 = v170;
  v178 = v169;
  v179 = v167;
  v180 = v173;
  v181 = v168;
  v182 = 0;
  v183 = v26;
  v184 = v27;
  v185 = v28;
  v186 = 0;
  sub_1B8192D84(&v177, &qword_1EBA7C9D0, &qword_1B81FCEB0);
  sub_1B8192D84(v172, &qword_1EBA7CA88, &qword_1B81FCFD0);
  OUTLINED_FUNCTION_36();
}

void sub_1B818D664(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CAF8, &unk_1B81FD050);
  OUTLINED_FUNCTION_1_0();
  v53 = v6;
  v54 = v7;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v10 = v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB00, &unk_1B81FE860);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB08, &unk_1B81FD060);
  v15 = OUTLINED_FUNCTION_21(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = *v3;
  v20 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_24_0();
  v57 = (*(v21 + 296))();
  v58 = v22;
  sub_1B8188DE0();
  v23 = sub_1B81F8AF8();
  v25 = v24;
  v55 = v26;
  v28 = v27;
  v29 = (*((*v20 & *v19) + 0x1D0))();
  if (!v29)
  {
    goto LABEL_6;
  }

  v30 = v29;
  if (([v29 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v31 = [v30 suggestionFeedbackAction];
  swift_unknownObjectRelease();
  if (!v31)
  {
LABEL_6:
    v40 = 1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_55();
  *(swift_allocObject() + 16) = v31;
  v32 = v31;
  v51 = v32;
  v52 = v10;
  sub_1B81F8D88();
  v33 = [v32 title];
  sub_1B81F8F98();

  OUTLINED_FUNCTION_25();
  sub_1B81930C0(v34, v35, v36, v37);
  v38 = v52;
  v39 = v53;
  sub_1B81F8B58();

  (*(v54 + 8))(v38, v39);
  sub_1B8192CEC(v13, v18, &qword_1EBA7CB00, &unk_1B81FE860);
  v40 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v18, v40, 1, v56);
  v41 = OUTLINED_FUNCTION_63();
  sub_1B8192D38(v41, v42, &qword_1EBA7CB08, &unk_1B81FD060);
  *v5 = v23;
  *(v5 + 8) = v25;
  v43 = v55 & 1;
  *(v5 + 16) = v55 & 1;
  *(v5 + 24) = v28;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB10, &qword_1B81FE870);
  sub_1B8192D38(v1, v5 + *(v44 + 48), &qword_1EBA7CB08, &unk_1B81FD060);
  v45 = OUTLINED_FUNCTION_64();
  sub_1B8192C18(v45, v46, v43);

  sub_1B8192D84(v18, &qword_1EBA7CB08, &unk_1B81FD060);
  v47 = OUTLINED_FUNCTION_54();
  sub_1B8192D84(v47, v48, &unk_1B81FD060);
  v49 = OUTLINED_FUNCTION_64();
  sub_1B8190C24(v49, v50, v43);

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B818DA8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B81F8CF8();
  *a1 = result;
  return result;
}

void sub_1B818DAD4(uint64_t a1)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_46();
  v24 = sub_1B81F82B8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_24_0();
  v26 = (*(v8 + 440))();
  v27 = v9;
  sub_1B8188DE0();
  v10 = sub_1B81F8AF8();
  v12 = v11;
  v14 = v13;
  if (qword_1EDC8BF60 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDC8BF60);
  }

  v23 = sub_1B81F8AB8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1B8190C24(v10, v12, v14 & 1);

  sub_1B81F8EC8();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_11_0();
  v28 = v18 & 1;
  sub_1B818BF34();
  sub_1B818C138(v7);
  (*(v3 + 8))(v7, v24);
  v21 = sub_1B81F8EB8();
  OUTLINED_FUNCTION_43(v21, v22);
  *v1 = v23;
  *(v1 + 8) = v16;
  *(v1 + 16) = v18 & 1;
  *(v1 + 24) = v20;
  memcpy((v1 + 32), v25, 0x70uLL);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
}

uint64_t *sub_1B818DCDC()
{
  if (qword_1EDC8BF60 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDC8BF60);
  }

  return &qword_1EBA7F578;
}

uint64_t sub_1B818DD1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA38, &unk_1B81FFFC0);
    v2 = sub_1B81F9358();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1B8192514(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1B8192514(v29, v30);
    result = sub_1B81F9238();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1B8192514(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1B818DFCC(uint64_t a1)
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_46();
  v26 = sub_1B81F82B8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v28 = v5;
  v29 = v3;
  sub_1B8188DE0();

  v12 = sub_1B81F8AF8();
  v14 = v13;
  v16 = v15;
  if (qword_1EDC8BF60 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDC8BF60);
  }

  v17 = sub_1B81F8AB8();
  v25 = v18;
  v20 = v19;
  v22 = v21;
  sub_1B8190C24(v12, v14, v16 & 1);

  sub_1B81F8EC8();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_11_0();
  v20 &= 1u;
  v30 = v20;
  sub_1B818BF34();
  sub_1B818C138(v11);
  (*(v7 + 8))(v11, v26);
  v23 = sub_1B81F8EB8();
  OUTLINED_FUNCTION_43(v23, v24);
  *v1 = v17;
  *(v1 + 8) = v25;
  *(v1 + 16) = v20;
  *(v1 + 24) = v22;
  memcpy((v1 + 32), v27, 0x70uLL);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
}

void sub_1B818E1A0(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7A8, &qword_1B81FC880);
  OUTLINED_FUNCTION_21(v8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7B0, &qword_1B81FC888) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_0();
  v14 = sub_1B81F8518();
  v15 = *sub_1B8186EE4();
  *v11 = v14;
  *(v11 + 1) = v15;
  v11[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7B8, &qword_1B81FC890);
  sub_1B818E35C(v5, v3);
  sub_1B81F8EC8();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_62();
  sub_1B8192CEC(v16, v17, v18, &qword_1B81FC880);
  memcpy((v1 + *(v12 + 44)), v20, 0x70uLL);
  v19 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7C0, &qword_1B81FC898) + 36);
  sub_1B81F8E78();
  LOBYTE(v14) = sub_1B81F88D8();
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7C8, &qword_1B81FC8A0) + 36)) = v14;
  sub_1B8192CEC(v1, v7, &qword_1EBA7C7B0, &qword_1B81FC888);
  OUTLINED_FUNCTION_37();
}

void sub_1B818E35C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C980, &qword_1B81FCE70);
  v16 = OUTLINED_FUNCTION_21(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  if (v8)
  {
    v40 = v8;
    v41 = v10;
    v42 = v14;
    v39 = sub_1B81F85C8();
    v20 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x248);
    v21 = v12;
    v22 = v20();

    if (v22)
    {

      v53[0] = v12;
      v23 = 1;
    }

    else
    {
      v53[0] = v12;
      v23 = 257;
    }

    LOWORD(v53[1]) = v23;
    sub_1B8191F4C();
    sub_1B8191FA0();
    sub_1B81F8718();
    v24 = v54[0];
    v25 = v54[1];
    v26 = BYTE1(v54[1]);
    v27 = v54[0];

    v45 = 1;
    v44 = v26;
    v43 = 1;
    v28 = sub_1B81F8908();
    sub_1B8186EE4();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    LOBYTE(v54[0]) = 0;
    v29 = sub_1B81F88E8();
    sub_1B8186ED8();
    sub_1B81F8148();
    v53[0] = v39;
    v53[1] = 0;
    LOBYTE(v53[2]) = 1;
    *(&v53[2] + 1) = v52[0];
    HIDWORD(v53[2]) = *(v52 + 3);
    v53[3] = v24;
    LOBYTE(v53[4]) = v25;
    BYTE1(v53[4]) = v26;
    HIWORD(v53[4]) = v50;
    *(&v53[4] + 2) = v49;
    v53[5] = 0;
    LOBYTE(v53[6]) = 1;
    HIDWORD(v53[6]) = *(v51 + 3);
    *(&v53[6] + 1) = v51[0];
    LOBYTE(v53[7]) = v28;
    HIDWORD(v53[7]) = *&v48[3];
    *(&v53[7] + 1) = *v48;
    v53[8] = v3;
    v53[9] = v4;
    v53[10] = v5;
    v53[11] = v6;
    LOBYTE(v53[12]) = 0;
    HIDWORD(v53[12]) = *&v47[3];
    *(&v53[12] + 1) = *v47;
    LOBYTE(v53[13]) = v29;
    HIDWORD(v53[13]) = *&v46[3];
    *(&v53[13] + 1) = *v46;
    v53[14] = v30;
    v53[15] = v31;
    v53[16] = v32;
    v53[17] = v33;
    LOBYTE(v53[18]) = 0;
    nullsub_1();
    memcpy(v54, v53, 0x91uLL);
    v10 = v41;
    v14 = v42;
    LOWORD(v8) = v40;
  }

  else
  {
    sub_1B8191F1C(v54);
  }

  *v19 = sub_1B81F85D8();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C988, &qword_1B81FCE78);
  sub_1B818E728(v12, v10, v8 & 0x101, &v19[*(v34 + 44)]);
  memcpy(v51, v54, 0x91uLL);
  sub_1B8192D38(v19, v2, &qword_1EBA7C980, &qword_1B81FCE70);
  memcpy(v52, v51, 0x91uLL);
  memcpy(v14, v51, 0x91uLL);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C990, &qword_1B81FCE80);
  sub_1B8192D38(v2, v14 + *(v35 + 48), &qword_1EBA7C980, &qword_1B81FCE70);
  sub_1B8192D38(v52, v53, &qword_1EBA7C998, &qword_1B81FCE88);
  sub_1B8192D84(v19, &qword_1EBA7C980, &qword_1B81FCE70);
  v36 = OUTLINED_FUNCTION_54();
  sub_1B8192D84(v36, v37, &qword_1B81FCE70);
  memcpy(v53, v51, 0x91uLL);
  sub_1B8192D84(v53, &qword_1EBA7C998, &qword_1B81FCE88);
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1B818E728@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9B0, &qword_1B81FCE90);
  v6 = OUTLINED_FUNCTION_21(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v75 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v73 = v9;
  v10 = sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v15 - v14;
  v90 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x128))();
  v91 = v17;
  sub_1B8188DE0();
  v18 = sub_1B81F8AF8();
  v20 = v19;
  v22 = v21;
  sub_1B81F8A18();
  v61 = *MEMORY[0x1E6980EA8];
  v59 = *(v12 + 104);
  v59(v16);
  sub_1B81F89E8();

  v66 = v10;
  v57 = *(v12 + 8);
  v57(v16, v10);
  v23 = sub_1B81F8AD8();
  v83 = v24;
  v84 = v23;
  v26 = v25;
  v85 = v27;

  sub_1B8190C24(v18, v20, v22 & 1);

  v82 = sub_1B81F88E8();
  sub_1B8186ED8();
  sub_1B81F8148();
  v70 = v29;
  v71 = v28;
  v68 = v31;
  v69 = v30;
  v32 = v26 & 1;
  LOBYTE(v86[0]) = v26 & 1;
  LOBYTE(v88[0]) = 0;
  v81 = sub_1B81F8928();
  sub_1B8186EE4();
  v33 = sub_1B81F8148();
  v79 = v35;
  v80 = v34;
  v77 = v37;
  v78 = v36;
  LOBYTE(v90) = 0;
  if ((a3 & 0x100) != 0)
  {
    v40 = a1;
    v41 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x158))(v33);
    if (v42)
    {
      v90 = v41;
      v91 = v42;
      sub_1B81F8AF8();
      OUTLINED_FUNCTION_48();
      sub_1B81F8A08();
      (v59)(v16, v61, v66);
      sub_1B81F89E8();
      v32 = v26 & 1;

      v57(v16, v66);
      v43 = sub_1B81F8AD8();
      v65 = v44;
      v67 = v43;
      v46 = v45;
      v63 = v47;

      v40 = a1;
      sub_1B8190C24(a1, v20, a3 & 1);

      v48 = sub_1B81F8928();
      sub_1B81F8148();
      v64 = v49;
      v60 = v51;
      v62 = v50;
      v58 = v52;
      LOBYTE(v90) = v46 & 1;
      LOBYTE(v86[0]) = 0;
      v39 = v46 & 1;
      v38 = v48;
    }

    else
    {
      v64 = 0;
      v65 = 0;
      v67 = 0;
      v63 = 0;
      v38 = 0;
      v39 = 0;
      v60 = 0;
      v62 = 0;
      v58 = 0;
    }
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v67 = 0;
    v38 = 0;
    v39 = 0;
    v60 = 0;
    v62 = 0;
    v63 = 1;
    v58 = 0;
    v40 = a1;
  }

  v53 = sub_1B81F8518();
  v54 = *sub_1B8186ECC();
  *v73 = v53;
  *(v73 + 8) = v54;
  *(v73 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9B8, &qword_1B81FCE98);
  sub_1B818EE68(v40, a2);
  sub_1B8192D38(v73, v75, &qword_1EBA7C9B0, &qword_1B81FCE90);
  v86[0] = v84;
  v86[1] = v83;
  LOBYTE(v86[2]) = v32;
  *(&v86[2] + 1) = *v111;
  HIDWORD(v86[2]) = *&v111[3];
  v86[3] = v85;
  LOBYTE(v86[4]) = v82;
  *(&v86[4] + 1) = *v110;
  HIDWORD(v86[4]) = *&v110[3];
  v86[5] = v71;
  v86[6] = v70;
  v86[7] = v69;
  v86[8] = v68;
  LOBYTE(v86[9]) = 0;
  HIDWORD(v86[9]) = *(v113 + 3);
  *(&v86[9] + 1) = v113[0];
  LOBYTE(v86[10]) = v81;
  HIDWORD(v86[10]) = *&v112[3];
  *(&v86[10] + 1) = *v112;
  v86[11] = v80;
  v86[12] = v79;
  v86[13] = v78;
  v86[14] = v77;
  LOBYTE(v86[15]) = 0;
  memcpy(a4, v86, 0x79uLL);
  v87[0] = v67;
  v87[1] = v65;
  v87[2] = v39;
  v87[3] = v63;
  v87[4] = v38;
  v87[5] = v64;
  v87[6] = v62;
  v87[7] = v60;
  v87[8] = v58;
  LOBYTE(v87[9]) = 0;
  memcpy((a4 + 128), v87, 0x49uLL);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9C0, &qword_1B81FCEA0);
  sub_1B8192D38(v75, a4 + *(v55 + 64), &qword_1EBA7C9B0, &qword_1B81FCE90);
  sub_1B8192D38(v86, &v90, &qword_1EBA7C9C8, &qword_1B81FCEA8);
  sub_1B8192D38(v87, &v90, &qword_1EBA7C9D0, &qword_1B81FCEB0);
  sub_1B8192D84(v73, &qword_1EBA7C9B0, &qword_1B81FCE90);
  sub_1B8192D84(v75, &qword_1EBA7C9B0, &qword_1B81FCE90);
  v88[0] = v67;
  v88[1] = v65;
  v88[2] = v39;
  v88[3] = v63;
  v88[4] = v38;
  v88[5] = v64;
  v88[6] = v62;
  v88[7] = v60;
  v88[8] = v58;
  v89 = 0;
  sub_1B8192D84(v88, &qword_1EBA7C9D0, &qword_1B81FCEB0);
  v90 = v84;
  v91 = v83;
  v92 = v32;
  *v93 = *v111;
  *&v93[3] = *&v111[3];
  v94 = v85;
  v95 = v82;
  *v96 = *v110;
  *&v96[3] = *&v110[3];
  v97 = v71;
  v98 = v70;
  v99 = v69;
  v100 = v68;
  v101 = 0;
  *&v102[3] = *(v113 + 3);
  *v102 = v113[0];
  v103 = v81;
  *&v104[3] = *&v112[3];
  *v104 = *v112;
  v105 = v80;
  v106 = v79;
  v107 = v78;
  v108 = v77;
  v109 = 0;
  return sub_1B8192D84(&v90, &qword_1EBA7C9C8, &qword_1B81FCEA8);
}

void sub_1B818EE68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33();
  LODWORD(v158) = v7;
  v9 = v8;
  v11 = v10;
  v156 = v12;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9D8, &qword_1B81FCEB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v148 = v14;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9E0, &qword_1B81FCEC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v150 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9E8, &qword_1B81FCEC8);
  v18 = OUTLINED_FUNCTION_21(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v155 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31();
  v154 = v21;
  v22 = sub_1B81F8598();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9F0, &qword_1B81FCED0);
  OUTLINED_FUNCTION_1_0();
  v31 = v30;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_49();
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9F8, &qword_1B81FCED8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_0();
  v152 = v34;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v128 - v36;
  v38 = swift_allocObject();
  *(v38 + 16) = v11;
  *(v38 + 24) = v9;
  v39 = v158;
  *(v38 + 32) = v158 & 1;
  *(v38 + 33) = BYTE1(v39) & 1;
  *(v38 + 34) = BYTE2(v39) & 1;
  v159 = v11;
  v160 = v9;
  v139 = v39 & 1;
  v161 = v39 & 0x101;
  v138 = (v39 >> 8) & 1;
  v162 = BYTE2(v39) & 1;
  v149 = v11;
  v140 = v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA00, &unk_1B81FCEE0);
  v41 = sub_1B819218C();
  v142 = v40;
  v141 = v41;
  sub_1B81F8D88();
  sub_1B81F8588();
  OUTLINED_FUNCTION_25();
  v44 = sub_1B81930C0(v42, &qword_1EBA7C9F0, &qword_1B81FCED0, v43);
  v45 = sub_1B8190720(&qword_1EDC8A3A8, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  v137 = v44;
  v136 = v45;
  sub_1B81F8B28();
  v46 = *(v24 + 8);
  v144 = v28;
  v147 = v22;
  v146 = v24 + 8;
  v135 = v46;
  v46(v28, v22);
  v47 = *(v31 + 8);
  v143 = v2;
  v145 = v29;
  v47(v2, v29);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CA10, &qword_1B81FCEF0);
  v49 = &v37[*(v48 + 36)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1F0, &qword_1B81FCEF8);
  v51 = *(v50 + 28);
  v52 = *MEMORY[0x1E697DC20];
  v53 = sub_1B81F8188();
  OUTLINED_FUNCTION_2();
  v55 = *(v54 + 104);
  v134 = v52;
  v133 = v55;
  v132 = v54 + 104;
  v55(v49 + v51, v52, v53);
  *v49 = swift_getKeyPath();
  LOBYTE(v49) = sub_1B81F88E8();
  sub_1B8186ED8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA20, &qword_1B81FCF30);
  v57 = &v37[*(v56 + 36)];
  *v57 = v49;
  *(v57 + 1) = v3;
  *(v57 + 2) = v4;
  *(v57 + 3) = v5;
  *(v57 + 4) = v6;
  v57[40] = 0;
  sub_1B81F88F8();
  sub_1B81F8148();
  v58 = &v37[*(v157 + 36)];
  v59 = v158;
  OUTLINED_FUNCTION_9_0(v58, v60, v61, v62, v63);
  if ((v59 & 0x10000) != 0)
  {
    v129 = v56;
    v130 = v50;
    v131 = v48;
    v66 = v149;
    OUTLINED_FUNCTION_24_0();
    v68 = (*(v67 + 464))();
    if (v68)
    {
      v69 = v68;
      v70 = v66;
      if ([v68 respondsToSelector_])
      {
        v71 = [v69 suggestionDismissAction];
        swift_unknownObjectRelease();
        if (v71)
        {
          v158 = v47;
          v72 = (v59 & 0x10000u) >> 16;
          v73 = [v71 title];

          v74 = sub_1B81F8F98();
          v76 = v75;

          v77 = swift_allocObject();
          v128 = &v128;
          v78 = v140;
          *(v77 + 16) = v70;
          *(v77 + 24) = v78;
          *(v77 + 32) = v139;
          *(v77 + 33) = v138;
          *(v77 + 34) = v72;
          MEMORY[0x1EEE9AC00](v77);
          *(&v128 - 2) = v74;
          *(&v128 - 1) = v76;
          v79 = v70;
          v80 = v78;
          v81 = v143;
          sub_1B81F8D88();

          v82 = v144;
          sub_1B81F8588();
          v83 = v147;
          v84 = v148;
          v85 = v145;
          sub_1B81F8B28();
          v135(v82, v83);
          v158(v81, v85);
          v86 = (v84 + *(v131 + 36));
          v133(v86 + *(v130 + 28), v134, v53);
          *v86 = swift_getKeyPath();
          sub_1B81F88E8();
          sub_1B81F8148();
          OUTLINED_FUNCTION_9_0(v84 + *(v129 + 36), v87, v88, v89, v90);
          sub_1B81F88F8();
          sub_1B81F8148();
          OUTLINED_FUNCTION_9_0(v84 + *(v157 + 36), v91, v92, v93, v94);
          sub_1B81F8928();
          sub_1B8186EE4();
          sub_1B81F8148();
          v95 = v151;
          OUTLINED_FUNCTION_9_0(v84 + *(v151 + 36), v96, v97, v98, v99);
          v100 = v150;
          sub_1B8192CEC(v84, v150, &qword_1EBA7C9D8, &qword_1B81FCEB8);
          v101 = 0;
LABEL_9:
          __swift_storeEnumTagSinglePayload(v100, v101, 1, v95);
          v65 = v154;
          sub_1B8192CEC(v100, v154, &qword_1EBA7C9E0, &qword_1B81FCEC0);
          v64 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v101 = 1;
    v100 = v150;
    v95 = v151;
    goto LABEL_9;
  }

  v64 = 1;
  v65 = v154;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v65, v64, 1, v153);
  OUTLINED_FUNCTION_51();
  sub_1B8192D38(v102, v103, v104, v105);
  v106 = v155;
  OUTLINED_FUNCTION_59();
  sub_1B8192D38(v107, v108, v109, &qword_1B81FCEC8);
  v110 = v156;
  OUTLINED_FUNCTION_51();
  sub_1B8192D38(v111, v112, v113, v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA28, &qword_1B81FCF38);
  sub_1B8192D38(v106, v110 + *(v115 + 48), &qword_1EBA7C9E8, &qword_1B81FCEC8);
  OUTLINED_FUNCTION_41();
  sub_1B8192D84(v116, v117, v118);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v119, v120, v121);
  OUTLINED_FUNCTION_41();
  sub_1B8192D84(v122, v123, v124);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v125, v126, v127);
  OUTLINED_FUNCTION_36();
}

void sub_1B818F81C(uint64_t a1)
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_46();
  v3 = sub_1B81F8D08();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7D0, &qword_1B81FC8A8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_0();
  v12 = sub_1B8188B60(v2);
  if (v12)
  {
    v13 = v12;
    sub_1B81F8CE8();
    (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v3);
    sub_1B81F8D38();

    (*(v5 + 8))(v9, v3);
    v14 = [objc_opt_self() currentDevice];
    [v14 userInterfaceIdiom];

    v15 = *sub_1B8186D4C();
    v16 = OUTLINED_FUNCTION_44();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    v19 = sub_1B8190C34();
    sub_1B81D5C4C(v18, v19, v15);

    OUTLINED_FUNCTION_60();
    sub_1B8192D84(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_61();
    v24(v23);
    v25 = OUTLINED_FUNCTION_47();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_29();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

void sub_1B818FAD4(uint64_t a1)
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C828, &qword_1B81FC8D0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12_0();
  v5 = sub_1B8188A38(v2);
  if (v5)
  {
    v6 = v5;
    nullsub_1();
    v8 = v7;
    v9 = [objc_opt_self() currentDevice];
    [v9 userInterfaceIdiom];

    v10 = *sub_1B8186D4C();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C830, &qword_1B81FC8D8);
    v12 = sub_1B8190F04();
    sub_1B81D5C4C(v11, v12, v10);

    v13 = OUTLINED_FUNCTION_61();
    v14(v13);
    v15 = OUTLINED_FUNCTION_47();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v3);
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_29();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }
}

void sub_1B818FC7C(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C858, &qword_1B81FC8E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_65();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C860, &qword_1B81FC8F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_0();
  if (j__OUTLINED_FUNCTION_18())
  {
    sub_1B8186D88();
  }

  else
  {
    sub_1B8186D40();
  }

  sub_1B81F8EA8();
  sub_1B81F8218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C868, &qword_1B81FC8F8);
  OUTLINED_FUNCTION_2();
  (*(v7 + 16))(v1, v3);
  v8 = (v1 + *(v5 + 36));
  *v8 = v12;
  v8[1] = v13;
  v8[2] = v14;
  OUTLINED_FUNCTION_42();
  sub_1B8192D38(v9, v10, v11, &qword_1B81FC8F0);
  OUTLINED_FUNCTION_54();
  swift_storeEnumTagMultiPayload();
  sub_1B8191070();
  sub_1B81F8718();
  sub_1B8192D84(v1, &qword_1EBA7C860, &qword_1B81FC8F0);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B818FE64()
{
  v0 = [objc_opt_self() linkColor];
  result = sub_1B81F8C38();
  qword_1EBA7F578 = result;
  return result;
}

void sub_1B818FEA4(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C880, &qword_1B81FC900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C888, &qword_1B81FC908);
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_0();
  if ((v6 & 1) != 0 && v4 == 6)
  {
    sub_1B81F81D8();
    v14 = OUTLINED_FUNCTION_64();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v16, &qword_1EBA7C890, &qword_1B81FC910, v17);
    sub_1B81F8B88();
    OUTLINED_FUNCTION_59();
    v18();
    OUTLINED_FUNCTION_52();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_63();
    sub_1B81F8718();
    (*(v12 + 8))(v2, v10);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_44();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_2();
    (*(v22 + 16))(v1, v8, v21);
    OUTLINED_FUNCTION_52();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_60();
    sub_1B81930C0(v23, v24, v25, v26);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_63();
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81900F4(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8A0, &qword_1B81FC918);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8A8, &qword_1B81FC920);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8B0, &qword_1B81FC928);
  OUTLINED_FUNCTION_2();
  if ((v6 & 1) != 0 && v4 == 6)
  {
    v14 = OUTLINED_FUNCTION_44();
    v15(v14);
    *(v2 + *(v10 + 36)) = 256;
    sub_1B8192D38(v2, v1, &qword_1EBA7C8A8, &qword_1B81FC920);
    swift_storeEnumTagMultiPayload();
    sub_1B8191128();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v16, v17, v18, v19);
    OUTLINED_FUNCTION_41();
    sub_1B81F8718();
    v20 = OUTLINED_FUNCTION_44();
    sub_1B8192D84(v20, v21, &qword_1B81FC920);
  }

  else
  {
    (*(v13 + 16))(v1, v8, v12);
    swift_storeEnumTagMultiPayload();
    sub_1B8191128();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v22, v23, v24, v25);
    OUTLINED_FUNCTION_41();
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B8190310(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v11[0] = a1;
  v12 = v9;
  return MEMORY[0x1B8CBAA00](v11, a2, a4, a3);
}

uint64_t sub_1B819040C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B81F8428();
  *a1 = result;
  return result;
}

uint64_t sub_1B8190464@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B81F84A8();
  *a1 = result;
  return result;
}

uint64_t sub_1B819050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  return a6(v6);
}

uint64_t sub_1B81905C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B81F84C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B8190624(void *a1)
{
  v2 = [a1 suggestions];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0, &unk_1B81FD110);
  v3 = sub_1B81F90C8();

  return v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B8190720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8190768()
{
  result = qword_1EBA7C6F0;
  if (!qword_1EBA7C6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C6D8, &qword_1B81FC800);
    sub_1B81907F4();
    sub_1B8190AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C6F0);
  }

  return result;
}

unint64_t sub_1B81907F4()
{
  result = qword_1EBA7C6F8;
  if (!qword_1EBA7C6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C700, &qword_1B81FC808);
    sub_1B8190880();
    sub_1B819098C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C6F8);
  }

  return result;
}

unint64_t sub_1B8190880()
{
  result = qword_1EBA7C708;
  if (!qword_1EBA7C708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C710, &qword_1B81FC810);
    sub_1B8190938();
    sub_1B81930C0(&qword_1EBA7C720, &qword_1EBA7C728, &qword_1B81FC818, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C708);
  }

  return result;
}

unint64_t sub_1B8190938()
{
  result = qword_1EBA7C718;
  if (!qword_1EBA7C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C718);
  }

  return result;
}

unint64_t sub_1B819098C()
{
  result = qword_1EBA7C730;
  if (!qword_1EBA7C730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C738, &qword_1B81FC820);
    sub_1B8190A70();
    swift_getOpaqueTypeConformance2();
    sub_1B81930C0(&qword_1EBA7C748, &qword_1EBA7C750, &qword_1B81FC828, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C730);
  }

  return result;
}

unint64_t sub_1B8190A70()
{
  result = qword_1EBA7C740;
  if (!qword_1EBA7C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C740);
  }

  return result;
}

unint64_t sub_1B8190AC4()
{
  result = qword_1EBA7C758;
  if (!qword_1EBA7C758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C760, &qword_1B81FC830);
    sub_1B8190720(&qword_1EBA7C768, type metadata accessor for SGSuggestionsTableCell, &unk_1B81FCA10);
    sub_1B81930C0(&qword_1EBA7C720, &qword_1EBA7C728, &qword_1B81FC818, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C758);
  }

  return result;
}

uint64_t sub_1B8190BEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8190C24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1B8190C34()
{
  result = qword_1EBA7C7E0;
  if (!qword_1EBA7C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7D8, &qword_1B81FC8B0);
    sub_1B8190CC0();
    sub_1B8190EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C7E0);
  }

  return result;
}

unint64_t sub_1B8190CC0()
{
  result = qword_1EBA7C7E8;
  if (!qword_1EBA7C7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7F0, &qword_1B81FC8B8);
    sub_1B8190D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C7E8);
  }

  return result;
}

unint64_t sub_1B8190D4C()
{
  result = qword_1EBA7C7F8;
  if (!qword_1EBA7C7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C800, &qword_1B81FC8C0);
    sub_1B8190DD8();
    sub_1B8190E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C7F8);
  }

  return result;
}

unint64_t sub_1B8190DD8()
{
  result = qword_1EBA7C808;
  if (!qword_1EBA7C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C810, &qword_1B81FC8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C808);
  }

  return result;
}

unint64_t sub_1B8190E5C()
{
  result = qword_1EBA7C818;
  if (!qword_1EBA7C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C818);
  }

  return result;
}

unint64_t sub_1B8190EB0()
{
  result = qword_1EBA7C820;
  if (!qword_1EBA7C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C820);
  }

  return result;
}

unint64_t sub_1B8190F04()
{
  result = qword_1EBA7C838;
  if (!qword_1EBA7C838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C830, &qword_1B81FC8D8);
    sub_1B8190F90();
    sub_1B8190E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C838);
  }

  return result;
}

unint64_t sub_1B8190F90()
{
  result = qword_1EBA7C840;
  if (!qword_1EBA7C840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA7C848, &qword_1B81FC8E0);
    sub_1B819101C();
    sub_1B8190EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C840);
  }

  return result;
}

unint64_t sub_1B819101C()
{
  result = qword_1EDC8A490;
  if (!qword_1EDC8A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A490);
  }

  return result;
}

unint64_t sub_1B8191070()
{
  result = qword_1EBA7C870;
  if (!qword_1EBA7C870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C860, &qword_1B81FC8F0);
    sub_1B81930C0(&qword_1EBA7C878, &qword_1EBA7C868, &qword_1B81FC8F8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C870);
  }

  return result;
}

unint64_t sub_1B8191128()
{
  result = qword_1EBA7C8B8;
  if (!qword_1EBA7C8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C8A8, &qword_1B81FC920);
    sub_1B81930C0(&qword_1EBA7C8C0, &qword_1EBA7C8B0, &qword_1B81FC928, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EBA7C8C8, &qword_1EBA7C8D0, &qword_1B81FC930, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C8B8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B8191348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_40(-1);
  }

  if (a2 < 0 && *(a1 + 56))
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

  return OUTLINED_FUNCTION_40(v2);
}

uint64_t sub_1B8191384(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_56(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_56(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B8191428(uint64_t a1)
{
  result = sub_1B81F7A38();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B819149C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_40(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_40(v2);
}

uint64_t sub_1B81914D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return OUTLINED_FUNCTION_56(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_56(result, a2);
    }
  }

  return result;
}

void sub_1B8191544(uint64_t a1)
{
  type metadata accessor for SGBannerContent();
  if (v1 <= 0x3F)
  {
    sub_1B8189AF0(319, &qword_1EDC8AF50, off_1E7CD8280);
    if (v2 <= 0x3F)
    {
      sub_1B81915F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B81915F8(uint64_t a1)
{
  if (!qword_1EBA7C8E8)
  {
    sub_1B81F82B8();
    v1 = sub_1B81F8198();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA7C8E8);
    }
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1B8191664(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_40(-1);
  }

  if (a2 < 0 && *(a1 + 19))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_40(v2);
}

void *sub_1B81916A0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

      return OUTLINED_FUNCTION_57(result, a2);
    }

    *(result + 19) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57(result, a2);
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B8191714(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_40(-1);
  }

  if (a2 < 0 && *(a1 + 9))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_40(v2);
}

void *sub_1B8191754(void *result, int a2, int a3)
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

      return OUTLINED_FUNCTION_57(result, a2);
    }

    *(result + 9) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B81917C0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8191810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B8191860()
{
  result = qword_1EBA7C8F0;
  if (!qword_1EBA7C8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C8F8, "l|");
    sub_1B8190768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C8F0);
  }

  return result;
}

unint64_t sub_1B81918E4()
{
  result = qword_1EBA7C900;
  if (!qword_1EBA7C900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7C0, &qword_1B81FC898);
    sub_1B819199C();
    sub_1B81930C0(&qword_1EDC8A2F8, &qword_1EBA7C7C8, &qword_1B81FC8A0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C900);
  }

  return result;
}

unint64_t sub_1B819199C()
{
  result = qword_1EBA7C908;
  if (!qword_1EBA7C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7B0, &qword_1B81FC888);
    sub_1B81930C0(&unk_1EBA7C910, &qword_1EBA7C7A8, &qword_1B81FC880, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C908);
  }

  return result;
}

unint64_t sub_1B8191A54()
{
  result = qword_1EBA7C920;
  if (!qword_1EBA7C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C928, ",~");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7D8, &qword_1B81FC8B0);
    sub_1B8190C34();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C920);
  }

  return result;
}

unint64_t sub_1B8191B14()
{
  result = qword_1EBA7C930;
  if (!qword_1EBA7C930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C938, "h~");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C830, &qword_1B81FC8D8);
    sub_1B8190F04();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C930);
  }

  return result;
}

unint64_t sub_1B8191BD4()
{
  result = qword_1EBA7C940;
  if (!qword_1EBA7C940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C948, &qword_1B81FCDF0);
    sub_1B8191070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C940);
  }

  return result;
}

unint64_t sub_1B8191C58()
{
  result = qword_1EBA7C950;
  if (!qword_1EBA7C950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C958, &qword_1B81FCDF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C890, &qword_1B81FC910);
    sub_1B81930C0(&qword_1EBA7C898, &qword_1EBA7C890, &qword_1B81FC910, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C950);
  }

  return result;
}

unint64_t sub_1B8191D50()
{
  result = qword_1EBA7C960;
  if (!qword_1EBA7C960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C968, &unk_1B81FCE00);
    sub_1B8191128();
    sub_1B81930C0(&qword_1EBA7C8C0, &qword_1EBA7C8B0, &qword_1B81FC928, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C960);
  }

  return result;
}

unint64_t sub_1B8191E08()
{
  result = qword_1EBA7C970;
  if (!qword_1EBA7C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C970);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx015CoreSuggestionsB026CustomizationBCellModifierVGAaBHPxAaBHD1__AgA0cJ0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1B81F8308();
  a3();
  return swift_getWitnessTable();
}

void type metadata accessor for UIUserInterfaceIdiom()
{
  if (!qword_1EDC8AF28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDC8AF28);
    }
  }
}

double sub_1B8191F1C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 65280;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  return result;
}

unint64_t sub_1B8191F4C()
{
  result = qword_1EBA7C9A0;
  if (!qword_1EBA7C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C9A0);
  }

  return result;
}

unint64_t sub_1B8191FA0()
{
  result = qword_1EBA7C9A8;
  if (!qword_1EBA7C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C9A8);
  }

  return result;
}

uint64_t sub_1B8191FF8(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0();
  result = (*(v1 + 464))();
  if (result)
  {
    v3 = result;
    OUTLINED_FUNCTION_55();
    *(swift_allocObject() + 16) = v3;
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_20();
    v6[2] = v4;
    v6[3] = &block_descriptor_0;
    v5 = _Block_copy(v6);
    swift_unknownObjectRetain();

    dispatchInContext(1, v5);
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B81920E4(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0();
  (*(v1 + 440))();
  sub_1B8188DE0();
  sub_1B81F8AF8();
  OUTLINED_FUNCTION_48();
  KeyPath = swift_getKeyPath();
  return OUTLINED_FUNCTION_35(KeyPath);
}

unint64_t sub_1B819218C()
{
  result = qword_1EDC8A7C8;
  if (!qword_1EDC8A7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CA00, &unk_1B81FCEE0);
    sub_1B81930C0(&qword_1EDC8AE70, &qword_1EBA7CA08, &qword_1B81FDE50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7C8);
  }

  return result;
}

void sub_1B8192244()
{
  v1 = *(v0 + 24);
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x1D0))();
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 suggestionDismissAction];
      [v4 execute];
    }

    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA30, qword_1B81FCF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B81FC7C0;
  v6 = sub_1B81BF7CC();
  v8 = *v6;
  v7 = v6[1];
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = 0;

  v9 = sub_1B81BF7D8();
  v11 = *v9;
  v10 = v9[1];
  *(inited + 56) = v11;
  *(inited + 64) = v10;
  *(inited + 72) = 0;

  v12 = sub_1B81F8F08();
  v13 = [objc_opt_self() defaultCenter];
  sub_1B81BF7C0();

  OUTLINED_FUNCTION_52();
  v14 = sub_1B81F8F58();

  v15 = sub_1B818DD1C(v12);

  sub_1B8192478(v14, v1, v15, v13);
}

uint64_t sub_1B81923FC()
{
  sub_1B8188DE0();

  sub_1B81F8AF8();
  OUTLINED_FUNCTION_48();
  KeyPath = swift_getKeyPath();
  return OUTLINED_FUNCTION_35(KeyPath);
}

void sub_1B8192478(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1B81F8EE8();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

_OWORD *sub_1B8192514(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B819253C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SGSuggestionsTableCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B81925A0()
{
  v0 = type metadata accessor for SGSuggestionsTableCell(0);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_24_0();
  result = (*(v1 + 464))();
  if (result)
  {
    v3 = result;
    OUTLINED_FUNCTION_55();
    *(swift_allocObject() + 16) = v3;
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_20();
    v6[2] = v4;
    v6[3] = &block_descriptor_94;
    v5 = _Block_copy(v6);
    swift_unknownObjectRetain();

    dispatchInContext(1, v5);
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1B81926D4()
{
  result = qword_1EBA7CAB0;
  if (!qword_1EBA7CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA7DB40, &unk_1B81FD020);
    sub_1B819278C();
    sub_1B81930C0(&unk_1EBA7DB70, &qword_1EBA7CAE0, &qword_1B81FEF20, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CAB0);
  }

  return result;
}

unint64_t sub_1B819278C()
{
  result = qword_1EBA7DB50;
  if (!qword_1EBA7DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA7CAC0, &unk_1B81FEF10);
    sub_1B8192818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DB50);
  }

  return result;
}

unint64_t sub_1B8192818()
{
  result = qword_1EBA7DB60;
  if (!qword_1EBA7DB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA7CAD0, &unk_1B81FD030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DB60);
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{
  v1 = (type metadata accessor for SGSuggestionsTableCell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7C770, &qword_1B81FC868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F82B8();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B81929B8()
{
  v0 = type metadata accessor for SGSuggestionsTableCell(0);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_24_0();
  v2 = (*(v1 + 464))();
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 suggestionDismissAction];
      [v4 execute];
    }

    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA30, qword_1B81FCF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B81FC7C0;
  v6 = sub_1B81BF7CC();
  v8 = *v6;
  v7 = v6[1];
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = 0;

  v9 = sub_1B81BF7D8();
  v11 = *v9;
  v10 = v9[1];
  *(inited + 56) = v11;
  *(inited + 64) = v10;
  *(inited + 72) = 0;

  v12 = sub_1B81F8F08();
  v13 = [objc_opt_self() defaultCenter];
  sub_1B81BF7C0();

  v14 = sub_1B81F8F58();

  sub_1B818DD1C(v12);

  OUTLINED_FUNCTION_62();
  sub_1B8192478(v15, v16, v17, v13);
}

void sub_1B8192BC0()
{
  v1 = [*(v0 + 16) suggestionPrimaryAction];
  [v1 execute];
}

uint64_t sub_1B8192C18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B8192C38()
{
  OUTLINED_FUNCTION_30();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);
  return v0;
}

uint64_t sub_1B8192C90(uint64_t a1)
{
  v2 = sub_1B81F8378();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8192CEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_27(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  return v4;
}

uint64_t sub_1B8192D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_27(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  return v4;
}

uint64_t sub_1B8192D84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1B8192DDC()
{
  result = qword_1EBA7CB80;
  if (!qword_1EBA7CB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CB20, &qword_1B81FD070);
    sub_1B8192E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CB80);
  }

  return result;
}

unint64_t sub_1B8192E68()
{
  result = qword_1EBA7CB88;
  if (!qword_1EBA7CB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CB58, &qword_1B81FD0D8);
    sub_1B8192F20();
    sub_1B81930C0(&qword_1EBA7CBC8, &qword_1EBA7CB78, &qword_1B81FD0F8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CB88);
  }

  return result;
}

unint64_t sub_1B8192F20()
{
  result = qword_1EBA7CB90;
  if (!qword_1EBA7CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CB50, &qword_1B81FD0D0);
    sub_1B8192FD8();
    sub_1B81930C0(&qword_1EDC8A948, &qword_1EBA7CBC0, &unk_1B81FF380, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CB90);
  }

  return result;
}

unint64_t sub_1B8192FD8()
{
  result = qword_1EBA7CB98;
  if (!qword_1EBA7CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CB48, &qword_1B81FD098);
    sub_1B8190720(&unk_1EBA7CBA0, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
    sub_1B81930C0(&qword_1EDC8A630, &unk_1EBA7CBB0, &unk_1B81FD100, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CB98);
  }

  return result;
}

uint64_t sub_1B81930C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_0(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = v5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_1B81F8398();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

__n128 OUTLINED_FUNCTION_34()
{
  v2 = *(v1 - 152);
  *(v0 + 144) = *(v1 - 168);
  *(v0 + 160) = v2;
  result = *(v1 - 136);
  *(v0 + 176) = result;
  *(v0 + 192) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_35(uint64_t result)
{
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4 & 1;
  *(v1 + 24) = v5;
  *(v1 + 32) = result;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2)
{

  return sub_1B81F8218();
}

uint64_t OUTLINED_FUNCTION_58@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

id SGBannerContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGBannerContent.init()()
{
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedTitle] = 0;
  v1 = &v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_subtitle];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedSubtitle] = 0;
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_images;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_images] = 0;
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestion;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestion] = 0;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_delegate;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_imageSGViews;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_imageSGViews] = 0;
  v6 = &v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_listTitle];
  *v6 = 0;
  v6[1] = 0;
  v17 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundVisualEffectView;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundVisualEffectView] = 0;
  v7 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundColor;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundColor] = 0;
  v16 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerDivider;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerDivider] = 0;
  v18 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryAction;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryAction] = 0;
  v19 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_dismissAction;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_dismissAction] = 0;
  v20 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_iconSFSymbols;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_iconSFSymbols] = 0;
  v21 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_feedbackAction;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_feedbackAction] = 0;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerForVisionDevice;
  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerForVisionDevice] = v9 == 6;
  v11 = &v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_title];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_10_0(v1, v35);
  *v1 = xmmword_1B81FD120;

  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_accessoryType] = 0;
  OUTLINED_FUNCTION_10_0(&v0[v2], v34);
  *&v0[v2] = 0;

  v12 = &v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_actionTitle];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_10_0(&v0[v3], v33);
  *&v0[v3] = 0;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_0(&v0[v4], v32);
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryActionButtonWidth] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonWidth] = 0;
  v13 = 1;
  if (v0[v10])
  {
    v13 = 2;
  }

  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_actionButtonType] = v13;
  OUTLINED_FUNCTION_10_0(&v0[v5], v31);
  *&v0[v5] = 0;

  OUTLINED_FUNCTION_10_0(v6, v30);
  *v6 = 0;
  v6[1] = 0;

  OUTLINED_FUNCTION_10_0(&v0[v7], v29);
  v14 = *&v0[v7];
  *&v0[v7] = 0;

  OUTLINED_FUNCTION_10_0(&v0[v16], v28);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_10_0(&v0[v17], v27);
  OUTLINED_FUNCTION_16_1();
  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestionCategorySupportsBatchDismissal] = 0;
  OUTLINED_FUNCTION_10_0(&v0[v18], v26);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_10_0(&v0[v19], v25);
  OUTLINED_FUNCTION_16_1();
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonXAnchorOffset] = 0;
  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_prominentActionButton] = 0;
  OUTLINED_FUNCTION_10_0(&v0[v20], v24);
  *&v0[v20] = 0;

  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_disableGlassPlatter] = 0;
  OUTLINED_FUNCTION_10_0(&v0[v21], v23);
  OUTLINED_FUNCTION_16_1();
  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_ignoreSafeAreaInsets] = 0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SGBannerContent();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1B8193A30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8193A94(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);

  return v4(v2, v3);
}

void *sub_1B8193B94(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedTitle;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B8193C28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8193C8C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x148);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1B8193CFC(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedTitle;
  v5 = OUTLINED_FUNCTION_11_1(v3);
  OUTLINED_FUNCTION_10_0(v5, v6);
  v7 = *(v1 + v4);
  v3[3] = v7;
  v8 = v7;
  return sub_1B8193D74;
}

uint64_t sub_1B8193DC8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8193E2C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x160);

  return v4(v2, v3);
}

void *sub_1B8193F2C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedSubtitle;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1B8193FC0(void *a1, uint64_t *a2)
{
  sub_1B81940E4(a1, a2);
  v5 = *a2;
  OUTLINED_FUNCTION_4(v2 + v5, v6);
  v7 = *(v2 + v5);
  *(v2 + v5) = a1;
}

uint64_t sub_1B8194010@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8194074(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x178);
  v4 = *a1;
  return v3(v2);
}

void sub_1B81940E4(void *a1, uint64_t *a2)
{
  v4 = v2;
  if (a1 && ([a1 mutableCopy], sub_1B81F9228(), swift_unknownObjectRelease(), sub_1B8189AF0(0, &unk_1EDC8A5C0, 0x1E696AD40), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v8;
  }

  else
  {
    sub_1B8189AF0(0, &unk_1EDC8A5C0, 0x1E696AD40);
    v5 = sub_1B8187C0C(0, 0xE000000000000000);
  }

  v6 = *a2;
  OUTLINED_FUNCTION_10_0(v4 + v6, v9);
  v7 = *(v4 + v6);
  *(v4 + v6) = v5;
}

void (*sub_1B81941C8(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedSubtitle;
  v5 = OUTLINED_FUNCTION_11_1(v3);
  OUTLINED_FUNCTION_10_0(v5, v6);
  v7 = *(v1 + v4);
  v3[3] = v7;
  v8 = v7;
  return sub_1B8194240;
}

void sub_1B819424C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  if (a2)
  {
    v9 = v5;
    sub_1B81940E4(v5, a3);
    v10 = *(v7 + v8);
    *(v7 + v8) = v5;

    v11 = *v6;
  }

  else
  {
    sub_1B81940E4(*(*a1 + 24), a3);
    v11 = *(v7 + v8);
    *(v7 + v8) = v5;
  }

  free(v4);
}

uint64_t sub_1B8194304(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_accessoryType;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B8194360(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_accessoryType;
  result = OUTLINED_FUNCTION_3_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B81943A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8194540@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81945A4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A8);

  return v2(v3);
}

id sub_1B8194674(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  sub_1B81F8F58();
  OUTLINED_FUNCTION_18_1();

  return a1;
}

uint64_t sub_1B81946C8(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1(a1, a2);
  v3 = *v2;

  return v3;
}

void sub_1B819471C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1B81F8F98();
  v6 = a1;
  v7 = OUTLINED_FUNCTION_13_0();
  a4(v7);
}

uint64_t sub_1B8194790(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_10_0(v6, v8);
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B81947E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8194848(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C0);

  return v4(v2, v3);
}

uint64_t sub_1B81949D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8194A3C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1B8194BB0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B8194C00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E8))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8194C64(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1F0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1B8194CD0(uint64_t *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_11_1(v2);
  swift_beginAccess();
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B8194D4C;
}

void sub_1B8194D4C(void **a1, char a2)
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
  }

  free(v3);
}

double sub_1B8194DF0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryActionButtonWidth;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B8194E48(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryActionButtonWidth;
  result = OUTLINED_FUNCTION_4(v3 + OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryActionButtonWidth, a3);
  *(v3 + v5) = a1;
  return result;
}

double sub_1B8194FC0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonWidth;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B8195018(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonWidth;
  result = OUTLINED_FUNCTION_4(v3 + OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonWidth, a3);
  *(v3 + v5) = a1;
  return result;
}

uint64_t sub_1B8195190(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_actionButtonType;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B81951EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_actionButtonType;
  result = OUTLINED_FUNCTION_3_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B819522C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x230))();
  *a2 = result;
  return result;
}

id sub_1B8195364(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), unint64_t *a4, void *a5)
{
  v7 = a1;
  if (a3(a1, a2))
  {
    sub_1B8189AF0(0, a4, a5);
    sub_1B81F90A8();
    OUTLINED_FUNCTION_18_1();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1B8195428(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, void (*a6)(uint64_t))
{
  v7 = a3;
  if (a3)
  {
    sub_1B8189AF0(0, a4, a5);
    v7 = sub_1B81F90C8();
  }

  v9 = a1;
  a6(v7);
}

uint64_t sub_1B81954D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x248))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8195538(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x250);

  return v2(v3);
}

id sub_1B8195608(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    sub_1B81F8F58();
    OUTLINED_FUNCTION_18_1();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1B8195680(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_1B81F8F98();
  }

  v6 = a1;
  v7 = OUTLINED_FUNCTION_13_0();
  a4(v7);
}

uint64_t sub_1B8195704@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x260))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8195768(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x268);

  return v4(v2, v3);
}

void *sub_1B8195868(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundVisualEffectView;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B8195930@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x278))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8195994(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x280);
  v4 = *a1;
  return v3(v2);
}

void *sub_1B8195A84(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundColor;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B8195B4C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x290))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8195BB0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x298);
  v4 = *a1;
  return v3(v2);
}

void *sub_1B8195CA0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerDivider;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B8195D68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8195DCC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2B0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1B8195EB0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestionCategorySupportsBatchDismissal;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B8195F08(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestionCategorySupportsBatchDismissal;
  result = OUTLINED_FUNCTION_3_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B8195F48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C0))();
  *a2 = result & 1;
  return result;
}

void *sub_1B8196090(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryAction;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B8196158@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81961BC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2E0);
  v4 = *a1;
  return v3(v2);
}

void *sub_1B81962AC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_dismissAction;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B8196374@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F0))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81963D8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2F8);
  v4 = *a1;
  return v3(v2);
}

double sub_1B81964B8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonXAnchorOffset;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B8196510(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonXAnchorOffset;
  result = OUTLINED_FUNCTION_4(v3 + OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonXAnchorOffset, a3);
  *(v3 + v5) = a1;
  return result;
}

uint64_t sub_1B819668C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_prominentActionButton;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B81966E4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_prominentActionButton;
  result = OUTLINED_FUNCTION_3_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B8196724@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x320))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B81968B0(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t sub_1B8196998(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_4(v3 + *a2, a2);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1B81969E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x338))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8196A4C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x340);

  return v2(v3);
}

uint64_t sub_1B8196B2C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_disableGlassPlatter;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B8196B84(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_disableGlassPlatter;
  result = OUTLINED_FUNCTION_3_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B8196BC4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x350))();
  *a2 = result & 1;
  return result;
}

void *sub_1B8196D0C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_feedbackAction;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B8196DD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x368))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8196E38(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x370);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1B8196F1C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_ignoreSafeAreaInsets;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B8196F74(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_ignoreSafeAreaInsets;
  result = OUTLINED_FUNCTION_3_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B8196FB4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x380))();
  *a2 = result & 1;
  return result;
}

id SGBannerContent.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SGBannerContent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  return v1 + v2;
}

uint64_t OUTLINED_FUNCTION_12_1(void *a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_1()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

void OUTLINED_FUNCTION_16_1()
{
  v3 = *(v1 + v0);
  *(v1 + v0) = 0;
}

uint64_t OUTLINED_FUNCTION_18_1()
{
}

double sub_1B81986C4@<D0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  OUTLINED_FUNCTION_141(a2);
  result = *&qword_1EBA7F580;
  *a1 = qword_1EBA7F580;
  return result;
}

double sub_1B819870C@<D0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  OUTLINED_FUNCTION_141(a2);
  result = *&qword_1EBA7F588;
  *a1 = qword_1EBA7F588;
  return result;
}

uint64_t sub_1B8198778()
{
  sub_1B81A3F00();
  result = sub_1B81F8538();
  qword_1EDC8D108 = result;
  return result;
}

void sub_1B81987A8()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  OUTLINED_FUNCTION_46();
  v5 = sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v9 = OUTLINED_FUNCTION_126();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_0();
  sub_1B81A37BC(v0 + *(v4 + 40), v2, &qword_1EBA7CD90, &qword_1B81FD1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_7_2();
    v12 = OUTLINED_FUNCTION_61();
    v13(v12);
  }

  else
  {
    sub_1B81F9198();
    v14 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0(v14, &dword_1B8182000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v16, v17, MEMORY[0x1E69E7CC0]);

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    (*(v7 + 8))(v1, v5);
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81989AC()
{
  OUTLINED_FUNCTION_38();
  v21 = v2;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B81F8DC8();
  sub_1B81F8DA8();
  sub_1B81F8728();
  v6 = sub_1B81F8CD8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v22 = v4;
  v23 = v5;
  v24 = v0;
  OUTLINED_FUNCTION_4_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_3();
  v14 = swift_getWitnessTable();
  v26 = WitnessTable;
  v27 = v14;
  OUTLINED_FUNCTION_2_2();
  v15 = swift_getWitnessTable();
  sub_1B81F8CC8();
  v25 = v15;
  OUTLINED_FUNCTION_51_0();
  swift_getWitnessTable();
  v16 = *(v8 + 16);
  v17 = OUTLINED_FUNCTION_85();
  v16(v17);
  v18 = *(v8 + 8);
  v18(v1, v6);
  (v16)(v21, v12, v6);
  v19 = OUTLINED_FUNCTION_122();
  (v18)(v19);
  OUTLINED_FUNCTION_37();
}

void sub_1B8198B78()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v73 = v7;
  v8 = sub_1B81F8DA8();
  OUTLINED_FUNCTION_1_0();
  v66 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v67 = v12;
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_116();
  v13 = sub_1B81F8DC8();
  OUTLINED_FUNCTION_1_0();
  v65 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v64 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v63 = v18;
  OUTLINED_FUNCTION_37_0();
  v19 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_2();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - v27;
  sub_1B81F8728();
  OUTLINED_FUNCTION_1_0();
  v71 = v30;
  v72 = v29;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_32();
  v69 = v2;
  v70 = v32;
  OUTLINED_FUNCTION_37_0();
  v68 = v4;
  OUTLINED_FUNCTION_116();
  type metadata accessor for AccessibilityAdaptiveStack(v33, v34, v35, v36);
  sub_1B81987A8();
  (*(v21 + 104))(v25, *MEMORY[0x1E697F668], v19);
  LOBYTE(v4) = sub_1B819906C(v28, v25);
  v37 = *(v21 + 8);
  v37(v25, v19);
  v37(v28, v19);
  if ((v4 & 1) != 0 && *(v6 + 16) == 1)
  {
    sub_1B81F85D8();
    v38 = v64;
    sub_1B81F8DB8();
    OUTLINED_FUNCTION_4_0();
    WitnessTable = swift_getWitnessTable();
    v40 = v65;
    v41 = *(v65 + 16);
    v42 = v63;
    v41(v63, v38, v13);
    v43 = *(v40 + 8);
    v44 = OUTLINED_FUNCTION_138();
    v43(v44);
    v41(v38, v42, v13);
    OUTLINED_FUNCTION_3_3();
    swift_getWitnessTable();
    v45 = v70;
    v46 = OUTLINED_FUNCTION_138();
    sub_1B8199484(v46, v47, v8, WitnessTable, v48);
    v49 = OUTLINED_FUNCTION_138();
    v43(v49);
    (v43)(v42, v13);
  }

  else
  {
    if (qword_1EDC8CF40 != -1)
    {
      OUTLINED_FUNCTION_13_1(&qword_1EDC8CF40);
    }

    sub_1B81F8D98();
    OUTLINED_FUNCTION_3_3();
    v50 = swift_getWitnessTable();
    v52 = v66;
    v51 = v67;
    v53 = *(v66 + 16);
    v54 = OUTLINED_FUNCTION_137();
    v53(v54);
    v55 = *(v52 + 8);
    v55(v0, v8);
    v56 = OUTLINED_FUNCTION_126();
    v53(v56);
    OUTLINED_FUNCTION_4_0();
    v57 = swift_getWitnessTable();
    v45 = v70;
    sub_1B819957C(v0, v13, v8, v57, v50);
    v55(v0, v8);
    v55(v51, v8);
  }

  OUTLINED_FUNCTION_4_0();
  v58 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_3();
  v59 = swift_getWitnessTable();
  v74 = v58;
  v75 = v59;
  OUTLINED_FUNCTION_2_2();
  v60 = v72;
  swift_getWitnessTable();
  v61 = v71;
  (*(v71 + 16))(v73, v45, v60);
  (*(v61 + 8))(v45, v60);
  OUTLINED_FUNCTION_37();
}

BOOL sub_1B819906C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1B81F85B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x1E697F658];
  if (v12 != *MEMORY[0x1E697F658])
  {
    if (v12 == *MEMORY[0x1E697F690])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F698])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x1E697F660])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x1E697F630])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x1E697F670])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x1E697F668])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x1E697F678])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x1E697F640])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x1E697F648])
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

  else if (v15 == *MEMORY[0x1E697F690])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x1E697F698])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x1E697F680])
    {
      if (v15 == *MEMORY[0x1E697F650])
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F660])
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F630])
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F670])
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F668])
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F678])
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F640])
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F648])
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

uint64_t sub_1B8199484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B81F8708();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1B81F8718();
}

uint64_t sub_1B819957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B81F8708();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1B81F8718();
}

uint64_t sub_1B8199678()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_110();
  sub_1B81F8118();

  return v1;
}

uint64_t sub_1B81996E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B8199780(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_78();
  return sub_1B81F8128();
}

uint64_t (*sub_1B81997EC())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_92(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_54();
  v0[6] = sub_1B81F8108();
  return sub_1B8199874;
}

void sub_1B8199874(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1B81998DC()
{
  OUTLINED_FUNCTION_115(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI21BannerUpdateViewModel__updateView, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  sub_1B81F80E8();
  return swift_endAccess();
}

uint64_t sub_1B8199948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9C0, &qword_1B81FEB60);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12_0();
  v2 = OUTLINED_FUNCTION_125();
  v3(v2);
  OUTLINED_FUNCTION_115(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI21BannerUpdateViewModel__updateView, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  sub_1B81F80F8();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_133();
  return v5(v4);
}

void (*sub_1B8199A58())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_92(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9C0, &qword_1B81FEB60);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64);
  v1[6] = __swift_coroFrameAllocStub(v5);
  v1[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_115(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI21BannerUpdateViewModel__updateView, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  sub_1B81F80E8();
  swift_endAccess();
  return sub_1B8199B70;
}

void sub_1B8199B70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_85();
    v6(v5);
    sub_1B8199948();
    v7 = OUTLINED_FUNCTION_52();
    v8(v7);
  }

  else
  {
    sub_1B8199948();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t BannerUpdateViewModel.__allocating_init(updateView:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  BannerUpdateViewModel.init(updateView:)(v1);
  return v2;
}

uint64_t BannerUpdateViewModel.init(updateView:)(char a1)
{
  OUTLINED_FUNCTION_115(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI21BannerUpdateViewModel__updateView, v3);
  sub_1B81F80D8();
  swift_endAccess();
  return v1;
}

uint64_t BannerUpdateViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI21BannerUpdateViewModel__updateView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t BannerUpdateViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI21BannerUpdateViewModel__updateView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1B8199DC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BannerUpdateViewModel(0);
  result = sub_1B81F80B8();
  *a2 = result;
  return result;
}

void sub_1B8199E28()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_87();
  sub_1B81A37BC(v4, v5, v6, &qword_1B81FD270);
  OUTLINED_FUNCTION_123();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F8178();
    OUTLINED_FUNCTION_7_2();
    v7 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v9 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0(v9, &dword_1B8182000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, MEMORY[0x1E69E7CC0]);

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    v7 = OUTLINED_FUNCTION_102();
  }

  v8(v7);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819A028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  return a6(v6);
}

void sub_1B819A0DC()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_87();
  sub_1B81A37BC(v4, v5, v6, &qword_1B81FD1E0);
  OUTLINED_FUNCTION_123();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_7_2();
    v7 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v9 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0(v9, &dword_1B8182000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, MEMORY[0x1E69E7CC0]);

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    v7 = OUTLINED_FUNCTION_102();
  }

  v8(v7);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819A26C()
{
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6();
  v2 = v0 + *(type metadata accessor for SGBannerContainerView(0) + 44);
  v3 = *v2;
  v4 = *(v2 + 8);

  if ((v4 & 1) == 0)
  {
    sub_1B81F9198();
    v5 = sub_1B81F88B8();
    sub_1B81F8018();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_63();
    swift_getAtKeyPath();
    j__swift_release(v3);
    v6 = OUTLINED_FUNCTION_125();
    v7(v6);
    return v9;
  }

  return v3;
}

void sub_1B819A3A4()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_87();
  sub_1B81A37BC(v4, v5, v6, &qword_1B81FD2D8);
  OUTLINED_FUNCTION_123();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F89C8();
    OUTLINED_FUNCTION_7_2();
    v7 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v9 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0(v9, &dword_1B8182000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, MEMORY[0x1E69E7CC0]);

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    v7 = OUTLINED_FUNCTION_102();
  }

  v8(v7);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819A558()
{
  v0 = OUTLINED_FUNCTION_81();
  v1 = type metadata accessor for SGBannerViewModel(v0);
  v2 = OUTLINED_FUNCTION_21(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_11_2();
  v3 = OUTLINED_FUNCTION_133();
  sub_1B81A1B90(v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0, &qword_1B81FD310);
  sub_1B81F8D68();
  OUTLINED_FUNCTION_0_1();
  return sub_1B81A2340();
}

void SGBannerContainerView.init(_:store:updateBannerView:)()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v29 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v28 = v9;
  *(v5 + 40) = 1;
  v10 = type metadata accessor for SGBannerContainerView(0);
  v11 = v10[9];
  *(v5 + v11) = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA0, &qword_1B81FD270);
  OUTLINED_FUNCTION_112(v12);
  v13 = v10[10];
  *(v5 + v13) = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90, &qword_1B81FD1E0);
  OUTLINED_FUNCTION_112(v14);
  v15 = v5 + v10[11];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v10[12];
  *(v5 + v16) = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA8, &qword_1B81FD2D8);
  OUTLINED_FUNCTION_112(v17);
  v18 = (v5 + v10[14]);
  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  *v18 = v30;
  v18[1] = v31;
  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  OUTLINED_FUNCTION_70();
  v19 = v5 + v10[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC8, &qword_1B81FD328);
  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  *v19 = v30;
  *(v19 + 8) = v31;
  *(v19 + 16) = v32;

  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  OUTLINED_FUNCTION_70();
  *v5 = v3;
  *(v5 + 8) = v1;
  type metadata accessor for BannerUpdateViewModel(0);
  OUTLINED_FUNCTION_18_2();
  sub_1B81A1B48(v20, v21, &protocol conformance descriptor for BannerUpdateViewModel);
  v22 = v3;

  v23 = v1;
  v24 = v1;
  *(v5 + 24) = sub_1B81F8268();
  *(v5 + 32) = v25;
  if (v23)
  {
    v26 = [v24 hostApp];
  }

  else
  {
    v26 = 2;
  }

  *(v5 + 16) = v26;
  sub_1B81DD758(v22, v28);
  OUTLINED_FUNCTION_11_2();
  sub_1B81A1B90(v28, v29, v27);
  sub_1B81F8D48();
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDD0, &qword_1B81FD330);
  sub_1B81F8D68();

  sub_1B819A95C();

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819A95C()
{
  v2 = v0;
  v3 = sub_1B81F89C8();
  OUTLINED_FUNCTION_1_0();
  v20 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v9 = sub_1B81F8A48();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_118();
  sub_1B819A0DC();
  v14 = sub_1B81F85A8();
  v15 = OUTLINED_FUNCTION_137();
  result = v16(v15);
  if ((v14 & 1) == 0 && *(v2 + 40) == 1)
  {
    OUTLINED_FUNCTION_24_0();
    (*(v18 + 440))();
    sub_1B819F75C();
    sub_1B819A3A4();
    sub_1B81F8A28();

    (*(v20 + 8))(v8, v3);
    v19 = sub_1B81F8A38();
    (*(v11 + 8))(v1, v9);
    sub_1B819FC20(v19);

    type metadata accessor for SGBannerContainerView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB8, &qword_1B81FD318);
    sub_1B81F8D58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0, &qword_1B81FD320);
    return sub_1B81F8D68();
  }

  return result;
}

void SGBannerContainerView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v23;
  a20 = v24;
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_1_0();
  v151 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_74();
  v28 = OUTLINED_FUNCTION_22_1(v27);
  v29 = type metadata accessor for BannerViewBackgroundModifier(v28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_1(v32);
  *&v156 = sub_1B81F8178();
  OUTLINED_FUNCTION_1_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDD8, &qword_1B81FD338);
  OUTLINED_FUNCTION_21(v38);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_105();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDE0, &qword_1B81FD340);
  OUTLINED_FUNCTION_6_0(v40, &v158);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v42);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDE8, &qword_1B81FD348);
  OUTLINED_FUNCTION_1_0();
  v147 = v43;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDF0, &qword_1B81FD350);
  OUTLINED_FUNCTION_6_0(v46, v159);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDF8, &qword_1B81FD358);
  OUTLINED_FUNCTION_6_0(v49, &v159[5]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE00, &qword_1B81FD360);
  OUTLINED_FUNCTION_6_0(v52, &v159[7]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE08, &qword_1B81FD368);
  OUTLINED_FUNCTION_6_0(v55, &v159[10]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v57);
  *v22 = sub_1B81F85D8();
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE10, &qword_1B81FD370);
  sub_1B819B8CC();
  v58 = *(v20 + 8);
  v141 = v58;
  if (v58)
  {
    v59 = [v58 hostApp] == 1;
  }

  else
  {
    v59 = 0;
  }

  sub_1B8199E28();
  v60 = *v20;
  v153 = v20;
  OUTLINED_FUNCTION_25_0();
  LOBYTE(v159[0]) = v61;
  v159[1] = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0, &qword_1B81FD320);
  sub_1B81F8D58();
  v142 = v34;
  v63 = *(v34 + 16);
  v63(v155, v154, v156);
  *v21 = v59;
  v63(&v21[v29[5]], v155, v156);
  *&v21[v29[6]] = v60;
  v21[v29[7]] = v157;
  v64 = objc_opt_self();
  v65 = v60;
  v66 = [v64 currentDevice];
  v67 = [v66 userInterfaceIdiom];

  v21[v29[8]] = v67 == 6;
  v68 = [v64 currentDevice];
  v69 = [v68 userInterfaceIdiom];

  *&v21[v29[9]] = v69;
  if (!v59 && v67 == 6)
  {
    OUTLINED_FUNCTION_24_0();
    v70 += 70;
    v71 = *v70;
    v59 = (*v70)() == 2 || v71() == 3;
  }

  v21[v29[10]] = v59;
  if (sub_1B81F8E98())
  {
    OUTLINED_FUNCTION_24_0();
    v73 = (*(v72 + 848))() ^ 1;
  }

  else
  {
    v73 = 0;
  }

  v74 = *(v142 + 8);
  v74(v155, v156);
  v74(v154, v156);
  v21[v29[11]] = v73 & 1;
  sub_1B81A1BEC(v21, v145, type metadata accessor for BannerViewBackgroundModifier);
  sub_1B81A3804(v22, v143, &qword_1EBA7CDD8, &qword_1B81FD338);
  sub_1B81A1BEC(v145, v143 + *(v144 + 36), type metadata accessor for BannerViewBackgroundModifier);
  if (v141)
  {
    v75 = [v141 hostApp];

    v76 = v75 == 1;
  }

  else
  {
    v76 = 0;
  }

  OUTLINED_FUNCTION_24_0();
  v78 = (*(v77 + 560))();
  sub_1B81A1A60();
  sub_1B81D065C(v76, v78, v144);
  sub_1B81A3990(v143, &qword_1EBA7CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE28, &qword_1B81FD378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B81FC7C0;
  v80 = sub_1B81F8908();
  *(inited + 32) = v80;
  v81 = sub_1B81F8928();
  *(inited + 33) = v81;
  v82 = sub_1B81F8918();
  sub_1B81F8918();
  v83 = v153;
  if (sub_1B81F8918() != v80)
  {
    v82 = sub_1B81F8918();
  }

  sub_1B81F8918();
  if (sub_1B81F8918() != v81)
  {
    v82 = sub_1B81F8918();
  }

  v84 = [objc_opt_self() currentDevice];
  v85 = [v84 userInterfaceIdiom];

  v86 = *(v153 + 8);
  if (v86 && ((v87 = [v86 hostApp], v85 == 6) ? (v88 = v87 == 1) : (v88 = 0), v88))
  {
    v93 = 0uLL;
    v156 = 0u;
    v89 = 1;
    v94 = &a13;
  }

  else
  {
    sub_1B81F8148();
    v89 = 0;
    *(&v91 + 1) = v90;
    v155 = v91;
    *(&v93 + 1) = v92;
    v94 = &a15;
  }

  *(v94 - 16) = v93;
  (*(v147 + 32))(v149, v146, v148);
  OUTLINED_FUNCTION_95();
  v96 = v149 + v95;
  *v96 = v82;
  *(v96 + 24) = v155;
  *(v96 + 8) = v156;
  *(v96 + 40) = v89;
  v97 = sub_1B819F7BC();
  v99 = v98;
  v100 = sub_1B819F7BC();
  v102 = v101;
  sub_1B81F8EB8();
  v103 = *&v97;
  if (v99)
  {
    v103 = -INFINITY;
  }

  v104 = *&v100;
  if (v102)
  {
    v104 = v103;
  }

  if (v103 > v104)
  {
    sub_1B81F9198();
    v105 = sub_1B81F88B8();
    sub_1B81F8018();

    v83 = v153;
  }

  OUTLINED_FUNCTION_120();
  sub_1B81F8398();
  OUTLINED_FUNCTION_86();
  sub_1B81A3804(v106, v107, v108, v109);
  OUTLINED_FUNCTION_95();
  memcpy((v149 + v110), v159, 0x70uLL);
  OUTLINED_FUNCTION_17_2();
  sub_1B81A1B90(v83, v152, v111);
  v112 = (*(v151 + 80) + 16) & ~*(v151 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_19_0();
  v114 = v113;
  sub_1B81A1BEC(v152, v115 + v112, v113);
  OUTLINED_FUNCTION_86();
  sub_1B81A3804(v116, v117, v118, v119);
  OUTLINED_FUNCTION_95();
  v121 = (v149 + v120);
  *v121 = sub_1B819F8F8;
  v121[1] = 0;
  v121[2] = sub_1B81A1C44;
  v121[3] = v100;
  OUTLINED_FUNCTION_79();
  sub_1B81A1B90(v122, v123, v124);
  v125 = swift_allocObject();
  sub_1B81A1BEC(v152, v125 + v112, v114);
  OUTLINED_FUNCTION_86();
  sub_1B81A3804(v126, v127, v128, v129);
  v130 = (v149 + *(v150 + 36));
  *v130 = sub_1B819F924;
  v130[1] = 0;
  v130[2] = sub_1B81A2034;
  v130[3] = v125;
  OUTLINED_FUNCTION_46_0();
  sub_1B81F8D58();
  OUTLINED_FUNCTION_79();
  sub_1B81A1B90(v131, v132, v133);
  v134 = swift_allocObject();
  sub_1B81A1BEC(v152, v134 + v112, v114);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_41();
  sub_1B81A2158(v135, v136, v137, v138);
  sub_1B81F8C08();

  OUTLINED_FUNCTION_41();
  sub_1B81A3990(v139, v140);
  OUTLINED_FUNCTION_37();
}

void sub_1B819B8CC()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v192 = v5;
  v6 = type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_1_0();
  v180 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v181 = v9;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_28(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0, &qword_1B81FDA38);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v14 = OUTLINED_FUNCTION_22_1(v13);
  v15 = type metadata accessor for PrimaryActionButtonView(v14);
  v16 = OUTLINED_FUNCTION_21(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD8, &qword_1B81FDA40);
  OUTLINED_FUNCTION_6_0(v19, &v207);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFE0, &qword_1B81FDA48);
  v23 = OUTLINED_FUNCTION_21(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFE8, &qword_1B81FDA50);
  OUTLINED_FUNCTION_6_0(v26, &v209[80]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFF0, &qword_1B81FDA58);
  OUTLINED_FUNCTION_6_0(v29, &v209[88]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFF8, &qword_1B81FDA60);
  OUTLINED_FUNCTION_6_0(v32, &v209[8]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D000, &qword_1B81FDA68);
  OUTLINED_FUNCTION_6_0(v35, &v209[16]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_22_1(v37);
  v194 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v193 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D008, &qword_1B81FDA70);
  OUTLINED_FUNCTION_6_0(v42, &v208);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v179 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D010, &qword_1B81FDA78);
  v47 = OUTLINED_FUNCTION_6_0(v46, &v209[48]);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D018, &qword_1B81FDA80);
  v51 = OUTLINED_FUNCTION_21(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_31();
  v203 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D020, &qword_1B81FDA88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_105();
  v57 = type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D028, &qword_1B81FDA90);
  v60 = OUTLINED_FUNCTION_21(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_40_0();
  v202 = v62;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_67();
  v179[3] = v6;
  v65 = *(v6 + 52);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0, &qword_1B81FD310);
  sub_1B81F8D58();
  v67 = *(v1 + *(v57 + 52) + 16);
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  v199 = v66;
  v188 = v2;
  v187 = v57;
  if (v67 == 1)
  {
    sub_1B81F8E18();
    sub_1B81F8D58();
    v68 = *(v1 + *(v57 + 52));

    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    v69 = v2 + *(v55 + 36);
    *v69 = v68;
    *(v69 + 8) = 256;
    sub_1B81A3804(v2, v0, &qword_1EBA7D020, &qword_1B81FDA88);
    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v70, 1, v55);
  v71 = v4;
  if (sub_1B81F8E98() & 1) != 0 && ((v72 = v201, sub_1B819A0DC(), v73 = sub_1B81F85A8(), (*(v193 + 8))(v72, v194), (v73) || (OUTLINED_FUNCTION_24_0(), (*(v74 + 560))() == 5)) && *(v71 + 40) == 1)
  {
    v75 = sub_1B81F8518();
  }

  else
  {
    if (qword_1EDC8CF40 != -1)
    {
      OUTLINED_FUNCTION_13_1(&qword_1EDC8CF40);
    }

    v75 = qword_1EDC8D108;
  }

  v201 = v0;
  *v45 = v75;
  *(v45 + 1) = 0;
  v45[16] = 0;
  v76 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D030, &qword_1B81FDA98) + 44)];
  v195 = v71;
  sub_1B819CA50(v71, v76);
  v77 = sub_1B81F8E98();
  v197 = v65;
  v189 = v55;
  if (v77)
  {
    OUTLINED_FUNCTION_89();
    sub_1B81A37BC(v78, v79, &qword_1EBA7D008, &qword_1B81FDA70);
    OUTLINED_FUNCTION_143();
    sub_1B81A3458();
    OUTLINED_FUNCTION_60_0(&qword_1EBA7D040);
    OUTLINED_FUNCTION_132();
    sub_1B81F8718();
  }

  else
  {
    sub_1B81F8EB8();
    OUTLINED_FUNCTION_120();
    sub_1B81F8398();
    OUTLINED_FUNCTION_86();
    sub_1B81A37BC(v80, v81, &qword_1EBA7D008, &qword_1B81FDA70);
    memcpy((v2 + *(v185 + 36)), v209, 0x70uLL);
    sub_1B81A37BC(v2, v186, &qword_1EBA7D000, &qword_1B81FDA68);
    OUTLINED_FUNCTION_144();
    sub_1B81A3458();
    OUTLINED_FUNCTION_60_0(&qword_1EBA7D040);
    OUTLINED_FUNCTION_132();
    sub_1B81F8718();
    sub_1B81A3990(v2, &qword_1EBA7D000);
  }

  v82 = v198;
  sub_1B81A3990(v45, &qword_1EBA7D008);
  sub_1B81A3804(&qword_1EBA7D008, v82, &qword_1EBA7D010, &qword_1B81FDA78);
  v83 = v195;
  v84 = *(v195 + 40);
  if (v84 == 1)
  {
    v85 = v183;
    sub_1B81A37BC(v82, v183, &qword_1EBA7D010, &qword_1B81FDA78);
    *(v85 + *(v191 + 36)) = 256;
    OUTLINED_FUNCTION_86();
    sub_1B81A37BC(v86, v87, v88, &qword_1B81FDA58);
    OUTLINED_FUNCTION_144();
    sub_1B81A3510();
    sub_1B81A359C();
    OUTLINED_FUNCTION_131();
    v82 = v198;
    sub_1B81F8718();
    sub_1B81A3990(v85, &qword_1EBA7CFF0);
  }

  else
  {
    OUTLINED_FUNCTION_89();
    sub_1B81A37BC(v89, v90, v91, v92);
    OUTLINED_FUNCTION_143();
    sub_1B81A3510();
    sub_1B81A359C();
    OUTLINED_FUNCTION_131();
    sub_1B81F8718();
  }

  v93 = v199;
  v94 = v188;
  sub_1B81A3990(v82, &qword_1EBA7D010);
  sub_1B81A3804(v45, v203, &qword_1EBA7D018, &qword_1B81FDA80);
  sub_1B81F8D58();
  v95 = v187;
  v96 = *(v1 + *(v187 + 52) + 17);
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  if (v96 == 1)
  {
    sub_1B81F8E18();
    sub_1B81F8D58();
    v97 = *(v1 + *(v95 + 52) + 8);

    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    v98 = v189;
    v99 = v94 + *(v189 + 36);
    *v99 = v97;
    *(v99 + 8) = 256;
    v100 = v200;
    sub_1B81A3804(v94, v200, &qword_1EBA7D020, &qword_1B81FDA88);
    v101 = 0;
  }

  else
  {
    v101 = 1;
    v100 = v200;
    v98 = v189;
  }

  v102 = __swift_storeEnumTagSinglePayload(v100, v101, 1, v98);
  v103 = *v83;
  if (((*((*MEMORY[0x1E69E7D40] & **v83) + 0x230))(v102) == 5 || (sub_1B81F8E98() & 1) != 0 && (v109 = v184, sub_1B819A0DC(), v110 = sub_1B81F85A8(), v111 = v109, v93 = v199, (*(v193 + 8))(v111, v194), (v84 & v110) == 1)) && (sub_1B81F8D58(), v104 = *(v1 + 3), OUTLINED_FUNCTION_0_1(), v105 = sub_1B81A2340(), v104 == 1))
  {
    v198 = (*((*MEMORY[0x1E69E7D40] & *v103) + 0x1B8))(v105);
    v191 = v106;
    v190 = v103;
    v189 = sub_1B819F75C();
    v107 = *(v83 + 8);
    if (v107)
    {
      v108 = [v107 hostApp] == 1;
    }

    else
    {
      v108 = 0;
    }

    v113 = v195;
    OUTLINED_FUNCTION_46_0();
    LOBYTE(v207) = v114;
    v208 = v115;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0, &qword_1B81FD320);
    sub_1B81F8D78();
    v117 = v204;
    v116 = v205;
    v118 = v206;
    v119 = v179[1];
    sub_1B81F8D78();
    OUTLINED_FUNCTION_46_0();
    LOBYTE(v207) = v120;
    v208 = v121;
    sub_1B81F8D78();
    v178 = v206;
    v176 = v204;
    v177 = v205;
    OUTLINED_FUNCTION_109();
    sub_1B81AC5E0(v198, v191, v190, v189, v107, v108, v117, v116, v122, v118, v119, v176, v177, v178);
    OUTLINED_FUNCTION_17_2();
    v123 = v182;
    sub_1B81A1B90(v113, v182, v124);
    v125 = (*(v180 + 80) + 16) & ~*(v180 + 80);
    swift_allocObject();
    OUTLINED_FUNCTION_19_0();
    v127 = v126;
    sub_1B81A1BEC(v123, v128 + v125, v126);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_86();
    sub_1B81A1BEC(v129, v130, v131);
    OUTLINED_FUNCTION_95();
    v133 = (v84 + v132);
    *v133 = sub_1B81A3F94;
    v133[1] = &v207;
    v133[2] = 0;
    v133[3] = 0;
    v134 = v184;
    sub_1B819A0DC();
    sub_1B81A1B90(v113, v123, v116);
    v135 = swift_allocObject();
    sub_1B81A1BEC(v123, v135 + v125, v127);
    sub_1B81A36A0();
    OUTLINED_FUNCTION_54_0();
    sub_1B81A1B48(v136, v137, MEMORY[0x1E697F6B8]);
    v93 = v194;
    sub_1B81F8C08();

    (*(v193 + 8))(v134, v93);
    sub_1B81A3990(v84, &qword_1EBA7CFD8);
    v112 = 0;
  }

  else
  {
    v112 = 1;
  }

  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D058, &qword_1B81FDAA0);
  __swift_storeEnumTagSinglePayload(v196, v112, 1, v138);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v139, v140, v141, v142);
  v143 = v203;
  OUTLINED_FUNCTION_86();
  sub_1B81A37BC(v144, v145, v146, v147);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v148, v149, v150, v151);
  OUTLINED_FUNCTION_89();
  sub_1B81A37BC(v152, v153, v154, v155);
  v156 = v192;
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v157, v158, v159, v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D060, &qword_1B81FDAA8);
  sub_1B81A37BC(v84, v156 + *(v161 + 48), &qword_1EBA7D018, &qword_1B81FDA80);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v162, v163, v164, v165);
  sub_1B81A37BC(v93, v156 + *(v161 + 80), &qword_1EBA7CFE0, &qword_1B81FDA48);
  v166 = OUTLINED_FUNCTION_137();
  sub_1B81A3990(v166, v167);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v168, v169);
  sub_1B81A3990(v143, &qword_1EBA7D018);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v170, v171);
  sub_1B81A3990(v93, &qword_1EBA7CFE0);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v172, v173);
  sub_1B81A3990(v84, &qword_1EBA7D018);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v174, v175);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819CA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v5 = type metadata accessor for SGBannerContainerView(0);
  v6 = v5 - 8;
  v125 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_74();
  v127 = v8;
  v128 = v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D080, &qword_1B81FDAB0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_100();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  v136 = v11;
  v12 = OUTLINED_FUNCTION_37_0();
  v13 = type metadata accessor for SGBannerPaddingParams(v12);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  v15 = type metadata accessor for CloseButtonView(0);
  v16 = OUTLINED_FUNCTION_21(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v122 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D088, &qword_1B81FDAB8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v121 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_40_0();
  v120 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31();
  v28 = OUTLINED_FUNCTION_22_1(v27);
  v129 = type metadata accessor for SGBannerViewModel(v28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v118 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D090, &qword_1B81FDAC0);
  v35 = OUTLINED_FUNCTION_21(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_0();
  v130 = v36;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_40_0();
  v131 = v38;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_40_0();
  v134 = v40;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_31();
  v135 = v42;
  v43 = *(v6 + 60);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0, &qword_1B81FD310);
  OUTLINED_FUNCTION_117();
  sub_1B81F8D58();
  v45 = v33[1];
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  v132 = v3;
  v123 = v2;
  v124 = v20;
  if (v45 == 1)
  {
    v46 = a1;
    v47 = *a1;
    v48 = *(a1 + 8);
    v49 = v48;
    v50 = v47;
    v118 = v43;
    v119 = v46;
    v20 = v44;
    sub_1B81F8D58();
    if (v48)
    {
      [v49 hostApp];
    }

    OUTLINED_FUNCTION_109();
    sub_1B81ADCB4(v50, v48, v53, v54);
    sub_1B81F8908();
    a1 = v119;
    OUTLINED_FUNCTION_117();
    sub_1B81F8D58();
    OUTLINED_FUNCTION_9_2();
    sub_1B81A1B90(&v33[v55], v2, v56);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    OUTLINED_FUNCTION_10_1();
    sub_1B81A2340();
    sub_1B81F8148();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_89();
    sub_1B81A1BEC(v57, v58, v59);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_51();
    sub_1B81A3804(v60, v61, v62, v63);
    v52 = v135;
    OUTLINED_FUNCTION_51();
    sub_1B81A3804(v64, v65, v66, v67);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v52 = v135;
  }

  v68 = 1;
  __swift_storeEnumTagSinglePayload(v52, v51, 1, v20);
  v69 = *(a1 + 40);
  OUTLINED_FUNCTION_53_0();
  v70 = v128;
  sub_1B81A1B90(a1, v128, v71);
  v72 = (*(v125 + 80) + 16) & ~*(v125 + 80);
  v73 = swift_allocObject();
  OUTLINED_FUNCTION_52_0();
  sub_1B81A1BEC(v70, v74 + v72, v75);
  v76 = *(v126 + 40);
  KeyPath = swift_getKeyPath();
  v78 = v136;
  *(v136 + v76) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90, &qword_1B81FD1E0);
  swift_storeEnumTagMultiPayload();
  *(v78 + 16) = v69;
  *v78 = sub_1B81A375C;
  *(v78 + 8) = v73;
  OUTLINED_FUNCTION_117();
  sub_1B81F8D58();
  LODWORD(v73) = v33[2];
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  if (v73 == 1)
  {
    v79 = *a1;
    v80 = *(a1 + 8);
    v81 = v80;
    v82 = v79;
    OUTLINED_FUNCTION_109();
    v20 = v44;
    sub_1B81F8D58();
    if (v80)
    {
      [v81 hostApp];
    }

    v84 = v122;
    v83 = v123;
    v85 = OUTLINED_FUNCTION_133();
    sub_1B81ADCB4(v85, v86, v87, v88);
    sub_1B81F8928();
    OUTLINED_FUNCTION_117();
    sub_1B81F8D58();
    OUTLINED_FUNCTION_9_2();
    sub_1B81A1B90(&v33[v89], v83, v90);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    OUTLINED_FUNCTION_10_1();
    sub_1B81A2340();
    sub_1B81F8148();
    OUTLINED_FUNCTION_42_0();
    sub_1B81A1BEC(v84, v121, v91);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_51();
    sub_1B81A3804(v92, v93, v94, v95);
    OUTLINED_FUNCTION_51();
    sub_1B81A3804(v96, v97, v98, v99);
    v68 = 0;
  }

  v100 = v134;
  __swift_storeEnumTagSinglePayload(v134, v68, 1, v20);
  sub_1B81A37BC(v135, v131, &qword_1EBA7D090, &qword_1B81FDAC0);
  v101 = v136;
  v102 = v132;
  sub_1B81A37BC(v136, v132, &qword_1EBA7D080, &qword_1B81FDAB0);
  v103 = v130;
  sub_1B81A37BC(v100, v130, &qword_1EBA7D090, &qword_1B81FDAC0);
  v104 = v133;
  OUTLINED_FUNCTION_116();
  sub_1B81A37BC(v105, v106, v107, &qword_1B81FDAC0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D098, &qword_1B81FDAC8);
  sub_1B81A37BC(v102, v104 + *(v108 + 48), &qword_1EBA7D080, &qword_1B81FDAB0);
  sub_1B81A37BC(v103, v104 + *(v108 + 64), &qword_1EBA7D090, &qword_1B81FDAC0);
  OUTLINED_FUNCTION_96();
  sub_1B81A3990(v109, v110);
  sub_1B81A3990(v101, &qword_1EBA7D080);
  OUTLINED_FUNCTION_96();
  sub_1B81A3990(v111, v112);
  OUTLINED_FUNCTION_96();
  sub_1B81A3990(v113, v114);
  sub_1B81A3990(v102, &qword_1EBA7D080);
  OUTLINED_FUNCTION_96();
  return sub_1B81A3990(v115, v116);
}

uint64_t sub_1B819D258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v221 = a2;
  v223 = type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_1_0();
  v204 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v206 = v8;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_28(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0, &qword_1B81FDA38);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  v13 = OUTLINED_FUNCTION_22_1(v12);
  v14 = type metadata accessor for PrimaryActionButtonView(v13);
  v15 = OUTLINED_FUNCTION_21(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v17 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD8, &qword_1B81FDA40);
  OUTLINED_FUNCTION_6_0(v18, &v232);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFE0, &qword_1B81FDA48);
  v22 = OUTLINED_FUNCTION_21(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v220 = v23;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31();
  v222 = v25;
  v26 = OUTLINED_FUNCTION_37_0();
  v27 = type metadata accessor for SGBannerPaddingParams(v26);
  v28 = OUTLINED_FUNCTION_21(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0A0, &qword_1B81FDAD0);
  OUTLINED_FUNCTION_6_0(v31, &v238);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_118();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0A8, &qword_1B81FDAD8);
  OUTLINED_FUNCTION_6_0(v33, &v239);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0B0, &qword_1B81FDAE0);
  OUTLINED_FUNCTION_1_0();
  v218 = v37;
  v219 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_0();
  v217 = v38;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_31();
  v226 = v40;
  v41 = OUTLINED_FUNCTION_37_0();
  v42 = type metadata accessor for IconView(v41);
  v43 = OUTLINED_FUNCTION_6_0(v42, &v236);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v45 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0B8, &qword_1B81FDAE8);
  OUTLINED_FUNCTION_6_0(v46, &v234);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_32();
  v49 = OUTLINED_FUNCTION_22_1(v48);
  v50 = type metadata accessor for BannerIconSGView(v49);
  v51 = OUTLINED_FUNCTION_6_0(v50, &v235);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6();
  v54 = OUTLINED_FUNCTION_22_1(v53 - v52);
  v55 = type metadata accessor for SGBannerIconParams(v54);
  v56 = OUTLINED_FUNCTION_21(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_6();
  v59 = v58 - v57;
  v224 = type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_100();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v63);
  v65 = v203 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0C0, &qword_1B81FDAF0);
  OUTLINED_FUNCTION_6_0(v66, &v237);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_22_1(v68);
  v69 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v71 = v70;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_6();
  v75 = v74 - v73;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0C8, &qword_1B81FDAF8);
  v77 = OUTLINED_FUNCTION_21(v76);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_2_0();
  v225 = v78;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_31();
  v227 = v80;
  v228 = a1;
  sub_1B819A0DC();
  LOBYTE(a1) = sub_1B81F85A8();
  v81 = *(v71 + 8);
  v209 = v75;
  v211 = v69;
  v210 = v71 + 8;
  v208 = v81;
  v81(v75, v69);
  if (a1 & 1) != 0 && ((sub_1B81F8E98() & 1) == 0 || (*(v228 + 40)))
  {
    v82 = 1;
    v83 = v227;
    v84 = v216;
    v85 = v215;
    v86 = v214;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0, &qword_1B81FD310);
    v87 = v228;
    sub_1B81F8D58();
    sub_1B81A1B90(&v65[*(v224 + 48)], v59, type metadata accessor for SGBannerIconParams);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    v88 = *(v59 + 88);
    v89 = v88;
    sub_1B81A2340();
    if (v88)
    {

      v90 = *v87;
      sub_1B81F8D58();
      v91 = *(v87 + 8);
      v85 = v215;
      if (v91)
      {
        [v91 hostApp];
      }

      v84 = v216;
      v86 = v214;
      v93 = OUTLINED_FUNCTION_85();
      sub_1B81AA2CC(v93, v94, v95);
      OUTLINED_FUNCTION_89();
      sub_1B81A1B90(v96, v97, v98);
      OUTLINED_FUNCTION_144();
      OUTLINED_FUNCTION_56_0();
      sub_1B81A1B48(v99, v100, &unk_1B81FE190);
      OUTLINED_FUNCTION_55_0();
      v103 = sub_1B81A1B48(v101, v102, &unk_1B81FE140);
      OUTLINED_FUNCTION_77(v103);
      sub_1B81A2340();
    }

    else
    {
      v2 = *v87;
      sub_1B81F8D58();
      v92 = *(v87 + 8);
      v85 = v215;
      if (v92)
      {
        [v92 hostApp];
      }

      v86 = v214;
      v104 = OUTLINED_FUNCTION_63();
      sub_1B81A9230(v104, v105, v106);
      OUTLINED_FUNCTION_89();
      sub_1B81A1B90(v107, v108, v109);
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_56_0();
      sub_1B81A1B48(v110, v111, &unk_1B81FE190);
      OUTLINED_FUNCTION_55_0();
      v114 = sub_1B81A1B48(v112, v113, &unk_1B81FE140);
      OUTLINED_FUNCTION_77(v114);
      sub_1B81A2340();
      v84 = v216;
    }

    v83 = v227;
    sub_1B81A3804(v2, v227, &qword_1EBA7D0C0, &qword_1B81FDAF0);
    v82 = 0;
  }

  __swift_storeEnumTagSinglePayload(v83, v82, 1, v212);
  *v3 = sub_1B81F85D8();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0D0, &qword_1B81FDB00);
  sub_1B819E300();
  v115 = sub_1B81F88F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0, &qword_1B81FD310);
  sub_1B81F8D58();
  OUTLINED_FUNCTION_9_2();
  sub_1B81A1B90(v4 + v116, v86, v117);
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  OUTLINED_FUNCTION_10_1();
  sub_1B81A2340();
  sub_1B81F8148();
  OUTLINED_FUNCTION_95();
  v119 = v3 + v118;
  *v119 = v115;
  *(v119 + 8) = v120;
  *(v119 + 16) = v121;
  *(v119 + 24) = v122;
  *(v119 + 32) = v123;
  *(v119 + 40) = 0;
  v124 = sub_1B81F8928();
  if (sub_1B81F8E98())
  {
    OUTLINED_FUNCTION_91();
    v125 = *(v4 + 2);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    if (v125 != 1 || (sub_1B819A0DC(), v126 = sub_1B81F85A8(), OUTLINED_FUNCTION_71(), v127(), (v126 & 1) != 0))
    {
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_9_2();
      sub_1B81A1B90(v4 + v128, v86, v129);
      OUTLINED_FUNCTION_0_1();
      sub_1B81A2340();
      OUTLINED_FUNCTION_10_1();
      sub_1B81A2340();
    }
  }

  sub_1B81F8148();
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v138 = OUTLINED_FUNCTION_137();
  sub_1B81A3804(v138, v139, v140, v141);
  v142 = &v85[*(v84 + 36)];
  *v142 = v124;
  *(v142 + 1) = v131;
  *(v142 + 2) = v133;
  *(v142 + 3) = v135;
  *(v142 + 4) = v137;
  v142[40] = 0;
  v143 = *(v228 + 8);
  if (v143)
  {
    v144 = [v143 hostApp] == 1;
  }

  else
  {
    v144 = 0;
  }

  sub_1B81A384C();
  sub_1B81D0734(v144);
  v145 = sub_1B81A3990(v85, &qword_1EBA7D0A8);
  v146 = *v228;
  v147 = MEMORY[0x1E69E7D40];
  v148 = *((*MEMORY[0x1E69E7D40] & **v228) + 0x230);
  if (v148)(v145) == 1 || v148() == 5 || (OUTLINED_FUNCTION_91(), v149 = *(v4 + 3), OUTLINED_FUNCTION_0_1(), sub_1B81A2340(), v149 != 1) || (sub_1B81F8E98() & 1) == 0 || (sub_1B819A0DC(), v150 = sub_1B81F85A8(), OUTLINED_FUNCTION_71(), v152 = v151(), (v150) && (*(v228 + 40))
  {
    v153 = 1;
  }

  else
  {
    v224 = (*((*v147 & *v146) + 0x1B8))(v152);
    v216 = v171;
    v215 = v146;
    v214 = sub_1B819F75C();
    if (v143)
    {
      v213 = [v143 hostApp] == 1;
    }

    else
    {
      v213 = 0;
    }

    v172 = v228;
    OUTLINED_FUNCTION_46_0();
    LOBYTE(v232) = v173;
    v233 = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0, &qword_1B81FD320);
    sub_1B81F8D78();
    v176 = v229;
    v175 = v230;
    v177 = v231;
    v178 = v203[1];
    sub_1B81F8D78();
    OUTLINED_FUNCTION_46_0();
    LOBYTE(v232) = v179;
    v233 = v180;
    sub_1B81F8D78();
    v202 = v231;
    v200 = v229;
    v201 = v230;
    OUTLINED_FUNCTION_109();
    sub_1B81AC5E0(v224, v216, v215, v214, v143, v213, v176, v175, v181, v177, v178, v200, v201, v202);
    OUTLINED_FUNCTION_17_2();
    v182 = v207;
    sub_1B81A1B90(v172, v207, v183);
    v184 = (*(v204 + 80) + 16) & ~*(v204 + 80);
    swift_allocObject();
    OUTLINED_FUNCTION_19_0();
    v186 = v185;
    sub_1B81A1BEC(v182, v187 + v184, v185);
    v188 = OUTLINED_FUNCTION_48_0();
    v189 = v205;
    sub_1B81A1BEC(v188, v205, v190);
    OUTLINED_FUNCTION_95();
    v192 = (v189 + v191);
    *v192 = sub_1B81A39E4;
    v192[1] = &v232;
    v192[2] = 0;
    v192[3] = 0;
    OUTLINED_FUNCTION_109();
    sub_1B819A0DC();
    OUTLINED_FUNCTION_79();
    sub_1B81A1B90(v193, v194, v195);
    v196 = swift_allocObject();
    sub_1B81A1BEC(v182, v196 + v184, v186);
    sub_1B81A36A0();
    OUTLINED_FUNCTION_54_0();
    sub_1B81A1B48(v197, v198, MEMORY[0x1E697F6B8]);
    sub_1B81F8C08();

    OUTLINED_FUNCTION_71();
    v199();
    sub_1B81A3990(v189, &qword_1EBA7CFD8);
    v153 = 0;
  }

  v154 = v221;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D058, &qword_1B81FDAA0);
  v156 = v222;
  __swift_storeEnumTagSinglePayload(v222, v153, 1, v155);
  sub_1B81A37BC(v227, v225, &qword_1EBA7D0C8, &qword_1B81FDAF8);
  v158 = v217;
  v157 = v218;
  v159 = *(v218 + 16);
  v160 = v226;
  v161 = v219;
  v159(v217, v226, v219);
  v162 = v220;
  sub_1B81A37BC(v156, v220, &qword_1EBA7CFE0, &qword_1B81FDA48);
  v163 = OUTLINED_FUNCTION_52();
  sub_1B81A37BC(v163, v164, &qword_1EBA7D0C8, &qword_1B81FDAF8);
  v165 = v154;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0E0, &qword_1B81FDB10);
  v159(v165 + *(v166 + 48), v158, v161);
  sub_1B81A37BC(v162, v165 + *(v166 + 64), &qword_1EBA7CFE0, &qword_1B81FDA48);
  sub_1B81A3990(v156, &qword_1EBA7CFE0);
  v167 = *(v157 + 8);
  v167(v160, v161);
  sub_1B81A3990(v227, &qword_1EBA7D0C8);
  sub_1B81A3990(v162, &qword_1EBA7CFE0);
  v167(v158, v161);
  OUTLINED_FUNCTION_41();
  return sub_1B81A3990(v168, v169);
}

void sub_1B819E300()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v25[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0E8, &qword_1B81FDB18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_65();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0F0, &qword_1B81FDB20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0F8, &qword_1B81FDB28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D100, &qword_1B81FDB30);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_67();
  sub_1B819E5E4();
  v19 = *(v3 + 40);
  if (v19 == 1)
  {
    sub_1B81A37BC(v12, v9, &qword_1EBA7D0F8, &qword_1B81FDB28);
    *&v9[*(v6 + 36)] = 256;
    v20 = OUTLINED_FUNCTION_133();
    sub_1B81A37BC(v20, v21, v22, v23);
    OUTLINED_FUNCTION_122();
    swift_storeEnumTagMultiPayload();
    sub_1B81A39E8();
    sub_1B81A3A74();
    OUTLINED_FUNCTION_85();
    sub_1B81F8718();
    sub_1B81A3990(v9, &qword_1EBA7D0F0);
  }

  else
  {
    sub_1B81A37BC(v12, v0, &qword_1EBA7D0F8, &qword_1B81FDB28);
    OUTLINED_FUNCTION_122();
    swift_storeEnumTagMultiPayload();
    sub_1B81A39E8();
    sub_1B81A3A74();
    OUTLINED_FUNCTION_85();
    sub_1B81F8718();
  }

  sub_1B81A3990(v12, &qword_1EBA7D0F8);
  v24 = sub_1B81A3804(v17, v1, &qword_1EBA7D100, &qword_1B81FDB30);
  MEMORY[0x1EEE9AC00](v24);
  v25[-2] = v3;
  sub_1B819EFA4(v19, sub_1B81A3B68);
  sub_1B81A3990(v1, &qword_1EBA7D100);
  OUTLINED_FUNCTION_37();
}

void sub_1B819E5E4()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D120, &qword_1B81FDB50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_32();
  v124 = v5;
  v6 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for SubtitleView(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v123 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D128, &qword_1B81FDB58);
  v11 = OUTLINED_FUNCTION_21(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  v130 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D130, &qword_1B81FDB60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v127 = v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D138, &qword_1B81FDB68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v119 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8, &unk_1B81FD770);
  OUTLINED_FUNCTION_21(v18);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_65();
  v20 = type metadata accessor for SGBannerViewModel(0);
  v21 = OUTLINED_FUNCTION_21(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v129 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_40_0();
  v122 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40_0();
  v128 = v26;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_67();
  v29 = sub_1B81F7908();
  v30 = OUTLINED_FUNCTION_21(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v33 = v32 - v31;
  type metadata accessor for TitleView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D140, &qword_1B81FDB70);
  v39 = OUTLINED_FUNCTION_21(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_40_0();
  v125 = v41;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31();
  v132 = v43;
  v44 = *v3;
  sub_1B8187C80(*v3);
  type metadata accessor for SGBannerContainerView(0);
  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0, &qword_1B81FD310);
  sub_1B81F8D58();
  v46 = *(v3 + 8);
  v120 = v46;
  if (v46)
  {
    v47 = [v46 hostApp] == 1;
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v3 + 40);
  sub_1B81B5434();
  v121 = v48;
  sub_1B81AB0CC(v33, v45, v47, v48, v0, v37);
  sub_1B81F8D58();
  v49 = *(v1 + 4);
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  if (v49 == 1 && (sub_1B81F8E98() & 1) != 0)
  {
    if (qword_1EDC8CF40 != -1)
    {
      OUTLINED_FUNCTION_13_1(&qword_1EDC8CF40);
    }

    v50 = qword_1EDC8D108;
    v51 = OUTLINED_FUNCTION_47_0();
    sub_1B81A1B90(v51, v119, v52);
    v53 = (v119 + *(v126 + 36));
    *v53 = v50;
    v53[1] = sub_1B819EF7C;
    v53[2] = 0;
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_51();
    sub_1B81A37BC(v54, v55, v56, v57);
    swift_storeEnumTagMultiPayload();
    sub_1B81A3DF0();
    OUTLINED_FUNCTION_49_0();
    sub_1B81A1B48(v58, v59, &unk_1B81FE2C0);
    OUTLINED_FUNCTION_126();
    v61 = v60;
    sub_1B81F8718();
    OUTLINED_FUNCTION_53();
    sub_1B81A3990(v62, v63);
  }

  else
  {
    v64 = OUTLINED_FUNCTION_47_0();
    sub_1B81A1B90(v64, v127, v65);
    swift_storeEnumTagMultiPayload();
    sub_1B81A3DF0();
    OUTLINED_FUNCTION_49_0();
    sub_1B81A1B48(v66, v67, &unk_1B81FE2C0);
    v61 = v125;
    sub_1B81F8718();
  }

  sub_1B81A2340();
  sub_1B81A3804(v61, v132, &qword_1EBA7D140, &qword_1B81FDB70);
  sub_1B81F8D58();
  v68 = *(v128 + 4);
  OUTLINED_FUNCTION_0_1();
  v69 = sub_1B81A2340();
  if (v68 == 1)
  {
    v131 = sub_1B81874B8();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_1B81F8D58();
    v76 = *(v122 + 5);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    v77 = v45;
    sub_1B81F8D58();
    if (v120)
    {
      v78 = [v120 hostApp] == 1;
    }

    else
    {
      v78 = 0;
    }

    v90 = v75;
    v91 = v73;
    sub_1B81AB1AC(v131, v71 & 1, v73, v75, v121, v76, v77, v129, v78);
    sub_1B81A1B90(v123, v124, type metadata accessor for SubtitleView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_59_0();
    sub_1B81A1B48(v92, v93, &unk_1B81FE310);
    sub_1B81A3EAC();
    v88 = v130;
    sub_1B81F8718();

    sub_1B81A2340();
    goto LABEL_19;
  }

  v79 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v45) + 0x230))(v69) == 1)
  {
    sub_1B81F8D58();
    v80 = *(v128 + 3);
    OUTLINED_FUNCTION_0_1();
    v81 = sub_1B81A2340();
    if (v80 == 1)
    {
      (*((*v79 & *v45) + 0x1B8))(v81);
      v82 = v45;
      OUTLINED_FUNCTION_16_0();
      nullsub_1();
      *v124 = v83;
      v124[1] = v84;
      v124[2] = v85;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_59_0();
      sub_1B81A1B48(v86, v87, &unk_1B81FE310);
      sub_1B81A3EAC();
      v88 = v130;
      sub_1B81F8718();
LABEL_19:
      v89 = 0;
      goto LABEL_20;
    }
  }

  v89 = 1;
  v88 = v130;
LABEL_20:
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D148, &qword_1B81FDB78);
  __swift_storeEnumTagSinglePayload(v88, v89, 1, v94);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v95, v96, v97, v98);
  OUTLINED_FUNCTION_78();
  sub_1B81A37BC(v99, v100, v101, v102);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v103, v104, v105, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7D150, &unk_1B81FDB80);
  OUTLINED_FUNCTION_78();
  sub_1B81A37BC(v107, v108, v109, v110);
  OUTLINED_FUNCTION_41();
  sub_1B81A3990(v111, v112);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v113, v114);
  OUTLINED_FUNCTION_41();
  sub_1B81A3990(v115, v116);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v117, v118);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819EFA4(char a1, void (*a2)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D110, &qword_1B81FDB40);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D118, &qword_1B81FDB48);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if (a1)
  {
    a2(v2);
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D100, &qword_1B81FDB30);
    v13 = sub_1B81A3B70();
    v17 = v12;
    v18 = v13;
    swift_getOpaqueTypeConformance2();
    sub_1B81F8718();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_1B81A37BC(v2, v7, &qword_1EBA7D100, &qword_1B81FDB30);
    swift_storeEnumTagMultiPayload();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D100, &qword_1B81FDB30);
    v16 = sub_1B81A3B70();
    v17 = v15;
    v18 = v16;
    swift_getOpaqueTypeConformance2();
    return sub_1B81F8718();
  }
}

void sub_1B819F21C()
{
  OUTLINED_FUNCTION_38();
  v45 = v0;
  v47 = v4;
  v48 = v3;
  v6 = v5;
  v8 = v7;
  v41 = v10;
  v42 = v9;
  v44 = v11;
  v13 = v12;
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_101();
  v46 = sub_1B81F8728();
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_118();
  if (v44)
  {
    v42(v45);
    v27 = *(v22 + 16);
    v28 = OUTLINED_FUNCTION_125();
    v27(v28);
    v45 = v13;
    v29 = *(v22 + 8);
    v30 = OUTLINED_FUNCTION_134();
    v29(v30);
    v31 = OUTLINED_FUNCTION_61();
    v27(v31);
    v32 = OUTLINED_FUNCTION_134();
    sub_1B8199484(v32, v33, v8, v47, v48);
    v34 = OUTLINED_FUNCTION_134();
    v29(v34);
    (v29)(v1, v6);
  }

  else
  {
    v35 = v43;
    v36 = *(v43 + 16);
    v36(v20, v45, v8);
    v36(v16, v20, v8);
    sub_1B819957C(v16, v6, v8, v47, v48);
    v37 = *(v35 + 8);
    v37(v16, v8);
    v37(v20, v8);
  }

  v49 = v47;
  v50 = v48;
  OUTLINED_FUNCTION_2_2();
  v38 = v46;
  swift_getWitnessTable();
  v39 = OUTLINED_FUNCTION_126();
  v40(v39);
  (*(v25 + 8))(v2, v38);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819F540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B81A1B90(*a1, a2, type metadata accessor for SGBannerContainerView);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFB0, &qword_1B81FDA18);
  sub_1B81A1B90(a1[1], a2 + v4[12], type metadata accessor for SGBannerContainerView);
  sub_1B81A1B90(a1[2], a2 + v4[16], type metadata accessor for SGBannerContainerView);
  sub_1B81A1B90(a1[3], a2 + v4[20], type metadata accessor for SGBannerContainerView);
  sub_1B81A1B90(a1[4], a2 + v4[24], type metadata accessor for SGBannerContainerView);
  result = sub_1B81A1B90(a1[5], a2 + v4[28], type metadata accessor for SGBannerContainerView);
  v6 = a2 + v4[32];
  v7 = a1[6];
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 8) = v7;
  return result;
}