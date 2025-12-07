uint64_t sub_2675BF5D8()
{
  v1 = *v0;
  sub_2675CF018();
  if (v1)
  {
    v2 = 10002;
  }

  else
  {
    v2 = 10001;
  }

  MEMORY[0x26D5FA150](v2);
  return sub_2675CF038();
}

uint64_t sub_2675BF628()
{
  if (*v0)
  {
    v1 = 10002;
  }

  else
  {
    v1 = 10001;
  }

  return MEMORY[0x26D5FA150](v1);
}

uint64_t sub_2675BF660(uint64_t a1)
{
  v2 = *v1;
  sub_2675CF018();
  if (v2)
  {
    v3 = 10002;
  }

  else
  {
    v3 = 10001;
  }

  MEMORY[0x26D5FA150](v3);
  return sub_2675CF038();
}

void *sub_2675BF6AC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10002)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 10001)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2675BF6D4(uint64_t *a1@<X8>)
{
  v2 = 10001;
  if (*v1)
  {
    v2 = 10002;
  }

  *a1 = v2;
}

uint64_t sub_2675BF710()
{
  v1 = *v0;
  sub_2675CF018();
  MEMORY[0x26D5FA150](v1 + 10101);
  return sub_2675CF038();
}

uint64_t sub_2675BF790(uint64_t a1)
{
  v2 = *v1;
  sub_2675CF018();
  MEMORY[0x26D5FA150](v2 + 10101);
  return sub_2675CF038();
}

uint64_t sub_2675BF7D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2675C055C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2675BF844()
{
  v1 = *v0;
  sub_2675CF018();
  MEMORY[0x26D5FA150](v1 + 10201);
  return sub_2675CF038();
}

uint64_t sub_2675BF8C4(uint64_t a1)
{
  v2 = *v1;
  sub_2675CF018();
  MEMORY[0x26D5FA150](v2 + 10201);
  return sub_2675CF038();
}

uint64_t sub_2675BF90C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2675C0574(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2675BF97C()
{
  v1 = *v0;
  sub_2675CF018();
  if (v1)
  {
    v2 = 10302;
  }

  else
  {
    v2 = 10301;
  }

  MEMORY[0x26D5FA150](v2);
  return sub_2675CF038();
}

uint64_t sub_2675BF9CC()
{
  if (*v0)
  {
    v1 = 10302;
  }

  else
  {
    v1 = 10301;
  }

  return MEMORY[0x26D5FA150](v1);
}

uint64_t sub_2675BFA04(uint64_t a1)
{
  v2 = *v1;
  sub_2675CF018();
  if (v2)
  {
    v3 = 10302;
  }

  else
  {
    v3 = 10301;
  }

  MEMORY[0x26D5FA150](v3);
  return sub_2675CF038();
}

void *sub_2675BFA50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10302)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 10301)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2675BFA78(uint64_t *a1@<X8>)
{
  v2 = 10301;
  if (*v1)
  {
    v2 = 10302;
  }

  *a1 = v2;
}

uint64_t sub_2675BFAA8()
{
  v1 = *v0;
  sub_2675CF018();
  MEMORY[0x26D5FA150](v1 + 10401);
  return sub_2675CF038();
}

uint64_t sub_2675BFB28(uint64_t a1)
{
  v2 = *v1;
  sub_2675CF018();
  MEMORY[0x26D5FA150](v2 + 10401);
  return sub_2675CF038();
}

uint64_t sub_2675BFB70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2675C058C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2675BFBC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = sub_2675C03B8();

  return MEMORY[0x2821FE2D0](a1, a2, v5, v6);
}

uint64_t getEnumTagSinglePayload for ModelTrainerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelTrainerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriMASPFLPluginRunnerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriMASPFLPluginRunnerError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BiomeSQLRowAggregatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BiomeSQLRowAggregatorError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelEvaluationMetricType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelEvaluationMetricType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2675C01B0()
{
  result = qword_2801C9D78;
  if (!qword_2801C9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9D78);
  }

  return result;
}

unint64_t sub_2675C0208()
{
  result = qword_2801C9D80;
  if (!qword_2801C9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9D80);
  }

  return result;
}

unint64_t sub_2675C0260()
{
  result = qword_2801C9D88;
  if (!qword_2801C9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9D88);
  }

  return result;
}

unint64_t sub_2675C02B8()
{
  result = qword_2801C9D90;
  if (!qword_2801C9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9D90);
  }

  return result;
}

unint64_t sub_2675C0310()
{
  result = qword_2801C9D98;
  if (!qword_2801C9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9D98);
  }

  return result;
}

unint64_t sub_2675C0364()
{
  result = qword_2801C9DA0;
  if (!qword_2801C9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9DA0);
  }

  return result;
}

unint64_t sub_2675C03B8()
{
  result = qword_2801C9DA8;
  if (!qword_2801C9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9DA8);
  }

  return result;
}

unint64_t sub_2675C040C()
{
  result = qword_2801C9DB0;
  if (!qword_2801C9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9DB0);
  }

  return result;
}

unint64_t sub_2675C0460()
{
  result = qword_2801C9DB8;
  if (!qword_2801C9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9DB8);
  }

  return result;
}

unint64_t sub_2675C04B4()
{
  result = qword_2801C9DC0;
  if (!qword_2801C9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9DC0);
  }

  return result;
}

unint64_t sub_2675C0508()
{
  result = qword_2801C9DC8[0];
  if (!qword_2801C9DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2801C9DC8);
  }

  return result;
}

uint64_t sub_2675C055C(uint64_t a1)
{
  if ((a1 - 10101) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 10101;
  }
}

uint64_t sub_2675C0574(uint64_t a1)
{
  if ((a1 - 10201) >= 5)
  {
    return 5;
  }

  else
  {
    return a1 - 10201;
  }
}

uint64_t sub_2675C058C(uint64_t a1)
{
  if ((a1 - 10401) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 10401;
  }
}

char *sub_2675C05CC(uint64_t a1)
{
  if (*(a1 + 16) && (v3 = v1, v5 = sub_2675CE92C(v3[7], v3[8]), (v6 & 1) != 0) && (sub_2675C3B30(*(a1 + 56) + 32 * v5, v38), swift_dynamicCast()))
  {
    result = sub_2675C0A80(a1);
    if (!v2)
    {
      v9 = result;
      v10 = v8;
      swift_beginAccess();
      v11 = v3[2];
      if (*(v11 + 16) && (v12 = sub_2675CE8E8(v37), (v13 & 1) != 0))
      {
        v14 = *(*(v11 + 56) + 8 * v12);

        sub_2675C1CC4(v9);

        v28 = *(v14 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 24) = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_2675C1F88(0, *(v28 + 2) + 1, 1, v28);
          *(v14 + 24) = v28;
        }

        v30 = v10;
        v32 = *(v28 + 2);
        v31 = *(v28 + 3);
        if (v32 >= v31 >> 1)
        {
          v34 = sub_2675C1F88((v31 > 1), v32 + 1, 1, v28);
          v30 = v10;
          v28 = v34;
        }

        *(v28 + 2) = v32 + 1;
        *&v28[4 * v32 + 32] = v30;
        *(v14 + 24) = v28;
        swift_beginAccess();

        v33 = swift_isUniquelyReferenced_nonNull_native();
        v36 = v3[2];
        v3[2] = 0x8000000000000000;
        sub_2675C2728(v14, v37, v33);
        v3[2] = v36;
        swift_endAccess();
      }

      else
      {
        if (qword_2801C9D10 != -1)
        {
          swift_once();
        }

        v20 = sub_2675CEC68();
        __swift_project_value_buffer(v20, qword_2801CBA50);
        v21 = sub_2675CEC48();
        v22 = sub_2675CEDE8();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 134217984;
          *(v23 + 4) = v37;
          _os_log_impl(&dword_2675BE000, v21, v22, "Initializing training data for aggregating value %ld", v23, 0xCu);
          MEMORY[0x26D5FA5F0](v23, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F58, &qword_2675CFCC8);
        v24 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F60, &qword_2675CFCD0);
        v25 = swift_allocObject();
        v25[3] = 1;
        v25[4] = *(v9 + 16);
        v25[2] = v9;
        *(v24 + 16) = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F18, &qword_2675CFC98);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_2675CFAF0;
        *(v26 + 32) = v10;
        *(v24 + 24) = v26;
        swift_beginAccess();
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v35 = v3[2];
        v3[2] = 0x8000000000000000;
        sub_2675C2728(v24, v37, v27);
        v3[2] = v35;
        return swift_endAccess();
      }
    }
  }

  else
  {
    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v15 = sub_2675CEC68();
    __swift_project_value_buffer(v15, qword_2801CBA50);
    v16 = sub_2675CEC48();
    v17 = sub_2675CEDF8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2675BE000, v16, v17, "aggregatingValue not found.", v18, 2u);
      MEMORY[0x26D5FA5F0](v18, -1, -1);
    }

    sub_2675C3748();
    swift_allocError();
    *v19 = 2;
    return swift_willThrow();
  }

  return result;
}

char *sub_2675C0A80(uint64_t a1)
{
  v4 = a1;
  v5 = v1[9];
  v42 = *(v5 + 16);
  if (v42)
  {
    v6 = 0;
    v7 = v1[10];
    v8 = v1[11];
    v9 = (v5 + 40);
    v43 = MEMORY[0x277D84F90];
    v10 = *(v5 + 16);
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v3 = *(v9 - 1);
      v2 = *v9;
      v11 = v3 == v7 && v2 == v8;
      if (!v11 && (sub_2675CEF98() & 1) == 0)
      {
        v12 = *(v4 + 16);

        if (!v12 || (v13 = sub_2675CE92C(v3, v2), (v14 & 1) == 0))
        {

          if (qword_2801C9D10 != -1)
          {
            swift_once();
          }

          v28 = sub_2675CEC68();
          __swift_project_value_buffer(v28, qword_2801CBA50);

          v24 = sub_2675CEC48();
          v25 = sub_2675CEDF8();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v45[0] = v27;
            *v26 = 136315394;
            v29 = sub_2675CE284(v3, v2, v45);

            *(v26 + 4) = v29;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        sub_2675C3B30(*(a1 + 56) + 32 * v13, v45);
        v15 = sub_2675C3C90(v45);
        v16 = v43;
        if ((v15 & 0x100000000) != 0)
        {

          if (qword_2801C9D10 != -1)
          {
            swift_once();
          }

          v34 = sub_2675CEC68();
          __swift_project_value_buffer(v34, qword_2801CBA50);

          v35 = sub_2675CEC48();
          v36 = sub_2675CEDF8();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v46 = v38;
            *v37 = 136315138;
            v39 = sub_2675CE284(v3, v2, &v46);

            *(v37 + 4) = v39;
            _os_log_impl(&dword_2675BE000, v35, v36, "Unable to convert value for %s to float", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v38);
            MEMORY[0x26D5FA5F0](v38, -1, -1);
            MEMORY[0x26D5FA5F0](v37, -1, -1);
          }

          else
          {
          }

          sub_2675C3748();
          swift_allocError();
          *v40 = 4;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_0Tm(v45);
        }

        v17 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_2675C1F88(0, *(v43 + 2) + 1, 1, v43);
        }

        v3 = *(v16 + 2);
        v18 = *(v16 + 3);
        v2 = v3 + 1;
        if (v3 >= v18 >> 1)
        {
          v16 = sub_2675C1F88((v18 > 1), v3 + 1, 1, v16);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        *(v16 + 2) = v2;
        v43 = v16;
        *&v16[4 * v3 + 32] = v17;
        v4 = a1;
        v10 = v42;
      }

      ++v6;
      v9 += 2;
      if (v10 == v6)
      {
        goto LABEL_19;
      }
    }
  }

  v43 = MEMORY[0x277D84F90];
