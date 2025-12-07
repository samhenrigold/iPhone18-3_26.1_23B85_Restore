unint64_t sub_21693D4B8()
{
  result = qword_27CABD428;
  if (!qword_27CABD428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD420, &qword_21702A1D0);
    sub_21693D570();
    sub_2166D9530(&qword_27CABD460, &qword_27CABD468, &qword_21702A1F8, MEMORY[0x277CE0490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD428);
  }

  return result;
}

unint64_t sub_21693D570()
{
  result = qword_27CABD430;
  if (!qword_27CABD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD438, &qword_21702A1D8);
    sub_21693D5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD430);
  }

  return result;
}

unint64_t sub_21693D5FC()
{
  result = qword_27CABD440;
  if (!qword_27CABD440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD448, &qword_21702A1E0);
    sub_21693D688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD440);
  }

  return result;
}

unint64_t sub_21693D688()
{
  result = qword_27CABD450;
  if (!qword_27CABD450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD458, &unk_21702A1E8);
    sub_216875080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD450);
  }

  return result;
}

uint64_t sub_21693D75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_217005C64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_21693DA88(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_21693DAF8(a1);
    sub_21693DAF8(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v12 = sub_21700A164();
    sub_21693DAF8(a1);
    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_21693D94C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  v5 = sub_217005CC4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_21700DF14();
  sub_217005CB4();
  result = sub_217005C74();
  if (v4 != 2)
  {
    if (a3)
    {
      sub_21700AD34();
    }

    else
    {
      sub_21700AD14();
    }

    sub_21693DA34();
    return sub_217005C84();
  }

  return result;
}

unint64_t sub_21693DA34()
{
  result = qword_27CABD470;
  if (!qword_27CABD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD470);
  }

  return result;
}

uint64_t sub_21693DA88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21693DAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21693DBA8(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD488, type metadata accessor for ReplayYearModel, &unk_21702A23C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693DC00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21693DCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v12 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v38[0] = v15 - v14;
  v39 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = (v18 - v17);
  OUTLINED_FUNCTION_4_40();
  v21 = v4 + v20;
  type metadata accessor for PageMappedItemsStore();
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
  *(v22 + 16) = sub_21700E384();
  v23 = type metadata accessor for JSReplayPage(0);
  v38[1] = a1;
  v38[2] = a2;
  v40 = a1;
  v41 = a2;
  v42 = v22;
  sub_216CC9FAC();
  v25 = v24;
  sub_216681B04(&v21[*(v23 + 24)], v11, &qword_27CAB6BF0, &unk_217015620);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_216697664(v11, &qword_27CAB6BF0, &unk_217015620);
    v26 = 0;
  }

  else
  {
    v27 = v38[0];
    sub_21693E78C(v11, v38[0], type metadata accessor for Page.Header);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A0, &unk_217060FA0);
    sub_216CCCA0C();
    v26 = v28;
    sub_21693E734(v27, type metadata accessor for Page.Header);
  }

  v29 = v39;
  v30 = *(v39 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v31 + 16))(&v19[v30], v21);
  *v19 = v25;
  *(v19 + 1) = v22;
  *&v19[*(v29 + 28)] = v26;
  v32 = *v4;
  v33 = v4[1];
  v34 = v4[2];
  v35 = v4[3];
  *a3 = v32;
  a3[1] = v33;
  a3[2] = v34;
  a3[3] = v35;
  OUTLINED_FUNCTION_6_38();
  sub_21693E78C(v19, a3 + v36, type metadata accessor for MappedReplayPage);
  sub_21700DF14();
  sub_21700DF14();
  return sub_21700DF14();
}

uint64_t sub_21693DFBC()
{
  OUTLINED_FUNCTION_4_40();
  type metadata accessor for JSReplayPage(0);

  return sub_21700DF14();
}

uint64_t sub_21693E000@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplayYearModel(0) + 20);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_21693E09C()
{
  OUTLINED_FUNCTION_4_40();
  v2 = *(v0 + v1 + *(type metadata accessor for JSReplayPage(0) + 32));
  sub_21700DF14();
  return v2;
}

uint64_t sub_21693E0E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_40();
  v6 = (v2 + v5 + *(type metadata accessor for JSReplayPage(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_21693E184(uint64_t a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v2;
  v4 = *(a2 + 20);
  *(a1 + 24) = v4;
  v5 = v2 + v4;
  v6 = *(type metadata accessor for JSReplayPage(0) + 20);
  *(a1 + 28) = v6;
  v7 = *(v5 + v6);
  *(a1 + 16) = v7;
  *a1 = v7;
  sub_21700DF14();
  return sub_21693E1F4;
}

uint64_t sub_21693E1F4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v4 = *(a1 + 6);
  v3 = *(a1 + 7);
  v5 = *a1;
  if (a2)
  {
    sub_21700DF14();

    *(v2 + v4 + v3) = v5;
  }

  else
  {

    *(v2 + v4 + v3) = v5;
  }

  return result;
}

uint64_t sub_21693E2A4()
{
  OUTLINED_FUNCTION_6_38();

  return sub_21700DF14();
}

uint64_t sub_21693E2D0()
{
  OUTLINED_FUNCTION_6_38();
}

uint64_t sub_21693E300@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_38();
  v4 = v1 + v3;
  v5 = *(type metadata accessor for MappedReplayPage(0) + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 16);

  return v8(a1, v4 + v5, v6);
}

uint64_t sub_21693E388@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ReplayPage(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v36 - v10);
  v12 = type metadata accessor for JSReplayPage(0);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8, &unk_21702A270);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for ReplayYearPeriodList(0);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = (v24 - v23);
  sub_216F7A5BC((v24 - v23));
  v26 = sub_216B60A3C(v25);
  if (v2)
  {
    return OUTLINED_FUNCTION_0_79();
  }

  v36 = a2;
  v37 = v16;
  *a2 = v26;
  a2[1] = v27;
  a2[2] = v28;
  a2[3] = v29;
  v38 = v27;
  v39 = v26;
  v40 = v29;
  v31 = type metadata accessor for ReplayYear(0);
  sub_216681B04(a1 + *(v31 + 24), v20, &qword_27CABD4A8, &unk_21702A270);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v5);
  sub_216697664(v20, &qword_27CABD4A8, &unk_21702A270);
  if (EnumTagSinglePayload == 1)
  {
    sub_2167880BC();
    swift_allocError();
    *v33 = xmmword_21702A210;
    *(v33 + 16) = v31;
    swift_willThrow();
    OUTLINED_FUNCTION_0_79();
  }

  else
  {
    sub_216F7AAC0(v11);
    sub_21693E6D0(v11, v8);
    v34 = v37;
    sub_2167836D8(v8, v37);
    OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_0_79();
    v35 = type metadata accessor for ReplayYearModel(0);
    return sub_21693E78C(v34, v36 + *(v35 + 20), type metadata accessor for JSReplayPage);
  }
}

uint64_t sub_21693E6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayPage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21693E734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21693E78C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = v6 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_21693E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21693EA44(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD4D0, type metadata accessor for ReplayYearModel, &unk_21702A2A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693EAE4(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD4E0, type metadata accessor for ReplayYearModel, &unk_21702A2D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693EB3C(void *a1)
{
  a1[1] = sub_21693DC00(&qword_27CABD4E8, type metadata accessor for ReplayYearModel, &unk_21702A2FC);
  a1[2] = sub_21693DC00(&qword_27CABD4F0, type metadata accessor for ReplayYearModel, &unk_21702A32C);
  result = sub_21693DC00(&qword_27CABD4F8, type metadata accessor for ReplayYearModel, &unk_21702A220);
  a1[3] = result;
  return result;
}

uint64_t sub_21693EC30(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD500, type metadata accessor for MappedReplayYearModel, &unk_21702A364);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693ECD0(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD510, type metadata accessor for MappedReplayYearModel, &unk_21702A38C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693ED28(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = sub_21700D284();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = result;
  if (v12 >= a2)
  {
LABEL_29:
    if (v7 == v12)
    {
      v23 = a1;
      v10 = v7;
      v15 = v5;
    }

    else
    {
      v24 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v11 <= 0x7FFFFFFE)
      {
        v25 = *v24;
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }

      v23 = ((v24 + v14 + 8) & ~v14);
    }

    return __swift_getEnumTagSinglePayload(v23, v10, v15);
  }

  v16 = ((*(*(result - 8) + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + 9) & 0xFFFFFFFFFFFFFFF8) + 40;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v12 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 2:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        LODWORD(v17) = *a1;
      }

      result = v12 + (v17 | v22) + 1;
      break;
    default:
      goto LABEL_29;
  }

  return result;
}

void sub_21693EF58(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_21700D284();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((*(*(v10 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + 9) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v14 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFF8) + 8) & ~v16) + 9) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 == v14)
        {
          v23 = a1;
          v24 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v25 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (v13 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFE)
            {
              *v25 = 0;
              *v25 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v25 = a2;
            }

            return;
          }

          v23 = ((v25 + v16 + 8) & ~v16);
          v24 = a2;
        }

        __swift_storeEnumTagSinglePayload(v23, v24, v12, v10);
        break;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFF8) + 8) & ~v16) + 9) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((*(*(v10 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFF8) + 8) & ~v16) + 9) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v22 = ~v14 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        break;
      case 2:
        *(a1 + v17) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_21693F1F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21693F2E0(uint64_t a1)
{
  sub_21700F8F4();
  sub_2167092F4(v3, *v1);
  return sub_21700F944();
}

uint64_t sub_21693F320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_21700D284();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for SongDetailPageIntent(uint64_t a1)
{
  result = qword_27CABD518;
  if (!qword_27CABD518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21693F408(uint64_t a1)
{
  type metadata accessor for ContentDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_2166CE38C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21693F4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v52, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v25)
  {
    (*(v8 + 8))(v52, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v52;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for SongDetailPageIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_21693F864(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for SongDetailPageIntent(0);
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21693FA38(uint64_t a1)
{
  result = sub_2166CE42C(&qword_27CABD528, type metadata accessor for SongDetailPageIntent, &unk_21702A504);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693FAD8(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE42C(&qword_27CABD528, type metadata accessor for SongDetailPageIntent, &unk_21702A504);
  result = sub_2166CE42C(&qword_27CABD530, type metadata accessor for SongDetailPageIntent, &unk_21702A4E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21693FB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21693FBCC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI31CreateStationMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_21693FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_21693FE50(a1, a2, a3, 0x747369747261, 0xE600000000000000, 4, &qword_27CABD548, &unk_21702A650, &v14 - v8, MEMORY[0x277CD8428], MEMORY[0x277CD8418], &unk_28291D660, sub_216940ED8);
  v10 = sub_21678C1C4();
  sub_216697664(v9, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v10;
  v12 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v12;
}

uint64_t sub_21693FE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v13;
  v111 = a6;
  v113 = a5;
  v110 = a4;
  v109 = a3;
  v127 = a2;
  v129 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v128 = v19;
  MEMORY[0x28223BE20](v20);
  v126 = v21;
  v132 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a7;
  v131 = a8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  OUTLINED_FUNCTION_1();
  v124 = v22;
  MEMORY[0x28223BE20](v23);
  v123 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_0(&v97 - v26);
  v120 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v31 - v30);
  v32 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v108 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v36 - v35);
  v118 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v117 = v37;
  MEMORY[0x28223BE20](v38);
  v115 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v97 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v44 = OUTLINED_FUNCTION_36(v43);
  MEMORY[0x28223BE20](v44);
  v46 = &v97 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v97 - v48;
  v116 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v114 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v53 - v52);
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v54 = v134;
  if (sub_216E3D990())
  {
    v101 = v54;
    v105 = a9;
    v106 = v16;
    v103 = a13;
    v102 = a12;
    v55 = a10(0);
    v104 = a1;
    v100 = v55;
    v98 = sub_21700B934();
    v99 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v58 = 0xE800000000000000;
    *(inited + 32) = 0x6570795479616C70;
    *(inited + 40) = 0xE800000000000000;
    v59 = MEMORY[0x277D837D0];
    strcpy((inited + 48), "createStation");
    *(inited + 62) = -4864;
    *(inited + 72) = v59;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v60 = (v109 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v61 = v60[1];
    *(inited + 96) = *v60;
    *(inited + 104) = v61;
    *(inited + 120) = v59;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v59;
    v62 = v110;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v62;
    *(inited + 152) = v113;
    sub_21700DF14();
    sub_21700DF14();
    v63 = sub_21700E384();
    v113 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v32);
    sub_21700D6F4();
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    v134 = v63;
    OUTLINED_FUNCTION_65_1();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_43_2();
    sub_2166EF9D4();
    v136 = v59;
    v134 = 2036427888;
    v135 = 0xE400000000000000;
    OUTLINED_FUNCTION_65_1();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_43_2();
    sub_2166EF9D4();
    v64 = 0x6472616F6279656BLL;
    v65 = v42;
    switch(v111)
    {
      case 1:
        v58 = 0xE500000000000000;
        v64 = 0x79726F7473;
        break;
      case 2:
        v58 = 0xE400000000000000;
        v64 = 1701998445;
        break;
      case 3:
        v58 = 0xE500000000000000;
        v64 = 0x636972796CLL;
        break;
      case 4:
        v64 = 0xD000000000000010;
        v58 = 0x80000002170801D0;
        break;
      case 5:
        v58 = 0x80000002170801F0;
        v64 = 0xD000000000000012;
        break;
      case 6:
        v58 = 0xE900000000000075;
        v64 = 0x6E654D6570697773;
        break;
      case 7:
        v58 = 0x8000000217080210;
        v64 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v136 = v59;
    v134 = v64;
    v135 = v58;
    OUTLINED_FUNCTION_65_1();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_43_2();
    sub_2166EF9D4();
    v68 = v133;
    sub_2166A6E54(v113, v46, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v46, 1, v32) == 1)
    {
      sub_216697664(v46, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v69 = v108;
      v70 = v107;
      (*(v108 + 32))(v107, v46, v32);
      v71 = sub_217005DE4();
      v136 = v59;
      v134 = v71;
      v135 = v72;
      OUTLINED_FUNCTION_65_1();
      swift_isUniquelyReferenced_nonNull_native();
      v133 = v68;
      OUTLINED_FUNCTION_43_2();
      sub_2166EF9D4();
      v68 = v133;
      (*(v69 + 8))(v70, v32);
    }

    v73 = v105;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v74 = sub_21700CF84();
    v75 = __swift_project_value_buffer(v74, qword_280E73DB0);
    v76 = v119;
    MEMORY[0x21CE9DD70](v98, v99, 0x6E6F74747562, 0xE600000000000000, v68, v75);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v77 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_217013DA0;
    v79 = v78 + v77;
    v80 = v120;
    (*(v28 + 16))(v79, v76, v120);
    v81 = v117;
    v82 = v65;
    v83 = v65;
    v84 = v118;
    (*(v117 + 16))(v115, v82, v118);
    v85 = v112;
    sub_21700D244();

    (*(v28 + 8))(v76, v80);
    (*(v81 + 8))(v83, v84);
    sub_216697664(v113, &qword_27CABA820, &unk_217018CE0);
    v86 = v121;
    (*(*(v100 - 8) + 16))(v121, v104);
    (*(v114 + 32))(v86 + *(v122 + 36), v85, v116);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v87 = v123;
    v88 = v130;
    v89 = v131;
    sub_21678818C(v86, v123, v130, v131);
    v90 = v128;
    v91 = v129;
    (*(v128 + 16))(v132, v127, v129);
    v92 = (*(v124 + 80) + 24) & ~*(v124 + 80);
    v93 = (v125 + *(v90 + 80) + v92) & ~*(v90 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v106;
    sub_21678818C(v87, v94 + v92, v88, v89);
    (*(v90 + 32))(v94 + v93, v132, v91);
    v95 = type metadata accessor for MenuAction(0);
    v96 = (v73 + *(v95 + 20));
    *v96 = v103;
    v96[1] = v94;
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v95);
  }

  else
  {
    v66 = type metadata accessor for MenuAction(0);
    __swift_storeEnumTagSinglePayload(a9, 1, 1, v66);
  }
}

uint64_t sub_216940AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  v15 = sub_216B88F54(a3 + v14, v9);
  sub_2168CD6E4(v9);
  if (v15)
  {
    v16 = 4;
  }

  else
  {
    v16 = 7;
  }

  sub_21693FE50(a1, a2, a3, 1735290739, 0xE400000000000000, v16, &qword_27CABD538, &unk_21702A640, v13, MEMORY[0x277CD8238], MEMORY[0x277CD8218], &unk_28291D638, sub_216940EBC);
  v17 = sub_21678C1C4();
  sub_216697664(v13, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v17;
  v19 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v19;
}

uint64_t sub_216940CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12[4] = sub_216940FD0(a6, a4, a5);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2166A6E54(a2, boxed_opaque_existential_1, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_216940D78()
{

  v1 = OBJC_IVAR____TtC7MusicUI31CreateStationMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for CreateStationMenuActionProvider(uint64_t a1)
{
  result = qword_280E30498;
  if (!qword_280E30498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216940EF4(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v10);
  return sub_216940CA0(*(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v11 + 80)) & ~*(v11 + 80)), a1, a2, a3);
}

uint64_t sub_216940FD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21694104C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v56 = v6;
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  v55 = a1;
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v28 = *(v10 + 8);
  v53 = v10 + 8;
  v54 = v8;
  v52 = v28;
  v28(v24, v8);
  if (v27)
  {
    v58 = v25;
    v59 = v27;
    sub_21700F364();
    sub_21700D7A4();
    v29 = v55;
    sub_21700CE04();
    (*(v56 + 16))(v50, v60, v57);
    v30 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
    v31 = v15;
    v32 = a3;
    sub_21700D734();
    sub_21700CE04();
    v33 = sub_21700CD44();
    v34 = v18;
    v35 = v54;
    v36 = v52;
    v52(v34, v54);
    *(v32 + v30[6]) = v33 & 1;
    sub_21700CE04();
    v37 = sub_21700CD44();
    v36(v31, v35);
    *(v32 + v30[7]) = v37 & 1;
    v38 = v32;
    sub_21700CE04();
    v39 = sub_21700CDB4();
    v41 = v40;
    v36(v21, v35);
    v42 = (v38 + v30[8]);
    *v42 = v39;
    v42[1] = v41;
    v43 = v51;
    sub_21700CE04();
    LOBYTE(v39) = sub_21700CD44();
    (*(v56 + 8))(v60, v57);
    v36(v29, v35);
    result = (v36)(v43, v35);
    *(v38 + v30[9]) = v39 & 1;
  }

  else
  {
    v45 = sub_21700E2E4();
    sub_2169415D8(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v47 = v46;
    v48 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
    *v47 = 25705;
    v47[1] = 0xE200000000000000;
    v47[2] = v48;
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    (*(v56 + 8))(v60, v57);
    return (v52)(v55, v54);
  }

  return result;
}

uint64_t sub_2169415D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216941634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216941688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a2;
  v35 = a1;
  v38 = a7;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  type metadata accessor for MusicMetricsContextModifier(255, &v43);
  OUTLINED_FUNCTION_1_65();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170097A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD628, &qword_21702A818);
  v11 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v36 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD630, &qword_21702A820);
  v16 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v37 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v34 = &v32 - v22;
  swift_getKeyPath();
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v46 = type metadata accessor for InternalBootstrap(0, &v43);
  v47 = &off_28291D678;
  v23 = v33;
  v43 = v33;

  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  sub_21700A3D4();

  sub_21669987C(&v43, &qword_27CAB7188, &unk_217015F90);
  swift_getKeyPath();
  sub_2167B7D58(v23 + 48, &v43);
  v25 = sub_216941D00(&qword_27CABD638, &qword_27CABD628, &qword_21702A818);
  v41 = WitnessTable;
  v42 = v25;
  OUTLINED_FUNCTION_0_80();
  v26 = swift_getWitnessTable();
  sub_21700A3D4();

  sub_21669987C(&v43, &qword_27CAB71A8, &qword_217015FA0);
  (*(v36 + 8))(v15, v11);
  v27 = sub_216941D00(&qword_27CABD640, &qword_27CABD630, &qword_21702A820);
  v39 = v26;
  v40 = v27;
  v28 = swift_getWitnessTable();
  v29 = v34;
  sub_2166C24DC(v20, v16, v28);
  v30 = *(v37 + 8);
  v30(v20, v16);
  sub_2166C24DC(v29, v16, v28);
  return (v30)(v29, v16);
}

void *sub_216941A14()
{
  sub_216941DA8();

  return sub_217009104();
}

uint64_t sub_216941A80(uint64_t a1)
{
  sub_216681B64(a1, v4, &qword_27CAB7188, &unk_217015F90);
  OUTLINED_FUNCTION_3_61();
  return sub_216941C24(v4, &qword_27CAB7188, &unk_217015F90, v1, v2);
}

void *sub_216941B1C()
{
  sub_216941D54();

  return sub_217009104();
}

uint64_t sub_216941B88(uint64_t a1)
{
  sub_216681B64(a1, v4, &qword_27CAB71A8, &qword_217015FA0);
  OUTLINED_FUNCTION_4_41();
  return sub_216941C24(v4, &qword_27CAB71A8, &qword_217015FA0, v1, v2);
}

uint64_t sub_216941C24(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_216681B64(a1, v11, a2, a3);
  a4(v9);
  sub_217009114();
  return sub_21669987C(a1, a2, a3);
}

uint64_t sub_216941D00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_216941D54()
{
  result = qword_27CABD648;
  if (!qword_27CABD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD648);
  }

  return result;
}

unint64_t sub_216941DA8()
{
  result = qword_27CABD650;
  if (!qword_27CABD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD650);
  }

  return result;
}

double sub_216941E1C()
{
  qword_27CABD578 = 0;
  result = 0.0;
  xmmword_27CABD558 = 0u;
  unk_27CABD568 = 0u;
  return result;
}

uint64_t sub_216941E34@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB5A78 != -1)
  {
    swift_once();
  }

  return sub_216681B64(&xmmword_27CABD558, a1, &qword_27CAB7188, &unk_217015F90);
}

