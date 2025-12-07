uint64_t sub_227C72618@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = (v13 - v12);
  sub_227C73508(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_227B1DE58(v7, &qword_27D7E6D08, &qword_227D59460);
  }

  else
  {
    v15 = *(v10 + 32);
    v15(v14, v7, v8);
    v15(a2, v14, v8);
  }

  type metadata accessor for AnySortableKey(0);
  OUTLINED_FUNCTION_10_6();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_227C727CC()
{
  type metadata accessor for AnySortableKey(0);
  OUTLINED_FUNCTION_10_6();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_227C7280C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{

  sub_227C734A4(a1, a6);
  v12 = type metadata accessor for AnySortableKeyValuePair(0, a3, a4, a5);
  v13 = *(*(a3 - 8) + 32);
  v14 = a6 + *(v12 + 44);

  return v13(v14, a2, a3);
}

uint64_t sub_227C728BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B74726F73 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1(0x79654B74726F73, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_1(0x65756C6176, 0xE500000000000000);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_227C72968(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x79654B74726F73;
  }
}

uint64_t sub_227C7299C(uint64_t a1)
{
  sub_227D4DB58();
  sub_227B1F208(v3, *v1);
  return sub_227D4DB98();
}

uint64_t sub_227C729E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227C728BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227C72A14(uint64_t a1)
{
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v1, v2);
}

uint64_t sub_227C72A54(uint64_t a1)
{
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v1, v2);
}

void AnySortableKeyValuePair.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_351();
  type metadata accessor for AnySortableKeyValuePair.CodingKeys(255, v24[2], v24[3], v24[4]);
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  sub_227D4DA18();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_227D4DC08();
  type metadata accessor for AnySortableKey(0);
  OUTLINED_FUNCTION_5_18();
  sub_227C735E0(v28, v29, &protocol conformance descriptor for AnySortableKey);
  sub_227D4DA08();
  if (!v23)
  {
    sub_227D4DA08();
  }

  v30 = OUTLINED_FUNCTION_33_8();
  v31(v30);
  OUTLINED_FUNCTION_352();
}

void AnySortableKeyValuePair.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_351();
  v70 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v61 = v33;
  v60 = *(v29 - 8);
  MEMORY[0x28223BE20](v31);
  v35 = OUTLINED_FUNCTION_2_29(v34, v57);
  v66 = type metadata accessor for AnySortableKey(v35);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v68 = v38 - v37;
  type metadata accessor for AnySortableKeyValuePair.CodingKeys(255, v30, v28, v26);
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  v69 = sub_227D4D958();
  OUTLINED_FUNCTION_9();
  v62 = v39;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v40);
  v41 = OUTLINED_FUNCTION_38_10();
  v64 = v30;
  v65 = v28;
  v42 = type metadata accessor for AnySortableKeyValuePair(v41, v30, v28, v26);
  OUTLINED_FUNCTION_9();
  v59 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v57 - v45;
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v67 = v23;
  v47 = v70;
  sub_227D4DBF8();
  if (v47)
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v70 = v32;
    v58 = v42;
    v48 = v63;
    v49 = v64;
    OUTLINED_FUNCTION_5_18();
    sub_227C735E0(v50, v51, &protocol conformance descriptor for AnySortableKey);
    v52 = v68;
    sub_227D4D938();
    sub_227C734A4(v52, v46);
    sub_227D4D938();
    v53 = OUTLINED_FUNCTION_24_9();
    v54(v53);
    v55 = v58;
    (*(v60 + 32))(&v46[*(v58 + 44)], v48, v49);
    v56 = v59;
    (*(v59 + 16))(v61, v46, v55);
    __swift_destroy_boxed_opaque_existential_0(v70);
    (*(v56 + 8))(v46, v55);
  }

  OUTLINED_FUNCTION_352();
}

GameServicesCore::GameLibraryDataFetchingRequirements sub_227C73040@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = GameLibraryDataFetchingRequirements.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_227C73080@<X0>(uint64_t *a1@<X8>)
{
  result = GameLibraryDataFetchingRequirements.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_227C730A8()
{
  OUTLINED_FUNCTION_351();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_227D49678();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = 0;
  if ((v3[1] & 1) == 0)
  {
    v15 = *v3;
  }

  if ((sub_227D49BF8() & 1) != 0 || (sub_227D49C28()) && (v15 & 8) == 0)
  {
    v15 |= 8uLL;
  }

  (*(v10 + 16))(v14, v1, v8);
  v16 = (*(v10 + 88))(v14, v8);
  if (v16 == *MEMORY[0x277D0CAD0] || v16 == *MEMORY[0x277D0CAC0])
  {
    (*(v10 + 8))(v1, v8);
    sub_227D49C48();
    OUTLINED_FUNCTION_62_0();
    (*(v17 + 8))(v5);
  }

  else
  {
    if (v16 != *MEMORY[0x277D0CAC8])
    {
      sub_227D49E08();
      sub_227C735E0(&qword_27D7E67C8, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
      OUTLINED_FUNCTION_10_6();
      swift_allocError();
      sub_227D49DC8();
      swift_willThrow();
      v19 = *(v10 + 8);
      v19(v1, v8);
      sub_227D49C48();
      OUTLINED_FUNCTION_62_0();
      (*(v20 + 8))(v5);
      v19(v14, v8);
      goto LABEL_11;
    }

    (*(v10 + 8))(v1, v8);
    sub_227D49C48();
    OUTLINED_FUNCTION_62_0();
    (*(v18 + 8))(v5);
    v15 |= 2uLL;
  }

  *v7 = v15;
LABEL_11:
  OUTLINED_FUNCTION_352();
}

unint64_t sub_227C73354()
{
  result = qword_27D7FDB50;
  if (!qword_27D7FDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FDB50);
  }

  return result;
}

unint64_t sub_227C733A8()
{
  result = qword_27D7FDB58;
  if (!qword_27D7FDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FDB58);
  }

  return result;
}

unint64_t sub_227C733FC()
{
  result = qword_27D7FDB60;
  if (!qword_27D7FDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FDB60);
  }

  return result;
}

unint64_t sub_227C73450()
{
  result = qword_27D7FDB68[0];
  if (!qword_27D7FDB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FDB68);
  }

  return result;
}

uint64_t sub_227C734A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnySortableKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C73508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C735E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227C7362C()
{
  result = qword_27D7E9AD0;
  if (!qword_27D7E9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9AD0);
  }

  return result;
}

unint64_t sub_227C73688()
{
  result = qword_27D7E9AD8;
  if (!qword_27D7E9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9AD8);
  }

  return result;
}

unint64_t sub_227C736E0()
{
  result = qword_27D7E9AE0;
  if (!qword_27D7E9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9AE0);
  }

  return result;
}

void sub_227C7373C(uint64_t a1)
{
  sub_227C737B0();
  if (v1 <= 0x3F)
  {
    sub_227C737F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_227C737B0()
{
  if (!qword_27D7E9AE8)
  {
    v0 = sub_227D492A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7E9AE8);
    }
  }
}

uint64_t sub_227C737F8()
{
  result = qword_27D7E9AF0;
  if (!qword_27D7E9AF0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D7E9AF0);
  }

  return result;
}

uint64_t sub_227C73820(uint64_t a1)
{
  result = type metadata accessor for AnySortableKey(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_227C738A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_227D492A8();
  OUTLINED_FUNCTION_5(v6);
  v8 = 16;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  if (*(v7 + 64) > 0x10uLL)
  {
    v8 = *(v7 + 64);
  }

  v11 = *(v10 + 84);
  if (v11 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = v8 + v13 + 1;
  if (a2 <= v12)
  {
    goto LABEL_27;
  }

  v16 = (v15 & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_27:
      if (v11 > 0xFD)
      {

        return __swift_getEnumTagSinglePayload((a1 + v15) & ~v13, v11, v9);
      }

      else
      {
        v24 = *(a1 + v8);
        if (v24 >= 3)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_227C73A98(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_227D492A8();
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  if (v10 <= 0x10)
  {
    v10 = 16;
  }

  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v12 + 80);
  v16 = v10 + v15 + 1;
  v17 = (v16 & ~v15) + *(v12 + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v24))
    {
      v19 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v19 = v25;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v13 > 0xFD)
          {

            __swift_storeEnumTagSinglePayload(&a1[v16] & ~v15, a2, v13, v11);
          }

          else if (a2 > 0xFD)
          {
            v29 = (v10 + 1);
            if (v29 <= 3)
            {
              v30 = ~(-1 << (8 * (v10 + 1)));
            }

            else
            {
              v30 = -1;
            }

            if (v10 != -1)
            {
              v31 = v30 & (a2 - 254);
              if (v29 <= 3)
              {
                v32 = v10 + 1;
              }

              else
              {
                v32 = 4;
              }

              bzero(a1, v29);
              switch(v32)
              {
                case 2:
                  *a1 = v31;
                  break;
                case 3:
                  *a1 = v31;
                  a1[2] = BYTE2(v31);
                  break;
                case 4:
                  *a1 = v31;
                  break;
                default:
                  *a1 = v31;
                  break;
              }
            }
          }

          else
          {
            a1[v10] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v23 = (v20 >> v18) + 1;
      if (v17)
      {
        v26 = v20 & ~(-1 << v18);
        v27 = OUTLINED_FUNCTION_9_2();
        bzero(v27, v28);
        if (v17 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v17 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      v21 = OUTLINED_FUNCTION_9_2();
      bzero(v21, v22);
      *a1 = v20;
      v23 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v23;
        break;
      case 2:
        *&a1[v17] = v23;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v17] = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for GameLibraryDataFetchingRequirements(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_161(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_49_0();
  }
}

uint64_t dispatch thunk of GameSubLibraryServiceProtocol.listGameHistories(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_13_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_19(v1);

  return v3(v2);
}

uint64_t sub_227C73ED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of GameSubLibraryServiceProtocol.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_13_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_19(v1);

  return v3(v2);
}

_BYTE *sub_227C740E0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnySortableKey.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t _s16GameServicesCore14AnySortableKeyO14DateCodingKeysOwet_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_49_0();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_135(a1);
}

_BYTE *_s16GameServicesCore14AnySortableKeyO14DateCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_227C743A0()
{
  result = qword_27D7FE400[0];
  if (!qword_27D7FE400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FE400);
  }

  return result;
}

unint64_t sub_227C743F8()
{
  result = qword_27D7FE610[0];
  if (!qword_27D7FE610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FE610);
  }

  return result;
}

unint64_t sub_227C74450()
{
  result = qword_27D7FE820[0];
  if (!qword_27D7FE820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FE820);
  }

  return result;
}

unint64_t sub_227C744FC()
{
  result = qword_27D7FEBB0;
  if (!qword_27D7FEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEBB0);
  }

  return result;
}

unint64_t sub_227C74554()
{
  result = qword_27D7FEBB8[0];
  if (!qword_27D7FEBB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FEBB8);
  }

  return result;
}

unint64_t sub_227C745AC()
{
  result = qword_27D7FEC40;
  if (!qword_27D7FEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEC40);
  }

  return result;
}

unint64_t sub_227C74604()
{
  result = qword_27D7FEC48[0];
  if (!qword_27D7FEC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FEC48);
  }

  return result;
}

unint64_t sub_227C7465C()
{
  result = qword_27D7FECD0;
  if (!qword_27D7FECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FECD0);
  }

  return result;
}

unint64_t sub_227C746B4()
{
  result = qword_27D7FECD8[0];
  if (!qword_27D7FECD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FECD8);
  }

  return result;
}

unint64_t sub_227C7470C()
{
  result = qword_27D7FED60;
  if (!qword_27D7FED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FED60);
  }

  return result;
}

unint64_t sub_227C74764()
{
  result = qword_27D7FED68[0];
  if (!qword_27D7FED68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FED68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return MEMORY[0x28211E840]();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return type metadata accessor for AnySortableKey(0);
}

uint64_t sub_227C74874(uint64_t a1, uint64_t a2)
{
  v3[72] = v2;
  v3[71] = a2;
  v3[70] = a1;
  v4 = sub_227D49188();
  v3[73] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v3[74] = v5;
  v3[75] = OUTLINED_FUNCTION_379();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v6 = sub_227D49AB8();
  v3[79] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v3[80] = v7;
  v3[81] = OUTLINED_FUNCTION_379();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v8 = sub_227D49F28();
  v3[84] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v3[85] = v9;
  v3[86] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  v3[87] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v3[88] = v11;
  v3[89] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v12);
  v3[90] = OUTLINED_FUNCTION_379();
  v3[91] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_5(v13);
  v3[92] = OUTLINED_FUNCTION_379();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v14);
  v3[96] = OUTLINED_FUNCTION_379();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v15 = sub_227D49918();
  v3[99] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v3[100] = v16;
  v3[101] = OUTLINED_FUNCTION_379();
  v3[102] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3[103] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v3[104] = v18;
  v3[105] = OUTLINED_FUNCTION_379();
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v19);
  v3[108] = OUTLINED_FUNCTION_379();
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AF8, &qword_227D5FA48);
  OUTLINED_FUNCTION_5(v20);
  v3[112] = OUTLINED_FUNCTION_379();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C74C90, v2, 0);
}

uint64_t sub_227C74C90()
{
  v1 = v0[72];
  v2 = v0[71];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B00, &qword_227D5FA50);
  sub_227BDE464(&qword_27D7E8578, MEMORY[0x277D0D508]);
  v3 = sub_227D4CE28();
  (*(*v1 + 400))(v3);
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  v8 = (*(v5 + 24) + **(v5 + 24));
  v6 = swift_task_alloc();
  v0[115] = v6;
  *v6 = v0;
  v6[1] = sub_227C74E5C;

  return v8(v0 + 47, v4, v5);
}