LABEL_19:
  v2 = *(v41 + 80);
  v3 = *(v41 + 88);
  if (*(v4 + 16))
  {
    v19 = sub_2675CE92C(*(v41 + 80), *(v41 + 88));
    if (v20)
    {
      sub_2675C3B30(*(v4 + 56) + 32 * v19, v45);
      v21 = sub_2675C3C90(v45);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      if ((v21 & 0x100000000) == 0)
      {
        return v43;
      }
    }
  }

  if (qword_2801C9D10 != -1)
  {
LABEL_40:
    swift_once();
  }

  v23 = sub_2675CEC68();
  __swift_project_value_buffer(v23, qword_2801CBA50);

  v24 = sub_2675CEC48();
  v25 = sub_2675CEDF8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_2675CE284(v2, v3, v45);
LABEL_30:
    *(v26 + 12) = 2080;
    v30 = sub_2675CECB8();
    v32 = sub_2675CE284(v30, v31, v45);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_2675BE000, v24, v25, "Couldn't find %s value in %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5FA5F0](v27, -1, -1);
    MEMORY[0x26D5FA5F0](v26, -1, -1);
  }

LABEL_31:

  sub_2675C3748();
  swift_allocError();
  *v33 = 4;
  return swift_willThrow();
}

_DWORD *sub_2675C108C()
{
  v2 = v1;
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(v0[9] + 16);
  v4 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v62 = v0;
  v5 = v0[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v65 = v1;
    v7 = v3;
    v4 = sub_2675C2190(v6, 0);
    v8 = sub_2675C35B0(v67, v4 + 4, v6, v5);
    v9 = v67[0];
    v3 = v67[4];

    sub_2675C3708(v9);
    if (v8 != v6)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_27;
    }

    v3 = v7;
    v2 = v65;
  }

  v67[0] = v4;

  sub_2675C2C94(v67);
  if (!v2)
  {

    v10 = v67[0];
    v61 = *(v67[0] + 2);
    if (!v61)
    {
LABEL_18:

      v44 = objc_allocWithZone(MEMORY[0x277CBFEB0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F08, &qword_2675CFC88);
      v45 = sub_2675CED28();

      v3 = [v44 initWithFeatureProviderArray_];

      return v3;
    }

    v11 = 0;
    v6 = MEMORY[0x277D84F90];
    v12 = 40;
    v60 = v67[0];
    v59 = v3;
    while (1)
    {
      if (v11 >= v10[2])
      {
        __break(1u);
        goto LABEL_33;
      }

      v13 = *(v10 + v12);
      v14 = *(v13 + 16);
      v15 = *(v14 + 32);
      if (v15 != v3)
      {

        if (qword_2801C9D10 != -1)
        {
          swift_once();
        }

        v46 = sub_2675CEC68();
        __swift_project_value_buffer(v46, qword_2801CBA50);
        v47 = sub_2675CEC48();
        v48 = sub_2675CEDF8();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = v3;
          v3 = v49;
          *v49 = 134218240;
          *(v49 + 4) = v15;
          *(v49 + 12) = 2048;
          *(v49 + 14) = v50;
          _os_log_impl(&dword_2675BE000, v47, v48, "Mismatch in number of columns in trainingData %ld and number of features in arg %ld", v49, 0x16u);
          MEMORY[0x26D5FA5F0](v3, -1, -1);
        }

        sub_2675C3748();
        swift_allocError();
        *v51 = 5;
        swift_willThrow();
        goto LABEL_30;
      }

      v64 = v11;
      v16 = *(v14 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 16) = v16;
      v63 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_2675C3588(v16);
      }

      *(v14 + 16) = v16;

      v18 = *(v13 + 24);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 24) = v18;
      if ((v19 & 1) == 0)
      {
        v18 = sub_2675C3588(v18);
      }

      *(v13 + 24) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9ED8, &unk_2675CFC60);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2675CFB00;
      *(v20 + 32) = sub_2675CEDB8();
      *(v20 + 40) = sub_2675CEDB8();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2675CFB00;
      *(v21 + 32) = sub_2675CEDB8();
      *(v21 + 40) = sub_2675CEDB8();
      v22 = objc_allocWithZone(MEMORY[0x277CBFF48]);
      sub_2675C384C(0, &qword_2801C9EE0, 0x277CCABB0);
      v23 = sub_2675CED28();

      v24 = sub_2675CED28();

      v67[0] = 0;
      v25 = [v22 initWithDataPointer:v16 + 32 shape:v23 dataType:65568 strides:v24 deallocator:0 error:v67];

      v26 = v67[0];
      if (!v25)
      {
        v3 = v67[0];

        v6 = sub_2675CEAF8();

        swift_willThrow();

        goto LABEL_26;
      }

      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_2675CFB10;
      v28 = v26;
      *(v27 + 32) = sub_2675CEDB8();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2675CFB10;
      *(v29 + 32) = sub_2675CEE08();
      v30 = objc_allocWithZone(MEMORY[0x277CBFF48]);
      v31 = sub_2675CED28();

      v32 = sub_2675CED28();

      v67[0] = 0;
      v33 = [v30 &off_279C0FD98 + 3];

      v34 = v67[0];
      if (!v33)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9EF0, &qword_2675CFC70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2675CFB20;
      v36 = v62[4];
      *(inited + 32) = v62[3];
      *(inited + 40) = v36;
      v37 = sub_2675C384C(0, &qword_2801C9EF8, 0x277CBFF48);
      *(inited + 72) = v37;
      *(inited + 48) = v25;
      v38 = v62[6];
      *(inited + 80) = v62[5];
      *(inited + 88) = v38;
      *(inited + 120) = v37;
      *(inited + 96) = v33;
      v39 = v34;

      v40 = v25;

      v41 = v33;
      v42 = sub_2675C399C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F00, &unk_2675CFC78);
      swift_arrayDestroy();
      v43 = objc_allocWithZone(MEMORY[0x277CBFED0]);
      sub_2675C1EA0(v42);
      MEMORY[0x26D5F9E40]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2675CED38();
      }

      v11 = v64 + 1;
      sub_2675CED58();

      v6 = v66;
      v12 = v63 + 16;
      v10 = v60;
      v3 = v59;
      if (v61 == v64 + 1)
      {
        goto LABEL_18;
      }
    }

    v3 = v67[0];

    v6 = sub_2675CEAF8();

    swift_willThrow();

LABEL_26:
    if (qword_2801C9D10 != -1)
    {
      goto LABEL_34;
    }

LABEL_27:
    v52 = sub_2675CEC68();
    __swift_project_value_buffer(v52, qword_2801CBA50);
    MEMORY[0x26D5FA4D0](v6);
    v53 = sub_2675CEC48();
    v54 = sub_2675CEDF8();

    if (os_log_type_enabled(v53, v54))
    {
      v3 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v3 = 138412290;
      MEMORY[0x26D5FA4D0](v6);
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 1) = v56;
      *v55 = v56;
      _os_log_impl(&dword_2675BE000, v53, v54, "Error forming MLBatchProvider: %@", v3, 0xCu);
      sub_2675C37E4(v55);
      MEMORY[0x26D5FA5F0](v55, -1, -1);
      MEMORY[0x26D5FA5F0](v3, -1, -1);
    }

    sub_2675C3748();
    swift_allocError();
    *v57 = 6;
    swift_willThrow();

LABEL_30:

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2675C19AC()
{

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2675C1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InputMatrix(0, *(v4 + 80), *(v4 + 88), a4);
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);

  v9 = sub_2675C1B60(v7, v8);

  if (!v9)
  {
    return 0;
  }

  v10 = sub_2675CED68();

  return v10 & 1;
}

BOOL sub_2675C1B60(void *a1, void *a2)
{

  v4 = sub_2675CED68();

  return (v4 & 1) != 0 && a1[3] == a2[3] && a1[4] == a2[4];
}

uint64_t sub_2675C1C04()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2675C1CC4(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 32))
  {

    result = sub_2675C1D58(v2);
    v4 = *(v1 + 24);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 24) = v6;
    }
  }

  else
  {
    sub_2675C3748();
    swift_allocError();
    *v7 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2675C1D58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2675C1F88(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2675C1E44()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_2675C1EA0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2675CEC98();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2675CEAF8();

    swift_willThrow();
  }

  return v3;
}