double sub_216941EA4()
{
  qword_27CABD5A0 = 0;
  result = 0.0;
  xmmword_27CABD580 = 0u;
  *algn_27CABD590 = 0u;
  return result;
}

uint64_t sub_216941EBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB5A80 != -1)
  {
    swift_once();
  }

  return sub_216681B64(&xmmword_27CABD580, a1, &qword_27CAB71A8, &qword_217015FA0);
}

uint64_t sub_216941F30()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CB22920);
  __swift_project_value_buffer(v0, qword_27CB22920);
  return sub_217007C94();
}

uint64_t sub_216941FB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  v6 = sub_21700E244();
  type metadata accessor for JSIntentDispatcher();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v7 = type metadata accessor for IntentAction(0);
  sub_216ECDE68(a1 + *(v7 + 20), a2);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = sub_2166AF2EC();
  swift_retain_n();
  v10 = sub_21700EE84();
  v12[3] = v9;
  v12[4] = MEMORY[0x277D225C0];
  v12[0] = v10;
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v6;
}

uint64_t sub_216942134()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_21700E224();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_216942220(void *a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CAB5A88 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_27CB22920);
  v7 = a1;
  v8 = sub_217007C84();
  v9 = sub_21700ED84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_21700F884();
    v14 = sub_2166A85FC(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_216679000, v8, v9, "Error performing Action: '%{public}s'", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x21CEA1440](v11, -1, -1);
    MEMORY[0x21CEA1440](v10, -1, -1);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  sub_21700E224();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_216942464()
{
  result = qword_280E44C18[0];
  if (!qword_280E44C18[0])
  {
    type metadata accessor for IntentAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E44C18);
  }

  return result;
}

uint64_t sub_2169424F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  return sub_2169425C8(v9, a1, a2, a3);
}

uint64_t sub_2169425C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

void sub_216942680()
{
  OUTLINED_FUNCTION_1_66();
  OUTLINED_FUNCTION_0_81("Fatal error", v0, v1, v2, v3, "MusicUI/ProtoRequestCovertibleIntent.swift");
  __break(1u);
}

uint64_t sub_216942740(uint64_t result)
{
  if (!v2)
  {
    *v1 = result & 1;
    v1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_216942790()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(*(v2 + 16) + 24))(v1);
}

uint64_t sub_216942854(uint64_t result)
{
  if (!v2)
  {
    *v1 = result & 1;
  }

  return result;
}

uint64_t sub_216942884(uint64_t result)
{
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t sub_2169428B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!v4)
  {
    *v3 = result & 1;
    *(v3 + 8) = a2;
    *(v3 + 16) = a3;
  }

  return result;
}

uint64_t sub_2169428E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!v4)
  {
    *v3 = result;
    v3[1] = a2;
    v3[2] = a3;
  }

  return result;
}

uint64_t sub_216942914(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!v5)
  {
    *v4 = result;
    v4[1] = a2;
    v4[2] = a3;
    v4[3] = a4;
  }

  return result;
}

uint64_t sub_21694297C(uint64_t result, uint64_t a2)
{
  if (!v3)
  {
    *v2 = result;
    v2[1] = a2;
  }

  return result;
}

uint64_t sub_2169429B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216942A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_216942A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216942AA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216942B20(uint64_t result)
{
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t type metadata accessor for StationContextMenu(uint64_t a1)
{
  result = qword_280E3E6B8;
  if (!qword_280E3E6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216942BD8(uint64_t a1)
{
  sub_21700C644();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_2167B83B4(319);
      if (v3 <= 0x3F)
      {
        sub_2167B84AC(319);
        if (v4 <= 0x3F)
        {
          sub_2167EE974(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216942CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216942EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[16] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[17] = v5;
  v3[18] = OUTLINED_FUNCTION_80();
  v6 = type metadata accessor for PresentSheetAction(0);
  v3[19] = v6;
  OUTLINED_FUNCTION_36(v6);
  v3[20] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[21] = v7;
  OUTLINED_FUNCTION_2(v7);
  v3[22] = v8;
  v3[23] = OUTLINED_FUNCTION_80();
  v9 = sub_217006224();
  v3[24] = v9;
  OUTLINED_FUNCTION_2(v9);
  v3[25] = v10;
  v3[26] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v11);
  v3[27] = OUTLINED_FUNCTION_80();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_36(v12);
  v3[28] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v13);
  v3[29] = OUTLINED_FUNCTION_80();
  v14 = type metadata accessor for FlowAction.Destination(0);
  v3[30] = v14;
  OUTLINED_FUNCTION_36(v14);
  v3[31] = OUTLINED_FUNCTION_80();
  v15 = sub_21700D284();
  v3[32] = v15;
  OUTLINED_FUNCTION_2(v15);
  v3[33] = v16;
  v3[34] = OUTLINED_FUNCTION_80();
  v17 = type metadata accessor for ModalActionModelDestinations.Destination(0);
  v3[35] = v17;
  OUTLINED_FUNCTION_36(v17);
  v3[36] = OUTLINED_FUNCTION_80();
  v18 = sub_21700DFD4();
  v3[37] = v18;
  OUTLINED_FUNCTION_2(v18);
  v3[38] = v19;
  v3[39] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[40] = sub_21700EA24();
  v21 = sub_21700E9B4();
  v3[41] = v21;
  v3[42] = v20;

  return MEMORY[0x2822009F8](sub_2169431E0, v21, v20);
}

uint64_t sub_2169431E0()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 112);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v5 = sub_21700DF34();
  *(v0 + 344) = v5;
  (*(v2 + 8))(v1, v3);
  sub_216685F4C(0, &qword_280E29D68, 0x277CB8F48);
  sub_21700E094();
  v6 = *(v0 + 96);
  v7 = [v6 ams_activeiTunesAccount];
  *(v0 + 352) = v7;

  v8 = sub_216943BDC(v4, v5, v7);
  *(v0 + 360) = v8;
  if (v8)
  {
    v9 = v8;
    v10 = *(v0 + 288);
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 256);
    v48 = v11;
    v47 = *(v0 + 248);
    v14 = *(v0 + 232);
    v15 = *(v0 + 224);
    v59 = *(v0 + 216);
    v49 = *(v0 + 208);
    v50 = *(v0 + 200);
    v51 = *(v0 + 192);
    v55 = *(v0 + 160);
    v54 = *(v0 + 152);
    v56 = *(v0 + 136);
    v57 = *(v0 + 128);
    v58 = *(v0 + 144);
    v16 = *(v0 + 112);
    v52 = v16;
    v53 = *(type metadata accessor for OpenUnifiedMessagesSheetAction(0) + 24);
    v17 = *(v12 + 16);
    v17(v11, v16 + v53, v13);
    *v47 = v9;
    swift_storeEnumTagMultiPayload();
    v18 = sub_217005EF4();
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v21 = OUTLINED_FUNCTION_8_35(v14, v19, v20, v18);
    v22 = type metadata accessor for Page.Header(v21);
    v25 = OUTLINED_FUNCTION_8_35(v15, v23, v24, v22);
    v26 = type metadata accessor for ReferrerInfo(v25);
    v29 = OUTLINED_FUNCTION_8_35(v59, v27, v28, v26);
    v30 = type metadata accessor for FlowAction(v29);
    v31 = v10 + v30[10];
    *(v31 + 32) = 0;
    *v31 = 0u;
    *(v31 + 16) = 0u;
    v17(v10, v48, v13);
    sub_216944230(v47, v10 + v30[5], type metadata accessor for FlowAction.Destination);

    sub_217006214();
    v32 = sub_2170061F4();
    v34 = v33;
    (*(v50 + 8))(v49, v51);
    sub_216944290(v47, type metadata accessor for FlowAction.Destination);
    (*(v12 + 8))(v48, v13);
    v35 = (v10 + v30[6]);
    *v35 = v32;
    v35[1] = v34;
    *(v10 + v30[7]) = 0;
    sub_2167A66B4(v0 + 16, v31);
    sub_2167A6724(v14, v10 + v30[8], &qword_27CABA820, &unk_217018CE0);
    sub_2167A6724(v15, v10 + v30[11], &qword_27CAB6BF0, &unk_217015620);
    sub_2167A6724(v59, v10 + v30[9], &qword_27CAB6FD0, &qword_21701D5F0);
    swift_storeEnumTagMultiPayload();
    sub_21700E094();
    sub_216944230(v10, v55 + *(v54 + 20), type metadata accessor for ModalActionModelDestinations.Destination);
    v17(v55, v52 + v53, v13);
    *(v0 + 80) = v54;
    *(v0 + 88) = sub_2169441E8(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_216944230(v55, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    (*(v56 + 104))(v58, *MEMORY[0x277D21E18], v57);
    v37 = swift_task_alloc();
    *(v0 + 368) = v37;
    *v37 = v0;
    v37[1] = sub_2169437C4;
    v38 = *(v0 + 168);
    v39 = *(v0 + 144);
    v40 = *(v0 + 120);
    v41 = *(v0 + 104);

    return MEMORY[0x28217F468](v41, v0 + 56, v39, v40, v38);
  }

  else
  {
    v42 = *(v0 + 104);

    swift_unknownObjectRelease();

    v43 = *MEMORY[0x277D21CA0];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v44 + 104))(v42, v43);
    OUTLINED_FUNCTION_4_42();

    OUTLINED_FUNCTION_3();

    return v45();
  }
}

uint64_t sub_2169437C4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 376) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[41];
    v7 = v2[42];
    v8 = sub_216943A7C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
    v6 = v2[41];
    v7 = v2[42];
    v8 = sub_216943944;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216943944()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_53();
  sub_216944290(v5, v6);
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_1_67();
  sub_216944290(v1, v7);
  OUTLINED_FUNCTION_4_42();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216943A7C()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_53();
  sub_216944290(v4, v6);
  (*(v3 + 8))(v2, v5);
  OUTLINED_FUNCTION_1_67();
  sub_216944290(v1, v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216943BDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OpenUnifiedMessagesSheetAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  if (qword_27CAB5A90 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  v11 = __swift_project_value_buffer(v10, qword_27CABD658);
  sub_216944230(a1, v7, type metadata accessor for OpenUnifiedMessagesSheetAction);
  sub_21700DF14();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();

  v35 = v13;
  v14 = os_log_type_enabled(v12, v13);
  v36 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    v34[1] = v11;
    v38 = v34[0];
    *v15 = 136446466;
    *(v15 + 4) = sub_2166A85FC(v8, v9, &v38);
    *(v15 + 12) = 2082;
    v37 = *(v7 + 2);
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD670, qword_21702AC60);
    v16 = sub_21700E594();
    v17 = v5;
    v19 = v18;
    sub_216944290(v7, type metadata accessor for OpenUnifiedMessagesSheetAction);
    v20 = sub_2166A85FC(v16, v19, &v38);
    v5 = v17;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_216679000, v12, v35, "💬 Initializing a UM with hint=%{public}s and context=%{public}s", v15, 0x16u);
    v21 = v34[0];
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v21, -1, -1);
    MEMORY[0x21CEA1440](v15, -1, -1);
  }

  else
  {

    sub_216944290(v7, type metadata accessor for OpenUnifiedMessagesSheetAction);
  }

  sub_216685F4C(0, &qword_280E29BE8, 0x277CEE4C8);
  sub_21700DF14();
  sub_21700DF14();
  v22 = sub_21700EF84();
  [v22 setAccount_];
  v23 = *(a1 + *(v5 + 28));
  if (v23)
  {
    sub_2169FD23C(v23);
    v24 = sub_21700E344();
  }

  else
  {
    v24 = 0;
  }

  [v22 setMetricsOverlay_];

  v25 = [objc_opt_self() mainBundle];
  v26 = sub_2166E2BA8(v25);
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    sub_216685F4C(0, &qword_280E29D60, 0x277CEE620);
    sub_2166A315C(v28, v29);
    sub_2170077F4();
    swift_allocObject();
    swift_unknownObjectRetain();
    return sub_2170077D4();
  }

  else
  {
    v31 = sub_217007C84();
    v32 = sub_21700ED84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_216679000, v31, v32, "💬 Missing bundleId", v33, 2u);
      MEMORY[0x21CEA1440](v33, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_216944044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2167AF644;

  return sub_216942EC0(a1, a2, a3);
}

unint64_t sub_2169440F4(uint64_t a1)
{
  result = sub_2166DA1D8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216944168()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABD658);
  __swift_project_value_buffer(v0, qword_27CABD658);
  return sub_217007C94();
}

uint64_t sub_2169441E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216944230(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216944290(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_2169442E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_21700E4D4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2169443F0;
  v12[3] = &block_descriptor_8;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_2169443F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_216944458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareImageRequestAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2169480F4(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareImageRequestAction);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  sub_216947F2C(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  return sub_216ECDBF4(&unk_21702ADF0, v8);
}

uint64_t sub_216944578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for PresentSheetAction(0);
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for MusicAppDestination.SharePageDescriptor(0);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v3[32] = swift_task_alloc();
  v6 = sub_217005EF4();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  type metadata accessor for ImageURLRequestResponse(0);
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2169447DC, 0, 0);
}

uint64_t sub_2169447DC()
{
  v1 = *(v0 + 168);
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceStyle];

  type metadata accessor for JSIntentDispatcher();
  *(v0 + 304) = type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_8();
  sub_21700E094();
  *(v0 + 312) = *(v0 + 144);
  v4 = type metadata accessor for ShareImageRequestAction(0);
  *(v0 + 320) = v4;
  v5 = (v1 + v4[5]);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v1 + v4[6]);
  v9 = (v1 + v4[7]);
  v10 = *v9;
  v11 = *(v1 + v4[9]);
  v12 = (v1 + v4[10]);
  v13 = *v12;
  v14 = (v1 + v4[11]);
  v15 = *v14;
  v16 = v14[1];
  v22 = *(v9 + 8);
  v23 = *(v12 + 8);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v3 == 2;
  *(v0 + 40) = v8;
  *(v0 + 48) = v10;
  *(v0 + 56) = v22;
  *(v0 + 64) = v11;
  *(v0 + 72) = v13;
  *(v0 + 80) = v23;
  *(v0 + 88) = v15;
  *(v0 + 96) = v16;
  sub_21700DF14();
  sub_21700DF14();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 328) = v17;
  *v17 = v18;
  v17[1] = sub_216944988;
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);

  return sub_216A9BC84(v19, v0 + 16, v20);
}

