unint64_t sub_1B60D5EF4()
{
  result = qword_1EDAB0A10[0];
  if (!qword_1EDAB0A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAB0A10);
  }

  return result;
}

uint64_t static ForecastSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D8, &qword_1B6239EF0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  if ((sub_1B621D8A4() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for ForecastSummary(0) + 20);
  v19 = *(v14 + 48);
  sub_1B6058CE0(a1 + v18, v17);
  sub_1B6058CE0(a2 + v18, &v17[v19]);
  OUTLINED_FUNCTION_6_1(v17);
  if (v20)
  {
    OUTLINED_FUNCTION_6_1(&v17[v19]);
    if (v20)
    {
      sub_1B6037288(v17, &qword_1EB924600, &qword_1B6223420);
      goto LABEL_12;
    }

LABEL_10:
    sub_1B6037288(v17, &qword_1EB9255D8, &qword_1B6239EF0);
    return 0;
  }

  sub_1B6058CE0(v17, v13);
  OUTLINED_FUNCTION_6_1(&v17[v19]);
  if (v20)
  {
    (*(v6 + 8))(v13, v4);
    goto LABEL_10;
  }

  (*(v6 + 32))(v10, &v17[v19], v4);
  sub_1B609F140(&qword_1EB9255E0, MEMORY[0x1E6969550]);
  v21 = sub_1B62211A4();
  v22 = *(v6 + 8);
  v22(v10, v4);
  v22(v13, v4);
  sub_1B6037288(v17, &qword_1EB924600, &qword_1B6223420);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if ((sub_1B60DDFB4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_11();
  if ((v24 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    if ((v25 & 1) == 0)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (!v23)
  {
    return 0;
  }

LABEL_17:
  OUTLINED_FUNCTION_11_11();
  if (v27)
  {
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_10();
    if (v29)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ForecastSummary.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v17 - v2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1B6221B34();
  MEMORY[0x1B8C90530](0x6F697469646E6F43, 0xEB00000000203A6ELL);
  v11 = type metadata accessor for ForecastSummary(0);
  v12 = 0xE500000000000000;
  v13 = 0x5241454C43;
  switch(*(v0 + v11[6]))
  {
    case 1:
      v13 = 0x444558494DLL;
      break;
    case 2:
      v12 = 0xED00004E4F495441;
      v13 = 0x5449504943455250;
      break;
    case 3:
      v12 = 0xE400000000000000;
      v13 = 1313423698;
      break;
    case 4:
      v12 = 0xE400000000000000;
      v13 = 1464815187;
      break;
    case 5:
      v13 = 0x5445454C53;
      break;
    case 6:
      v12 = 0xE400000000000000;
      v13 = 1279869256;
      break;
    case 7:
      v12 = 0xE700000000000000;
      v13 = 0x4E574F4E4B4E55;
      break;
    default:
      break;
  }

  MEMORY[0x1B8C90530](v13, v12);

  MEMORY[0x1B8C90530](0x697472617473202CLL, 0xEC000000203A676ELL);
  sub_1B609F140(&qword_1EDAB0D70, MEMORY[0x1E6969570]);
  v14 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v14);

  MEMORY[0x1B8C90530](0x2064696C6176202CLL, 0xEF203A6C69746E75);
  sub_1B6058CE0(v0 + v11[5], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1B621D7C4();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      sub_1B6037288(v3, &qword_1EB924600, &qword_1B6223420);
    }
  }

  else
  {
    (*(v6 + 32))(v10, v3, v4);
  }

  v15 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v15);

  (*(v6 + 8))(v10, v4);
  MEMORY[0x1B8C90530](0x6261626F7270202CLL, 0xEF203A7974696C69);
  OUTLINED_FUNCTION_12_9(v11[7]);
  sub_1B6221704();
  MEMORY[0x1B8C90530](0x736E65746E69202CLL, 0xED0000203A797469);
  OUTLINED_FUNCTION_12_9(v11[8]);
  sub_1B6221704();
  return v17[0];
}

unint64_t sub_1B60D6664()
{
  result = qword_1EB9255E8;
  if (!qword_1EB9255E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9255E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ForecastSummary.Intensity(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Deviation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ForecastSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60D6918()
{
  result = qword_1EB9255F0;
  if (!qword_1EB9255F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9255F0);
  }

  return result;
}

unint64_t sub_1B60D6970()
{
  result = qword_1EDAB0168;
  if (!qword_1EDAB0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0168);
  }

  return result;
}

unint64_t sub_1B60D69C8()
{
  result = qword_1EDAB0170;
  if (!qword_1EDAB0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0170);
  }

  return result;
}

unint64_t sub_1B60D6A1C()
{
  result = qword_1EB9255F8;
  if (!qword_1EB9255F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9255F8);
  }

  return result;
}

uint64_t sub_1B60D6A9C()
{
  OUTLINED_FUNCTION_13_7();
  v1 = v0[11];
  sub_1B62216B4();
  if (v1)
  {

    OUTLINED_FUNCTION_3_17();

    return v2();
  }

  else
  {
    v7 = (v0[5] + *v0[5]);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    v0[12] = v4;
    *v4 = v5;
    v4[1] = sub_1B60D6BD8;
    v6 = v0[2];

    return v7(v6);
  }
}

uint64_t sub_1B60D6BD8()
{
  OUTLINED_FUNCTION_13_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B60D6CE4()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B60D6D40()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  OUTLINED_FUNCTION_3_17();

  return v3();
}

uint64_t sub_1B60D6E20()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_10();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_17();

    return v10();
  }
}

uint64_t sub_1B60D6F5C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_10();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_17();

    return v10();
  }
}

uint64_t sub_1B60D7090()
{
  OUTLINED_FUNCTION_13_7();
  v1 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924908, &unk_1B6224A28);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B6225510;
  *(v2 + 32) = v1;
  v3 = sub_1B60D7908();
  OUTLINED_FUNCTION_127(&type metadata for RetriedError, v3);
  *v4 = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_3_17();

  return v5();
}

uint64_t sub_1B60D7164()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (v0)
  {
    (*(v3 + 336))(*(v3 + 224), *(v3 + 200));
  }

  else
  {
    v8 = *(v3 + 240);
    v7 = *(v3 + 248);
    v9 = *(v3 + 232);
    (*(v3 + 336))(*(v3 + 224), *(v3 + 200));
    (*(v8 + 8))(v7, v9);
  }

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1B60D72A0()
{
  OUTLINED_FUNCTION_16_10();

  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v3 = *(v0 + 272);
  *(v0 + 256) = v3;
  *(v0 + 264) = v2;
  if (v3 == *(v0 + 144))
  {
    sub_1B62216B4();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_31();
      v15 = v4;
      swift_task_alloc();
      OUTLINED_FUNCTION_7_10();
      *(v0 + 296) = v5;
      *v5 = v6;
      v5[1] = sub_1B60D6E20;
      v7 = *(v0 + 136);
      v8 = *(v0 + 144);
LABEL_10:

      v15(v7, v8);
      return;
    }
  }

  else
  {
    *(v0 + 272) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    sub_1B62216B4();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_31();
      v15 = v10;
      swift_task_alloc();
      OUTLINED_FUNCTION_7_10();
      *(v0 + 280) = v11;
      *v11 = v12;
      OUTLINED_FUNCTION_6_12();
      *(v13 + 8) = v14;
      v7 = *(v0 + 136);
      v8 = v3;
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_3_17();

  v9();
}

uint64_t sub_1B60D7470()
{
  OUTLINED_FUNCTION_13_7();
  v1 = v0[36];
  (*(v0[30] + 8))(v0[31], v0[29]);

  OUTLINED_FUNCTION_3_17();

  return v2();
}

uint64_t sub_1B60D7518(uint64_t a1)
{
  sub_1B62216B4();
  v2 = (*(v1 + 168))(*(v1 + 288), *(v1 + 264));
  v3 = *(v1 + 288);
  if ((v2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924908, &unk_1B6224A28);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_23_4(inited, v29, v30, v31, v32, v33, v34, v35, xmmword_1B6225510, v43, v44);
    sub_1B608F500(inited);
    v36 = sub_1B60D7908();
    OUTLINED_FUNCTION_127(&type metadata for RetriedError, v36);
    *v37 = v45;
    swift_willThrow();

    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_22_5();

    __asm { BRAA            X1, X16 }
  }

  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B609CB90();
    v6 = v40;
  }

  v7 = *(v6 + 16);
  if (v7 >= *(v6 + 24) >> 1)
  {
    sub_1B609CB90();
    v6 = v41;
  }

  *(v1 + 328) = v6;
  v8 = *(v1 + 288);
  v9 = *(v1 + 256);
  v11 = *(v1 + 208);
  v10 = *(v1 + 216);
  v12 = *(v1 + 200);
  v13 = *(v1 + 184);
  *(v6 + 16) = v7 + 1;
  *(v6 + 8 * v7 + 32) = v8;
  v14 = v13(v9);
  v16 = v15;
  sub_1B6222004();
  *(v1 + 120) = v14;
  *(v1 + 128) = v16;
  *(v1 + 104) = 0;
  *(v1 + 96) = 0;
  *(v1 + 112) = 1;
  OUTLINED_FUNCTION_10_11();
  sub_1B6038C88(v17, v18, MEMORY[0x1E69E8828]);
  sub_1B6221FE4();
  OUTLINED_FUNCTION_9_9();
  sub_1B6038C88(v19, v20, MEMORY[0x1E69E8818]);
  sub_1B6221C24();
  v21 = *(v11 + 8);
  *(v1 + 336) = v21;
  *(v1 + 344) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v10, v12);
  v22 = swift_task_alloc();
  *(v1 + 352) = v22;
  *v22 = v1;
  v22[1] = sub_1B60D7164;
  OUTLINED_FUNCTION_22_5();

  return MEMORY[0x1EEE6DE58](v23, v24, v25, v26);
}

uint64_t sub_1B60D7824()
{
  OUTLINED_FUNCTION_16_10();
  v1 = *(v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924908, &unk_1B6224A28);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_23_4(inited, v3, v4, v5, v6, v7, v8, v9, xmmword_1B6225510, v14, v15);
  sub_1B608F500(inited);
  v10 = sub_1B60D7908();
  OUTLINED_FUNCTION_127(&type metadata for RetriedError, v10);
  *v11 = v16;
  swift_willThrow();

  OUTLINED_FUNCTION_3_17();

  return v12();
}

unint64_t sub_1B60D7908()
{
  result = qword_1EDAB0AB0;
  if (!qword_1EDAB0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0AB0);
  }

  return result;
}

unint64_t sub_1B60D795C()
{
  result = qword_1EB925600;
  if (!qword_1EB925600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925600);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TaskError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60D7A60()
{
  result = qword_1EB925608;
  if (!qword_1EB925608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925608);
  }

  return result;
}

uint64_t sub_1B60D7AD4()
{
  v0 = sub_1B6220574();
  __swift_allocate_value_buffer(v0, qword_1EDAB0308);
  __swift_project_value_buffer(v0, qword_1EDAB0308);
  return sub_1B6220584();
}

uint64_t sub_1B60D7B70()
{
  v0 = sub_1B62205C4();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1B62205D4();
  sub_1B62205B4();
  v11 = *(v1 + 8);
  v11(v7, v0);
  sub_1B62205D4();
  sub_1B62205B4();
  v11(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925610, &qword_1B6228660);
  v12 = *(v1 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B6227640;
  v15 = v14 + v13;
  v16 = *(v2 + 16);
  v16(v15, v10, v0);
  v16(v15 + v12, v7, v0);
  v17 = sub_1B6220784();

  v11(v7, v0);
  v11(v10, v0);
  return v17;
}

uint64_t sub_1B60D7EA4(uint64_t (*a1)(void))
{
  v2 = sub_1B6220A04();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  a1(0);
  sub_1B6220A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925620, &unk_1B6228670);
  v8 = OUTLINED_FUNCTION_1_18();
  *(v8 + 16) = xmmword_1B6225510;
  (*(v3 + 16))(v8 + v3, v7, v2);
  v9 = sub_1B6220754();

  (*(v4 + 8))(v7, v2);
  return v9;
}

uint64_t sub_1B60D808C()
{
  v0 = sub_1B6220574();
  __swift_allocate_value_buffer(v0, qword_1EDAAFA80);
  __swift_project_value_buffer(v0, qword_1EDAAFA80);
  return sub_1B6220584();
}

uint64_t sub_1B60D8128(id *a1, uint64_t a2)
{
  v3 = sub_1B6220674();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = *a1;
  sub_1B6220684();
  sub_1B62207B4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B60D8210()
{
  v0 = sub_1B62205C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  sub_1B62205D4();
  sub_1B62205B4();
  v7 = *(v1 + 8);
  v7(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925610, &qword_1B6228660);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B6225510;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = sub_1B6220784();

  v7(v6, v0);
  return v10;
}

uint64_t sub_1B60D8418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B6220594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_1B62205A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925618, &qword_1B6228668);
  v9 = OUTLINED_FUNCTION_1_18();
  *(v9 + 16) = xmmword_1B6225510;
  (*(v5 + 16))(v9 + a2, v8, v4);
  v10 = sub_1B6220784();

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1B60D8574(unint64_t *a1, void *a2)
{
  v4 = sub_1B6220A04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_1B602370C(0, a1, a2);
  sub_1B6220A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925620, &unk_1B6228670);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B6225510;
  (*(v5 + 16))(v10 + v9, v8, v4);
  v11 = sub_1B6220754();

  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_1B60D86DC()
{
  v0 = sub_1B6220594();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  sub_1B62205A4();
  sub_1B62205A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925618, &qword_1B6228668);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B6227640;
  v10 = v9 + v8;
  v11 = *(v1 + 16);
  v11(v10, v6, v0);
  v11(v10 + v7, v3, v0);
  v12 = sub_1B6220784();

  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);
  return v12;
}