char *sub_2675C1F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F18, &qword_2675CFC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2675C208C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F28, &qword_2675CFCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2675C2190(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F30, &qword_2675CFCB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2675C2214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F68, &qword_2675CFCD8);
  result = sub_2675CEEA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_2675CF008();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2675C2484(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F70, &unk_2675CFCE0);
  v33 = v4;
  result = sub_2675CEEA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_2675CF018();
      sub_2675CECD8();
      result = sub_2675CF038();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2675C2728(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2675CE8E8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2675C2214(v14, a3 & 1);
      result = sub_2675CE8E8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_2675CEFB8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2675C29D0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_2675C2874(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2675CE92C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_2675C2484(v16, a3 & 1);
      result = sub_2675CE92C(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2675CEFB8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2675C2B2C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_2675C29D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F68, &qword_2675CFCD8);
  v2 = *v0;
  v3 = sub_2675CEE98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2675C2B2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F70, &unk_2675CFCE0);
  v2 = *v0;
  v3 = sub_2675CEE98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2675C2C94(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2675C359C(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_2675CEF78();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F20, &qword_2675CFCA0);
      v7 = sub_2675CED48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2675C2DE8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2675C2DE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2675C3574(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_2675C3370((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2675C208C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_2675C208C((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_2675C3370((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2675C3370(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void *sub_2675C35B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2675C3748()
{
  result = qword_2801C9ED0;
  if (!qword_2801C9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9ED0);
  }

  return result;
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

uint64_t sub_2675C37E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9EE8, &qword_2675D00A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2675C384C(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_2675C3894(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F68, &qword_2675CFCD8);
  v3 = sub_2675CEEB8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2675CE8E8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_2675CE8E8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2675C399C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F10, &qword_2675CFC90);
    v3 = sub_2675CEEB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2675C3AAC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2675CE92C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2675C3B1C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2675C3AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F00, &unk_2675CFC78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2675C3B1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2675C3B30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2675C3B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F70, &unk_2675CFCE0);
    v3 = sub_2675CEEB8();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2675CE92C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2675C3C90(uint64_t a1)
{
  sub_2675C3B30(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F38, &qword_2675CFCB8);
  if (swift_dynamicCast())
  {
    sub_2675C4014(v21, v19);
    v1 = v20;
    v2 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v3 = *(v1 - 8);
    MEMORY[0x28223BE20](v2, v2);
    v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v3 + 16))(v5);
    if (sub_2675CEE28() < 65)
    {
      v11 = sub_2675CEE38();
      v12 = sub_2675CEE18();
      (*(v3 + 8))(v5, v1);
      if (v11)
      {
        v6 = v12;
      }

      else
      {
        v6 = v12;
      }
    }

    else
    {
      sub_2675C4070();
      sub_2675C4110();
      sub_2675CEC88();
      (*(v3 + 8))(v5, v1);
      v6 = v18;
    }

    v10 = v6;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F40, &qword_2675CFCC0);
  if (swift_dynamicCast())
  {
    sub_2675C4014(v21, v19);
    v7 = __swift_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v7, v7);
    (*(v9 + 16))(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_2675C4070();
    sub_2675CEC78();
    v10 = v18;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v15 = 0;
    goto LABEL_13;
  }

  sub_2675C384C(0, &qword_2801C9EE0, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    sub_2675CED78();
    v14 = v13;

    v15 = 0;
    v10 = v14;
  }

  else
  {
    v10 = 0.0;
    v15 = 1;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  LOBYTE(v21[0]) = v15;
  return LODWORD(v10) | (v15 << 32);
}

uint64_t sub_2675C4014(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2675C4070()
{
  result = qword_2801C9F48;
  if (!qword_2801C9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9F48);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2675C4110()
{
  result = qword_2801C9F50;
  if (!qword_2801C9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9F50);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_2675C41C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2675C420C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2675C4280(char a1)
{
  result = 0x676E696E7261654CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x706E496C65646F4DLL;
      break;
    case 3:
      result = 0x62614C6C65646F4DLL;
      break;
    case 4:
      result = 0x4E65727574616546;
      break;
    case 5:
      result = 0x4365727574616546;
      break;
    case 6:
      result = 0x6546746567726154;
      break;
    case 7:
    case 12:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D614E6C65646F4DLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2675C4464(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2675C4280(*a1);
  v5 = v4;
  if (v3 == sub_2675C4280(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2675CEF98();
  }

  return v8 & 1;
}

uint64_t sub_2675C44EC()
{
  v1 = *v0;
  sub_2675CF018();
  sub_2675C4280(v1);
  sub_2675CECD8();

  return sub_2675CF038();
}

uint64_t sub_2675C4550(uint64_t a1)
{
  sub_2675C4280(*v1);
  sub_2675CECD8();
}

uint64_t sub_2675C45A4(uint64_t a1)
{
  v2 = *v1;
  sub_2675CF018();
  sub_2675C4280(v2);
  sub_2675CECD8();

  return sub_2675CF038();
}

unint64_t sub_2675C4604@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2675C4B54(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2675C4634@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2675C4280(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2675C467C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2675C4B54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2675C46BC(uint64_t a1)
{
  v2 = sub_2675C57C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2675C46F8(uint64_t a1)
{
  v2 = sub_2675C57C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2675C4734(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9FB0, &unk_2675CFDD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2675C57C8();
  sub_2675CF058();
  LOBYTE(v12) = 0;
  sub_2675CEF38();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_2675CEF68();
    LOBYTE(v12) = 2;
    sub_2675CEF28();
    LOBYTE(v12) = 3;
    sub_2675CEF28();
    v12 = *(v3 + 40);
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F88, &qword_2675CFDC0);
    sub_2675C5920(&qword_2801C9FB8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2675CEF58();
    LOBYTE(v12) = 5;
    sub_2675CEF68();
    LOBYTE(v12) = 6;
    sub_2675CEF28();
    LOBYTE(v12) = 7;
    sub_2675CEF28();
    LOBYTE(v12) = 8;
    sub_2675CEF48();
    LOBYTE(v12) = 9;
    sub_2675CEF48();
    LOBYTE(v12) = 10;
    sub_2675CEF28();
    v12 = *(v3 + 120);
    HIBYTE(v11) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F98, &qword_2675CFDC8);
    sub_2675C598C(&qword_2801C9FC0, sub_2675C5A04, MEMORY[0x277D83948]);
    sub_2675CEF58();
    LOBYTE(v12) = 12;
    sub_2675CEF28();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_2675C4AE0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2675C50C8(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_2675C4B54(uint64_t a1, uint64_t a2)
{
  v2 = sub_2675CEEC8();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

void sub_2675C4BA0(uint64_t a2@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  sub_2675CEC28();
  v5 = sub_2675CEC98();

  *&v39 = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:&v39];

  v7 = v39;
  if (!v6)
  {
    v12 = v7;
    v11 = sub_2675CEAF8();

    swift_willThrow();
    goto LABEL_5;
  }

  v8 = sub_2675CEB58();
  v10 = v9;

  sub_2675CEAE8();
  swift_allocObject();
  sub_2675CEAD8();
  sub_2675C5AAC();
  sub_2675CEAC8();
  if (v2)
  {
    sub_2675C5B00(v8, v10);

    v11 = v2;
LABEL_5:
    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v13 = sub_2675CEC68();
    __swift_project_value_buffer(v13, qword_2801CBA50);
    MEMORY[0x26D5FA4D0](v11);
    v14 = sub_2675CEC48();
    v15 = sub_2675CEDF8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      MEMORY[0x26D5FA4D0](v11);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_2675BE000, v14, v15, "Couldn't form SiriMASPFLPluginArgs: %@", v16, 0xCu);
      sub_2675C37E4(v17);
      MEMORY[0x26D5FA5F0](v17, -1, -1);
      MEMORY[0x26D5FA5F0](v16, -1, -1);
    }

    sub_2675C5A58();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    return;
  }

  sub_2675C5B00(v8, v10);

  v60 = v39;
  v58 = v45;
  v59 = v46;
  v20 = v48;
  v57 = v51;
  v56 = v50;
  v21 = *(v43 + 16);
  v37 = v55;
  v38 = v53;
  if (v21 == v44)
  {
    v35 = v52;
    v36 = v54;
    v22 = v43;
    v23 = v42;
    v24 = v40;
    v33 = v49;
    v25 = v47;
    v26 = v44;
    v27 = v41;

    *a2 = v60;
    *(a2 + 16) = v24;
    *(a2 + 24) = v27;
    *(a2 + 32) = v23;
    *(a2 + 40) = v22;
    *(a2 + 48) = v26;
    *(a2 + 52) = v58;
    *(a2 + 60) = v59;
    *(a2 + 64) = v25;
    *(a2 + 72) = v20;
    *(a2 + 80) = v33;
    *(a2 + 88) = v56;
    *(a2 + 104) = v57;
    *(a2 + 112) = v35;
    *(a2 + 120) = v38;
    *(a2 + 128) = v36;
    *(a2 + 136) = v37;
  }

  else
  {
    v34 = v44;
    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v28 = sub_2675CEC68();
    __swift_project_value_buffer(v28, qword_2801CBA50);
    v29 = sub_2675CEC48();
    v30 = sub_2675CEDF8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = v21;
      *(v31 + 12) = 1024;
      *(v31 + 14) = v34;
      _os_log_impl(&dword_2675BE000, v29, v30, "Size of featureNames (%ld is not equal to featureCount (%u", v31, 0x12u);
      MEMORY[0x26D5FA5F0](v31, -1, -1);
    }

    sub_2675C5A58();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
  }
}

uint64_t sub_2675C50C8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F78, &qword_2675CFDB8);
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v6);
  v8 = &v34 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2675C57C8();
  sub_2675CF048();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = v5;
  LOBYTE(v61[0]) = 0;
  sub_2675CEEE8();
  v11 = v10;
  LOBYTE(v61[0]) = 1;
  v12 = sub_2675CEF18();
  LOBYTE(v61[0]) = 2;
  v47 = sub_2675CEED8();
  v49 = v14;
  LOBYTE(v61[0]) = 3;
  v15 = sub_2675CEED8();
  v48 = v16;
  v44 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F88, &qword_2675CFDC0);
  LOBYTE(v52) = 4;
  sub_2675C5920(&qword_2801C9F90, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_2675CEF08();
  v43 = v61[0];
  LOBYTE(v61[0]) = 5;
  v42 = sub_2675CEF18();
  LOBYTE(v61[0]) = 6;
  v41 = sub_2675CEED8();
  v46 = v17;
  LOBYTE(v61[0]) = 7;
  v40 = sub_2675CEED8();
  v45 = v18;
  LOBYTE(v61[0]) = 8;
  v39 = sub_2675CEEF8();
  v50 = 0;
  LOBYTE(v61[0]) = 9;
  v19 = sub_2675CEEF8();
  v50 = 0;
  v20 = v19;
  LOBYTE(v61[0]) = 10;
  v37 = sub_2675CEED8();
  v38 = v21;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F98, &qword_2675CFDC8);
  LOBYTE(v52) = 11;
  sub_2675C598C(&qword_2801C9FA0, sub_2675C5864, MEMORY[0x277D83978]);
  v22 = v50;
  sub_2675CEF08();
  v50 = v22;
  if (v22)
  {
    (*(v9 + 8))(v8, v51);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v23 = v61[0];
    v74[0] = 12;
    v24 = sub_2675CEED8();
    v36 = v25;
    v50 = 0;
    v26 = v24;
    (*(v9 + 8))(v8, v51);
    *&v52 = __PAIR64__(v12, v11);
    v27 = v46;
    v28 = v49;
    *(&v52 + 1) = v47;
    *&v53 = v49;
    *(&v53 + 1) = v44;
    *&v54 = v48;
    *(&v54 + 1) = v43;
    LODWORD(v55) = v42;
    *(&v55 + 1) = v41;
    *&v56 = v46;
    *(&v56 + 1) = v40;
    *&v57 = v45;
    *(&v57 + 1) = v39;
    *&v58 = v20;
    v35 = v20;
    v29 = v38;
    *(&v58 + 1) = v37;
    *&v59 = v38;
    *(&v59 + 1) = v23;
    *&v60 = v26;
    *(&v60 + 1) = v36;
    sub_2675C58B8(&v52, v61);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v61[0] = __PAIR64__(v12, v11);
    v61[1] = v47;
    v61[2] = v28;
    v61[3] = v44;
    v61[4] = v48;
    v61[5] = v43;
    v62 = v42;
    v63 = v41;
    v64 = v27;
    v65 = v40;
    v66 = v45;
    v67 = v39;
    v68 = v35;
    v69 = v37;
    v70 = v29;
    v71 = v23;
    v72 = v26;
    v73 = v36;
    result = sub_2675C58F0(v61);
    v30 = v59;
    a2[6] = v58;
    a2[7] = v30;
    a2[8] = v60;
    v31 = v55;
    a2[2] = v54;
    a2[3] = v31;
    v32 = v57;
    a2[4] = v56;
    a2[5] = v32;
    v33 = v53;
    *a2 = v52;
    a2[1] = v33;
  }

  return result;
}

unint64_t sub_2675C57C8()
{
  result = qword_2801C9F80;
  if (!qword_2801C9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9F80);
  }

  return result;
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

unint64_t sub_2675C5864()
{
  result = qword_2801C9FA8;
  if (!qword_2801C9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9FA8);
  }

  return result;
}

uint64_t sub_2675C5920(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801C9F88, &qword_2675CFDC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2675C598C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801C9F98, &qword_2675CFDC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2675C5A04()
{
  result = qword_2801C9FC8;
  if (!qword_2801C9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9FC8);
  }

  return result;
}

unint64_t sub_2675C5A58()
{
  result = qword_2801C9FD0;
  if (!qword_2801C9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9FD0);
  }

  return result;
}

unint64_t sub_2675C5AAC()
{
  result = qword_2801C9FD8;
  if (!qword_2801C9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9FD8);
  }

  return result;
}

uint64_t sub_2675C5B00(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for SiriMASPFLPluginArgs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriMASPFLPluginArgs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2675C5CA8()
{
  result = qword_2801C9FE0;
  if (!qword_2801C9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9FE0);
  }

  return result;
}

unint64_t sub_2675C5D00()
{
  result = qword_2801C9FE8;
  if (!qword_2801C9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9FE8);
  }

  return result;
}

unint64_t sub_2675C5D58()
{
  result = qword_2801C9FF0;
  if (!qword_2801C9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9FF0);
  }

  return result;
}

unint64_t sub_2675C5DE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F10, &qword_2675CFC90);
    v2 = sub_2675CEEB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_2675C3B1C(&v22, v24);
        sub_2675C3B1C(v24, v25);
        sub_2675C3B1C(v25, &v23);
        result = sub_2675CE92C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_2675C3B1C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_2675C3B1C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2675C602C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2675C60D4;

  return sub_2675C7954();
}

uint64_t sub_2675C60D4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_2675C61D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2675C6284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2675C6350;

  return MEMORY[0x2821A1EC0](a1, a2, a3, a4, a5);
}

uint64_t sub_2675C6350()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2675C6444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2675C6350;

  return MEMORY[0x2821A1EE0](a1, a2, a3);
}

uint64_t sub_2675C64F4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2675C812C;

  return sub_2675C7954();
}

uint64_t sub_2675C659C()
{
  v1 = sub_2675CEB98();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_2675C661C()
{
  v44 = v0;
  sub_2675C693C(v26);
  v1 = v26[1];
  v2 = v27;
  v3 = v28;
  v4 = v29;
  v5 = v30;
  v6 = v31;
  v7 = v32;
  v8 = v33;
  v9 = v34;
  v10 = v35;
  v11 = v36;
  v12 = v37;
  v13 = v38;
  v14 = v39;
  v15 = v40;
  v16 = v41;
  v17 = v42;
  v18 = v43;
  *(v0 + 16) = v26[0];
  *(v0 + 20) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  *(v0 + 80) = v8;
  *(v0 + 88) = v9;
  *(v0 + 96) = v10;
  *(v0 + 104) = v11;
  *(v0 + 120) = v12;
  *(v0 + 128) = v13;
  *(v0 + 144) = v14;
  *(v0 + 152) = v15;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  v19 = *(v0 + 64);
  *(v0 + 216) = *(v0 + 48);
  *(v0 + 232) = v19;
  v20 = *(v0 + 32);
  *(v0 + 184) = *(v0 + 16);
  *(v0 + 200) = v20;
  v21 = *(v0 + 144);
  *(v0 + 296) = *(v0 + 128);
  *(v0 + 312) = v21;
  v22 = *(v0 + 112);
  *(v0 + 264) = *(v0 + 96);
  *(v0 + 280) = v22;
  *(v0 + 248) = *(v0 + 80);
  v23 = sub_2675C7220(v0 + 184, v16, v17, v18);

  sub_2675C58F0(v0 + 16);
  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_2675C67DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2675C8124;

  return MEMORY[0x2821A1EF0](a1, a2, a3);
}

uint64_t sub_2675C688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2675C8124;

  return MEMORY[0x2821A1EE8](a1, a2, a3);
}

void sub_2675C693C(float *a2@<X8>)
{
  v3 = v2;
  v85 = a2;
  v4 = sub_2675CEB08();
  v89 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v88 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA000, &unk_2675D0050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v87 = &v66 - v9;
  v10 = sub_2675CEB48();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v90 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v66 - v16;
  if (qword_2801C9D10 != -1)
  {
    swift_once();
  }

  v18 = sub_2675CEC68();
  v19 = __swift_project_value_buffer(v18, qword_2801CBA50);

  v86 = v19;
  v20 = sub_2675CEC48();
  v21 = sub_2675CEDD8();

  v22 = os_log_type_enabled(v20, v21);
  v91 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *&v84 = v11;
    v24 = v23;
    v25 = swift_slowAlloc();
    v83 = v2;
    v26 = v25;
    v92[0] = v25;
    *v24 = 136315138;
    v27 = sub_2675CEC38();
    v29 = v4;
    v30 = v10;
    v31 = sub_2675CE284(v27, v28, v92);

    *(v24 + 4) = v31;
    v10 = v30;
    v4 = v29;
    _os_log_impl(&dword_2675BE000, v20, v21, "Initialising SiriMASPFLPluginRunner for recipe %s.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    v32 = v26;
    v3 = v83;
    MEMORY[0x26D5FA5F0](v32, -1, -1);
    v33 = v24;
    v11 = v84;
    MEMORY[0x26D5FA5F0](v33, -1, -1);
  }

  sub_2675C4BA0(v93);
  if (!v3)
  {
    v82 = 0;
    v34 = v93[0];
    v81 = v93[1];
    v79 = *(&v94 + 1);
    v80 = v94;
    v77 = *(&v95 + 1);
    v78 = v95;
    v35 = v96;
    v76 = v97;
    v74 = *(&v98 + 1);
    v75 = v98;
    v72 = *(&v99 + 1);
    v73 = v99;
    v71 = v100;
    v36 = v102;
    v70 = v101;
    v84 = v103;
    v69 = v104;
    v68 = v105;
    type metadata accessor for BiomeSQLClient();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = [objc_allocWithZone(MEMORY[0x277CF1A88]) init];
    v83 = v37;
    *(v37 + 24) = v38;
    v108 = v95;
    v109 = v94;
    v110 = v35;
    v106 = v98;
    v107 = v99;
    type metadata accessor for BiomeSQLRowAggregator();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_2675C3894(MEMORY[0x277D84F90]);
    *(v39 + 24) = v94;
    *(v39 + 40) = v95;
    *(v39 + 56) = v99;
    *(v39 + 72) = v35;
    *(v39 + 80) = v98;
    sub_2675C8054(&v109, v92);
    sub_2675C8054(&v108, v92);
    sub_2675C8054(&v107, v92);
    sub_2675C80B0(&v110, v92);
    sub_2675C8054(&v106, v92);
    sub_2675CEC18();
    if (v40)
    {
      v67 = v36;
      (*(v11 + 56))(v87, 1, 1, v10);
      (*(v89 + 104))(v88, *MEMORY[0x277CC91D8], v4);
      v41 = v91;
      sub_2675CEB38();
      v42 = v41;
      v43 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
      [v43 setComputeUnits_];
      v44 = v90;
      sub_2675CEB28();
      v45 = v93[0];
      type metadata accessor for ModelTrainer();
      swift_allocObject();
      v46 = v43;
      v47 = v82;
      v48 = sub_2675C8B54(v44, v46, v45);
      if (v47)
      {
        (*(v11 + 8))(v42, v10);

        sub_2675C58F0(v93);
      }

      else
      {
        v53 = v48;
        v90 = v10;
        v54 = sub_2675CEC48();
        v55 = sub_2675CEDD8();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_2675BE000, v54, v55, "Finished initialising SiriMASPFLPluginRunner.", v56, 2u);
          v57 = v56;
          v42 = v91;
          MEMORY[0x26D5FA5F0](v57, -1, -1);
          v58 = v46;
        }

        else
        {
          v58 = v54;
          v54 = v46;
        }

        (*(v11 + 8))(v42, v90);
        v59 = v85;
        *v85 = v34;
        v59[1] = v81;
        v60 = v79;
        *(v59 + 1) = v80;
        *(v59 + 2) = v60;
        v61 = v77;
        *(v59 + 3) = v78;
        *(v59 + 4) = v61;
        *(v59 + 5) = v35;
        *(v59 + 12) = v76;
        v62 = v74;
        *(v59 + 7) = v75;
        *(v59 + 8) = v62;
        v63 = v72;
        *(v59 + 9) = v73;
        *(v59 + 10) = v63;
        v64 = v70;
        *(v59 + 11) = v71;
        *(v59 + 12) = v64;
        *(v59 + 13) = v67;
        *(v59 + 7) = v84;
        v65 = v68;
        *(v59 + 16) = v69;
        *(v59 + 17) = v65;
        *(v59 + 18) = v83;
        *(v59 + 19) = v39;
        *(v59 + 20) = v53;
      }
    }

    else
    {
      sub_2675C58F0(v93);
      v49 = sub_2675CEC48();
      v50 = sub_2675CEDF8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_2675BE000, v49, v50, "Model attachment not found", v51, 2u);
        MEMORY[0x26D5FA5F0](v51, -1, -1);
      }

      sub_2675C8000();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_2675C7220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2801C9D10 != -1)
  {
    swift_once();
  }

  v9 = sub_2675CEC68();
  v10 = __swift_project_value_buffer(v9, qword_2801CBA50);
  v11 = sub_2675CEC48();
  v12 = sub_2675CEDD8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2675BE000, v11, v12, "Executing SQL query.", v13, 2u);
    MEMORY[0x26D5FA5F0](v13, -1, -1);
  }

  sub_2675CD9B0(*(a1 + 128), *(a1 + 136));
  if (!v4)
  {
    v15 = sub_2675CEC48();
    v16 = sub_2675CEDD8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2675BE000, v15, v16, "Aggregating SQL rows.", v17, 2u);
      MEMORY[0x26D5FA5F0](v17, -1, -1);
    }

    v61 = a4;

    for (i = *(a2 + 16); i; i = *(a2 + 16))
    {
      if (![i next])
      {
        break;
      }

      v19 = sub_2675CDC08();
      sub_2675C05CC(v19);
    }

    swift_beginAccess();
    v20 = *(*(a3 + 16) + 16);
    v21 = sub_2675CEC48();
    if (v20)
    {
      v22 = sub_2675CEDD8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2675BE000, v21, v22, "Producing MLBatchProvider for training.", v23, 2u);
        MEMORY[0x26D5FA5F0](v23, -1, -1);
      }

      v60 = sub_2675C108C();
      sub_2675C58B8(a1, v62);
      v24 = sub_2675CEC48();
      v25 = sub_2675CEDD8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v62[0] = v27;
        *v26 = 136315650;
        *(v26 + 4) = sub_2675CE284(*(a1 + 104), *(a1 + 112), v62);
        *(v26 + 12) = 2048;
        *(v26 + 14) = v20;
        *(v26 + 22) = 1024;
        *(v26 + 24) = *(a1 + 4);
        sub_2675C58F0(a1);
        _os_log_impl(&dword_2675BE000, v24, v25, "Training model %s with %ld datapoints for %u epochs.", v26, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x26D5FA5F0](v27, -1, -1);
        MEMORY[0x26D5FA5F0](v26, -1, -1);
      }

      else
      {
        sub_2675C58F0(a1);
      }

      v31 = *(a1 + 4);

      v33 = sub_2675CC504(v32);

      sub_2675C9488(v31, v60, v33);
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v59 = v40;

      v41 = sub_2675C83A0(v35, v37, v39, v59);

      v42 = 0;
      v43 = *(a3 + 16);
      v44 = 1 << *(v43 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v43 + 64);
      v47 = (v44 + 63) >> 6;
      v48 = 0.0;
      if (v46)
      {
        while (1)
        {
          v49 = v42;
LABEL_29:
          v50 = __clz(__rbit64(v46));
          v46 &= v46 - 1;
          v48 = v48 + *(*(*(*(v43 + 56) + ((v49 << 9) | (8 * v50))) + 16) + 24);
          if (!v46)
          {
            goto LABEL_25;
          }
        }
      }

      while (1)
      {
LABEL_25:
        v49 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
          return result;
        }

        if (v49 >= v47)
        {
          break;
        }

        v46 = *(v43 + 64 + 8 * v49);
        ++v42;
        if (v46)
        {
          v42 = v49;
          goto LABEL_29;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v41;
      sub_2675C2874(0x43656C706D617845, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native, v48);
      v52 = v62[0];
      v53 = *(v61 + 16);

      v54 = [v53 copyCurrentTrainingDelta];
      v55 = [v54 flattenedModelUpdate];

      if (v55)
      {
        sub_2675CEB58();
      }

      v56 = sub_2675CEC48();
      v57 = sub_2675CEDD8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        *(v58 + 4) = *(v52 + 16);

        _os_log_impl(&dword_2675BE000, v56, v57, "Finishing plugin by returning %ld metrics and weight delta.", v58, 0xCu);
        MEMORY[0x26D5FA5F0](v58, -1, -1);
      }

      else
      {
      }

      sub_2675C5DE4(v52);

      sub_2675CEB78();
      swift_allocObject();
      v10 = sub_2675CEB68();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = sub_2675CEDF8();
      if (os_log_type_enabled(v21, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2675BE000, v21, v28, "No Biome datapoints found, returning empty MLRTaskResult", v29, 2u);
        MEMORY[0x26D5FA5F0](v29, -1, -1);
      }

      sub_2675C8000();
      v10 = swift_allocError();
      *v30 = 5;
      swift_willThrow();
    }
  }

  return v10;
}