uint64_t sub_216944988()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v3 + 336) = v0;

  if (v0)
  {
    v6 = sub_216944E88;
  }

  else
  {
    sub_216948070(v3 + 16);
    v6 = sub_216944A94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_216944A94()
{
  v1 = v0[32];
  v2 = v0[33];
  sub_2168282D4(v0[37], v1, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[37];
    sub_2166997CC(v0[32], &qword_27CABA820, &unk_217018CE0);
    sub_2169480A0();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_0_82();
    sub_216948150(v3, v5);
    OUTLINED_FUNCTION_5_41();

    OUTLINED_FUNCTION_3();

    return v6();
  }

  else
  {
    v8 = v0[40];
    v10 = v0[35];
    v9 = v0[36];
    v11 = v0[33];
    v12 = v0[34];
    v13 = v0[31];
    v30 = v0[30];
    v31 = v0[28];
    v34 = v0[23];
    v14 = v0[21];
    v35 = v0[22];
    v36 = v0[24];
    v32 = v0[29];
    v33 = v14;
    (*(v12 + 32))(v9, v0[32], v11);
    v15 = *(v12 + 16);
    v15(v10, v9, v11);
    v16 = (v14 + *(v8 + 32));
    v17 = *v16;
    v18 = v16[1];
    v19 = objc_allocWithZone(type metadata accessor for ShareImageAssetActivityItemProvider(0));
    sub_21700DF14();
    v20 = sub_2169452D8(v10, v17, v18);
    v21 = *(v30 + 24);
    v15(v13 + v21, v9, v11);
    __swift_storeEnumTagSinglePayload(v13 + v21, 0, 1, v11);
    *v13 = v20;
    *(v13 + 8) = 0x2000000000000000;
    *(v13 + 16) = 0;
    sub_2169480F4(v13, v32 + *(v31 + 20), type metadata accessor for MusicAppDestination.SharePageDescriptor);
    type metadata accessor for MusicAppDestination(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ModalActionModelDestinations.Destination(0);
    swift_storeEnumTagMultiPayload();
    sub_21700D284();
    OUTLINED_FUNCTION_34();
    (*(v22 + 16))(v32, v33);
    sub_21700E094();
    v0[16] = v31;
    v0[17] = sub_21668F018(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 13);
    sub_2169480F4(v32, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    (*(v34 + 104))(v36, *MEMORY[0x277D21E18], v35);
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    v0[43] = v24;
    *v24 = v25;
    v24[1] = sub_216944F44;
    v26 = v0[24];
    v27 = v0[25];
    v28 = v0[19];
    v29 = v0[20];

    return MEMORY[0x28217F468](v28, v0 + 13, v26, v29, v27);
  }
}

uint64_t sub_216944E88()
{

  sub_216948070(v0 + 16);
  OUTLINED_FUNCTION_5_41();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216944F44()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  v3[44] = v0;

  (*(v3[23] + 8))(v3[24], v3[22]);
  if (v0)
  {
    v6 = sub_2169451AC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 13);
    v6 = sub_216945080;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_216945080()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[33];
  v5 = v0[29];

  v6 = OUTLINED_FUNCTION_8();
  v7(v6);
  OUTLINED_FUNCTION_6_39();
  sub_216948150(v5, v8);
  OUTLINED_FUNCTION_7_38();
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_0_82();
  sub_216948150(v1, v9);

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_2169451AC()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_6_39();
  sub_216948150(v5, v9);
  OUTLINED_FUNCTION_7_38();
  (*(v4 + 8))(v1, v3);
  OUTLINED_FUNCTION_0_82();
  sub_216948150(v2, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  OUTLINED_FUNCTION_5_41();

  OUTLINED_FUNCTION_3();

  return v11();
}

char *sub_2169452D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v35 = sub_217007B94();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  *&v4[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img] = 0;
  v20 = *(v15 + 16);
  v20(v18 - v17, a1, v13);
  v21 = objc_allocWithZone(type metadata accessor for DownloadShareImageOperation());
  *&v4[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_operation] = sub_216946178(v19);
  v36 = a1;
  v20(&v4[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_url], a1, v13);
  v22 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  *&v4[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_linkMetadata] = v22;
  v23 = v22;
  if (a3)
  {
    v24 = sub_21700E4D4();
  }

  else
  {
    v24 = 0;
  }

  [v22 setTitle_];

  v38.receiver = v4;
  v38.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v38, sel_init);
  v26 = objc_allocWithZone(MEMORY[0x277CCAA88]);
  v27 = v25;
  v28 = [v26 init];
  sub_217007B64();
  sub_217007B54();
  (*(v8 + 8))(v12, v35);
  v29 = sub_21700E4D4();

  OUTLINED_FUNCTION_143();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_2169481A4;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_216945928;
  aBlock[3] = &block_descriptor_22;
  v31 = _Block_copy(aBlock);

  [v28 registerItemForTypeIdentifier:v29 loadHandler:v31];
  _Block_release(v31);

  [*&v27[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_linkMetadata] setImageProvider_];
  (*(v15 + 8))(v36, v13);
  return v27;
}

void sub_216945664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_operation);

    v10 = *&v9[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation_promise];

    if (v10)
    {
      if (a1)
      {
        v11 = swift_allocObject();
        swift_beginAccess();
        v12 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v13 = swift_allocObject();
        v13[2] = v11;
        v13[3] = a1;
        v13[4] = a2;
        v14 = swift_allocObject();
        *(v14 + 16) = a1;
        *(v14 + 24) = a2;
        v15 = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
        sub_2167759F4(a1, a2);

        v16 = sub_21700EE84();
        v17[3] = v15;
        v17[4] = MEMORY[0x277D225C0];
        v17[0] = v16;
        sub_21700E1C4();

        sub_21667E91C(a1, a2);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_216945844(UIImage **a1, uint64_t a2, void (*a3)(NSData *, void))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img);
    *(Strong + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img) = v4;
    v8 = v4;
  }

  v9 = UIImagePNGRepresentation(v4);
  if (v9)
  {
    v10 = sub_217005FB4();
    v12 = v11;

    v9 = sub_217005F94();
    sub_21677A524(v10, v12);
  }

  a3(v9, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_216945928(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_2169131C8;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_21700E354();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_21667E91C(v7, v8);
}

void *sub_216945A30()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_linkMetadata);
  v2 = v1;
  return v1;
}

id sub_216945A94@<X0>(void *a1@<X8>)
{
  v7 = *(v1 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img);
  v3 = sub_216685F4C(0, &qword_280E29B40, 0x277D755B8);
  v4 = v7;
  a1[3] = v3;
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v4 = 0;
  }

  *a1 = v5;

  return v4;
}

id sub_216945BB0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img);
  if (v3)
  {
    v6 = *(v1 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img);
    v3 = sub_216685F4C(0, &qword_280E29B40, 0x277D755B8);
    v4 = v6;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v3;

  return v4;
}

uint64_t sub_216945D60()
{
  v0 = sub_217007B94();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  sub_217007B84();
  v7 = sub_217007B54();
  (*(v2 + 8))(v6, v0);
  return v7;
}

void *sub_216945EB8(void *result)
{
  if (result)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_operation);
    sub_216945EF0(result);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_216945EF0(void *a1)
{
  v2 = v1;
  if ((*(v1 + OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished) & 1) == 0)
  {
    v6 = v1;
    v4 = sub_2169469E8();
    [a1 presentViewController:v4 animated:1 completion:0];

    v2 = v6;
  }

  return v2;
}

uint64_t sub_2169460CC(uint64_t a1)
{
  result = sub_217005EF4();
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

char *sub_216946178(uint64_t a1)
{
  v30 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700B5B4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation_promise;
  *&v1[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation_promise] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished] = 0;
  v1[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isExecuting] = 0;
  *&v1[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation____lazy_storage___alertController] = 0;
  *&v1[v17] = 0;

  v34.receiver = v1;
  v34.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v34, sel_init);
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD788, &unk_21702AE00);
  v19 = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  (*(v12 + 104))(v16, *MEMORY[0x277D851C8], v10);
  v20 = v18;
  v21 = sub_21700EEB4();
  (*(v12 + 8))(v16, v10);
  v32 = v19;
  v33 = MEMORY[0x277D225C0];
  v31 = v21;
  OUTLINED_FUNCTION_143();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v30;
  (*(v5 + 16))(v9, v30, v3);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v5 + 32))(v26 + v24, v9, v3);
  *(v26 + v25) = v22;
  v27 = sub_21700E1A4();
  (*(v5 + 8))(v23, v3);
  *&v20[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation_promise] = v27;

  return v20;
}

void sub_216946498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = objc_opt_self();

  v13 = [v12 sharedSession];
  v14 = sub_217005E04();
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = sub_2169482AC;
  v15[6] = v11;
  v20[4] = sub_2169482E4;
  v20[5] = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_216946910;
  v20[3] = &block_descriptor_47;
  v16 = _Block_copy(v20);

  v17 = [v13 dataTaskWithURL:v14 completionHandler:v16];
  _Block_release(v16);

  [v17 resume];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

void sub_216946678(uint64_t a1, unint64_t a2, int a3, id a4, uint64_t a5, void (*a6)(id), int a7, void (*a8)(void), uint64_t a9)
{
  if (a4)
  {
    v12 = a4;
    a6(a4);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      sub_216946F7C(0, 0x7475636578457369, 0xEB00000000676E69, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isExecuting);
      sub_216946F7C(1, 0x6873696E69467369, 0xEA00000000006465, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished);
      sub_216946C94();
    }

    return;
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  sub_216685F4C(0, &qword_280E29B40, 0x277D755B8);
  sub_21677A404(a1, a2);
  sub_21677A404(a1, a2);
  v18 = sub_216949A80(a1, a2);
  if (!v18)
  {
    sub_21677A510(a1, a2);
LABEL_9:
    sub_216948314();
    v20 = swift_allocError();
    (a6)();

    goto LABEL_10;
  }

  v19 = v18;
  a8();

  sub_21677A510(a1, a2);
LABEL_10:

  sub_216946868(a5);
}

void sub_216946868(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_216946F7C(0, 0x7475636578457369, 0xEB00000000676E69, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isExecuting);
    sub_216946F7C(1, 0x6873696E69467369, 0xEA00000000006465, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished);
    sub_216946C94();
  }
}

uint64_t sub_216946910(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_217005FB4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_21677A510(v6, v10);
}

id sub_2169469E8()
{
  v1 = OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation____lazy_storage___alertController;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation____lazy_storage___alertController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation____lazy_storage___alertController);
LABEL_6:
    v26 = v2;
    return v3;
  }

  v4 = v0;
  sub_216685F4C(0, &qword_27CABD750, 0x277D75110);
  v5 = sub_216983738(268);
  v7 = sub_216947230(v5, v6, 0, 0, 1);
  sub_216685F4C(0, &qword_27CABB9B8, 0x277D750F8);
  v8 = sub_216983738(43);
  v10 = sub_2169442E8(v8, v9, 1, nullsub_1, 0);
  [v7 addAction_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  [v7 setContentViewController_];
  result = [v11 view];
  if (result)
  {
    v13 = result;
    [result bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
    [v22 setActivityIndicatorViewStyle_];
    v23 = v22;
    [v23 setAutoresizingMask_];
    result = [v11 view];
    if (result)
    {
      v24 = result;
      [result addSubview_];

      [v23 setUserInteractionEnabled_];
      [v23 startAnimating];

      v25 = *(v4 + v1);
      *(v4 + v1) = v7;
      v3 = v7;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_216946C24()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_cancel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong cancel];
  }

  return sub_216946C94();
}

uint64_t sub_216946C94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_21700EA34();
  v5 = v0;
  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_21677BBA0();
}

void sub_216946F7C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_21700E4D4();
  [v4 willChangeValueForKey_];

  *(v4 + *a4) = a1;
  v8 = sub_21700E4D4();
  [v4 didChangeValueForKey_];
}

id sub_216947028()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong cancel];
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_216947120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2169471B8, v6, v5);
}

uint64_t sub_2169471B8()
{
  OUTLINED_FUNCTION_33();

  v0 = sub_2169469E8();
  [v0 dismissViewControllerAnimated:0 completion:0];

  OUTLINED_FUNCTION_3();

  return v1();
}

id sub_216947230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_21700E4D4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_21700E4D4();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

uint64_t sub_216947394@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = sub_21700CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v69 = a1;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = v21;
  v26 = v5;
  v67 = *(v6 + 8);
  v67(v25, v5);
  v65 = v24;
  if (v24)
  {
    v27 = v69;
    v63 = v22;
    sub_21700CE04();
    v28 = sub_21700CD44();
    v29 = v67;
    v67(v18, v26);
    v72 = v28 & 1;
    sub_21700CE04();
    v30 = sub_21700CD24();
    v31 = v26;
    v33 = v32;
    v29(v15, v31);
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30;
    }

    v62 = v34;
    sub_21700CE04();
    v35 = sub_21700CD24();
    v37 = v36;
    v29(v12, v31);
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v35;
    }

    v61 = v38;
    v71 = 0;
    v39 = v64;
    sub_21700CE04();
    v40 = sub_21700CD24();
    v42 = v41;
    v29(v39, v31);
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = v40;
    }

    v64 = v43;
    v44 = v66;
    sub_21700CE04();
    v45 = sub_21700CD24();
    v47 = v46;
    v29(v44, v31);
    v70 = v47 & 1;
    sub_21700CE04();
    v48 = sub_21700CDB4();
    v50 = v49;
    v51 = sub_21700CF34();
    (*(*(v51 - 8) + 8))(v68, v51);
    v29(v27, v31);
    result = (v29)(v44, v31);
    v53 = v71;
    v54 = v70;
    v55 = v65;
    *a3 = v63;
    *(a3 + 8) = v55;
    *(a3 + 16) = v72;
    v56 = v61;
    *(a3 + 24) = v62;
    *(a3 + 32) = v56;
    *(a3 + 40) = v53;
    *(a3 + 48) = v64;
    *(a3 + 56) = v45;
    *(a3 + 64) = v54;
    *(a3 + 72) = v48;
    *(a3 + 80) = v50;
  }

  else
  {
    v57 = sub_21700E2E4();
    sub_21668F018(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v58 = 0x6E694B7465737361;
    v58[1] = 0xE900000000000064;
    v58[2] = &type metadata for ImageURLRequestIntent;
    (*(*(v57 - 8) + 104))(v58, *MEMORY[0x277D22530], v57);
    swift_willThrow();
    v59 = sub_21700CF34();
    (*(*(v59 - 8) + 8))(v68, v59);
    return (v67)(v69, v5);
  }

  return result;
}

id sub_2169478EC(JSContext a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v4 = result;
    v7 = *v1;
    v8 = v7;
    sub_21700DF14();
    sub_21700DD04();
    sub_21694876C(&v8);
    sub_21700F0B4();
    LOBYTE(v7) = *(v1 + 16);
    sub_21700DD04();
    sub_21700F0B4();
    Int.makeValue(in:)(a1);
    sub_21700F0B4();
    *&v7 = *(v1 + 4);
    BYTE8(v7) = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0, &qword_217017FD8);
    sub_2169487C0();
    sub_21700DD04();
    sub_21700F0B4();
    Int.makeValue(in:)(a1);
    sub_21700F0B4();
    *&v7 = *(v1 + 7);
    BYTE8(v7) = *(v1 + 64);
    sub_21700DD04();
    sub_21700F0B4();
    v6 = *(v1 + 72);
    v7 = v6;
    sub_2168282D4(&v7, &v5, &qword_27CABAA40, &unk_217014260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
    sub_216948898();
    sub_21700DD04();
    sub_2166997CC(&v7, &qword_27CABAA40, &unk_217014260);
    sub_21700F0B4();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_216947B74(objc_class *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3.super.isa = a1;
  return sub_2169478EC(v3);
}

void *sub_216947BB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_216947394(a1, a2, __src);
  if (!v3)
  {
    return memcpy(a3, __src, 0x58uLL);
  }

  return result;
}

uint64_t sub_216947C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  sub_21700CE04();
  sub_21700CD34();
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(a2);
  v12 = *(v6 + 8);
  v12(a1, v4);
  return (v12)(v10, v4);
}

uint64_t sub_216947D84(uint64_t a1)
{
  result = sub_21668F018(&unk_27CABD740, type metadata accessor for ImageURLRequestResponse, &unk_21702ACDC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216947DFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2166AB4A4;

  return sub_216947120(a1, v4, v5, v6);
}

uint64_t sub_216947F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareImageRequestAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216947F90(uint64_t a1)
{
  v4 = *(type metadata accessor for ShareImageRequestAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2166AB4A4;

  return sub_216944578(a1, v6, v1 + v5);
}

unint64_t sub_2169480A0()
{
  result = qword_27CABD780;
  if (!qword_27CABD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD780);
  }

  return result;
}

uint64_t sub_2169480F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216948150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2169481E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_217005EF4() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_216946498(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t sub_2169482AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_216948314()
{
  result = qword_27CABD790;
  if (!qword_27CABD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD790);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShareImageRequestError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageURLRequestResponse.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2169484F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_216948538(uint64_t result, int a2, int a3)
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

unint64_t sub_2169485E4(uint64_t a1)
{
  *(a1 + 8) = sub_216948614();
  result = sub_216948668();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216948614()
{
  result = qword_27CABD7A0;
  if (!qword_27CABD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7A0);
  }

  return result;
}

unint64_t sub_216948668()
{
  result = qword_27CABD7A8;
  if (!qword_27CABD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7A8);
  }

  return result;
}

unint64_t sub_2169486C0()
{
  result = qword_27CABD7B0;
  if (!qword_27CABD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7B0);
  }

  return result;
}

unint64_t sub_216948718()
{
  result = qword_27CABD7B8;
  if (!qword_27CABD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7B8);
  }

  return result;
}