uint64_t sub_1B60D890C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B6220574();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

_BYTE *storeEnumTagSinglePayload for MachServices(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60D8A54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B60D8A94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B60D8AF4()
{
  result = qword_1EB925628;
  if (!qword_1EB925628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925628);
  }

  return result;
}

void NextHourForecast.condition.setter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for NextHourForecast(v2) + 20);

  *(v1 + v3) = v0;
}

uint64_t NextHourForecast.condition.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast(v0);
  return OUTLINED_FUNCTION_5();
}

void NextHourForecast.summary.setter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for NextHourForecast(v2) + 24);

  *(v1 + v3) = v0;
}

uint64_t NextHourForecast.summary.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t NextHourForecast.forecastStart.setter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for NextHourForecast(v2) + 28);

  return sub_1B603D764(v0, v3);
}

uint64_t NextHourForecast.forecastStart.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t NextHourForecast.forecastEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NextHourForecast(0) + 32);

  return sub_1B6058CE0(v3, a1);
}

uint64_t NextHourForecast.forecastEnd.setter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for NextHourForecast(v2) + 32);

  return sub_1B603D764(v0, v3);
}

uint64_t NextHourForecast.forecastEnd.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast(v0);
  return OUTLINED_FUNCTION_5();
}

void NextHourForecast.minutes.setter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for NextHourForecast(v2) + 36);

  *(v1 + v3) = v0;
}

uint64_t NextHourForecast.minutes.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t NextHourForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  type metadata accessor for Metadata(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925630, &qword_1B62286E8);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B60D9374();
  v47 = v16;
  v18 = v49;
  sub_1B62220D4();
  if (!v18)
  {
    v19 = v13;
    v20 = v8;
    v56 = 0;
    OUTLINED_FUNCTION_3_18();
    sub_1B60DA0F0(v21, v22, &protocol conformance descriptor for Metadata);
    v23 = v47;
    sub_1B6221DD4();
    v24 = v11;
    type metadata accessor for ForecastCondition(0);
    v55 = 1;
    sub_1B60DA0F0(&qword_1EDAB0040, type metadata accessor for ForecastCondition, &protocol conformance descriptor for ForecastCondition);
    v25 = sub_1B6221D34();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for ForecastSummary(0);
    v54 = 2;
    sub_1B60DA0F0(&qword_1EDAB0148, type metadata accessor for ForecastSummary, &protocol conformance descriptor for ForecastSummary);
    v49 = sub_1B6221D14();
    v45 = v26;
    v28 = sub_1B621D8F4();
    v53 = 3;
    OUTLINED_FUNCTION_2_22();
    sub_1B60DA0F0(v29, v30, MEMORY[0x1E6969558]);
    sub_1B6221D24();
    v52 = 4;
    v43 = v28;
    sub_1B6221D24();
    type metadata accessor for ForecastMinute(0);
    v51 = 5;
    sub_1B60DA0F0(&qword_1EDAB01F0, type metadata accessor for ForecastMinute, &protocol conformance descriptor for ForecastMinute);
    v44 = sub_1B6221D14();
    (*(v19 + 8))(v23, v48);
    HourForecast = type metadata accessor for NextHourForecast(0);
    v32 = HourForecast[7];
    v33 = v46;
    OUTLINED_FUNCTION_3_10();
    v34 = v43;
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v43);
    v38 = v20;
    v39 = HourForecast[8];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v34);
    sub_1B603D8D8(v24, v33);
    *(v33 + HourForecast[5]) = v45;
    *(v33 + HourForecast[6]) = v49;
    sub_1B603D764(v38, v33 + v32);
    sub_1B603D764(v5, v33 + v39);
    *(v33 + HourForecast[9]) = v44;
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

unint64_t sub_1B60D9374()
{
  result = qword_1EDAB00A0;
  if (!qword_1EDAB00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB00A0);
  }

  return result;
}

void NextHourForecast.minutes(for:)()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast(v0);
  sub_1B6220784();
  sub_1B608E748();
}

uint64_t sub_1B60D9434(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  sub_1B6058CE0(a1, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B608CA50(v10);
    v18 = 0;
  }

  else
  {
    v23[1] = v2;
    v19 = *(v12 + 32);
    v19(v17, v10, v11);
    if (sub_1B621D824())
    {
      v20 = type metadata accessor for ForecastSummary(0);
      sub_1B6058CE0(a2 + *(v20 + 20), v7);
      if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
      {
        (*(v12 + 8))(v17, v11);
        sub_1B608CA50(v7);
        v18 = 1;
      }

      else
      {
        v19(v14, v7, v11);
        v18 = sub_1B621D824();
        v21 = *(v12 + 8);
        v21(v14, v11);
        v21(v17, v11);
      }
    }

    else
    {
      (*(v12 + 8))(v17, v11);
      v18 = 0;
    }
  }

  return v18 & 1;
}

uint64_t NextHourForecast.isAllClear.getter()
{
  v1 = type metadata accessor for ForecastSummary(0);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for NextHourForecast(0);
  v8 = 0;
  v9 = *(v0 + *(result + 24));
  v10 = *(v9 + 16);
  while (1)
  {
    v11 = v8;
    if (v10 == v8)
    {
      return v10 == v11;
    }

    if (v8 >= *(v9 + 16))
    {
      break;
    }

    sub_1B60D9824(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8++, v6, type metadata accessor for ForecastSummary);
    v12 = v6[*(v1 + 24)];
    result = sub_1B60D9884();
    if (v12)
    {
      return v10 == v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B60D9824(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B60D9884()
{
  v1 = OUTLINED_FUNCTION_3();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B60D98D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7473616365726F66 && a2 == 0xED00007472617453;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7473616365726F66 && a2 == 0xEB00000000646E45;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x736574756E696DLL && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1B6221F24();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B60D9AD4(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
      result = 0x7972616D6D7573;
      break;
    case 3:
    case 4:
      result = 0x7473616365726F66;
      break;
    case 5:
      result = 0x736574756E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60D9B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60D98D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60D9BC0(uint64_t a1)
{
  v2 = sub_1B60D9374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60D9BFC(uint64_t a1)
{
  v2 = sub_1B60D9374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NextHourForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925638, &qword_1B62286F0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D9374();
  sub_1B62220F4();
  LOBYTE(v21) = 0;
  type metadata accessor for Metadata(0);
  OUTLINED_FUNCTION_3_18();
  sub_1B60DA0F0(v11, v12, &protocol conformance descriptor for Metadata);
  sub_1B6221EC4();
  if (!v2)
  {
    HourForecast = type metadata accessor for NextHourForecast(0);
    v21 = *(v3 + HourForecast[5]);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925640, &qword_1B62286F8);
    sub_1B60D9ED4();
    OUTLINED_FUNCTION_0_32();
    v21 = *(v3 + HourForecast[6]);
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925648, &qword_1B6228700);
    sub_1B60D9F88();
    OUTLINED_FUNCTION_0_32();
    v14 = HourForecast[7];
    LOBYTE(v21) = 3;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_2_22();
    sub_1B60DA0F0(v15, v16, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_7_11(v3 + v14);
    v17 = HourForecast[8];
    LOBYTE(v21) = 4;
    OUTLINED_FUNCTION_7_11(v3 + v17);
    v21 = *(v3 + HourForecast[9]);
    v20 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925650, &qword_1B6228708);
    sub_1B60DA03C();
    OUTLINED_FUNCTION_0_32();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60D9ED4()
{
  result = qword_1EDAAFC78;
  if (!qword_1EDAAFC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925640, &qword_1B62286F8);
    sub_1B60DA0F0(&qword_1EDAB0048, type metadata accessor for ForecastCondition, &protocol conformance descriptor for ForecastCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFC78);
  }

  return result;
}

unint64_t sub_1B60D9F88()
{
  result = qword_1EDAAFC80;
  if (!qword_1EDAAFC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925648, &qword_1B6228700);
    sub_1B60DA0F0(&qword_1EDAB0150, type metadata accessor for ForecastSummary, &protocol conformance descriptor for ForecastSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFC80);
  }

  return result;
}

unint64_t sub_1B60DA03C()
{
  result = qword_1EDAAFC90;
  if (!qword_1EDAAFC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925650, &qword_1B6228708);
    sub_1B60DA0F0(&qword_1EDAB01F8, type metadata accessor for ForecastMinute, &protocol conformance descriptor for ForecastMinute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFC90);
  }

  return result;
}

uint64_t sub_1B60DA0F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for NextHourForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60DA260()
{
  result = qword_1EB925658;
  if (!qword_1EB925658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925658);
  }

  return result;
}

unint64_t sub_1B60DA2B8()
{
  result = qword_1EDAB0090;
  if (!qword_1EDAB0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0090);
  }

  return result;
}

unint64_t sub_1B60DA310()
{
  result = qword_1EDAB0098;
  if (!qword_1EDAB0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0098);
  }

  return result;
}

unint64_t DemoDataProvider.demoData(named:subdirectory:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1B621D634();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  if (qword_1EDAAEA00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_1EDAAEA08)
  {
    return 0;
  }

  v12 = qword_1EDAAEA08;
  v13 = sub_1B62211B4();
  v14 = sub_1B62211B4();
  if (a4)
  {
    a4 = sub_1B62211B4();
  }

  v15 = [v12 URLForResource:v13 withExtension:v14 subdirectory:a4];

  if (!v15)
  {

    return 0;
  }

  sub_1B621D5E4();

  (*(v6 + 32))(v11, v8, v5);
  v16 = sub_1B60DA5A4();

  (*(v6 + 8))(v11, v5);
  return v16;
}

unint64_t sub_1B60DA5A4()
{
  v0 = sub_1B6220434();
  v62 = *(v0 - 8);
  v63 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v57 = v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v60 = v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925660, &qword_1B6228968);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = v53 - v5;
  v6 = sub_1B6220414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = v53 - v10;
  v11 = sub_1B6220404();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6220F24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B62203F4();
  v19 = sub_1B621D604();
  MEMORY[0x1B8C90150](v19);
  v20 = sub_1B62203D4();
  (*(v16 + 8))(v18, v15);
  if (!v20)
  {
    if (qword_1EB9244C0 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EB942AC8);
    v27 = sub_1B6220B14();
    v28 = sub_1B62217F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B6020000, v27, v28, "can't create reading file stream", v29, 2u);
      MEMORY[0x1B8C91C90](v29, -1, -1);
    }

    return 0;
  }

  v54 = v7;
  v55 = v6;
  v64 = MEMORY[0x1E69E7CC0];
  sub_1B60DB018(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925670, &qword_1B6228970);
  sub_1B60DB070();
  sub_1B6221AA4();
  v22 = sub_1B62203C4();
  v23 = *(v12 + 8);
  v23(v14, v11);
  if (!v22)
  {
    goto LABEL_13;
  }

  v56 = v20;
  sub_1B6220494();
  v64 = MEMORY[0x1E69E7CC0];
  sub_1B6221AA4();
  v24 = sub_1B6220454();
  v23(v14, v11);
  if (!v24)
  {
    sub_1B62203E4();

LABEL_13:
    sub_1B62203E4();
    goto LABEL_14;
  }

  v25 = sub_1B6220464();
  v32 = v25;
  if (!v25)
  {
    goto LABEL_5;
  }

  v33 = v60;
  sub_1B6220444();
  v34 = v61;
  sub_1B6220424();
  v35 = v63;
  v36 = *(v62 + 8);
  v36(v33, v63);
  v37 = v55;
  if (__swift_getEnumTagSinglePayload(v34, 1, v55) == 1)
  {

    sub_1B60DB0D4(v34);
LABEL_5:
    sub_1B6220474();

    sub_1B62203E4();

    sub_1B62203E4();
LABEL_14:

    return 0;
  }

  v60 = v36;
  v62 = v32;
  v38 = v54;
  v39 = v37;
  v40 = v59;
  (*(v54 + 32))(v59, v34, v39);
  v41 = v58;
  v42 = v40;
  v43 = v39;
  (*(v38 + 16))(v58, v42, v39);
  if ((*(v38 + 88))(v41, v39) != *MEMORY[0x1E69E5BB8])
  {

    v51 = *(v38 + 8);
    v51(v41, v43);
LABEL_29:
    v51(v59, v43);
    goto LABEL_5;
  }

  (*(v38 + 96))(v41, v39);
  v44 = *(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925680, &qword_1B6228978) + 48));
  v45 = v60;
  (v60)(v41, v35);
  if (!v44)
  {

    v51 = *(v38 + 8);
    goto LABEL_29;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
    swift_once();
    v47 = sub_1B6220B34();
    __swift_project_value_buffer(v47, qword_1EB942AC8);
    v48 = sub_1B6220B14();
    v49 = sub_1B62217F4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      MEMORY[0x1B8C91C90](v50, -1, -1);
    }
  }

  else
  {
    v41 = swift_slowAlloc();
    v46 = v57;
    sub_1B6220444();
    sub_1B6220484();
    v53[1] = v24;
    v45(v46, v63);
  }

  v52 = v59;
  v30 = sub_1B60DAF04(v41, v44);
  MEMORY[0x1B8C91C90](v41, -1, -1);

  (*(v54 + 8))(v52, v43);
  sub_1B6220474();

  sub_1B62203E4();

  sub_1B62203E4();

  return v30;
}

unint64_t sub_1B60DAF04(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_1B621D644();
    }

    else
    {
      sub_1B621D4D4();
      swift_allocObject();
      sub_1B621D494();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1B621D6B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_1B60DB018(__n128 a1)
{
  result = qword_1EB925668;
  if (!qword_1EB925668)
  {
    sub_1B6220404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925668);
  }

  return result;
}

unint64_t sub_1B60DB070()
{
  result = qword_1EB925678;
  if (!qword_1EB925678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925670, &qword_1B6228970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925678);
  }

  return result;
}