uint64_t sub_227C74E5C()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  v3 = *(v2 + 576);
  if (v0)
  {
    v4 = sub_227C76CFC;
  }

  else
  {
    v4 = sub_227C74F88;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_227C74F88()
{
  v1 = v0[70];
  v2 = v1[8];
  v271 = *(v2 + 16);
  v3 = 0;
  if (!v271)
  {
    v324 = 0;
LABEL_111:
    OUTLINED_FUNCTION_3_21();
    __swift_destroy_boxed_opaque_existential_0(v0 + 47);
    sub_227B1AC90(v3, 0);
    sub_227B1AC90(v324, 0);

    v256 = v0[1];
LABEL_116:

    v256();
    return;
  }

  v324 = 0;
  v4 = 0;
  v279 = v0 + 62;
  v322 = v0 + 66;
  v5 = v0[100];
  v6 = v0[74];
  v7 = v2 + 32;
  v280 = (v6 + 16);
  v274 = (v5 + 104);
  v8 = v0[104];
  v285 = (v8 + 16);
  v301 = (v5 + 16);
  v300 = (v0[85] + 104);
  v9 = v0[80];
  v292 = (v9 + 32);
  v278 = (v8 + 8);
  v281 = (v6 + 32);
  v264 = v6;
  v282 = v8;
  v283 = (v6 + 8);
  v288 = (v9 + 16);
  v263 = *MEMORY[0x277D0CB48];
  v286 = v9;
  v270 = (v5 + 8);
  v272 = *MEMORY[0x277D0CB38];
  v265 = *MEMORY[0x277D0CB40];
  v299 = *MEMORY[0x277D0CEE8];
  v266 = v0[70];
  v10 = v1[9];
  v11 = v1[11];
  v12 = v1[12];
  v275 = v1[13];
  v13 = v0[116];
  v267 = v11;
  v268 = v10;
  v273 = v12;
  v269 = v2 + 32;
  while (1)
  {
    memcpy(v0 + 2, (v7 + 120 * v4), 0x78uLL);
    v14 = v0[16];
    sub_227D4CE58();
    sub_227BA823C((v0 + 2), (v0 + 17));
    v305 = v14;
    sub_227D4CE58();
    v15 = sub_227BA8E60();
    v328 = v3;
    if (*(v10 + 16) && (v17 = sub_227B2664C(v15, v16), (v18 & 1) != 0))
    {
      v19 = *(*(v10 + 56) + 8 * v17);
      sub_227D4CE58();
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v20 = sub_227BA8E60();
    if (*(v11 + 16) && (v22 = sub_227B2664C(v20, v21), v23 = v0[114], (v24 & 1) != 0))
    {
      v25 = v22;
      v26 = *(v11 + 56);
      v27 = type metadata accessor for GameActivityImage(0);
      OUTLINED_FUNCTION_62_0();
      v29 = v26 + *(v28 + 72) * v25;
      v12 = v273;
      sub_227B9A198(v29, v23);
      OUTLINED_FUNCTION_99();
      v33 = v27;
    }

    else
    {
      type metadata accessor for GameActivityImage(0);
      v30 = OUTLINED_FUNCTION_1_27();
    }

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);

    v34 = sub_227BA8E60();
    if (*(v12 + 16) && (v36 = sub_227B2664C(v34, v35), (v37 & 1) != 0))
    {
      (*(v264 + 16))(v0[111], *(v12 + 56) + *(v264 + 72) * v36, v0[73]);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    __swift_storeEnumTagSinglePayload(v0[111], v38, 1, v0[73]);

    if (*(v275 + 16))
    {
      v39 = sub_227C76F0C(0);
      if (v40)
      {
        v41 = *(*(v275 + 56) + 8 * v39);
        sub_227D4CE58();
        v42 = sub_227BA8E60();
        if (*(v41 + 16))
        {
          sub_227B2664C(v42, v43);
          if (v44)
          {
            sub_227D4CE58();
          }
        }
      }

      if (*(v275 + 16))
      {
        v45 = sub_227C76F0C(7);
        if (v46)
        {
          v47 = *(*(v275 + 56) + 8 * v45);
          sub_227D4CE58();
          v48 = sub_227BA8E60();
          if (*(v47 + 16))
          {
            sub_227B2664C(v48, v49);
            if (v50)
            {
              sub_227D4CE58();
            }
          }
        }
      }
    }

    sub_227BA8E60();
    sub_227D4A668();
    if (v13)
    {
      v257 = v0[114];
      v258 = v0[111];

      sub_227BA8274((v0 + 2));

      sub_227B1DE58(v258, &qword_27D7E6CD8, &qword_227D5C1C0);
      sub_227B1DE58(v257, &qword_27D7E9AF8, &qword_227D5FA48);
      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
      sub_227B1AC90(v328, 0);
      sub_227B1AC90(v324, 0);
      OUTLINED_FUNCTION_3_21();

      v256 = v0[1];
      goto LABEL_116;
    }

    v51 = v0[8];
    if (!v51 || ((v52 = v0[7], v52 == 0x6E6F7268636E7973) ? (v53 = v51 == 0xEB0000000073756FLL) : (v53 = 0), (v54 = v272, !v53) && (OUTLINED_FUNCTION_58(), v55 = sub_227D4DA78(), v54 = v272, (v55 & 1) == 0) && (v52 == 0x6F7268636E797361 ? (v56 = v51 == 0xEC00000073756F6ELL) : (v56 = 0), (v54 = v263, !v56) && (OUTLINED_FUNCTION_58(), v57 = sub_227D4DA78(), v54 = v263, (v57 & 1) == 0))))
    {
      v54 = v265;
    }

    v58 = v0[107];
    v59 = v0[106];
    v60 = v0[103];
    v61 = v0[98];
    v62 = v0[87];
    (*v274)(v0[102], v54, v0[99]);
    type metadata accessor for GameActivityImage(0);
    v63 = OUTLINED_FUNCTION_1_27();
    v306 = v64;
    __swift_storeEnumTagSinglePayload(v63, v65, v66, v64);
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v62);
    v284 = *v285;
    (*v285)(v59, v58, v60);
    v67 = sub_227CB7D30();
    v68 = v67[1];
    v293 = *v67;
    v304 = v19;
    v276 = v4;
    if (v305)
    {
      sub_227D4CE58();
    }

    v69 = v0[111];
    v70 = v0[110];
    v71 = v0[98];
    v72 = v0[87];
    v73 = v0[11];
    v74 = v0[9];
    sub_227B11EE8((v0 + 47), (v0 + 52));
    memcpy(v0 + 32, v0 + 2, 0x78uLL);
    v75 = sub_227BA9084();
    sub_227D4CE58();
    v323 = v73;
    sub_227D4CE58();
    v76 = sub_227BA2760(&unk_283B39988, v75);
    v319 = v77;
    v321 = v76;
    sub_227C773A8(v69, v70);
    v325 = v74;
    v307 = v68;
    if (__swift_getEnumTagSinglePayload(v71, 1, v72))
    {
      sub_227D4AA38();
      v78 = OUTLINED_FUNCTION_1_27();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
      sub_227D4CE58();
    }

    else
    {
      v82 = v0[87];
      v83 = OUTLINED_FUNCTION_375();
      v84(v83);
      sub_227D4CE58();
      sub_227D4A798();
      v85 = OUTLINED_FUNCTION_375();
      v86(v85, v82);
      sub_227D4AA38();
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    }

    v314 = v0[110];
    v311 = v0[91];
    v91 = v0[86];
    v92 = v0[84];
    v315 = v0[79];
    v317 = v0[72];
    v318 = v0[106];
    v93 = *(v0 + 96);
    v94 = v0[5];
    v95 = *(v0 + 48);
    v96 = v0[3];
    v97 = *(v0 + 32);
    v297 = *v301;
    (*v301)();
    v296 = *v300;
    (*v300)(v91, v299, v92);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v302 = v95;
    LOBYTE(v262) = v95;
    v303 = v94;
    v261 = v94;
    v309 = v97;
    LOBYTE(v260) = v97;
    v298 = v93;
    LOBYTE(v259) = v93;
    sub_227D49928();
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v315);
    v295 = *(*v317 + 408);
    v101 = v295(v279);
    v103 = v102;
    sub_227B1AC90(v328, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v332 = *v103;
    *v103 = 0x8000000000000000;
    sub_227BDB31C(v318);
    OUTLINED_FUNCTION_5_19();
    if (__OFADD__(v106, v107))
    {
      goto LABEL_124;
    }

    v108 = v104;
    v109 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B08, &qword_227D5FA58);
    if (sub_227D4D7C8())
    {
      v110 = v331;
      v111 = sub_227BDB31C(v331[106]);
      if ((v109 & 1) != (v112 & 1))
      {
LABEL_112:

        sub_227D4DAE8();
        return;
      }

      v108 = v111;
    }

    else
    {
      v110 = v331;
    }

    *v103 = v332;

    v113 = *v103;
    if ((v109 & 1) == 0)
    {
      v114 = v110[105];
      v284(v114, v110[106], v110[103]);
      sub_227C77028(v108, v114, MEMORY[0x277D84F98], v113);
    }

    v115 = v110[95];
    v116 = v110[79];
    v117 = (v113[7] + 8 * v108);
    if (__swift_getEnumTagSinglePayload(v115, 1, v116) == 1)
    {
      v118 = v110[94];
      sub_227B1DE58(v115, &qword_27D7E6AD8, &unk_227D4ED80);
      sub_227C770EC(v293, v307, v118);

      sub_227B1DE58(v118, &qword_27D7E6AD8, &unk_227D4ED80);
    }

    else
    {
      v119 = v110[83];
      (*v292)(v119, v115, v116);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v333 = *v117;
      sub_227C77234(v119, v293, v307, isUniquelyReferenced_nonNull_native);

      *v117 = v333;
    }

    v277 = *v278;
    (*v278)(v110[106], v110[103]);
    v101(v279, 0, v121, v122, v123, v124, v125, v126, v323, v321, v319, v325, v314, v311, v259, v96, v260, v261, v262);
    v294 = *(v19 + 16);
    if (v294)
    {
      break;
    }

LABEL_107:
    v246 = v110[114];
    v247 = v110[111];
    v248 = v110[107];
    v249 = v110[103];
    v250 = v110[102];
    v251 = v110[99];
    v252 = v331[98];

    sub_227BA8274((v331 + 2));

    (*v270)(v250, v251);
    v277(v248, v249);
    sub_227B1DE58(v247, &qword_27D7E6CD8, &qword_227D5C1C0);
    sub_227B1DE58(v246, &qword_27D7E9AF8, &qword_227D5FA48);
    v253 = v252;
    v4 = v276 + 1;
    v0 = v331;
    sub_227B1DE58(v253, &qword_27D7E6800, &qword_227D64440);
    v254 = OUTLINED_FUNCTION_57_0();
    sub_227B1DE58(v254, v255, &qword_227D5FA48);
    v13 = 0;
    v3 = sub_227C775A4;
    v10 = v268;
    v7 = v269;
    v11 = v267;
    v12 = v273;
    if (v276 + 1 == v271)
    {
      goto LABEL_111;
    }
  }

  v127 = 0;
  v128 = *(v266 + 80);
  v291 = v309 ^ 1 | v302;
  v129 = v303;
  if (!v309)
  {
    v129 = v96;
  }

  v290 = v129;
  v289 = v309 & v302;
  v130 = (v19 + 48);
  v287 = *(v266 + 80);
  while (v127 < *(v19 + 16))
  {
    v308 = v130;
    v310 = v127;
    v131 = *(v130 - 1);
    v326 = *v130;
    v132 = v130[1];
    v320 = v130[4];
    v329 = v130[5];
    v330 = v130[3];
    if (!*(v128 + 16))
    {
      sub_227D4CE58();
      sub_227D4CE58();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
LABEL_65:
      sub_227C77418(v110[114], v110[113]);
      goto LABEL_68;
    }

    v133 = *(v130 - 2);
    swift_bridgeObjectRetain_n();
    sub_227D4CE58();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v134 = sub_227B2664C(v133, v131);
    v136 = v135;

    if ((v136 & 1) == 0)
    {
      goto LABEL_65;
    }

    v137 = *(*(v128 + 56) + 8 * v134);
    if (*(v137 + 16))
    {
      sub_227B9A198(v137 + ((*(*(v306 - 8) + 80) + 32) & ~*(*(v306 - 8) + 80)), v110[112]);
      v138 = 0;
    }

    else
    {
      v138 = 1;
    }

    __swift_storeEnumTagSinglePayload(v110[112], v138, 1, v306);
    v139 = OUTLINED_FUNCTION_58();
    sub_227C77488(v139, v140, &qword_27D7E9AF8, &qword_227D5FA48);
LABEL_68:
    v141 = v110[113];
    v327 = v132;
    if (__swift_getEnumTagSinglePayload(v141, 1, v306))
    {
      goto LABEL_75;
    }

    v142 = v110[78];
    v143 = v110[77];
    v144 = v110[73];
    (*v280)(v143, v141 + *(v306 + 20), v144);
    v145 = *v281;
    (*v281)(v142, v143, v144);
    v146 = sub_227D49158();
    if (v147)
    {
    }

    else
    {
      v148 = v110[109];
      v149 = v110[78];
      v150 = v110[75];
      v151 = v110[73];
      v152 = v110[72];
      (*(*v152 + 224))(v146);
      (*(*v152 + 728))(v150, v149);
      v153 = *v283;
      (*v283)(v150, v151);
      if (__swift_getEnumTagSinglePayload(v148, 1, v151) != 1)
      {
        v145(v110[76], v110[109], v110[73]);
        sub_227D490C8();
        sub_227D4A768();
        v153(v110[76], v110[73]);
        v245 = OUTLINED_FUNCTION_57_0();
        (v153)(v245);
        goto LABEL_74;
      }

      sub_227B1DE58(v110[109], &qword_27D7E6CD8, &qword_227D5C1C0);
    }

    sub_227D490C8();
    sub_227D4A768();
    (*v283)(v110[78], v110[73]);
LABEL_74:
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
    v158 = OUTLINED_FUNCTION_57_0();
    sub_227C77488(v158, v159, &qword_27D7E6800, &qword_227D64440);
LABEL_75:
    if (v305)
    {
      sub_227D4CE58();
    }

    v160 = v110[98];
    v161 = v110[87];
    sub_227B11EE8((v110 + 47), (v110 + 57));
    v162 = OUTLINED_FUNCTION_57_0();
    sub_227C773A8(v162, v163);
    if (__swift_getEnumTagSinglePayload(v160, 1, v161))
    {
      sub_227D4AA38();
      v164 = OUTLINED_FUNCTION_1_27();
      __swift_storeEnumTagSinglePayload(v164, v165, v166, v167);
      sub_227D4CE58();
    }

    else
    {
      v168 = v110[87];
      v169 = OUTLINED_FUNCTION_375();
      v170(v169);
      sub_227D4CE58();
      sub_227D4A798();
      v171 = OUTLINED_FUNCTION_375();
      v172(v171, v168);
      sub_227D4AA38();
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
    }

    v177 = v290;
    v178 = v289;
    if ((v291 & 1) == 0)
    {
      v177 = sub_227D49988();
      v178 = 0;
    }

    v179 = v110[107];
    v180 = v110[102];
    v181 = v110[101];
    v182 = v110[99];
    v183 = v110[93];
    v312 = v110[90];
    v313 = v110[108];
    v184 = v110[86];
    v185 = v331[84];
    v186 = v331[82];
    v187 = v331[79];
    v316 = v179;
    (v297)(v181, v180, v182);
    v296(v184, v299, v185);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    LOBYTE(v262) = v302;
    LOBYTE(v260) = v178;
    LOBYTE(v259) = v298;
    sub_227D49928();
    (*v288)(v183, v186, v187);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v187);
    v191 = v295(v322);
    v193 = v192;
    sub_227B1AC90(v324, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v334 = *v193;
    *v193 = 0x8000000000000000;
    sub_227BDB31C(v316);
    v195 = v194;
    OUTLINED_FUNCTION_5_19();
    if (__OFADD__(v197, v198))
    {
      goto LABEL_120;
    }

    v199 = v196;
    if (sub_227D4D7C8())
    {
      v200 = sub_227BDB31C(v331[107]);
      if ((v195 & 1) != (v201 & 1))
      {
        goto LABEL_112;
      }

      v199 = v200;
    }

    *v193 = v334;

    v202 = *v193;
    if ((v195 & 1) == 0)
    {
      v203 = v331[107];
      v204 = v331[103];
      v202[(v199 >> 6) + 8] |= 1 << v199;
      v284(v202[6] + *(v282 + 72) * v199, v203, v204);
      *(v202[7] + 8 * v199) = MEMORY[0x277D84F98];
      v205 = v202[2];
      v206 = __OFADD__(v205, 1);
      v207 = v205 + 1;
      if (v206)
      {
        goto LABEL_121;
      }

      v202[2] = v207;
    }

    v208 = v331[93];
    v209 = v202[7];
    if (__swift_getEnumTagSinglePayload(v208, 1, v331[79]) == 1)
    {
      sub_227B1DE58(v208, &qword_27D7E6AD8, &unk_227D4ED80);
      v210 = sub_227B2664C(v326, v327);
      if (v211)
      {
        v212 = v210;
        v213 = v331;
        v214 = v331[92];
        v215 = v331[79];
        swift_isUniquelyReferenced_nonNull_native();
        v335 = *(v209 + 8 * v199);
        *(v209 + 8 * v199) = 0x8000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B10, &qword_227D5FA60);
        sub_227D4D7C8();

        (*(v286 + 32))(v214, *(v335 + 56) + *(v286 + 72) * v212, v215);
        OUTLINED_FUNCTION_58();
        sub_227D4D7E8();
        v216 = 0;
        *(v209 + 8 * v199) = v335;
      }

      else
      {
        v216 = 1;
        v213 = v331;
      }

      v19 = v304;
      v236 = v308;
      v237 = v213[92];
      __swift_storeEnumTagSinglePayload(v237, v216, 1, v213[79]);
      sub_227B1DE58(v237, &qword_27D7E6AD8, &unk_227D4ED80);
      v110 = v213;
      v230 = v310;
    }

    else
    {
      v217 = *v292;
      OUTLINED_FUNCTION_103_0();
      (v217)(v218, v219, v220, v221, v222, v223, v224, v225, v330, v320, v329, v325, v313, v312, v259, v177, v260, v303, v262);
      swift_isUniquelyReferenced_nonNull_native();
      v336 = *(v209 + 8 * v199);
      *(v209 + 8 * v199) = 0x8000000000000000;
      sub_227B2664C(v326, v327);
      OUTLINED_FUNCTION_5_19();
      v230 = v310;
      if (__OFADD__(v228, v229))
      {
        goto LABEL_122;
      }

      v231 = v226;
      v232 = v227;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B10, &qword_227D5FA60);
      if (sub_227D4D7C8())
      {
        v233 = v327;
        v234 = sub_227B2664C(v326, v327);
        if ((v232 & 1) != (v235 & 1))
        {
          goto LABEL_112;
        }

        v231 = v234;
      }

      else
      {
        v233 = v327;
      }

      v238 = v331[81];
      v239 = v331[79];
      if (v232)
      {
        (*(v286 + 40))(v336[7] + *(v286 + 72) * v231, v238, v239);
      }

      else
      {
        v336[(v231 >> 6) + 8] |= 1 << v231;
        v240 = (v336[6] + 16 * v231);
        *v240 = v326;
        v240[1] = v233;
        v217(v336[7] + *(v286 + 72) * v231, v238, v239);
        v241 = v336[2];
        v206 = __OFADD__(v241, 1);
        v242 = v241 + 1;
        if (v206)
        {
          goto LABEL_123;
        }

        v336[2] = v242;
        sub_227D4CE58();
      }

      *(v209 + 8 * v199) = v336;

      v110 = v331;
      v19 = v304;
      v236 = v308;
    }

    v127 = v230 + 1;
    v191();

    v243 = OUTLINED_FUNCTION_57_0();
    v244(v243);
    v130 = v236 + 8;
    v324 = sub_227C775A4;
    v128 = v287;
    if (v294 == v127)
    {
      goto LABEL_107;
    }
  }

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
}