unint64_t sub_2169487C0()
{
  result = qword_27CABD7C8;
  if (!qword_27CABD7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD7C0, &qword_217017FD8);
    sub_216948844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7C8);
  }

  return result;
}

unint64_t sub_216948844()
{
  result = qword_27CABD7D0;
  if (!qword_27CABD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7D0);
  }

  return result;
}

unint64_t sub_216948898()
{
  result = qword_27CABD7E0;
  if (!qword_27CABD7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40, &unk_217014260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7E0);
  }

  return result;
}

uint64_t sub_216948930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 113))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216948970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_216948A00@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7E8, &qword_21702B188);
  return sub_216948A50(v2, a2 + *(v4 + 44));
}

uint64_t sub_216948A50@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7F0, &qword_21702B190);
  MEMORY[0x28223BE20](v73);
  v4 = &v64 - v3;
  v69 = sub_2170090F4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7F8, &qword_21702B198);
  MEMORY[0x28223BE20](v72);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v64 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  sub_21700B124();
  v19 = sub_217009CB4();
  v20 = *(a1 + 40);
  v21 = *(a1 + 64);
  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD800, &qword_21702C740);
  v31 = &v18[*(v30 + 36)];
  *v31 = v19;
  *(v31 + 1) = v23;
  *(v31 + 2) = v25;
  *(v31 + 3) = v27;
  *(v31 + 4) = v29;
  v31[40] = 0;
  v32 = sub_217009CD4();
  if ((v21 & 1) != 0 && (a1[4] & 1) == 0)
  {
    v64 = *a1;
    sub_21694922C(a1, v74);
    sub_21700ED94();
    v65 = v7;
    v33 = sub_217009C34();
    v66 = v20;
    v34 = v33;
    v7 = v65;
    sub_217007BC4();

    v35 = v67;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216949264(a1);
    v36 = v35;
    v20 = v66;
    (*(v68 + 8))(v36, v69);
  }

  sub_217007F24();
  v37 = &v18[*(v73 + 36)];
  *v37 = v32;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  sub_21694901C();
  *&v18[*(v72 + 36)] = v42;
  sub_21700B124();
  v43 = sub_217009CB4();
  sub_217007F24();
  v44 = &v4[*(v30 + 36)];
  *v44 = v43;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  v49 = sub_217009CD4();
  if ((v21 & 1) != 0 && (a1[4] & 1) == 0)
  {
    v66 = v20;
    sub_21694922C(a1, v74);
    sub_21700ED94();
    v50 = v7;
    v51 = sub_217009C34();
    sub_217007BC4();

    v7 = v50;
    v52 = v67;
    sub_2170090E4();
    v20 = v66;
    swift_getAtKeyPath();
    sub_216949264(a1);
    (*(v68 + 8))(v52, v69);
  }

  sub_217007F24();
  v53 = &v4[*(v73 + 36)];
  *v53 = v49;
  *(v53 + 1) = v54;
  *(v53 + 2) = v55;
  *(v53 + 3) = v56;
  *(v53 + 4) = v57;
  v53[40] = 0;
  if (v20 == 1)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  sub_2169490EC(v4, v12, &qword_27CABD7F0, &qword_21702B190);
  *&v12[*(v72 + 36)] = v58;
  sub_2169490EC(v12, v15, &qword_27CABD7F8, &qword_21702B198);
  v59 = v70;
  sub_216949154(v18, v70);
  sub_216949154(v15, v7);
  v60 = v71;
  sub_216949154(v59, v71);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD808, &qword_21702B1A0);
  v62 = v60 + *(v61 + 48);
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_216949154(v7, v60 + *(v61 + 64));
  sub_2169491C4(v15);
  sub_2169491C4(v18);
  sub_2169491C4(v7);
  return sub_2169491C4(v59);
}

void sub_21694901C()
{
  if (!*(v0 + 40))
  {
    return;
  }

  if (*(v0 + 40) == 1)
  {
    return;
  }

  v1 = *(v0 + 80);
  if (((*(v0 + 112) >> 5) & 3) != 0)
  {
    return;
  }

  if (!v1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v1 == -1 && *(v0 + 72) == 0x8000000000000000)
  {
    goto LABEL_13;
  }
}

uint64_t sub_2169490EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_216949154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7F8, &qword_21702B198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169491C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7F8, &qword_21702B198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216949294()
{
  result = qword_27CABD810;
  if (!qword_27CABD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD818, &qword_21702B1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD810);
  }

  return result;
}

void sub_21694930C(uint64_t a2@<X8>, double d0_0@<D0>)
{
  v5 = sub_216A1204C(d0_0);
  v6 = v5;
  v7 = qword_21702B3E8[v5];
  if (*(v3 + 96))
  {
    v8 = (*(v3 + 80))(v5);
  }

  else
  {
    v8 = *(v3 + 80);
  }

  v9 = *(v3 + 104);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  __swift_project_boxed_opaque_existential_1((v3 + 40), v10);
  v12 = (*(v11 + 8))(v6, v10, v11);
  v15 = sub_21698EFF8(v6, v12, v13, v14);
  v17 = v16;
  v18 = sub_21698EE54();
  v19 = *(v3 + 64);
  v20 = *(v3 + 72);
  __swift_project_boxed_opaque_existential_1((v3 + 40), v19);
  v21 = (*(v20 + 8))(v6, v19, v20);
  v24 = qword_21702B3A8[v6];
  if (v23 >> 6)
  {
    if (v23 >> 6 == 1)
    {
      if (v22)
      {
        OUTLINED_FUNCTION_5_42();
        if (v31)
        {
          v32 = v26;
        }

        else
        {
          v27 = 0x4028000000000000;
          v25 = 0;
          v32 = 32;
        }

        if (v28 >= 5)
        {
          v33 = v27;
        }

        else
        {
          v33 = v30;
        }

        v34 = v15;
        if (v28 >= 5)
        {
          v15 = v25;
        }

        else
        {
          v15 = 0;
        }

        if (v28 >= 5)
        {
          v17 = v25;
        }

        else
        {
          v17 = 0;
        }

        if (v28 < 5)
        {
          v25 = 0;
          v32 = v29;
        }
      }

      else
      {
        v17 = 0;
        v25 = 0;
        v32 = 32;
        v33 = v21;
        v34 = v15;
        v15 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_54();
      if (v31 && (OUTLINED_FUNCTION_5_42(), v31))
      {
        v33 = v6;
        v32 = 0x80;
        v25 = 0x404F000000000000;
      }

      else
      {
        OUTLINED_FUNCTION_4_43();
        OUTLINED_FUNCTION_0_83();
      }

      v34 = 1;
    }
  }

  else if ((v23 & 1) != 0 && (OUTLINED_FUNCTION_2_54(), v31) && (OUTLINED_FUNCTION_5_42(), v31))
  {
    v32 = 0x80;
    v25 = 0x404F000000000000;
    v33 = 0x4024000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_2_54();
    if (v31 && (OUTLINED_FUNCTION_5_42(), v31))
    {
      v32 = 0x80;
      v25 = 0x404F000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_4_43();
      OUTLINED_FUNCTION_0_83();
    }
  }

  *a2 = v34;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = v25;
  *(a2 + 32) = v32;
  *(a2 + 40) = v24;
  *(a2 + 48) = v33;
  *(a2 + 56) = v8;
  *(a2 + 64) = v7;
  *(a2 + 72) = v9;
  *(a2 + 80) = v7;
  *(a2 + 88) = v18;
}

void sub_2169495E4(uint64_t a2@<X8>, double d0_0@<D0>)
{
  v5 = *(v3 + 48);
  v6 = &qword_21702B3E8[sub_216A1204C(d0_0)];
  if (!*(v3 + 32))
  {
    v6 = v3 + 3;
  }

  v7 = *v6;
  if (v5)
  {
    v8 = 64;
  }

  else
  {
    v8 = 32;
  }

  v9 = (v5 & 1) == 0;
  v10 = *v3;
  if (*(v3 + 16))
  {
    v11 = *v6;
  }

  else
  {
    v11 = v3[1];
  }

  v12 = v3[5];
  v13 = sub_21698EE54();
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v7;
  *(a2 + 72) = v12;
  *(a2 + 80) = v11;
  *(a2 + 88) = v13;
}

void sub_2169496E4(uint64_t a2@<X8>, double a3@<D1>, double a4@<D2>)
{
  v7 = sub_21698EE54();
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 32;
  *(a2 + 40) = 0;
  *(a2 + 48) = a3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = a4;
  *(a2 + 80) = 0;
  *(a2 + 88) = v7;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_216949894(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t sub_2169498D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_216949948(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216949A24()
{
  result = qword_27CABD820;
  if (!qword_27CABD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD820);
  }

  return result;
}

id sub_216949A80(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_217005F94();
  v6 = [v4 initWithData_];

  sub_21677A524(a1, a2);
  return v6;
}

id sub_216949AF8()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

void sub_216949B30()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v55 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA68, &qword_21702B618);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = sub_21700CA14();
  OUTLINED_FUNCTION_1();
  v53 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_217007B94();
  OUTLINED_FUNCTION_1();
  v54 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v23 = type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_1_68((v0 + v23[8]));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  MEMORY[0x21CE9BEE0](&v56, v24);
  if (v56 != 1)
  {
    goto LABEL_4;
  }

  v25 = [v4 presentedViewController];
  if (v25)
  {

LABEL_4:
    OUTLINED_FUNCTION_26();
    return;
  }

  v52 = v4;
  OUTLINED_FUNCTION_1_68((v0 + v23[6]));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA70, &qword_21702B620);
  MEMORY[0x21CE9BEE0](&v56, v26);
  if (!v56)
  {
    v37 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
    [v37 setSourceType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA88, &unk_21702B630);
    sub_217009C24();
    v38 = v57;
    [v37 setDelegate_];

    [v37 setAllowsEditing_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_217013DA0;
    sub_217007B84();
    v40 = sub_217007B54();
    v42 = v41;
    (*(v54 + 8))(v22, v17);
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    v43 = sub_21700E804();

    [v37 setMediaTypes_];

    v44 = *(v1 + v23[9]);
    if (v44)
    {
      sub_21694A1D8(v44);
    }

    OUTLINED_FUNCTION_13_24(v52, sel_presentViewController_animated_completion_, v37);

    goto LABEL_4;
  }

  if (v56 == 1)
  {
    v27 = [v52 view];
    if (v27)
    {
      v28 = v27;
      v29 = [objc_opt_self() clearColor];
      [v28 setBackgroundColor_];

      v30 = [objc_opt_self() sharedPhotoLibrary];
      sub_21700C9F4();
      sub_21700C9A4();
      v31 = sub_21700C9B4();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v31);
      sub_21700CA04();
      sub_216685F4C(0, &qword_27CABDA90, 0x277CD9D78);
      v32 = v53;
      (*(v53 + 16))(v13, v16, v9);
      v33 = sub_21700F014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA88, &unk_21702B630);
      sub_217009C24();
      sub_21694CFA0(&qword_27CABDA98, type metadata accessor for ImagePicker.Coordinator, &unk_21702B5DC);
      sub_21700F024();
      v34 = [v33 presentationController];
      if (v34)
      {
        v35 = v34;
        sub_217009C24();
        v36 = v57;
        [v35 setDelegate_];
      }

      OUTLINED_FUNCTION_13_24(v52, sel_presentViewController_animated_completion_, v33);

      (*(v32 + 8))(v16, v9);
      goto LABEL_4;
    }

    __break(1u);
  }

  else
  {
    v45 = v52;
    v46 = [v52 view];
    if (v46)
    {
      v47 = v46;
      v48 = [objc_opt_self() clearColor];
      [v47 setBackgroundColor_];

      sub_216685F4C(0, &qword_27CABDA78, 0x277D75458);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA80, &qword_21702B628);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_217013DA0;
      sub_217007B84();
      v50 = sub_21694A48C(v49, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA88, &unk_21702B630);
      sub_217009C24();
      v51 = v57;
      [v50 setDelegate_];

      [v50 _setAutomaticallyDismissesAfterCompletion_];
      OUTLINED_FUNCTION_13_24(v45, sel_presentViewController_animated_completion_, v50);

      goto LABEL_4;
    }
  }

  __break(1u);
}

void sub_21694A1D8(uint64_t a1)
{
  v3 = sub_21694D268(v1);
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  sub_21700DF14();
  v8 = 0;
  while (1)
  {
    v9 = v3;
    if (!v6)
    {
      break;
    }

    v10 = v6;
LABEL_10:
    v3 = 0;
    v6 = (v10 - 1) & v10;
    if (v9)
    {
      v12 = __clz(__rbit64(v10)) | (v8 << 6);
      v13 = *(*(a1 + 56) + v12);
      v14 = *(*(a1 + 48) + 16 * v12 + 8);
      *&v29 = *(*(a1 + 48) + 16 * v12);
      *(&v29 + 1) = v14;
      sub_21700DF14();
      sub_21700F364();
      v30 = MEMORY[0x277D839B0];
      LOBYTE(v29) = v13;
      sub_2166EF9C4(&v29, v28);
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v9;
      v15 = sub_216E68120(v31);
      if (__OFADD__(v9[2], (v16 & 1) == 0))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        sub_21700F824();
        __break(1u);
        return;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1C0, &unk_21702B640);
      if (sub_21700F554())
      {
        v19 = sub_216E68120(v31);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_26;
        }

        v17 = v19;
      }

      v3 = v9;
      if (v18)
      {
        v21 = (v9[7] + 32 * v17);
        __swift_destroy_boxed_opaque_existential_1Tm((v27[7] + 32 * v17));
        sub_2166EF9C4(v28, v21);
        sub_216788110(v31);
      }

      else
      {
        v9[(v17 >> 6) + 8] |= 1 << v17;
        sub_216788294(v31, v9[6] + 40 * v17);
        sub_2166EF9C4(v28, (v9[7] + 32 * v17));
        sub_216788110(v31);
        v22 = v9[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_25;
        }

        v9[2] = v24;
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v7)
    {
      break;
    }

    v10 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v25 = sub_21700E344();
  }

  else
  {
    v25 = 0;
  }

  [v26 _setProperties_];
}

id sub_21694A48C(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_217007B94();
  v4 = sub_21700E804();

  v5 = [v3 initForOpeningContentTypes:v4 asCopy:a2 & 1];

  return v5;
}

id sub_21694A50C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_21694CE00(a1, &v1[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker]);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ImagePicker.Coordinator(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_21694CF44(a1);
  return v5;
}

void sub_21694A590()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  sub_2169352B0();
  if (v54)
  {
    sub_2166EF9C4(&v52, &v55);
  }

  else
  {
    sub_2169352B0();
    if (v54)
    {
      sub_216697664(&v52, &unk_27CABF7A0, &unk_217014D20);
    }
  }

  if (!*(&v56 + 1))
  {
    sub_216697664(&v55, &unk_27CABF7A0, &unk_217014D20);
LABEL_11:
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    sub_21700F3B4();
    MEMORY[0x21CE9F490](0xD00000000000002ALL, 0x8000000217084E70);
    type metadata accessor for InfoKey(0);
    sub_21694CFA0(&qword_27CAB6800, type metadata accessor for InfoKey, &unk_217013984);
    v21 = sub_21700E364();
    MEMORY[0x21CE9F490](v21);

    MEMORY[0x21CE9F490](0xD000000000000011, 0x8000000217084EA0);
    v22 = *(&v55 + 1);
    v23 = v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler;
    v24 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler);
    if (v24)
    {
      v25 = v55;
      v26 = *(v23 + 8);
      sub_21694D2D4();
      v27 = swift_allocError();
      *v28 = v25;
      v28[1] = v22;

      v24(v27, 1);
      sub_21667E91C(v24, v26);
    }

    else
    {
    }

    goto LABEL_25;
  }

  v10 = sub_216685F4C(0, &qword_280E29B40, 0x277D755B8);
  if ((OUTLINED_FUNCTION_8_36(v10) & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = v52;
  sub_2169352B0();
  if (!*(&v56 + 1))
  {
    sub_216697664(&v55, &unk_27CABF7A0, &unk_217014D20);
    goto LABEL_15;
  }

  v12 = sub_216685F4C(0, &qword_27CABDAE8, 0x277CCAE60);
  if ((OUTLINED_FUNCTION_8_36(v12) & 1) == 0)
  {
LABEL_15:
    v19 = 0uLL;
    v18 = 1;
    v20 = 0uLL;
    goto LABEL_16;
  }

  v13 = v52;
  [v52 CGRectValue];
  v48 = v14;
  v49 = v15;
  v47 = v16;
  v50 = v17;

  *&v20 = v47;
  *&v19 = v48;
  v18 = 0;
  *(&v19 + 1) = v49;
  *(&v20 + 1) = v50;
LABEL_16:
  v55 = v19;
  v56 = v20;
  v57 = v18;
  v29 = sub_21694AA9C(&v55);

  v30 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler);
  if (v30)
  {
    v31 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler + 8);

    v30(v29, 0);
    sub_21667E91C(v30, v31);
  }

  v32 = OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker;
  sub_21694CE00(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v9);
  OUTLINED_FUNCTION_4_44();
  *&v52 = v33;
  *(&v52 + 1) = v34;
  v53 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA70, &qword_21702B620);
  MEMORY[0x21CE9BEE0](&v51, v36);
  v37 = v51;
  sub_21694CF44(v9);
  if ((v37 - 1) > 1)
  {
    sub_21694CE00(v1 + v32, v6);
    OUTLINED_FUNCTION_4_44();
    *&v52 = v44;
    *(&v52 + 1) = v45;
    v53 = v46;
    v51 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
    sub_21700B0D4();
    OUTLINED_FUNCTION_7_39(v3, sel_dismissViewControllerAnimated_completion_);
  }

  else
  {
    v38 = [v3 presentingViewController];
    if (!v38 || (v39 = v38, v40 = [v38 presentingViewController], v39, !v40))
    {

      goto LABEL_25;
    }

    sub_21694CE00(v1 + v32, v6);
    OUTLINED_FUNCTION_4_44();
    *&v52 = v41;
    *(&v52 + 1) = v42;
    v53 = v43;
    v51 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
    sub_21700B0D4();
    OUTLINED_FUNCTION_7_39(v40, sel_dismissViewControllerAnimated_completion_);
  }

  sub_21694CF44(v6);