uint64_t sub_1B60DB0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925660, &qword_1B6228968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ResponseType.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    ResponseType.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 9)
    {
      v9 = 8;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::ResponseType_optional __swiftcall ResponseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ResponseType.rawValue.getter()
{
  result = 0x5245544C454853;
  switch(*v0)
  {
    case 1:
      result = 0x4554415543415645;
      break;
    case 2:
      v2 = 0x524150455250;
      goto LABEL_6;
    case 3:
      v2 = 0x545543455845;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
      break;
    case 4:
      result = 0x44494F5641;
      break;
    case 5:
      result = 0x524F54494E4F4DLL;
      break;
    case 6:
      result = 0x535345535341;
      break;
    case 7:
      result = 0x41454C435F4C4C41;
      break;
    case 8:
      result = 1162760014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B60DB350()
{
  result = qword_1EB925688;
  if (!qword_1EB925688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925688);
  }

  return result;
}

uint64_t sub_1B60DB3C8@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ResponseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60DB5EC()
{
  result = qword_1EDAAFA60;
  if (!qword_1EDAAFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFA60);
  }

  return result;
}

void HourlyForecast.hours.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HourlyForecast(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t HourlyForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925690, &qword_1B6228AF8);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60DB97C();
  sub_1B62220D4();
  if (!v2)
  {
    v12 = v8;
    v13 = v19;
    v22 = 0;
    OUTLINED_FUNCTION_0_33();
    sub_1B60DBDCC(v14, v15, &protocol conformance descriptor for Metadata);
    v16 = v20;
    sub_1B6221DD4();
    type metadata accessor for HourForecast(0);
    v21 = 1;
    sub_1B60DBDCC(&qword_1EDAB07D0, type metadata accessor for HourForecast, &protocol conformance descriptor for HourForecast);
    v18 = sub_1B6221D14();
    (*(v12 + 8))(v11, v16);
    sub_1B603D8D8(v6, v13);
    *(v13 + *(type metadata accessor for HourlyForecast(0) + 20)) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60DB97C()
{
  result = qword_1EDAB0768;
  if (!qword_1EDAB0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0768);
  }

  return result;
}

uint64_t sub_1B60DB9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372756F68 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60DBA94(char a1)
{
  if (a1)
  {
    return 0x7372756F68;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B60DBAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60DB9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60DBAF8(uint64_t a1)
{
  v2 = sub_1B60DB97C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60DBB34(uint64_t a1)
{
  v2 = sub_1B60DB97C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HourlyForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925698, &qword_1B6228B00);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60DB97C();
  sub_1B62220F4();
  v17 = 0;
  type metadata accessor for Metadata(0);
  OUTLINED_FUNCTION_0_33();
  sub_1B60DBDCC(v11, v12, &protocol conformance descriptor for Metadata);
  OUTLINED_FUNCTION_2_2(v3, &v17);
  if (!v2)
  {
    v16 = *(v3 + *(type metadata accessor for HourlyForecast(0) + 20));
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256A0, &qword_1B6228B08);
    sub_1B60DBD18();
    OUTLINED_FUNCTION_2_2(&v16, &v15);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60DBD18()
{
  result = qword_1EDAB0440;
  if (!qword_1EDAB0440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9256A0, &qword_1B6228B08);
    sub_1B60DBDCC(&qword_1EDAB07D8, type metadata accessor for HourForecast, &protocol conformance descriptor for HourForecast);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0440);
  }

  return result;
}

uint64_t sub_1B60DBDCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for HourlyForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60DBF54()
{
  result = qword_1EB9256A8;
  if (!qword_1EB9256A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256A8);
  }

  return result;
}

unint64_t sub_1B60DBFAC()
{
  result = qword_1EDAB0758;
  if (!qword_1EDAB0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0758);
  }

  return result;
}

unint64_t sub_1B60DC004()
{
  result = qword_1EDAB0760;
  if (!qword_1EDAB0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0760);
  }

  return result;
}

uint64_t sub_1B60DC090(uint64_t a1, uint64_t a2)
{
  sub_1B62207E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251B8, &qword_1B6226AA0);
  sub_1B62209F4();

  v2 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256B0, &unk_1B6228D40);
  v3 = sub_1B6220944();

  return v3;
}

double sub_1B60DC18C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1B62207D4();
  a2[3] = &type metadata for CloudChannelMap;
  a2[4] = &off_1F2D9B1E8;
  *a2 = v3;

  return result;
}

uint64_t sub_1B60DC264(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B60DC2B8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void sub_1B60DC34C(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

unint64_t sub_1B60DC37C()
{
  result = qword_1EB9256B8;
  if (!qword_1EB9256B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256B8);
  }

  return result;
}

WeatherDaemon::WeatherProduct_optional __swiftcall WeatherProduct.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B60DC458@<X0>(unint64_t *a1@<X8>)
{
  result = WeatherProduct.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1B60DC480(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v8 = sub_1B6220B34();
  __swift_project_value_buffer(v8, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  v9 = sub_1B6220B14();
  v10 = sub_1B62217F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B602EEB0(a1, a2, &v13);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1B602EEB0(a3, a4, &v13);
    _os_log_impl(&dword_1B6020000, v9, v10, "Fetching AQI scale for name: %{public}s with language: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v12, -1, -1);
    MEMORY[0x1B8C91C90](v11, -1, -1);
  }

  sub_1B610B98C();
}

double static NextHourForecastDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5(a1);
  qword_1EB9256C0 = a1;
  off_1EB9256C8 = a2;

  return result;
}

uint64_t (*static NextHourForecastDescriptor.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B60DC6E0@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB9256C8;
  *a1 = qword_1EB9256C0;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B60DC730(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB9256C0 = v2;
  off_1EB9256C8 = v1;
  sub_1B6220784();

  return result;
}

uint64_t *sub_1B60DC794()
{
  if (qword_1EDAB10F0 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDAB10F0);
  }

  return &qword_1EDAB10F8;
}

double static NextHourForecastDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EDAB10F0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_34(&qword_1EDAB10F0);
  }

  OUTLINED_FUNCTION_3_5(a1);
  qword_1EDAB10F8 = v3;
  qword_1EDAB1100 = a2;

  return result;
}