uint64_t sub_2675C7970()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v3 = [v2 AppSelection];
  swift_unknownObjectRelease();
  v4 = [v3 Music];
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:1 lastN:1 reversed:1];
  v6 = [v4 publisherWithOptions_];

  v0[6] = nullsub_1;
  v0[7] = 0;
  v7 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2675C8134;
  v0[5] = &block_descriptor;
  v8 = _Block_copy(v0 + 2);
  v0[6] = sub_2675C7FC0;
  v0[7] = v1;
  v0[2] = v7;
  v0[3] = 1107296256;
  v0[4] = sub_2675C8134;
  v0[5] = &block_descriptor_17;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 sinkWithCompletion:v8 receiveInput:v9];
  _Block_release(v9);
  _Block_release(v8);

  swift_beginAccess();
  v11 = *(v1 + 16);

  v12 = v0[1];

  return v12(v11);
}

uint64_t dispatch thunk of SiriMASPFLPluginRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 88) + **(*v4 + 88));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2675C7D7C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_2675C7D7C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of SiriMASPFLPluginRunner.isDataAvailable(taskPreferences:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2675C60D4;

  return v6(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2675C7FC0()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

unint64_t sub_2675C8000()
{
  result = qword_2801C9FF8;
  if (!qword_2801C9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C9FF8);
  }

  return result;
}

uint64_t sub_2675C80B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F88, &qword_2675CFDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675C8138()
{
  v0 = sub_2675CEC68();
  __swift_allocate_value_buffer(v0, qword_2801CBA50);
  __swift_project_value_buffer(v0, qword_2801CBA50);
  return sub_2675CEC58();
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

uint64_t sub_2675C821C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x80000002675D0690;
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x6E4563697274654DLL;
      v4 = 0xEE00676E69646F63;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x74654D6C65646F4DLL;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = 0xEF656D614E636972;
    }

    else
    {
      v4 = 0x80000002675D0660;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000002675D0690;
      if (v3 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEE00676E69646F63;
      if (v3 != 0x6E4563697274654DLL)
      {
LABEL_26:
        v7 = sub_2675CEF98();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x74654D6C65646F4DLL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2)
    {
      v6 = 0xEF656D614E636972;
    }

    else
    {
      v6 = 0x80000002675D0660;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

void *sub_2675C83A0(unint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v9 = sub_2675C3B8C(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v9;
  sub_2675C2874(0x756F436863746142, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native, a4);
  v11 = v9;
  v12 = [a2 evaluationMetrics];
  if (!v12)
  {
LABEL_6:
    if (qword_2801C9D10 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_7;
  }

  v13 = v12;
  v14 = [a3 evaluationMetrics];
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v15 = v14;
  v16 = sub_2675CC948(v13);
  if (v4)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_11:

    return v11;
  }

  v21 = v16;
  v75 = sub_2675CC948(v15);
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  v72 = v27;
  v73 = a1 + 56;
  v74 = a1;
  v77 = v21;
  while (v26)
  {
    v29 = v28;
LABEL_24:
    v30 = *(a1 + 48) + 40 * (__clz(__rbit64(v26)) | (v29 << 6));
    v31 = *(v30 + 8);
    v79 = *v30;
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    v34 = *(v30 + 32);
    v35 = *(v21 + 16);
    swift_bridgeObjectRetain_n();
    v78 = v31;

    if (!v35)
    {

      goto LABEL_54;
    }

    v36 = sub_2675CE92C(v32, v33);
    v38 = v37;

    if ((v38 & 1) == 0)
    {

LABEL_54:

LABEL_56:

LABEL_58:
      if (qword_2801C9D10 == -1)
      {
LABEL_59:
        v66 = sub_2675CEC68();
        __swift_project_value_buffer(v66, qword_2801CBA50);

        v67 = sub_2675CEC48();
        v68 = sub_2675CEDF8();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v80 = v70;
          *v69 = 136315138;

          v11 = sub_2675CE284(v32, v33, &v80);

          *(v69 + 4) = v11;
          _os_log_impl(&dword_2675BE000, v67, v68, "Baseline/Trained metric value not found for %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          MEMORY[0x26D5FA5F0](v70, -1, -1);
          MEMORY[0x26D5FA5F0](v69, -1, -1);
        }

        else
        {
        }

        sub_2675CCE24();
        swift_allocError();
        *v71 = 4;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

LABEL_69:
      swift_once();
      goto LABEL_59;
    }

    if (!*(v75 + 16))
    {

      goto LABEL_56;
    }

    v39 = *(*(v77 + 56) + 4 * v36);

    v40 = sub_2675CE92C(v32, v33);
    v41 = v33;
    v33 = v42;
    v43 = v41;

    if ((v33 & 1) == 0)
    {

      v33 = v43;
      goto LABEL_58;
    }

    v26 &= v26 - 1;
    v44 = *(*(v75 + 56) + 4 * v40);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    if (v34)
    {
      v80 = v11;
      v32 = v78;
      v45 = sub_2675CE92C(v79, v78);
      v47 = v11[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_66;
      }

      v51 = v46;
      if (v11[3] >= v50)
      {
        v21 = v77;
        if (v76)
        {
          v11 = v80;
          if (v46)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v65 = v45;
          sub_2675C2B2C();
          v45 = v65;
          v21 = v77;
          v32 = v78;
          v11 = v80;
          if (v51)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_2675C2484(v50, v76);
        v45 = sub_2675CE92C(v79, v78);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_70;
        }

        v21 = v77;
        v11 = v80;
        if (v51)
        {
LABEL_43:
          *(v11[7] + 4 * v45) = v44;

          goto LABEL_17;
        }
      }

      v11[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (v11[6] + 16 * v45);
      *v53 = v79;
      v53[1] = v32;
      *(v11[7] + 4 * v45) = v44;

      v54 = v11[2];
      v49 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v49)
      {
        goto LABEL_67;
      }

      goto LABEL_47;
    }

    v80 = v11;
    v32 = sub_2675CE92C(v79, v78);
    v57 = v11[2];
    v58 = (v56 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v60 = v56;
    if (v11[3] >= v59)
    {
      v21 = v77;
      if (v76)
      {
        goto LABEL_45;
      }

      sub_2675C2B2C();
    }

    else
    {
      sub_2675C2484(v59, v76);
      v61 = sub_2675CE92C(v79, v78);
      if ((v60 & 1) != (v62 & 1))
      {
LABEL_70:
        result = sub_2675CEFB8();
        __break(1u);
        return result;
      }

      v32 = v61;
    }

    v21 = v77;
LABEL_45:
    v11 = v80;
    if (v60)
    {
      *(v80[7] + 4 * v32) = v39;

LABEL_17:

      goto LABEL_18;
    }

    v80[(v32 >> 6) + 8] |= 1 << v32;
    v63 = (v11[6] + 16 * v32);
    *v63 = v79;
    v63[1] = v78;
    *(v11[7] + 4 * v32) = v39;

    v64 = v11[2];
    v49 = __OFADD__(v64, 1);
    v55 = v64 + 1;
    if (v49)
    {
      goto LABEL_68;
    }

LABEL_47:
    v11[2] = v55;
LABEL_18:
    v28 = v29;
    v23 = v73;
    a1 = v74;
    v27 = v72;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v11;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_64:
  swift_once();
LABEL_7:
  v17 = sub_2675CEC68();
  __swift_project_value_buffer(v17, qword_2801CBA50);
  v18 = sub_2675CEC48();
  v19 = sub_2675CEDE8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2675BE000, v18, v19, "Evaluation metrics are nil.", v20, 2u);
    MEMORY[0x26D5FA5F0](v20, -1, -1);
  }

  return v11;
}

uint64_t sub_2675C8B54(uint64_t a1, void *a2, double a3)
{
  v88[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2675CEB48();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v78 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v81 = &v78 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v78 - v21;
  sub_2675CCECC();
  v85 = v8;
  v86 = a1;
  v23 = *(v8 + 16);
  v87 = v7;
  v24 = v7;
  v25 = v23;
  v23(v22, a1, v24);
  v83 = a2;
  v82 = sub_2675CC3A4(v22, a2);
  if (v3)
  {
    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v26 = sub_2675CEC68();
    __swift_project_value_buffer(v26, qword_2801CBA50);
    v27 = v81;
    v28 = v87;
    v25(v81, v86, v87);
    MEMORY[0x26D5FA4D0](v3);
    v29 = sub_2675CEC48();
    v30 = sub_2675CEDF8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v88[0] = v82;
      *v31 = 136315394;
      sub_2675CCF18();
      v33 = sub_2675CEF88();
      v35 = v34;
      v36 = *(v85 + 8);
      v36(v27, v87);
      v37 = sub_2675CE284(v33, v35, v88);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2112;
      MEMORY[0x26D5FA4D0](v3);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v38;
      *v32 = v38;
      _os_log_impl(&dword_2675BE000, v29, v30, "Model init failed for %s with error: %@", v31, 0x16u);
      sub_2675C37E4(v32);
      v39 = v32;
      v28 = v87;
      MEMORY[0x26D5FA5F0](v39, -1, -1);
      v40 = v82;
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      MEMORY[0x26D5FA5F0](v40, -1, -1);
      MEMORY[0x26D5FA5F0](v31, -1, -1);
    }

    else
    {

      v36 = *(v85 + 8);
      v36(v27, v28);
    }

    v48 = v84;
    sub_2675CCE24();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();

LABEL_18:
    v36(v86, v28);
    type metadata accessor for ModelTrainer();
    swift_deallocPartialClassInstance();
    return v48;
  }

  if (!v82 || (v41 = v12, (v42 = [v82 program]) == 0))
  {
    v28 = v87;
    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v50 = sub_2675CEC68();
    __swift_project_value_buffer(v50, qword_2801CBA50);
    v51 = v16;
    v25(v16, v86, v28);
    v52 = sub_2675CEC48();
    v53 = sub_2675CEDF8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v88[0] = v55;
      *v54 = 136315138;
      sub_2675CCF18();
      v56 = sub_2675CEF88();
      v58 = v57;
      v36 = *(v85 + 8);
      v36(v51, v87);
      v59 = sub_2675CE284(v56, v58, v88);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_2675BE000, v52, v53, "No ML program found for %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x26D5FA5F0](v55, -1, -1);
      v60 = v54;
      v28 = v87;
      MEMORY[0x26D5FA5F0](v60, -1, -1);
    }

    else
    {

      v36 = *(v85 + 8);
      v36(v51, v28);
    }

    v48 = v84;
    sub_2675CCE24();
    swift_allocError();
    *v61 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  v43 = v42;
  v44 = objc_allocWithZone(MEMORY[0x277CBFF70]);
  v88[0] = 0;
  swift_unknownObjectRetain();
  v45 = [v44 initWithProgram:v43 learningRate:v88 error:a3];
  v28 = v87;
  if (!v45)
  {
    v63 = v88[0];
    v64 = sub_2675CEAF8();

    swift_willThrow();
    swift_unknownObjectRelease();
    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v65 = sub_2675CEC68();
    __swift_project_value_buffer(v65, qword_2801CBA50);
    v25(v41, v86, v28);
    MEMORY[0x26D5FA4D0](v64);
    v66 = sub_2675CEC48();
    v67 = sub_2675CEDF8();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v81 = v64;
      v69 = v68;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v88[0] = v80;
      *v69 = 136315394;
      sub_2675CCF18();
      v70 = sub_2675CEF88();
      v72 = v71;
      v36 = *(v85 + 8);
      v64 = v81;
      v36(v41, v87);
      v73 = sub_2675CE284(v70, v72, v88);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2112;
      MEMORY[0x26D5FA4D0](v64);
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 14) = v74;
      v75 = v79;
      *v79 = v74;
      _os_log_impl(&dword_2675BE000, v66, v67, "ML program trainer init failed for %s: %@", v69, 0x16u);
      sub_2675C37E4(v75);
      v28 = v87;
      MEMORY[0x26D5FA5F0](v75, -1, -1);
      v76 = v80;
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      MEMORY[0x26D5FA5F0](v76, -1, -1);
      MEMORY[0x26D5FA5F0](v69, -1, -1);
    }

    else
    {

      v36 = *(v85 + 8);
      v36(v41, v28);
    }

    v48 = v84;
    sub_2675CCE24();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v46 = v45;
  v47 = v88[0];
  swift_unknownObjectRelease();
  (*(v85 + 8))(v86, v28);

  swift_unknownObjectRelease();
  v48 = v84;
  *(v84 + 16) = v46;
  return v48;
}

void sub_2675C9488(int a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = sub_2675C97F0(a3);
  v9 = v4;
  sub_2675CC5AC(v8);

  if (qword_2801C9D10 != -1)
  {
    swift_once();
  }

  v10 = sub_2675CEC68();
  __swift_project_value_buffer(v10, qword_2801CBA50);
  swift_unknownObjectRetain();
  v11 = sub_2675CEC48();
  v12 = sub_2675CEDD8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = [a2 count];
    swift_unknownObjectRelease();
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1;
    _os_log_impl(&dword_2675BE000, v11, v12, "Training %ld for %u epochs.", v13, 0x12u);
    v14 = v13;
    v9 = v4;
    MEMORY[0x26D5FA5F0](v14, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v15 = *(v5 + 16);
  v16 = sub_2675CED88();
  v28[0] = 0;
  v17 = [v15 evaluateUsingTestData:a2 evaluationMetricNames:v16 error:v28];

  if (!v17)
  {
    v25 = v28[0];

    sub_2675CEAF8();

    swift_willThrow();
    return;
  }

  v18 = v28[0];
  v19 = [a2 count];
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (HIDWORD(v19))
  {
    goto LABEL_19;
  }

  v27 = v9;
  if (a1)
  {
    while (1)
    {
      v28[0] = 0;
      v20 = [v15 trainUsingTrainingData:a2 error:{v28, v27}];
      v21 = v28[0];
      if (!v20)
      {
        break;
      }

      if (!--a1)
      {
        goto LABEL_12;
      }
    }

    v26 = v21;
  }

  else
  {
LABEL_12:
    v22 = sub_2675CED88();

    v28[0] = 0;
    v23 = [v15 evaluateUsingTestData:a2 evaluationMetricNames:v22 error:v28];

    if (v23)
    {
      v24 = v28[0];

      return;
    }

    v26 = v28[0];
  }

  sub_2675CEAF8();

  swift_willThrow();
}

uint64_t sub_2675C97F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_2675CC034(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_2675CEE48();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = *(a1 + 48) + 40 * v6;
    v11 = *(v10 + 24);
    v24 = *(v10 + 16);
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_2675CC034((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2675CC644(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2675CC644(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
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

uint64_t sub_2675C9A1C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2675C9A78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA068, &qword_2675D01C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2675CD364();
  sub_2675CF058();
  v11[15] = 0;
  sub_2675CEF28();
  if (!v2)
  {
    v11[14] = 1;
    sub_2675CEF28();
    v11[13] = *(v3 + 32);
    v11[12] = 2;
    sub_2675CD460();
    sub_2675CEF58();
    v11[11] = 3;
    sub_2675CD4B4();
    sub_2675CEF58();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2675C9CB8()
{
  sub_2675CF018();
  sub_2675CECD8();

  return sub_2675CF038();
}

uint64_t sub_2675C9DA0(uint64_t a1)
{
  sub_2675CECD8();
}

uint64_t sub_2675C9E74(uint64_t a1)
{
  sub_2675CF018();
  sub_2675CECD8();

  return sub_2675CF038();
}

unint64_t sub_2675C9F58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2675CD078(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2675C9F88(unint64_t *a1@<X8>)
{
  v2 = 0xEF656D614E636972;
  v3 = 0x74654D6C65646F4DLL;
  v4 = 0x80000002675D0690;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x6E4563697274654DLL;
    v4 = 0xEE00676E69646F63;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000002675D0660;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2675CA02C()
{
  v1 = 0x74654D6C65646F4DLL;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6E4563697274654DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t sub_2675CA0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2675CD078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2675CA100(uint64_t a1)
{
  v2 = sub_2675CD364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2675CA13C(uint64_t a1)
{
  v2 = sub_2675CD364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2675CA1C4()
{
  sub_2675CF018();
  sub_2675CECD8();
  sub_2675CECD8();
  sub_2675CECD8();

  sub_2675CECD8();
  return sub_2675CF038();
}

uint64_t sub_2675CA298(uint64_t a1)
{
  sub_2675CECD8();
  sub_2675CECD8();
  sub_2675CECD8();

  return sub_2675CECD8();
}

uint64_t sub_2675CA34C(uint64_t a1)
{
  sub_2675CF018();
  sub_2675CECD8();
  sub_2675CECD8();
  sub_2675CECD8();

  sub_2675CECD8();
  return sub_2675CF038();
}

double sub_2675CA41C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2675CD0C4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2675CA47C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656E69617254;
  }

  else
  {
    v3 = 0x656E696C65736142;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656E69617254;
  }

  else
  {
    v5 = 0x656E696C65736142;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2675CEF98();
  }

  return v8 & 1;
}

uint64_t sub_2675CA524()
{
  sub_2675CF018();
  sub_2675CECD8();

  return sub_2675CF038();
}

uint64_t sub_2675CA5A8(uint64_t a1)
{
  sub_2675CECD8();
}

uint64_t sub_2675CA618(uint64_t a1)
{
  sub_2675CF018();
  sub_2675CECD8();

  return sub_2675CF038();
}

uint64_t sub_2675CA698@<X0>(char *a2@<X8>)
{
  v3 = sub_2675CEEC8();

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

  *a2 = v5;
  return result;
}

void sub_2675CA6F8(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C65736142;
  if (*v1)
  {
    v2 = 0x64656E69617254;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2675CA7F0()
{
  sub_2675CF018();
  sub_2675CECD8();
  return sub_2675CF038();
}

uint64_t sub_2675CA854(uint64_t a1)
{
  sub_2675CF018();
  sub_2675CECD8();
  return sub_2675CF038();
}

uint64_t sub_2675CA8A0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2675CEEC8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2675CA9BC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2675CF018();
  sub_2675CECD8();
  v8 = sub_2675CF038();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2675CEF98() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2675CB3A0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2675CAB0C(uint64_t a1, uint64_t *a2)
{
  v3 = 0x656E696C65736142;
  v4 = *v2;
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  sub_2675CF018();
  sub_2675CECD8();
  v39 = v8;
  sub_2675CECD8();
  if (v9)
  {
    v3 = 0x64656E69617254;
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  sub_2675CECD8();

  sub_2675CECD8();
  v11 = sub_2675CF038();
  v37 = v4 + 56;
  v38 = v4;
  v12 = -1 << *(v4 + 32);
  v13 = v11 & ~v12;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v33;

    sub_2675CB520(a2, v13, isUniquelyReferenced_nonNull_native);
    *v33 = v40;
    v26 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v26;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v36 = v3;
  v14 = ~v12;
  while (1)
  {
    v15 = *(v38 + 48) + 40 * v13;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = *(v15 + 32);
    v19 = *v15 == v6 && *(v15 + 8) == v5;
    if (!v19 && (sub_2675CEF98() & 1) == 0)
    {
      goto LABEL_6;
    }

    v20 = v16 == v39 && v17 == v7;
    if (!v20 && (sub_2675CEF98() & 1) == 0)
    {
      goto LABEL_6;
    }

    v21 = v18 ? 0x64656E69617254 : 0x656E696C65736142;
    v22 = v18 ? 0xE700000000000000 : 0xE800000000000000;
    if (v21 == v36 && v22 == v10)
    {
      break;
    }

    v24 = sub_2675CEF98();

    if (v24)
    {
      goto LABEL_31;
    }

LABEL_6:
    v13 = (v13 + 1) & v14;
    if (((*(v37 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_31:

  v28 = *(v38 + 48) + 40 * v13;
  v29 = *(v28 + 32);
  v30 = *(v28 + 16);
  v31 = *(v28 + 24);
  v32 = *(v28 + 8);
  *a1 = *v28;
  *(a1 + 8) = v32;
  *(a1 + 16) = v30;
  *(a1 + 24) = v31;
  *(a1 + 32) = v29;

  return 0;
}

uint64_t sub_2675CAE34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA008, &qword_2675D0090);
  result = sub_2675CEE68();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2675CF018();
      sub_2675CECD8();
      result = sub_2675CF038();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2675CB094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA028, &qword_2675D00A8);
  result = sub_2675CEE68();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_2675CF018();
      sub_2675CECD8();
      sub_2675CECD8();
      sub_2675CECD8();

      sub_2675CECD8();
      result = sub_2675CF038();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2675CB3A0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2675CAE34(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2675CB83C();
      goto LABEL_16;
    }

    sub_2675CBB10(v8 + 1);
  }

  v10 = *v4;
  sub_2675CF018();
  sub_2675CECD8();
  result = sub_2675CF038();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2675CEF98();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2675CEFA8();
  __break(1u);
  return result;
}

uint64_t sub_2675CB520(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v37 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2675CB094(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_2675CB998();
        goto LABEL_39;
      }

      sub_2675CBD48(v6 + 1);
    }

    v8 = *v3;
    v9 = *v5;
    v10 = *(v5 + 8);
    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    v13 = *(v5 + 32);
    sub_2675CF018();
    sub_2675CECD8();
    v40 = v12;
    sub_2675CECD8();
    v14 = v13 == 0;
    if (v13)
    {
      v15 = 0x64656E69617254;
    }

    else
    {
      v15 = 0x656E696C65736142;
    }

    if (v14)
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    sub_2675CECD8();

    sub_2675CECD8();
    result = sub_2675CF038();
    v17 = v8 + 56;
    v39 = v8;
    v18 = -1 << *(v8 + 32);
    a2 = result & ~v18;
    if ((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v38 = v15;
      v19 = ~v18;
      do
      {
        v20 = *(v39 + 48) + 40 * a2;
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *(v20 + 32);
        v24 = *v20 == v9 && *(v20 + 8) == v10;
        if (v24 || (result = sub_2675CEF98(), (result & 1) != 0))
        {
          v25 = v21 == v11 && v22 == v40;
          if (v25 || (result = sub_2675CEF98(), (result & 1) != 0))
          {
            if (v23)
            {
              v26 = 0x64656E69617254;
            }

            else
            {
              v26 = 0x656E696C65736142;
            }

            if (v23)
            {
              v27 = 0xE700000000000000;
            }

            else
            {
              v27 = 0xE800000000000000;
            }

            if (v26 == v38 && v27 == v16)
            {
              goto LABEL_42;
            }

            v29 = sub_2675CEF98();

            if (v29)
            {
              goto LABEL_43;
            }
          }
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v30 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = *(v30 + 48) + 40 * a2;
  v32 = *(v37 + 16);
  *v31 = *v37;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(v37 + 32);
  v33 = *(v30 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_42:

LABEL_43:

    result = sub_2675CEFA8();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v35;
  }

  return result;
}

void *sub_2675CB83C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA008, &qword_2675D0090);
  v2 = *v0;
  v3 = sub_2675CEE58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2675CB998()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA028, &qword_2675D00A8);
  v2 = *v0;
  v3 = sub_2675CEE58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2675CBB10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA008, &qword_2675D0090);
  result = sub_2675CEE68();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2675CF018();

      sub_2675CECD8();
      result = sub_2675CF038();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2675CBD48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA028, &qword_2675D00A8);
  result = sub_2675CEE68();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_2675CF018();

      sub_2675CECD8();
      sub_2675CECD8();
      sub_2675CECD8();

      sub_2675CECD8();
      result = sub_2675CF038();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      v10 = v33;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_2675CC034(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2675CC188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2675CC054(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F30, &qword_2675CFCB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F20, &qword_2675CFCA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2675CC188(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA010, &qword_2675D0098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2675CC294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1 == a6 && a2 == a7 || (sub_2675CEF98()) && (a3 == a8 && a4 == a9 || (sub_2675CEF98()))
  {
    if (a5)
    {
      v14 = 0x64656E69617254;
    }

    else
    {
      v14 = 0x656E696C65736142;
    }

    if (a5)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE800000000000000;
    }

    if (a10)
    {
      v16 = 0x64656E69617254;
    }

    else
    {
      v16 = 0x656E696C65736142;
    }

    if (a10)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    if (v14 == v16 && v15 == v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_2675CEF98();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

id sub_2675CC3A4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2675CEB18();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_2675CEB48();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_2675CEAF8();

    swift_willThrow();
    v11 = sub_2675CEB48();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_2675CC504(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2675CCE78();
  result = MEMORY[0x26D5F9ED0](v2, &type metadata for ModelEvaluationMetricSpecs, v3);
  v12 = result;
  if (v2)
  {
    v5 = (a1 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 40;
      v13[0] = v7;
      v13[1] = v6;
      v13[2] = v8;
      v13[3] = v9;
      v14 = v10;

      sub_2675CAB0C(v11, v13);

      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_2675CC5AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D5F9ED0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2675CA9BC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2675CC644(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_2675CC650(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    [a1 int64Value];
    return;
  }

  if (v2 == 5)
  {
    v3 = [a1 multiArrayValue];
    if (v3)
    {
      v4 = v3;
      if ([v3 count] == 1)
      {
        v5 = [v4 objectAtIndexedSubscript_];
        [v5 floatValue];

        return;
      }
    }

    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v14 = sub_2675CEC68();
    __swift_project_value_buffer(v14, qword_2801CBA50);
    v15 = a1;
    v8 = sub_2675CEC48();
    v9 = sub_2675CEDF8();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v15;
    *v11 = v15;
    v16 = v15;
    v13 = "Feature value not scalar: %@";
  }

  else
  {
    if (v2 == 2)
    {
      [a1 doubleValue];
      return;
    }

    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v6 = sub_2675CEC68();
    __swift_project_value_buffer(v6, qword_2801CBA50);
    v7 = a1;
    v8 = sub_2675CEC48();
    v9 = sub_2675CEDF8();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    v13 = "Invalid feature value %@";
  }

  _os_log_impl(&dword_2675BE000, v8, v9, v13, v10, 0xCu);
  sub_2675C37E4(v11);
  MEMORY[0x26D5FA5F0](v11, -1, -1);
  MEMORY[0x26D5FA5F0](v10, -1, -1);
LABEL_19:

  sub_2675CCE24();
  swift_allocError();
  *v17 = 3;
  swift_willThrow();
}

uint64_t sub_2675CC948(void *a1)
{
  v3 = v1;
  isUniquelyReferenced_nonNull_native = sub_2675C3B8C(MEMORY[0x277D84F90]);
  v51 = a1;
  v6 = [a1 count];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_31:
    v40 = sub_2675CEC68();
    __swift_project_value_buffer(v40, qword_2801CBA50);

    v41 = sub_2675CEC48();
    v42 = sub_2675CEDF8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = isUniquelyReferenced_nonNull_native;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57 = v45;
      *v44 = 136315138;
      v46 = sub_2675CE284(v56, v2, &v57);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_2675BE000, v41, v42, "Couldn't find feature value for %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x26D5FA5F0](v45, -1, -1);
      v47 = v44;
      isUniquelyReferenced_nonNull_native = v43;
      MEMORY[0x26D5FA5F0](v47, -1, -1);
    }

    else
    {
    }

    sub_2675CCE24();
    swift_allocError();
    *v48 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_36:

    return isUniquelyReferenced_nonNull_native;
  }

  if (v6)
  {
    v7 = 0;
    v50 = v6;
LABEL_5:
    v52 = v7 + 1;
    v55 = [v51 featuresAtIndex_];
    v8 = [v55 featureNames];
    v9 = sub_2675CED98();

    v10 = 0;
    v11 = v9 + 56;
    v12 = 1 << *(v9 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v9 + 56);
    v15 = (v12 + 63) >> 6;
    v53 = v15;
    v54 = v9;
    while (1)
    {
      if (!v14)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v16 >= v15)
          {
            break;
          }

          v14 = *(v11 + 8 * v16);
          ++v10;
          if (v14)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        v7 = v52;
        if (v52 == v50)
        {
          return isUniquelyReferenced_nonNull_native;
        }

        goto LABEL_5;
      }

      v16 = v10;
LABEL_16:
      v17 = (*(v54 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v17;
      v2 = v17[1];

      v56 = v18;
      v19 = sub_2675CECC8();
      v20 = [v55 featureValueForName_];

      if (!v20)
      {
        break;
      }

      v21 = 0.0;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v22 = sub_2675CE92C(v18, v2);
        if (v23)
        {
          v21 = *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v22);
        }
      }

      sub_2675CC650(v20);
      if (v3)
      {

        swift_unknownObjectRelease();

        goto LABEL_36;
      }

      v25 = v24;
      v26 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v26;
      v28 = sub_2675CE92C(v18, v2);
      v29 = *(v26 + 16);
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v32 = v27;
      if (*(v26 + 24) >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2675C2B2C();
        }
      }

      else
      {
        sub_2675C2484(v31, isUniquelyReferenced_nonNull_native);
        v33 = sub_2675CE92C(v18, v2);
        if ((v32 & 1) != (v34 & 1))
        {
          result = sub_2675CEFB8();
          __break(1u);
          return result;
        }

        v28 = v33;
      }

      v14 &= v14 - 1;
      v35 = v21 + v25;
      if (v32)
      {

        isUniquelyReferenced_nonNull_native = v57;
        *(v57[7] + 4 * v28) = v35;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v57;
        v57[(v28 >> 6) + 8] |= 1 << v28;
        v36 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v28);
        *v36 = v18;
        v36[1] = v2;
        *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v28) = v35;

        v37 = *(isUniquelyReferenced_nonNull_native + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_40;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v39;
      }

      v10 = v16;
      v3 = 0;
      v15 = v53;
    }

    if (qword_2801C9D10 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  return isUniquelyReferenced_nonNull_native;
}

unint64_t sub_2675CCE24()
{
  result = qword_2801CA018;
  if (!qword_2801CA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA018);
  }

  return result;
}

unint64_t sub_2675CCE78()
{
  result = qword_2801CA020;
  if (!qword_2801CA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA020);
  }

  return result;
}

unint64_t sub_2675CCECC()
{
  result = qword_2801CA030;
  if (!qword_2801CA030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CA030);
  }

  return result;
}

unint64_t sub_2675CCF18()
{
  result = qword_2801CA038;
  if (!qword_2801CA038)
  {
    sub_2675CEB48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA038);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2675CCF84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2675CCFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2675CD024()
{
  result = qword_2801CA040;
  if (!qword_2801CA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA040);
  }

  return result;
}

unint64_t sub_2675CD078(uint64_t a1, uint64_t a2)
{
  v2 = sub_2675CEEC8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2675CD0C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA048, &qword_2675D01B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2675CD364();
  sub_2675CF048();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = 0;
  v10 = sub_2675CEED8();
  v12 = v11;
  v19 = v10;
  v23 = 1;
  v17 = sub_2675CEED8();
  v18 = v13;
  v21 = 2;
  sub_2675CD3B8();
  sub_2675CEF08();
  HIDWORD(v16) = v22;
  v20 = 3;
  sub_2675CD40C();
  sub_2675CEF08();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v19;
  *(a2 + 8) = v12;
  v15 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = BYTE4(v16);
  return result;
}

unint64_t sub_2675CD364()
{
  result = qword_2801CA050;
  if (!qword_2801CA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA050);
  }

  return result;
}

unint64_t sub_2675CD3B8()
{
  result = qword_2801CA058;
  if (!qword_2801CA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA058);
  }

  return result;
}

unint64_t sub_2675CD40C()
{
  result = qword_2801CA060;
  if (!qword_2801CA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA060);
  }

  return result;
}

unint64_t sub_2675CD460()
{
  result = qword_2801CA070;
  if (!qword_2801CA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA070);
  }

  return result;
}

unint64_t sub_2675CD4B4()
{
  result = qword_2801CA078;
  if (!qword_2801CA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA078);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelEvaluationMetricSpecs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelEvaluationMetricSpecs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MetricEncoding(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MetricEncoding(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2675CD754()
{
  result = qword_2801CA080;
  if (!qword_2801CA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA080);
  }

  return result;
}

unint64_t sub_2675CD7AC()
{
  result = qword_2801CA088;
  if (!qword_2801CA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA088);
  }

  return result;
}

unint64_t sub_2675CD804()
{
  result = qword_2801CA090;
  if (!qword_2801CA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA090);
  }

  return result;
}

unint64_t sub_2675CD85C()
{
  result = qword_2801CA098;
  if (!qword_2801CA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA098);
  }

  return result;
}

unint64_t sub_2675CD8B4()
{
  result = qword_2801CA0A0;
  if (!qword_2801CA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA0A0);
  }

  return result;
}

unint64_t sub_2675CD908()
{
  result = qword_2801CA0A8;
  if (!qword_2801CA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA0A8);
  }

  return result;
}

unint64_t sub_2675CD95C()
{
  result = qword_2801CA0B0;
  if (!qword_2801CA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA0B0);
  }

  return result;
}

void sub_2675CD9B0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2675CEDC8();
  v7 = [v6 error];
  if (v7)
  {

    if (qword_2801C9D10 != -1)
    {
      swift_once();
    }

    v8 = sub_2675CEC68();
    __swift_project_value_buffer(v8, qword_2801CBA50);

    v9 = v6;
    v10 = sub_2675CEC48();
    v11 = sub_2675CEDF8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_2675CE284(a1, a2, &v20);
      *(v12 + 12) = 2112;
      v15 = [v9 error];
      if (v15)
      {
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      *(v12 + 14) = v15;
      *v13 = v16;
      _os_log_impl(&dword_2675BE000, v10, v11, "Error executing %s in Biome: %@", v12, 0x16u);
      sub_2675CE888(v13, &qword_2801C9EE8, &qword_2675D00A0);
      MEMORY[0x26D5FA5F0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x26D5FA5F0](v14, -1, -1);
      MEMORY[0x26D5FA5F0](v12, -1, -1);
    }

    v18 = *(v3 + 16);
    *(v3 + 16) = 0;

    sub_2675CE230();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  else
  {
    v17 = *(v3 + 16);
    *(v3 + 16) = v6;
  }
}

NSObject *sub_2675CDC08()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [v1 error];
    if (v2)
    {
      v3 = v2;
      if (qword_2801C9D10 != -1)
      {
        swift_once();
      }

      v4 = sub_2675CEC68();
      __swift_project_value_buffer(v4, qword_2801CBA50);
      v5 = v3;
      v6 = sub_2675CEC48();
      v7 = sub_2675CEDF8();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_2675BE000, v6, v7, "Error in fetching row: %@", v8, 0xCu);
        sub_2675CE888(v9, &qword_2801C9EE8, &qword_2675D00A0);
        MEMORY[0x26D5FA5F0](v9, -1, -1);
        MEMORY[0x26D5FA5F0](v8, -1, -1);
      }

      sub_2675CE230();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();

      return v5;
    }

    v13 = *(v0 + 16);
    if (v13)
    {
      v14 = [v13 row];
      if (v14)
      {
        v15 = v14;
        v16 = sub_2675CECA8();

        v5 = sub_2675CDEF0(v16);

        if (v5)
        {
          return v5;
        }
      }
    }
  }

  if (qword_2801C9D10 != -1)
  {
    swift_once();
  }

  v17 = sub_2675CEC68();
  __swift_project_value_buffer(v17, qword_2801CBA50);
  v5 = sub_2675CEC48();
  v18 = sub_2675CEDE8();
  if (os_log_type_enabled(v5, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2675BE000, v5, v18, "Row cannot be converted into SiriPrivateLearningPFLBiomeSQLRow", v19, 2u);
    MEMORY[0x26D5FA5F0](v19, -1, -1);
  }

  sub_2675CE230();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();
  return v5;
}

unint64_t sub_2675CDEF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C9F10, &qword_2675CFC90);
    v2 = sub_2675CEEB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_2675CE82C(*(a1 + 48) + 40 * v12, v27);
        sub_2675C3B30(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_2675CE82C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2675C3B30(v25 + 8, v20);
        sub_2675CE888(v24, &qword_2801CA0C0, &qword_2675D0558);
        v21 = v18;
        sub_2675C3B1C(v20, v22);
        v13 = v21;
        sub_2675C3B1C(v22, v23);
        sub_2675C3B1C(v23, &v21);
        result = sub_2675CE92C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          result = sub_2675C3B1C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_2675C3B1C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_2675CE888(v24, &qword_2801CA0C0, &qword_2675D0558);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2675CE1CC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2675CE230()
{
  result = qword_2801CA0B8;
  if (!qword_2801CA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CA0B8);
  }

  return result;
}

unint64_t sub_2675CE284(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2675CE350(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2675C3B30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2675CE350(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2675CE45C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2675CEE88();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2675CE45C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2675CE4A8(a1, a2);
  sub_2675CE5D8(&unk_2878A8948);
  return v3;
}

void *sub_2675CE4A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2675CE6C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2675CEE88();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2675CECE8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2675CE6C4(v10, 0);
        result = sub_2675CEE78();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2675CE5D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2675CE738(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2675CE6C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA0C8, &unk_2675D0560);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2675CE738(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CA0C8, &unk_2675D0560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2675CE888(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2675CE8E8(uint64_t a1)
{
  v2 = sub_2675CF008();

  return sub_2675CE9A4(a1, v2);
}

unint64_t sub_2675CE92C(uint64_t a1, uint64_t a2)
{
  sub_2675CF018();
  sub_2675CECD8();
  v4 = sub_2675CF038();

  return sub_2675CEA10(a1, a2, v4);
}

unint64_t sub_2675CE9A4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2675CEA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2675CEF98())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}