LABEL_25:
  OUTLINED_FUNCTION_26();
}

id sub_21694AA9C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((sub_217006654() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = sub_21694CFE8()) == 0)
  {

    return v7;
  }

  return result;
}

void sub_21694AC38()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = type metadata accessor for ImagePicker(v2);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = [v0 presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = v10;
        v14 = *v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_217013DA0;
        *(v15 + 32) = v14;
        *(v15 + 40) = v12;
        sub_21700DF14();
        v16 = sub_21700E804();

        [v13 deselectAssetsWithIdentifiers_];

        *v11 = 0;
        v11[1] = 0;

        [v13 setModalInPresentation_];
      }
    }
  }

  sub_21694CE00(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v7);
  OUTLINED_FUNCTION_1_68((v7 + *(v3 + 32)));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  OUTLINED_FUNCTION_10_34(v17);
  OUTLINED_FUNCTION_7_39(v0, sel_dismissViewControllerAnimated_completion_);
  sub_21694CF44(v7);
  OUTLINED_FUNCTION_26();
}

void sub_21694AE50()
{
  OUTLINED_FUNCTION_49();
  v46 = v0;
  v47 = v1;
  v3 = v2;
  v4 = type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = sub_217007B94();
  OUTLINED_FUNCTION_1();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v44 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAD0, &unk_21702B650);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_21700C9E4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v24 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v40 - v26;
  sub_216CE0BFC(v3);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_216697664(v17, &unk_27CABDAD0, &unk_21702B650);
    v28 = v46;
    v29 = &v46[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
    *v29 = 0;
    *(v29 + 1) = 0;

    sub_21694CE00(&v28[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker], v8);
    OUTLINED_FUNCTION_1_68((v8 + *(v4 + 32)));
    v48 = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
    OUTLINED_FUNCTION_10_34(v30);
    OUTLINED_FUNCTION_7_39(v47, sel_dismissViewControllerAnimated_completion_);
    sub_21694CF44(v8);
  }

  else
  {
    v41 = *(v20 + 32);
    v41(v27, v17, v18);
    v43 = sub_21700C9C4();
    v31 = v44;
    sub_217007B84();
    (*(v20 + 16))(v24, v27, v18);
    v32 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v33 = swift_allocObject();
    v42 = v9;
    v35 = v46;
    v34 = v47;
    *(v33 + 16) = v46;
    *(v33 + 24) = v34;
    v41((v33 + v32), v24, v18);
    v36 = v35;
    v37 = v34;
    v38 = v43;
    v39 = sub_21700EDB4();

    (*(v45 + 8))(v31, v42);
    (*(v20 + 8))(v27, v18);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_21694B1D0(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v33 = a5;
  v31 = a2;
  v11 = sub_21700C9E4();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  sub_21700EA34();
  v18 = a1;
  sub_21677A3F0(a1, a2);
  v19 = a3;
  v20 = a3;
  v21 = a4;
  v22 = v33;
  v23 = sub_21700EA24();
  v24 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 2) = v23;
  *(v25 + 3) = v26;
  v28 = v31;
  v27 = v32;
  *(v25 + 4) = v18;
  *(v25 + 5) = v28;
  *(v25 + 6) = v19;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v12 + 32))(&v25[v24], &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  sub_21677BBA0();
}

uint64_t sub_21694B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[12] = type metadata accessor for ImagePicker(0);
  v8[13] = swift_task_alloc();
  sub_21700EA34();
  v8[14] = sub_21700EA24();
  v10 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21694B4D8, v10, v9);
}

uint64_t sub_21694B4D8()
{
  v1 = *(v0 + 56);

  if (v1 >> 60 == 15)
  {
LABEL_9:
    v27 = *(v0 + 64);
    v28 = *(v0 + 72);
    sub_21700F3B4();

    *(v0 + 40) = v27;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDAE0, &unk_21701FD30);
    v30 = sub_21700E594();
    MEMORY[0x21CE9F490](v30);

    v31 = (v28 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
    *v31 = 0;
    v31[1] = 0;

    v32 = *(v28 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler);
    if (v32)
    {
      v33 = *(v28 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler + 8);
      sub_21694D2D4();
      v34 = swift_allocError();
      *v35 = 0xD00000000000002FLL;
      v35[1] = 0x8000000217084E40;

      v32(v34, 1);
      sub_21667E91C(v32, v33);
    }

    else
    {
    }

    v36 = *(v0 + 104);
    v37 = *(v0 + 80);
    sub_21694CE00(*(v0 + 72) + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v36);
    OUTLINED_FUNCTION_4_44();
    *(v0 + 16) = v38;
    *(v0 + 24) = v39;
    *(v0 + 32) = v40;
    *(v0 + 33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
    sub_21700B0D4();
    OUTLINED_FUNCTION_7_39(v37, sel_dismissViewControllerAnimated_completion_);
    sub_21694CF44(v36);
    goto LABEL_16;
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_216685F4C(0, &qword_280E29B40, 0x277D755B8);
  sub_21677A404(v2, v3);
  sub_21677A404(v2, v3);
  v4 = sub_216949A80(v2, v3);
  if (!v4)
  {
    sub_21677A510(*(v0 + 48), *(v0 + 56));
    goto LABEL_9;
  }

  v5 = v4;
  v6 = *(v0 + 72);
  v7 = sub_21700C9D4();
  v8 = (v6 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
  *v8 = v7;
  v8[1] = v9;

  v10 = UIImagePNGRepresentation(v5);
  if (v10)
  {
    v11 = v10;
    v12 = sub_217005FB4();
    v14 = v13;

    type metadata accessor for ImageEditingViewController();
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v16 = sub_21694B890();
    v20 = sub_21694D328(v12, v14, v15, v16, v17, v18, v19);
    if (v20)
    {
      v21 = v20;
      v22 = *(v0 + 96);
      v23 = *(v0 + 72);
      [v20 setDelegate_];
      [v21 setModalInPresentation_];
      if (*(v23 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker + *(v22 + 36)))
      {
        v24 = sub_21700DF14();
        sub_21694A1D8(v24);
      }

      v26 = *(v0 + 48);
      v25 = *(v0 + 56);
      OUTLINED_FUNCTION_13_24(*(v0 + 80), sel_presentViewController_animated_completion_, v21);
      [v21 becomeFirstResponder];
      sub_21677A510(v26, v25);
    }

    else
    {
      sub_21677A510(*(v0 + 48), *(v0 + 56));
    }

    sub_21677A524(v12, v14);
  }

  else
  {
    sub_21677A510(*(v0 + 48), *(v0 + 56));
  }

LABEL_16:

  v41 = *(v0 + 8);

  return v41();
}

double sub_21694B890()
{
  OUTLINED_FUNCTION_9_38();
  v1 = v0;
  OUTLINED_FUNCTION_9_38();
  v3 = v2;
  OUTLINED_FUNCTION_9_38();
  v5 = v4;
  OUTLINED_FUNCTION_9_38();
  v7 = v6;
  OUTLINED_FUNCTION_9_38();
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_9_38();
  v13 = (v9 - v12) * 0.5 + 0.0;
  v15 = (v11 - v14) * 0.5 + 0.0;
  if (v5 < v7)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  if (v5 < v7)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v13;
  }

  if (v3 >= v1)
  {
    v18 = v1;
  }

  else
  {
    v18 = v3;
  }

  v19 = v18;
  v25 = CGRectIntegral(*(&v16 - 1));
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGRectGetHeight(v26);
  return x;
}

void sub_21694B974()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v15 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  sub_216CE0C14(v3);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_216697664(v14, &qword_27CABA820, &unk_217018CE0);
LABEL_11:
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_21700F3B4();
    MEMORY[0x21CE9F490](0xD000000000000025, 0x8000000217084DF0);
    v45 = MEMORY[0x21CE9F660](v3, v15);
    MEMORY[0x21CE9F490](v45);

    MEMORY[0x21CE9F490](0xD000000000000014, 0x8000000217084E20);
    v46 = v61;
    v47 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler);
    if (v47)
    {
      v48 = v60;
      v49 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler + 8);
      sub_21694D2D4();
      v50 = swift_allocError();
      *v51 = v48;
      v51[1] = v46;

      v47(v50, 1);
      sub_21667E91C(v47, v49);
    }

    else
    {
    }

    sub_21694CE00(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v10);
    OUTLINED_FUNCTION_1_68((v10 + *(v6 + 32)));
    v59 = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
    OUTLINED_FUNCTION_10_34(v52);
    OUTLINED_FUNCTION_7_39(v5, sel_dismissViewControllerAnimated_completion_);
    sub_21694CF44(v10);
    goto LABEL_18;
  }

  (*(v17 + 32))(v21, v14, v15);
  sub_216685F4C(0, &qword_280E29B40, 0x277D755B8);
  v22 = sub_217005EA4();
  v24 = sub_21694BDEC(v22, v23);
  if (!v24)
  {
    v43 = OUTLINED_FUNCTION_5_43();
    v44(v43);
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v5 view];
  if (v26)
  {
    v27 = v26;
    [v26 endEditing_];

    v28 = UIImagePNGRepresentation(v25);
    if (v28)
    {
      v29 = v28;
      v58 = v5;
      v30 = sub_217005FB4();
      v32 = v31;

      v33 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
      v34 = sub_21694B890();
      v38 = sub_21694D328(v30, v32, v33, v34, v35, v36, v37);
      if (v38)
      {
        v39 = v38;
        [v38 setDelegate_];
        [v39 setModalInPresentation_];
        if (*(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
        {
          v40 = sub_21700DF14();
          sub_21694A1D8(v40);
        }

        OUTLINED_FUNCTION_13_24(v58, sel_presentViewController_animated_completion_, v39);

        sub_21677A524(v30, v32);
        v41 = OUTLINED_FUNCTION_5_43();
        v42(v41);
        goto LABEL_18;
      }

      v55 = OUTLINED_FUNCTION_5_43();
      v56(v55);
      sub_21677A524(v30, v32);
    }

    else
    {
      v53 = OUTLINED_FUNCTION_5_43();
      v54(v53);
    }

LABEL_18:
    OUTLINED_FUNCTION_26();
    return;
  }

  __break(1u);
}

id sub_21694BDEC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21700E4D4();

  v4 = [v2 initWithContentsOfFile_];

  return v4;
}

uint64_t sub_21694BEE0()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = type metadata accessor for ImagePicker(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  sub_21694CE00(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v5 - v4);
  OUTLINED_FUNCTION_4_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  sub_21700B0D4();
  OUTLINED_FUNCTION_7_39(v0, sel_dismissViewControllerAnimated_completion_);
  return sub_21694CF44(v6);
}

uint64_t sub_21694C01C()
{
  type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_4_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  return sub_21700B0D4();
}

uint64_t sub_21694C1D8(uint64_t a1)
{
  result = type metadata accessor for ImagePicker(319);
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

char *sub_21694C298()
{
  v1 = v0;
  v2 = type metadata accessor for ImagePicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21694CE00(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = objc_allocWithZone(type metadata accessor for ImagePicker.Coordinator(0));
  v6 = sub_21694A50C(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21694CE00(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_21694CE64(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = &v6[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler];
  v10 = *&v6[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler];
  v11 = *&v6[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler + 8];
  *v9 = sub_21694CEC8;
  v9[1] = v8;
  sub_21667E91C(v10, v11);
  return v6;
}

void *sub_21694C3CC(void *result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = result;
    v5 = type metadata accessor for ImagePicker(0);
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA60, &qword_21702B610);
    result = sub_21700B0D4();
    if (*(a3 + *(v5 + 28) + 8))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
      sub_21700B0D4();
    }
  }

  return result;
}

char *sub_21694C4E4@<X0>(char **a1@<X8>)
{
  result = sub_21694C298();
  *a1 = result;
  return result;
}

uint64_t sub_21694C50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21694CFA0(&unk_27CABDAB0, type metadata accessor for ImagePicker, &unk_21702B564);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21694C5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21694CFA0(&unk_27CABDAB0, type metadata accessor for ImagePicker, &unk_21702B564);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21694C634(uint64_t a1)
{
  sub_21694CFA0(&unk_27CABDAB0, type metadata accessor for ImagePicker, &unk_21702B564);
  sub_217009AF4();
  __break(1u);
}

id sub_21694C694(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v3);
}

id sub_21694C770(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id sub_21694C7E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_21700E4D4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageEditingViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_21694C8C8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_21694C970(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_21694C9F4(uint64_t a1)
{
  sub_21694CB7C(319);
  if (v1 <= 0x3F)
  {
    sub_21694CC20(319, &unk_27CABDA00, qword_27CABD310, &qword_21702A090, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_21694CBD4(319, &unk_27CABDA10, &type metadata for ImagePicker.SourceType);
      if (v3 <= 0x3F)
      {
        sub_21694CC20(319, &qword_280E2A4F8, &unk_27CABDA20, &unk_2170187A0, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21694CBD4(319, &qword_27CAB9110, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_21694CC20(319, &qword_27CABDA30, &unk_27CABDA38, &qword_21702B498, MEMORY[0x277D83D88]);
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

void sub_21694CB7C(uint64_t a1)
{
  if (!qword_280E2B458)
  {
    sub_217008424();
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B458);
    }
  }
}

void sub_21694CBD4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21700B104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21694CC20(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ImagePicker.SourceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21694CD64()
{
  result = qword_27CABDA48;
  if (!qword_27CABDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDA48);
  }

  return result;
}

uint64_t sub_21694CE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21694CE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21694CEC8(void *a1, char a2)
{
  v5 = type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_36(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_21694C3CC(a1, a2 & 1, v7);
}

uint64_t sub_21694CF44(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21694CFA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_21694CFE8()
{
  v1 = v0;
  v2 = v0;
  [v2 size];
  v4 = v3;
  v6 = v5;
  if (sub_217006654())
  {
    if (v6 >= v4)
    {
      v8 = round((v6 - v4) * 0.5);
      v7 = 0.0;
      v9 = v4;
      v10 = v4;
    }

    else
    {
      v7 = round((v4 - v6) * 0.5);
      v8 = 0.0;
      v9 = v6;
      v10 = v6;
    }

    v1 = sub_21694D0BC(v7, v8, v9, v10);
  }

  return v1;
}

id sub_21694D0BC(double a1, double a2, double a3, double a4)
{
  v6 = v5;
  if (![v5 CGImage])
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for CGSize(v11);
  if ((sub_217006654() & 1) == 0)
  {
    goto LABEL_7;
  }

  [v5 scale];
  v13 = v12;
  v14 = sub_217006654();
  v15 = v13 * a1;
  v16 = v13 * a2;
  v17 = v13 * a3;
  v18 = v13 * a4;
  if ((v14 & 1) == 0)
  {
    v18 = a4;
    v17 = a3;
    v16 = a2;
    v15 = a1;
  }

  v19 = CGImageCreateWithImageInRect(v4, *&v15);
  if (!v19)
  {
LABEL_7:

    return 0;
  }

  v20 = v19;
  v21 = [v6 imageOrientation];
  v22 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v20 scale:v21 orientation:v13];

  return v22;
}

uint64_t sub_21694D228()
{
  result = sub_21700E384();
  qword_27CB22938 = result;
  return result;
}

uint64_t sub_21694D268(void *a1)
{
  v1 = [a1 _properties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E354();

  return v3;
}

unint64_t sub_21694D2D4()
{
  result = qword_27CABDAC0;
  if (!qword_27CABDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDAC0);
  }

  return result;
}

id sub_21694D328(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v12 = sub_217005F94();
  v13 = [a3 _initWithSourceImageData_cropRect_];

  return v13;
}

uint64_t sub_21694D3A0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = sub_21700C9E4();
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21694B1D0(a1, a2, a3, v9, v10, v11);
}

uint64_t sub_21694D428()
{
  OUTLINED_FUNCTION_31_0();
  v3 = sub_21700C9E4();
  OUTLINED_FUNCTION_36(v3);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2166DFAC0;

  return sub_21694B400(v0, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21694D558(uint64_t a1)
{
  v2 = sub_21694D698(a1);
  if (v2 != sub_21694D698(v2))
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_21700DF14();
  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_11:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_216788294(*(v3 + 48) + 40 * (v11 | (v10 << 6)), v13);
    v12 = sub_21694D78C(v13);
    result = sub_216788110(v13);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return 1;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21694D6C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(v2 + 16) + 16) && (sub_216E68120(a1), (v4 & 1) != 0))
  {
    swift_endAccess();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_21694D78C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_84(a1);
  if (*(*(v1 + 16) + 16))
  {
    sub_21700DF14();
    sub_216E68120(a1);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21694D7EC()
{

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_21694D824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v11 = a1;
  sub_21700D314();
  swift_beginAccess();
  v8 = swift_unknownObjectRetain();
  sub_21694D8C0(v8, v10, (a2 + 16), a3, a4);
  sub_216788110(v10);
  return swift_endAccess();
}

unint64_t sub_21694D8C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a3;
  result = sub_21694D93C(a1, a2, isUniquelyReferenced_nonNull_native, &v12, a4, a5);
  *a3 = v12;
  return result;
}

unint64_t sub_21694D93C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = sub_216E68120(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDAF0, &unk_21702B720);
  if ((sub_21700F554() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_216E68120(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *a4;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_216788294(a2, v21);
    return sub_21694DA90(v14, v21, a1, v18, a5, a6);
  }
}

unint64_t sub_21694DA90(unint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = a4[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a4[7] + 16 * result);
  *v8 = a3;
  v8[1] = a6;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

char *sub_21694DAEC()
{
  v3 = *(v0 + 32);
  v1 = *&v3[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB18, &unk_21702B8A0);
  sub_217009A04();
  [v1 addTarget:v4 action:sel_scopeChanged_ forControlEvents:4096];

  return v3;
}

id sub_21694DB8C()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v13 = *v0;
  v14 = v5;
  LOBYTE(v15) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB10, &qword_21702B898);
  MEMORY[0x21CE9BEE0](&v17, v8);
  LOBYTE(v13) = v17;
  sub_21694DCFC(&v13, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB18, &unk_21702B8A0);
  sub_217009A14();
  sub_2169274D4();
  sub_217009104();
  v9 = (*(v2 + 8))(v4, v1);
  *&v9.f64[0] = v13;
  v10.f64[0] = v15;
  return sub_21694E114(v9, v14, v10, v16);
}

uint64_t sub_21694DCFC(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl);
  result = [v5 numberOfSegments];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v45 = v4;
  if (result)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = [v5 titleForSegmentAtIndex_];
      if (v10)
      {
        v11 = v10;
        v12 = sub_21700E514();
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v9 = v17;
        }

        v15 = *(v9 + 16);
        if (v15 >= *(v9 + 24) >> 1)
        {
          sub_21693776C();
          v9 = v18;
        }

        *(v9 + 16) = v15 + 1;
        v16 = v9 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v19 = *(a2 + 16);
  v46 = a2;
  v47 = v19;
  if (v19)
  {
    v48 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v22 = (a2 + 32);
    v23 = v19;
    do
    {
      if (*v22)
      {
        if (qword_280E29B20 != -1)
        {
          OUTLINED_FUNCTION_0_85();
          swift_once();
        }

        v24 = qword_280E739D0;
        v44 = 0xE000000000000000;
        v25 = 0x8000000217084FC0;
        v26 = 0xD000000000000015;
      }

      else
      {
        if (qword_280E29B20 != -1)
        {
          OUTLINED_FUNCTION_0_85();
          swift_once();
        }

        v24 = qword_280E739D0;
        v44 = 0xE000000000000000;
        v26 = 0xD000000000000018;
        v25 = 0x8000000217084FE0;
      }

      OUTLINED_FUNCTION_1_69(v26, v25, v20, v21, v24);
      v27 = sub_21700E724();
      v29 = v28;
      v30 = *(v48 + 16);
      if (v30 >= *(v48 + 24) >> 1)
      {
        sub_2166F4258();
      }

      *(v48 + 16) = v30 + 1;
      v31 = v48 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v29;
      ++v22;
      --v23;
    }

    while (v23);
  }

  sub_216E20CEC();
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    [v5 removeAllSegments];
    if (v47)
    {
      for (i = 0; i != v47; ++i)
      {
        if (*(v46 + 32 + i))
        {
          if (qword_280E29B20 != -1)
          {
            OUTLINED_FUNCTION_0_85();
            swift_once();
          }

          v37 = qword_280E739D0;
          v44 = 0xE000000000000000;
          v38 = 0x8000000217084FC0;
          v39 = 0xD000000000000015;
        }

        else
        {
          if (qword_280E29B20 != -1)
          {
            OUTLINED_FUNCTION_0_85();
            swift_once();
          }

          v37 = qword_280E739D0;
          v44 = 0xE000000000000000;
          v39 = 0xD000000000000018;
          v38 = 0x8000000217084FE0;
        }

        OUTLINED_FUNCTION_1_69(v39, v38, v34, v35, v37);
        v40 = sub_21700E724();
        sub_21694ED78(v40, v41, i, 0, v5);
      }
    }
  }

  result = sub_21694E81C(v45, v46);
  if (v42)
  {
    if (!v47)
    {
      return result;
    }

    v43 = 0;
  }

  else
  {
    v43 = result;
  }

  return [v5 setSelectedSegmentIndex_];
}

id sub_21694E114(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets);
  v6 = *(v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets);
  v7 = *(v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets + 8);
  v8 = *(v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets + 16);
  v9 = *(v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets + 24);
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  *&a1.f64[0] = v6;
  *&a3.f64[0] = v8;
  return sub_21694EA64(a1, v7, a3, v9);
}

id sub_21694E144()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = type metadata accessor for UIKitSearchScopeBar.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar11Coordinator_parent];
  *v9 = v1;
  *(v9 + 1) = v2;
  v9[16] = v3;
  *(v9 + 3) = v4;
  *(v9 + 4) = v5;
  *(v9 + 5) = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  sub_21700DF14();
  v10 = v5;

  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_21694E1F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    [*(a5 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl) intrinsicContentSize];
    return v5;
  }

  else
  {
    v6 = a1;
    v8 = *(a5 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl);
    [v8 intrinsicContentSize];
    [v8 sizeThatFits_];
  }

  return v6;
}

uint64_t sub_21694E2D4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-v6];
  result = [a1 selectedSegmentIndex];
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = &v2[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar11Coordinator_parent];
    v10 = *&v2[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar11Coordinator_parent + 24];
    if (result < *(v10 + 16))
    {
      v11 = *(v10 + result + 32);
      v12 = *v9;
      v13 = *(v9 + 1);
      v14 = v9[16];
      v21 = v12;
      v22 = v13;
      v23 = v14;
      v20[7] = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB10, &qword_21702B898);
      sub_21700B0D4();

      v15 = sub_21700EA74();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
      sub_21700EA34();
      v16 = v2;
      v17 = sub_21700EA24();
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D85700];
      *(v18 + 16) = v17;
      *(v18 + 24) = v19;
      *(v18 + 32) = v16;
      *(v18 + 40) = v11;
      sub_21677BBA0();
    }
  }

  return result;
}