uint64_t (*static NextHourForecastDescriptor.version.modify())(uint64_t a1)
{
  if (qword_1EDAB10F0 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDAB10F0);
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1B60DC8B4@<D0>(void *a1@<X8>)
{
  sub_1B60DC794();
  swift_beginAccess();
  v2 = qword_1EDAB1100;
  *a1 = qword_1EDAB10F8;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B60DC908(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60DC794();
  swift_beginAccess();
  qword_1EDAB10F8 = v2;
  qword_1EDAB1100 = v1;

  return result;
}

_BYTE *storeEnumTagSinglePayload for NextHourForecastDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t PressureTrend.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    OUTLINED_FUNCTION_0_9();
    sub_1B6221F44();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v5 = sub_1B6221CD4();

    if (v5 >= 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }

    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::PressureTrend_optional __swiftcall PressureTrend.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PressureTrend.rawValue.getter()
{
  v1 = 0x474E494C4C4146;
  if (*v0 != 1)
  {
    v1 = 0x594441455453;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x474E49534952;
  }
}

unint64_t sub_1B60DCBA0()
{
  result = qword_1EB9256D0;
  if (!qword_1EB9256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256D0);
  }

  return result;
}

uint64_t sub_1B60DCC18@<X0>(uint64_t *a1@<X8>)
{
  result = PressureTrend.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B60DCCC0()
{
  result = qword_1EDAB1618;
  if (!qword_1EDAB1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1618);
  }

  return result;
}

uint64_t sub_1B60DCD68@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_6_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B60DCD94(uint64_t a1)
{
  v2 = sub_1B60DCF20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60DCDD0(uint64_t a1)
{
  v2 = sub_1B60DCF20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DataUnavailable.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256D8, &qword_1B62291B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60DCF20();
  sub_1B62220F4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B60DCF20()
{
  result = qword_1EDAB06F0;
  if (!qword_1EDAB06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataUnavailable(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60DD0AC()
{
  result = qword_1EDAB06E0;
  if (!qword_1EDAB06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06E0);
  }

  return result;
}

unint64_t sub_1B60DD104()
{
  result = qword_1EDAB06E8;
  if (!qword_1EDAB06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06E8);
  }

  return result;
}

uint64_t PrecipitationConditionParameterType.init(from:)@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    OUTLINED_FUNCTION_0_9();
    sub_1B6221F44();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v5 = sub_1B6221CD4();

    *a2 = v5 == 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::PrecipitationConditionParameterType_optional __swiftcall PrecipitationConditionParameterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PrecipitationConditionParameterType.rawValue.getter()
{
  if (*v0)
  {
    return 0x415F444E4F434553;
  }

  else
  {
    return 0x54415F5453524946;
  }
}

unint64_t sub_1B60DD2E0()
{
  result = qword_1EB9256E0;
  if (!qword_1EB9256E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256E0);
  }

  return result;
}

uint64_t sub_1B60DD358@<X0>(uint64_t *a1@<X8>)
{
  result = PrecipitationConditionParameterType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationConditionParameterType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60DD4F4()
{
  result = qword_1EB9256E8;
  if (!qword_1EB9256E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256E8);
  }

  return result;
}

uint64_t sub_1B60DD548(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000065;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1B60DD5DC(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1751607656;
  }

  else
  {
    v3 = 7827308;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1751607656;
  }

  else
  {
    v5 = 7827308;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1B60DD660(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1B60DD6F4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 5719374;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 5719374;
  switch(v4)
  {
    case 1:
      v5 = 0x435F474E49584157;
      goto LABEL_7;
    case 2:
      v6 = 0x5F5453524946;
      goto LABEL_11;
    case 3:
      v5 = 0x475F474E49584157;
      goto LABEL_9;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1280070982;
      break;
    case 5:
      v5 = 0x475F474E494E4157;
LABEL_9:
      v3 = 0xEE0053554F424249;
      break;
    case 6:
      v6 = 0x5F4452494854;
LABEL_11:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x5551000000000000;
      v3 = 0xED00005245545241;
      break;
    case 7:
      v5 = 0x435F474E494E4157;
LABEL_7:
      v3 = 0xEF544E4543534552;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x435F474E49584157;
      goto LABEL_18;
    case 2:
      v8 = 0x5F5453524946;
      goto LABEL_22;
    case 3:
      v2 = 0x475F474E49584157;
      goto LABEL_20;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1280070982;
      break;
    case 5:
      v2 = 0x475F474E494E4157;
LABEL_20:
      v7 = 0xEE0053554F424249;
      break;
    case 6:
      v8 = 0x5F4452494854;
LABEL_22:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x5551000000000000;
      v7 = 0xED00005245545241;
      break;
    case 7:
      v2 = 0x435F474E494E4157;
LABEL_18:
      v7 = 0xEF544E4543534552;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_1B60DD8F8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000524548;
  v3 = 0x4749485F4843554DLL;
  v4 = a1;
  v5 = 0x4749485F4843554DLL;
  v6 = 0xEB00000000524548;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x524548474948;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x4C414D524F4ELL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x5245574F4CLL;
      break;
    case 4:
      v5 = 0x574F4C5F4843554DLL;
      v6 = 0xEA00000000005245;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x524548474948;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x4C414D524F4ELL;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x5245574F4CLL;
      break;
    case 4:
      v3 = 0x574F4C5F4843554DLL;
      v2 = 0xEA00000000005245;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1B60DDA60(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x444556524553424FLL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x444556524553424FLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x594C454B494CLL;
      break;
    case 2:
      v5 = 0x454C424953534F50;
      break;
    case 3:
      v5 = 0x594C454B494C4E55;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x594C454B494CLL;
      break;
    case 2:
      v2 = 0x454C424953534F50;
      break;
    case 3:
      v2 = 0x594C454B494C4E55;
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_0_35();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1B60DDBA0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x454D4552545845;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x454D4552545845;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x455245564553;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x4554415245444F4DLL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x524F4E494DLL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x455245564553;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x4554415245444F4DLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x524F4E494DLL;
      break;
    case 4:
      OUTLINED_FUNCTION_0_35();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1B60DDCE0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x54414944454D4D49;
  v4 = a1;
  v5 = 0x54414944454D4D49;
  v6 = 0xE900000000000045;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x4445544345505845;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x455255545546;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1414742352;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x4445544345505845;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x455255545546;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1414742352;
      break;
    case 4:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_0_35();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1B60DDE40()
{
  OUTLINED_FUNCTION_11_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B60DDEA4(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000054;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1B60DDF38()
{
  OUTLINED_FUNCTION_11_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B60DDFB4()
{
  OUTLINED_FUNCTION_21_7();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = 0x444558494DLL;
      break;
    case 2:
      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_29_4();
      break;
    case 3:
      v0 = 0xE400000000000000;
      v3 = 1313423698;
      break;
    case 4:
      v0 = 0xE400000000000000;
      v3 = 1464815187;
      break;
    case 5:
      v3 = 0x5445454C53;
      break;
    case 6:
      v0 = 0xE400000000000000;
      v3 = 1279869256;
      break;
    case 7:
      v0 = 0xE700000000000000;
      v3 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x444558494DLL;
      break;
    case 2:
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_27_5();
      break;
    case 3:
      v5 = 0xE400000000000000;
      v2 = 1313423698;
      break;
    case 4:
      v5 = 0xE400000000000000;
      v2 = 1464815187;
      break;
    case 5:
      v2 = 0x5445454C53;
      break;
    case 6:
      v5 = 0xE400000000000000;
      v2 = 1279869256;
      break;
    case 7:
      v5 = 0xE700000000000000;
      OUTLINED_FUNCTION_0_35();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_23(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_1B60DE120()
{
  OUTLINED_FUNCTION_11_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B60DE194(char a1, uint64_t a2)
{
  v2 = 1702125924;
  if (a1)
  {
    OUTLINED_FUNCTION_17_7();
    if (v3)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    if (v3)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    v8 = 1702125924;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_16_11();
    if (v10)
    {
      v2 = v12;
    }

    else
    {
      v2 = v14;
    }

    if (v10)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_2_23(v8, a2, v2);
  }

  return v17 & 1;
}

uint64_t sub_1B60DE278(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000657275;
  }

  else
  {
    v1 = 0xED00006E6F697461;
  }

  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1B60DE34C(char a1, uint64_t a2)
{
  v3 = 0xE100000000000000;
  v4 = 78;
  switch(a1)
  {
    case 1:
      v3 = 0xE200000000000000;
      v4 = 17742;
      break;
    case 2:
      v4 = 69;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v4 = 17747;
      break;
    case 4:
      v4 = 83;
      break;
    case 5:
      v3 = 0xE200000000000000;
      v4 = 22355;
      break;
    case 6:
      v4 = 87;
      break;
    case 7:
      v3 = 0xE200000000000000;
      v4 = 22350;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 78;
  switch(a2)
  {
    case 1:
      v5 = 0xE200000000000000;
      v6 = 17742;
      break;
    case 2:
      v6 = 69;
      break;
    case 3:
      v5 = 0xE200000000000000;
      v6 = 17747;
      break;
    case 4:
      v6 = 83;
      break;
    case 5:
      v5 = 0xE200000000000000;
      v6 = 22355;
      break;
    case 6:
      v6 = 87;
      break;
    case 7:
      v5 = 0xE200000000000000;
      v6 = 22350;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1B60DE484(char a1, uint64_t a2)
{
  v2 = 0x31762F697061;
  if (a1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v3)
    {
      v5 = 0x32762F697061;
    }

    else
    {
      v5 = 13174;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x31762F697061;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_37_2();
    if (v7)
    {
      v2 = 0x32762F697061;
    }

    else
    {
      v2 = 13174;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE200000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1B60DE548(char a1, uint64_t a2)
{
  v2 = 0x746867696CLL;
  if (a1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v3)
    {
      v5 = 0x6D756964656DLL;
    }

    else
    {
      v5 = 0x7976616568;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x746867696CLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_37_2();
    if (v7)
    {
      v2 = 0x6D756964656DLL;
    }

    else
    {
      v2 = 0x7976616568;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1B60DE61C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x474E4148435F4F4ELL;
  v4 = a1;
  v5 = 0x474E4148435F4F4ELL;
  v6 = 0xE900000000000045;
  switch(v4)
  {
    case 1:
      v5 = 4410953;
      v6 = 0xE300000000000000;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v5 = 4408644;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x594441455453;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 4410953;
      v2 = 0xE300000000000000;
      break;
    case 2:
      v2 = 0xE300000000000000;
      v3 = 4408644;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x594441455453;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1B60DE744(char a1)
{
  if (a1)
  {
    v1 = "PARTS_PER_BILLION";
  }

  else
  {
    v1 = "IKELY";
  }

  v2 = v1 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  if (v9)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v3 == v5 && v2 == (v8 | 0x8000000000000000);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_23(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_1B60DE7D8(char a1, uint64_t a2)
{
  v2 = 0x796C72756F68;
  if (a1)
  {
    OUTLINED_FUNCTION_38();
    if (v3)
    {
      v5 = 0x796C696164;
    }

    else
    {
      v5 = 0x6369646F69726570;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x796C72756F68;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_38();
    if (v7)
    {
      v2 = 0x796C696164;
    }

    else
    {
      v2 = 0x6369646F69726570;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE800000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1B60DE8B4(char a1, uint64_t a2)
{
  v2 = 0x7372756F68;
  if (a1)
  {
    OUTLINED_FUNCTION_17_7();
    if (v3)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    if (v3)
    {
      v9 = v4;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x7372756F68;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_16_11();
    if (v10)
    {
      v2 = v13;
    }

    else
    {
      v2 = v14;
    }

    if (v10)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_2_23(v8, a2, v2);
  }

  return v17 & 1;
}

uint64_t sub_1B60DE988(char a1)
{
  if (a1)
  {
    v1 = 0xED00006E6F697461;
  }

  else
  {
    v1 = 0xEB00000000657275;
  }

  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1B60DEA2C(char a1, uint64_t a2)
{
  v2 = 0x7961646F74;
  if (a1)
  {
    OUTLINED_FUNCTION_38();
    if (v3)
    {
      v5 = 0x68746E6F6DLL;
    }

    else
    {
      v5 = 0x6B6165727473;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x7961646F74;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_38();
    if (v7)
    {
      v2 = 0x68746E6F6DLL;
    }

    else
    {
      v2 = 0x6B6165727473;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1B60DEB00(char a1, uint64_t a2)
{
  v2 = 0x474E49534952;
  if (a1)
  {
    OUTLINED_FUNCTION_39_1();
    if (v3)
    {
      v5 = 0x474E494C4C4146;
    }

    else
    {
      v5 = 0x594441455453;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x474E49534952;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_39_1();
    if (v7)
    {
      v2 = 0x474E494C4C4146;
    }

    else
    {
      v2 = 0x594441455453;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1B60DEBF4()
{
  OUTLINED_FUNCTION_21_7();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = 0x5452415453;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1347376211;
      break;
    case 3:
      v3 = 0x54535F5452415453;
      v0 = 0xEA0000000000504FLL;
      break;
    case 4:
      v3 = 0x4154535F504F5453;
      v0 = 0xEA00000000005452;
      break;
    case 5:
      v0 = 0xE800000000000000;
      v3 = 0x544E4154534E4F43;
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x5452415453;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1347376211;
      break;
    case 3:
      v2 = 0x54535F5452415453;
      v5 = 0xEA0000000000504FLL;
      break;
    case 4:
      v2 = 0x4154535F504F5453;
      v5 = 0xEA00000000005452;
      break;
    case 5:
      v5 = 0xE800000000000000;
      v2 = 0x544E4154534E4F43;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_23(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_1B60DED90(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x5245544C454853;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x5245544C454853;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x4554415543415645;
      break;
    case 2:
      v6 = 0x524150455250;
      goto LABEL_6;
    case 3:
      v6 = 0x545543455845;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x44494F5641;
      break;
    case 5:
      v5 = 0x524F54494E4F4DLL;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x535345535341;
      break;
    case 7:
      v5 = 0x41454C435F4C4C41;
      v3 = 0xE900000000000052;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1162760014;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE800000000000000;
      v2 = 0x4554415543415645;
      break;
    case 2:
      v8 = 0x524150455250;
      goto LABEL_16;
    case 3:
      v8 = 0x545543455845;
LABEL_16:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
      break;
    case 4:
      v7 = 0xE500000000000000;
      v2 = 0x44494F5641;
      break;
    case 5:
      v2 = 0x524F54494E4F4DLL;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v2 = 0x535345535341;
      break;
    case 7:
      v2 = 0x41454C435F4C4C41;
      v7 = 0xE900000000000052;
      break;
    case 8:
      v7 = 0xE400000000000000;
      v2 = 1162760014;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_1B60DEF88(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1B60DF01C(char a1, uint64_t a2)
{
  v2 = 0x44454C45444F4DLL;
  if (a1)
  {
    OUTLINED_FUNCTION_39_1();
    if (v3)
    {
      v5 = 0x4E4F4954415453;
    }

    else
    {
      v5 = 0x4E495F454C505041;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEE004C414E524554;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x44454C45444F4DLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_39_1();
    if (v7)
    {
      v2 = 0x4E4F4954415453;
    }

    else
    {
      v2 = 0x4E495F454C505041;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEE004C414E524554;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1B60DF11C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1212631368;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1212631368;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 5721932;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x4C414D524F4ELL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 5721932;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x4C414D524F4ELL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_0_35();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1B60DF228(char a1, char a2)
{
  if (a1)
  {
    v2 = 7827310;
  }

  else
  {
    v2 = 7954788;
  }

  if (a2)
  {
    v3 = 7827310;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B60DF298(char a1, uint64_t a2)
{
  v2 = 0xEF73636974736974;
  v3 = 0x617453796C696164;
  if (a1)
  {
    OUTLINED_FUNCTION_14_10();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x617453796C696164;
    v10 = 0xEF73636974736974;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_14_10();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_13_8(v9, a2, v3);
  }

  return v18 & 1;
}

uint64_t sub_1B60DF360()
{
  OUTLINED_FUNCTION_11_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B60DF3FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_1B60DF480(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF4E494D5F455255;
  v3 = 0x54415245504D4554;
  v4 = a1;
  v5 = 0x54415245504D4554;
  v6 = 0xEF4E494D5F455255;
  switch(v4)
  {
    case 1:
      v6 = 0xEF58414D5F455255;
      v5 = 0x54415245504D4554;
      break;
    case 2:
      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_27_5();
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1464815187;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xEF58414D5F455255;
      break;
    case 2:
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_29_4();
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1464815187;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1B60DF5B8(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000657275;
  }

  else
  {
    v1 = 0xEA00000000007261;
  }

  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1B60DF654(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x68746E6F6DLL;
  }

  else
  {
    v3 = 0x6E6F4D664F796164;
  }

  if (v2)
  {
    v4 = 0xEA00000000006874;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x68746E6F6DLL;
  }

  else
  {
    v5 = 0x6E6F4D664F796164;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEA00000000006874;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1B60DF6E8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x616559664F796164;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x7469706963657270;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001B623B8D0;
    }

    else
    {
      v6 = 0xED00006E6F697461;
    }
  }

  else
  {
    v5 = 0x616559664F796164;
    v6 = 0xE900000000000072;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x7469706963657270;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001B623B8D0;
    }

    else
    {
      v2 = 0xED00006E6F697461;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1B60DF7F4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = 1701602409;
      break;
    case 2:
      v3 = 0x80000001B623B980;
      v5 = 0xD000000000000022;
      break;
    case 3:
      v5 = 0x6573616261746164;
      v3 = 0xEF70756E61656C43;
      break;
    case 4:
      v5 = 0xD00000000000001CLL;
      v3 = 0x80000001B623B9C0;
      break;
    case 5:
      v3 = 0x80000001B623B9E0;
      v5 = 0xD00000000000001FLL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1701602409;
      break;
    case 2:
      v6 = 0x80000001B623B980;
      v2 = 0xD000000000000022;
      break;
    case 3:
      v2 = 0x6573616261746164;
      v6 = 0xEF70756E61656C43;
      break;
    case 4:
      v2 = 0xD00000000000001CLL;
      v6 = 0x80000001B623B9C0;
      break;
    case 5:
      v6 = 0x80000001B623B9E0;
      v2 = 0xD00000000000001FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1B60DF9A0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF72656469766F72;
  v3 = 0x50746C7561666564;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001B623B3B0;
    }

    else
    {
      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v5 = 0x50746C7561666564;
    v6 = 0xEF72656469766F72;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001B623B3B0;
    }

    else
    {
      v2 = 0xE000000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1B60DFA78(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x747065636341;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x747065636341;
  switch(v4)
  {
    case 1:
      v5 = 0x7A69726F68747541;
      v3 = 0xED00006E6F697461;
      break;
    case 2:
      v5 = 0x746E756F436F6547;
      v3 = 0xEE0065646F437972;
      break;
    case 3:
      v5 = 0x7365757165522D58;
      v6 = 1145646452;
      goto LABEL_7;
    case 4:
      v5 = 0xD000000000000010;
      v3 = 0x80000001B623B200;
      break;
    case 5:
      v5 = 0x2D746E65746E6F43;
      v6 = 1701869908;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7A69726F68747541;
      v7 = 0xED00006E6F697461;
      break;
    case 2:
      v2 = 0x746E756F436F6547;
      v7 = 0xEE0065646F437972;
      break;
    case 3:
      v2 = 0x7365757165522D58;
      v8 = 1145646452;
      goto LABEL_14;
    case 4:
      v2 = 0xD000000000000010;
      v7 = 0x80000001B623B200;
      break;
    case 5:
      v2 = 0x2D746E65746E6F43;
      v8 = 1701869908;
LABEL_14:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t static Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_8_13();
  v2 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D8, &qword_1B6239EF0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  if ((sub_1B621D8A4() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for Metadata(0);
  if ((sub_1B621D8A4() & 1) == 0)
  {
    return 0;
  }

  v16 = v15[6];
  v17 = *(v11 + 48);
  sub_1B6058CE0(v1 + v16, v14);
  sub_1B6058CE0(v0 + v16, &v14[v17]);
  OUTLINED_FUNCTION_6_1(v14);
  if (v18)
  {
    OUTLINED_FUNCTION_6_1(&v14[v17]);
    if (v18)
    {
      sub_1B6037288(v14, &qword_1EB924600, &qword_1B6223420);
      goto LABEL_15;
    }

LABEL_11:
    sub_1B6037288(v14, &qword_1EB9255D8, &qword_1B6239EF0);
    return 0;
  }

  sub_1B6058CE0(v14, v10);
  OUTLINED_FUNCTION_6_1(&v14[v17]);
  if (v18)
  {
    (*(v4 + 8))(v10, v2);
    goto LABEL_11;
  }

  (*(v4 + 32))(v7, &v14[v17], v2);
  sub_1B609F140(&qword_1EB9255E0, MEMORY[0x1E6969550]);
  v20 = sub_1B62211A4();
  v21 = *(v4 + 8);
  v21(v7, v2);
  v21(v10, v2);
  sub_1B6037288(v14, &qword_1EB924600, &qword_1B6223420);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v22 = v15[7];
  v23 = (v1 + v22);
  v24 = *(v1 + v22 + 8);
  v25 = (v0 + v22);
  v26 = *(v0 + v22 + 8);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (*(v1 + v15[8]) != *(v0 + v15[8]) || *(v1 + v15[9]) != *(v0 + v15[9]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_18();
  if (v29)
  {
    if (!v27)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_7(v28);
    v32 = v18 && v30 == v31;
    if (!v32 && (sub_1B6221F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_18();
  if (v35)
  {
    if (!v33)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_7(v34);
    v38 = v18 && v36 == v37;
    if (!v38 && (sub_1B6221F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_18();
  if (v41)
  {
    if (!v39)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_7(v40);
    v44 = v18 && v42 == v43;
    if (!v44 && (sub_1B6221F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v45 = v15[13];
  v46 = *(v1 + v45);
  v47 = *(v0 + v45);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }

    goto LABEL_55;
  }

  result = 0;
  if (v47 != 2 && ((v47 ^ v46) & 1) == 0)
  {
LABEL_55:
    v48 = v15[14];
    v49 = *(v1 + v48);
    v50 = *(v0 + v48);
    if (v49)
    {
      if (!v50)
      {
        return 0;
      }
    }

    else if (v50)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_18();
    if (v53)
    {
      if (v51)
      {
        OUTLINED_FUNCTION_15_7(v52);
        v56 = v18 && v54 == v55;
        if (v56 || (sub_1B6221F24() & 1) != 0)
        {
LABEL_68:
          v57 = v15[16];
          v58 = *(v1 + v57);
          v59 = *(v0 + v57);
          if (v58 == 3)
          {
            if (v59 == 3)
            {
              return 1;
            }
          }

          else if (v59 != 3 && (sub_1B60DF01C(v58, v59) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v51)
    {
      goto LABEL_68;
    }

    return 0;
  }

  return result;
}

void Metadata.Units.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1B6221CD4();

  *a3 = v4 != 0;
}

uint64_t Metadata.readTime.setter()
{
  OUTLINED_FUNCTION_3();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Metadata.expireTime.setter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for Metadata(v2) + 20);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Metadata.expireTime.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.reportedTime.getter()
{
  v2 = OUTLINED_FUNCTION_6_2();
  v3 = v1 + *(type metadata accessor for Metadata(v2) + 24);

  return sub_1B6058CE0(v3, v0);
}

uint64_t Metadata.reportedTime.setter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for Metadata(v2) + 24);

  return sub_1B603D764(v0, v3);
}

uint64_t Metadata.reportedTime.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.version.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Metadata(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Metadata.version.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.latitude.setter(double a1)
{
  result = type metadata accessor for Metadata(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Metadata.latitude.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.longitude.setter(double a1)
{
  result = type metadata accessor for Metadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Metadata.longitude.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.language.getter()
{
  type metadata accessor for Metadata(0);
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t Metadata.language.setter()
{
  v3 = OUTLINED_FUNCTION_8_13();
  type metadata accessor for Metadata(v3);
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Metadata.language.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.providerName.setter()
{
  v3 = OUTLINED_FUNCTION_8_13();
  type metadata accessor for Metadata(v3);
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Metadata.providerName.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.providerLogo.setter()
{
  v3 = OUTLINED_FUNCTION_8_13();
  type metadata accessor for Metadata(v3);
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Metadata.providerLogo.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.temporarilyUnavailable.setter(char a1)
{
  result = type metadata accessor for Metadata(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Metadata.temporarilyUnavailable.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.units.getter()
{
  v2 = OUTLINED_FUNCTION_6_2();
  result = type metadata accessor for Metadata(v2);
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t Metadata.units.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Metadata(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t Metadata.units.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.attributionUrl.setter()
{
  v3 = OUTLINED_FUNCTION_8_13();
  type metadata accessor for Metadata(v3);
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Metadata.attributionUrl.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.sourceType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Metadata(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t Metadata.sourceType.modify()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata(v0);
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - v4;
  v6 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v69 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256F0, &qword_1B62294B0);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B60E10C8();
  v72 = v18;
  v20 = v73;
  sub_1B62220D4();
  if (!v20)
  {
    v73 = v15;
    v68 = v10;
    v22 = v69;
    v21 = v70;
    LOBYTE(v81) = 0;
    sub_1B609F140(&qword_1EDAB20F0, MEMORY[0x1E6969558]);
    sub_1B6221DD4();
    LOBYTE(v81) = 1;
    sub_1B6221DD4();
    v67 = v13;
    LOBYTE(v81) = 2;
    v24 = v5;
    sub_1B6221D24();
    LOBYTE(v81) = 3;
    sub_1B6221D24();
    v25 = v83;
    v26 = v84;
    LOBYTE(v81) = 4;
    sub_1B6221DB4();
    v28 = v27;
    v85 = v26;
    LOBYTE(v81) = 5;
    sub_1B6221DB4();
    v29 = v73;
    v31 = v30;
    v64 = v25;
    LOBYTE(v79) = 6;
    sub_1B6221D24();
    v63 = v81;
    v66 = v82;
    LOBYTE(v77) = 7;
    sub_1B6221D24();
    v62 = v79;
    v65 = v80;
    LOBYTE(v75) = 8;
    sub_1B6221D24();
    v32 = v78;
    v61 = v77;
    LOBYTE(v75) = 9;
    LOBYTE(v60) = sub_1B6221D54() & 1;
    v60 = v60;
    LOBYTE(v75) = 10;
    sub_1B60E111C();
    v33 = v71;
    v34 = v72;
    sub_1B6221D24();
    v59 = v88;
    v87 = 11;
    sub_1B6221D24();
    v58 = v75;
    v57 = v76;
    v86 = 12;
    sub_1B60E1170();
    sub_1B6221D24();
    (*(v29 + 8))(v34, v33);
    LODWORD(v73) = v87;
    v35 = type metadata accessor for Metadata(0);
    v55 = v35[6];
    __swift_storeEnumTagSinglePayload(v21 + v55, 1, 1, v6);
    v36 = v35[7];
    v72 = v32;
    v37 = v21 + v36;
    v38 = v35[11];
    v54 = (v21 + v35[10]);
    v56 = (v21 + v38);
    v39 = v35[12];
    v71 = v35[13];
    v52 = (v21 + v39);
    v53 = v35[14];
    *(v21 + v53) = 1;
    v40 = v35[15];
    v41 = v35[16];
    v51 = v24;
    v42 = (v21 + v40);
    *(v21 + v41) = 3;
    v43 = *(v22 + 32);
    v43(v21, v67, v6);
    v43(v21 + v35[5], v68, v6);
    sub_1B603D764(v51, v21 + v55);
    *v37 = v64;
    *(v37 + 8) = v85;
    *(v21 + v35[8]) = v28;
    *(v21 + v35[9]) = v31;
    v44 = v54;
    v45 = v66;
    *v54 = v63;
    v44[1] = v45;
    v46 = v56;
    v47 = v65;
    *v56 = v62;
    v46[1] = v47;
    v48 = v52;
    v49 = v72;
    *v52 = v61;
    v48[1] = v49;
    *(v21 + v71) = v60;
    *(v21 + v53) = v59;
    v50 = v57;
    *v42 = v58;
    v42[1] = v50;
    *(v21 + v41) = v73;
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

unint64_t sub_1B60E10C8()
{
  result = qword_1EDAB1048;
  if (!qword_1EDAB1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1048);
  }

  return result;
}

unint64_t sub_1B60E111C()
{
  result = qword_1EDAB1010;
  if (!qword_1EDAB1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1010);
  }

  return result;
}

unint64_t sub_1B60E1170()
{
  result = qword_1EDAB0868;
  if (!qword_1EDAB0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0868);
  }

  return result;
}

uint64_t sub_1B60E11C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695464616572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6954657269707865 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646574726F706572 && a2 == 0xEC000000656D6954;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72656469766F7270 && a2 == 0xEC000000656D614ELL;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x72656469766F7270 && a2 == 0xEC0000006F676F4CLL;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x80000001B623D120 == a2;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7374696E75 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7475626972747461 && a2 == 0xEE006C72556E6F69;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1B6221F24();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1B60E15D4(char a1)
{
  result = 0x656D695464616572;
  switch(a1)
  {
    case 1:
      result = 0x6954657269707865;
      break;
    case 2:
      result = 0x646574726F706572;
      break;
    case 3:
      result = 0x6E6F6973726576;
      break;
    case 4:
      result = 0x656475746974616CLL;
      break;
    case 5:
      result = 0x64757469676E6F6CLL;
      break;
    case 6:
      result = 0x65676175676E616CLL;
      break;
    case 7:
      result = 0x72656469766F7270;
      break;
    case 8:
      result = 0x72656469766F7270;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x7374696E75;
      break;
    case 11:
      result = 0x7475626972747461;
      break;
    case 12:
      result = 0x7954656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60E1768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60E11C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60E1790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60E15CC();
  *a1 = result;
  return result;
}

uint64_t sub_1B60E17B8(uint64_t a1)
{
  v2 = sub_1B60E10C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60E17F4(uint64_t a1)
{
  v2 = sub_1B60E10C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256F8, &qword_1B62294B8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60E10C8();
  sub_1B62220F4();
  v13[31] = 0;
  sub_1B621D8F4();
  sub_1B609F140(&unk_1EDAB20F8, MEMORY[0x1E6969538]);
  OUTLINED_FUNCTION_6_13();
  sub_1B6221EC4();
  if (!v2)
  {
    v11 = type metadata accessor for Metadata(0);
    v13[30] = 1;
    OUTLINED_FUNCTION_6_13();
    sub_1B6221EC4();
    v13[29] = 2;
    OUTLINED_FUNCTION_6_13();
    sub_1B6221E74();
    v13[28] = 3;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E64();
    v13[27] = 4;
    OUTLINED_FUNCTION_3_2();
    sub_1B6221EA4();
    v13[26] = 5;
    OUTLINED_FUNCTION_3_2();
    sub_1B6221EA4();
    OUTLINED_FUNCTION_26_5(v11[10]);
    v13[25] = 6;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E24();
    OUTLINED_FUNCTION_26_5(v11[11]);
    v13[24] = 7;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E24();
    OUTLINED_FUNCTION_26_5(v11[12]);
    v13[15] = 8;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E24();
    v13[14] = 9;
    OUTLINED_FUNCTION_3_2();
    sub_1B6221E34();
    v13[13] = *(v3 + v11[14]);
    v13[12] = 10;
    sub_1B60E1B94();
    OUTLINED_FUNCTION_3_2();
    sub_1B6221E74();
    OUTLINED_FUNCTION_26_5(v11[15]);
    v13[11] = 11;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E24();
    v13[10] = *(v3 + v11[16]);
    v13[9] = 12;
    sub_1B60E1BE8();
    OUTLINED_FUNCTION_3_2();
    sub_1B6221E74();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60E1B94()
{
  result = qword_1EDAB1020;
  if (!qword_1EDAB1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1020);
  }

  return result;
}

unint64_t sub_1B60E1BE8()
{
  result = qword_1EDAB17B0;
  if (!qword_1EDAB17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB17B0);
  }

  return result;
}

unint64_t sub_1B60E1C40()
{
  result = qword_1EB925700;
  if (!qword_1EB925700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925700);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60E1DF0()
{
  result = qword_1EB925708;
  if (!qword_1EB925708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925708);
  }

  return result;
}

unint64_t sub_1B60E1E48()
{
  result = qword_1EDAB1038;
  if (!qword_1EDAB1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1038);
  }

  return result;
}

unint64_t sub_1B60E1EA0()
{
  result = qword_1EDAB1040;
  if (!qword_1EDAB1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1040);
  }

  return result;
}

unint64_t sub_1B60E1EF4()
{
  result = qword_1EDAB1018;
  if (!qword_1EDAB1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1018);
  }

  return result;
}

uint64_t WeatherDataRequestOptions.units.getter()
{
  result = OUTLINED_FUNCTION_31_3();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t WeatherDataRequestOptions.countryCode.getter()
{
  type metadata accessor for WeatherDataRequestOptions(0);
  sub_1B6220784();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherDataRequestOptions.locationOptions.getter()
{
  result = OUTLINED_FUNCTION_31_3();
  v3 = (v1 + *(result + 32));
  v4 = *v3;
  LOWORD(v3) = *(v3 + 4);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t WeatherDataRequestOptions.cachingOptions.getter()
{
  result = OUTLINED_FUNCTION_31_3();
  *v0 = *(v1 + *(result + 36));
  return result;
}

double WeatherDataRequestOptions.treatmentIdentifiers.getter()
{
  type metadata accessor for WeatherDataRequestOptions(0);

  sub_1B6220784();
  return result;
}

double WeatherDataRequestOptions.preferredLanguages.getter()
{
  type metadata accessor for WeatherDataRequestOptions(0);

  sub_1B6220784();
  return result;
}

void WeatherDataRequestOptions.init(language:timeZone:units:countryCode:locationOptions:cachingOptions:cacheReadPolicy:treatmentIdentifiers:dailyDateInterval:hourlyDateInterval:periodicRelativeRange:dailyRelativeRange:hourlyRelativeRange:marineHourlyRelativeRange:networkActivity:needsMarineData:needsTwilightData:preferredLanguages:updateCacheAsynchronously:)(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  OUTLINED_FUNCTION_22_6();
  v24 = v16;
  v19 = OUTLINED_FUNCTION_35_2(v17, v18);
  sub_1B603D3DC(a1, a2 + v19[5], &qword_1EB924EF8, &unk_1B6226620);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_11_13(v20, v23);
  *(v21 + 24) = v24;
  *(a2 + v19[10]) = v25;
  OUTLINED_FUNCTION_36_2(a5, a2 + v19[11]);
  OUTLINED_FUNCTION_36_2(a6, a2 + v19[12]);
  sub_1B603D3DC(a7, a2 + v19[15], &qword_1EB924F18, &unk_1B6226600);
  sub_1B603D3DC(a10, a2 + v19[16], &qword_1EB924F20, &unk_1B6226380);
  sub_1B603D3DC(a8, a2 + v19[13], &qword_1EB924F08, &unk_1B6226610);
  sub_1B603D3DC(a9, a2 + v19[14], &qword_1EB924F10, &unk_1B6226370);
  sub_1B603D3DC(a11, a2 + v19[17], &qword_1EB924F30, &unk_1B6226390);
  OUTLINED_FUNCTION_23_5(v19[18]);
  *(a2 + v22) = a13;
  *(a2 + v19[22]) = a14;
}

uint64_t sub_1B60E247C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374696E75 && a2 == 0xE500000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF736E6F6974704FLL;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4F676E6968636163 && a2 == 0xEE00736E6F697470;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001B623C6A0 == a2;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001B623D140 == a2;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x80000001B623D160 == a2;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001B623D180 == a2;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001B623D1A0 == a2;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x80000001B623D1C0 == a2;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001B623D1E0 == a2;
                          if (v17 || (sub_1B6221F24() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x416B726F7774656ELL && a2 == 0xEF79746976697463;
                            if (v18 || (sub_1B6221F24() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x72614D736465656ELL && a2 == 0xEF61746144656E69;
                              if (v19 || (sub_1B6221F24() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000011 && 0x80000001B623D200 == a2;
                                if (v20 || (sub_1B6221F24() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000012 && 0x80000001B623D220 == a2;
                                  if (v21 || (sub_1B6221F24() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6165526568636163 && a2 == 0xEF7963696C6F5064;
                                    if (v22 || (sub_1B6221F24() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000019 && 0x80000001B623D240 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1B6221F24();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
      }
    }
  }
}

unint64_t sub_1B60E2A50(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
      result = 0x656E6F5A656D6974;
      break;
    case 2:
      result = 0x7374696E75;
      break;
    case 3:
      result = 0x437972746E756F63;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x4F676E6968636163;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 15:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
    case 18:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0x416B726F7774656ELL;
      break;
    case 14:
      result = 0x72614D736465656ELL;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x6165526568636163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60E2C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60E247C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60E2CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60E2A48();
  *a1 = result;
  return result;
}

uint64_t sub_1B60E2CDC(uint64_t a1)
{
  v2 = sub_1B60E3364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60E2D18(uint64_t a1)
{
  v2 = sub_1B60E3364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherDataRequestOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925710, &qword_1B6229868);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60E3364();
  sub_1B62220F4();
  LOBYTE(v41) = 0;
  OUTLINED_FUNCTION_10_12();
  sub_1B6221E84();
  if (!v2)
  {
    v11 = type metadata accessor for WeatherDataRequestOptions(0);
    OUTLINED_FUNCTION_29_5(1);
    sub_1B621DB64();
    OUTLINED_FUNCTION_20_6();
    sub_1B60E44C4(v12, v13, MEMORY[0x1E6969BC8]);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    LOBYTE(v41) = *(v3 + v11[6]);
    v46 = 2;
    sub_1B60E33B8();
    OUTLINED_FUNCTION_6_14();
    sub_1B6221EC4();
    LOBYTE(v41) = 3;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E24();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    LOWORD(v14) = *(v14 + 4);
    *&v41 = v15;
    WORD4(v41) = v14;
    v46 = 4;
    sub_1B60E340C();
    OUTLINED_FUNCTION_6_14();
    sub_1B6221E74();
    *&v41 = *(v3 + v11[9]);
    v46 = 5;
    sub_1B60E3460();
    OUTLINED_FUNCTION_6_14();
    sub_1B6221EC4();
    *&v41 = *(v3 + v11[10]);
    v46 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925740, &unk_1B6229870);
    OUTLINED_FUNCTION_14_11();
    sub_1B60E4468(v16);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_29_5(7);
    sub_1B621D364();
    OUTLINED_FUNCTION_13_9();
    sub_1B60E44C4(v17, v18, MEMORY[0x1E6968138]);
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E74();
    LOBYTE(v41) = 8;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E74();
    v19 = OUTLINED_FUNCTION_29_5(9);
    type metadata accessor for WeatherRequestDailyRelativeRange(v19);
    OUTLINED_FUNCTION_21_8();
    sub_1B60E44C4(v20, v21, &protocol conformance descriptor for WeatherRequestDailyRelativeRange);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    v22 = OUTLINED_FUNCTION_29_5(10);
    type metadata accessor for WeatherRequestHourlyRelativeRange(v22);
    OUTLINED_FUNCTION_19_7();
    sub_1B60E44C4(v23, v24, &protocol conformance descriptor for WeatherRequestHourlyRelativeRange);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    v25 = OUTLINED_FUNCTION_29_5(11);
    type metadata accessor for WeatherRequestPeriodicRelativeRange(v25);
    OUTLINED_FUNCTION_18_8();
    sub_1B60E44C4(v26, v27, &protocol conformance descriptor for WeatherRequestPeriodicRelativeRange);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    v28 = OUTLINED_FUNCTION_29_5(12);
    type metadata accessor for WeatherRequestMarineHourlyRelativeRange(v28);
    OUTLINED_FUNCTION_17_8();
    sub_1B60E44C4(v29, v30, &protocol conformance descriptor for WeatherRequestMarineHourlyRelativeRange);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    v31 = OUTLINED_FUNCTION_29_5(13);
    type metadata accessor for WDSNetworkActivity(v31);
    OUTLINED_FUNCTION_15_8();
    sub_1B60E44C4(v32, v33, &protocol conformance descriptor for WDSNetworkActivity);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    OUTLINED_FUNCTION_44_1(14);
    OUTLINED_FUNCTION_7_12();
    sub_1B6221E94();
    OUTLINED_FUNCTION_44_1(15);
    OUTLINED_FUNCTION_7_12();
    sub_1B6221E94();
    *&v41 = *(v3 + v11[20]);
    v46 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68, &qword_1B622B910);
    OUTLINED_FUNCTION_14_11();
    sub_1B60E34B4(v34);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221EC4();
    v35 = (v3 + v11[21]);
    v36 = *(v35 + 2);
    v37 = *v35;
    v39 = *(v35 + 6);
    v35 = (v35 + 24);
    v38 = v39;
    LOWORD(v39) = *(v35 + 2);
    LOBYTE(v35) = *(v35 + 6);
    v41 = v37;
    v42 = v36;
    v45 = v35;
    v44 = v39;
    v43 = v38;
    v46 = 17;
    sub_1B60E3510();
    OUTLINED_FUNCTION_6_14();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_44_1(18);
    OUTLINED_FUNCTION_7_12();
    sub_1B6221E94();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60E3364()
{
  result = qword_1EB925718;
  if (!qword_1EB925718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925718);
  }

  return result;
}

unint64_t sub_1B60E33B8()
{
  result = qword_1EB925728;
  if (!qword_1EB925728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925728);
  }

  return result;
}

unint64_t sub_1B60E340C()
{
  result = qword_1EB925730;
  if (!qword_1EB925730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925730);
  }

  return result;
}

unint64_t sub_1B60E3460()
{
  result = qword_1EB925738;
  if (!qword_1EB925738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925738);
  }

  return result;
}

uint64_t sub_1B60E34B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB924F68, &qword_1B622B910);
    result = OUTLINED_FUNCTION_46_2(v3);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B60E3510()
{
  result = qword_1EB925780;
  if (!qword_1EB925780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925780);
  }

  return result;
}

void WeatherDataRequestOptions.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30, &unk_1B6226390);
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v118 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v119 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18, &unk_1B6226600);
  OUTLINED_FUNCTION_0(v9);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v120 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10, &unk_1B6226370);
  OUTLINED_FUNCTION_0(v12);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v122 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08, &unk_1B6226610);
  OUTLINED_FUNCTION_0(v15);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v114 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00, &unk_1B6226360);
  v20 = OUTLINED_FUNCTION_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v114 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  OUTLINED_FUNCTION_0(v26);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v114 - v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925788, &qword_1B6229880);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v114 - v33;
  v127 = type metadata accessor for WeatherDataRequestOptions(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v125 = (&v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a1[3];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1B60E3364();
  v124 = v34;
  v38 = v126;
  sub_1B62220D4();
  if (v38)
  {
    v126 = v38;
    v40 = 0;
    LODWORD(v41) = 0;
    v42 = 0;
    v31 = 0;
    LODWORD(v43) = 0;
    OUTLINED_FUNCTION_4_17();
  }

  else
  {
    v126 = v25;
    v115 = v18;
    v116 = v22;
    LOBYTE(v128) = 0;
    v40 = v123;
    v39 = sub_1B6221D94();
    v18 = v125;
    *v125 = v39;
    *(v18 + 8) = v47;
    sub_1B621DB64();
    LOBYTE(v128) = 1;
    OUTLINED_FUNCTION_20_6();
    sub_1B60E44C4(v48, v49, MEMORY[0x1E6969BE0]);
    OUTLINED_FUNCTION_30_4();
    sub_1B6221D84();
    v50 = v127;
    sub_1B603D3DC(v29, v18 + v127[5], &qword_1EB924EF8, &unk_1B6226620);
    v133 = 2;
    sub_1B60E436C();
    OUTLINED_FUNCTION_8_14();
    sub_1B6221DD4();
    v51 = v18;
    *(v18 + v50[6]) = v128;
    OUTLINED_FUNCTION_43_1(3);
    v52 = sub_1B6221D44();
    v53 = (v18 + v50[7]);
    *v53 = v52;
    v53[1] = v54;
    v133 = 4;
    sub_1B60E43C0();
    OUTLINED_FUNCTION_8_14();
    sub_1B6221D84();
    v55 = WORD4(v128);
    v56 = v18 + v50[8];
    *v56 = v128;
    *(v56 + 8) = v55;
    v133 = 5;
    sub_1B60E4414();
    OUTLINED_FUNCTION_8_14();
    sub_1B6221DD4();
    *(v18 + v50[9]) = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925740, &unk_1B6229870);
    v133 = 6;
    OUTLINED_FUNCTION_16_12();
    sub_1B60E4468(v57);
    OUTLINED_FUNCTION_42_3();
    sub_1B6221DD4();
    *(v18 + v50[10]) = v128;
    LODWORD(v25) = sub_1B621D364();
    LOBYTE(v128) = 7;
    OUTLINED_FUNCTION_13_9();
    v60 = sub_1B60E44C4(v58, v59, MEMORY[0x1E6968150]);
    LODWORD(v18) = v60;
    v43 = v126;
    OUTLINED_FUNCTION_32_5(v60, &v128);
    sub_1B603D3DC(v43, v51 + v50[11], &qword_1EB924F00, &unk_1B6226360);
    OUTLINED_FUNCTION_44_1(8);
    v41 = v116;
    OUTLINED_FUNCTION_32_5(v61, v62);
    v126 = 0;
    sub_1B603D3DC(v41, v51 + v127[12], &qword_1EB924F00, &unk_1B6226360);
    v42 = type metadata accessor for WeatherRequestDailyRelativeRange(0);
    LOBYTE(v128) = 9;
    OUTLINED_FUNCTION_21_8();
    sub_1B60E44C4(v63, v64, &protocol conformance descriptor for WeatherRequestDailyRelativeRange);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_42_3();
    v65 = v126;
    sub_1B6221D84();
    v126 = v65;
    if (v65)
    {
      v66 = OUTLINED_FUNCTION_26_6();
      v67(v66);
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_1_20();
    }

    else
    {
      OUTLINED_FUNCTION_34_2();
      sub_1B603D3DC(v115, v68, v69, v70);
      type metadata accessor for WeatherRequestHourlyRelativeRange(0);
      LOBYTE(v128) = 10;
      OUTLINED_FUNCTION_19_7();
      sub_1B60E44C4(v71, v72, &protocol conformance descriptor for WeatherRequestHourlyRelativeRange);
      OUTLINED_FUNCTION_30_4();
      v42 = v124;
      v73 = v126;
      sub_1B6221D84();
      v126 = v73;
      if (v73)
      {
        v74 = OUTLINED_FUNCTION_26_6();
        v75(v74);
        LODWORD(v122) = 0;
        LODWORD(v123) = 0;
        LODWORD(v124) = 0;
        LODWORD(v18) = 0;
        OUTLINED_FUNCTION_1_20();
        LODWORD(v25) = 1;
      }

      else
      {
        OUTLINED_FUNCTION_34_2();
        sub_1B603D3DC(v122, v76, v77, v78);
        type metadata accessor for WeatherRequestPeriodicRelativeRange(0);
        LOBYTE(v128) = 11;
        OUTLINED_FUNCTION_18_8();
        sub_1B60E44C4(v79, v80, &protocol conformance descriptor for WeatherRequestPeriodicRelativeRange);
        OUTLINED_FUNCTION_30_4();
        OUTLINED_FUNCTION_9_11();
        sub_1B6221D84();
        v126 = 0;
        OUTLINED_FUNCTION_34_2();
        sub_1B603D3DC(v120, v81, v82, v83);
        type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
        LOBYTE(v128) = 12;
        OUTLINED_FUNCTION_17_8();
        sub_1B60E44C4(v84, v85, &protocol conformance descriptor for WeatherRequestMarineHourlyRelativeRange);
        OUTLINED_FUNCTION_30_4();
        OUTLINED_FUNCTION_9_11();
        sub_1B6221D84();
        v126 = 0;
        OUTLINED_FUNCTION_34_2();
        sub_1B603D3DC(v119, v86, v87, v88);
        type metadata accessor for WDSNetworkActivity(0);
        LOBYTE(v128) = 13;
        OUTLINED_FUNCTION_15_8();
        sub_1B60E44C4(v89, v90, &protocol conformance descriptor for WDSNetworkActivity);
        OUTLINED_FUNCTION_30_4();
        OUTLINED_FUNCTION_9_11();
        sub_1B6221D84();
        v126 = 0;
        OUTLINED_FUNCTION_34_2();
        sub_1B603D3DC(v118, v91, v92, v93);
        OUTLINED_FUNCTION_43_1(14);
        v42 = v124;
        v94 = v126;
        v95 = sub_1B6221DA4();
        v126 = v94;
        if (!v94)
        {
          *(v125 + v127[18]) = v95 & 1;
          OUTLINED_FUNCTION_43_1(15);
          v99 = sub_1B6221DA4();
          v126 = 0;
          *(v125 + v127[19]) = v99 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68, &qword_1B622B910);
          v133 = 16;
          OUTLINED_FUNCTION_16_12();
          sub_1B60E34B4(v100);
          OUTLINED_FUNCTION_9_11();
          sub_1B6221DD4();
          v126 = 0;
          *(v125 + v127[20]) = v128;
          v133 = 17;
          sub_1B60E450C();
          v41 = &v128;
          v42 = v124;
          v102 = v126;
          sub_1B6221DD4();
          v126 = v102;
          if (!v102)
          {
            v103 = v129;
            v104 = v131;
            v105 = v130;
            v106 = v125 + v127[21];
            *v106 = v128;
            *(v106 + 2) = v103;
            *(v106 + 6) = v105;
            *(v106 + 14) = v104;
            v106[30] = v132;
            OUTLINED_FUNCTION_43_1(18);
            v107 = sub_1B6221DA4();
            v126 = 0;
            v110 = v107;
            v111 = OUTLINED_FUNCTION_26_6();
            v112(v111);
            v113 = v125;
            *(v125 + v127[22]) = v110 & 1;
            sub_1B60E4560(v113, v117);
            __swift_destroy_boxed_opaque_existential_1(v121);
            sub_1B60E45C4(v113);
            return;
          }

          v108 = OUTLINED_FUNCTION_26_6();
          v109(v108);
          v45 = 1;
          __swift_destroy_boxed_opaque_existential_1(v121);
          OUTLINED_FUNCTION_0_36();
          LODWORD(v123) = v101;
          LODWORD(v124) = v101;
          LODWORD(v18) = 1;
          v44 = v125;
          goto LABEL_6;
        }

        v96 = OUTLINED_FUNCTION_26_6();
        v97(v96);
        v40 = 1;
        OUTLINED_FUNCTION_0_36();
        LODWORD(v123) = v98;
        LODWORD(v124) = v98;
        LODWORD(v18) = 1;
      }
    }
  }

  v44 = v125;
  __swift_destroy_boxed_opaque_existential_1(v121);
  if (v40)
  {
    v45 = 0;
LABEL_6:

    goto LABEL_18;
  }

  v45 = 0;
LABEL_18:
  v46 = v127;
  if (!v41)
  {
    if (!v42)
    {
      goto LABEL_20;
    }

LABEL_8:

    if (v31)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (!v43)
    {
      goto LABEL_22;
    }

LABEL_10:
    sub_1B6037288(v44 + v46[12], &qword_1EB924F00, &unk_1B6226360);
    if (v25)
    {
      goto LABEL_23;
    }

LABEL_11:
    if (!v122)
    {
      goto LABEL_24;
    }

LABEL_12:
    sub_1B6037288(v44 + v46[14], &qword_1EB924F10, &unk_1B6226370);
    if (v123)
    {
      goto LABEL_25;
    }

LABEL_13:
    if (!v124)
    {
      goto LABEL_26;
    }

LABEL_14:
    sub_1B6037288(v44 + v46[16], &qword_1EB924F20, &unk_1B6226380);
    if (v18)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if (v42)
  {
    goto LABEL_8;
  }

LABEL_20:
  if (!v31)
  {
    goto LABEL_9;
  }

LABEL_21:
  sub_1B6037288(v44 + v46[11], &qword_1EB924F00, &unk_1B6226360);
  if (v43)
  {
    goto LABEL_10;
  }

LABEL_22:
  if (!v25)
  {
    goto LABEL_11;
  }

LABEL_23:
  sub_1B6037288(v44 + v46[13], &qword_1EB924F08, &unk_1B6226610);
  if (v122)
  {
    goto LABEL_12;
  }

LABEL_24:
  if (!v123)
  {
    goto LABEL_13;
  }

LABEL_25:
  sub_1B6037288(v44 + v46[15], &qword_1EB924F18, &unk_1B6226600);
  if (v124)
  {
    goto LABEL_14;
  }

LABEL_26:
  if (v18)
  {
LABEL_27:
    sub_1B6037288(v44 + v46[17], &qword_1EB924F30, &unk_1B6226390);
    if ((v45 & 1) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

LABEL_15:
  if (!v45)
  {
    return;
  }

LABEL_28:
}

unint64_t sub_1B60E436C()
{
  result = qword_1EB925798;
  if (!qword_1EB925798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925798);
  }

  return result;
}

unint64_t sub_1B60E43C0()
{
  result = qword_1EB9257A0;
  if (!qword_1EB9257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9257A0);
  }

  return result;
}

unint64_t sub_1B60E4414()
{
  result = qword_1EB9257A8;
  if (!qword_1EB9257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9257A8);
  }

  return result;
}

uint64_t sub_1B60E4468(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925740, &unk_1B6229870);
    result = OUTLINED_FUNCTION_46_2(v3);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B60E44C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B60E450C()
{
  result = qword_1EB9257F0;
  if (!qword_1EB9257F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9257F0);
  }

  return result;
}

uint64_t sub_1B60E4560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataRequestOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60E45C4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataRequestOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for WeatherDataRequestOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataRequestOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60E47E0()
{
  result = qword_1EB9257F8;
  if (!qword_1EB9257F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9257F8);
  }

  return result;
}

unint64_t sub_1B60E4838()
{
  result = qword_1EB925800;
  if (!qword_1EB925800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925800);
  }

  return result;
}

unint64_t sub_1B60E4890()
{
  result = qword_1EB925808;
  if (!qword_1EB925808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925808);
  }

  return result;
}

void *sub_1B60E48E4()
{
  type metadata accessor for ExtremaInitializer();
  v0 = swift_allocObject();
  type metadata accessor for ExtremaReducer();
  v1 = swift_allocObject();
  type metadata accessor for ExtremaFinalizer();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925810, &qword_1B6229AD8);
  result = swift_allocObject();
  result[2] = sub_1B60E4A8C;
  result[3] = v0;
  result[4] = sub_1B60E4AB8;
  result[5] = v1;
  result[6] = sub_1B60E4AE0;
  result[7] = v2;
  return result;
}

uint64_t sub_1B60E4A8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B60E49AC();
  *a1 = result;
  return result;
}

uint64_t WeatherInterpolator.__allocating_init<A, B, C>(initializer:reducer:finalizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  WeatherInterpolator.init<A, B, C>(initializer:reducer:finalizer:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

void *WeatherInterpolator.init<A, B, C>(initializer:reducer:finalizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(*v9 + 88);
  v32 = *(*v9 + 80);
  v16 = sub_1B60E4D70(a1, v32, v13, a4, a5, a6, a7, a8, a9);
  v30 = v17;
  OUTLINED_FUNCTION_10_6();
  (*(v18 + 8))(a1, a4);
  v9[2] = v16;
  v9[3] = v30;
  v19 = OUTLINED_FUNCTION_14_12();
  v21 = sub_1B60E4EC8(v19, v20, v13, a4, a5, a6, a7, a8, a9);
  v23 = v22;
  OUTLINED_FUNCTION_10_6();
  (*(v24 + 8))(a2, a5);
  v9[4] = v21;
  v9[5] = v23;
  v25 = sub_1B60E5020(a3, v32, v13, a4, a5, a6, a7, a8, a9);
  v27 = v26;
  OUTLINED_FUNCTION_10_6();
  (*(v28 + 8))(a3, a6);
  v9[6] = v25;
  v9[7] = v27;
  return v9;
}

uint64_t (*sub_1B60E4D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))()
{
  v23 = a7;
  v24 = a8;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v23;
  v20 = v24;
  *(v19 + 6) = a6;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  *(v19 + 9) = a9;
  (*(v14 + 32))(&v19[v18], v17, a4);
  return sub_1B60E6ACC;
}

uint64_t (*sub_1B60E4EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2)
{
  v23 = a7;
  v24 = a8;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v23;
  v20 = v24;
  *(v19 + 6) = a6;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  *(v19 + 9) = a9;
  (*(v14 + 32))(&v19[v18], v17, a5);
  return sub_1B60E6A54;
}

uint64_t (*sub_1B60E5020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a7;
  v24 = a8;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v23;
  v20 = v24;
  *(v19 + 6) = a6;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  *(v19 + 9) = a9;
  (*(v14 + 32))(&v19[v18], v17, a6);
  return sub_1B60E69D0;
}

void WeatherInterpolator.reduce(_:from:to:clampRange:useMonotone:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v239) = a7;
  v211 = a6;
  v213 = a5;
  v212 = a4;
  v241 = a3;
  v234 = a2;
  v11 = *v8;
  v12 = *v8;
  v13 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2_7();
  v225 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v227 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  v236 = &v203 - v22;
  v216 = v8;
  v229 = *(v11 + 80);
  OUTLINED_FUNCTION_2_7();
  v214 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_3();
  v238 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v26);
  v233 = &v203 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924628, &qword_1B6223650);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_2_3();
  v237 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16();
  v232 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v203 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v203 - v38;
  v40 = type metadata accessor for InterpolationElement(0);
  OUTLINED_FUNCTION_2_7();
  v215 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_3();
  v224 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_16();
  v226 = v46;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_16();
  v228 = v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_16();
  v240 = v50;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_16();
  v230 = v52;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_16();
  v231 = v54;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_16();
  v235 = v56;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v203 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v203 - v61;
  v63 = sub_1B6221554();
  if (v63 < 2)
  {
    goto LABEL_7;
  }

  v64 = v63;
  v223 = v13;
  v65 = a8;
  v209 = v59;
  v244 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925818, qword_1B6229AF8);
  v210 = sub_1B60E6888(&qword_1EB925820, MEMORY[0x1E69E6340]);
  sub_1B6221784();
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    v68 = v39;
LABEL_6:
    sub_1B608E0C4(v68);
    a8 = v65;
LABEL_7:
    if (qword_1EB9244B8 != -1)
    {
      OUTLINED_FUNCTION_0_37(&qword_1EB9244B8);
    }

    v70 = sub_1B6220B34();
    __swift_project_value_buffer(v70, qword_1EB942AB0);
    OUTLINED_FUNCTION_48();
    sub_1B6220784();
    v71 = sub_1B6220B14();
    v72 = sub_1B62217E4();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v12;
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1B6020000, v71, v72, "Failed to reduce data points because there are not enough data points; count=%ld", v74, 0xCu);
      v12 = v73;
      OUTLINED_FUNCTION_30();
    }

    else
    {
    }

    v75 = *(v12 + 88);
    v76 = a8;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v75);
    return;
  }

  sub_1B60E6824(v39, v62, v67);
  v244 = a1;
  sub_1B60E6888(&qword_1EB925828, MEMORY[0x1E69E6310]);
  v208 = v66;
  sub_1B6221164();
  if (__swift_getEnumTagSinglePayload(v36, 1, v40) == 1)
  {
    sub_1B60E68D8(v62, v69);
    v68 = v36;
    goto LABEL_6;
  }

  sub_1B60E6824(v36, v209, v69);
  v77 = sub_1B609F140(&qword_1EDAB0D78, MEMORY[0x1E6969548]);
  v78 = v241;
  v79 = v234;
  v80 = v223;
  v81 = sub_1B6221184();
  v207 = v65;
  if (v81)
  {
    v240 = v12;
    v204 = v62;
    if (qword_1EB9244B8 != -1)
    {
LABEL_49:
      OUTLINED_FUNCTION_0_37(&qword_1EB9244B8);
    }

    v82 = sub_1B6220B34();
    __swift_project_value_buffer(v82, qword_1EB942AB0);
    OUTLINED_FUNCTION_16_13();
    v83 = v220;
    v84 = v223;
    (v12)(v220, v79, v223);
    (v12)(v221, v78, v84);
    v85 = sub_1B6220B14();
    v86 = sub_1B62217E4();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v244 = v241;
      *v87 = 136315394;
      OUTLINED_FUNCTION_5_20(&qword_1EDAB0D70);
      v88 = sub_1B6221F04();
      v89 = v83;
      v90 = *(v64 + 8);
      v90(v89, v84);
      v91 = OUTLINED_FUNCTION_7_13();
      sub_1B602EEB0(v91, v92, v93);
      OUTLINED_FUNCTION_48();

      *(v87 + 4) = v88;
      *(v87 + 12) = 2080;
      v94 = sub_1B6221F04();
      v96 = v95;
      v97 = OUTLINED_FUNCTION_14_12();
      (v90)(v97);
      v98 = sub_1B602EEB0(v94, v96, &v244);

      *(v87 + 14) = v98;
      _os_log_impl(&dword_1B6020000, v85, v86, "Failed to reduce data points because requested time range is degenerate; startDate=%s, endDate=%s", v87, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {

      v139 = *(v64 + 8);
      v140 = OUTLINED_FUNCTION_14_12();
      v139(v140);
      v99.n128_f64[0] = (v139)(v83, v84);
    }

    sub_1B60E68D8(v209, v99);
    sub_1B60E68D8(v204, v141);
    v75 = *(v240 + 88);
    v76 = v207;
    goto LABEL_13;
  }

  v100 = v80;
  if (sub_1B6221184() & 1) != 0 || (sub_1B6221184())
  {
    v240 = v12;
    v102 = v62;
    if (qword_1EB9244B8 != -1)
    {
      OUTLINED_FUNCTION_0_37(&qword_1EB9244B8);
    }

    v103 = sub_1B6220B34();
    __swift_project_value_buffer(v103, qword_1EB942AB0);
    OUTLINED_FUNCTION_16_13();
    (v12)(v217, v234, v80);
    v104 = v218;
    v105.n128_f64[0] = (v12)(v218, v241, v80);
    v106 = v222;
    sub_1B60E6934(v62, v222, v105);
    v107 = v209;
    v108 = v224;
    sub_1B60E6934(v209, v224, v109);
    v110 = sub_1B6220B14();
    LODWORD(v241) = sub_1B62217E4();
    if (os_log_type_enabled(v110, v241))
    {
      v111 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v244 = v239;
      *v111 = 136315906;
      OUTLINED_FUNCTION_5_20(&qword_1EDAB0D70);
      v238 = v110;
      v112 = OUTLINED_FUNCTION_17_9();
      v204 = v102;
      v113 = *(v64 + 8);
      v114 = OUTLINED_FUNCTION_14_12();
      v113(v114);
      v115 = OUTLINED_FUNCTION_7_13();
      sub_1B602EEB0(v115, v116, v117);
      OUTLINED_FUNCTION_48();

      *(v111 + 4) = v112;
      *(v111 + 12) = 2080;
      v118 = OUTLINED_FUNCTION_17_9();
      (v113)(v104, v100);
      v119 = v207;
      v120 = OUTLINED_FUNCTION_7_13();
      sub_1B602EEB0(v120, v121, v122);
      OUTLINED_FUNCTION_48();

      *(v111 + 14) = v118;
      *(v111 + 22) = 2080;
      v123 = v222;
      v124 = OUTLINED_FUNCTION_17_9();
      sub_1B60E68D8(v123, v125);
      v126 = OUTLINED_FUNCTION_7_13();
      sub_1B602EEB0(v126, v127, v128);
      OUTLINED_FUNCTION_48();

      *(v111 + 24) = v124;
      *(v111 + 32) = 2080;
      v129 = v224;
      v130 = OUTLINED_FUNCTION_17_9();
      v132 = v131;
      sub_1B60E68D8(v129, v133);
      v134 = sub_1B602EEB0(v130, v132, &v244);

      *(v111 + 34) = v134;
      v135 = v238;
      _os_log_impl(&dword_1B6020000, v238, v241, "Failed to reduce data points because the requested time range is outside the range of the data points; startDate=%s, endDate=%s, dataPointsStartDate=%s, dataPointsEndDate=%s", v111, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      sub_1B60E68D8(v209, v136);
      sub_1B60E68D8(v204, v137);
      v138 = v240;
    }

    else
    {

      sub_1B60E68D8(v108, v142);
      sub_1B60E68D8(v106, v143);
      v144 = *(v64 + 8);
      v144(v104, v100);
      v145 = OUTLINED_FUNCTION_14_12();
      v146.n128_f64[0] = (v144)(v145);
      sub_1B60E68D8(v107, v146);
      sub_1B60E68D8(v102, v147);
      v138 = v240;
      v119 = v207;
    }

    v75 = *(v138 + 88);
    v76 = v119;
    goto LABEL_13;
  }

  v220 = v77;
  v204 = v62;
  v224 = (v225 + 8);
  v148 = v64 - 1;
  v149 = 1;
  v12 = v235;
  v78 = v215;
  while (v64 != v149)
  {
    if (v149 >= *(a1 + 16))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_1B60E6934(a1 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v149, v12, v101);
    v150 = *(v40 + 20);
    v151 = sub_1B6221184();
    v152 = v235 + v150;
    v12 = v235;
    (*v224)(v152, v100);
    ++v149;
    if (v151)
    {
      v148 = v149 - 2;
      v64 = v149 - 1;
      break;
    }
  }

  v153 = v216;
  v154 = v216[3];
  v222 = v216[2];
  v221 = v154;
  OUTLINED_FUNCTION_9_12(v148 - 1);
  v78 = v208;
  v12 = v148;
  sub_1B60E63B4(v219);
  v155 = v235;
  OUTLINED_FUNCTION_12_11(v148);
  v156 = v231;
  OUTLINED_FUNCTION_12_11(v64);
  OUTLINED_FUNCTION_6_15(v148 + 2);
  sub_1B60E63B4(v157);
  v158 = v219;
  v222(v219, v155, v156, v64, v234);
  sub_1B608E0C4(v64);
  sub_1B60E68D8(v156, v159);
  sub_1B60E68D8(v155, v160);
  sub_1B608E0C4(v158);
  v161 = v153[5];
  v206 = v153[4];
  v205 = v161;
  v222 = (v225 + 16);
  v218 = (v214 + 1);
  v214 += 4;
  v217 = v40;
  v215 = a1;
  v162 = v232;
  v79 = v230;
  do
  {
    OUTLINED_FUNCTION_9_12(v12 - 1);
    sub_1B60E63B4(v162);
    OUTLINED_FUNCTION_12_11(v12);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v163 = v12;
    OUTLINED_FUNCTION_7_13();
    sub_1B62215A4();
    if (__OFADD__(v12, 2))
    {
      goto LABEL_47;
    }

    v225 = v12 + 1;
    v242 = v12 + 2;
    v243 = a1;
    sub_1B60E63B4(v237);
    v164 = v228;
    OUTLINED_FUNCTION_12_11(v12);
    v165 = *(v40 + 20);
    v166 = v234;
    v167 = v223;
    v168 = sub_1B6221194();
    v169 = *v222;
    v221 = v163;
    if (v168)
    {
      v170 = v236;
      v171 = v166;
    }

    else
    {
      v171 = v164 + v165;
      v170 = v236;
    }

    v169(v170, v171, v167);
    v172 = v226;
    v173 = v164;
    v174 = *v224;
    (*v224)(v173 + v165, v167);
    OUTLINED_FUNCTION_12_11(v225);
    v175 = *(v40 + 20);
    v176 = v167;
    if (sub_1B6221184())
    {
      v177 = v227;
      v178 = OUTLINED_FUNCTION_7_13();
    }

    else
    {
      v179 = v172 + v175;
      v177 = v227;
      v178 = v227;
    }

    v169(v178, v179, v176);
    v174(v172 + v175, v176);
    v180 = v233;
    v181 = v162;
    v79 = v230;
    v182 = v240;
    v183 = v237;
    v184 = v236;
    v206(v233, v181, v230, v240, v237, v236, v177, v239 & 1);
    v174(v177, v176);
    v174(v184, v176);
    v185 = v183;
    v162 = v232;
    sub_1B608E0C4(v185);
    sub_1B60E68D8(v182, v186);
    sub_1B60E68D8(v79, v187);
    sub_1B608E0C4(v162);
    v188 = *v218;
    v189 = v229;
    (*v218)(v180, v229);
    v190.n128_f64[0] = (*v214)(v180, v238, v189);
    v191 = v225;
    a1 = v215;
    sub_1B60E6614(v239 & 1, v225, v215, v241, v190);
    v12 = v221 + 1;
    v40 = v217;
    v64 = v231;
    v78 = v208;
  }

  while ((v192 & 1) != 0);
  if (__OFSUB__(v191, 2))
  {
    __break(1u);
  }

  else
  {
    v193 = v216[6];
    v239 = v216[7];
    v240 = v193;
    OUTLINED_FUNCTION_9_12(v191 - 2);
    sub_1B60E63B4(v219);
    v194 = v235;
    OUTLINED_FUNCTION_12_11(v191 - 1);
    OUTLINED_FUNCTION_12_11(v191);
    v195 = v241;
    if (!__OFADD__(v191, 1))
    {
      OUTLINED_FUNCTION_6_15(v191 + 1);
      sub_1B60E63B4(v196);
      v197 = v233;
      v198 = v219;
      (v240)(v233, v219, v194, v64, v64, v195, v212, v213, v211 & 1);
      sub_1B608E0C4(v64);
      sub_1B60E68D8(v64, v199);
      sub_1B60E68D8(v194, v200);
      sub_1B608E0C4(v198);
      v201.n128_f64[0] = v188(v197, v229);
      sub_1B60E68D8(v209, v201);
      sub_1B60E68D8(v204, v202);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1B60E63B4@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v18[-v7];
  sub_1B6221764();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_1B62213F4();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = sub_1B62217A4();
    v12 = v11;
    v13 = swift_getAssociatedTypeWitness();
    (*(*(v13 - 8) + 16))(a4, v12, v13);
    v10(v18, 0);
    v14 = a4;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    v14 = a4;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

void sub_1B60E6614(char a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v8 = type metadata accessor for InterpolationElement(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (__OFADD__(a2, 2))
    {
      __break(1u);
      goto LABEL_14;
    }

    if ((a2 + 2) >= sub_1B6221554())
    {
      return;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (*(a3 + 16) > a2)
    {
LABEL_11:
      sub_1B60E6934(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, v11, v12);
      v13 = *(v8 + 20);
      sub_1B621D824();
      v14 = sub_1B621D8F4();
      (*(*(v14 - 8) + 8))(&v11[v13], v14);
      return;
    }

    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a2 + 1) < sub_1B6221554())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (*(a3 + 16) > a2)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void *WeatherInterpolator.deinit()
{

  return v0;
}

uint64_t WeatherInterpolator.__deallocating_deinit()
{
  WeatherInterpolator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1B60E6824(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for InterpolationElement(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B60E6888(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925818, qword_1B6229AF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B60E68D8(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for InterpolationElement(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B60E6934(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for InterpolationElement(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

WeatherDaemon::CardinalDirection_optional __swiftcall CardinalDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CardinalDirection.rawValue.getter()
{
  result = 78;
  switch(*v0)
  {
    case 1:
      result = 17742;
      break;
    case 2:
      result = 69;
      break;
    case 3:
      result = 17747;
      break;
    case 4:
      result = 83;
      break;
    case 5:
      result = 22355;
      break;
    case 6:
      result = 87;
      break;
    case 7:
      result = 22350;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B60E6C18()
{
  result = qword_1EB925830;
  if (!qword_1EB925830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925830);
  }

  return result;
}

uint64_t sub_1B60E6C90@<X0>(uint64_t *a1@<X8>)
{
  result = CardinalDirection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CardinalDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60E6EFC()
{
  result = qword_1EDAAF8E8[0];
  if (!qword_1EDAAF8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAAF8E8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B60E6F94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B60E6FB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t PrecipitationConditionParameter.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrecipitationConditionParameter(0) + 20);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t PrecipitationConditionParameter.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrecipitationConditionParameter(0) + 20);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t static PrecipitationConditionParameter.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x415F444E4F434553;
  }

  else
  {
    v3 = 0x54415F5453524946;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000054;
  }

  if (*a2)
  {
    v5 = 0x415F444E4F434553;
  }

  else
  {
    v5 = 0x54415F5453524946;
  }

  if (*a2)
  {
    v6 = 0xE900000000000054;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_1B6221F24();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for PrecipitationConditionParameter(0);

  return sub_1B621D8A4();
}

uint64_t sub_1B60E7264(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60E7334(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1B60E735C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60E7264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60E7384(uint64_t a1)
{
  v2 = sub_1B60E75AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60E73C0(uint64_t a1)
{
  v2 = sub_1B60E75AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrecipitationConditionParameter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925838, &qword_1B6229D30);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60E75AC();
  sub_1B62220F4();
  v12[15] = *v3;
  v12[14] = 0;
  sub_1B60E7600();
  sub_1B6221EC4();
  if (!v2)
  {
    type metadata accessor for PrecipitationConditionParameter(0);
    v12[13] = 1;
    sub_1B621D8F4();
    sub_1B609F140(&unk_1EDAB20F8, MEMORY[0x1E6969538]);
    sub_1B6221EC4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60E75AC()
{
  result = qword_1EB925840;
  if (!qword_1EB925840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925840);
  }

  return result;
}

unint64_t sub_1B60E7600()
{
  result = qword_1EB925848;
  if (!qword_1EB925848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925848);
  }

  return result;
}

uint64_t PrecipitationConditionParameter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v25 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925850, &qword_1B6229D38);
  OUTLINED_FUNCTION_2();
  v27 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PrecipitationConditionParameter(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60E75AC();
  sub_1B62220D4();
  if (!v2)
  {
    v16 = v15;
    v24 = v12;
    v17 = v27;
    v18 = v28;
    v31 = 0;
    sub_1B60E7930();
    v19 = v29;
    sub_1B6221DD4();
    v23 = v16;
    *v16 = v32;
    v30 = 1;
    sub_1B609F140(&qword_1EDAB20F0, MEMORY[0x1E6969558]);
    v22 = v7;
    sub_1B6221DD4();
    (*(v17 + 8))(v11, v19);
    v20 = v23;
    (*(v25 + 32))(&v23[*(v24 + 20)], v22, v18);
    sub_1B60E7984(v20, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60E7930()
{
  result = qword_1EB925858;
  if (!qword_1EB925858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925858);
  }

  return result;
}

uint64_t sub_1B60E7984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationConditionParameter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationConditionParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60E7B54()
{
  result = qword_1EB925860;
  if (!qword_1EB925860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925860);
  }

  return result;
}

unint64_t sub_1B60E7BAC()
{
  result = qword_1EB925868;
  if (!qword_1EB925868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925868);
  }

  return result;
}

unint64_t sub_1B60E7C04()
{
  result = qword_1EB925870;
  if (!qword_1EB925870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925870);
  }

  return result;
}

double static WeatherComparisonsDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5(a1);
  qword_1EB925878 = a1;
  off_1EB925880 = a2;

  return result;
}

uint64_t (*static WeatherComparisonsDescriptor.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B60E7CF8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB925880;
  *a1 = qword_1EB925878;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B60E7D48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB925878 = v2;
  off_1EB925880 = v1;
  sub_1B6220784();

  return result;
}