uint64_t sub_227C76CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_227C76F0C(uint64_t a1)
{
  v1 = a1;
  sub_227BB48D8();
  v2 = sub_227D4CE98();
  return sub_227C774E4(v1, v2);
}

uint64_t sub_227C76F78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_227D49AB8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_227C77028(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_227C770EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_227B2664C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B10, &qword_227D5FA60);
    sub_227D4D7C8();

    v8 = *(v14 + 56);
    v9 = sub_227D49AB8();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_227D4D7E8();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_227D49AB8();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_227C77234(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_227B2664C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B10, &qword_227D5FA60);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_227B2664C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = sub_227D49AB8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_227C76F78(v12, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

uint64_t sub_227C773A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C77418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AF8, &qword_227D5FA48);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C77488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return a2;
}

unint64_t sub_227C774E4(char a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_227BBA398();
    if (sub_227D4CF38())
    {
      break;
    }
  }

  return i;
}

uint64_t sub_227C775BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0();
  v0 = OUTLINED_FUNCTION_57_0();

  return v1(v0);
}

uint64_t sub_227C77624()
{
  v0 = OUTLINED_FUNCTION_40();
  type metadata accessor for BulkChallengeData.Invitee(v0);
  sub_227D492A8();
  OUTLINED_FUNCTION_62_0();
  v1 = OUTLINED_FUNCTION_93_5();

  return v2(v1);
}