uint64_t sub_21694E46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_21700EA34();
  *(v5 + 24) = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21694E508, v7, v6);
}

uint64_t sub_21694E508()
{

  sub_216C986DC();

  v1 = *(v0 + 8);

  return v1();
}

id sub_21694E61C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitSearchScopeBar.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21694E6DC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets];
  v5 = *(MEMORY[0x277D768C8] + 16);
  *v4 = *MEMORY[0x277D768C8];
  *(v4 + 1) = v5;
  *&v1[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl] = a1;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 addSubview_];

  return v7;
}

void sub_21694E78C()
{
  v1 = (v0 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets);
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v2;
  sub_21700F584();
  __break(1u);
}

uint64_t sub_21694E81C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x7972617262696CLL;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  while (1)
  {
    v6 = *(v4 + v3) ? 0x7972617262696CLL : 0x676F6C61746163;
    if (v6 == v5)
    {
      break;
    }

    v7 = sub_21700F7D4();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  swift_bridgeObjectRelease_n();
  return v3;
}

id sub_21694E900()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl];
  [v0 bounds];
  return [v1 setFrame_];
}

id sub_21694EA64(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets], a1), vceqq_f64(*&v4[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets + 16], a3)))) & 1) == 0)
  {
    return [v4 setNeedsLayout];
  }

  return result;
}

uint64_t sub_21694EB20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21694EB60(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_21694EBCC@<X0>(void *a1@<X8>)
{
  result = sub_21694E144();
  *a1 = result;
  return result;
}

uint64_t sub_21694EC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21694EDF4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21694EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21694EDF4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21694ECF8(uint64_t a1)
{
  sub_21694EDF4();
  sub_2170094F4();
  __break(1u);
}

unint64_t sub_21694ED24()
{
  result = qword_280E3CD98;
  if (!qword_280E3CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3CD98);
  }

  return result;
}

void sub_21694ED78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_21700E4D4();

  [a5 insertSegmentWithTitle:v8 atIndex:a3 animated:a4 & 1];
}

unint64_t sub_21694EDF4()
{
  result = qword_280E3CDA0[0];
  if (!qword_280E3CDA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3CDA0);
  }

  return result;
}

uint64_t sub_21694EE64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2166DFAC0;

  return sub_21694E46C(a1, v4, v5, v6, v7);
}

uint64_t sub_21694EF28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return (*(v7 + 144))(v3, a2, a3, v6, v7);
}

uint64_t sub_21694EFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB20, &qword_21702B8C8);
  v4[32] = swift_task_alloc();
  v5 = sub_21700BA94();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21694F0EC, 0, 0);
}

uint64_t sub_21694F0EC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 232);
  type metadata accessor for PlaybackPresenter(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v3 = sub_21700BAB4();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  LOBYTE(v2) = sub_216C6D33C(v1);
  sub_21669987C(v1, &qword_27CAB7090, &qword_217015A60);
  if (v2)
  {

LABEL_5:
    v7 = *(v0 + 224);
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    goto LABEL_6;
  }

  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  sub_21694F584(*(v0 + 232), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    v6 = *(v0 + 256);

    sub_21669987C(v6, &qword_27CABDB20, &qword_21702B8C8);
    goto LABEL_5;
  }

  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  (*(v13 + 32))(v10, *(v0 + 256), v12);
  v35 = *(v13 + 16);
  v35(v11, v10, v12);
  v14 = *(v13 + 88);
  v15 = OUTLINED_FUNCTION_115();
  v16 = v14(v15);
  v17 = *MEMORY[0x277D2AED8];
  v18 = OUTLINED_FUNCTION_115();
  v36 = v19;
  (v19)(v18);
  if (v16 == v17)
  {
    v20 = *(v0 + 264);
    v21 = *(v0 + 224);
    v22 = *(v0 + 296);
    v21[3] = type metadata accessor for AgeVerificationOnboardingAction(0);
    v21[4] = sub_21695114C(&qword_27CABA7D8, type metadata accessor for AgeVerificationOnboardingAction, &unk_2170144B0);
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_21700D234();

    v36(v22, v20);
    goto LABEL_6;
  }

  v35(*(v0 + 280), *(v0 + 296), *(v0 + 264));
  v23 = OUTLINED_FUNCTION_115();
  v24 = v14(v23);
  v25 = *MEMORY[0x277D2AED0];
  v26 = OUTLINED_FUNCTION_115();
  (v36)(v26);
  if (v24 == v25)
  {
    sub_21692E9E8(*(v0 + 248), v0 + 176);
    if (*(v0 + 200))
    {
      v27 = *(v0 + 224);
      v36(*(v0 + 296), *(v0 + 264));

      sub_2166A0F18((v0 + 176), v0 + 136);
      v28 = (v0 + 136);
LABEL_17:
      sub_2166A0F18(v28, v27);
      goto LABEL_6;
    }

    sub_21669987C(v0 + 176, &qword_27CAB6DB0, &qword_217016C00);
  }

  sub_21694F740(*(v0 + 296), (v0 + 16));
  v29 = *(v0 + 32);
  v27 = *(v0 + 224);
  if (v29)
  {
    v30 = type metadata accessor for PresentAlertAction(0);
    *(v0 + 120) = v30;
    *(v0 + 128) = sub_21695114C(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_21700D234();

    v32 = boxed_opaque_existential_1 + *(v30 + 20);
    *v32 = *(v0 + 16);
    *(v32 + 2) = v29;
    *(v32 + 24) = *(v0 + 40);
    v33 = OUTLINED_FUNCTION_115();
    (v36)(v33);
    sub_2166A0F18((v0 + 96), v0 + 56);
    v28 = (v0 + 56);
    goto LABEL_17;
  }

  v34 = OUTLINED_FUNCTION_115();
  (v36)(v34);
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
LABEL_6:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21694F584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700BAB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D2AE90])
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_21700BA94();
    (*(*(v10 - 8) + 32))(a2, v8, v10);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  else
  {
    v12 = v9;
    v13 = *MEMORY[0x277D2AEE0];
    v14 = sub_21700BA94();
    result = __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
    if (v12 != v13)
    {
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

void sub_21694F740(uint64_t a1@<X0>, void *a2@<X8>)
{
  v164 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v3 - 8);
  v162 = &v153 - v4;
  v163 = sub_217006224();
  v161 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v160 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v153 - v10;
  v12 = sub_217005EF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v153 - v17;
  v19 = sub_21700BA94();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 != *MEMORY[0x277D2AEC0])
  {
    v29 = v24;
    if (v24 == *MEMORY[0x277D2AEB0])
    {
      v28 = 196;
    }

    else
    {
      if (v24 == *MEMORY[0x277D2AEB8])
      {
        sub_21695052C(__src);
LABEL_19:
        v51 = __src[0];
        v52 = __src[1];
        v53 = __src[2];
        v54 = __src[3];
        v55 = __src[4];
        goto LABEL_20;
      }

      if (v24 == *MEMORY[0x277D2AEA8])
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
LABEL_20:
        v91 = v164;
        *v164 = v51;
        v91[1] = v52;
        v91[2] = v53;
        v91[3] = v54;
        v91[4] = v55;
        return;
      }

      if (v24 == *MEMORY[0x277D2AE98])
      {
        sub_217005ED4();
        if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
        {
          sub_21669987C(v11, &qword_27CABA820, &unk_217018CE0);
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
          v92 = (_s6ActionVMa(0) - 8);
          v93 = (*(*v92 + 80) + 32) & ~*(*v92 + 80);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_217013DA0;
          v159 = v94;
          v95 = v94 + v93;
          v96 = sub_216983738(181);
          v157 = v97;
          v158 = v96;
          v98 = v160;
          sub_217006214();
          v156 = sub_2170061F4();
          v100 = v99;
          v101 = *(v161 + 8);
          v102 = v163;
          v101(v98, v163);
          v103 = sub_217007F04();
          v104 = v162;
          __swift_storeEnumTagSinglePayload(v162, 1, 1, v103);
          sub_217006214();
          v105 = sub_2170061F4();
          v107 = v106;
          v101(v98, v102);
          v108 = (v95 + v92[8]);
          *v108 = v105;
          v108[1] = v107;
          *v95 = v156;
          *(v95 + 8) = v100;
          v109 = v157;
          *(v95 + 16) = v158;
          *(v95 + 24) = v109;
          *(v95 + 32) = 0u;
          *(v95 + 48) = 0u;
          *(v95 + 64) = 0;
          sub_2168D36D4(v104, v95 + v92[7]);
        }

        else
        {
          v158 = v13;
          v110 = *(v13 + 32);
          v111 = v18;
          v155 = v18;
          v110(v18, v11, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
          v157 = v12;
          v112 = (_s6ActionVMa(0) - 8);
          v113 = *v112;
          v156 = *(*v112 + 72);
          v114 = (*(v113 + 80) + 32) & ~*(v113 + 80);
          v115 = swift_allocObject();
          *(v115 + 16) = xmmword_217013D90;
          v159 = v115;
          v116 = (v115 + v114);
          v117 = sub_216983738(295);
          v119 = v118;
          v120 = type metadata accessor for OpenExternalURLAction(0);
          __src[7] = v120;
          __src[8] = sub_21695114C(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction, &unk_2170319D8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&__src[4]);
          (*(v13 + 16))(boxed_opaque_existential_1, v111, v12);
          sub_21700D234();
          *(boxed_opaque_existential_1 + *(v120 + 20)) = 1;
          v122 = v160;
          sub_217006214();
          v123 = sub_2170061F4();
          v125 = v124;
          v126 = *(v161 + 8);
          v127 = v163;
          v126(v122, v163);
          __src[0] = v123;
          __src[1] = v125;
          __src[2] = v117;
          __src[3] = v119;
          v128 = sub_217007F04();
          v129 = v162;
          __swift_storeEnumTagSinglePayload(v162, 1, 1, v128);
          sub_217006214();
          v130 = sub_2170061F4();
          v132 = v131;
          v126(v122, v127);
          v133 = &v116[v112[8]];
          *v133 = v130;
          v133[1] = v132;
          memcpy(v116, __src, 0x48uLL);
          sub_2168D36D4(v129, &v116[v112[7]]);
          v134 = &v116[v156];
          v161 = sub_216983738(181);
          v156 = v135;
          sub_217006214();
          v136 = sub_2170061F4();
          v154 = v137;
          v126(v122, v127);
          __swift_storeEnumTagSinglePayload(v129, 1, 1, v128);
          sub_217006214();
          v138 = sub_2170061F4();
          v140 = v139;
          v126(v122, v127);
          v141 = &v134[v112[8]];
          *v141 = v138;
          v141[1] = v140;
          v142 = v154;
          *v134 = v136;
          *(v134 + 1) = v142;
          v143 = v156;
          *(v134 + 2) = v161;
          *(v134 + 3) = v143;
          *(v134 + 2) = 0u;
          *(v134 + 3) = 0u;
          *(v134 + 8) = 0;
          sub_2168D36D4(v129, &v134[v112[7]]);
          (*(v158 + 8))(v155, v157);
        }

        v144 = sub_216983738(198);
        v146 = v145;
        v89 = sub_216983738(197);
        v90 = v147;
        v30 = v144;
        v31 = v146;
        v32 = v159;
        goto LABEL_18;
      }

      if (v24 != *MEMORY[0x277D2AED0])
      {
        if (v24 == *MEMORY[0x277D2AEC8])
        {
          v148 = sub_216983738(201);
          v150 = v149;
          v89 = sub_216983738(200);
          v90 = v151;
          v32 = MEMORY[0x277D84F90];
          v30 = v148;
          v31 = v150;
          goto LABEL_18;
        }

        v152 = *MEMORY[0x277D2AEA0];
        v30 = sub_216983738(195);
        if (v29 != v152)
        {
          sub_216933384(v30, v31, MEMORY[0x277D84F90], 0, 0, __src);
          v51 = __src[0];
          v52 = __src[1];
          v53 = __src[2];
          v54 = __src[3];
          v55 = __src[4];
          (*(v20 + 8))(v23, v19);
          goto LABEL_20;
        }

        goto LABEL_8;
      }

      v28 = 199;
    }

LABEL_7:
    v30 = sub_216983738(v28);
LABEL_8:
    v32 = MEMORY[0x277D84F90];
LABEL_17:
    v89 = 0;
    v90 = 0;
LABEL_18:
    sub_216933384(v30, v31, v32, v89, v90, __src);
    goto LABEL_19;
  }

  v25 = MobileGestalt_get_current_device();
  if (v25)
  {
    v26 = v25;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (!wapiCapability)
    {
      sub_217005ED4();
      if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
      {
        sub_21669987C(v8, &qword_27CABA820, &unk_217018CE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
        v33 = (_s6ActionVMa(0) - 8);
        v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_217013DA0;
        v159 = v35;
        v36 = v35 + v34;
        v37 = sub_216983738(181);
        v157 = v38;
        v158 = v37;
        v39 = v163;
        v40 = v160;
        sub_217006214();
        v156 = sub_2170061F4();
        v42 = v41;
        v43 = *(v161 + 8);
        v43(v40, v39);
        v44 = sub_217007F04();
        v45 = v162;
        __swift_storeEnumTagSinglePayload(v162, 1, 1, v44);
        sub_217006214();
        v46 = sub_2170061F4();
        v48 = v47;
        v43(v40, v39);
        v49 = (v36 + v33[8]);
        *v49 = v46;
        v49[1] = v48;
        *v36 = v156;
        *(v36 + 8) = v42;
        v50 = v157;
        *(v36 + 16) = v158;
        *(v36 + 24) = v50;
        *(v36 + 32) = 0u;
        *(v36 + 48) = 0u;
        *(v36 + 64) = 0;
        sub_2168D36D4(v45, v36 + v33[7]);
      }

      else
      {
        v158 = v13;
        (*(v13 + 32))(v15, v8, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
        v157 = v12;
        v56 = (_s6ActionVMa(0) - 8);
        v57 = *v56;
        v156 = *(*v56 + 72);
        v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_217013D90;
        v159 = v59;
        v60 = (v59 + v58);
        v155 = sub_216983738(295);
        v62 = v61;
        v63 = type metadata accessor for OpenExternalURLAction(0);
        __src[7] = v63;
        __src[8] = sub_21695114C(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction, &unk_2170319D8);
        v64 = __swift_allocate_boxed_opaque_existential_1(&__src[4]);
        (*(v13 + 16))(v64, v15, v12);
        sub_21700D234();
        *(v64 + *(v63 + 20)) = 1;
        v65 = v160;
        sub_217006214();
        v66 = sub_2170061F4();
        v68 = v67;
        v69 = *(v161 + 8);
        v70 = v163;
        v69(v65, v163);
        __src[0] = v66;
        __src[1] = v68;
        __src[2] = v155;
        __src[3] = v62;
        v161 = sub_217007F04();
        v71 = v162;
        __swift_storeEnumTagSinglePayload(v162, 1, 1, v161);
        sub_217006214();
        v72 = sub_2170061F4();
        v74 = v73;
        v69(v65, v70);
        v75 = &v60[v56[8]];
        *v75 = v72;
        v75[1] = v74;
        memcpy(v60, __src, 0x48uLL);
        sub_2168D36D4(v71, &v60[v56[7]]);
        v76 = &v60[v156];
        v77 = sub_216983738(181);
        v155 = v78;
        v156 = v77;
        sub_217006214();
        v79 = sub_2170061F4();
        v153 = v80;
        v154 = v79;
        v81 = v163;
        v69(v65, v163);
        v82 = v71;
        __swift_storeEnumTagSinglePayload(v71, 1, 1, v161);
        sub_217006214();
        v83 = sub_2170061F4();
        v85 = v84;
        v69(v65, v81);
        v86 = &v76[v56[8]];
        *v86 = v83;
        v86[1] = v85;
        v87 = v153;
        *v76 = v154;
        *(v76 + 1) = v87;
        v88 = v155;
        *(v76 + 2) = v156;
        *(v76 + 3) = v88;
        *(v76 + 2) = 0u;
        *(v76 + 3) = 0u;
        *(v76 + 8) = 0;
        sub_2168D36D4(v82, &v76[v56[7]]);
        (*(v158 + 8))(v15, v157);
      }

      v30 = sub_216983738(204);
      v32 = v159;
      goto LABEL_17;
    }

    v28 = 202;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21695052C(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v91 - v3;
  v5 = sub_217006224();
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedConnection];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21700E514();
    v12 = sub_2169510F0(v10, v11, v9);

    v13 = sub_216983738(277);
    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v16 allowAccountModifications];
    v99 = v13;
    v98 = v15;
    if (v17)
    {
      if ((v12 & 1) == 0)
      {
        v18 = [objc_opt_self() currentDevice];
        v19 = [v18 userInterfaceIdiom];

        if (v19 != 2)
        {
          v97 = sub_216983738(278);
          v96 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
          v45 = (_s6ActionVMa(0) - 8);
          v46 = *v45;
          v94 = *(*v45 + 72);
          v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_217013D90;
          v95 = v48;
          v49 = (v48 + v47);
          v93 = sub_216983738(19);
          v92 = v50;
          *(&__dst[3] + 1) = type metadata accessor for AllowExplicitContentAction(0);
          *&__dst[4] = sub_21695114C(&qword_27CABDB28, type metadata accessor for AllowExplicitContentAction, &unk_21704B9C0);
          __swift_allocate_boxed_opaque_existential_1(&__dst[2]);
          sub_21700D234();
          sub_217006214();
          v51 = v4;
          v52 = sub_2170061F4();
          v54 = v53;
          v55 = v101;
          v56 = *(v100 + 8);
          v56(v7, v101);
          *&__dst[0] = v52;
          *(&__dst[0] + 1) = v54;
          *&__dst[1] = v93;
          *(&__dst[1] + 1) = v92;
          v100 = sub_217007F04();
          v57 = v51;
          __swift_storeEnumTagSinglePayload(v51, 1, 1, v100);
          sub_217006214();
          v58 = sub_2170061F4();
          v60 = v59;
          v56(v7, v55);
          v61 = &v49[v45[8]];
          *v61 = v58;
          v61[1] = v60;
          memcpy(v49, __dst, 0x48uLL);
          sub_2168D36D4(v57, &v49[v45[7]]);
          v62 = &v49[v94];
          v94 = sub_216983738(178);
          v93 = v63;
          sub_217006214();
          v92 = sub_2170061F4();
          v91 = v64;
          v65 = v56;
          v56(v7, v55);
          __swift_storeEnumTagSinglePayload(v57, 1, 1, v100);
          sub_217006214();
          v66 = sub_2170061F4();
          v68 = v67;
          v65(v7, v55);
          v69 = &v62[v45[8]];
          *v69 = v66;
          v69[1] = v68;
          v70 = v91;
          *v62 = v92;
          *(v62 + 1) = v70;
          v71 = v93;
          *(v62 + 2) = v94;
          *(v62 + 3) = v71;
          *(v62 + 2) = 0u;
          *(v62 + 3) = 0u;
          *(v62 + 8) = 0;
          sub_2168D36D4(v57, &v62[v45[7]]);
LABEL_12:
          sub_216933384(v99, v98, v95, v97, v96, __dst);
          v89 = *&__dst[1];
          v90 = *(&__dst[1] + 8);
          *a1 = __dst[0];
          *(a1 + 16) = v89;
          *(a1 + 24) = v90;
          return;
        }
      }
    }

    v94 = a1;
    if ([v16 allowAccountModifications])
    {
      sub_216950E18(__src);
      if (__src[1])
      {
        memcpy(__dst, __src, 0x48uLL);
        v97 = sub_216983738(279);
        v96 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
        v21 = (_s6ActionVMa(0) - 8);
        v22 = *v21;
        v93 = *(*v21 + 72);
        v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_217013D90;
        v95 = v24;
        v25 = (v24 + v23);
        sub_2167ADC3C(__dst, __src);
        v26 = sub_217007F04();
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v26);
        sub_217006214();
        v27 = sub_2170061F4();
        v29 = v28;
        v30 = v101;
        v31 = *(v100 + 8);
        v31(v7, v101);
        v32 = &v25[v21[8]];
        *v32 = v27;
        v32[1] = v29;
        memcpy(v25, __src, 0x48uLL);
        sub_2168D36D4(v4, &v25[v21[7]]);
        v33 = &v25[v93];
        v100 = sub_216983738(178);
        v93 = v34;
        sub_217006214();
        v35 = sub_2170061F4();
        v92 = v36;
        v31(v7, v30);
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v26);
        sub_217006214();
        v37 = sub_2170061F4();
        v38 = v4;
        v40 = v39;
        v31(v7, v30);
        v41 = &v33[v21[8]];
        *v41 = v37;
        v41[1] = v40;
        v42 = v92;
        *v33 = v35;
        *(v33 + 1) = v42;
        v43 = v93;
        *(v33 + 2) = v100;
        *(v33 + 3) = v43;
        *(v33 + 2) = 0u;
        *(v33 + 3) = 0u;
        *(v33 + 8) = 0;
        sub_2168D36D4(v38, &v33[v21[7]]);
        sub_2167ADC98(__dst);
LABEL_11:
        a1 = v94;
        goto LABEL_12;
      }

      sub_21669987C(__src, &qword_27CAB8100, qword_21701B4C0);
    }

    v97 = sub_216983738(276);
    v96 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
    v73 = (_s6ActionVMa(0) - 8);
    v74 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_217013DA0;
    v95 = v75;
    v76 = v75 + v74;
    v93 = sub_216983738(181);
    v92 = v77;
    sub_217006214();
    v91 = sub_2170061F4();
    v79 = v78;
    v80 = v101;
    v81 = *(v100 + 8);
    v81(v7, v101);
    v82 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v82);
    sub_217006214();
    v83 = v4;
    v84 = sub_2170061F4();
    v86 = v85;
    v81(v7, v80);
    v87 = (v76 + v73[8]);
    *v87 = v84;
    v87[1] = v86;
    *v76 = v91;
    *(v76 + 8) = v79;
    v88 = v92;
    *(v76 + 16) = v93;
    *(v76 + 24) = v88;
    *(v76 + 32) = 0u;
    *(v76 + 48) = 0u;
    *(v76 + 64) = 0;
    sub_2168D36D4(v83, v76 + v73[7]);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_216950E18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_21669987C(v10, &qword_27CABA820, &unk_217018CE0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  else
  {
    (*(v13 + 32))(v16, v10, v11);
    v18 = sub_216983738(295);
    v27 = v19;
    v20 = type metadata accessor for OpenExternalURLAction(0);
    *(a1 + 56) = v20;
    *(a1 + 64) = sub_21695114C(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction, &unk_2170319D8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 32));
    (*(v13 + 16))(boxed_opaque_existential_1, v16, v11);
    sub_21700D234();
    *(boxed_opaque_existential_1 + *(v20 + 20)) = 1;
    sub_217006214();
    v22 = sub_2170061F4();
    v24 = v23;
    (*(v4 + 8))(v7, v2);
    result = (*(v13 + 8))(v16, v11);
    *a1 = v22;
    *(a1 + 8) = v24;
    v25 = v27;
    *(a1 + 16) = v18;
    *(a1 + 24) = v25;
  }

  return result;
}

id sub_2169510F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  v5 = [a3 isBoolSettingLockedDownByRestrictions_];

  return v5;
}

uint64_t sub_21695114C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_7MusicUI19PlaybackEligibilityO6StatusO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2169511BC(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = a1;
  sub_2167B7D58(a2, v2 + 24);
  v8 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_21677BBA0();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v2;
}

uint64_t sub_2169512EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_21695137C();
}

uint64_t sub_21695137C()
{
  *(v1 + 64) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216951418, 0, 0);
}

uint64_t sub_216951418()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for UnifiedMessages.Coordinator(0);
  v1 = sub_21700D4D4();
  OUTLINED_FUNCTION_12_32(v1, v2, v3, v1);
  v4 = v0[7];
  v5 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
  v0[10] = v4;
  v0[11] = v5;

  return MEMORY[0x2822009F8](sub_2169514A8, v4, 0);
}

uint64_t sub_2169514D0()
{
  v36 = v0;
  v1 = *(v0 + 96);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v25 = sub_217007CA4();
    __swift_project_value_buffer(v25, qword_280E73D20);
    v26 = sub_217007C84();
    v27 = sub_21700EDA4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      *(v28 + 4) = OUTLINED_FUNCTION_17_31("performAppLaunchRequestIfNeeded()", v32, v33);
      _os_log_impl(&dword_216679000, v26, v27, "💬 ┃ %s UM isn't enabled yet", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    sub_216951920();
  }

  else
  {
    v2 = *(v0 + 64);
    sub_2167B7D58(v2 + 24, v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v6 = v5 ^ 1;
    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_280E73D20);

    v8 = sub_217007C84();
    v9 = sub_21700EDA4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 64);
      v11 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v11 = 136315650;
      *(v11 + 4) = OUTLINED_FUNCTION_17_31("performAppLaunchRequestIfNeeded()", v32, v33);
      *(v11 + 12) = 2080;
      v34 = v6;
      v12 = *(v10 + 48);
      v13 = __swift_project_boxed_opaque_existential_1((v2 + 24), v12);
      v14 = *(v12 - 8);
      v15 = swift_task_alloc();
      (*(v14 + 16))(v15, v13, v12);
      v16 = sub_21700F784();
      v18 = v17;
      v19 = v12;
      v6 = v34;
      (*(v14 + 8))(v15, v19);

      v20 = sub_2166A85FC(v16, v18, &v35);

      *(v11 + 14) = v20;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v34 & 1;
      _os_log_impl(&dword_216679000, v8, v9, "💬 ┃ %s self.sceneConnectionOptions = %s, hasStartedFromUserAction: %{BOOL}d", v11, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 64);
    *(v22 + 72) = 1;
    v23 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v23);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v6 & 1;
    *(v24 + 40) = v22;

    sub_21677E228(0, 0, v21, &unk_21702B9B8, v24);
  }

  OUTLINED_FUNCTION_3();

  return v30();
}

void sub_216951920()
{
  if (!*(v0 + 64))
  {
    v1 = v0;
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v2 = sub_217007CA4();
    __swift_project_value_buffer(v2, qword_280E73D20);
    v3 = sub_217007C84();
    v4 = sub_21700EDA4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2166A85FC(0xD000000000000021, 0x80000002170851D0, &v9);
      _os_log_impl(&dword_216679000, v3, v4, "💬 ┃ Begin %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x21CEA1440](v6, -1, -1);
      MEMORY[0x21CEA1440](v5, -1, -1);
    }

    if (qword_280E29C40 != -1)
    {
      swift_once();
    }

    v7 = qword_280E739E0;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v8 = v7;

    *(v1 + 64) = sub_2166B9AD0(v8, 0, 1, 1, sub_216953C90, v1);
  }
}

uint64_t sub_216951B2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  *(v5 + 248) = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_21700D2A4();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  v9 = sub_21700D3B4();
  *(v5 + 144) = v9;
  *(v5 + 152) = *(v9 - 8);
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216951D60, 0, 0);
}

uint64_t sub_216951D60()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for JSIntentDispatcher();
  v1 = OUTLINED_FUNCTION_24_22();
  v0[24] = v1;
  OUTLINED_FUNCTION_12_32(v1, v2, v3, v1);
  v0[25] = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[26] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15_28(v4);

  return sub_216A9C074(v6, v7, v8);
}

uint64_t sub_216951E08()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_216952118;
  }

  else
  {
    v7 = sub_216951F08;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216951F08()
{
  v6 = v1[21];
  v7 = v1[18];
  sub_216953AE4(v1[22], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_21669987C(v1[21], &qword_27CAB89C0, &qword_21701AB00);
    v8 = v1[22];
    *(v1[8] + 72) = 0;
    sub_216952524();

    sub_21669987C(v8, &qword_27CAB89C0, &qword_21701AB00);

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7_3();

    __asm { BRAA            X1, X16 }
  }

  v11 = OUTLINED_FUNCTION_2_55();
  v12(v11);
  OUTLINED_FUNCTION_16_30();
  v13 = MEMORY[0x277D21D10];
  v1[5] = v2;
  v1[6] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v5 + 16))(boxed_opaque_existential_1, v0, v2);
  (*(v3 + 104))(v24, *MEMORY[0x277D21E18], v4);
  type metadata accessor for ObjectGraph(0);

  v1[28] = sub_21700D4F4();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v1[29] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_10_35(v15);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x28217F468](v17, v18, v19, v20, v21);
}

uint64_t sub_216952118()
{
  OUTLINED_FUNCTION_93();

  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2169521B8()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_18_25();
    v10(v9);

    v11 = sub_216952424;
  }

  else
  {
    OUTLINED_FUNCTION_23_23();
    v12 = OUTLINED_FUNCTION_13_25();
    v13(v12);
    (*(v3 + 8))(0, v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 16));
    v11 = sub_21695231C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_21695231C()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  OUTLINED_FUNCTION_21_25();
  *(v0[8] + 72) = 0;
  sub_216952524();

  sub_21669987C(v4, &qword_27CAB89C0, &qword_21701AB00);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216952424()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  v5 = OUTLINED_FUNCTION_13_25();
  v6(v5);
  (*(v3 + 8))(v2, v4);
  sub_21669987C(v1, &qword_27CAB89C0, &qword_21701AB00);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3();

  return v7();
}