uint64_t sub_227C776AC()
{
  v2 = OUTLINED_FUNCTION_419();
  v3 = *(type metadata accessor for BulkChallengeData.Invitee(v2) + 20);
  sub_227D492A8();
  OUTLINED_FUNCTION_6_15();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t sub_227C77718()
{
  v0 = OUTLINED_FUNCTION_419();
  type metadata accessor for BulkChallengeData.Invitee(v0);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C77780()
{
  v2 = OUTLINED_FUNCTION_419();
  v3 = *(type metadata accessor for BulkChallengeData.Invitee(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t sub_227C777F8()
{
  v0 = OUTLINED_FUNCTION_419();
  type metadata accessor for BulkChallengeData.Invitee(v0);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C77838()
{
  type metadata accessor for BulkChallengeData.Invitee(0);
  OUTLINED_FUNCTION_154_3();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C77868()
{
  OUTLINED_FUNCTION_104_0();
  v3 = (v1 + *(type metadata accessor for BulkChallengeData.Invitee(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_227C778AC()
{
  v0 = OUTLINED_FUNCTION_419();
  type metadata accessor for BulkChallengeData.Invitee(v0);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t BulkChallengeData.Invitee.init(ref:inviteTime:inviter:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_137_3();
  v9 = v8;
  v10 = type metadata accessor for BulkChallengeData.Invitee(0);
  v11 = (v9 + v10[7]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0();
  v14 = *(v13 + 32);
  v15 = OUTLINED_FUNCTION_236();
  v14(v15);
  v16 = v10[5];
  sub_227D492A8();
  OUTLINED_FUNCTION_6_15();
  (*(v17 + 32))(v9 + v16, v6);
  result = (v14)(v9 + v10[6], v5, v12);
  *v11 = a4;
  v11[1] = a5;
  return result;
}

uint64_t static BulkChallengeData.Invitee.== infix(_:_:)()
{
  OUTLINED_FUNCTION_37();
  if (sub_227C77ABC(v2, v3, &qword_27D7E67C0, &unk_227D4FB20))
  {
    v4 = type metadata accessor for BulkChallengeData.Invitee(0);
    if (sub_227D49268() & 1) != 0 && (sub_227C77ABC(v1 + *(v4 + 24), v0 + *(v4 + 24), &qword_27D7E67C0, &unk_227D4FB20))
    {
      OUTLINED_FUNCTION_133_1();
      if (v7)
      {
        if (v5)
        {
          OUTLINED_FUNCTION_132_4(v6);
          v10 = v10 && v8 == v9;
          if (v10 || (sub_227D4DA78() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_227C77ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_137_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = OUTLINED_FUNCTION_9_2();
  sub_227B15A74(v7, v8, a4, v9);
  sub_227D4D148();
  sub_227D4D148();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_227D4DA78();
  }

  return v11 & 1;
}

uint64_t sub_227C77B9C()
{
  OUTLINED_FUNCTION_245();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_5_1(6710642, 0xE300000000000000) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
    v8 = v4 == v6 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_5_1(v6, 0xEA0000000000656DLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      v10 = v4 == v9 && v0 == 0xE700000000000000;
      if (v10 || (OUTLINED_FUNCTION_5_1(v9, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_238();
        if (v3 && v0 == 0xE600000000000000)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_5_1(v11, 0xE600000000000000);
          OUTLINED_FUNCTION_265_1();
          if (v4)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_227C77C98(char a1)
{
  result = 6710642;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 2:
      result = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      break;
    case 3:
      result = 0x737574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227C77D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227C77B9C();
  *a1 = result;
  return result;
}

uint64_t sub_227C77D5C()
{
  sub_227C77FCC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C77D94()
{
  sub_227C77FCC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void BulkChallengeData.Invitee.encode(to:)()
{
  OUTLINED_FUNCTION_351();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B18, &qword_227D5FA68);
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  v6 = v15 - v5;
  OUTLINED_FUNCTION_192();
  sub_227C77FCC();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  v7 = OUTLINED_FUNCTION_299_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_197_3();
  sub_227B15A74(v9, v10, v11, v12);
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_5_0();
  sub_227D4DA08();
  if (!v0)
  {
    v15[1] = type metadata accessor for BulkChallengeData.Invitee(0);
    OUTLINED_FUNCTION_227_0();
    sub_227D492A8();
    OUTLINED_FUNCTION_7_19();
    sub_227C78164(v13, v14, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_5_0();
    sub_227D4DA08();
    OUTLINED_FUNCTION_155();
    OUTLINED_FUNCTION_5_0();
    sub_227D4DA08();
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_126_2();
    sub_227D4D978();
  }

  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_352();
}

unint64_t sub_227C77FCC()
{
  result = qword_27D7FEDF0;
  if (!qword_27D7FEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEDF0);
  }

  return result;
}

uint64_t BulkChallengeData.Invitee.hash(into:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_116_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_31_6();
  sub_227B15A74(v4, &qword_27D7E67C0, &unk_227D4FB20, v5);
  sub_227D4CEA8();
  v6 = type metadata accessor for BulkChallengeData.Invitee(0);
  sub_227D492A8();
  OUTLINED_FUNCTION_7_19();
  sub_227C78164(v7, v8, MEMORY[0x277CC9588]);
  sub_227D4CEA8();
  sub_227D4CEA8();
  if (!*(v1 + *(v6 + 28) + 8))
  {
    return OUTLINED_FUNCTION_174_4();
  }

  OUTLINED_FUNCTION_175_2();

  return sub_227D4D048();
}

uint64_t sub_227C78164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void BulkChallengeData.Invitee.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_351();
  v77 = v21;
  v24 = v23;
  v68 = v25;
  v74 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v69 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v72 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v70 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x28223BE20](v33);
  v73 = v65 - v34;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B28, &qword_227D5FA70);
  OUTLINED_FUNCTION_9();
  v71 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  v38 = v65 - v37;
  v39 = type metadata accessor for BulkChallengeData.Invitee(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  v43 = v42 - v41;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_227C77FCC();
  v75 = v38;
  v44 = v77;
  sub_227D4DBF8();
  if (v44)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    v45 = v72;
    v66 = v22;
    v67 = v39;
    v77 = v43;
    v46 = v74;
    OUTLINED_FUNCTION_14_4();
    v51 = sub_227B15A74(v47, v48, v49, v50);
    v52 = v73;
    sub_227D4D938();
    v65[0] = v51;
    v53 = *(v70 + 32);
    v53(v77, v52, v30);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_7_19();
    sub_227C78164(v54, v55, MEMORY[0x277CC95A0]);
    v56 = v45;
    sub_227D4D938();
    v65[1] = v30;
    v73 = v53;
    v57 = v77;
    (*(v69 + 32))(v77 + v67[5], v56, v46);
    v58 = v66;
    sub_227D4D938();
    (v73)(v57 + v67[6], v58, v30);
    OUTLINED_FUNCTION_236_1();
    v59 = sub_227D4D8A8();
    v61 = v60;
    v62 = (v57 + v67[7]);
    v63 = OUTLINED_FUNCTION_91_6();
    v64(v63);
    *v62 = v59;
    v62[1] = v61;
    sub_227C795C4();
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_227C79618();
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C78708()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0();
  v0 = OUTLINED_FUNCTION_58();

  return v1(v0);
}

uint64_t sub_227C787B4()
{
  v2 = OUTLINED_FUNCTION_419();
  result = type metadata accessor for BulkChallengeData.Participant(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t sub_227C787E0()
{
  v0 = OUTLINED_FUNCTION_419();
  type metadata accessor for BulkChallengeData.Participant(v0);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C78820()
{
  type metadata accessor for BulkChallengeData.Participant(0);
  OUTLINED_FUNCTION_154_3();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C78850()
{
  OUTLINED_FUNCTION_104_0();
  v3 = (v1 + *(type metadata accessor for BulkChallengeData.Participant(0) + 24));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_227C78894()
{
  v0 = OUTLINED_FUNCTION_419();
  type metadata accessor for BulkChallengeData.Participant(v0);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C78938()
{
  v0 = OUTLINED_FUNCTION_419();
  type metadata accessor for BulkChallengeData.Participant(v0);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t sub_227C789DC()
{
  v0 = OUTLINED_FUNCTION_419();
  type metadata accessor for BulkChallengeData.Participant(v0);
  return OUTLINED_FUNCTION_157_4();
}

uint64_t BulkChallengeData.Participant.init(ref:attemptCount:formattedScore:score:rank:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  OUTLINED_FUNCTION_121_2();
  v14 = v13;
  v15 = type metadata accessor for BulkChallengeData.Participant(0);
  v16 = (v14 + v15[6]);
  v17 = v14 + v15[7];
  v18 = v14 + v15[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15();
  result = (*(v19 + 32))(v14, v11);
  *(v14 + v15[5]) = v10;
  *v16 = v9;
  v16[1] = v8;
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  *v18 = a7;
  *(v18 + 8) = a8 & 1;
  return result;
}

uint64_t static BulkChallengeData.Participant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_37();
  if ((sub_227C77ABC(v2, v3, &qword_27D7E67C0, &unk_227D4FB20) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BulkChallengeData.Participant(0);
  if (*(v1 + *(v4 + 20)) != *(v0 + *(v4 + 20)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_133_1();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_132_4(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_227D4DA78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_177_3();
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_117_3();
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

LABEL_16:
  OUTLINED_FUNCTION_177_3();
  if (v15)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_117_3();
    if (v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_227C78BE8()
{
  OUTLINED_FUNCTION_245();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_5_1(6710642, 0xE300000000000000) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_203_2() & 0xFFFFFFFFFFFFLL | 0x4374000000000000;
    v8 = v4 == v6 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_5_1(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_202();
      v11 = v4 == v9 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_5_1(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = v4 == 0x65726F6373 && v0 == 0xE500000000000000;
        if (v12 || (OUTLINED_FUNCTION_5_1(0x65726F6373, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else if (v4 == 1802396018 && v0 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_5_1(1802396018, 0xE400000000000000);
          OUTLINED_FUNCTION_265_1();
          if (v4)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_227C78D18(char a1)
{
  result = 6710642;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_203_2() & 0xFFFFFFFFFFFFLL | 0x4374000000000000;
      break;
    case 2:
      result = OUTLINED_FUNCTION_202();
      break;
    case 3:
      result = 0x65726F6373;
      break;
    case 4:
      result = 1802396018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227C78DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227C78BE8();
  *a1 = result;
  return result;
}

uint64_t sub_227C78DE4()
{
  sub_227C79048();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C78E1C()
{
  sub_227C79048();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t BulkChallengeData.Participant.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B30, &qword_227D5FA78);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v14[-v6];
  OUTLINED_FUNCTION_192();
  sub_227C79048();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_198_3();
  sub_227B15A74(v8, v9, v10, v11);
  OUTLINED_FUNCTION_5_0();
  sub_227D4DA08();
  if (!v1)
  {
    v12 = type metadata accessor for BulkChallengeData.Participant(0);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9F8();
    v14[13] = 2;
    OUTLINED_FUNCTION_126_2();
    sub_227D4D978();
    OUTLINED_FUNCTION_165_4(v0 + *(v12 + 28));
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_126_2();
    sub_227D4D9B8();
    OUTLINED_FUNCTION_165_4(v0 + *(v12 + 32));
    v14[11] = 4;
    OUTLINED_FUNCTION_126_2();
    sub_227D4D998();
  }

  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_227C79048()
{
  result = qword_27D7FEDF8;
  if (!qword_27D7FEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEDF8);
  }

  return result;
}

uint64_t BulkChallengeData.Participant.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_31_6();
  sub_227B15A74(v2, &qword_27D7E67C0, &unk_227D4FB20, v3);
  sub_227D4CEA8();
  v4 = type metadata accessor for BulkChallengeData.Participant(0);
  MEMORY[0x22AAA68B0](*(v1 + *(v4 + 20)));
  if (*(v1 + *(v4 + 24) + 8))
  {
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_177();
    sub_227D4D048();
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  OUTLINED_FUNCTION_183_4();
  if (v6)
  {
    OUTLINED_FUNCTION_174_4();
  }

  else
  {
    v7 = *v5;
    OUTLINED_FUNCTION_175_2();
    MEMORY[0x22AAA68D0](v7);
  }

  OUTLINED_FUNCTION_183_4();
  if (v6)
  {
    return OUTLINED_FUNCTION_174_4();
  }

  v9 = *v8;
  OUTLINED_FUNCTION_175_2();
  return MEMORY[0x22AAA68B0](v9);
}

void BulkChallengeData.Participant.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_351();
  v28 = v27;
  v61[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v61[2] = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B38, &unk_227D5FA80);
  OUTLINED_FUNCTION_9();
  v62 = v33;
  v63 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  v36 = v61 - v35;
  v37 = type metadata accessor for BulkChallengeData.Participant(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v41 = v40 - v39;
  v64 = v28;
  v42 = OUTLINED_FUNCTION_116_0();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_227C79048();
  sub_227D4DBF8();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_0(v64);
  }

  else
  {
    OUTLINED_FUNCTION_14_4();
    sub_227B15A74(v44, v45, v46, v47);
    sub_227D4D938();
    v48 = OUTLINED_FUNCTION_177();
    v49(v48);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_135_4();
    *(v41 + v37[5]) = sub_227D4D928();
    OUTLINED_FUNCTION_135_4();
    v50 = sub_227D4D8A8();
    v51 = v62;
    OUTLINED_FUNCTION_241_1(v50, v52, v37[6]);
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_135_4();
    v53 = sub_227D4D8E8();
    v54 = v41 + v37[7];
    *v54 = v53;
    *(v54 + 8) = v55 & 1;
    OUTLINED_FUNCTION_135_4();
    v56 = sub_227D4D8C8();
    v57 = v51;
    v58 = v41 + v37[8];
    v60 = v59;
    (*(v57 + 8))(v36, v63);
    *v58 = v56;
    *(v58 + 8) = v60 & 1;
    sub_227C795C4();
    __swift_destroy_boxed_opaque_existential_0(v64);
    OUTLINED_FUNCTION_58();
    sub_227C79618();
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C795C4()
{
  OUTLINED_FUNCTION_37();
  v1(0);
  OUTLINED_FUNCTION_6_15();
  v2 = OUTLINED_FUNCTION_58();
  v3(v2);
  return v0;
}

uint64_t sub_227C79618()
{
  v1 = OUTLINED_FUNCTION_419();
  v2(v1);
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_227C7966C()
{
  v0 = OUTLINED_FUNCTION_40();
  type metadata accessor for BulkChallengeData(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0();
  v1 = OUTLINED_FUNCTION_93_5();

  return v2(v1);
}

uint64_t sub_227C79728@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_62_0();
  v11 = *(v10 + 16);

  return v11(a4, v4 + v8, v9);
}

uint64_t sub_227C797B8()
{
  v0 = OUTLINED_FUNCTION_40();
  type metadata accessor for BulkChallengeData(v0);
  sub_227D492A8();
  OUTLINED_FUNCTION_62_0();
  v1 = OUTLINED_FUNCTION_93_5();

  return v2(v1);
}

uint64_t sub_227C79820()
{
  v0 = OUTLINED_FUNCTION_40();
  type metadata accessor for BulkChallengeData(v0);
  sub_227D492A8();
  OUTLINED_FUNCTION_62_0();
  v1 = OUTLINED_FUNCTION_93_5();

  return v2(v1);
}

uint64_t sub_227C79888()
{
  type metadata accessor for BulkChallengeData(0);
  OUTLINED_FUNCTION_154_3();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C798B8()
{
  type metadata accessor for BulkChallengeData(0);
  OUTLINED_FUNCTION_154_3();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C798E8()
{
  v0 = OUTLINED_FUNCTION_40();
  type metadata accessor for BulkChallengeData(v0);
  return sub_227C6F0A8();
}

uint64_t sub_227C7992C()
{
  type metadata accessor for BulkChallengeData(0);
  OUTLINED_FUNCTION_154_3();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C79984()
{
  type metadata accessor for BulkChallengeData(0);

  return sub_227D4CE58();
}

uint64_t sub_227C799B8()
{
  type metadata accessor for BulkChallengeData(0);

  return sub_227D4CE58();
}

uint64_t BulkChallengeData.init(id:creator:game:startTime:endTime:status:statusMessage:definition:iso8601Duration:attemptLimit:invitees:participants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v21 = type metadata accessor for BulkChallengeData(0);
  v22 = v21[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15();
  (*(v23 + 32))(&a8[v22], a3);
  v24 = v21[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_6_15();
  (*(v25 + 32))(&a8[v24], a4);
  v26 = sub_227D492A8();
  OUTLINED_FUNCTION_62_0();
  v28 = *(v27 + 32);
  OUTLINED_FUNCTION_364();
  v28();
  (v28)(&a8[v21[8]], a5, v26);
  v29 = &a8[v21[9]];
  *v29 = a6;
  *(v29 + 1) = a7;
  v30 = &a8[v21[10]];
  *v30 = a9;
  *(v30 + 1) = a10;
  result = sub_227C79BD8(a11, &a8[v21[11]]);
  v32 = &a8[v21[12]];
  *v32 = a12;
  *(v32 + 1) = a13;
  v33 = &a8[v21[13]];
  *v33 = a14;
  v33[8] = a15 & 1;
  *&a8[v21[14]] = a16;
  *&a8[v21[15]] = a17;
  return result;
}

uint64_t sub_227C79BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static BulkChallengeData.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_104_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_9();
  v28 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v30);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B40, &qword_227D5FA90);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_104();
  v36 = *v21 == *v20 && v21[1] == v20[1];
  if (!v36 && (sub_227D4DA78() & 1) == 0)
  {
    goto LABEL_33;
  }

  v37 = type metadata accessor for BulkChallengeData(0);
  v38 = OUTLINED_FUNCTION_228_1(v37[5]);
  if ((sub_227C77ABC(v38, v39, v40, v41) & 1) == 0)
  {
    goto LABEL_33;
  }

  v42 = OUTLINED_FUNCTION_228_1(v37[6]);
  if ((sub_227C77ABC(v42, v43, v44, v45) & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_228_1(v37[7]);
  if ((sub_227D49268() & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_228_1(v37[8]);
  if ((sub_227D49268() & 1) == 0)
  {
    goto LABEL_33;
  }

  v46 = v37[9];
  v47 = *(v21 + v46);
  v48 = *(v21 + v46 + 8);
  v49 = (v20 + v46);
  v50 = v47 == *v49 && v48 == v49[1];
  if (!v50 && (sub_227D4DA78() & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_133_1();
  if (v53)
  {
    if (!v51)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_132_4(v52);
    v56 = v36 && v54 == v55;
    if (!v56 && (sub_227D4DA78() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v51)
  {
    goto LABEL_33;
  }

  v57 = *(v34 + 48);
  sub_227C6F0A8();
  sub_227C6F0A8();
  OUTLINED_FUNCTION_10_16(v23);
  if (!v36)
  {
    OUTLINED_FUNCTION_141();
    sub_227C6F0A8();
    OUTLINED_FUNCTION_10_16(v23 + v57);
    if (!v58)
    {
      (*(v28 + 32))(v22, v23 + v57, v26);
      sub_227B15A74(&qword_27D7E85F8, &qword_27D7E68E0, &unk_227D50DE0, MEMORY[0x277D0D510]);
      v59 = sub_227D4CF38();
      v60 = *(v28 + 8);
      v60(v22, v26);
      v60(v33, v26);
      sub_227B1DE58(v23, &qword_27D7E8830, &unk_227D5B790);
      if ((v59 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    (*(v28 + 8))(v33, v26);
LABEL_32:
    sub_227B1DE58(v23, &qword_27D7E9B40, &qword_227D5FA90);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_10_16(v23 + v57);
  if (!v36)
  {
    goto LABEL_32;
  }

  sub_227B1DE58(v23, &qword_27D7E8830, &unk_227D5B790);
LABEL_35:
  OUTLINED_FUNCTION_133_1();
  if (v63)
  {
    if (!v61)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_132_4(v62);
    v66 = v36 && v64 == v65;
    if (!v66 && (sub_227D4DA78() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v61)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_177_3();
  if (v68)
  {
    if (!v67)
    {
      goto LABEL_33;
    }
  }

  else
  {
    OUTLINED_FUNCTION_117_3();
    if (v69)
    {
      goto LABEL_33;
    }
  }

  v70 = v37[14];
  v71 = *(v21 + v70);
  v72 = *(v20 + v70);
  if (v71)
  {
    if (!v72)
    {
      goto LABEL_33;
    }

    sub_227D4CE58();
    v73 = sub_227C86F4C(v71, v72);

    if ((v73 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v72)
  {
    goto LABEL_33;
  }

  v74 = v37[15];
  v75 = *(v20 + v74);
  if (*(v21 + v74) && v75)
  {
    sub_227D4CE58();
    v76 = OUTLINED_FUNCTION_57_0();
    sub_227C87340(v76, v77);
    OUTLINED_FUNCTION_265_1();
  }

LABEL_33:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C7A0B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_1(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F7461657263 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x726F7461657263, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667175 && a2 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_1(1701667175, 0xE400000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
        if (v8 || (OUTLINED_FUNCTION_5_1(0x6D69547472617473, 0xE900000000000065) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
          if (v9 || (OUTLINED_FUNCTION_5_1(0x656D6954646E65, 0xE700000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = OUTLINED_FUNCTION_238();
            v11 = v3 && a2 == 0xE600000000000000;
            if (v11 || (OUTLINED_FUNCTION_5_1(v10, 0xE600000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = OUTLINED_FUNCTION_201_2();
              v14 = a1 == v12 && a2 == v13;
              if (v14 || (OUTLINED_FUNCTION_5_1(v12, v13) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v15 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
                if (v15 || (OUTLINED_FUNCTION_5_1(0x6974696E69666564, 0xEA00000000006E6FLL) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v16 = OUTLINED_FUNCTION_200_1();
                  v18 = a1 == v16 && a2 == v17;
                  if (v18 || (OUTLINED_FUNCTION_5_1(v16, v17) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v19 = OUTLINED_FUNCTION_203_2() & 0xFFFFFFFFFFFFLL | 0x4C74000000000000;
                    v21 = a1 == v19 && a2 == v20;
                    if (v21 || (OUTLINED_FUNCTION_5_1(v19, v20) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v22 = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
                      v23 = a1 == v22 && a2 == 0xE800000000000000;
                      if (v23 || (OUTLINED_FUNCTION_5_1(v22, 0xE800000000000000) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v24 = OUTLINED_FUNCTION_224_1();
                        if (a1 == v24 && a2 == v25)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_5_1(v24, v25);
                          OUTLINED_FUNCTION_265_1();
                          if (a1)
                          {
                            return 11;
                          }

                          else
                          {
                            return 12;
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

uint64_t sub_227C7A35C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x726F7461657263;
      break;
    case 2:
      result = 1701667175;
      break;
    case 3:
      result = 0x6D69547472617473;
      break;
    case 4:
      result = 0x656D6954646E65;
      break;
    case 5:
      result = 0x737574617473;
      break;
    case 6:
      result = OUTLINED_FUNCTION_201_2();
      break;
    case 7:
      result = 0x6974696E69666564;
      break;
    case 8:
      result = OUTLINED_FUNCTION_200_1();
      break;
    case 9:
      result = OUTLINED_FUNCTION_203_2() & 0xFFFFFFFFFFFFLL | 0x4C74000000000000;
      break;
    case 10:
      result = OUTLINED_FUNCTION_174_1() & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
      break;
    case 11:
      result = OUTLINED_FUNCTION_224_1();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227C7A4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227C7A0B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227C7A4DC()
{
  sub_227C876A4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C7A514()
{
  sub_227C876A4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void BulkChallengeData.encode(to:)()
{
  OUTLINED_FUNCTION_351();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B48, &qword_227D5FA98);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_192();
  sub_227C876A4();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  OUTLINED_FUNCTION_104_4();
  sub_227D4D9C8();
  if (!v1)
  {
    v27 = type metadata accessor for BulkChallengeData(0);
    v7 = OUTLINED_FUNCTION_299_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_197_3();
    sub_227B15A74(v9, v10, v11, v12);
    OUTLINED_FUNCTION_51_8();
    sub_227D4DA08();
    v13 = OUTLINED_FUNCTION_299_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_197_3();
    sub_227B15A74(v15, v16, v17, v18);
    OUTLINED_FUNCTION_51_8();
    sub_227D4DA08();
    sub_227D492A8();
    OUTLINED_FUNCTION_7_19();
    sub_227C78164(v19, v20, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_104_4();
    sub_227D4DA08();
    OUTLINED_FUNCTION_104_4();
    sub_227D4DA08();
    OUTLINED_FUNCTION_46_6(5);
    sub_227D4D9C8();
    OUTLINED_FUNCTION_46_6(6);
    sub_227D4D978();
    v21 = OUTLINED_FUNCTION_299_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_197_3();
    sub_227B15A74(v23, v24, v25, v26);
    OUTLINED_FUNCTION_51_8();
    sub_227D4D9A8();
    OUTLINED_FUNCTION_46_6(8);
    sub_227D4D978();
    OUTLINED_FUNCTION_165_4(v0 + *(v27 + 52));
    OUTLINED_FUNCTION_46_6(9);
    sub_227D4D998();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B50, &qword_227D5FAA0);
    sub_227C876F8();
    OUTLINED_FUNCTION_104_4();
    sub_227D4D9A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B68, &qword_227D5FAA8);
    sub_227C877AC();
    OUTLINED_FUNCTION_104_4();
    sub_227D4D9A8();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_352();
}

void BulkChallengeData.hash(into:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_9();
  v35 = v4;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  v34 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v7);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  sub_227D4D048();
  v11 = type metadata accessor for BulkChallengeData(0);
  v12 = OUTLINED_FUNCTION_299_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v14 = MEMORY[0x277D0D508];
  sub_227B15A74(&qword_27D7E6868, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D508]);
  OUTLINED_FUNCTION_261_1();
  v15 = OUTLINED_FUNCTION_299_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_197_3();
  sub_227B15A74(v17, v18, v19, v14);
  OUTLINED_FUNCTION_261_1();
  sub_227D492A8();
  OUTLINED_FUNCTION_7_19();
  sub_227C78164(v20, v21, MEMORY[0x277CC9588]);
  sub_227D4CEA8();
  sub_227D4CEA8();
  sub_227D4D048();
  if (*(v0 + v11[10] + 8))
  {
    OUTLINED_FUNCTION_175_2();
    sub_227D4D048();
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  sub_227C6F0A8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_174_4();
  }

  else
  {
    v23 = v34;
    v22 = v35;
    (*(v35 + 32))(v34, v10, v3);
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_31_6();
    sub_227B15A74(v24, v25, v26, v27);
    sub_227D4CEA8();
    (*(v22 + 8))(v23, v3);
  }

  if (*(v0 + v11[12] + 8))
  {
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_177();
    sub_227D4D048();
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  OUTLINED_FUNCTION_183_4();
  if (v29)
  {
    OUTLINED_FUNCTION_174_4();
  }

  else
  {
    v30 = *v28;
    OUTLINED_FUNCTION_175_2();
    MEMORY[0x22AAA68B0](v30);
  }

  v31 = *(v0 + v11[14]);
  if (v31)
  {
    OUTLINED_FUNCTION_175_2();
    sub_227C87AC0(v2, v31);
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  if (*(v0 + v11[15]))
  {
    OUTLINED_FUNCTION_175_2();
    v32 = OUTLINED_FUNCTION_9_2();
    sub_227C87860(v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_174_4();
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C7ACC0(uint64_t (*a1)(_BYTE *))
{
  sub_227D4DB58();
  a1(v3);
  return sub_227D4DB98();
}

void BulkChallengeData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  v98 = v20;
  v25 = v24;
  v87[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v27);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  v96 = v87 - v29;
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v93 = v31;
  v94 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x28223BE20](v32);
  v34 = v87 - v33;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v89 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105_1();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v90 = v37;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  v40 = v87 - v39;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B88, &qword_227D5FAB0);
  OUTLINED_FUNCTION_9();
  v42 = v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_104();
  v100 = type metadata accessor for BulkChallengeData(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v99 = (v46 - v45);
  v47 = v25[3];
  v97 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v47);
  sub_227C876A4();
  v88 = v22;
  v48 = v98;
  sub_227D4DBF8();
  if (v48)
  {
    v98 = v48;
    LODWORD(v95) = 0;
    __swift_destroy_boxed_opaque_existential_0(v97);
    LODWORD(v96) = 0;
    if (v95)
    {
    }

    if (v96)
    {
    }
  }

  else
  {
    v49 = v34;
    v50 = v23;
    v87[0] = v42;
    v51 = sub_227D4D8F8();
    v52 = v99;
    *v99 = v51;
    v52[1] = v53;
    OUTLINED_FUNCTION_14_4();
    sub_227B15A74(v54, v55, v56, v57);
    v58 = v92;
    sub_227D4D938();
    v59 = v100;
    (*(v90 + 32))(v52 + v100[5], v40, v58);
    OUTLINED_FUNCTION_14_4();
    sub_227B15A74(v60, v61, v62, v63);
    v64 = v91;
    sub_227D4D938();
    (*(v89 + 32))(v52 + v59[6], v21, v64);
    OUTLINED_FUNCTION_7_19();
    sub_227C78164(v65, v66, MEMORY[0x277CC95A0]);
    v67 = v94;
    sub_227D4D938();
    v68 = *(v93 + 32);
    v68(v52 + v100[7], v49, v67);
    sub_227D4D938();
    v69 = v100;
    v68(v52 + v100[8], v50, v67);
    OUTLINED_FUNCTION_130_1(5);
    v70 = sub_227D4D8F8();
    OUTLINED_FUNCTION_241_1(v70, v71, v69[9]);
    OUTLINED_FUNCTION_130_1(6);
    v72 = sub_227D4D8A8();
    OUTLINED_FUNCTION_241_1(v72, v73, v69[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    LOBYTE(a10) = 7;
    OUTLINED_FUNCTION_14_4();
    sub_227B15A74(v74, &qword_27D7E68E0, &unk_227D50DE0, v75);
    v76 = v96;
    sub_227D4D8D8();
    v77 = v100;
    sub_227C79BD8(v76, v52 + v100[11]);
    OUTLINED_FUNCTION_130_1(8);
    v78 = sub_227D4D8A8();
    LODWORD(v96) = 1;
    OUTLINED_FUNCTION_241_1(v78, v79, v77[12]);
    OUTLINED_FUNCTION_130_1(9);
    v80 = sub_227D4D8C8();
    v98 = 0;
    v81 = v99 + v100[13];
    *v81 = v80;
    v81[8] = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B50, &qword_227D5FAA0);
    v101 = 10;
    v83 = sub_227C87D14();
    OUTLINED_FUNCTION_158_2(v83);
    v98 = 0;
    *(v99 + v100[14]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9B68, &qword_227D5FAA8);
    v101 = 11;
    v84 = sub_227C87DC8();
    OUTLINED_FUNCTION_158_2(v84);
    v98 = 0;
    v85 = OUTLINED_FUNCTION_118_2();
    v86(v85);
    *(v99 + v100[15]) = a10;
    sub_227C795C4();
    __swift_destroy_boxed_opaque_existential_0(v97);
    OUTLINED_FUNCTION_58();
    sub_227C79618();
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C7B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_227D4DB58();
  a4(v6);
  return sub_227D4DB98();
}

uint64_t static $DistributedIntegrationTestsServiceProtocol.resolve(id:using:)()
{
  v3 = OUTLINED_FUNCTION_235_0();
  type metadata accessor for $DistributedIntegrationTestsServiceProtocol(v3);
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  sub_227C78164(v4, v5, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_0_45();
  sub_227C78164(v6, v7, &protocol conformance descriptor for $DistributedIntegrationTestsServiceProtocol);
  v8 = v2;
  OUTLINED_FUNCTION_144_3();
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v8 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_6_15();
    (*(v12 + 16))(v10 + v11, v1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_actorSystem) = v0;
  }

  return v10;
}

uint64_t $DistributedIntegrationTestsServiceProtocol.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  v4 = sub_227C78164(v2, v3, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_262_0(v4);
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v5 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedIntegrationTestsServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v1 = swift_allocObject();
  $DistributedIntegrationTestsServiceProtocol.init(actorSystem:)();
  return v1;
}

void $DistributedIntegrationTestsServiceProtocol.init(actorSystem:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v13 = sub_227D49EF8();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_actorSystem) = v2;
  type metadata accessor for $DistributedIntegrationTestsServiceProtocol(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  sub_227C78164(v9, v10, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_0_45();
  sub_227C78164(v11, v12, &protocol conformance descriptor for $DistributedIntegrationTestsServiceProtocol);

  OUTLINED_FUNCTION_155();
  sub_227D493B8();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC16GameServicesCore43_DistributedIntegrationTestsServiceProtocol_id, v8, v13);

  OUTLINED_FUNCTION_155();
  sub_227D49398();

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C7BC04@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227C7BC4C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_19_11(&unk_227D60CD0);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t DistributedIntegrationTestsServiceProtocol<>.describe(challenges:)()
{
  OUTLINED_FUNCTION_6();
  sub_227D493F8();
  OUTLINED_FUNCTION_185();
  v0 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_227D49458();
  v1[10] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v1[13] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49D58();
  v1[16] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227C7BD78()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_19_11(&unk_227D60CC8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t sub_227C7BE0C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_227D49458();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_227D49D58();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C7BF90, 0, 0);
}

uint64_t sub_227C7BF90()
{
  OUTLINED_FUNCTION_111();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_11(&unk_227D60CD0);
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_227C7C2E8;
    OUTLINED_FUNCTION_53(v0[4]);
    OUTLINED_FUNCTION_72();

    return v5();
  }

  v1 = v0[14];
  v0[15] = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_59_7();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_102_0();
    v3(v2);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_72();

    return v5();
  }

  v0[2] = v0[4];
  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_164_3();
  OUTLINED_FUNCTION_15_13();
  sub_227D49478();
  OUTLINED_FUNCTION_6_16();
  sub_227C8802C(v8, v9, v10);
  OUTLINED_FUNCTION_5_20();
  v14 = sub_227C8802C(v11, v12, v13);
  OUTLINED_FUNCTION_52_7(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  OUTLINED_FUNCTION_263_1(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7240, &unk_227D5FAD0);
  sub_227B87DE0();
  v16 = sub_227B87F18();
  OUTLINED_FUNCTION_45_7(v16);
  sub_227D49D08();
  OUTLINED_FUNCTION_57();
  sub_227D49468();
  v18 = swift_task_alloc();
  v0[17] = v18;
  OUTLINED_FUNCTION_0_45();
  sub_227C78164(v19, v20, &protocol conformance descriptor for $DistributedIntegrationTestsServiceProtocol);
  OUTLINED_FUNCTION_47();
  *v18 = v21;
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x282164B00](v22);
}

uint64_t sub_227C7C2E8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_164();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227C7C42C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C7C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_221_1();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);
  OUTLINED_FUNCTION_161_2();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C7C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_221_1();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);
  OUTLINED_FUNCTION_161_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C7C7BC()
{
  OUTLINED_FUNCTION_253_1();
  OUTLINED_FUNCTION_28_1();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[18];
    OUTLINED_FUNCTION_236();
    sub_227D493E8();
    v0[19] = v0[2];
    OUTLINED_FUNCTION_173_3();
    OUTLINED_FUNCTION_70_6();
    sub_227D49D48();
    if (v1)
    {
      v2 = OUTLINED_FUNCTION_102_0();
      v3(v2);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_98_0();

      return v17();
    }

    else
    {
      v0[3] = v0[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_244();
      OUTLINED_FUNCTION_15_13();
      sub_227D49478();
      OUTLINED_FUNCTION_6_16();
      sub_227C8802C(v8, v9, v10);
      OUTLINED_FUNCTION_5_20();
      v14 = sub_227C8802C(v11, v12, v13);
      OUTLINED_FUNCTION_52_7(v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_263_1(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7240, &unk_227D5FAD0);
      sub_227B87DE0();
      v16 = sub_227B87F18();
      OUTLINED_FUNCTION_45_7(v16);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v0[20] = v19;
      *v19 = v20;
      v19[1] = sub_227C7CB68;
      OUTLINED_FUNCTION_65_5();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B00](v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_227C7CD10;
    OUTLINED_FUNCTION_53(v0[5]);
    OUTLINED_FUNCTION_98_0();

    return v5();
  }
}

uint64_t sub_227C7CB68()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C7CC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_216_1();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C7CD10()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_164();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227C7CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_216_1();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C7CF04()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_19_11(&unk_227D60CC0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t DistributedIntegrationTestsServiceProtocol<>.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  sub_227D493F8();
  OUTLINED_FUNCTION_185();
  v0 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_6();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v9 = sub_227D49458();
  v1[12] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[15] = v11;
  OUTLINED_FUNCTION_5(v11);
  v1[16] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[17] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[18] = v13;
  v1[19] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v1[20] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[21] = v15;
  v1[22] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[23] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[24] = v17;
  v1[25] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v1[26] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[27] = v19;
  v1[28] = OUTLINED_FUNCTION_30();
  v20 = sub_227D49D58();
  v1[29] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[30] = v21;
  v1[31] = OUTLINED_FUNCTION_30();
  v22 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227C7D034()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_19_11(&unk_227D60CB8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227C7D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_227D49458();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v11 = sub_227D49D58();
  v5[25] = v11;
  v5[26] = *(v11 - 8);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C7D3CC, 0, 0);
}

uint64_t sub_227C7D3CC()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[27];
    v0[28] = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_59_7();
    if (v1)
    {
      v2 = OUTLINED_FUNCTION_102_0();
      v3(v2);

      v20 = OUTLINED_FUNCTION_122_2();
      OUTLINED_FUNCTION_115_0(v20);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v21();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_129_2();
      v10(v9);
      OUTLINED_FUNCTION_26_9();
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_186_3(v11, v12, v13, v14);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_186_3(v15, v16, v17, v18);
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      OUTLINED_FUNCTION_266_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
      OUTLINED_FUNCTION_128_2();
      OUTLINED_FUNCTION_164_3();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B88988();
      v19 = sub_227B88AC0();
      OUTLINED_FUNCTION_52_7(v19);
      sub_227C6F0A8();
      OUTLINED_FUNCTION_68_8();
      OUTLINED_FUNCTION_144_3();
      sub_227D49478();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E72B0, &qword_227D5FBB0);
      OUTLINED_FUNCTION_29_8();
      OUTLINED_FUNCTION_267_1(v23, v24, v25, v26);
      OUTLINED_FUNCTION_28_10();
      v31 = OUTLINED_FUNCTION_267_1(v27, v28, v29, v30);
      OUTLINED_FUNCTION_45_7(v31);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v32 = swift_task_alloc();
      v0[30] = v32;
      OUTLINED_FUNCTION_0_45();
      sub_227C78164(v33, v34, &protocol conformance descriptor for $DistributedIntegrationTestsServiceProtocol);
      OUTLINED_FUNCTION_48_0();
      *v32 = v35;
      OUTLINED_FUNCTION_191_4();
      OUTLINED_FUNCTION_64_4();
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v36);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_11(&unk_227D60CC0);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[29] = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_107_0(v4);
    OUTLINED_FUNCTION_176_1();

    return v6();
  }
}

uint64_t sub_227C7DA08()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227C7DBBC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C7E114()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[31];
    OUTLINED_FUNCTION_236();
    sub_227D493E8();
    v0[32] = v0[2];
    OUTLINED_FUNCTION_173_3();
    OUTLINED_FUNCTION_70_6();
    sub_227D49D48();
    if (v1)
    {
      v2 = OUTLINED_FUNCTION_102_0();
      v3(v2);

      OUTLINED_FUNCTION_259_0(v0[31]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v20();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_129_2();
      v10(v9);
      OUTLINED_FUNCTION_26_9();
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_186_3(v11, v12, v13, v14);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_186_3(v15, v16, v17, v18);
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      v0[3] = v0[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
      OUTLINED_FUNCTION_128_2();
      OUTLINED_FUNCTION_244();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B88988();
      v19 = sub_227B88AC0();
      OUTLINED_FUNCTION_52_7(v19);
      sub_227C6F0A8();
      OUTLINED_FUNCTION_68_8();
      OUTLINED_FUNCTION_144_3();
      sub_227D49478();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E72B0, &qword_227D5FBB0);
      OUTLINED_FUNCTION_29_8();
      OUTLINED_FUNCTION_267_1(v22, v23, v24, v25);
      OUTLINED_FUNCTION_28_10();
      v30 = OUTLINED_FUNCTION_267_1(v26, v27, v28, v29);
      OUTLINED_FUNCTION_45_7(v30);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v0[33] = v31;
      *v31 = v32;
      v31[1] = sub_227C7E7D8;
      OUTLINED_FUNCTION_65_5();
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v33);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[35] = v4;
    *v4 = v5;
    v4[1] = sub_227C7E9CC;
    OUTLINED_FUNCTION_176_1();

    return v6();
  }
}

uint64_t sub_227C7E7D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C7E9CC()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227C7EC70()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_19_11(&unk_227D60CB0);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t DistributedIntegrationTestsServiceProtocol<>.listChallengeStates(player:challenges:)()
{
  OUTLINED_FUNCTION_6();
  sub_227D493F8();
  OUTLINED_FUNCTION_185();
  v0 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_6();
  v6 = OUTLINED_FUNCTION_257_1(v1, v2, v3, v4, v5);
  v0[11] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[12] = v7;
  v0[13] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v0[14] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[17] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[18] = v11;
  v0[19] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[20] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[21] = v13;
  v0[22] = OUTLINED_FUNCTION_30();
  v14 = sub_227D49D58();
  v0[23] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[24] = v15;
  v0[25] = OUTLINED_FUNCTION_30();
  v16 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227C7EDA0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_19_11(&unk_227D60CA8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t sub_227C7EE38(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_227D49458();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_227D49D58();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C7F090, 0, 0);
}

uint64_t sub_227C7F090()
{
  OUTLINED_FUNCTION_253_1();
  OUTLINED_FUNCTION_28_1();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[21];
    v0[22] = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_59_7();
    if (v1)
    {
      v2 = OUTLINED_FUNCTION_102_0();
      v3(v2);

      OUTLINED_FUNCTION_62_2();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_98_0();

      return v26();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_129_2();
      v9(v8);
      OUTLINED_FUNCTION_26_9();
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_186_3(v10, v11, v12, v13);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_186_3(v14, v15, v16, v17);
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      OUTLINED_FUNCTION_266_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_164_3();
      OUTLINED_FUNCTION_15_13();
      sub_227D49478();
      OUTLINED_FUNCTION_6_16();
      sub_227C8802C(v18, v19, v20);
      OUTLINED_FUNCTION_5_20();
      v24 = sub_227C8802C(v21, v22, v23);
      OUTLINED_FUNCTION_52_7(v24);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_263_1(v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E72F0, &unk_227D51590);
      sub_227B8B108();
      v28 = sub_227B8B240();
      OUTLINED_FUNCTION_45_7(v28);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v29 = swift_task_alloc();
      v0[24] = v29;
      OUTLINED_FUNCTION_0_45();
      sub_227C78164(v30, v31, &protocol conformance descriptor for $DistributedIntegrationTestsServiceProtocol);
      OUTLINED_FUNCTION_47();
      *v29 = v32;
      OUTLINED_FUNCTION_230_0();
      OUTLINED_FUNCTION_64_4();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B00](v33);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_11(&unk_227D60CB0);
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_162_0(v4);
    OUTLINED_FUNCTION_53(v0[4]);
    OUTLINED_FUNCTION_98_0();

    return v5();
  }
}

uint64_t sub_227C7F548()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_62_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_208_0();
  }

  return v5(v4);
}

uint64_t sub_227C7F6D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C7FB4C()
{
  OUTLINED_FUNCTION_253_1();
  OUTLINED_FUNCTION_28_1();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[25];
    OUTLINED_FUNCTION_236();
    sub_227D493E8();
    v0[26] = v0[2];
    OUTLINED_FUNCTION_173_3();
    OUTLINED_FUNCTION_70_6();
    sub_227D49D48();
    if (v1)
    {
      v2 = OUTLINED_FUNCTION_102_0();
      v3(v2);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_98_0();

      return v26();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_129_2();
      v9(v8);
      OUTLINED_FUNCTION_26_9();
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_186_3(v10, v11, v12, v13);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_186_3(v14, v15, v16, v17);
      OUTLINED_FUNCTION_72_5();
      sub_227D49D18();
      v0[3] = v0[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_244();
      OUTLINED_FUNCTION_15_13();
      sub_227D49478();
      OUTLINED_FUNCTION_6_16();
      sub_227C8802C(v18, v19, v20);
      OUTLINED_FUNCTION_5_20();
      v24 = sub_227C8802C(v21, v22, v23);
      OUTLINED_FUNCTION_52_7(v24);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_263_1(v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E72F0, &unk_227D51590);
      sub_227B8B108();
      v28 = sub_227B8B240();
      OUTLINED_FUNCTION_45_7(v28);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v0[27] = v29;
      *v29 = v30;
      v29[1] = sub_227C80084;
      OUTLINED_FUNCTION_65_5();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B00](v31);
    }
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_227C80244;
    OUTLINED_FUNCTION_53(v0[5]);
    OUTLINED_FUNCTION_98_0();

    return v5();
  }
}

uint64_t sub_227C80084()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C80244()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_62_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_208_0();
  }

  return v5(v4);
}

uint64_t sub_227C80498()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_19_11(&unk_227D60CA0);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t DistributedIntegrationTestsServiceProtocol<>.load(bulkData:)()
{
  OUTLINED_FUNCTION_6();
  sub_227D493F8();
  OUTLINED_FUNCTION_185();
  v0 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[4] = v5;
  v6 = sub_227D49458();
  v1[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BC0, &qword_227D5FD78);
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49D58();
  v1[15] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227C805D0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_19_11(&unk_227D60C98);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t sub_227C80664(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227D49458();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BC0, &qword_227D5FD78);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_227D49D58();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C807E8, 0, 0);
}

uint64_t sub_227C807E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_11(&unk_227D60CA0);
    a9 = v16;
    v17 = swift_task_alloc();
    v12[15] = v17;
    *v17 = v12;
    v17[1] = sub_227C80A98;
    OUTLINED_FUNCTION_53(v12[3]);
    OUTLINED_FUNCTION_33();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v13 = v12[13];
  v12[14] = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_59_7();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_102_0();
    v15(v14);

    OUTLINED_FUNCTION_90_1();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_33();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v12[2] = v12[3];
  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BC8, &unk_227D5FD80);
  OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_164_3();
  OUTLINED_FUNCTION_182_1();
  sub_227D49478();
  sub_227C887A8();
  v27 = sub_227C8885C();
  OUTLINED_FUNCTION_52_7(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  sub_227D49D28();
  sub_227D49D08();
  OUTLINED_FUNCTION_57();
  sub_227D49468();
  v28 = swift_task_alloc();
  v12[16] = v28;
  OUTLINED_FUNCTION_0_45();
  sub_227C78164(v29, v30, &protocol conformance descriptor for $DistributedIntegrationTestsServiceProtocol);
  OUTLINED_FUNCTION_48_0();
  *v28 = v31;
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_190_4();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x282164B10](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_227C80A98()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227C80BCC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C80CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_218_2();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);
  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C80D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_218_2();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C80F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_32();
    v16 = swift_task_alloc();
    v12[21] = v16;
    *v16 = v12;
    v16[1] = sub_227C81438;
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_149_1();

    __asm { BRAA            X3, X16 }
  }

  v13 = v12[17];
  OUTLINED_FUNCTION_236();
  sub_227D493E8();
  v12[18] = v12[2];
  OUTLINED_FUNCTION_173_3();
  OUTLINED_FUNCTION_70_6();
  sub_227D49D48();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_102_0();
    v15(v14);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_149_1();

    __asm { BRAA            X1, X16 }
  }

  v12[3] = v12[4];
  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BC8, &unk_227D5FD80);
  OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_182_1();
  sub_227D49478();
  sub_227C887A8();
  v19 = sub_227C8885C();
  OUTLINED_FUNCTION_52_7(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  sub_227D49D28();
  sub_227D49D08();
  OUTLINED_FUNCTION_57();
  sub_227D49468();
  v22 = swift_task_alloc();
  v12[19] = v22;
  *v22 = v12;
  v22[1] = sub_227C81294;
  OUTLINED_FUNCTION_53(v12[8]);
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_149_1();

  return MEMORY[0x282164B10](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227C81294()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C8138C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_217_3();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C81438()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227C8156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_217_3();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C8161C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_19_11(&unk_227D60C90);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t DistributedIntegrationTestsServiceProtocol<>.purge(challengeIDPrefix:)()
{
  OUTLINED_FUNCTION_6();
  sub_227D493F8();
  OUTLINED_FUNCTION_185();
  v0 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_6();
  v6 = OUTLINED_FUNCTION_257_1(v1, v2, v3, v4, v5);
  v0[11] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[12] = v7;
  v0[13] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BF0, &unk_227D5FE20);
  v0[14] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49D58();
  v0[17] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[18] = v11;
  v0[19] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227C8174C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_19_11(&unk_227D60C88);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t sub_227C817E4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_227D49458();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BF0, &unk_227D5FE20);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_227D49D58();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C8196C, 0, 0);
}

uint64_t sub_227C8196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[15];
    v12[16] = $DistributedIntegrationTestsServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_59_7();
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_102_0();
      v15(v14);

      OUTLINED_FUNCTION_215_3();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      v27 = v12[5];
      v12[2] = v12[4];
      v12[3] = v27;
      sub_227D4CE58();
      OUTLINED_FUNCTION_164_3();
      OUTLINED_FUNCTION_136_2();
      sub_227D49478();
      OUTLINED_FUNCTION_141();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      sub_227D49468();
      v36 = swift_task_alloc();
      v12[18] = v36;
      OUTLINED_FUNCTION_0_45();
      sub_227C78164(v37, v38, &protocol conformance descriptor for $DistributedIntegrationTestsServiceProtocol);
      OUTLINED_FUNCTION_48_0();
      *v36 = v39;
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_190_4();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_11(&unk_227D60C90);
    v49 = v16;
    v17 = swift_task_alloc();
    v12[17] = v17;
    *v17 = v12;
    OUTLINED_FUNCTION_162_0(v17);
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_33();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, v49, a10, a11, a12);
  }
}

uint64_t sub_227C81C2C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227C81D60()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C81E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_214_2();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);
  OUTLINED_FUNCTION_215_3();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C81EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_214_2();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C820E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_32();
    v16 = swift_task_alloc();
    v12[23] = v16;
    *v16 = v12;
    v16[1] = sub_227C825D0;
    OUTLINED_FUNCTION_53(v12[5]);
    OUTLINED_FUNCTION_149_1();

    __asm { BRAA            X4, X16 }
  }

  v13 = v12[19];
  OUTLINED_FUNCTION_236();
  sub_227D493E8();
  v12[20] = v12[4];
  OUTLINED_FUNCTION_173_3();
  OUTLINED_FUNCTION_70_6();
  sub_227D49D48();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_102_0();
    v15(v14);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_149_1();

    __asm { BRAA            X1, X16 }
  }

  v19 = v12[6];
  v12[2] = v12[5];
  v12[3] = v19;
  sub_227D4CE58();
  OUTLINED_FUNCTION_164_3();
  OUTLINED_FUNCTION_136_2();
  sub_227D49478();
  OUTLINED_FUNCTION_141();
  sub_227D49D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  sub_227D49D28();
  sub_227D49D08();
  sub_227D49468();
  v22 = swift_task_alloc();
  v12[21] = v22;
  *v22 = v12;
  v22[1] = sub_227C8242C;
  OUTLINED_FUNCTION_53(v12[10]);
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_149_1();

  return MEMORY[0x282164B10](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227C8242C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C82524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_209_3();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C825D0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227C82704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_209_3();
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  v14 = OUTLINED_FUNCTION_85();
  v15(v14);
  v16 = OUTLINED_FUNCTION_22_2();
  v17(v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_227C82964()
{
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v0 = OUTLINED_FUNCTION_93_5();

  return v1(v0);
}

uint64_t sub_227C829D4()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BCC8);
  v1 = OUTLINED_FUNCTION_58();
  __swift_project_value_buffer(v1, v2);
  return sub_227D49E88();
}

uint64_t sub_227C82A1C()
{
  if (_MergedGlobals_10 != -1)
  {
    OUTLINED_FUNCTION_125_1(&_MergedGlobals_10);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BCC8);
}

uint64_t static IntegrationTestsService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_10 != -1)
  {
    OUTLINED_FUNCTION_125_1(&_MergedGlobals_10);
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BCC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t IntegrationTestsService.__allocating_init(actorSystem:dataProvider:)()
{
  OUTLINED_FUNCTION_104_0();
  v0 = swift_allocObject();
  IntegrationTestsService.init(actorSystem:dataProvider:)();
  return v0;
}

void IntegrationTestsService.init(actorSystem:dataProvider:)()
{
  OUTLINED_FUNCTION_11();
  v15 = v1;
  v3 = v2;
  v14 = sub_227D49EF8();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC16GameServicesCore23IntegrationTestsService_actorSystem) = v3;
  type metadata accessor for IntegrationTestsService(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  sub_227C78164(v10, v11, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_2_31();
  sub_227C78164(v12, v13, &protocol conformance descriptor for IntegrationTestsService);

  sub_227D493B8();
  (*(v5 + 32))(v0 + OBJC_IVAR____TtC16GameServicesCore23IntegrationTestsService_id, v9, v14);
  *(v0 + OBJC_IVAR____TtC16GameServicesCore23IntegrationTestsService_dataProvider) = v15;

  OUTLINED_FUNCTION_177();
  sub_227D49398();

  OUTLINED_FUNCTION_8_1();
}

uint64_t IntegrationTestsService.describe(challenges:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v1[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C82E64()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[14];
    v2 = v0[4];
    OUTLINED_FUNCTION_36();
    v0[2] = v2;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_15_13();
    sub_227D49478();
    OUTLINED_FUNCTION_6_16();
    sub_227C8802C(v3, v4, v5);
    OUTLINED_FUNCTION_5_20();
    sub_227C8802C(v6, v7, v8);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v1)
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v9 = OUTLINED_FUNCTION_57_0();
      v10(v9);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_54_4();

      return v11();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7240, &unk_227D5FAD0);
      sub_227B87DE0();
      sub_227B87F18();
      OUTLINED_FUNCTION_364();
      sub_227D49D38();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v17 = swift_task_alloc();
      v0[15] = v17;
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_2_31();
      sub_227C78164(v18, v19, &protocol conformance descriptor for IntegrationTestsService);
      OUTLINED_FUNCTION_47();
      *v17 = v20;
      OUTLINED_FUNCTION_232_0();
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v21);
    }
  }

  else
  {
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_227C8334C;
    OUTLINED_FUNCTION_53(v0[4]);
    OUTLINED_FUNCTION_54_4();

    return sub_227C83538(v15);
  }
}

uint64_t sub_227C831AC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C832A4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_83();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_161_2();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227C8334C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_164();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227C83490()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_83();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_161_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227C83538(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227C83554, v1);
}

uint64_t sub_227C83554()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227C8C5A8;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B3541C();
}

uint64_t IntegrationTestsService.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_227D49458();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[11] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v1[16] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[19] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[20] = v14;
  v1[21] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v1[22] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[23] = v16;
  v1[24] = OUTLINED_FUNCTION_30();
  v17 = sub_227D49D58();
  v1[25] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[26] = v18;
  v1[27] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227C8387C()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_173();
    v3(v2);
    OUTLINED_FUNCTION_34_8();
    sub_227D49478();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_198_3();
    sub_227B15A74(v4, v5, v6, v7);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_198_3();
    sub_227B15A74(v8, v9, v10, v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v1)
    {
      (*(v0[23] + 8))(v0[24], v0[22]);
      v12 = OUTLINED_FUNCTION_57_0();
      v13(v12);
      v22 = OUTLINED_FUNCTION_122_2();
      OUTLINED_FUNCTION_115_0(v22);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_72();

      return v23();
    }

    else
    {
      OUTLINED_FUNCTION_266_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
      OUTLINED_FUNCTION_128_2();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B88988();
      sub_227B88AC0();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      sub_227C6F0A8();
      OUTLINED_FUNCTION_68_8();
      sub_227D49478();
      sub_227B15FB0();
      sub_227B16064();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E72B0, &qword_227D5FBB0);
      OUTLINED_FUNCTION_29_8();
      sub_227B15A74(v25, &qword_27D7E72B0, &qword_227D5FBB0, v26);
      OUTLINED_FUNCTION_28_10();
      sub_227B15A74(v27, &qword_27D7E72B0, &qword_227D5FBB0, v28);
      OUTLINED_FUNCTION_364();
      sub_227D49D38();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v29 = swift_task_alloc();
      v0[28] = v29;
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_2_31();
      sub_227C78164(v30, v31, &protocol conformance descriptor for IntegrationTestsService);
      OUTLINED_FUNCTION_48_0();
      *v29 = v32;
      OUTLINED_FUNCTION_191_4();
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v33);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[30] = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_107_0(v14);
    OUTLINED_FUNCTION_72();

    return sub_227C840C0(v16, v17, v18, v19);
  }
}

uint64_t sub_227C83DF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C840C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C840E4, v4);
}

uint64_t sub_227C840E4()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_227B417C4;

  return sub_227B35538();
}

uint64_t IntegrationTestsService.listChallengeStates(player:challenges:)()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_227D49458();
  v1[7] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v1[10] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[13] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v1[16] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_30();
  v12 = sub_227D49D58();
  v1[19] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227C84384()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[21];
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_173();
    v3(v2);
    OUTLINED_FUNCTION_34_8();
    sub_227D49478();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_198_3();
    sub_227B15A74(v4, v5, v6, v7);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_198_3();
    sub_227B15A74(v8, v9, v10, v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v1)
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
      v12 = OUTLINED_FUNCTION_57_0();
      v13(v12);
      OUTLINED_FUNCTION_62_2();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_54_4();

      return v24();
    }

    else
    {
      OUTLINED_FUNCTION_266_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_15_13();
      sub_227D49478();
      OUTLINED_FUNCTION_6_16();
      sub_227C8802C(v18, v19, v20);
      OUTLINED_FUNCTION_5_20();
      sub_227C8802C(v21, v22, v23);
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E72F0, &unk_227D51590);
      sub_227B8B108();
      sub_227B8B240();
      OUTLINED_FUNCTION_364();
      sub_227D49D38();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v26 = swift_task_alloc();
      v0[22] = v26;
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_2_31();
      sub_227C78164(v27, v28, &protocol conformance descriptor for IntegrationTestsService);
      OUTLINED_FUNCTION_47();
      *v26 = v29;
      OUTLINED_FUNCTION_230_0();
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v30);
    }
  }

  else
  {
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_162_0(v14);
    OUTLINED_FUNCTION_54_4();

    return sub_227C84BA8(v15, v16);
  }
}

uint64_t sub_227C847A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C8489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_156();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_69_0();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C8495C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_62_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_208_0();
  }

  return v5(v4);
}

uint64_t sub_227C84AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_156();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_69_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C84BA8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_2_0(sub_227C84BC4, v2);
}

uint64_t sub_227C84BC4()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227C84C64;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B35740();
}

uint64_t sub_227C84C64()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t IntegrationTestsService.load(bulkData:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BC0, &qword_227D5FD78);
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C84E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[13];
    v14 = v12[3];
    OUTLINED_FUNCTION_36();
    v12[2] = v14;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BC8, &unk_227D5FD80);
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_182_1();
    sub_227D49478();
    sub_227C887A8();
    sub_227C8885C();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v13)
    {
      (*(v12[9] + 8))(v12[10], v12[8]);
      v15 = OUTLINED_FUNCTION_57_0();
      v16(v15);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v29 = swift_task_alloc();
      v12[14] = v29;
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_2_31();
      sub_227C78164(v30, v31, &protocol conformance descriptor for IntegrationTestsService);
      OUTLINED_FUNCTION_48_0();
      *v29 = v32;
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
    }
  }

  else
  {
    v26 = swift_task_alloc();
    v12[16] = v26;
    *v26 = v12;
    v26[1] = sub_227C852D0;
    OUTLINED_FUNCTION_53(v12[3]);
    OUTLINED_FUNCTION_164();

    return sub_227C854B8(v27);
  }
}

uint64_t sub_227C85134()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C8522C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_59_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227C852D0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227C85404()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_59_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227C854B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227C854D4, v1);
}

uint64_t sub_227C854D4()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227B2F79C;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B38854();
}

uint64_t IntegrationTestsService.purge(challengeIDPrefix:)()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_227D49458();
  v1[7] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BF0, &unk_227D5FE20);
  v1[10] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_30();
  v8 = sub_227D49D58();
  v1[13] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C856C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[15];
    v14 = v12[5];
    v15 = v12[4];
    OUTLINED_FUNCTION_36();
    v12[2] = v15;
    v12[3] = v14;
    sub_227D4CE58();
    OUTLINED_FUNCTION_136_2();
    sub_227D49478();
    OUTLINED_FUNCTION_70_6();
    sub_227D49D18();
    if (v13)
    {
      v16 = OUTLINED_FUNCTION_243_0();
      v17(v16);
      v18 = OUTLINED_FUNCTION_57_0();
      v19(v18);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
    }

    else
    {
      sub_227D49D08();
      sub_227D49468();
      v33 = swift_task_alloc();
      v12[16] = v33;
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_2_31();
      sub_227C78164(v34, v35, &protocol conformance descriptor for IntegrationTestsService);
      OUTLINED_FUNCTION_48_0();
      *v33 = v36;
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }
  }

  else
  {
    v29 = swift_task_alloc();
    v12[18] = v29;
    *v29 = v12;
    OUTLINED_FUNCTION_162_0(v29);
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_33();

    return sub_227C85CDC(v30, v31);
  }
}

uint64_t sub_227C85934()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C85A2C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = OUTLINED_FUNCTION_91_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_57_0();
  v4(v3);
  OUTLINED_FUNCTION_215_3();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_227C85AE4()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227C85C24()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = OUTLINED_FUNCTION_243_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_9_2();
  v4(v3);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_227C85CDC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C85CFC, v2);
}

uint64_t sub_227C85CFC()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227B45D74;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B388E0();
}

uint64_t static IntegrationTestsService.resolve(id:using:)()
{
  v3 = OUTLINED_FUNCTION_235_0();
  type metadata accessor for IntegrationTestsService(v3);
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  sub_227C78164(v4, v5, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_2_31();
  sub_227C78164(v6, v7, &protocol conformance descriptor for IntegrationTestsService);
  v8 = v2;
  OUTLINED_FUNCTION_144_3();
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v8 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore23IntegrationTestsService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_6_15();
    (*(v12 + 16))(v10 + v11, v1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore23IntegrationTestsService_actorSystem) = v0;
  }

  return v10;
}

uint64_t IntegrationTestsService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore23IntegrationTestsService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_4_24();
  v4 = sub_227C78164(v2, v3, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_262_0(v4);
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v5 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227C85FB8(void (*a1)(void), uint64_t *a2, void *a3)
{
  if (swift_distributed_actor_is_remote())
  {
    v6 = *a2;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v7 + 8))(v3 + v6);

    swift_defaultActor_destroy();
  }

  else
  {
    a1();
  }

  return MEMORY[0x282200960](v3);
}

uint64_t sub_227C860A4()
{
  OUTLINED_FUNCTION_137_3();
  sub_227D4DB58();
  v0(0);
  OUTLINED_FUNCTION_143_1();
  sub_227C78164(v1, v2, v3);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227C86170()
{
  OUTLINED_FUNCTION_137_3();
  if ((sub_227D49448() & 1) == 0)
  {
    v1(0);
    OUTLINED_FUNCTION_143_1();
    sub_227C78164(v2, v3, v4);
    OUTLINED_FUNCTION_116_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227C861E8@<X0>(uint64_t *a1@<X8>)
{
  result = IntegrationTestsService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227C86230()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 120) + **(v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t sub_227C8633C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return IntegrationTestsService.describe(challenges:)();
}

uint64_t sub_227C863C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v22 = v9 + 128;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_76(v11);
  OUTLINED_FUNCTION_42_2();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_227C864CC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return IntegrationTestsService.listChallenges(player:filters:after:)();
}

uint64_t sub_227C86558()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t sub_227C86660()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return IntegrationTestsService.listChallengeStates(player:challenges:)();
}

uint64_t sub_227C866EC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t sub_227C867F8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return IntegrationTestsService.load(bulkData:)();
}

uint64_t sub_227C8687C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t sub_227C86984()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_227C86A64()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return IntegrationTestsService.purge(challengeIDPrefix:)();
}

uint64_t sub_227C86B90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  (a4)(0, a2, a3);
  OUTLINED_FUNCTION_143_1();
  sub_227C78164(v5, v6, v7);
  OUTLINED_FUNCTION_148();
  return sub_227D49418();
}

uint64_t sub_227C86C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_227D4DB58();
  a4(0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227C86CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  a5(0);
  OUTLINED_FUNCTION_143_1();
  sub_227C78164(v6, v7, v8);
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2821FF4E0](v9);
}

uint64_t sub_227C86DB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  (a4)(0, a2, a3);
  sub_227C78164(a5, a6, a7);
  OUTLINED_FUNCTION_30_12();
  sub_227C78164(v10, v11, MEMORY[0x277D0CE98]);
  OUTLINED_FUNCTION_173();
  return sub_227D49428();
}

uint64_t sub_227C86EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = OUTLINED_FUNCTION_40();
  v11(v10);
  v12 = OUTLINED_FUNCTION_236();
  sub_227C78164(v12, v13, a7);
  OUTLINED_FUNCTION_30_12();
  sub_227C78164(v14, v15, MEMORY[0x277D0CEA8]);
  OUTLINED_FUNCTION_93_0();
  result = sub_227D49438();
  if (!v8)
  {
    *v7 = result;
  }

  return result;
}

uint64_t sub_227C86F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BulkChallengeData.Invitee(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v27 = *(v8 + 72);
    v28 = v4;
    while (1)
    {
      sub_227C795C4();
      sub_227C795C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
      sub_227B15A74(&qword_27D7E9C68, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D518]);
      sub_227D4D148();
      sub_227D4D148();
      if (v31 == v29 && v32 == v30)
      {
      }

      else
      {
        v16 = sub_227D4DA78();

        if ((v16 & 1) == 0)
        {
          break;
        }
      }

      if ((sub_227D49268() & 1) == 0)
      {
        break;
      }

      sub_227D4D148();
      sub_227D4D148();
      if (v31 == v29 && v32 == v30)
      {
      }

      else
      {
        v18 = sub_227D4DA78();

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      v19 = *(v28 + 28);
      v20 = &v10[v19];
      v21 = *&v10[v19 + 8];
      v22 = &v7[v19];
      v23 = *(v22 + 1);
      if (v21)
      {
        if (!v23)
        {
          break;
        }

        if (*v20 == *v22 && v21 == v23)
        {
          sub_227C79618();
          sub_227C79618();
        }

        else
        {
          v25 = sub_227D4DA78();
          sub_227C79618();
          sub_227C79618();
          if ((v25 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_227D4CE58();
        sub_227C79618();
        sub_227C79618();
        if (v23)
        {

          return 0;
        }
      }

      v14 += v27;
      v13 += v27;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_227C79618();
    sub_227C79618();
  }

  return 0;
}

uint64_t sub_227C87340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BulkChallengeData.Participant(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = v35 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_227C795C4();
      sub_227C795C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
      sub_227B15A74(&qword_27D7E9C68, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D518]);
      sub_227D4D148();
      sub_227D4D148();
      if (v35[2] == v35[0] && v35[3] == v35[1])
      {
      }

      else
      {
        v17 = sub_227D4DA78();

        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      if (*&v10[v4[5]] != *&v7[v4[5]])
      {
        break;
      }

      v18 = v4[6];
      v19 = &v10[v18];
      v20 = *&v10[v18 + 8];
      v21 = &v7[v18];
      v22 = *(v21 + 1);
      if (v20)
      {
        if (!v22)
        {
          break;
        }

        v23 = *v19 == *v21 && v20 == v22;
        if (!v23 && (sub_227D4DA78() & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        break;
      }

      v24 = v4[7];
      v25 = &v10[v24];
      v26 = v10[v24 + 8];
      v27 = &v7[v24];
      v28 = v7[v24 + 8];
      if (v26)
      {
        if (!v28)
        {
          break;
        }
      }

      else
      {
        if (*v25 != *v27)
        {
          LOBYTE(v28) = 1;
        }

        if (v28)
        {
          break;
        }
      }

      v29 = v4[8];
      v30 = &v10[v29];
      v31 = v10[v29 + 8];
      v32 = &v7[v29];
      v33 = v32[8];
      if ((v31 & 1) == 0)
      {
        if (v33)
        {
          break;
        }

        v33 = *v30 == *v32;
      }

      sub_227C79618();
      sub_227C79618();
      if (v33)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v33;
    }

    sub_227C79618();
    sub_227C79618();
    return 0;
  }

  return 1;
}

unint64_t sub_227C876A4()
{
  result = qword_27D7FEE00;
  if (!qword_27D7FEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FEE00);
  }

  return result;
}

unint64_t sub_227C876F8()
{
  result = qword_27D7E9B58;
  if (!qword_27D7E9B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9B50, &qword_227D5FAA0);
    sub_227C78164(&qword_27D7E9B60, type metadata accessor for BulkChallengeData.Invitee, &protocol conformance descriptor for BulkChallengeData.Invitee);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9B58);
  }

  return result;
}

unint64_t sub_227C877AC()
{
  result = qword_27D7E9B70;
  if (!qword_27D7E9B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9B68, &qword_227D5FAA8);
    sub_227C78164(&qword_27D7E9B78, type metadata accessor for BulkChallengeData.Participant, &protocol conformance descriptor for BulkChallengeData.Participant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9B70);
  }

  return result;
}

uint64_t sub_227C87860(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BulkChallengeData.Participant(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x22AAA68B0](v7);
  if (v7)
  {
    v9 = v3[6];
    v17 = v3[5];
    v10 = &v6[v9];
    v11 = &v6[v3[7]];
    v12 = &v6[v3[8]];
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      sub_227C795C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
      sub_227B15A74(&qword_27D7E6868, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D508]);
      sub_227D4CEA8();
      MEMORY[0x22AAA68B0](*&v6[v17]);
      if (*(v10 + 1))
      {
        sub_227D4DB78();
        sub_227D4D048();
      }

      else
      {
        sub_227D4DB78();
      }

      if (v11[8] == 1)
      {
        sub_227D4DB78();
      }

      else
      {
        v14 = *v11;
        sub_227D4DB78();
        MEMORY[0x22AAA68D0](v14);
      }

      if (v12[8] == 1)
      {
        sub_227D4DB78();
      }

      else
      {
        v15 = *v12;
        sub_227D4DB78();
        MEMORY[0x22AAA68B0](v15);
      }

      result = sub_227C79618();
      v13 += v16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_227C87AC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BulkChallengeData.Invitee(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x22AAA68B0](v7);
  if (v7)
  {
    v9 = v3[5];
    v14 = v3[6];
    v15 = v9;
    v10 = &v6[v3[7]];
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_227C795C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
      sub_227B15A74(&qword_27D7E6868, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D508]);
      sub_227D4CEA8();
      sub_227D492A8();
      sub_227C78164(&qword_27D7E9B20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_227D4CEA8();
      sub_227D4CEA8();
      if (*(v10 + 1))
      {
        sub_227D4DB78();
        sub_227D4D048();
      }

      else
      {
        sub_227D4DB78();
      }

      result = sub_227C79618();
      v11 += v13;
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t sub_227C87D14()
{
  result = qword_27D7E9B90;
  if (!qword_27D7E9B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9B50, &qword_227D5FAA0);
    sub_227C78164(&qword_27D7E9B98, type metadata accessor for BulkChallengeData.Invitee, &protocol conformance descriptor for BulkChallengeData.Invitee);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9B90);
  }

  return result;
}

unint64_t sub_227C87DC8()
{
  result = qword_27D7E9BA0;
  if (!qword_27D7E9BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9B68, &qword_227D5FAA8);
    sub_227C78164(&qword_27D7E9BA8, type metadata accessor for BulkChallengeData.Participant, &protocol conformance descriptor for BulkChallengeData.Participant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9BA0);
  }

  return result;
}

uint64_t sub_227C87E9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_227D493D8();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_227B4AFB0;

  return DistributedIntegrationTestsServiceProtocol<>.describe(challenges:)();
}

uint64_t sub_227C8802C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7228, &unk_227D512D0);
    sub_227B15A74(a2, &qword_27D7E6978, &qword_227D4EA70, a3);
    OUTLINED_FUNCTION_116_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227C880C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_227D493D8();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_227D493D8();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_227D493D8();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_227C8C590;

  return DistributedIntegrationTestsServiceProtocol<>.listChallenges(player:filters:after:)();
}

uint64_t sub_227C883DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_227D493D8();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_227D493D8();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_227C8C594;

  return DistributedIntegrationTestsServiceProtocol<>.listChallengeStates(player:challenges:)();
}

uint64_t sub_227C8861C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_227D493D8();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_227B4AF94;

  return DistributedIntegrationTestsServiceProtocol<>.load(bulkData:)();
}

unint64_t sub_227C887A8()
{
  result = qword_27D7E9BD0;
  if (!qword_27D7E9BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9BC8, &unk_227D5FD80);
    sub_227C78164(&qword_27D7E9BD8, type metadata accessor for BulkChallengeData, &protocol conformance descriptor for BulkChallengeData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9BD0);
  }

  return result;
}

unint64_t sub_227C8885C()
{
  result = qword_27D7E9BE0;
  if (!qword_27D7E9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9BC8, &unk_227D5FD80);
    sub_227C78164(&qword_27D7E9BE8, type metadata accessor for BulkChallengeData, &protocol conformance descriptor for BulkChallengeData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9BE0);
  }

  return result;
}

uint64_t sub_227C88910(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_227D493D8();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_227B4AF94;

  return DistributedIntegrationTestsServiceProtocol<>.purge(challengeIDPrefix:)();
}

uint64_t sub_227C88AC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227B4476C;

  return IntegrationTestsService.describe(challenges:)();
}

uint64_t sub_227C88C60(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_227C89020;

  return IntegrationTestsService.listChallenges(player:filters:after:)();
}

uint64_t sub_227C89020()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[7];
  v14 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_80_0();
  v7 = v6;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  (*(v4 + 8))(v3, v5);
  (*(v14 + 8))(v1, v2);
  v9 = OUTLINED_FUNCTION_236();
  v10(v9);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_176_1();

  return v11();
}

uint64_t sub_227C89284(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227C8952C;

  return IntegrationTestsService.listChallengeStates(player:challenges:)();
}

uint64_t sub_227C8952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  *v12 = v13;
  *v15 = v14;

  v16 = OUTLINED_FUNCTION_177();
  v17(v16);
  v18 = OUTLINED_FUNCTION_91_0();
  v19(v18);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C89710(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B3FFF4;

  return IntegrationTestsService.load(bulkData:)();
}

uint64_t sub_227C898AC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B4AF94;

  return IntegrationTestsService.purge(challengeIDPrefix:)();
}

uint64_t sub_227C89B94(uint64_t a1)
{
  OUTLINED_FUNCTION_0_45();
  result = sub_227C78164(v2, v3, &protocol conformance descriptor for $DistributedIntegrationTestsServiceProtocol);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227C89CF4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_31();
  result = sub_227C78164(v2, v3, &protocol conformance descriptor for IntegrationTestsService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227C89DD4(uint64_t a1)
{
  v2 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_18_13(a1, &qword_27D7E99A8, &qword_27D7E67D0, &qword_227D63360);
  OUTLINED_FUNCTION_134_1();
  if (!(!v5 & v4))
  {
    OUTLINED_FUNCTION_18_13(v3, &qword_280E7B6A0, &qword_27D7E8558, &qword_227D607E0);
    OUTLINED_FUNCTION_134_1();
    if (!(!v5 & v4))
    {
      sub_227D492A8();
      OUTLINED_FUNCTION_134_1();
      if (!(!v5 & v4))
      {
        sub_227C8A204(319, &qword_280E7A820, v2);
        OUTLINED_FUNCTION_134_1();
        if (!(!v5 & v4))
        {
          OUTLINED_FUNCTION_44_6(v6, &qword_27D7E9C40, &qword_27D7E68E0, &unk_227D50DE0);
          if (v8 > 0x3F)
          {
            return v7;
          }

          else
          {
            sub_227C8A204(319, &qword_27D7E9C48, MEMORY[0x277D83B88]);
            OUTLINED_FUNCTION_134_1();
            if (!(!v5 & v4))
            {
              OUTLINED_FUNCTION_44_6(v9, &qword_27D7E9C50, &qword_27D7E9B50, &qword_227D5FAA0);
              OUTLINED_FUNCTION_134_1();
              if (!(!v5 & v4))
              {
                OUTLINED_FUNCTION_44_6(v10, &qword_27D7E9C58, &qword_27D7E9B68, &qword_227D5FAA8);
                OUTLINED_FUNCTION_134_1();
                if (!(!v5 & v4))
                {
                  OUTLINED_FUNCTION_28_6();
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_227C89F90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_227C8A01C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_13(a1, &qword_27D7E99A8, &qword_27D7E67D0, &qword_227D63360);
  OUTLINED_FUNCTION_134_1();
  if (!(!v3 & v2))
  {
    v4 = sub_227D492A8();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_227C8A204(319, &qword_280E7A820, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_134_1();
      if (!(!v3 & v2))
      {
        OUTLINED_FUNCTION_28_6();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_227C8A10C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_13(a1, &qword_27D7E99A8, &qword_27D7E67D0, &qword_227D63360);
  if (v1 <= 0x3F)
  {
    sub_227C8A204(319, &qword_280E7A820, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_227C8A204(319, &qword_27D7E9C60, MEMORY[0x277D84A28]);
      if (v3 <= 0x3F)
      {
        sub_227C8A204(319, &qword_27D7E9C48, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_28_6();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_227C8A204(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_227D4D4F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_227C8A258(uint64_t a1)
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of DistributedIntegrationTestsServiceProtocol.describe(challenges:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_19(v0, v1, v2);
  OUTLINED_FUNCTION_36_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_32(v4);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_19(v0, v1, v2);
  OUTLINED_FUNCTION_36_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_32(v4);

  return v7(v6);
}

uint64_t sub_227C8A548(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v11 = swift_task_alloc();
  v8[5] = v11;
  sub_227D493D8();
  v12 = *v11;
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 24) + **(result + 24));
    v15 = swift_task_alloc();
    v8[6] = v15;
    *v15 = v8;
    v15[1] = sub_227B4AFB0;

    return v16(v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of DistributedIntegrationTestsServiceProtocol.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_121_2();
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_131_1(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_121_2();
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_131_1(v1);

  return v4(v3);
}

uint64_t sub_227C8A96C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v11 = swift_task_alloc();
  v8[4] = v11;
  sub_227D493D8();
  v21 = v11;
  v12 = a2[1];
  v8[5] = v12;
  v8[6] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[7] = v13;
  sub_227D493D8();
  v19 = *v13;
  v14 = a2[2];
  v8[8] = v14;
  v8[9] = *(v14 - 8);
  v15 = swift_task_alloc();
  v8[10] = v15;
  sub_227D493D8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v17 = result;
    v20 = (*(result + 40) + **(result + 40));
    v18 = swift_task_alloc();
    v8[11] = v18;
    *v18 = v8;
    v18[1] = sub_227C8C590;

    return v20(a3, v21, v19, v15, a7, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of DistributedIntegrationTestsServiceProtocol.listChallengeStates(player:challenges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_32();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_50(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_12(v11);
  OUTLINED_FUNCTION_42_2();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_32();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_50(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_12(v11);
  OUTLINED_FUNCTION_42_2();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227C8AF10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[2] = a3;
  v11 = *a2;
  v8[3] = *a2;
  v8[4] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[5] = v12;
  sub_227D493D8();
  v20 = a7;
  v13 = a2[1];
  v8[6] = v13;
  v8[7] = *(v13 - 8);
  v14 = swift_task_alloc();
  v8[8] = v14;
  sub_227D493D8();
  v15 = *v14;
  object_getClass(v20);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v17 = result;
    v19 = (*(result + 56) + **(result + 56));
    v18 = swift_task_alloc();
    v8[9] = v18;
    *v18 = v8;
    v18[1] = sub_227C8C594;

    return v19(v12, v15, v20, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of DistributedIntegrationTestsServiceProtocol.load(bulkData:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_19(v0, v1, v2);
  OUTLINED_FUNCTION_36_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_32(v4);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_19(v0, v1, v2);
  OUTLINED_FUNCTION_36_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_32(v4);

  return v7(v6);
}

uint64_t sub_227C8B3CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v11 = swift_task_alloc();
  v8[4] = v11;
  sub_227D493D8();
  v12 = *v11;
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 72) + **(result + 72));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_227B4AF94;

    return v16(v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of DistributedIntegrationTestsServiceProtocol.purge(challengeIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_32();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_50(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_12(v11);
  OUTLINED_FUNCTION_42_2();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_32();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_50(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_12(v11);
  OUTLINED_FUNCTION_42_2();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227C8B7BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v11 = swift_task_alloc();
  v8[4] = v11;
  sub_227D493D8();
  v12 = *v11;
  v13 = v11[1];
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v17 = (*(result + 88) + **(result + 88));
    v16 = swift_task_alloc();
    v8[5] = v16;
    *v16 = v8;
    v16[1] = sub_227B4AF94;

    return v17(v12, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227C8B9D0(uint64_t a1)
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of IntegrationTestsService.describe(challenges:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 120) + **(v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t dispatch thunk of IntegrationTestsService.listChallenges(player:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v22 = v9 + 128;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_76(v11);
  OUTLINED_FUNCTION_42_2();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of IntegrationTestsService.listChallengeStates(player:challenges:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of IntegrationTestsService.load(bulkData:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t dispatch thunk of IntegrationTestsService.purge(challengeIDPrefix:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for BulkChallengeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BulkChallengeData.Participant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BulkChallengeData.Invitee.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227C8C268()
{
  result = qword_27D7FFD60[0];
  if (!qword_27D7FFD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FFD60);
  }

  return result;
}

unint64_t sub_227C8C2C0()
{
  result = qword_27D7FFF70[0];
  if (!qword_27D7FFF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FFF70);
  }

  return result;
}

unint64_t sub_227C8C318()
{
  result = qword_27D800180[0];
  if (!qword_27D800180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D800180);
  }

  return result;
}

unint64_t sub_227C8C370()
{
  result = qword_27D800290;
  if (!qword_27D800290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D800290);
  }

  return result;
}

unint64_t sub_227C8C3C8()
{
  result = qword_27D800298[0];
  if (!qword_27D800298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D800298);
  }

  return result;
}

unint64_t sub_227C8C420()
{
  result = qword_27D800320;
  if (!qword_27D800320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D800320);
  }

  return result;
}

unint64_t sub_227C8C478()
{
  result = qword_27D800328[0];
  if (!qword_27D800328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D800328);
  }

  return result;
}

unint64_t sub_227C8C4D0()
{
  result = qword_27D8003B0;
  if (!qword_27D8003B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8003B0);
  }

  return result;
}

unint64_t sub_227C8C528()
{
  result = qword_27D8003B8[0];
  if (!qword_27D8003B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8003B8);
  }

  return result;
}

void OUTLINED_FUNCTION_44_6(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x277D83D88];

  sub_227C89F90(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_52_7(uint64_t a1)
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_114_4()
{
}

uint64_t OUTLINED_FUNCTION_115_3()
{
}

uint64_t OUTLINED_FUNCTION_146_4@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_150_4()
{
}

uint64_t OUTLINED_FUNCTION_152_3()
{
}

uint64_t OUTLINED_FUNCTION_154_3()
{

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_158_2(uint64_t a1)
{

  return sub_227D4D8D8();
}

uint64_t OUTLINED_FUNCTION_161_2()
{
}

uint64_t OUTLINED_FUNCTION_173_3()
{

  return sub_227D49D68();
}

uint64_t OUTLINED_FUNCTION_186_3(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227B15A74(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_206()
{
}

uint64_t OUTLINED_FUNCTION_214_2()
{
}

uint64_t OUTLINED_FUNCTION_216_1()
{
}

uint64_t OUTLINED_FUNCTION_217_3()
{
}

uint64_t OUTLINED_FUNCTION_218_2()
{
}

uint64_t OUTLINED_FUNCTION_221_1()
{
}

uint64_t OUTLINED_FUNCTION_241_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_257_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;

  return sub_227D49458();
}

uint64_t OUTLINED_FUNCTION_260_0()
{
}

uint64_t OUTLINED_FUNCTION_261_1()
{

  return sub_227D4CEA8();
}

uint64_t OUTLINED_FUNCTION_262_0(uint64_t a1)
{

  return sub_227D493C8();
}

uint64_t OUTLINED_FUNCTION_263_1(uint64_t a1)
{

  return sub_227D49D28();
}

uint64_t OUTLINED_FUNCTION_266_0()
{
  *(v0 + 16) = *(v0 + 40);

  return sub_227D4CE58();
}

uint64_t sub_227C8CC6C()
{
  OUTLINED_FUNCTION_6();
  v1[10] = v15;
  v1[11] = v0;
  OUTLINED_FUNCTION_3_22(v2, v3, v4, v5, v6, v7, v8, v9);
  v1[12] = sub_227D4BEB8();
  v1[13] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C8CCF8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 72);
  v7 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 48) = v3;
  *(v4 + 56) = v9;
  *(v4 + 72) = v2;
  *(v4 + 80) = v1;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_227C8CDFC;

  return sub_227B4CC14();
}

uint64_t sub_227C8CDFC()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *(v2 + 128) = v0;

  if (!v0)
  {
    sub_227C8D694(*(v2 + 104));
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227C8CF10()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C8CF6C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C8CFD0()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 96) = v17;
  *(v0 + 80) = v16;
  OUTLINED_FUNCTION_3_22(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = sub_227D4BEA8();
  *(v0 + 104) = v9;
  *(v0 + 112) = *(v9 - 8);
  *(v0 + 120) = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9C78, &qword_227D61058);
  *(v0 + 128) = OUTLINED_FUNCTION_30();
  v10 = sub_227D4BAA8();
  *(v0 + 136) = v10;
  *(v0 + 144) = *(v10 - 8);
  *(v0 + 152) = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C8D114()
{
  v2 = v0[18];
  v1 = v0[19];
  v14 = v0[16];
  v15 = v0[17];
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4BA98();
  (*(v2 + 16))(v14, v1, v15);
  v3 = sub_227D4BE88();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  sub_227C8D6F0();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x22AAA4BE0](v4, v5, v6, 0, 0, 0, 0, 0, 0, 0, 0);
  v7 = swift_task_alloc();
  v0[20] = v7;
  v8 = sub_227D4ACB8();
  *v7 = v0;
  v7[1] = sub_227C8D2FC;
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[2];
  v12 = MEMORY[0x277D0C320];

  return MEMORY[0x282163EF8](v11, v9, v10, v8, v12);
}

uint64_t sub_227C8D2FC()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  sub_227C8D744(v2);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C8D484()
{
  v0 = OUTLINED_FUNCTION_4_25();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C8D50C()
{
  v0 = OUTLINED_FUNCTION_4_25();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C8D594()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B6F628;

  return sub_227C8CFD0();
}

uint64_t sub_227C8D694(uint64_t a1)
{
  v2 = sub_227D4BEB8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227C8D6F0()
{
  result = qword_27D7E9C80;
  if (!qword_27D7E9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9C80);
  }

  return result;
}

uint64_t sub_227C8D744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9C78, &qword_227D61058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssetService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore12AssetService_id;
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_227C8D844()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BCE8);
  __swift_project_value_buffer(v0, qword_280E7BCE8);
  return sub_227D49EB8();
}

uint64_t sub_227C8D890()
{
  if (_MergedGlobals_11 != -1)
  {
    OUTLINED_FUNCTION_4_26(&_MergedGlobals_11);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BCE8);
}

uint64_t static AssetService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_11 != -1)
  {
    OUTLINED_FUNCTION_4_26(&_MergedGlobals_11);
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BCE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227C8D97C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_227C8D9CC(a1, a2);
  return v4;
}

uint64_t sub_227C8D9CC(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v12 = sub_227D49EF8();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16GameServicesCore12AssetService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore12AssetService_actorSystem) = a1;
  type metadata accessor for AssetService(0);
  v14 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_28();
  sub_227B0F7BC(v8);
  OUTLINED_FUNCTION_0_46();
  sub_227B0F7BC(v9);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore12AssetService_id, v6, v12);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore12AssetService_dataProvider) = v13;
  v14 = *(v2 + v7);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for AssetService(uint64_t a1)
{
  result = qword_27D8008D0;
  if (!qword_27D8008D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetService.getImageData(images:size:)()
{
  OUTLINED_FUNCTION_6();
  v1[9] = v0;
  v1[7] = v2;
  v1[8] = v3;
  v1[6] = v4;
  v5 = sub_227D49458();
  v1[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9C90, &qword_227D61070);
  v1[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9C98, &qword_227D61078);
  v1[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[19] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227C8DDA0, 0, 0);
}

uint64_t sub_227C8DDA0()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 48);
    sub_227D49D68();
    *(v0 + 32) = v1;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9CA0, &qword_227D61088);
    sub_227D49478();
    sub_227C8ED3C(&qword_27D7E9CA8);
    sub_227C8ED3C(&qword_27D7E9CB8);
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    *(v0 + 16) = *(v0 + 56);
    type metadata accessor for CGSize();
    sub_227D49478();
    sub_227B0F7BC(&unk_27D7E9CC8);
    sub_227B0F7BC(&unk_27D7E9CD0);
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9CD8, &unk_227D61090);
    sub_227C8EE5C();
    sub_227C8EFD8();
    sub_227D49D38();
    sub_227D49D08();
    sub_227D49468();
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    type metadata accessor for AssetService(0);
    OUTLINED_FUNCTION_0_46();
    sub_227B0F7BC(v8);
    *v7 = v0;
    v7[1] = sub_227C8E2A0;

    return MEMORY[0x282164B00](v0 + 40);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_227C8E47C;
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);

    return sub_227C8EB84(v5, v3, v4);
  }
}

uint64_t sub_227C8E2A0()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *(v4 + 184) = v0;

  if (v0)
  {
    v5 = sub_227C8E5FC;
  }

  else
  {
    v5 = sub_227C8E3A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227C8E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v18 = OUTLINED_FUNCTION_7_20();
  v19(v18);
  (*(v17 + 8))(v14, v15);
  (*(v16 + 8))(v12, v13);
  v20 = OUTLINED_FUNCTION_57_0();
  v21(v20);
  OUTLINED_FUNCTION_19_12();

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_135_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_227C8E47C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_227C8E5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v18 = OUTLINED_FUNCTION_7_20();
  v19(v18);
  (*(v17 + 8))(v14, v15);
  (*(v16 + 8))(v12, v13);
  v20 = OUTLINED_FUNCTION_57_0();
  v21(v20);
  OUTLINED_FUNCTION_19_12();

  OUTLINED_FUNCTION_135_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_227C8E6CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227C8E98C;

  return AssetService.getImageData(images:size:)();
}

uint64_t sub_227C8E98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = *(*v12 + 64);
  v14 = *(*v12 + 56);
  v15 = *(*v12 + 48);
  v16 = *(*v12 + 40);
  v17 = *(*v12 + 32);
  v18 = *(*v12 + 24);
  **(*v12 + 16) = v19;

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);

  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C8EB84(uint64_t a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_227C8EBAC, v3, 0);
}

uint64_t sub_227C8EBAC()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 6) = v1;
  *v1 = v0;
  v1[1] = sub_227C8EC54;
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 2);

  return sub_227D1FE44(v4, v2, v3);
}

uint64_t sub_227C8EC54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v3 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_115();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

unint64_t sub_227C8ED3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9CA0, &qword_227D61088);
    sub_227C8EDC0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227C8EDC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6830, &unk_227D5E270);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27D7E9D38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7E9D38);
    }
  }
}

unint64_t sub_227C8EE5C()
{
  result = qword_27D7E9CE0;
  if (!qword_27D7E9CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9CD8, &unk_227D61090);
    sub_227C8EF10(&qword_27D7E9CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9CE0);
  }

  return result;
}

unint64_t sub_227C8EF10(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9CF0, &unk_227D618D0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227C8EF84()
{
  result = qword_27D7E9CF8;
  if (!qword_27D7E9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9CF8);
  }

  return result;
}