void sub_216952524()
{
  v1 = v0;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2166A85FC(0xD000000000000019, 0x80000002170851B0, &v10);
    _os_log_impl(&dword_216679000, v3, v4, "💬 ┃ Begin %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v7 = [objc_opt_self() defaultCenter];
  v8 = v7;
  if (qword_280E29CA0 != -1)
  {
    swift_once();
    v7 = v8;
  }

  [v7 addObserver:v1 selector:sel_handleSceneWillForegroundNotification_ name:qword_280E29CA8 object:{0, v8}];
}

void sub_2169526FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-1] - v3;
  if (!sub_217005964())
  {
    v15 = 0u;
    v16 = 0u;
    goto LABEL_6;
  }

  *&v15 = 0x656C62616E457369;
  *(&v15 + 1) = 0xE900000000000064;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v14);
  if (!*(&v16 + 1))
  {
LABEL_6:
    sub_21669987C(&v15, &unk_27CABF7A0, &unk_217014D20);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v5 = LOBYTE(v14[0]);
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_2166A85FC(0xD00000000000001DLL, 0x8000000217085200, v14);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5;
    _os_log_impl(&dword_216679000, v7, v8, "💬 %{public}s isEnabled: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  if (v5)
  {
    *(v1 + 64) = 0;

    v11 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;

    sub_21677BBA0();
  }
}

uint64_t sub_2169529E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_21695137C();
}

void sub_216952A74(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34[-v5];
  v7 = sub_217005974();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 72) != 1)
  {
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v15 = sub_217007CA4();
    __swift_project_value_buffer(v15, qword_280E73D20);
    v16 = sub_217007C84();
    v17 = sub_21700EDA4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_216679000, v16, v17, "💬 Reporting app badge action metrics.", v18, 2u);
      MEMORY[0x21CEA1440](v18, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x277D7FA50]) init];
    [v19 reportAppIconBadgeActionMetrics];

    (*(v8 + 16))(v10, a1, v7);
    v20 = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37[0] = v36;
      *v22 = 136446466;
      *(v22 + 4) = sub_2166A85FC(0xD000000000000029, 0x8000000217085150, v37);
      *(v22 + 12) = 2080;
      v35 = v21;
      *&v38 = sub_217005964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB30, &unk_217058C60);
      v23 = sub_21700E594();
      v24 = v6;
      v25 = v2;
      v27 = v26;
      (*(v8 + 8))(v10, v7);
      v28 = sub_2166A85FC(v23, v27, v37);
      v2 = v25;
      v6 = v24;

      *(v22 + 14) = v28;
      _os_log_impl(&dword_216679000, v20, v35, "💬 %{public}s Notification UserInfo: %s", v22, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v29, -1, -1);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    if (sub_217005964())
    {
      *&v38 = 0xD000000000000018;
      *(&v38 + 1) = 0x8000000217085130;
      sub_21700F364();
      sub_216934FBC();

      sub_216788110(v37);
      if (*(&v39 + 1))
      {
        if (swift_dynamicCast())
        {
          v31 = v37[0];
LABEL_23:
          v32 = sub_21700EA74();
          __swift_storeEnumTagSinglePayload(v6, 1, 1, v32);
          v33 = swift_allocObject();
          *(v33 + 16) = 0;
          *(v33 + 24) = 0;
          *(v33 + 32) = v31;
          *(v33 + 40) = v2;

          sub_21677E228(0, 0, v6, &unk_21702B990, v33);

          return;
        }

LABEL_22:
        v31 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    sub_21669987C(&v38, &unk_27CABF7A0, &unk_217014D20);
    goto LABEL_22;
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E73D20);
  v36 = sub_217007C84();
  v12 = sub_21700EDA4();
  if (os_log_type_enabled(v36, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_2166A85FC(0xD000000000000029, 0x8000000217085150, v37);
    _os_log_impl(&dword_216679000, v36, v12, "💬 %{public}s Skipping app launch request because we are already performing one.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x21CEA1440](v14, -1, -1);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  else
  {
    v30 = v36;
  }
}

uint64_t sub_21695309C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  *(v5 + 248) = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_21700D2A4();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  v9 = sub_21700D3B4();
  *(v5 + 144) = v9;
  *(v5 + 152) = *(v9 - 8);
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2169532D0, 0, 0);
}

uint64_t sub_2169532D0()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for JSIntentDispatcher();
  v1 = OUTLINED_FUNCTION_24_22();
  v0[24] = v1;
  OUTLINED_FUNCTION_12_32(v1, v2, v3, v1);
  v0[25] = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[26] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15_28(v4);

  return sub_216A9C46C(v6, v7, v8);
}

uint64_t sub_216953378()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_216953D30;
  }

  else
  {
    v7 = sub_216953478;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216953478()
{
  v6 = v1[21];
  v7 = v1[18];
  sub_216953AE4(v1[22], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_21669987C(v1[22], &qword_27CAB89C0, &qword_21701AB00);

    v8 = v1[21];
    OUTLINED_FUNCTION_21_25();
    sub_21669987C(v8, &qword_27CAB89C0, &qword_21701AB00);

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7_3();

    __asm { BRAA            X1, X16 }
  }

  v11 = OUTLINED_FUNCTION_2_55();
  v12(v11);
  OUTLINED_FUNCTION_16_30();
  v13 = MEMORY[0x277D21D10];
  v1[5] = v2;
  v1[6] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v5 + 16))(boxed_opaque_existential_1, v0, v2);
  (*(v3 + 104))(v24, *MEMORY[0x277D21E18], v4);
  type metadata accessor for ObjectGraph(0);

  v1[28] = sub_21700D4F4();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v1[29] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_10_35(v15);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x28217F468](v17, v18, v19, v20, v21);
}

uint64_t sub_216953670()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_18_25();
    v10(v9);

    v11 = sub_216953D2C;
  }

  else
  {
    OUTLINED_FUNCTION_23_23();
    v12 = OUTLINED_FUNCTION_13_25();
    v13(v12);
    (*(v3 + 8))(0, v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 16));
    v11 = sub_2169537D4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2169537D4()
{
  OUTLINED_FUNCTION_93();
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[22];
  OUTLINED_FUNCTION_7_40();
  sub_21669987C(v7, &qword_27CAB89C0, &qword_21701AB00);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_2169539B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t sub_2169539E8()
{
  sub_2169539B8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216953A40()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_3(v4);

  return sub_21695309C(v6, v7, v8, v1, v2);
}

uint64_t sub_216953AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216953B54()
{
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);

  return sub_2169512EC();
}

uint64_t sub_216953BEC()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_3(v4);

  return sub_216951B2C(v6, v7, v8, v1, v2);
}

uint64_t sub_216953C94()
{
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);

  return sub_2169529E4();
}

uint64_t sub_216953D34(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216953E70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21695403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(a4 + 16);
  v5[8] = v6;
  v7 = *(a4 + 24);
  v5[9] = v7;
  v8 = type metadata accessor for PresentationItem.Destination(0, v6, v7, a4);
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  v10 = sub_21700F164();
  v5[14] = v10;
  v5[15] = *(v10 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = *(AssociatedTypeWitness - 8);
  v5[18] = OUTLINED_FUNCTION_84();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v11 = type metadata accessor for MusicAppDestination(0);
  v5[21] = v11;
  OUTLINED_FUNCTION_36(v11);
  v5[22] = OUTLINED_FUNCTION_84();
  v5[23] = swift_task_alloc();
  v12 = type metadata accessor for FlowAction(0);
  v5[24] = v12;
  OUTLINED_FUNCTION_36(v12);
  v5[25] = OUTLINED_FUNCTION_84();
  v5[26] = swift_task_alloc();
  v13 = type metadata accessor for ModalActionModelDestinations.Destination(0);
  v5[27] = v13;
  OUTLINED_FUNCTION_36(v13);
  v5[28] = OUTLINED_FUNCTION_84();
  v5[29] = swift_task_alloc();
  v14 = type metadata accessor for MusicAppDestinationContext(0);
  v5[30] = v14;
  OUTLINED_FUNCTION_36(v14);
  v5[31] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70C0, &qword_217015DB8);
  OUTLINED_FUNCTION_36(v15);
  v5[32] = OUTLINED_FUNCTION_84();
  v5[33] = swift_task_alloc();
  sub_21700EA34();
  v5[34] = sub_21700EA24();
  v17 = sub_21700E9B4();
  v5[35] = v17;
  v5[36] = v16;

  return MEMORY[0x2822009F8](sub_21695432C, v17, v16);
}

uint64_t sub_21695432C()
{
  v119 = v0;
  type metadata accessor for PresentSheetAction(0);
  OUTLINED_FUNCTION_10_36();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(v0 + 168);
      OUTLINED_FUNCTION_3_63();
      sub_2169556BC(v5, v2, v7);
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      sub_217005EF4();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v15 = type metadata accessor for ModalActionModelDestinations.Destination;
    v16 = v5;
  }

  else
  {
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = *(v0 + 192);
    sub_2169556BC(v5, v12, type metadata accessor for FlowAction);
    sub_2168EC904(v2);
    sub_2169556BC(v12, v13, type metadata accessor for FlowAction);
    sub_2169557CC(v13 + *(v14 + 40), v3, &qword_27CABF7B0, &qword_217016E20);
    sub_2169557CC(v13 + *(v14 + 32), v3 + *(v4 + 20), &qword_27CABA820, &unk_217018CE0);
    OUTLINED_FUNCTION_7_41();
    v16 = v13;
  }

  sub_21695576C(v16, v15);
LABEL_7:
  v25 = *(v0 + 256);
  v26 = *(v0 + 168);
  sub_2169557CC(*(v0 + 264), v25, &qword_27CAB70C0, &qword_217015DB8);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v27 = *(v0 + 256);

    sub_2167AF7F4(v27);
    goto LABEL_11;
  }

  v29 = *(v0 + 176);
  v28 = *(v0 + 184);
  v30 = *(v0 + 128);
  v31 = *(v0 + 104);
  OUTLINED_FUNCTION_3_63();
  sub_2169556BC(v32, v28, v33);
  OUTLINED_FUNCTION_8_37();
  sub_216955714(v28, v29, v34);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v29, v31, AssociatedConformanceWitness);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    OUTLINED_FUNCTION_0_86();
    sub_21695576C(v36, v37);

    v38 = OUTLINED_FUNCTION_116();
    v39(v38);
LABEL_11:
    OUTLINED_FUNCTION_10_36();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v80 = *(v0 + 264);
        v81 = *(v0 + 248);
        v82 = *(v0 + 168);
        v83 = *(v0 + 176);
        v85 = *(v0 + 64);
        v84 = *(v0 + 72);
        OUTLINED_FUNCTION_3_63();
        sub_2169556BC(v86, v83, v87);
        v89 = type metadata accessor for PresentSheetActionImplementation.Error(0, v85, v84, v88);
        v90 = OUTLINED_FUNCTION_9_39(v89);
        OUTLINED_FUNCTION_3_0(v90);
        v92 = v91;
        OUTLINED_FUNCTION_8_37();
        sub_216955714(v83, v93, v94);
        __swift_storeEnumTagSinglePayload(v92, 0, 1, v82);
        swift_willThrow();
        OUTLINED_FUNCTION_0_86();
        sub_21695576C(v83, v95);
        goto LABEL_25;
      case 2u:
      case 3u:
      case 5u:
        OUTLINED_FUNCTION_2_56();
        swift_storeEnumTagMultiPayload();

        sub_216AF3510();

        v96 = OUTLINED_FUNCTION_116();
        v97(v96);
        goto LABEL_22;
      case 4u:
        v76 = **(v0 + 224);
        **(v0 + 96) = v76;
        OUTLINED_FUNCTION_116();
        swift_storeEnumTagMultiPayload();
        v77 = v76;
        sub_216AF3DB0();

        v78 = OUTLINED_FUNCTION_116();
        v79(v78);
        goto LABEL_22;
      case 6u:
        v80 = *(v0 + 264);
        v81 = *(v0 + 248);
        v104 = *(v0 + 168);
        v105 = type metadata accessor for PresentSheetActionImplementation.Error(0, *(v0 + 64), *(v0 + 72), v40);
        v106 = OUTLINED_FUNCTION_9_39(v105);
        OUTLINED_FUNCTION_3_0(v106);
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v107, v108, v109, v104);
        swift_willThrow();
LABEL_25:
        sub_21695576C(v81, type metadata accessor for MusicAppDestinationContext);
        sub_2167AF7F4(v80);
        OUTLINED_FUNCTION_14_28();

        OUTLINED_FUNCTION_3();
        goto LABEL_26;
      default:
        v41 = *(v0 + 208);
        v43 = *(v0 + 88);
        v42 = *(v0 + 96);
        v44 = *(v0 + 80);
        sub_2169556BC(*(v0 + 224), v41, type metadata accessor for FlowAction);
        v45 = OUTLINED_FUNCTION_116();
        sub_216955714(v45, v46, v47);
        swift_storeEnumTagMultiPayload();
        sub_216AF3510();
        (*(v43 + 8))(v42, v44);
        OUTLINED_FUNCTION_7_41();
        sub_21695576C(v41, v48);
LABEL_22:
        v98 = *(v0 + 264);
        OUTLINED_FUNCTION_1_70();
        sub_21695576C(v99, v100);
        sub_2167AF7F4(v98);
        break;
    }

    goto LABEL_23;
  }

  v49 = *(v0 + 104);
  (*(*(v0 + 136) + 32))(*(v0 + 160), *(v0 + 128), v49);
  if (((*(AssociatedConformanceWitness + 24))(v49, AssociatedConformanceWitness) & 1) == 0)
  {
    v67 = *(v0 + 248);
    v115 = *(v0 + 184);
    v117 = *(v0 + 264);
    v68 = *(v0 + 160);
    v69 = *(v0 + 136);
    v71 = *(v0 + 96);
    v70 = *(v0 + 104);
    v73 = *(v0 + 80);
    v72 = *(v0 + 88);

    (*(v69 + 16))(v71, v68, v70);
    swift_storeEnumTagMultiPayload();
    sub_216AF3510();
    (*(v72 + 8))(v71, v73);
    (*(v69 + 8))(v68, v70);
    OUTLINED_FUNCTION_0_86();
    sub_21695576C(v115, v74);
    OUTLINED_FUNCTION_1_70();
    sub_21695576C(v67, v75);
    sub_2167AF7F4(v117);
LABEL_23:
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    v101 = OUTLINED_FUNCTION_38();
    v102(v101);
    OUTLINED_FUNCTION_5_44();

    OUTLINED_FUNCTION_3();
LABEL_26:

    return v103();
  }

  if (qword_27CAB5AA0 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 136);
  v51 = sub_217007CA4();
  __swift_project_value_buffer(v51, qword_27CABDB38);
  v52 = *(v50 + 16);
  v53 = OUTLINED_FUNCTION_8();
  v52(v53);
  v54 = sub_217007C84();
  v55 = sub_21700EDA4();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 152);
  if (v56)
  {
    v58 = *(v0 + 136);
    v59 = *(v0 + 144);
    v60 = *(v0 + 104);
    v61 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v118 = v116;
    *v61 = 136446210;
    (v52)(v59, v57, v60);
    v62 = sub_21700E594();
    v64 = v63;
    v65 = *(v58 + 8);
    v65(v57, v60);
    v66 = sub_2166A85FC(v62, v64, &v118);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_216679000, v54, v55, "Delegating sheet presentation to app: %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x21CEA1440](v116, -1, -1);
    MEMORY[0x21CEA1440](v61, -1, -1);
  }

  else
  {
    v111 = *(v0 + 136);
    v112 = *(v0 + 104);

    v65 = *(v111 + 8);
    v65(v57, v112);
  }

  *(v0 + 296) = v65;
  v113 = type metadata accessor for PopoverBubbleTipRequestManager(0);
  v114 = swift_task_alloc();
  *(v0 + 304) = v114;
  *v114 = v0;
  v114[1] = sub_216954D88;

  return MEMORY[0x28217F210](v0 + 16, v113, v113);
}

uint64_t sub_216954D88()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_216955318;
  }

  else
  {
    v5 = sub_216954EC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216954EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  v23 = v18[2];
  v18[40] = v23;
  if (v23)
  {
    v24 = swift_task_alloc();
    v18[41] = v24;
    *v24 = v18;
    v24[1] = sub_216955094;
    OUTLINED_FUNCTION_13_2();

    return sub_216A57580();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_6_40();
    v28(v27);
    v22(v20, v21);
    OUTLINED_FUNCTION_0_86();
    sub_21695576C(v19, v29);
    OUTLINED_FUNCTION_1_70();
    sub_21695576C(v17, v30);
    sub_2167AF7F4(v16);
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    v31 = OUTLINED_FUNCTION_38();
    v32(v31);
    OUTLINED_FUNCTION_5_44();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_13_2();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_216955094()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_2169551B4, v3, v2);
}

uint64_t sub_2169551B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();

  v22 = OUTLINED_FUNCTION_6_40();
  v23(v22);
  v21(v19, v20);
  OUTLINED_FUNCTION_0_86();
  sub_21695576C(v18, v24);
  OUTLINED_FUNCTION_1_70();
  sub_21695576C(v17, v25);
  sub_2167AF7F4(v16);
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  v26 = OUTLINED_FUNCTION_38();
  v27(v26);
  OUTLINED_FUNCTION_5_44();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216955318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  v17 = v16[37];
  v18 = v16[33];
  v19 = v16[31];
  v20 = v16[23];
  v21 = v16[20];
  v22 = v16[13];

  v17(v21, v22);
  OUTLINED_FUNCTION_0_86();
  sub_21695576C(v20, v23);
  OUTLINED_FUNCTION_1_70();
  sub_21695576C(v19, v24);
  sub_2167AF7F4(v18);
  OUTLINED_FUNCTION_14_28();
  v35 = v16[19];
  v36 = v16[18];
  v37 = v16[16];
  v38 = v16[12];
  v39 = v25;

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_216955460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2167AF644;

  return sub_21695403C(a1, a2, a3, a4);
}

uint64_t sub_216955520(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216955560()
{
  result = qword_280E3EA78[0];
  if (!qword_280E3EA78[0])
  {
    type metadata accessor for PresentSheetAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3EA78);
  }

  return result;
}

uint64_t sub_2169555B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216955624()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABDB38);
  __swift_project_value_buffer(v0, qword_27CABDB38);
  return sub_217007C94();
}

uint64_t sub_2169556BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216955714(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_21695576C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2169557CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t _s13ActionContextOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BootstrapInterval(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}