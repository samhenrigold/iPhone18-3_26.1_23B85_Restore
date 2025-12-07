void *sub_221AE7558()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_221AE7580(_BYTE *a1, char a2, void *a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    sub_2219A69A0();
    v7 = sub_221BCE168();
    MEMORY[0x223DA31F0](v7);

    MEMORY[0x223DA31F0](0x3E7365756C617620, 0xE800000000000000);
    v9 = 60;
    v8 = 0xE100000000000000;
  }

  else
  {
    v10 = sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v9 = MEMORY[0x223DA33D0](a4, v10);
    v8 = v11;
  }

  sub_221BCDE68();
  OUTLINED_FUNCTION_11_14();
  MEMORY[0x223DA31F0](0xD000000000000023);
  if (a2)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (a2)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v12, v13);

  MEMORY[0x223DA31F0](0x746172657469202CLL, 0xEC000000203A726FLL);
  v14 = a3;
  v15 = [v14 description];
  v16 = sub_221BCD388();
  v18 = v17;

  MEMORY[0x223DA31F0](v16, v18);

  MEMORY[0x223DA31F0](0x7365756C6176202CLL, 0xEA0000000000203ALL);
  MEMORY[0x223DA31F0](v9, v8);

  OUTLINED_FUNCTION_171();
  return 0;
}

uint64_t sub_221AE77A0(char *a1)
{
  v2 = v1;
  v3 = *a1;
  __dst[1] = 0xE000000000000000;
  sub_221BCDE68();
  v17 = 0;
  v18 = 0xE000000000000000;
  OUTLINED_FUNCTION_11_14();
  v4 = MEMORY[0x223DA31F0](0xD000000000000038);
  __dst[3] = &type metadata for AppIntentSpecification;
  __dst[4] = sub_2219EB9A8(v4, v5, v6);
  __dst[0] = swift_allocObject();
  sub_2219EB748(v1, __dst[0] + 16);
  __swift_project_boxed_opaque_existential_0(__dst, &type metadata for AppIntentSpecification);
  v16[0] = v3;
  v7 = sub_2219B5AFC(v16);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(__dst);
  MEMORY[0x223DA31F0](v7, v9);

  v10 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x223DA31F0](v10);
  v11 = *(type metadata accessor for AppIntentsProtocol.PerformAction.Request(0) + 28);
  memcpy(__dst, (v2 + v11), 0xD7uLL);
  memcpy(v16, (v2 + v11), 0xD7uLL);
  sub_221A0E888(__dst, v15);
  v12 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v12);

  MEMORY[0x223DA31F0](0x6F7269766E65202CLL, 0xEF203A746E656D6ELL);
  sub_2219A1B08(v2 + 40, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBB020, &qword_221BE2A10);
  v13 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v13);

  OUTLINED_FUNCTION_171();
  return v17;
}

uint64_t sub_221AE7974(char *a1)
{
  v3 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  sub_221A0150C(v1, v5);
  v7 = 0x6E776F6E6B6E752ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_221A133F4(v5);
      v7 = 0x726F7272652ELL;
      break;
    case 2u:
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_12_9();
      v7 = v14 + 7;
      break;
    case 3u:
      sub_221A133F4(v5);
      v7 = 0x6843736465656E2ELL;
      break;
    case 4u:
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_12_9();
      v7 = v16 + 1;
      break;
    case 5u:
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_12_9();
      v7 = v17 | 2;
      break;
    case 6u:
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_12_9();
      v7 = v15 + 3;
      break;
    case 7u:
      sub_221A133F4(v5);
      v7 = 0x6156736465656E2ELL;
      break;
    case 8u:
      return v7;
    default:
      v9 = v5[28];
      v8 = v5[29];
      memcpy(v26, v5, sizeof(v26));
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_221BCDE68();
      v24 = v20;
      v25 = v21;
      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BF03E0);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7A0, &qword_221BD2930);
      v22 = v10;
      v23 = sub_221AE81D8();
      v20 = swift_allocObject();
      sub_221AE823C(v26, v20 + 16);
      __swift_project_boxed_opaque_existential_0(&v20, v10);
      v11 = sub_2219C1E9C(v6);
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(&v20);
      MEMORY[0x223DA31F0](v11, v13);

      MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BF0400);
      MEMORY[0x223DA31F0](v9, v8);

      OUTLINED_FUNCTION_171();
      v7 = v24;
      sub_221AE82AC(v26);
      break;
  }

  return v7;
}

uint64_t sub_221AE7C60(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_221BCDE68();
  v25 = 0;
  v26 = 0xE000000000000000;
  OUTLINED_FUNCTION_11_14();
  MEMORY[0x223DA31F0](0xD00000000000002DLL);
  v4 = *v1;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];

  sub_221998178(v6, v7);
  v8 = sub_2219987FC(v4, v5, v6, v7);
  MEMORY[0x223DA31F0](v8);

  v9 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x223DA31F0](v9);
  v10 = v2[6];
  v21 = v2[5];
  v22 = v10;

  v11 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v11);

  v12 = MEMORY[0x223DA31F0](0x203A65707974202CLL, 0xE800000000000000);
  v23 = &type metadata for QuerySpecification;
  v24 = sub_2219EB6D8(v12, v13, v14);
  v20 = swift_allocObject();
  sub_2219AC930((v2 + 10), v20 + 16);
  __swift_project_boxed_opaque_existential_0(&v20, &type metadata for QuerySpecification);
  v19 = v3;
  v15 = sub_221A22514(&v19);
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_0(&v20);
  MEMORY[0x223DA31F0](v15, v17);

  OUTLINED_FUNCTION_171();
  return v25;
}

uint64_t sub_221AE7E0C(char *a1)
{
  if (*(v1 + 32))
  {
    return 0x726F7272652ELL;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *a1;
  sub_221BCDE68();

  v14 = 0x737365636375732ELL;
  v15 = 0xE900000000000028;
  v9 = sub_2219C1168(v5, v7, v8);
  MEMORY[0x223DA31F0](v9);

  OUTLINED_FUNCTION_11_14();
  MEMORY[0x223DA31F0](0xD000000000000014);
  if (v3)
  {
    v13 = v7;
    v10 = sub_221AE7580(&v13, v6 & 1, v3, v4);
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x223DA31F0](v10, v12);

  OUTLINED_FUNCTION_171();
  return v14;
}

unint64_t sub_221AE7F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_221AE7F94(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221AE7F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBAFF8;
  if (!qword_27CFBAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBAFF8);
  }

  return result;
}

unint64_t sub_221AE7FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_221AE8010(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221AE8010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB000;
  if (!qword_27CFBB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB000);
  }

  return result;
}

uint64_t sub_221AE8064(uint64_t a1)
{
  result = sub_221AE8114(&qword_27CFBB008, type metadata accessor for AppIntentsProtocol.PerformAction.Response, &unk_221BE2940);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221AE80BC(uint64_t a1)
{
  result = sub_221AE8114(&qword_27CFBB010, type metadata accessor for AppIntentsProtocol.PerformAction.Request, &unk_221BE2984);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221AE8114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_221AE815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_221AE8184(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221AE8184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB018;
  if (!qword_27CFBB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB018);
  }

  return result;
}

unint64_t sub_221AE81D8()
{
  result = qword_27CFBB028;
  if (!qword_27CFBB028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CFBB7A0, &qword_221BD2930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB028);
  }

  return result;
}

uint64_t sub_221AE823C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7A0, &qword_221BD2930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221AE82AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7A0, &qword_221BD2930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221AE8314(uint64_t a1, int a2)
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

uint64_t sub_221AE8354(uint64_t result, int a2, int a3)
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

uint64_t sub_221AE83BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_221AE83FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_221AE8464(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_221AE84A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIntentsProtocol.PerformAction.ChoiceRequest.ProvidedOption.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221AE8634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB030;
  if (!qword_27CFBB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB030);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_221A133F4(v0);
}

unint64_t sub_221AE87CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB040;
  if (!qword_27CFBB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB040);
  }

  return result;
}

unint64_t sub_221AE8820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB048;
  if (!qword_27CFBB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB048);
  }

  return result;
}

uint64_t sub_221AE8904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_221AE8950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB060;
  if (!qword_27CFBB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB060);
  }

  return result;
}

unint64_t sub_221AE89A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB068;
  if (!qword_27CFBB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB068);
  }

  return result;
}

BOOL sub_221AE89FC(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v10, &unk_27CFBB7B0, &unk_221BE4C10);
  v3 = v11;
  if (v11)
  {
    sub_22198B358(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_221B0FCDC(v4, v5);
    sub_221A6FD88();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v3 == 0;
}

BOOL sub_221AE8AF8(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v10, &qword_27CFB8320, &unk_221BD1D60);
  v3 = v11;
  if (v11)
  {
    sub_22198B358(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_221B0BEB0(v4, v5);
    sub_221A8DA04();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v3 == 0;
}

BOOL sub_221AE8BF4(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v10, &qword_27CFB8320, &unk_221BD1D60);
  v3 = v11;
  if (v11)
  {
    sub_22198B358(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_221B0BEB0(v4, v5);
    sub_221A8CA20();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v3 == 0;
}

BOOL sub_221AE8CF0(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v10, &qword_27CFB8320, &unk_221BD1D60);
  v3 = v11;
  if (v11)
  {
    sub_22198B358(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_221B0BEB0(v4, v5);
    sub_221A8CE38();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v3 == 0;
}

BOOL sub_221AE8DEC(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v10, &qword_27CFB8320, &unk_221BD1D60);
  v3 = v11;
  if (v11)
  {
    sub_22198B358(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_221B0BEB0(v4, v5);
    sub_221A8D5B8();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v3 == 0;
}

BOOL sub_221AE8EE8(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v10, &qword_27CFB8320, &unk_221BD1D60);
  v3 = v11;
  if (v11)
  {
    sub_22198B358(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_221B0BEB0(v4, v5);
    sub_221A6F524();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v3 == 0;
}

void sub_221AE8FE4()
{
  OUTLINED_FUNCTION_55_4();
  v3 = v2;
  v5 = v4;
  type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_12();
  v7 = sub_2219A02E8(v5, &v11, &unk_27CFBB7C0, &qword_221BE4C20);
  if (*(&v12 + 1))
  {
    v9[0] = v11;
    v9[1] = v12;
    v10 = v13;
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_81_6();
    *(v8 - 16) = v9;
    sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
    sub_221BCCB58();
    if (!v0)
    {
      v3(v1);
    }

    sub_2219B397C(v9);
  }

  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AE9148(uint64_t a1)
{
  v3 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2219A02E8(a1, &v11, &unk_27CFB93B0, &qword_221BD1D70);
  v4 = v12;
  if (v12)
  {
    sub_22198B358(&v11, v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    sub_221B0D2F4(v5, v6);
    if (v1)
    {
      return __swift_destroy_boxed_opaque_existential_0(v8);
    }

    sub_221A6FFEC();
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return v4 == 0;
}

uint64_t sub_221AE925C(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = a3 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 36);
    *v5 = a1;
    *(v5 + 8) = 0;
  }

  return a2 & 1;
}

BOOL sub_221AE92B4(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2219A02E8(a1, &v10, &qword_27CFB7F20, &qword_221BD2008);
  v3 = v11;
  if (v11)
  {
    sub_22198B358(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_221B0C020(v4, v5);
    sub_221A8DC34();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v3 == 0;
}

BOOL sub_221AE93B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 60;
  if (a2 >> 60 != 15)
  {
    v6 = (a3 + *(type metadata accessor for AppIntentsProtobuf_Dialog(0) + 68));
    v7 = *v6;
    v8 = v6[1];
    *v6 = a1;
    v6[1] = a2;
    sub_2219EBFB4(a1, a2);
    sub_2219EC02C(v7, v8);
  }

  return v3 > 0xE;
}

uint64_t sub_221AE9434(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    return a2 & 1;
  }

  v4 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = a3 + *(type metadata accessor for AppIntentsProtobuf_FileDescriptor(0) + 28);
    *v5 = v4;
    *(v5 + 8) = 0;
    return a2 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_221AE9494(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

id sub_221AE9500(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_164_1();
  v6 = sub_221BCD358();

  v7 = [v3 *a3];

  return v7;
}

void sub_221AE9570()
{
  OUTLINED_FUNCTION_55_4();
  v65 = v0;
  v2 = v1;
  v60 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104_2();
  v61 = v6;
  v7 = OUTLINED_FUNCTION_133_3();
  v62 = type metadata accessor for AppIntentsProtobuf_UUID(v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_8();
  v64 = v9;
  OUTLINED_FUNCTION_133_3();
  v10 = sub_221BCC558();
  v11 = OUTLINED_FUNCTION_8_1(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = OUTLINED_FUNCTION_149_2();
  v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v22 = v21 - v20;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = sub_221AE9C28(KeyPath, v24);
  v27 = v26;

  if (v27)
  {
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);
    swift_bridgeObjectRetain_n();
    v28 = sub_221AE9500(v25, v27, &selRef_initWithContentType_);
    v29 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v28 preferredExtractionType:1];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v29 = 0;
  }

  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v32 = sub_221AE9BC4(v30, v31);
  v34 = v33;

  if (v34)
  {
    v35 = 10;
  }

  else
  {
    v35 = v32;
  }

  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  sub_2219A02E8(v2 + *(AsyncIteratorRequest + 32), v16, &unk_27CFBB600, &qword_221BE44B0);
  v37 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v37, v38, v18);
  if (v39)
  {
    sub_221BCC8C8();
    OUTLINED_FUNCTION_196_1(v18[5]);
    v40 = v22 + v18[6];
    *v40 = 0;
    *(v40 + 4) = 1;
    OUTLINED_FUNCTION_216_2(v18[7]);
    v41 = OUTLINED_FUNCTION_56_6();
    OUTLINED_FUNCTION_49_4(v41, v42, v18);
    if (!v39)
    {
      sub_2219A1CC8(v16, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    v43 = OUTLINED_FUNCTION_131_3();
    sub_221B229DC(v43, v44, v45);
  }

  v46 = v65;
  sub_221AE9D08();
  if (v46)
  {
    OUTLINED_FUNCTION_66_4();
  }

  else
  {
    v48 = v66;
    v47 = v67;
    LODWORD(v65) = v68;
    v70 = v69;
    v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v50 = [objc_allocWithZone(MEMORY[0x277D23B38]) initWithPageSize_];

    v51 = v29;
    [v50 setExportConfiguration_];
    v52 = v61;
    sub_2219A02E8(v2 + *(AsyncIteratorRequest + 20), v61, &qword_27CFB9988, &qword_221BDAE20);
    OUTLINED_FUNCTION_73_6(v52, 1);
    if (v39)
    {
      v53 = v64;
      *v64 = 0;
      v53[1] = 0;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_20_8(v52);
      if (!v39)
      {
        sub_2219A1CC8(v52, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      v53 = v64;
      sub_221B229DC(v52, v64, v54);
    }

    v55 = v63;
    sub_221AE9E30(v53);
    sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v53, v56);
    v57 = sub_221AEA118(v55);

    OUTLINED_FUNCTION_66_4();
    v58 = v60;
    *v60 = v48;
    v58[1] = v47;
    *(v58 + 16) = v65;
    *(v58 + 17) = v70;
    v58[3] = v57;
    v58[4] = v50;
  }

  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AE9A50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A8B5F8(v1, v2);
}

unint64_t sub_221AE9A90(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (v5 == 1)
  {
    swift_getAtKeyPath();
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v5 ^ 1u) << 32);
}

uint64_t sub_221AE9B04(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (v4 != 1)
  {
    return 2;
  }

  OUTLINED_FUNCTION_70();
  swift_getAtKeyPath();
  return v3;
}

uint64_t sub_221AE9B5C(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (v4 != 1)
  {
    return 0;
  }

  swift_getAtKeyPath();
  return v3;
}

uint64_t sub_221AE9BC4(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (v4 != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70();
  swift_getAtKeyPath();
  return v3;
}

uint64_t sub_221AE9C28(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (v3 != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70();
  swift_getAtKeyPath();
  return v3;
}

uint64_t sub_221AE9C84(void x0_0, uint64_t a1, void (*a2)(void))
{
  swift_getAtKeyPath();
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_172_3();
    swift_getAtKeyPath();
  }

  a2(0);
  OUTLINED_FUNCTION_211_3();
  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_221AE9D08()
{
  OUTLINED_FUNCTION_55_4();
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = OUTLINED_FUNCTION_120();
  v4 = sub_221AE9C28(v2, v3);
  v6 = v5;

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_120();
  v9 = sub_221AE9A90(v7, v8);

  v10 = (v9 & 0x1FFFFFFFFLL) == 0xFFFFFFFF;
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = OUTLINED_FUNCTION_120();
  LOBYTE(v9) = sub_221AE9B04(v11, v12);

  v13 = OUTLINED_FUNCTION_53_3();
  sub_221B22C2C(v13, v14);
  *v1 = v4;
  *(v1 + 8) = v6;
  *(v1 + 16) = v9;
  *(v1 + 17) = v10;
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AE9E30(unint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_221BCC2B8();
  swift_allocObject();
  v9 = 0x1000000000;
  v10 = sub_221BCC288() | 0x4000000000000000;
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  sub_221BCC438();
  v1 = v10;
  switch(v10 >> 62)
  {
    case 1uLL:
      if (v9 >> 32 < v9)
      {
        __break(1u);
      }

      sub_2219EBFC8(v9, v10);
      v4 = 0;
      v5 = 16;
      goto LABEL_8;
    case 2uLL:
      v2 = *(v9 + 16);
      v3 = *(v9 + 24);
      sub_2219EBFC8(v9, v10);
      v4 = v2;
      v5 = v3;
LABEL_8:
      sub_221B21F94(v4, v5);
      goto LABEL_9;
    case 3uLL:
      memset(v8, 0, 14);
      goto LABEL_5;
    default:
      v8[0] = v9;
      LODWORD(v8[1]) = v10;
      WORD2(v8[1]) = WORD2(v10);
LABEL_5:
      v6 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
      sub_221BCC528();

LABEL_9:
      sub_2219EC040(0x1000000000, v1);
      return sub_2219EC040(0x1000000000, v1);
  }
}

id sub_221AEA118(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_221BCC508();
  v4 = [v2 initWithIdentifier_];

  v5 = sub_221BCC558();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_221AEA1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_221BCC558();
  v7 = *(v29 - 8);
  v8 = MEMORY[0x28223BE20](v29);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  if (v11)
  {
    v28[0] = *a2;
    v28[1] = v11;
    sub_221AF0384();
  }

  v12 = [*(a2 + 24) identifier];
  sub_221BCC528();

  MEMORY[0x28223BE20](v13);
  v28[-2] = v10;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  (*(v7 + 8))(v10, v29);
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v15 = AsyncIteratorRequest[5];
  sub_2219A1CC8(a1 + v15, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v6, a1 + v15, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v4);
  v16 = *(a2 + 32);
  v17 = [v16 pageSize];
  v18 = [v17 longLongValue];

  v19 = a1 + AsyncIteratorRequest[6];
  *v19 = v18;
  *(v19 + 8) = 0;
  result = [v16 exportConfiguration];
  if (result)
  {
    v21 = result;
    v22 = [result contentType];
    v23 = [v22 contentType];

    v24 = sub_221BCD388();
    v26 = v25;

    v27 = (a1 + AsyncIteratorRequest[7]);

    *v27 = v24;
    v27[1] = v26;
  }

  return result;
}

uint64_t sub_221AEA50C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  MEMORY[0x28223BE20](AsyncIteratorRequest);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest, &unk_221BDE628);
    sub_221BCCAF8();
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
    sub_221AE9570();
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v21;
    *v21 = v16;
    *(v14 + 16) = v11;
    *(v14 + 17) = v12;
    *(v14 + 24) = v13;
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEA770@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = a2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  MEMORY[0x28223BE20](AppDescriptionRequest);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v23, v23[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest, &unk_221BDDAE8);
    sub_221BCCAF8();
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
    sub_221AEEF64(v7, v11, v12, v13, v14, v15, v16, v17, *&v21[0], *(&v21[0] + 1));
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
    v18 = v21[1];
    v19 = v24;
    *v24 = v21[0];
    v19[1] = v18;
    v19[2] = v21[2];
    *(v19 + 24) = v22;
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEA9CC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v25 = a2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  MEMORY[0x28223BE20](AppDescriptionResponse);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v24, v24[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse, &unk_221BDB798);
    sub_221BCCAF8();
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
    sub_221AEF428(v7, v11, v12, v13, v14, v15, v16, v17, *&v22[0], *(&v22[0] + 1));
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
    v18 = v23;
    v19 = v22[1];
    v20 = v25;
    *v25 = v22[0];
    v20[1] = v19;
    *(v20 + 16) = v18;
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEAC20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    v5 = sub_221BCE1D8();
    sub_221B1F8F4(v5, v6);
    memcpy(a2, __src, 0x6AuLL);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEACF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsRequest);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest, &unk_221BDE4C0);
    sub_221BCCAF8();
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
    sub_221AF12B0();
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
    v11 = v18;
    v12 = v19;
    v13 = v17;
    v14 = v21;
    *v21 = v16[1];
    *(v14 + 1) = v13;
    *(v14 + 24) = v11;
    *(v14 + 25) = v12;
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEAF54(void *a1, uint64_t (*a2)(uint64_t))
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_69_0();
  sub_221BCE3A8();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0(v8, v8[3]);
    OUTLINED_FUNCTION_69_0();
    v6 = sub_221BCE1D8();
    v2 = a2(v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_221AEB02C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    v5 = sub_221BCE1D8();
    sub_221B2003C(v5, v6);
    memcpy(a2, v8, 0x88uLL);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEB0FC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v18 = a2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
  MEMORY[0x28223BE20](OptionsForActionResponse);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse, &unk_221BDC170);
    sub_221BCCAF8();
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
    sub_221AF40A4();
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
    v11 = v16;
    v12 = v15[1];
    v13 = v18;
    *v18 = v15[0];
    v13[1] = v12;
    *(v13 + 32) = v11;
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_221AEB350()
{
  OUTLINED_FUNCTION_55_4();
  v3 = OUTLINED_FUNCTION_197_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_156();
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  OUTLINED_FUNCTION_101_5();
  sub_221BCE3A8();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    OUTLINED_FUNCTION_101_5();
    v7 = sub_221BCE1D8();
    v2(v7);
    v8 = OUTLINED_FUNCTION_202_2();
    sub_221B229DC(v8, v9, v10);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEB42C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  MEMORY[0x28223BE20](started);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest, &unk_221BDDF20);
    sub_221BCCAF8();
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
    sub_221AF5FDC();
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
    v11 = v14[1];
    v12 = v17;
    *v17 = v14[0];
    v12[1] = v11;
    v12[2] = v14[2];
    *(v12 + 6) = v15;
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEB764@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    v5 = sub_221BCE1D8();
    sub_221B214B8(v5, v6);
    memcpy(a2, v8, 0xD2uLL);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEB83C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  sub_221BCE1D8();
  sub_221B21674(v8);
  __swift_destroy_boxed_opaque_existential_0(v7);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_221AEB928@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest, &unk_221BDE358);
    sub_221BCCAF8();
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
    sub_221B0A020();
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v21;
    *v21 = v16;
    *(v14 + 16) = v11;
    *(v14 + 17) = v12;
    *(v14 + 3) = v13;
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEBB8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v19 = a2;
  v4 = sub_221BCC908();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_221BCE1D8();
    sub_221BCC8F8();
    sub_221BCC8E8();
    sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
    sub_221BCCAF8();
    sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    sub_221AE9D08();
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    v11 = v16;
    v12 = v17;
    v13 = v19;
    *v19 = v15;
    *(v13 + 16) = v11;
    *(v13 + 17) = v12;
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEBDE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v5 = sub_221BCE1D8();
    sub_221B2184C(v8, v5);
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v9;
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_221AEBF04(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B18890();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_221AEBFC4(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B18A8C();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_221AEC084(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B18C7C();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_221AEC144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B19238(a2, a3, a4, a5 & 0x1FF);
  if (!v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_221AEC224(void *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_120();
  sub_221BCE3C8();
  v8 = a4(a2, a3 & 1);
  if (!v4)
  {
    OUTLINED_FUNCTION_113_6(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18[0], v18[1], v18[2], v18[3]);
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_251_2();
  }

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_221AEC2BC(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B19638();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_221AEC37C(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B19C28();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_221AEC43C(void *a1, uint64_t (*a2)(void *))
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_69_0();
  v4 = sub_221BCE3C8();
  v5 = a2(v4);
  if (!v2)
  {
    OUTLINED_FUNCTION_113_6(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3]);
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_251_2();
  }

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_221AEC4C4(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B1B478();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_221AEC584(void *a1, uint64_t (*a2)(void *))
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_69_0();
  v4 = sub_221BCE3C8();
  v5 = a2(v4);
  if (!v2)
  {
    OUTLINED_FUNCTION_113_6(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3]);
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_251_2();
  }

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_221AEC60C(void *a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B1B858(a2, a3, a4 & 0x1FF, a5);
  if (!v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_221AEC6EC(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BCE3C8();
  sub_221B1BA5C(a2, a3, a4 & 0x1FF);
  if (!v4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_221BCE1E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_221AEC7C4(void *a1, uint64_t (*a2)(void *))
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_210_3();
  OUTLINED_FUNCTION_69_0();
  v4 = sub_221BCE3C8();
  v5 = a2(v4);
  if (!v2)
  {
    OUTLINED_FUNCTION_113_6(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3]);
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_251_2();
  }

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

double sub_221AEC864@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1BE78(a2, a3, &v8);
  if (!v3)
  {
    v6 = v9;
    v7 = v10;
    *a1 = v8;
    *(a1 + 16) = v6;
    *(a1 + 17) = v7;
    result = v11[0];
    *(a1 + 24) = *v11;
  }

  return result;
}

uint64_t sub_221AEC8B8(uint64_t a1, unint64_t a2)
{
  result = sub_221B1C0A0(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

double sub_221AEC8DC@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1C2CC(a2, a3, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = *&v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

double sub_221AEC92C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1C4F0(a2, a3, v8);
  if (!v3)
  {
    v6 = v9;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_221AEC988(uint64_t a1, unint64_t a2)
{
  result = sub_221B1C8FC(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

double sub_221AEC9C4@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1CD1C(a2, a3, &v8);
  if (!v3)
  {
    v6 = v10;
    v7 = v11;
    *a1 = v8;
    result = *&v9;
    *(a1 + 8) = v9;
    *(a1 + 24) = v6;
    *(a1 + 25) = v7;
  }

  return result;
}

uint64_t sub_221AECA18(uint64_t a1, unint64_t a2)
{
  result = sub_221B1CF44(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

double sub_221AECA54@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1D364(a2, a3, v8);
  if (!v3)
  {
    v6 = v9;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    *(a1 + 32) = v6;
  }

  return result;
}

double sub_221AECAB0@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1D770(a2, a3, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = *&v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

double sub_221AECC48@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1EEB8(a2, a3, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v8;
  }

  return result;
}

double sub_221AECC90@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1F0D4(a2, a3, &v9);
  if (!v3)
  {
    v6 = v10;
    v7 = v11;
    v8 = v12;
    result = *&v9;
    *a1 = v9;
    *(a1 + 16) = v6;
    *(a1 + 17) = v7;
    *(a1 + 24) = v8;
  }

  return result;
}

double sub_221AECCE4@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_221B1F2FC(a2, a3, &v8);
  if (!v3)
  {
    v6 = v9;
    v7 = v10;
    result = *&v8;
    *a1 = v8;
    *(a1 + 16) = v6;
    *(a1 + 17) = v7;
  }

  return result;
}

uint64_t sub_221AECD84()
{
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  MEMORY[0x28223BE20](AsyncIteratorRequest);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest, &unk_221BDE628);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  return v4;
}

uint64_t sub_221AECEBC(uint64_t a1, char a2)
{
  AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
  MEMORY[0x28223BE20](AsyncIteratorResponse);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AEEA04();
  if (!v2)
  {
    sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse, &unk_221BDBEA0);
    AsyncIteratorResponse = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  }

  return AsyncIteratorResponse;
}

uint64_t sub_221AECFE0()
{
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  MEMORY[0x28223BE20](AppDescriptionRequest);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest, &unk_221BDDAE8);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  return v4;
}

uint64_t sub_221AED130()
{
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  MEMORY[0x28223BE20](DeferredPropertyValueRequest);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest, &unk_221BDE790);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  return v4;
}

uint64_t sub_221AED268(uint64_t a1, char a2)
{
  DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
  MEMORY[0x28223BE20](DeferredPropertyValueResponse);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF0948();
  if (!v2)
  {
    sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse, &unk_221BDC440);
    DeferredPropertyValueResponse = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  }

  return DeferredPropertyValueResponse;
}

uint64_t sub_221AED38C()
{
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  MEMORY[0x28223BE20](FileChunkRequest);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest, &unk_221BDE1F0);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  return v4;
}

uint64_t sub_221AED4C4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsRequest);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4 & 0x1FF;
  sub_221AE8904(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest, &unk_221BDE4C0);
  sub_221BCCB58();
  v11 = sub_221BCCB18();
  sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  return v11;
}

uint64_t sub_221AED624(uint64_t a1, char a2)
{
  NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsResponse);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF1F04();
  if (!v2)
  {
    sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse, &unk_221BDBBD0);
    NextAsyncIteratorResultsResponse = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  }

  return NextAsyncIteratorResultsResponse;
}

uint64_t sub_221AED778()
{
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  MEMORY[0x28223BE20](restarted);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest, &unk_221BDDC50);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  return v4;
}

uint64_t sub_221AED8B0()
{
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  MEMORY[0x28223BE20](started);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest, &unk_221BDDF20);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  return v4;
}

uint64_t sub_221AED9E8()
{
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  MEMORY[0x28223BE20](started);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse, &unk_221BDB900);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  return v4;
}

uint64_t sub_221AEDB20()
{
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest, &unk_221BDDDB8);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  return v4;
}

uint64_t sub_221AEDC70()
{
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AFE910();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse, &unk_221BDD6B0);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  }

  return v0;
}

uint64_t sub_221AEDE10()
{
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);
  sub_221BCCB58();
  v4 = sub_221BCCB18();
  sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  return v4;
}

uint64_t sub_221AEDF48()
{
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  MEMORY[0x28223BE20](Request);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B06D58();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest, &unk_221BDFB68);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  }

  return v0;
}

uint64_t sub_221AEE058()
{
  Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
  MEMORY[0x28223BE20](Response);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B0996C();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse, &unk_221BDC710);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  }

  return v0;
}

uint64_t sub_221AEE168(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  v15 = a2;
  v16 = a3 & 0x1FF;
  v17 = a4;
  sub_221AE8904(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest, &unk_221BDE358);
  sub_221BCCB58();
  v11 = sub_221BCCB18();
  sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  return v11;
}

uint64_t sub_221AEE2C8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1;
  v13 = a2;
  v14 = a3 & 0x1FF;
  sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCB58();
  v9 = sub_221BCCB18();
  sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return v9;
}

void sub_221AEE430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  v75 = v20;
  v24 = v23;
  v25 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v26 = OUTLINED_FUNCTION_8_1(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v27);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_51_6();
  type metadata accessor for AppIntentsProtobuf_UUID(v29);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30_8();
  v74 = v31;
  OUTLINED_FUNCTION_133_3();
  v32 = sub_221BCC558();
  v33 = OUTLINED_FUNCTION_8_1(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_30_8();
  v73[1] = v34;
  v35 = OUTLINED_FUNCTION_133_3();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(v35);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_30_8();
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  OUTLINED_FUNCTION_8_1(v40);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v41);
  v43 = v73 - v42;
  sub_2219A02E8(v24, v73 - v42, &unk_27CFBB9E0, &qword_221BE0D60);
  type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  v44 = OUTLINED_FUNCTION_39_8(v43);
  if (v52)
  {
    sub_221A00FEC(v44, v45, v46);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8138, &qword_221BD2A78);
    *v48 = sub_221BCD3D8();
    *(v48 + 8) = v49;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = 3;
    swift_willThrow();
    v50 = OUTLINED_FUNCTION_27_10();
LABEL_13:
    sub_221B22C2C(v50, v51);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_55_3();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_230_1();
  if (!v52)
  {
    v58 = v39;
    sub_221B229DC(v43, v39, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success);
    sub_2219A02E8(v39 + *(AsyncIterator + 24), v22, &qword_27CFB9988, &qword_221BDAE20);
    OUTLINED_FUNCTION_145(v22);
    if (v59)
    {
      v60 = v74;
      *v74 = 0;
      v60[1] = 0;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_145(v22);
      if (!v52)
      {
        sub_2219A1CC8(v22, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      v60 = v74;
      sub_221B229DC(v22, v74, v61);
    }

    v62 = v75;
    sub_221AE9E30(v60);
    if (!v62)
    {
      OUTLINED_FUNCTION_0_43();
      sub_221B22C2C(v60, v66);
      v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
      v68 = objc_allocWithZone(MEMORY[0x277D23B40]);
      v69 = OUTLINED_FUNCTION_171_0();
      sub_221B21A08(v69, v67);
      v70 = OUTLINED_FUNCTION_27_10();
      sub_221B22C2C(v70, v71);
      OUTLINED_FUNCTION_136_4();
      sub_221B22C2C(v58, v72);
      goto LABEL_14;
    }

    v63 = OUTLINED_FUNCTION_27_10();
    sub_221B22C2C(v63, v64);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v60, v65);
    OUTLINED_FUNCTION_136_4();
    v50 = v58;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_19();
  sub_221B229DC(v43, v21, v53);
  sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
  v54 = OUTLINED_FUNCTION_171_0();
  sub_221AEE828(v54);
  v55 = OUTLINED_FUNCTION_27_10();
  sub_221B22C2C(v55, v56);
  OUTLINED_FUNCTION_2_32();
  sub_221B22C2C(v21, v57);
LABEL_14:
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AEE828(uint64_t *a1)
{
  sub_221B14BC4(*a1, a1[1], &qword_27CFBAF28, 0x277CCA9B8);
  if (v1)
  {
    if (qword_27CFB73D0 != -1)
    {
      swift_once();
    }

    v2 = sub_221BCCD88();
    __swift_project_value_buffer(v2, qword_27CFDEEB8);
    v3 = v1;
    v4 = sub_221BCCD68();
    v5 = sub_221BCDA78();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_221989000, v4, v5, "Failed to unarchive NSError: %@", v6, 0xCu);
      sub_2219A1CC8(v7, &unk_27CFB7630, qword_221BD0790);
      MEMORY[0x223DA4C00](v7, -1, -1);
      MEMORY[0x223DA4C00](v6, -1, -1);
    }

    v10 = sub_221BCC328();
    sub_2219ACB94(v10, v11, v12);
    v13 = swift_allocError();
    *v14 = v10;
    *(v14 + 8) = 0;
    *(v14 + 16) = 7;
    sub_221BCC328();
  }
}

void sub_221AEEA04()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_158_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_62_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_82_5();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(AsyncIterator);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_61_6();
    v19 = sub_221AE8904(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success, &unk_221BDBD38);
    OUTLINED_FUNCTION_125_4(v19, v20, v21, v19);
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_151_3();
    swift_storeEnumTagMultiPayload();
LABEL_6:
    v22 = OUTLINED_FUNCTION_80_5();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v2);
    OUTLINED_FUNCTION_105_5();
    type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
    OUTLINED_FUNCTION_199_2();
    MEMORY[0x28223BE20](v25);
    OUTLINED_FUNCTION_60_7();
    sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse, &unk_221BDBEA0);
    v26 = OUTLINED_FUNCTION_205_2();
    OUTLINED_FUNCTION_143_3(v26, v27, v28, v29);
    v17 = OUTLINED_FUNCTION_96_6();
    goto LABEL_7;
  }

  type metadata accessor for AppIntentsProtobuf_Error(0);
  OUTLINED_FUNCTION_182_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_8_15();
  v12 = sub_221AE8904(v10, v11, &unk_221BD9C18);
  OUTLINED_FUNCTION_126_4(v12, v13, v14, v12);
  OUTLINED_FUNCTION_189_2();
  if (!v0)
  {
    OUTLINED_FUNCTION_14();
    swift_storeEnumTagMultiPayload();
    goto LABEL_6;
  }

  v15 = &unk_27CFBB9E0;
  v16 = &qword_221BE0D60;
  v17 = v1;
LABEL_7:
  sub_2219A1CC8(v17, v15, v16);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEEC6C(void *a1, void *a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_221BCC558();
  v7 = *(v18 - 8);
  v8 = MEMORY[0x28223BE20](v18);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [a2 iteratorIdentifier];
  v12 = [v11 longLongValue];

  *a1 = v12;
  v13 = [a2 sequenceIdentifier];
  sub_221BCC528();

  v17 = v10;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  (*(v7 + 8))(v10, v18);
  v14 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0) + 24);
  sub_2219A1CC8(a1 + v14, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v6, a1 + v14, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v4);
}

void sub_221AEEF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_55_4();
  v13 = v12;
  v15 = v14;
  v16 = OUTLINED_FUNCTION_64_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_8_1(v18);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_40_8();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_16_12();
  v22 = v13[1];
  v23 = OUTLINED_FUNCTION_191_3(*v13);
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(v23);
  sub_2219A02E8(v13 + *(AppDescriptionRequest + 24), v11, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_25_10(v11);
  if (v25)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_37_5();
    *(v26 + 4) = 1;
    OUTLINED_FUNCTION_115_3();
    OUTLINED_FUNCTION_25_10(v11);
    if (!v25)
    {
      sub_2219A1CC8(v11, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    v27 = OUTLINED_FUNCTION_69_0();
    sub_221B229DC(v27, v28, v29);
  }

  sub_221AE9D08();
  v30 = OUTLINED_FUNCTION_53_3();
  sub_221B22C2C(v30, v31);
  if (v10)
  {

    OUTLINED_FUNCTION_225_1();
  }

  else
  {
    *v15 = a10;
    *(v15 + 8) = v22;
    *(v15 + 16) = xmmword_221BD0800;
    *(v15 + 32) = v32;
    *(v15 + 48) = v33;
    *(v15 + 49) = v34;
  }

  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEF108(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = a2[1];

  *a1 = v11;
  a1[1] = v10;
  v12 = a2[5];
  v13 = *(a2 + 49);
  if (v12)
  {
    v19[0] = a2[4];
    v19[1] = v12;
    sub_221AF6468();
  }

  v14 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0) + 24);
  sub_2219A02E8(a1 + v14, v6, &unk_27CFBB600, &qword_221BE44B0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_221BCC8C8();
    v15 = &v9[v7[5]];
    *v15 = 0;
    *(v15 + 1) = 0;
    v16 = &v9[v7[6]];
    *v16 = 0;
    v16[4] = 1;
    v9[v7[7]] = 2;
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  }

  v17 = &v9[v7[6]];
  *v17 = -(v13 & 1);
  v17[4] = 0;
  sub_2219A1CC8(a1 + v14, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v9, a1 + v14, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v7);
}

void sub_221AEF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_55_4();
  v16 = OUTLINED_FUNCTION_191_3(v15);
  v17 = type metadata accessor for AppIntentsProtobuf_Error(v16);
  v18 = OUTLINED_FUNCTION_8_1(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16_12();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  v20 = OUTLINED_FUNCTION_8_1(AppDescription);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v21);
  v23 = &v51[-1] - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  v25 = OUTLINED_FUNCTION_8_1(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_201_2();
  v27 = OUTLINED_FUNCTION_70_0();
  sub_2219A02E8(v27, v28, &qword_27CFBA890, &qword_221BE0DA0);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_145(v11);
  if (!v29)
  {
    sub_2219A02E8(v11, v14, &qword_27CFBA890, &qword_221BE0DA0);
    OUTLINED_FUNCTION_64_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_19();
      sub_221B229DC(v14, v12, v37);
      sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
      sub_221AEE828(v12);
      v39 = v38;
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_2_32();
      sub_221B22C2C(v12, v40);
      if (v10)
      {
        goto LABEL_6;
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      v49 = 0x8000;
    }

    else
    {
      sub_221B229DC(v14, v23, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success);
      v41 = OUTLINED_FUNCTION_97_5();
      sub_221B22BD0(v41, v13, v42);
      sub_221AEF6F8(v13, v51);
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_59_7();
      sub_221B22C2C(v23, v43);
      v39 = v51[0];
      v44 = v51[1];
      v45 = v51[2];
      v46 = v51[3];
      OUTLINED_FUNCTION_248_1();
      if (v29)
      {
        v48 = 0;
      }

      v49 = v48 | v47;
    }

    sub_2219A1CC8(v11, &qword_27CFBA890, &qword_221BE0DA0);
    *a10 = v39;
    *(a10 + 8) = v44;
    *(a10 + 16) = v45;
    *(a10 + 24) = v46;
    *(a10 + 32) = v49;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_153_3();
  sub_221A00FEC(v30, v31, v32);
  OUTLINED_FUNCTION_15_0();
  swift_allocError();
  OUTLINED_FUNCTION_188_3(v33, &type metadata for AppIntentsProtocol.FetchAppDescription.Response);
  OUTLINED_FUNCTION_187_2(v34, v35);
  OUTLINED_FUNCTION_69_4();
LABEL_6:
  sub_2219A1CC8(v11, &qword_27CFBA890, &qword_221BE0DA0);
LABEL_13:
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEF6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_69_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_83_6();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  v14 = a1[1];
  *a2 = *a1;
  *(a2 + 8) = v14;
  *(a2 + 16) = xmmword_221BD0800;
  v15 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  sub_2219A02E8(a1 + *(v15 + 24), v2, &qword_27CFBB620, &qword_221BE0DC0);
  v16 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v16, v17, AppDescription) == 1)
  {
    *v13 = 0;

    sub_221BCC8C8();
    OUTLINED_FUNCTION_59_7();
    sub_221B22C2C(a1, v18);
    v19 = OUTLINED_FUNCTION_9_1();
    if (__swift_getEnumTagSinglePayload(v19, v20, AppDescription) != 1)
    {
      sub_2219A1CC8(v2, &qword_27CFBB620, &qword_221BE0DC0);
    }
  }

  else
  {

    OUTLINED_FUNCTION_59_7();
    sub_221B22C2C(a1, v21);
    v22 = OUTLINED_FUNCTION_97_5();
    sub_221B229DC(v22, v13, v23);
  }

  v24 = *v13;
  v25 = *(v13 + 1);
  result = sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);
  *(a2 + 32) = v24;
  *(a2 + 33) = v25;
  return result;
}

void sub_221AEF8AC()
{
  OUTLINED_FUNCTION_55_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_62_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_82_5();
  v8 = *v0;
  v9 = *(v0 + 16);
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(AppDescription);
  if (v9 < 0)
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v23);
    OUTLINED_FUNCTION_81_6();
    *(v24 - 16) = v8;
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v25, v26, &unk_221BD9C18);
    OUTLINED_FUNCTION_156_1();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    if (v1)
    {
      v21 = &qword_27CFBA890;
      v22 = &qword_221BE0DA0;
      v20 = v2;
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_14();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    OUTLINED_FUNCTION_240_2();
    v27[33] = BYTE1(v9) & 1;
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_63_7();
    *(v12 - 16) = v27;
    sub_221AE8904(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success, &unk_221BDB630);
    OUTLINED_FUNCTION_154_3();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    OUTLINED_FUNCTION_151_3();
    swift_storeEnumTagMultiPayload();
  }

  v13 = OUTLINED_FUNCTION_80_5();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  OUTLINED_FUNCTION_105_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  OUTLINED_FUNCTION_74_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_60_7();
  v17 = sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse, &unk_221BDB798);
  OUTLINED_FUNCTION_143_3(sub_221B21CB8, v18, v19, v17);
  OUTLINED_FUNCTION_157_2();
  v20 = OUTLINED_FUNCTION_96_6();
LABEL_6:
  sub_2219A1CC8(v20, v21, v22);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AEFBF4()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v33 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_104_2();
  v34 = v8;
  v9 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_12();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9A0, &qword_221BE0C50);
  OUTLINED_FUNCTION_8_1(v11);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_83_6();
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v14 = v4[3];
  v32 = v4[2];
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  sub_2219A02E8(v4 + *(DeferredPropertyValueRequest + 28), v0, &unk_27CFBB9A0, &qword_221BE0C50);
  OUTLINED_FUNCTION_25_10(v0);
  if (v16)
  {
    *v2 = 0;
    v2[1] = 0xE000000000000000;
    v2[2] = 0;
    v2[3] = 0xE000000000000000;

    sub_221BCC8C8();
    OUTLINED_FUNCTION_25_10(v0);
    if (!v16)
    {
      sub_2219A1CC8(v0, &unk_27CFBB9A0, &qword_221BE0C50);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_97_5();
    sub_221B229DC(v17, v2, v18);
  }

  v19 = v2[2];
  v20 = v2[3];
  objc_allocWithZone(MEMORY[0x277D23800]);

  v21 = OUTLINED_FUNCTION_0_0();
  v23 = sub_2219A0230(v21, v22, v19, v20);
  sub_221B22C2C(v2, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
  v40 = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  v41 = sub_2219A0334();
  *&v39 = v23;
  v24 = *v4;
  v25 = v4[1];
  sub_2219A02E8(v4 + *(DeferredPropertyValueRequest + 32), v34, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_42_9(v34, 1);
  if (v16)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_37_5();
    *(v26 + 4) = 1;
    OUTLINED_FUNCTION_115_3();
    OUTLINED_FUNCTION_25_10(v34);
    if (!v16)
    {
      sub_2219A1CC8(v34, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    v27 = OUTLINED_FUNCTION_69_0();
    sub_221B229DC(v27, v28, v29);
  }

  sub_221AE9D08();
  v30 = OUTLINED_FUNCTION_93_3();
  sub_221B22C2C(v30, v31);
  if (v1)
  {

    OUTLINED_FUNCTION_225_1();

    __swift_destroy_boxed_opaque_existential_0(&v39);
  }

  else
  {
    *v33 = v32;
    *(v33 + 8) = v14;
    *(v33 + 16) = xmmword_221BD0800;
    sub_22198B358(&v39, v33 + 32);
    *(v33 + 72) = v24;
    *(v33 + 80) = v25;
    *(v33 + 88) = v35;
    *(v33 + 96) = v36;
    *(v33 + 104) = v37;
    *(v33 + 105) = v38;
  }

  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEFF74(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v13 = a2[1];

  a1[2] = v14;
  a1[3] = v13;
  v15 = a2[7];
  v16 = a2[8];
  __swift_project_boxed_opaque_existential_0(a2 + 4, v15);
  sub_221AF02CC(v15, v16);
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  v18 = *(DeferredPropertyValueRequest + 28);
  sub_2219A1CC8(a1 + v18, &unk_27CFBB9A0, &qword_221BE0C50);
  sub_221B229DC(v12, a1 + v18, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
  __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v10);
  v19 = a2[12];
  if (v19)
  {
    v28[0] = a2[11];
    v28[1] = v19;
    sub_221AF0384();
  }

  v20 = *(a2 + 105);
  v21 = *(DeferredPropertyValueRequest + 32);
  sub_2219A02E8(a1 + v21, v6, &unk_27CFBB600, &qword_221BE44B0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_221BCC8C8();
    v22 = &v9[v7[5]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = &v9[v7[6]];
    *v23 = 0;
    v23[4] = 1;
    v9[v7[7]] = 2;
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  }

  v24 = &v9[v7[6]];
  *v24 = v20 << 31 >> 31;
  v24[4] = 0;
  sub_2219A1CC8(a1 + v21, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v9, a1 + v21, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v7);
  v26 = a2[9];
  v25 = a2[10];

  *a1 = v26;
  a1[1] = v25;
  return result;
}

uint64_t sub_221AF02CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  sub_221AE8904(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, &unk_221BD9EE8);
  return sub_221BCCB58();
}

void sub_221AF0384()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_162_0();
  v5 = OUTLINED_FUNCTION_64_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_40_8();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v12 = *v3;
  v13 = v3[1];
  v14 = *(v4(0) + 32);
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_13_8(v2);
  if (v15)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_212_2(v16);
    *(v17 + 4) = 1;
    OUTLINED_FUNCTION_195_3(*(v10 + 28));
    OUTLINED_FUNCTION_13_8(v2);
    if (!v15)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_70_0();
    sub_221B229DC(v18, v19, v20);
  }

  OUTLINED_FUNCTION_224_1();
  *v2 = v12;
  v2[1] = v13;
  sub_2219A1CC8(v0 + v14, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_1_37();
  sub_221B229DC(v1, v0 + v14, v21);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v10);
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF0564()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = OUTLINED_FUNCTION_8_1(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_51_6();
  type metadata accessor for AppIntentsProtobuf_Value(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_8();
  v46 = v11;
  v12 = OUTLINED_FUNCTION_133_3();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_174_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  v17 = OUTLINED_FUNCTION_8_1(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_82_5();
  v19 = OUTLINED_FUNCTION_172_3();
  sub_2219A02E8(v19, v20, &qword_27CFBA7C8, &qword_221BE0D10);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  v21 = OUTLINED_FUNCTION_39_8(v0);
  if (v31)
  {
    sub_221A00FEC(v21, v22, v23);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_188_3(v24, &type metadata for AppIntentsProtocol.FetchDeferredPropertyValue.Response);
    *(v25 + 16) = 0x8000000221BF0560;
    *(v25 + 24) = 0;
    *(v25 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_56_8();
    sub_221B22C2C(v4, v26);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_131_3();
    sub_2219A02E8(v27, v28, v29, v30);
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_230_1();
    if (v31)
    {
      OUTLINED_FUNCTION_6_19();
      v32 = OUTLINED_FUNCTION_343();
      sub_221B229DC(v32, v33, v34);
      sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
      v35 = OUTLINED_FUNCTION_171_0();
      sub_221AEE828(v35);
      OUTLINED_FUNCTION_56_8();
      sub_221B22C2C(v4, v36);
      OUTLINED_FUNCTION_2_32();
      sub_221B22C2C(v1, v37);
    }

    else
    {
      v38 = OUTLINED_FUNCTION_109_3();
      sub_221B229DC(v38, v45, v39);
      sub_2219A02E8(v45 + *(DeferredPropertyValue + 20), v2, &unk_27CFBB660, &qword_221BE4610);
      OUTLINED_FUNCTION_145(v2);
      if (v40)
      {
        v41 = v46;
        *v46 = xmmword_221BD8630;
        sub_221BCC8C8();
        OUTLINED_FUNCTION_145(v2);
        if (!v31)
        {
          sub_2219A1CC8(v2, &unk_27CFBB660, &qword_221BE4610);
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_16();
        v41 = v46;
        sub_221B229DC(v2, v46, v42);
      }

      sub_221B14BC4(*v41, v41[1], &qword_27CFBB680, 0x277D23958);
      OUTLINED_FUNCTION_56_8();
      sub_221B22C2C(v4, v43);
      sub_221B22C2C(v45, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success);
      OUTLINED_FUNCTION_4_20();
      sub_221B22C2C(v41, v44);
    }
  }

  sub_2219A1CC8(v0, &qword_27CFBA7C8, &qword_221BE0D10);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF0948()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_158_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_82_5();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(DeferredPropertyValue);
  if (v3)
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_61_6();
    OUTLINED_FUNCTION_8_15();
    v12 = sub_221AE8904(v10, v11, &unk_221BD9C18);
    OUTLINED_FUNCTION_125_4(v12, v13, v14, v12);
    OUTLINED_FUNCTION_189_2();
    if (!v0)
    {
      OUTLINED_FUNCTION_151_3();
      swift_storeEnumTagMultiPayload();
LABEL_7:
      v22 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v2);
      OUTLINED_FUNCTION_105_5();
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
      OUTLINED_FUNCTION_199_2();
      MEMORY[0x28223BE20](v25);
      OUTLINED_FUNCTION_60_7();
      sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse, &unk_221BDC440);
      v26 = OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_143_3(v26, v27, v28, v29);
      v21 = OUTLINED_FUNCTION_96_6();
      goto LABEL_8;
    }
  }

  else
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_61_6();
    v16 = sub_221AE8904(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success, &unk_221BDC2D8);
    OUTLINED_FUNCTION_126_4(v16, v17, v18, v16);
    OUTLINED_FUNCTION_189_2();
    if (!v0)
    {
      OUTLINED_FUNCTION_14();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }
  }

  v19 = &qword_27CFBA7C8;
  v20 = &qword_221BE0D10;
  v21 = v1;
LABEL_8:
  sub_2219A1CC8(v21, v19, v20);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF0BA4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    MEMORY[0x28223BE20](v6);
    *(&v11 - 2) = a2;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
    v9 = a2;
    sub_221BCCB58();

    if (!v2)
    {
      v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0) + 20);
      sub_2219A1CC8(a1 + v10, &unk_27CFBB660, &qword_221BE4610);
      sub_221B229DC(v8, a1 + v10, type metadata accessor for AppIntentsProtobuf_Value);
      __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v5);
    }
  }
}

uint64_t sub_221AF0D64@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  result = sub_221AEAF54(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

void sub_221AF0E1C()
{
  OUTLINED_FUNCTION_55_4();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_40_8();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v10);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16_12();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_8_1(v12);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_45_9();
  v14 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21_10();
  sub_221BCC3F8();
  OUTLINED_FUNCTION_48_8(v3);
  if (v29)
  {
    sub_2219A1CC8(v3, &qword_27CFB7DD0, &unk_221BD19F0);
    OUTLINED_FUNCTION_153_3();
    sub_221A00FEC(v18, v19, v20);
    OUTLINED_FUNCTION_15_0();
    v21 = swift_allocError();
    *v22 = v14;
    v22[1] = 0xD000000000000013;
    v22[2] = v16;
    v22[3] = 0;
    OUTLINED_FUNCTION_193_3(v21, v22);
    OUTLINED_FUNCTION_65_6();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_64_0();
    v24(v23);
    (*(v16 + 16))(v7, v2, v14);
    v25 = *(v5 + 16);
    File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
    *(v7 + *(File + 20)) = v25;
    v27 = File;
    *(v7 + *(File + 24)) = *(v5 + 24);
    FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
    sub_2219A02E8(v5 + *(FileChunkRequest + 32), v1, &unk_27CFBB600, &qword_221BE44B0);
    OUTLINED_FUNCTION_25_10(v1);
    if (v29)
    {
      sub_221BCC8C8();
      OUTLINED_FUNCTION_37_5();
      *(v30 + 4) = 1;
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_25_10(v1);
      if (!v29)
      {
        sub_2219A1CC8(v1, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_37();
      v31 = OUTLINED_FUNCTION_69_0();
      sub_221B229DC(v31, v32, v33);
    }

    sub_221AE9D08();
    if (v0)
    {
      v34 = *(v16 + 8);
      v34(v2, v14);
      OUTLINED_FUNCTION_65_6();
      v34(v7, v14);
    }

    else
    {
      (*(v16 + 8))(v2, v14);
      OUTLINED_FUNCTION_65_6();
      v35 = v7 + *(v27 + 28);
      *v35 = v36;
      *(v35 + 16) = v37;
      *(v35 + 17) = v38;
    }
  }

  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF1144(uint64_t *a1, uint64_t a2)
{
  v4 = sub_221BCC368();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
  a1[2] = *(a2 + File[5]);
  a1[3] = *(a2 + File[6]);
  if (*(a2 + File[7] + 8))
  {
    sub_221AF0384();
  }
}

void sub_221AF12B0()
{
  OUTLINED_FUNCTION_55_4();
  v5 = v4;
  v40 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104_2();
  v39 = v9;
  v10 = OUTLINED_FUNCTION_133_3();
  v37 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v10);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_8();
  v38 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_156();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_10();
  v16 = sub_221BCC558();
  v17 = OUTLINED_FUNCTION_8_1(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v18 = OUTLINED_FUNCTION_45_9();
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(v18);
  sub_2219A02E8(v5 + *(NextAsyncIteratorResultsRequest + 24), v1, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_20_8(v1);
  if (v20)
  {
    *v2 = 0;
    v2[1] = 0;
    sub_221BCC8C8();
    OUTLINED_FUNCTION_20_8(v1);
    if (!v20)
    {
      sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v21 = OUTLINED_FUNCTION_3_4();
    sub_221B229DC(v21, v22, v23);
  }

  v24 = OUTLINED_FUNCTION_208_2();
  sub_221AE9E30(v24);
  if (v0)
  {
    v25 = OUTLINED_FUNCTION_93_3();
    sub_221B22C2C(v25, v26);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v27);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v28);
    v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v30 = objc_allocWithZone(MEMORY[0x277D23B40]);
    v31 = sub_221B21A08(v3, v29);
    sub_2219A02E8(v5 + *(NextAsyncIteratorResultsRequest + 28), v39, &unk_27CFBB600, &qword_221BE44B0);
    v32 = OUTLINED_FUNCTION_148_3();
    OUTLINED_FUNCTION_49_4(v32, v33, v37);
    if (v20)
    {
      sub_221BCC8C8();
      OUTLINED_FUNCTION_196_1(v37[5]);
      OUTLINED_FUNCTION_217_3(v38 + v37[6]);
      OUTLINED_FUNCTION_216_2(v37[7]);
      OUTLINED_FUNCTION_43_9(v39);
      if (!v20)
      {
        sub_2219A1CC8(v39, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_37();
      sub_221B229DC(v39, v38, v34);
    }

    sub_221AE9D08();
    v35 = OUTLINED_FUNCTION_93_3();
    sub_221B22C2C(v35, v36);
    *v40 = v31;
    *(v40 + 8) = v41;
    *(v40 + 24) = v42;
    *(v40 + 25) = v43;
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF1608(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v34 = a5;
  v33 = a3;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v8);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_221BCC558();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v20 = [a2 iteratorIdentifier];
  v21 = [v20 longLongValue];

  *a1 = v21;
  if (a4)
  {
    v39 = v33;
    v40 = a4;
    v22 = v41;
    sub_221AF5DAC();
    v41 = v22;
  }

  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  v24 = *(NextAsyncIteratorResultsRequest + 28);
  sub_2219A02E8(a1 + v24, v15, &unk_27CFBB600, &qword_221BE44B0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_221BCC8C8();
    v25 = &v19[v16[5]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v19[v16[6]];
    *v26 = 0;
    v26[4] = 1;
    v19[v16[7]] = 2;
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_2219A1CC8(v15, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    sub_221B229DC(v15, v19, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  }

  v27 = &v19[v16[6]];
  *v27 = v34 << 23 >> 31;
  v27[4] = 0;
  sub_2219A1CC8(a1 + v24, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v19, a1 + v24, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v16);
  v28 = [v35 sequenceIdentifier];
  sub_221BCC528();

  MEMORY[0x28223BE20](v29);
  *(&v33 - 2) = v12;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  v30 = v38;
  sub_221BCCB58();
  (*(v36 + 8))(v12, v37);
  v31 = *(NextAsyncIteratorResultsRequest + 24);
  sub_2219A1CC8(a1 + v31, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v30, a1 + v31, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v31, 0, 1, v8);
}

uint64_t sub_221AF1AA0(void *a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_221AEC144(a1, *v1, *(v1 + 8), *(v1 + 16), v2 | *(v1 + 24));
}

uint64_t sub_221AF1AF0()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_221AED4C4(*v0, *(v0 + 8), *(v0 + 16), v1 | *(v0 + 24));
}

void sub_221AF1B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  v26 = v25;
  v27 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v28 = OUTLINED_FUNCTION_8_1(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_21_10();
  v29 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v30 = OUTLINED_FUNCTION_18_4(v29);
  v64 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_16_12();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  v33 = OUTLINED_FUNCTION_8_1(NextAsyncIteratorResults);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  OUTLINED_FUNCTION_8_1(v34);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_83_6();
  sub_2219A02E8(v26, v20, &qword_27CFBA858, &qword_221BE0D80);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  v36 = OUTLINED_FUNCTION_13_8(v20);
  if (v39)
  {
    sub_221A00FEC(v36, v37, v38);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBBA00, &qword_221BD2A68);
    *v41 = sub_221BCD3D8();
    *(v41 + 8) = v42;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_20_10();
    sub_221B22C2C(v26, v43);
LABEL_15:
    OUTLINED_FUNCTION_180_2();
    OUTLINED_FUNCTION_53_5();
    return;
  }

  OUTLINED_FUNCTION_172_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_6_19();
    sub_221B229DC(v20, v24, v45);
    sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
    sub_221AEE828(v24);
    OUTLINED_FUNCTION_20_10();
    sub_221B22C2C(v26, v46);
    OUTLINED_FUNCTION_2_32();
    sub_221B22C2C(v24, v47);
    goto LABEL_15;
  }

  v48 = OUTLINED_FUNCTION_97_5();
  sub_221B229DC(v48, v23, v49);
  v50 = *v23;
  v51 = *(*v23 + 16);
  if (!v51)
  {
    OUTLINED_FUNCTION_20_10();
    sub_221B22C2C(v26, v58);
    OUTLINED_FUNCTION_53_9();
    sub_221B22C2C(v23, v59);
    goto LABEL_15;
  }

  v63 = v23;
  sub_221BCDF28();
  v52 = 0;
  OUTLINED_FUNCTION_176_2();
  v54 = v50 + v53;
  while (v52 < *(v50 + 16))
  {
    sub_221B22BD0(v54 + *(v64 + 72) * v52, v22, type metadata accessor for AppIntentsProtobuf_Value);
    sub_221B14BC4(*v22, v22[1], &qword_27CFBB680, 0x277D23958);
    if (v21)
    {
      OUTLINED_FUNCTION_20_10();
      sub_221B22C2C(v26, v60);
      OUTLINED_FUNCTION_4_20();
      sub_221B22C2C(v22, v61);
      OUTLINED_FUNCTION_53_9();
      sub_221B22C2C(v63, v62);

      goto LABEL_15;
    }

    ++v52;
    OUTLINED_FUNCTION_4_20();
    sub_221B22C2C(v22, v55);
    sub_221BCDEF8();
    sub_221BCDF38();
    sub_221BCDF48();
    sub_221BCDF08();
    if (v51 == v52)
    {
      OUTLINED_FUNCTION_20_10();
      sub_221B22C2C(v26, v56);
      OUTLINED_FUNCTION_53_9();
      sub_221B22C2C(v63, v57);
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_221AF1F04()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_158_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_82_5();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(NextAsyncIteratorResults);
  if (v3)
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_61_6();
    OUTLINED_FUNCTION_8_15();
    v12 = sub_221AE8904(v10, v11, &unk_221BD9C18);
    OUTLINED_FUNCTION_125_4(v12, v13, v14, v12);
    OUTLINED_FUNCTION_189_2();
    if (!v0)
    {
      OUTLINED_FUNCTION_151_3();
      swift_storeEnumTagMultiPayload();
LABEL_7:
      v22 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v2);
      OUTLINED_FUNCTION_105_5();
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
      OUTLINED_FUNCTION_199_2();
      MEMORY[0x28223BE20](v25);
      OUTLINED_FUNCTION_60_7();
      sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse, &unk_221BDBBD0);
      v26 = OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_143_3(v26, v27, v28, v29);
      v21 = OUTLINED_FUNCTION_96_6();
      goto LABEL_8;
    }
  }

  else
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_61_6();
    v16 = sub_221AE8904(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success, &unk_221BDBA68);
    OUTLINED_FUNCTION_126_4(v16, v17, v18, v16);
    OUTLINED_FUNCTION_189_2();
    if (!v0)
    {
      OUTLINED_FUNCTION_14();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }
  }

  v19 = &qword_27CFBA858;
  v20 = &qword_221BE0D80;
  v21 = v1;
LABEL_8:
  sub_2219A1CC8(v21, v19, v20);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF2160(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221BCDDA8())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_17:

      *a1 = v9;
      return;
    }

    v22 = MEMORY[0x277D84F90];
    sub_2219A325C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v16 = a1;
    a1 = 0;
    v9 = v22;
    v19 = a2;
    v20 = a2 & 0xC000000000000001;
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v18 = i;
    while (1)
    {
      v10 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v20)
      {
        v11 = MEMORY[0x223DA3BF0](a1, a2);
      }

      else
      {
        if (a1 >= *(v17 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(a2 + 8 * a1 + 32);
      }

      v12 = v11;
      MEMORY[0x28223BE20](v11);
      *(&v16 - 2) = v13;
      sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
      sub_221BCCB58();
      if (v2)
      {

        return;
      }

      v22 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2219A325C(v14 > 1, v15 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v15 + 1;
      sub_221B229DC(v7, v9 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15, type metadata accessor for AppIntentsProtobuf_Value);
      ++a1;
      a2 = v19;
      if (v10 == v18)
      {
        a1 = v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
}

uint64_t sub_221AF24B4@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

void sub_221AF250C()
{
  OUTLINED_FUNCTION_55_4();
  v7 = v6;
  v74 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_40_8();
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_45_9();
  type metadata accessor for AppIntentsProtobuf_Environment(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21_10();
  v18 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v19 = OUTLINED_FUNCTION_8_1(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_16_12();
  sub_221A8B718(v2);
  sub_221AF2910(v2, v20, v21, v22, v23, v24, v25, v26, v56, v57, v59, v61, v63, v65, v67, *(&v67 + 1), v68, v69, v70, v71);
  if (v0)
  {
    OUTLINED_FUNCTION_52_8();
    sub_221B22C2C(v7, v27);
  }

  else
  {
    v58 = v1;
    v60 = v12;
    OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
    v29 = v7;
    sub_2219A02E8(v7 + *(OptionsForActionRequest + 32), v5, &unk_27CFBB650, &qword_221BE0A38);
    OUTLINED_FUNCTION_39_8(v5);
    if (v30)
    {
      *v4 = 0;
      v4[1] = 0xE000000000000000;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_39_8(v5);
      v34 = v3;
      if (!v30)
      {
        sub_2219A1CC8(v5, &unk_27CFBB650, &qword_221BE0A38);
      }
    }

    else
    {
      OUTLINED_FUNCTION_140_3();
      v31 = OUTLINED_FUNCTION_235_1();
      sub_221B229DC(v31, v32, v33);
      v34 = v3;
    }

    v35 = sub_2219A1D20(0, &qword_27CFB7B18, 0x277D23C08);
    v37 = *v4;
    v36 = v4[1];

    v38 = sub_221AE9500(v37, v36, &selRef_initWithLocaleIdentifier_);
    OUTLINED_FUNCTION_139_3();
    sub_221B22C2C(v4, v39);
    v69 = v35;
    v70 = &protocol witness table for LNEnvironment;
    *&v67 = v38;
    v40 = v29;
    v41 = *v29;
    v42 = v40[1];
    sub_2219A02E8(v40 + *(OptionsForActionRequest + 36), v58, &unk_27CFBB600, &qword_221BE44B0);
    v43 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_44_5(v43, v44);
    if (v30)
    {

      sub_221BCC8C8();
      OUTLINED_FUNCTION_196_1(v60[5]);
      OUTLINED_FUNCTION_217_3(v34 + v60[6]);
      OUTLINED_FUNCTION_216_2(v60[7]);
      OUTLINED_FUNCTION_13_8(v58);
      if (!v30)
      {
        sub_2219A1CC8(v58, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_37();
      v45 = OUTLINED_FUNCTION_91();
      sub_221B229DC(v45, v46, v47);
    }

    sub_221AE9D08();
    v48 = v40;
    KeyPath = swift_getKeyPath();
    v50 = swift_getKeyPath();
    v51 = sub_221AE9C28(KeyPath, v50);
    v53 = v52;

    OUTLINED_FUNCTION_52_8();
    sub_221B22C2C(v48, v54);
    v55 = v72;
    *v74 = v71;
    *(v74 + 16) = v55;
    *(v74 + 32) = v73;
    sub_22198B358(&v67, v74 + 40);
    *(v74 + 80) = v41;
    *(v74 + 88) = v42;
    *(v74 + 96) = v62;
    *(v74 + 104) = v64;
    *(v74 + 112) = v66;
    *(v74 + 120) = v51;
    *(v74 + 128) = v53;
  }

  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF2910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v22;
  a20 = v23;
  v216 = v21;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for AppIntentsProtobuf_SystemProtocol(0);
  v29 = OUTLINED_FUNCTION_18_4(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v30 = OUTLINED_FUNCTION_79_2();
  v31 = type metadata accessor for AppIntentsProtobuf_Value(v30);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_111_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v36 = OUTLINED_FUNCTION_8_1(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_91_6();
  v211 = v41;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_132_2();
  v214 = v45;
  v46 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_Property(v46);
  OUTLINED_FUNCTION_0_2();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_51_4();
  v217 = v50;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_91_6();
  v222 = v52;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_91_6();
  v227 = v54;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_132_2();
  v224 = v56;
  v57 = OUTLINED_FUNCTION_133_3();
  v58 = type metadata accessor for AppIntentsProtobuf_Action(v57);
  v61 = v25 + *(v58 + 36);
  v213 = v31;
  if (*(v61 + 9))
  {
    goto LABEL_2;
  }

  if ((*(v61 + 8) & 1) == 0)
  {
    sub_221A00FEC(v58, v59, v60);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v166 = 0u;
    *(v166 + 16) = 0u;
    *(v166 + 32) = 4;
    swift_willThrow();
LABEL_54:
    v169 = OUTLINED_FUNCTION_53_3();
    sub_221B22C2C(v169, v170);
    OUTLINED_FUNCTION_180_2();
    OUTLINED_FUNCTION_53_5();
    return;
  }

  if (!*v61)
  {
LABEL_2:
    v62 = *(v25 + 8);
    v207 = *v25;
    v63 = *(v25 + 32);
    v206 = *(v25 + 24);
    v64 = *(v25 + 16);
    v65 = *(v64 + 16);
    if (v65)
    {
      v203 = v27;
      *&v229 = MEMORY[0x277D84F90];
      v201 = v63;

      sub_2219A2FF4(0, v65, 0);
      OUTLINED_FUNCTION_176_2();
      v67 = v64 + v66;
      v68 = v229;
      v210 = *(v48 + 72);
      do
      {
        v218 = v65;
        sub_221B22BD0(v67, v224, type metadata accessor for AppIntentsProtobuf_Property);
        sub_221B22BD0(v224, v227, type metadata accessor for AppIntentsProtobuf_Property);
        v69 = v227[1];
        v220 = *v227;
        OUTLINED_FUNCTION_145_2();
        sub_2219A02E8(v70, v71, &unk_27CFBB660, &qword_221BE4610);
        v72 = 1;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(type metadata accessor for AppIntentsProtobuf_Property, 1, v31);

        OUTLINED_FUNCTION_159_1();
        sub_2219A1CC8(v74, v75, v76);
        if (EnumTagSinglePayload != 1)
        {
          OUTLINED_FUNCTION_145_2();
          sub_2219A02E8(v77, v78, &unk_27CFBB660, &qword_221BE4610);
          OUTLINED_FUNCTION_145(type metadata accessor for AppIntentsProtobuf_Property);
          if (v79)
          {
            OUTLINED_FUNCTION_249_2(&a9);
            OUTLINED_FUNCTION_145(type metadata accessor for AppIntentsProtobuf_Property);
            if (!v79)
            {
              OUTLINED_FUNCTION_159_1();
              sub_2219A1CC8(v80, v81, v82);
            }
          }

          else
          {
            OUTLINED_FUNCTION_7_16();
            sub_221B229DC(type metadata accessor for AppIntentsProtobuf_Property, v214, v83);
          }

          v72 = 0;
        }

        OUTLINED_FUNCTION_211_3();
        __swift_storeEnumTagSinglePayload(v84, v85, v86, v31);
        sub_2219A02E8(v214, v211, &unk_27CFBB660, &qword_221BE4610);
        OUTLINED_FUNCTION_145(v211);
        if (v79)
        {
          OUTLINED_FUNCTION_159_1();
          sub_2219A1CC8(v87, v88, v89);
          v90 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          OUTLINED_FUNCTION_145_2();
          sub_221B229DC(v91, v92, v93);
          sub_221B14BC4(*v211, v211[1], &qword_27CFBB680, 0x277D23958);
          if (v216)
          {
            OUTLINED_FUNCTION_159_1();
            sub_2219A1CC8(v95, v96, v97);
            OUTLINED_FUNCTION_4_20();
            sub_221B22C2C(v211, v98);
            if (qword_27CFB73D0 != -1)
            {
              OUTLINED_FUNCTION_22_11();
              swift_once();
            }

            v99 = sub_221BCCD88();
            __swift_project_value_buffer(v99, qword_27CFDEEB8);
            v100 = v216;
            v72 = sub_221BCCD68();
            v101 = sub_221BCDA78();

            if (os_log_type_enabled(v72, v101))
            {
              OUTLINED_FUNCTION_288();
              v102 = swift_slowAlloc();
              OUTLINED_FUNCTION_227_2();
              v103 = swift_slowAlloc();
              *v102 = 138412290;
              v104 = v216;
              v105 = _swift_stdlib_bridgeErrorToNSError();
              *(v102 + 4) = v105;
              *v103 = v105;
              _os_log_impl(&dword_221989000, v72, v101, "Serialization error: %@", v102, 0xCu);
              sub_2219A1CC8(v103, &unk_27CFB7630, qword_221BD0790);
              OUTLINED_FUNCTION_29_1();
              MEMORY[0x223DA4C00]();
              OUTLINED_FUNCTION_29_1();
              MEMORY[0x223DA4C00]();
            }

            else
            {
            }

            v90 = 0;
            v216 = 0;
          }

          else
          {
            v90 = v94;
            v216 = 0;
            OUTLINED_FUNCTION_159_1();
            sub_2219A1CC8(v106, v107, v108);
            OUTLINED_FUNCTION_4_20();
            sub_221B22C2C(v211, v109);
          }
        }

        OUTLINED_FUNCTION_49_8();
        sub_221B22C2C(v224, v110);
        sub_221B22C2C(v227, v72);
        *&v229 = v68;
        v112 = *(v68 + 16);
        v111 = *(v68 + 24);
        if (v112 >= v111 >> 1)
        {
          v114 = OUTLINED_FUNCTION_90_3(v111);
          sub_2219A2FF4(v114, v112 + 1, 1);
          v68 = v229;
        }

        *(v68 + 16) = v112 + 1;
        v113 = (v68 + 40 * v112);
        v113[4] = v220;
        v113[5] = v69;
        v113[7] = 0;
        v113[8] = 0;
        v113[6] = v90;
        v67 += v210;
        v65 = v218 - 1;
        v31 = v213;
      }

      while (v218 != 1);
      OUTLINED_FUNCTION_190_2();
      v27 = v203;
      v164 = v62;
      v165 = v201;
    }

    else
    {
      v165 = *(v25 + 32);

      v68 = MEMORY[0x277D84F90];
      v164 = v62;
    }

    v230 = &type metadata for AnyAppIntentSpecification;
    v231 = &off_283513928;
    v167 = swift_allocObject();
    *&v229 = v167;
    *(v167 + 16) = v206;
    *(v167 + 24) = v165;
    *(v167 + 32) = xmmword_221BD0800;
    *(v167 + 48) = v207;
    *(v167 + 56) = v164;
    *(v167 + 64) = v68;
    sub_22198B358(&v229, v232);
LABEL_53:
    v168 = v232[1];
    *v27 = v232[0];
    *(v27 + 16) = v168;
    *(v27 + 32) = v233;
    goto LABEL_54;
  }

  v115 = v58;
  v212 = v20;
  v204 = v27;
  v200 = *v25;
  v199 = *(v25 + 24);
  v205 = v25;
  v116 = *(v25 + 16);
  v117 = *(v116 + 16);
  v209 = *(v25 + 8);
  v202 = *(v25 + 32);
  if (v117)
  {
    v198 = v58;
    a10 = MEMORY[0x277D84F90];

    v25 = &a10;
    sub_2219A2FF4(0, v117, 0);
    OUTLINED_FUNCTION_176_2();
    v119 = v116 + v118;
    v120 = a10;
    v215 = *(v48 + 72);
    v121 = v217;
    do
    {
      v219 = v117;
      OUTLINED_FUNCTION_134_4();
      sub_221B22BD0(v119, v222, v122);
      v123 = OUTLINED_FUNCTION_343();
      sub_221B22BD0(v123, v124, v25);
      v125 = v121[1];
      v225 = *v121;
      OUTLINED_FUNCTION_245_2();
      sub_2219A02E8(v126, v127, &unk_27CFBB660, &qword_221BE4610);
      v25 = 1;
      v128 = OUTLINED_FUNCTION_141_3();
      v130 = __swift_getEnumTagSinglePayload(v128, v129, v31);

      v131 = v121;
      v121 = v217;
      sub_2219A1CC8(v131, &unk_27CFBB660, &qword_221BE4610);
      if (v130 != 1)
      {
        OUTLINED_FUNCTION_171_3();
        sub_2219A02E8(v132, v133, &unk_27CFBB660, &qword_221BE4610);
        OUTLINED_FUNCTION_145(1);
        if (v79)
        {
          OUTLINED_FUNCTION_249_2(&a17);
          OUTLINED_FUNCTION_145(1);
          if (!v79)
          {
            sub_2219A1CC8(1, &unk_27CFBB660, &qword_221BE4610);
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          v134 = OUTLINED_FUNCTION_91();
          sub_221B229DC(v134, v135, v136);
        }

        v25 = 0;
      }

      OUTLINED_FUNCTION_211_3();
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v31);
      OUTLINED_FUNCTION_171_3();
      sub_2219A02E8(v140, v141, &unk_27CFBB660, &qword_221BE4610);
      OUTLINED_FUNCTION_145(v25);
      if (v79)
      {
        v142 = OUTLINED_FUNCTION_70_0();
        sub_2219A1CC8(v142, v143, &qword_221BE4610);
        v144 = 0;
        v145 = v225;
      }

      else
      {
        OUTLINED_FUNCTION_7_16();
        OUTLINED_FUNCTION_171_3();
        sub_221B229DC(v146, v147, v148);
        sub_221B14BC4(*v25, *(v25 + 8), &qword_27CFBB680, 0x277D23958);
        v145 = v225;
        if (v216)
        {
          sub_2219A1CC8(v208, &unk_27CFBB660, &qword_221BE4610);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v25, v150);
          if (qword_27CFB73D0 != -1)
          {
            OUTLINED_FUNCTION_22_11();
            swift_once();
          }

          v151 = sub_221BCCD88();
          __swift_project_value_buffer(v151, qword_27CFDEEB8);
          v152 = v216;
          v25 = sub_221BCCD68();
          v153 = sub_221BCDA78();

          if (os_log_type_enabled(v25, v153))
          {
            OUTLINED_FUNCTION_288();
            v154 = swift_slowAlloc();
            OUTLINED_FUNCTION_227_2();
            v155 = swift_slowAlloc();
            *v154 = 138412290;
            v156 = v216;
            v157 = _swift_stdlib_bridgeErrorToNSError();
            *(v154 + 4) = v157;
            *v155 = v157;
            _os_log_impl(&dword_221989000, v25, v153, "Serialization error: %@", v154, 0xCu);
            sub_2219A1CC8(v155, &unk_27CFB7630, qword_221BD0790);
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
            v121 = v217;
          }

          else
          {
          }

          v144 = 0;
          v216 = 0;
        }

        else
        {
          v144 = v149;
          v216 = 0;
          sub_2219A1CC8(v208, &unk_27CFBB660, &qword_221BE4610);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v25, v158);
        }
      }

      OUTLINED_FUNCTION_49_8();
      sub_221B22C2C(v222, v159);
      sub_221B22C2C(v121, v25);
      a10 = v120;
      v161 = *(v120 + 16);
      v160 = *(v120 + 24);
      if (v161 >= v160 >> 1)
      {
        v163 = OUTLINED_FUNCTION_90_3(v160);
        v25 = &a10;
        sub_2219A2FF4(v163, v161 + 1, 1);
        v120 = a10;
      }

      *(v120 + 16) = v161 + 1;
      v162 = (v120 + 40 * v161);
      v162[4] = v145;
      v162[5] = v125;
      v162[7] = 0;
      v162[8] = 0;
      v162[6] = v144;
      v31 = v213;
      v119 += v215;
      v117 = v219 - 1;
    }

    while (v219 != 1);
    v115 = v198;
  }

  else
  {

    v120 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_131_3();
  OUTLINED_FUNCTION_190_2();
  v173 = sub_221AE9C28(v171, v172);
  v175 = v174;

  v176 = *(v25 + *(v115 + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = OUTLINED_FUNCTION_131_3();
  v179 = sub_221AE9BC4(v177, v178);
  v181 = v180;

  v228 = v175;
  v221 = v173;
  if (v181)
  {
    v226 = 0;
  }

  else
  {
    v182 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v226 = v182;
  }

  v183 = v212;
  MEMORY[0x28223BE20](v182);
  v223 = sub_221B0DCB0(0, sub_221B21D20);
  v184 = 0;
  v185 = *(v205 + 40);
  v186 = MEMORY[0x277D84F90];
  a10 = MEMORY[0x277D84F90];
  v187 = *(v185 + 16);
  while (1)
  {
    if (v187 == v184)
    {
      v230 = &type metadata for OpenURLIntentSpecification;
      v231 = &off_2835138F8;
      v195 = swift_allocObject();
      *&v229 = v195;
      *(v195 + 16) = v199;
      *(v195 + 24) = v202;
      *(v195 + 32) = xmmword_221BD0800;
      *(v195 + 48) = v200;
      *(v195 + 56) = v209;
      *(v195 + 64) = v120;
      *(v195 + 72) = v221;
      *(v195 + 80) = v228;
      *(v195 + 88) = v176 & 1;
      *(v195 + 96) = v226;
      *(v195 + 104) = v223;
      *(v195 + 112) = v186;
      sub_22198B358(&v229, v232);
      OUTLINED_FUNCTION_190_2();
      v27 = v204;
      goto LABEL_53;
    }

    if (v184 >= *(v185 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_176_2();
    sub_221B22BD0(v185 + v188 + *(v189 + 72) * v184, v183, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
    sub_2219A1D20(0, &qword_27CFB7D70, 0x277D23938);
    v190 = OUTLINED_FUNCTION_164_1();
    sub_221B0DE28(v190);
    if (v216)
    {
      v196 = OUTLINED_FUNCTION_93_3();
      sub_221B22C2C(v196, v197);

      OUTLINED_FUNCTION_225_1();

      OUTLINED_FUNCTION_190_2();
      goto LABEL_54;
    }

    v191 = OUTLINED_FUNCTION_93_3();
    v193 = sub_221B22C2C(v191, v192);
    MEMORY[0x223DA3390](v193);
    v194 = *((a10 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((a10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v194 >> 1)
    {
      OUTLINED_FUNCTION_90_3(v194);
      sub_221BCD6B8();
    }

    sub_221BCD6F8();
    v186 = a10;
    ++v184;
    v183 = v212;
  }

  __break(1u);
}

uint64_t sub_221AF38BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A8B858(v1, v2);
}

uint64_t sub_221AF38FC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppIntentsProtobuf_Action(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  v16 = v44;
  result = sub_221BCCB58();
  if (!v16)
  {
    v44 = 0;
    v39 = v6;
    v40 = v9;
    v41 = v7;
    OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
    v19 = OptionsForActionRequest[6];
    sub_2219A1CC8(a1 + v19, &unk_27CFBB690, &qword_221BDADD0);
    sub_221B229DC(v15, a1 + v19, type metadata accessor for AppIntentsProtobuf_Action);
    __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v13);
    v20 = *(a2 + 104);
    if (v20)
    {
      v43[0] = *(a2 + 96);
      v43[1] = v20;
      v21 = v44;
      sub_221AF3D68(v43, a1);
      v44 = v21;
    }

    v22 = v39;
    v23 = *(a2 + 64);
    v24 = *(a2 + 72);
    __swift_project_boxed_opaque_existential_0((a2 + 40), v23);
    sub_221AF3F8C(v23, v24);
    v25 = OptionsForActionRequest[8];
    sub_2219A1CC8(a1 + v25, &unk_27CFBB650, &qword_221BE0A38);
    sub_221B229DC(v12, a1 + v25, type metadata accessor for AppIntentsProtobuf_Environment);
    __swift_storeEnumTagSinglePayload(a1 + v25, 0, 1, v10);
    v27 = *(a2 + 80);
    v26 = *(a2 + 88);

    *a1 = v27;
    a1[1] = v26;
    v28 = *(a2 + 128);
    if (v28)
    {
      v29 = *(a2 + 120);
      v30 = (a1 + OptionsForActionRequest[7]);

      *v30 = v29;
      v30[1] = v28;
    }

    v31 = *(a2 + 113);
    v32 = OptionsForActionRequest[9];
    sub_2219A02E8(a1 + v32, v22, &unk_27CFBB600, &qword_221BE44B0);
    v33 = v41;
    if (__swift_getEnumTagSinglePayload(v22, 1, v41) == 1)
    {
      v34 = v40;
      sub_221BCC8C8();
      v35 = (v34 + v33[5]);
      *v35 = 0;
      v35[1] = 0;
      v36 = v34 + v33[6];
      *v36 = 0;
      *(v36 + 4) = 1;
      *(v34 + v33[7]) = 2;
      if (__swift_getEnumTagSinglePayload(v22, 1, v33) != 1)
      {
        sub_2219A1CC8(v22, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      v34 = v40;
      sub_221B229DC(v22, v40, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    }

    v37 = v34 + v33[6];
    *v37 = v31 << 31 >> 31;
    *(v37 + 4) = 0;
    sub_2219A1CC8(a1 + v32, &unk_27CFBB600, &qword_221BE44B0);
    sub_221B229DC(v34, a1 + v32, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    return __swift_storeEnumTagSinglePayload(a1 + v32, 0, 1, v33);
  }

  return result;
}

uint64_t sub_221AF3D68(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 36);
  sub_2219A02E8(a2 + v12, v6, &unk_27CFBB600, &qword_221BE44B0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_221BCC8C8();
    v13 = &v9[v7[5]];
    *v13 = 0;
    *(v13 + 1) = 0;
    v14 = &v9[v7[6]];
    *v14 = 0;
    v14[4] = 1;
    v9[v7[7]] = 2;
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  }

  v15 = &v9[v7[5]];

  *v15 = v10;
  *(v15 + 1) = v11;
  sub_2219A1CC8(a2 + v12, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v9, a2 + v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return __swift_storeEnumTagSinglePayload(a2 + v12, 0, 1, v7);
}

uint64_t sub_221AF3F8C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppIntentsProtobuf_Environment(0);
  sub_221AE8904(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment, &unk_221BD9D80);
  return sub_221BCCB58();
}

void sub_221AF40A4()
{
  OUTLINED_FUNCTION_55_4();
  v53 = v5;
  v6 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_10();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA810, &qword_221BE0D50);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  v54 = v10;
  v11 = OUTLINED_FUNCTION_133_3();
  v12 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v14 = OUTLINED_FUNCTION_85_3();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(v14);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v17);
  v18 = OUTLINED_FUNCTION_169_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  v21 = OUTLINED_FUNCTION_8_1(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_201_2();
  v23 = OUTLINED_FUNCTION_202_2();
  sub_2219A02E8(v23, v24, v25, &qword_221BE0D30);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  v26 = OUTLINED_FUNCTION_13_8(v2);
  if (v29)
  {
    sub_221A00FEC(v26, v27, v28);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_188_3(v30, &type metadata for AppIntentsProtocol.FetchOptionsForAction.Response);
    *(v31 + 16) = 0x8000000221BF0650;
    *(v31 + 24) = 0;
    *(v31 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_68_4();
  }

  else
  {
    sub_2219A02E8(v2, v3, &unk_27CFBB6D0, &qword_221BE0D30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_19();
      v33 = OUTLINED_FUNCTION_214_1();
      sub_221B229DC(v33, v34, v35);
      sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
      v36 = OUTLINED_FUNCTION_208_2();
      sub_221AEE828(v36);
      v38 = v37;
      OUTLINED_FUNCTION_68_4();
      OUTLINED_FUNCTION_2_32();
      sub_221B22C2C(v4, v39);
      if (!v1)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0x80;
LABEL_15:
        sub_2219A1CC8(v2, &unk_27CFBB6D0, &qword_221BE0D30);
        *v53 = v38;
        *(v53 + 8) = v40;
        *(v53 + 16) = v41;
        *(v53 + 24) = v42;
        *(v53 + 32) = v43;
        goto LABEL_13;
      }
    }

    else
    {
      v44 = OUTLINED_FUNCTION_109_3();
      sub_221B229DC(v44, v55, v45);
      sub_2219A02E8(v55 + *(OptionsForAction + 20), v54, &qword_27CFBA810, &qword_221BE0D50);
      OUTLINED_FUNCTION_145(v54);
      if (v29)
      {
        v46 = MEMORY[0x277D84F90];
        *v0 = MEMORY[0x277D84F90];
        v0[1] = v46;
        sub_221BCC8C8();
        OUTLINED_FUNCTION_229_1(*(v12 + 28));
        *(v0 + *(v12 + 32)) = 2;
        OUTLINED_FUNCTION_145(v54);
        if (!v29)
        {
          sub_2219A1CC8(v54, &qword_27CFBA810, &qword_221BE0D50);
        }
      }

      else
      {
        v47 = OUTLINED_FUNCTION_158_2();
        sub_221B229DC(v47, v0, v48);
      }

      sub_221AF4484(v0, v56);
      OUTLINED_FUNCTION_68_4();
      v49 = OUTLINED_FUNCTION_53_3();
      sub_221B22C2C(v49, v50);
      v51 = OUTLINED_FUNCTION_93_3();
      sub_221B22C2C(v51, v52);
      if (!v1)
      {
        v38 = v56[0];
        v40 = v56[1];
        v41 = v56[2];
        v42 = v56[3];
        v43 = v57;
        goto LABEL_15;
      }
    }
  }

  sub_2219A1CC8(v2, &unk_27CFBB6D0, &qword_221BE0D30);
LABEL_13:
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF4484@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v104 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v5 - 8);
  v127 = &v102 - v6;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  v130 = *(v137 - 1);
  MEMORY[0x28223BE20](v137);
  v131 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  MEMORY[0x28223BE20](v11 - 8);
  v122 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v126 = &v102 - v14;
  MEMORY[0x28223BE20](v15);
  v132 = &v102 - v16;
  MEMORY[0x28223BE20](v17);
  v107 = &v102 - v18;
  MEMORY[0x28223BE20](v19);
  v113 = &v102 - v20;
  MEMORY[0x28223BE20](v21);
  v118 = &v102 - v22;
  v119 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  v116 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a1;
  if (*(*a1 + 16))
  {
    v109 = *a1;
  }

  else
  {
    v109 = 0;
  }

  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = v111;
  v103 = sub_221AE9C28(KeyPath, v26);
  v108 = v28;

  v29 = v27[1];
  v30 = *(v29 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v142 = MEMORY[0x277D84F90];
    v105 = v30;
    sub_2219A3054(0, v30, 0);
    v32 = v142;
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v139 = result;
    v34 = v32;
    v35 = 0;
    v112 = v29 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v121 = xmmword_221BD8630;
    v120 = xmmword_221BD8640;
    v129 = v9;
    v114 = v24;
    v125 = v7;
    v106 = v29;
    while (v35 < *(v29 + 16))
    {
      v117 = v34;
      v36 = *(v116 + 72);
      v115 = v35;
      sub_221B22BD0(v112 + v36 * v35, v24, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
      v138 = v119[6];
      v37 = v113;
      sub_2219A02E8(&v24[v138], v113, &qword_27CFB85E8, &unk_221BD86E0);
      v38 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
      v39 = 1;
      v40 = v24;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
      sub_2219A1CC8(v37, &qword_27CFB85E8, &unk_221BD86E0);
      v42 = EnumTagSinglePayload == 1;
      v43 = v40;
      v44 = v131;
      v140 = v38;
      if (!v42)
      {
        v45 = v107;
        sub_2219A02E8(&v40[v138], v107, &qword_27CFB85E8, &unk_221BD86E0);
        if (__swift_getEnumTagSinglePayload(v45, 1, v38) == 1)
        {
          v46 = v118;
          sub_221BCC8C8();
          *(v46 + v140[5]) = v120;
          v47 = v46 + v140[6];
          *v47 = 0;
          *(v47 + 8) = 1;
          v48 = v46 + v140[7];
          v38 = v140;
          *v48 = 0;
          *(v48 + 8) = 1;
          if (__swift_getEnumTagSinglePayload(v45, 1, v38) != 1)
          {
            sub_2219A1CC8(v45, &qword_27CFB85E8, &unk_221BD86E0);
          }
        }

        else
        {
          sub_221B229DC(v45, v118, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
        }

        v39 = 0;
      }

      v49 = v118;
      __swift_storeEnumTagSinglePayload(v118, v39, 1, v38);
      v50 = sub_221B0F228(v49);
      sub_2219A1CC8(v49, &qword_27CFB85E8, &unk_221BD86E0);
      v51 = *v43;
      v52 = *(*v43 + 16);
      if (v52)
      {
        v110 = v50;
        v141 = MEMORY[0x277D84F90];
        result = sub_2219A3074(0, v52, 0);
        v53 = 0;
        v55 = v140;
        v54 = v141;
        v128 = v51 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
        v123 = v52;
        v124 = v51;
        while (v53 < *(v51 + 16))
        {
          v138 = v54;
          sub_221B22BD0(v128 + *(v130 + 72) * v53, v44, type metadata accessor for AppIntentsProtobuf_DynamicOption);
          v56 = v137[7];
          v57 = v126;
          sub_2219A02E8(v44 + v56, v126, &qword_27CFB85E8, &unk_221BD86E0);
          v58 = 1;
          v59 = __swift_getEnumTagSinglePayload(v57, 1, v55);
          sub_2219A1CC8(v57, &qword_27CFB85E8, &unk_221BD86E0);
          v42 = v59 == 1;
          v60 = v140;
          if (!v42)
          {
            v61 = v122;
            sub_2219A02E8(v44 + v56, v122, &qword_27CFB85E8, &unk_221BD86E0);
            if (__swift_getEnumTagSinglePayload(v61, 1, v60) == 1)
            {
              v62 = v132;
              sub_221BCC8C8();
              *(v62 + v140[5]) = v120;
              v63 = v62 + v140[6];
              *v63 = 0;
              *(v63 + 8) = 1;
              v64 = v62 + v140[7];
              v60 = v140;
              *v64 = 0;
              *(v64 + 8) = 1;
              if (__swift_getEnumTagSinglePayload(v61, 1, v60) != 1)
              {
                sub_2219A1CC8(v61, &qword_27CFB85E8, &unk_221BD86E0);
              }
            }

            else
            {
              sub_221B229DC(v61, v132, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
            }

            v58 = 0;
          }

          v65 = v132;
          __swift_storeEnumTagSinglePayload(v132, v58, 1, v60);
          v135 = sub_221B0F228(v65);
          sub_2219A1CC8(v65, &qword_27CFB85E8, &unk_221BD86E0);
          v66 = v137[9];
          v67 = (v44 + v137[8]);
          v68 = *v67;
          v69 = v67[1];
          v134 = *v44;
          v70 = *(v44 + 16);
          v71 = v127;
          sub_2219A02E8(v44 + v66, v127, &unk_27CFBB660, &qword_221BE4610);
          v72 = v125;
          if (__swift_getEnumTagSinglePayload(v71, 1, v125) == 1)
          {
            *v9 = v121;

            sub_221BCC8C8();
            if (__swift_getEnumTagSinglePayload(v71, 1, v72) != 1)
            {
              sub_2219A1CC8(v71, &unk_27CFBB660, &qword_221BE4610);
            }
          }

          else
          {
            sub_221B229DC(v71, v9, type metadata accessor for AppIntentsProtobuf_Value);
          }

          sub_221B14BC4(*v9, v9[1], &qword_27CFBB680, 0x277D23958);
          v55 = v140;
          if (v3)
          {
            sub_221B22C2C(v44, type metadata accessor for AppIntentsProtobuf_DynamicOption);

            sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_Value);
            sub_221B22C2C(v114, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
          }

          v74 = v73;
          v133 = v70;
          v75 = v69;
          v76 = v68;
          v136 = 0;
          sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_Value);
          result = sub_221B22C2C(v44, type metadata accessor for AppIntentsProtobuf_DynamicOption);
          v77 = v135;
          v54 = v138;
          if (v135)
          {
            v78 = v139;
          }

          else
          {
            v78 = 0;
          }

          if (v135)
          {
            v79 = &protocol witness table for LNImage;
          }

          else
          {
            v79 = 0;
          }

          v141 = v138;
          v81 = *(v138 + 16);
          v80 = *(v138 + 24);
          if (v81 >= v80 >> 1)
          {
            result = sub_2219A3074((v80 > 1), v81 + 1, 1);
            v77 = v135;
            v55 = v140;
            v54 = v141;
          }

          ++v53;
          *(v54 + 16) = v81 + 1;
          v82 = v54 + 88 * v81;
          *(v82 + 32) = v77;
          *(v82 + 40) = 0;
          *(v82 + 48) = 0;
          *(v82 + 56) = v78;
          *(&v83 + 1) = *(&v134 + 1);
          *&v84 = v134;
          *(&v84 + 1) = v76;
          *&v83 = v75;
          *(v82 + 64) = v79;
          *(v82 + 88) = v83;
          *(v82 + 72) = v84;
          *(v82 + 104) = v133;
          *(v82 + 112) = v74;
          v51 = v124;
          v3 = v136;
          v9 = v129;
          v44 = v131;
          if (v123 == v53)
          {
            v138 = v54;
            v43 = v114;
            v50 = v110;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v136 = v3;
      v138 = MEMORY[0x277D84F90];
LABEL_38:
      v85 = (v43 + v119[7]);
      v87 = *v85;
      v86 = v85[1];
      v88 = (v43 + v119[8]);
      v90 = *v88;
      v89 = v88[1];

      result = sub_221B22C2C(v43, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
      if (v50)
      {
        v91 = &protocol witness table for LNImage;
      }

      else
      {
        v91 = 0;
      }

      if (v50)
      {
        v92 = v139;
      }

      else
      {
        v92 = 0;
      }

      v34 = v117;
      v142 = v117;
      v94 = *(v117 + 16);
      v93 = *(v117 + 24);
      if (v94 >= v93 >> 1)
      {
        v110 = v50;
        result = sub_2219A3054((v93 > 1), v94 + 1, 1);
        v50 = v110;
        v34 = v142;
      }

      v35 = v115 + 1;
      *(v34 + 16) = v94 + 1;
      v95 = v34 + 80 * v94;
      *(v95 + 32) = v50;
      *(v95 + 40) = 0;
      *(v95 + 48) = 0;
      *(v95 + 56) = v92;
      v96 = v138;
      *(v95 + 64) = v91;
      *(v95 + 72) = v96;
      *&v97 = v87;
      *(&v97 + 1) = v86;
      *&v98 = v90;
      *(&v98 + 1) = v89;
      *(v95 + 80) = v97;
      *(v95 + 96) = v98;
      v3 = v136;
      v9 = v129;
      v24 = v114;
      v29 = v106;
      if (v35 == v105)
      {
        v31 = v34;
        goto LABEL_49;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_49:
    result = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
    v99 = *(v111 + *(result + 32));
    v100 = v104;
    v101 = v103;
    *v104 = v109;
    v100[1] = v101;
    v100[2] = v108;
    v100[3] = v31;
    *(v100 + 32) = v99 & 1;
  }

  return result;
}

void sub_221AF5110()
{
  OUTLINED_FUNCTION_55_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_82_5();
  v8 = *v0;
  v9 = *(v0 + 32);
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(OptionsForAction);
  if (v9 < 0)
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v13);
    OUTLINED_FUNCTION_63_7();
    *(v14 - 16) = v8;
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v15, v16, &unk_221BD9C18);
    OUTLINED_FUNCTION_154_3();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    if (!v1)
    {
      OUTLINED_FUNCTION_151_3();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_240_2();
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_81_6();
    *(v12 - 16) = &v27;
    sub_221AE8904(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success, &unk_221BDC008);
    OUTLINED_FUNCTION_156_1();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    if (!v1)
    {
      OUTLINED_FUNCTION_14();
      swift_storeEnumTagMultiPayload();
LABEL_7:
      v20 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v3);
      OUTLINED_FUNCTION_105_5();
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
      OUTLINED_FUNCTION_74_6();
      MEMORY[0x28223BE20](v23);
      OUTLINED_FUNCTION_60_7();
      v24 = sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse, &unk_221BDC170);
      OUTLINED_FUNCTION_143_3(sub_221B21ED0, v25, v26, v24);
      OUTLINED_FUNCTION_157_2();
      v19 = OUTLINED_FUNCTION_96_6();
      goto LABEL_8;
    }
  }

  v17 = &unk_27CFBB6D0;
  v18 = &qword_221BE0D30;
  v19 = v2;
LABEL_8:
  sub_2219A1CC8(v19, v17, v18);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF539C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2;
  sub_221AE8904(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult, &unk_221BDA320);
  result = sub_221BCCB58();
  if (!v2)
  {
    v9 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0) + 20);
    sub_2219A1CC8(a1 + v9, &qword_27CFBA810, &qword_221BE0D50);
    sub_221B229DC(v7, a1 + v9, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult);
    return __swift_storeEnumTagSinglePayload(a1 + v9, 0, 1, v5);
  }

  return result;
}

void sub_221AF55AC()
{
  OUTLINED_FUNCTION_55_4();
  v56 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  v49 = v10;
  v11 = OUTLINED_FUNCTION_133_3();
  v50 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  v51 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_104_2();
  v54 = v16;
  v17 = OUTLINED_FUNCTION_133_3();
  v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21_10();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v20);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_83_6();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_57_7();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v52 = v24;
  v53 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  v61 = v7;
  sub_2219A02E8(v7 + restarted[6], v0, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_43_9(v0);
  if (v25)
  {
    *v3 = 0;
    v3[1] = 0;
    sub_221BCC8C8();
    OUTLINED_FUNCTION_43_9(v0);
    if (!v25)
    {
      sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v26 = OUTLINED_FUNCTION_91();
    sub_221B229DC(v26, v27, v28);
  }

  sub_221AE9E30(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_31_9();
    sub_221B22C2C(v7, v29);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v3, v30);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v3, v31);
    (*(v52 + 32))(v56, v2, v53);
    sub_2219A02E8(v7 + restarted[7], v54, &unk_27CFBB600, &qword_221BE44B0);
    OUTLINED_FUNCTION_145(v54);
    if (v25)
    {
      sub_221BCC8C8();
      v32 = (v4 + v18[5]);
      *v32 = 0;
      v32[1] = 0;
      OUTLINED_FUNCTION_217_3(v4 + v18[6]);
      *(v4 + v18[7]) = 2;
      OUTLINED_FUNCTION_145(v54);
      if (!v25)
      {
        sub_2219A1CC8(v54, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_37();
      sub_221B229DC(v54, v4, v33);
    }

    sub_221AE9D08();
    v34 = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
    v35 = v56 + *(v34 + 20);
    *v35 = v57;
    *(v35 + 8) = v58;
    *(v35 + 16) = v59;
    *(v35 + 17) = v60;
    sub_2219A02E8(v7 + restarted[5], v49, &qword_27CFBA688, &unk_221BE50E0);
    v36 = OUTLINED_FUNCTION_148_3();
    OUTLINED_FUNCTION_44_5(v36, v37);
    if (v25)
    {
      v40 = v51;
      *v51 = 0;
      v51[1] = 0xE000000000000000;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_31_9();
      sub_221B22C2C(v61, v38);
      OUTLINED_FUNCTION_194_2(*(v50 + 24));
      OUTLINED_FUNCTION_13_8(v49);
      if (!v25)
      {
        sub_2219A1CC8(v49, &qword_27CFBA688, &unk_221BE50E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_31_9();
      sub_221B22C2C(v7, v39);
      OUTLINED_FUNCTION_55_9();
      v40 = v51;
      sub_221B229DC(v49, v51, v41);
    }

    v43 = *v40;
    v42 = v40[1];
    v44 = (v40 + *(v50 + 24));
    v46 = *v44;
    v45 = v44[1];

    OUTLINED_FUNCTION_54_7();
    sub_221B22C2C(v40, v47);
    v48 = (v56 + *(v34 + 24));
    *v48 = v43;
    v48[1] = v42;
    v48[2] = v46;
    v48[3] = v45;
  }

  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF5A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  MEMORY[0x28223BE20](v4);
  v22 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
  v10 = (a2 + *(restarted + 20));
  v11 = v10[1];
  if (v11)
  {
    v21[0] = *v10;
    v21[1] = v11;
    sub_221AF5DAC();
  }

  MEMORY[0x28223BE20](restarted);
  v21[-2] = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  v13 = *(v12 + 24);
  sub_2219A1CC8(a1 + v13, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v8, a1 + v13, type metadata accessor for AppIntentsProtobuf_UUID);
  v14 = __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v6);
  *&v15 = MEMORY[0x28223BE20](v14);
  v21[-4] = v16;
  v21[-3] = v17;
  *&v21[-2] = v15;
  sub_221AE8904(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  v18 = v22;
  sub_221BCCB58();
  v19 = *(v12 + 20);
  sub_2219A1CC8(a1 + v19, &qword_27CFBA688, &unk_221BE50E0);
  sub_221B229DC(v18, a1 + v19, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v4);
}

void sub_221AF5DAC()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_162_0();
  v5 = OUTLINED_FUNCTION_64_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_40_8();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v12 = *v3;
  v13 = v3[1];
  v14 = *(v4(0) + 28);
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_13_8(v2);
  if (v15)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_212_2(v16);
    *(v17 + 4) = 1;
    OUTLINED_FUNCTION_195_3(*(v10 + 28));
    OUTLINED_FUNCTION_13_8(v2);
    if (!v15)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_70_0();
    sub_221B229DC(v18, v19, v20);
  }

  OUTLINED_FUNCTION_224_1();
  *v2 = v12;
  v2[1] = v13;
  sub_2219A1CC8(v0 + v14, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_1_37();
  sub_221B229DC(v1, v0 + v14, v21);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v10);
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF5FDC()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104_2();
  v9 = OUTLINED_FUNCTION_133_3();
  v40 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_51_6();
  v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_0();
  v19 = OUTLINED_FUNCTION_45_9();
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(v19);
  sub_2219A02E8(v4 + *(started + 24), v1, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_43_9(v1);
  if (v21)
  {
    sub_221BCC8C8();
    v22 = (v2 + v17[5]);
    *v22 = 0;
    v22[1] = 0;
    v23 = v2 + v17[6];
    *v23 = 0;
    *(v23 + 4) = 1;
    *(v2 + v17[7]) = 2;
    OUTLINED_FUNCTION_43_9(v1);
    if (!v21)
    {
      sub_2219A1CC8(v1, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    v24 = OUTLINED_FUNCTION_64_0();
    sub_221B229DC(v24, v25, v26);
  }

  OUTLINED_FUNCTION_236_0();
  sub_221AE9D08();
  if (v0)
  {
    OUTLINED_FUNCTION_64_5();
  }

  else
  {
    OUTLINED_FUNCTION_213_3();
    sub_2219A02E8(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_56_6();
    OUTLINED_FUNCTION_72_6(v31, v32);
    if (v21)
    {
      *v13 = 0;
      v13[1] = 0xE000000000000000;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_229_1(*(v40 + 24));
      OUTLINED_FUNCTION_48_8(1);
      if (!v21)
      {
        sub_2219A1CC8(1, &qword_27CFBA688, &unk_221BE50E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_55_9();
      sub_221B229DC(1, v13, v33);
    }

    v35 = *v13;
    v34 = v13[1];
    v36 = (v13 + *(v40 + 24));
    v38 = *v36;
    v37 = v36[1];

    OUTLINED_FUNCTION_54_7();
    sub_221B22C2C(v13, v39);
    *v6 = v41;
    *(v6 + 8) = v42;
    *(v6 + 16) = v43;
    *(v6 + 17) = v44;
    *(v6 + 24) = v35;
    *(v6 + 32) = v34;
    *(v6 + 40) = v38;
    *(v6 + 48) = v37;
  }

  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF62AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[1];
  if (v8)
  {
    v14[0] = *a2;
    v14[1] = v8;
    sub_221AF6468();
  }

  *&v9 = MEMORY[0x28223BE20](v5);
  v14[-4] = v10;
  v14[-3] = v11;
  *&v14[-2] = v9;
  sub_221AE8904(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  sub_221BCCB58();
  v12 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0) + 20);
  sub_2219A1CC8(a1 + v12, &qword_27CFBA688, &unk_221BE50E0);
  sub_221B229DC(v7, a1 + v12, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, v4);
}

void sub_221AF6468()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_162_0();
  v5 = OUTLINED_FUNCTION_64_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_40_8();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v12 = *v3;
  v13 = v3[1];
  v14 = *(v4(0) + 24);
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_13_8(v2);
  if (v15)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_212_2(v16);
    *(v17 + 4) = 1;
    OUTLINED_FUNCTION_195_3(*(v10 + 28));
    OUTLINED_FUNCTION_13_8(v2);
    if (!v15)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_70_0();
    sub_221B229DC(v18, v19, v20);
  }

  OUTLINED_FUNCTION_224_1();
  *v2 = v12;
  v2[1] = v13;
  sub_2219A1CC8(v0 + v14, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_1_37();
  sub_221B229DC(v1, v0 + v14, v21);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v10);
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF66A0()
{
  OUTLINED_FUNCTION_55_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_156();
  v5 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_57_7();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_12();
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  OUTLINED_FUNCTION_250_2(*(started + 20));
  v9 = OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_49_4(v9, v10, v5);
  if (v11)
  {
    *v1 = 0;
    v1[1] = 0;
    sub_221BCC8C8();
    v12 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_49_4(v12, v13, v5);
    if (!v11)
    {
      sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v14 = OUTLINED_FUNCTION_151_3();
    sub_221B229DC(v14, v15, v16);
  }

  sub_221AE9E30(v1);
  v17 = OUTLINED_FUNCTION_53_3();
  sub_221B22C2C(v17, v18);
  OUTLINED_FUNCTION_0_43();
  sub_221B22C2C(v1, v19);
  if (!v0)
  {
    v20 = OUTLINED_FUNCTION_232_1();
    v21(v20);
  }

  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF6868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v7 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0) + 20);
  sub_2219A1CC8(a1 + v7, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v6, a1 + v7, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v7, 0, 1, v4);
}

void sub_221AF6A68()
{
  OUTLINED_FUNCTION_55_4();
  v6 = v5;
  v57 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  v52 = v10;
  v11 = OUTLINED_FUNCTION_133_3();
  v53 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  v54 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_45_9();
  type metadata accessor for AppIntentsProtobuf_UUID(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_12();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v50 = v19;
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_150_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v21);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_83_6();
  v23 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_10();
  v55 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  v25 = v6;
  sub_2219A02E8(v6 + v55[7], v0, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_25_10(v0);
  if (v26)
  {
    sub_221BCC8C8();
    v27 = (v3 + v23[5]);
    *v27 = 0;
    v27[1] = 0;
    OUTLINED_FUNCTION_217_3(v3 + v23[6]);
    *(v3 + v23[7]) = 2;
    OUTLINED_FUNCTION_25_10(v0);
    if (!v26)
    {
      sub_2219A1CC8(v0, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    sub_221B229DC(v0, v3, v28);
  }

  OUTLINED_FUNCTION_208_2();
  sub_221AE9D08();
  if (v1)
  {
    OUTLINED_FUNCTION_30_9();
    sub_221B22C2C(v6, v29);
  }

  else
  {
    v62 = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0);
    v30 = v57 + *(v62 + 20);
    *v30 = v58;
    *(v30 + 8) = v59;
    *(v30 + 16) = v60;
    *(v30 + 17) = v61;
    v31 = v6;
    sub_2219A02E8(v6 + v55[6], v4, &qword_27CFB9988, &qword_221BDAE20);
    v32 = OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_44_5(v32, v33);
    if (v26)
    {
      *v2 = 0;
      v2[1] = 0;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_13_8(v4);
      v35 = v56;
      if (!v26)
      {
        sub_2219A1CC8(v4, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      sub_221B229DC(v4, v2, v34);
      v35 = v56;
    }

    sub_221AE9E30(v2);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v36);
    (*(v50 + 32))(v57, v35, v51);
    sub_2219A02E8(v25 + v55[5], v52, &qword_27CFBA688, &unk_221BE50E0);
    v37 = OUTLINED_FUNCTION_56_6();
    OUTLINED_FUNCTION_73_6(v37, v38);
    if (v26)
    {
      v41 = v54;
      *v54 = 0;
      v54[1] = 0xE000000000000000;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_30_9();
      sub_221B22C2C(v31, v39);
      OUTLINED_FUNCTION_196_1(*(v53 + 24));
      OUTLINED_FUNCTION_20_8(v52);
      if (!v26)
      {
        sub_2219A1CC8(v52, &qword_27CFBA688, &unk_221BE50E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_9();
      sub_221B22C2C(v25, v40);
      OUTLINED_FUNCTION_55_9();
      v41 = v54;
      sub_221B229DC(v52, v54, v42);
    }

    v44 = *v41;
    v43 = v41[1];
    v45 = (v41 + *(v53 + 24));
    v47 = *v45;
    v46 = v45[1];

    OUTLINED_FUNCTION_54_7();
    sub_221B22C2C(v41, v48);
    v49 = (v57 + *(v62 + 24));
    *v49 = v44;
    v49[1] = v43;
    v49[2] = v47;
    v49[3] = v46;
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF6F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  MEMORY[0x28223BE20](v4);
  v22 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0);
  v10 = (a2 + *(v9 + 20));
  v11 = v10[1];
  if (v11)
  {
    v21[0] = *v10;
    v21[1] = v11;
    sub_221AF5DAC();
  }

  MEMORY[0x28223BE20](v9);
  v21[-2] = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  v13 = *(v12 + 24);
  sub_2219A1CC8(a1 + v13, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v8, a1 + v13, type metadata accessor for AppIntentsProtobuf_UUID);
  v14 = __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v6);
  *&v15 = MEMORY[0x28223BE20](v14);
  v21[-4] = v16;
  v21[-3] = v17;
  *&v21[-2] = v15;
  sub_221AE8904(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  v18 = v22;
  sub_221BCCB58();
  v19 = *(v12 + 20);
  sub_2219A1CC8(a1 + v19, &qword_27CFBA688, &unk_221BE50E0);
  sub_221B229DC(v18, a1 + v19, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v4);
}

void sub_221AF7304(uint64_t *a1, void *a2)
{
  v3 = v2;
  v86 = type metadata accessor for AppIntentsProtobuf_Property(0);
  v80 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  MEMORY[0x28223BE20](v77);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v74);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  MEMORY[0x28223BE20](v72);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v70);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  MEMORY[0x28223BE20](v68);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v13);
  (*(v14 + 8))(v81, v13, v14);
  v15 = v81[0];
  v16 = v81[1];
  sub_2219982C4(v81[2], v81[3]);

  a1[2] = v15;
  a1[3] = v16;
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v17);
  v19 = (*(v18 + 16))(v17, v18);
  v21 = v20;

  *a1 = v19;
  a1[1] = v21;
  v22 = a2[3];
  v23 = a2[4];
  v75 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v22);
  v24 = (*(v23 + 24))(v22, v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v66 = a1;
    v82 = MEMORY[0x277D84F90];
    sub_2219A32B4(0, v25, 0);
    v27 = 0;
    v28 = 32;
    v29 = v82;
    v78 = v25;
    v79 = v24;
    while (v27 < *(v24 + 16))
    {
      v30 = *(v24 + v28);
      v31 = *(v24 + v28 + 16);
      v85 = *(v24 + v28 + 32);
      v84[0] = v30;
      v84[1] = v31;
      MEMORY[0x28223BE20](v26);
      *(&v66 - 2) = v32;
      sub_221B21DAC(v84, v81);
      sub_221AE8904(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9678);
      sub_221BCCB58();
      if (v3)
      {

        sub_221B21E08(v84);

        return;
      }

      v33 = v7;
      sub_221B21E08(v84);
      v82 = v29;
      v35 = *(v29 + 16);
      v34 = *(v29 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2219A32B4(v34 > 1, v35 + 1, 1);
        v29 = v82;
      }

      ++v27;
      *(v29 + 16) = v35 + 1;
      v36 = v29 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v35;
      v7 = v33;
      v26 = sub_221B229DC(v33, v36, type metadata accessor for AppIntentsProtobuf_Property);
      v28 += 40;
      v3 = 0;
      v24 = v79;
      if (v78 == v27)
      {

        a1 = v66;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
LABEL_11:

    a1[4] = v29;
    v37 = v75;
    v38 = v75[8];
    v39 = v75[9];
    __swift_project_boxed_opaque_existential_0(v75 + 5, v38);
    v40 = v67;
    sub_221AF3F8C(v38, v39);
    v41 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
    v42 = *(v41 + 36);
    v80 = v41;
    sub_2219A1CC8(a1 + v42, &unk_27CFBB650, &qword_221BE0A38);
    sub_221B229DC(v40, a1 + v42, type metadata accessor for AppIntentsProtobuf_Environment);
    __swift_storeEnumTagSinglePayload(a1 + v42, 0, 1, v68);
    v86 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
    MEMORY[0x28223BE20](v86);
    *(&v66 - 2) = v43;
    sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
    v44 = v69;
    v45 = v70;
    sub_221BCCB58();
    v79 = v3;
    v46 = *(v41 + 48);
    sub_2219A1CC8(a1 + v46, &qword_27CFB9988, &qword_221BDAE20);
    sub_221B229DC(v44, a1 + v46, type metadata accessor for AppIntentsProtobuf_UUID);
    __swift_storeEnumTagSinglePayload(a1 + v46, 0, 1, v45);
    v47 = memcpy(v83, v37 + *(v86 + 28), sizeof(v83));
    v48 = a1;
    MEMORY[0x28223BE20](v47);
    *(&v66 - 2) = v83;
    sub_221AE8904(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options, &unk_221BE06A8);
    v50 = v71;
    v49 = v72;
    v51 = v79;
    sub_221BCCB58();
    v79 = v51;
    v52 = v80;
    v53 = *(v80 + 32);
    sub_2219A1CC8(a1 + v53, &unk_27CFBB730, &unk_221BE0A40);
    sub_221B229DC(v50, a1 + v53, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
    v54 = __swift_storeEnumTagSinglePayload(a1 + v53, 0, 1, v49);
    *&v55 = MEMORY[0x28223BE20](v54);
    *(&v66 - 2) = v55;
    *(&v66 - 16) = v56;
    *(&v66 - 15) = v57;
    sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
    v59 = v73;
    v58 = v74;
    sub_221BCCB58();
    v60 = *(v52 + 44);
    sub_2219A1CC8(v48 + v60, &unk_27CFBB600, &qword_221BE44B0);
    sub_221B229DC(v59, v48 + v60, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    v61 = __swift_storeEnumTagSinglePayload(v48 + v60, 0, 1, v58);
    MEMORY[0x28223BE20](v61);
    *(&v66 - 16) = v62;
    sub_221AE8904(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext, &unk_221BE0540);
    v64 = v76;
    v63 = v77;
    sub_221BCCB58();
    v65 = *(v80 + 40);
    sub_2219A1CC8(v48 + v65, &qword_27CFBA3E8, &qword_221BE0A30);
    sub_221B229DC(v64, v48 + v65, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext);
    __swift_storeEnumTagSinglePayload(v48 + v65, 0, 1, v63);
  }
}

void sub_221AF7CB8()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3E8, &qword_221BE0A30);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_104_2();
  v12 = OUTLINED_FUNCTION_70_7(v11);
  v176 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_111_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v15);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_104_2();
  v18 = OUTLINED_FUNCTION_70_7(v17);
  v189 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v18);
  v19 = OUTLINED_FUNCTION_8_1(v189);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_111_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB730, &unk_221BE0A40);
  OUTLINED_FUNCTION_8_1(v21);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_104_2();
  v24 = OUTLINED_FUNCTION_70_7(v23);
  v177 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v24);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_0();
  v26 = OUTLINED_FUNCTION_45_9();
  type metadata accessor for AppIntentsProtobuf_UUID(v26);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_111_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v30 = OUTLINED_FUNCTION_8_1(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_70_7(v32);
  v187 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v186 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_30_8();
  v36 = OUTLINED_FUNCTION_70_7(v35);
  v190 = type metadata accessor for AppIntentsProtobuf_Value(v36);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_111_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v40 = OUTLINED_FUNCTION_8_1(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_132_2();
  v45 = OUTLINED_FUNCTION_70_7(v44);
  v191 = type metadata accessor for AppIntentsProtobuf_Property(v45);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_132_2();
  v201 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  OUTLINED_FUNCTION_8_1(v49);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_104_2();
  v52 = OUTLINED_FUNCTION_70_7(v51);
  v180 = type metadata accessor for AppIntentsProtobuf_Environment(v52);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v54 = v6[3];
  v178 = v6[2];
  v55 = v6[1];
  v179 = *v6;
  v185 = v6;
  v56 = *(v6[4] + 16);
  v174 = v3;
  if (v56)
  {
    v168 = v1;
    v194 = v4;
    v169 = v8;
    *&v200[0] = MEMORY[0x277D84F90];
    v167 = v54;

    v4 = v200;
    sub_2219A2FF4(0, v56, 0);
    OUTLINED_FUNCTION_176_2();
    v57 = *&v200[0];
    v58 = v190;
    do
    {
      OUTLINED_FUNCTION_134_4();
      sub_221B22BD0(v59, v201, v60);
      v61 = OUTLINED_FUNCTION_131_3();
      sub_221B22BD0(v61, v62, v4);
      v63 = v2[1];
      v196 = *v2;
      sub_2219A02E8(v2 + *(v191 + 24), v193, &unk_27CFBB660, &qword_221BE4610);
      v4 = 1;
      OUTLINED_FUNCTION_98_4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, v65, v66);

      OUTLINED_FUNCTION_192_3(v68);
      sub_2219A1CC8(v69, v70, v71);
      if (EnumTagSinglePayload != 1)
      {
        OUTLINED_FUNCTION_171_3();
        sub_2219A02E8(v72, v73, &unk_27CFBB660, &qword_221BE4610);
        OUTLINED_FUNCTION_25_10(1);
        if (v74)
        {
          *v192 = xmmword_221BD8630;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_25_10(1);
          if (!v74)
          {
            OUTLINED_FUNCTION_192_3(v75);
            sub_2219A1CC8(v76, v77, v78);
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          v79 = OUTLINED_FUNCTION_172_3();
          sub_221B229DC(v79, v80, v81);
        }

        v4 = 0;
      }

      OUTLINED_FUNCTION_211_3();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v58);
      OUTLINED_FUNCTION_171_3();
      sub_2219A02E8(v85, v86, &unk_27CFBB660, &qword_221BE4610);
      OUTLINED_FUNCTION_25_10(v4);
      if (v74)
      {
        v87 = OUTLINED_FUNCTION_169_2();
        sub_2219A1CC8(v87, v88, &qword_221BE4610);
        v89 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_7_16();
        OUTLINED_FUNCTION_171_3();
        sub_221B229DC(v90, v91, v92);
        sub_221B14BC4(*v4, *(v4 + 8), &qword_27CFBB680, 0x277D23958);
        if (v194)
        {
          v94 = OUTLINED_FUNCTION_169_2();
          sub_2219A1CC8(v94, v95, &qword_221BE4610);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v4, v96);
          if (qword_27CFB73D0 != -1)
          {
            OUTLINED_FUNCTION_22_11();
            swift_once();
          }

          v97 = sub_221BCCD88();
          __swift_project_value_buffer(v97, qword_27CFDEEB8);
          v98 = v194;
          v4 = sub_221BCCD68();
          v99 = sub_221BCDA78();

          if (os_log_type_enabled(v4, v99))
          {
            OUTLINED_FUNCTION_288();
            v100 = swift_slowAlloc();
            OUTLINED_FUNCTION_227_2();
            v101 = swift_slowAlloc();
            *v100 = 138412290;
            v102 = v194;
            v103 = _swift_stdlib_bridgeErrorToNSError();
            *(v100 + 4) = v103;
            *v101 = v103;
            _os_log_impl(&dword_221989000, v4, v99, "Serialization error: %@", v100, 0xCu);
            sub_2219A1CC8(v101, &unk_27CFB7630, qword_221BD0790);
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
          }

          else
          {
          }

          v89 = 0;
          v194 = 0;
          v58 = v190;
        }

        else
        {
          v89 = v93;
          v104 = OUTLINED_FUNCTION_169_2();
          sub_2219A1CC8(v104, v105, &qword_221BE4610);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v4, v106);
        }
      }

      OUTLINED_FUNCTION_49_8();
      sub_221B22C2C(v201, v107);
      sub_221B22C2C(v2, v4);
      *&v200[0] = v57;
      v109 = *(v57 + 16);
      v108 = *(v57 + 24);
      if (v109 >= v108 >> 1)
      {
        v111 = OUTLINED_FUNCTION_90_3(v108);
        v4 = v200;
        sub_2219A2FF4(v111, v109 + 1, 1);
        v57 = *&v200[0];
      }

      *(v57 + 16) = v109 + 1;
      v110 = (v57 + 40 * v109);
      v110[4] = v196;
      v110[5] = v63;
      v110[7] = 0;
      v110[8] = 0;
      v110[6] = v89;
      --v56;
    }

    while (v56);
    v8 = v169;
    OUTLINED_FUNCTION_190_2();
    v1 = v168;
    v112 = v55;
    v113 = v167;
  }

  else
  {
    v113 = v54;

    v57 = MEMORY[0x277D84F90];
    v112 = v55;
  }

  v114 = swift_allocObject();
  *(v114 + 16) = v178;
  *(v114 + 24) = v113;
  *(v114 + 32) = xmmword_221BD0800;
  *(v114 + 48) = v179;
  *(v114 + 56) = v112;
  *(v114 + 64) = v57;
  *v8 = v114;
  *(v8 + 8) = v200[0];
  *(v8 + 24) = &type metadata for AnyAppIntentSpecification;
  *(v8 + 32) = &off_283513928;
  v115 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  sub_2219A02E8(v185 + v115[9], v181, &unk_27CFBB650, &qword_221BE0A38);
  v116 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v116, v117, v180);
  v195 = v4;
  if (v74)
  {
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    sub_221BCC8C8();
    v118 = OUTLINED_FUNCTION_56_6();
    OUTLINED_FUNCTION_49_4(v118, v119, v180);
    v121 = v182;
    if (!v74)
    {
      sub_2219A1CC8(v181, &unk_27CFBB650, &qword_221BE0A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    sub_221B229DC(v181, v1, v120);
    v121 = v182;
  }

  v122 = sub_2219A1D20(0, &qword_27CFB7B18, 0x277D23C08);
  v123 = *v1;
  v124 = v1[1];

  v125 = sub_221AE9500(v123, v124, &selRef_initWithLocaleIdentifier_);
  OUTLINED_FUNCTION_139_3();
  sub_221B22C2C(v1, v126);
  *&v200[2] = &protocol witness table for LNEnvironment;
  *(&v200[1] + 1) = v122;
  *&v200[0] = v125;
  sub_22198B358(v200, v8 + 40);
  v127 = v115[12];
  sub_2219A02E8(v185 + v127, v121, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_98_4();
  v131 = __swift_getEnumTagSinglePayload(v128, v129, v130);
  sub_2219A1CC8(v121, &qword_27CFB9988, &qword_221BDAE20);
  if (v131 == 1)
  {
    v132 = v183;
    sub_221BCC548();
    v133 = v184;
    v134 = v189;
    v135 = v188;
  }

  else
  {
    sub_2219A02E8(v185 + v127, v172, &qword_27CFB9988, &qword_221BDAE20);
    OUTLINED_FUNCTION_25_10(v172);
    v134 = v189;
    v135 = v188;
    if (v74)
    {
      v136 = v173;
      *v173 = 0;
      v173[1] = 0;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_20_8(v172);
      if (!v74)
      {
        sub_2219A1CC8(v172, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      v136 = v173;
      sub_221B229DC(v172, v173, v137);
    }

    v132 = v183;
    sub_221AE9E30(v136);
    v133 = v184;
    if (v195)
    {
      OUTLINED_FUNCTION_0_43();
      sub_221B22C2C(v138, v139);
      OUTLINED_FUNCTION_38_6();
      v140 = 0;
      goto LABEL_50;
    }

    v195 = 0;
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v141, v142);
  }

  v202 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
  (*(v186 + 32))(v8 + v202[6], v132, v187);
  sub_2219A02E8(v185 + v115[8], v135, &unk_27CFBB730, &unk_221BE0A40);
  v143 = OUTLINED_FUNCTION_56_6();
  v144 = v177;
  OUTLINED_FUNCTION_73_6(v143, v145);
  if (v74)
  {
    sub_221BCC8C8();
    v146 = *(v177 + 20);
    if (qword_27CFB6E88 != -1)
    {
      swift_once();
    }

    *(v174 + v146) = qword_27CFB9B00;
    v144 = v188;
    v147 = OUTLINED_FUNCTION_9_1();
    v150 = __swift_getEnumTagSinglePayload(v147, v148, v149);

    v134 = v189;
    if (v150 != 1)
    {
      sub_2219A1CC8(v188, &unk_27CFBB730, &unk_221BE0A40);
    }
  }

  else
  {
    sub_221B229DC(v135, v174, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
  }

  sub_221AF8D3C(v174, v200);
  memcpy((v8 + v202[7]), v200, 0xD7uLL);
  sub_2219A02E8(v185 + v115[11], v133, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_48_8(v133);
  if (v74)
  {
    sub_221BCC8C8();
    OUTLINED_FUNCTION_194_2(v134[5]);
    v151 = v175 + v134[6];
    *v151 = 0;
    *(v151 + 4) = 1;
    OUTLINED_FUNCTION_215_1(v134[7]);
    OUTLINED_FUNCTION_48_8(v133);
    v155 = v176;
    v144 = v195;
    if (!v74)
    {
      sub_2219A1CC8(v133, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_245_2();
    sub_221B229DC(v152, v153, v154);
    v155 = v176;
    OUTLINED_FUNCTION_190_2();
  }

  sub_221AE9D08();
  if (v144)
  {
    OUTLINED_FUNCTION_38_6();
    v140 = 1;
LABEL_50:
    sub_2219B397C(v8);
    __swift_destroy_boxed_opaque_existential_0((v8 + 40));
    if (v140)
    {
      v156 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
      (*(v186 + 8))(v8 + *(v156 + 24), v187);
      memcpy(v200, (v8 + *(v156 + 28)), 0xD7uLL);
      sub_221A0E8E4(v200);
    }

    goto LABEL_60;
  }

  v157 = v198;
  v158 = v199;
  v159 = v8 + v202[8];
  *v159 = v197;
  *(v159 + 16) = v157;
  *(v159 + 17) = v158;
  sub_2219A02E8(v185 + v115[10], v170, &qword_27CFBA3E8, &qword_221BE0A30);
  OUTLINED_FUNCTION_13_8(v170);
  if (v74)
  {
    v115 = v171;
    sub_221BCC8C8();
    v160 = (v171 + *(v155 + 20));
    *v160 = 0;
    v160[1] = 0;
    OUTLINED_FUNCTION_13_8(v170);
    if (!v74)
    {
      sub_2219A1CC8(v170, &qword_27CFBA3E8, &qword_221BE0A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_145_2();
    sub_221B229DC(v161, v162, v163);
  }

  if (*(v115 + *(v155 + 20) + 8))
  {

    IntentsServices.InterfaceIdiom.init(rawValue:)(&v197);
    OUTLINED_FUNCTION_38_6();
    v164 = OUTLINED_FUNCTION_93_3();
    sub_221B22C2C(v164, v165);
    v166 = v197;
  }

  else
  {
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_183_2();
    v166 = 10;
  }

  *(v8 + v202[9]) = v166;
LABEL_60:
  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF8D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  MEMORY[0x28223BE20](v4);
  *&v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  MEMORY[0x28223BE20](v6 - 8);
  *&v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = sub_221AE9B04(KeyPath, v12);

  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = sub_221AE9B04(v14, v15);

  v17 = *(a1 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20));
  result = swift_beginAccess();
  v19 = 0;
  v20 = *(v17 + 136);
  if ((v20 & 1) == 0)
  {
    v19 = *(v17 + 128);
    if (v19 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v78 = v19;
  v85 = v20;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v77 = sub_221AE9B5C(v21, v22);
  v24 = v23;

  v84 = v24 & 1;
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v76 = sub_221AE9B04(v25, v26);

  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v75 = sub_221AE9B04(v27, v28);

  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v31 = sub_221AE9C28(v29, v30);
  v74 = v32;

  result = swift_beginAccess();
  v33 = 0;
  if ((*(v17 + 56) & 1) == 0)
  {
    v33 = *(v17 + 48);
    if (v33 < 0)
    {
      goto LABEL_19;
    }
  }

  v83 = *(v17 + 56);
  result = swift_beginAccess();
  v34 = 0;
  v35 = *(v17 + 40);
  if ((v35 & 1) == 0)
  {
    v34 = *(v17 + 32);
    if (v34 < 0)
    {
      goto LABEL_20;
    }
  }

  v70 = v34;
  v71 = v33;
  v72 = v31;
  v73 = v16;
  v36 = v13;
  v82 = v35;
  v37 = swift_getKeyPath();
  v38 = swift_getKeyPath();
  v69 = sub_221AE9C28(v37, v38);
  v68 = v39;

  v40 = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v67 = sub_221AE9B04(v40, v41);

  v42 = OBJC_IVAR____TtCVVV18AppIntentsServices33AppIntentsProtobuf_ClientMessages20PerformActionRequest7OptionsP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__snippetEnvironment;
  swift_beginAccess();
  sub_2219A02E8(v17 + v42, v10, &unk_27CFBB740, &qword_221BE09F8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  sub_2219A1CC8(v10, &unk_27CFBB740, &qword_221BE09F8);
  if (EnumTagSinglePayload == 1)
  {
    v66 = 0u;
    v44 = 2;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v45 = v36;
  }

  else
  {
    v46 = v66;
    sub_2219A02E8(v17 + v42, v66, &unk_27CFBB740, &qword_221BE09F8);
    if (__swift_getEnumTagSinglePayload(v46, 1, v4) == 1)
    {
      v47 = v65;
      *(v65 + 44) = 0u;
      v47[1] = 0u;
      v47[2] = 0u;
      *v47 = 0u;
      sub_221BCC8C8();
      v48 = *(v4 + 64);
      v49 = type metadata accessor for AppIntentsProtobuf_Size(0);
      __swift_storeEnumTagSinglePayload(v47 + v48, 1, 1, v49);
      v45 = v36;
      if (__swift_getEnumTagSinglePayload(v46, 1, v4) != 1)
      {
        sub_2219A1CC8(v46, &unk_27CFBB740, &qword_221BE09F8);
      }
    }

    else
    {
      v47 = v65;
      sub_221B229DC(v46, v65, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
      v45 = v36;
    }

    sub_221B0A714(v47, v79);
    sub_221B22C2C(v47, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
    v65 = v79[1];
    v66 = v79[0];
    v63 = v79[3];
    v64 = v79[2];
    v61 = v79[5];
    v62 = v79[4];
    v44 = v80;
  }

  result = swift_beginAccess();
  v50 = *(v17 + 24);
  if (v50)
  {
    LOWORD(v51) = 0;
LABEL_17:
    result = sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
    v81 = v50;
    v52 = v85;
    v53 = v84;
    v54 = v83;
    v55 = v82;
    *a2 = v45;
    *(a2 + 1) = v73;
    *(a2 + 8) = v78;
    *(a2 + 16) = v52;
    *(a2 + 24) = v77;
    *(a2 + 32) = v53;
    *(a2 + 33) = v76;
    *(a2 + 34) = v75;
    v56 = v74;
    *(a2 + 40) = v72;
    *(a2 + 48) = v56;
    *(a2 + 56) = v71;
    *(a2 + 64) = v54;
    *(a2 + 72) = v70;
    *(a2 + 80) = v55;
    v57 = v68;
    *(a2 + 88) = v69;
    *(a2 + 96) = v57;
    *(a2 + 104) = v67;
    v58 = v65;
    *(a2 + 112) = v66;
    *(a2 + 128) = v58;
    v59 = v63;
    *(a2 + 144) = v64;
    *(a2 + 160) = v59;
    v60 = v61;
    *(a2 + 176) = v62;
    *(a2 + 192) = v60;
    *(a2 + 208) = v44;
    *(a2 + 212) = v51;
    *(a2 + 214) = v50;
    return result;
  }

  v51 = *(v17 + 16);
  if (!(v51 >> 16))
  {
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_221AF9560()
{
  OUTLINED_FUNCTION_55_4();
  v5 = v4;
  v164 = v6;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_51_4();
  v160 = v9;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_132_2();
  v162 = v11;
  v12 = OUTLINED_FUNCTION_133_3();
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(v12);
  v14 = OUTLINED_FUNCTION_8_1(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_51_4();
  v158 = v15;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_132_2();
  v161 = v17;
  v18 = OUTLINED_FUNCTION_133_3();
  v19 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v18);
  v20 = OUTLINED_FUNCTION_8_1(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_51_4();
  v157 = v21;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_132_2();
  v159 = v23;
  v24 = OUTLINED_FUNCTION_133_3();
  v25 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v24);
  v26 = OUTLINED_FUNCTION_8_1(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_51_4();
  v154 = v27;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_132_2();
  v156 = v29;
  v30 = OUTLINED_FUNCTION_133_3();
  v31 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v30);
  v32 = OUTLINED_FUNCTION_8_1(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_51_4();
  v153 = v33;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_132_2();
  v155 = v35;
  v36 = OUTLINED_FUNCTION_133_3();
  v37 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v36);
  v38 = OUTLINED_FUNCTION_8_1(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_51_4();
  v149 = v39;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_132_2();
  v152 = v41;
  v42 = OUTLINED_FUNCTION_133_3();
  v43 = type metadata accessor for AppIntentsProtobuf_Error(v42);
  v44 = OUTLINED_FUNCTION_8_1(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_30_8();
  v148 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  OUTLINED_FUNCTION_8_1(v46);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_104_2();
  v151 = v48;
  v49 = OUTLINED_FUNCTION_133_3();
  v147 = type metadata accessor for AppIntentsProtobuf_ActionOutput(v49);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30_8();
  v150 = v51;
  v52 = OUTLINED_FUNCTION_133_3();
  v53 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(v52);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_51_4();
  v145 = v55;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_91_6();
  v144 = v57;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_242_2();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_132_2();
  v146 = v64;
  v65 = OUTLINED_FUNCTION_133_3();
  v66 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(v65);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_30_8();
  v163 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  OUTLINED_FUNCTION_8_1(v69);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v70);
  v72 = v143 - v71;
  sub_2219A02E8(v5, v143 - v71, &unk_27CFBB780, &unk_221BDB150);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_48_8(v72);
  if (v73)
  {
    OUTLINED_FUNCTION_9_16();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v143[1] = v53;
    OUTLINED_FUNCTION_70_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_6_19();
        v111 = v148;
        sub_221B229DC(v72, v148, v112);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v113 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v113);
        v115 = v114;
        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(v111, v116);
        if (!v1)
        {
          *v0 = v115;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_33_7();
          v118 = v0;
          goto LABEL_34;
        }

        break;
      case 2:
        v94 = OUTLINED_FUNCTION_109_3();
        sub_221B229DC(v94, v152, v95);
        v96 = OUTLINED_FUNCTION_158_2();
        sub_221B22BD0(v96, v149, v97);
        v98 = OUTLINED_FUNCTION_116_6();
        sub_221AFAD64(v98, v99);
        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_183_2();
        if (!v1)
        {
          goto LABEL_14;
        }

        break;
      case 3:
        v100 = OUTLINED_FUNCTION_109_3();
        sub_221B229DC(v100, v156, v101);
        v102 = OUTLINED_FUNCTION_158_2();
        sub_221B22BD0(v102, v154, v103);
        v2 = v143[2];
        v104 = OUTLINED_FUNCTION_116_6();
        sub_221AFC9AC(v104, v105);
        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_183_2();
        if (!v1)
        {
LABEL_14:
          OUTLINED_FUNCTION_118_5();
          goto LABEL_33;
        }

        break;
      case 4:
        v86 = OUTLINED_FUNCTION_109_3();
        v87 = v159;
        sub_221B229DC(v86, v159, v88);
        v89 = OUTLINED_FUNCTION_158_2();
        sub_221B22BD0(v89, v157, v90);
        v2 = v143[3];
        v91 = OUTLINED_FUNCTION_116_6();
        sub_221AFD44C(v91, v92);
        if (!v1)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_9_16();
        v93 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest;
        goto LABEL_25;
      case 5:
        v119 = OUTLINED_FUNCTION_109_3();
        v87 = v161;
        sub_221B229DC(v119, v161, v120);
        v121 = OUTLINED_FUNCTION_158_2();
        sub_221B22BD0(v121, v158, v122);
        v2 = v144;
        v123 = OUTLINED_FUNCTION_116_6();
        sub_221AFDE68(v124, v123);
        if (!v1)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_9_16();
        v93 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest;
        goto LABEL_25;
      case 6:
        v125 = OUTLINED_FUNCTION_109_3();
        v87 = v162;
        sub_221B229DC(v125, v162, v126);
        OUTLINED_FUNCTION_158_2();
        OUTLINED_FUNCTION_244_2();
        sub_221B22BD0(v127, v128, v129);
        v2 = v145;
        v130 = OUTLINED_FUNCTION_116_6();
        sub_221AFE3A8(v130, v131);
        if (v1)
        {
          OUTLINED_FUNCTION_9_16();
          v93 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest;
          goto LABEL_25;
        }

LABEL_32:
        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_183_2();
        OUTLINED_FUNCTION_118_5();
LABEL_33:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_33_7();
        v118 = v2;
        goto LABEL_34;
      case 7:
        v106 = OUTLINED_FUNCTION_109_3();
        v87 = v155;
        sub_221B229DC(v106, v155, v107);
        v108 = OUTLINED_FUNCTION_158_2();
        v109 = v153;
        sub_221B22BD0(v108, v153, v110);
        sub_221AFBF00(v109, v3);
        if (v1)
        {
          OUTLINED_FUNCTION_9_16();
          v93 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest;
LABEL_25:
          v132 = v93;
          v133 = v87;
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_183_2();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_33_7();
        v118 = v3;
LABEL_34:
        v142 = v164;
        goto LABEL_35;
      default:
        v75 = OUTLINED_FUNCTION_109_3();
        v76 = v163;
        sub_221B229DC(v75, v163, v77);
        v78 = v151;
        sub_2219A02E8(v76 + *(v66 + 24), v151, &qword_27CFB9D00, &unk_221BDB1B0);
        v79 = OUTLINED_FUNCTION_148_3();
        v80 = v147;
        OUTLINED_FUNCTION_49_4(v79, v81, v147);
        if (v73)
        {
          v134 = v150;
          sub_221BCC8C8();
          v82 = *(v80 + 20);
          v135 = v1;
          if (qword_27CFB6DA0 != -1)
          {
            swift_once();
          }

          *(v134 + v82) = qword_27CFB9450;
          v83 = OUTLINED_FUNCTION_148_3();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, v84, v80);

          if (EnumTagSinglePayload != 1)
          {
            sub_2219A1CC8(v78, &qword_27CFB9D00, &unk_221BDB1B0);
          }
        }

        else
        {
          v134 = v150;
          sub_221B229DC(v78, v150, type metadata accessor for AppIntentsProtobuf_ActionOutput);
          v135 = v1;
        }

        v136 = v146;
        sub_221AF9F84(v134, v146);
        if (v135)
        {
          OUTLINED_FUNCTION_9_16();
          OUTLINED_FUNCTION_142_3();
          v133 = v163;
LABEL_26:
          sub_221B22C2C(v133, v132);
        }

        else
        {
          OUTLINED_FUNCTION_9_16();
          v137 = v163;
          v138 = v136;
          v140 = *v163;
          v139 = v163[1];

          OUTLINED_FUNCTION_142_3();
          sub_221B22C2C(v137, v141);
          *(v138 + 224) = v140;
          *(v138 + 232) = v139;
          OUTLINED_FUNCTION_169_2();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_33_7();
          v118 = OUTLINED_FUNCTION_131_3();
LABEL_35:
          sub_221B229DC(v118, v142, v117);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF9F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v133 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  MEMORY[0x28223BE20](v133);
  v128 = (&v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v132 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = &v125 - v7;
  v145 = type metadata accessor for AppIntentsProtobuf_Action(0);
  MEMORY[0x28223BE20](v145);
  v130 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v131 = &v125 - v10;
  MEMORY[0x28223BE20](v11);
  v137 = &v125 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v125 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  MEMORY[0x28223BE20](v15 - 8);
  v139 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v146 = &v125 - v18;
  MEMORY[0x28223BE20](v19);
  v143 = &v125 - v20;
  MEMORY[0x28223BE20](v21);
  v144 = &v125 - v22;
  v141 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v141);
  v135 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v136 = &v125 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v26 - 8);
  v140 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v142 = &v125 - v29;
  v30 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  MEMORY[0x28223BE20](v30);
  v32 = (&v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v35 = &v125 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v125 - v40;
  KeyPath = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v147 = a1;
  sub_221AE9C84(KeyPath, v43, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);

  sub_2219A02E8(v41, v38, &qword_27CFB9928, &qword_221BE4A20);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (__swift_getEnumTagSinglePayload(v38, 1, v30) != 1)
  {
    sub_221B229DC(v38, v35, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
    sub_221B22BD0(v35, v32, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
    v47 = *(v30 + 32);
    v48 = (v32 + *(v30 + 28));
    v49 = *v48;
    v50 = v48[1];
    v51 = *v32;
    v52 = v32[1];
    v53 = *(v32 + v47 + 8);
    v126 = *(v32 + v47);
    v127 = v49;

    v125 = v35;
    sub_221B22C2C(v32, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
    v44 = swift_allocObject();
    v54 = v126;
    v44[2] = v127;
    v44[3] = v50;
    v44[4] = v51;
    v44[5] = v54;
    v44[6] = v53;
    v44[7] = v52;
    sub_221B22C2C(v125, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
    v46 = &off_283513A88;
    v45 = &type metadata for AnyConfirmationActionName;
  }

  sub_2219A1CC8(v41, &qword_27CFB9928, &qword_221BE4A20);
  v151[0] = v44;
  v151[1] = 0;
  v151[2] = 0;
  v151[3] = v45;
  v151[4] = v46;
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v57 = v142;
  v58 = v147;
  sub_221AE9C84(v55, v56, type metadata accessor for AppIntentsProtobuf_Dialog);

  v59 = v140;
  sub_2219A02E8(v57, v140, &unk_27CFBB790, &qword_221BDADD8);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (__swift_getEnumTagSinglePayload(v59, 1, v141) != 1)
  {
    v65 = v136;
    sub_221B229DC(v59, v136, type metadata accessor for AppIntentsProtobuf_Dialog);
    v66 = v135;
    sub_221B22BD0(v65, v135, type metadata accessor for AppIntentsProtobuf_Dialog);
    v64 = sub_221B0B9B8(v66);
    v63 = v67;
    v62 = v68;
    sub_221B22C2C(v65, type metadata accessor for AppIntentsProtobuf_Dialog);
    v61 = &type metadata for AnyDialog;
    v60 = &off_283512A28;
  }

  sub_2219A1CC8(v57, &unk_27CFBB790, &qword_221BDADD8);
  v152[0] = v64;
  v152[1] = v63;
  v152[2] = v62;
  v152[3] = v61;
  v152[4] = v60;
  v69 = swift_getKeyPath();
  v70 = swift_getKeyPath();
  v71 = v144;
  sub_221AE9C84(v69, v70, type metadata accessor for AppIntentsProtobuf_Action);

  v72 = v143;
  sub_2219A02E8(v71, v143, &unk_27CFBB690, &qword_221BDADD0);
  v73 = v145;
  if (__swift_getEnumTagSinglePayload(v72, 1, v145) == 1)
  {
    sub_2219A1CC8(v71, &unk_27CFBB690, &qword_221BDADD0);
    v148 = 0u;
    v149 = 0u;
    v150 = 0;
    v74 = v146;
  }

  else
  {
    v75 = v72;
    v76 = v138;
    sub_221B229DC(v75, v138, type metadata accessor for AppIntentsProtobuf_Action);
    v77 = v137;
    sub_221B22BD0(v76, v137, type metadata accessor for AppIntentsProtobuf_Action);
    v78 = v165;
    sub_221AF2910(v77, v79, v80, v81, v82, v83, v84, v85, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
    v74 = v146;
    v165 = v78;
    if (v78)
    {
      sub_221B22C2C(v76, type metadata accessor for AppIntentsProtobuf_Action);
      sub_2219A1CC8(v71, &unk_27CFBB690, &qword_221BDADD0);
      v86 = 0;
      v87 = 0;
      goto LABEL_22;
    }

    sub_221B22C2C(v76, type metadata accessor for AppIntentsProtobuf_Action);
    sub_2219A1CC8(v71, &unk_27CFBB690, &qword_221BDADD0);
  }

  v153[0] = v148;
  v153[1] = v149;
  v154 = v150;
  v88 = *(v58 + *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20));
  v89 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  swift_beginAccess();
  v155 = *(v88 + v89) & 1;
  v90 = swift_getKeyPath();
  v91 = swift_getKeyPath();
  sub_221AE9C84(v90, v91, type metadata accessor for AppIntentsProtobuf_Action);

  v92 = v139;
  sub_2219A02E8(v74, v139, &unk_27CFBB690, &qword_221BDADD0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v73) == 1)
  {
    sub_2219A1CC8(v74, &unk_27CFBB690, &qword_221BDADD0);
    v148 = 0u;
    v149 = 0u;
    v150 = 0;
  }

  else
  {
    v93 = v92;
    v94 = v131;
    sub_221B229DC(v93, v131, type metadata accessor for AppIntentsProtobuf_Action);
    v95 = v130;
    sub_221B22BD0(v94, v130, type metadata accessor for AppIntentsProtobuf_Action);
    v96 = v165;
    sub_221AF2910(v95, v97, v98, v99, v100, v101, v102, v103, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
    v165 = v96;
    if (v96)
    {
      sub_221B22C2C(v94, type metadata accessor for AppIntentsProtobuf_Action);
      sub_2219A1CC8(v74, &unk_27CFBB690, &qword_221BDADD0);
      v87 = 0;
      v86 = 1;
      goto LABEL_22;
    }

    sub_221B22C2C(v94, type metadata accessor for AppIntentsProtobuf_Action);
    sub_2219A1CC8(v74, &unk_27CFBB690, &qword_221BDADD0);
  }

  v156[0] = v148;
  v156[1] = v149;
  v157 = v150;
  v104 = swift_getKeyPath();
  v105 = swift_getKeyPath();
  v106 = sub_221AE9BC4(v104, v105);
  v108 = v107;

  if (v108)
  {
    v109 = 0;
  }

  else
  {
    v109 = v106;
  }

  v158 = v109;
  v110 = swift_getKeyPath();
  v111 = swift_getKeyPath();
  v112 = v134;
  sub_221AE9C84(v110, v111, type metadata accessor for AppIntentsProtobuf_ViewSnippet);

  v113 = v132;
  sub_2219A02E8(v112, v132, &qword_27CFB9920, &unk_221BDADC0);
  if (__swift_getEnumTagSinglePayload(v113, 1, v133) == 1)
  {
    v114 = 0;
    v115 = 0;
    v116 = 0;
LABEL_27:
    v124 = sub_2219A1CC8(v112, &qword_27CFB9920, &unk_221BDADC0);
    v159 = v116;
    v160 = 0;
    v161 = 0;
    v162 = v115;
    v163 = v114;
    MEMORY[0x28223BE20](v124);
    *(&v125 - 2) = v58;
    v164 = sub_221B0DCB0(0, sub_221B220D8);
    sub_2219A02E8(v151, v129, &unk_27CFBB7A0, &qword_221BD2930);
    sub_221B22C2C(v58, type metadata accessor for AppIntentsProtobuf_ActionOutput);
    v123 = v151;
    v121 = &unk_27CFBB7A0;
    v122 = &qword_221BD2930;
    return sub_2219A1CC8(v123, v121, v122);
  }

  v117 = v128;
  sub_221B229DC(v113, v128, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  v115 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
  v118 = v165;
  v119 = sub_221B0CC78(v117);
  v165 = v118;
  if (!v118)
  {
    v116 = v119;
    sub_221B22C2C(v117, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
    v114 = &protocol witness table for LNViewSnippet;
    goto LABEL_27;
  }

  sub_221B22C2C(v117, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  sub_2219A1CC8(v112, &qword_27CFB9920, &unk_221BDADC0);
  v86 = 1;
  v87 = 1;
LABEL_22:
  sub_221B22C2C(v58, type metadata accessor for AppIntentsProtobuf_ActionOutput);
  sub_2219A1CC8(v151, &unk_27CFBB7B0, &unk_221BE4C10);
  result = sub_2219A1CC8(v152, &qword_27CFB8320, &unk_221BD1D60);
  if (v86)
  {
    result = sub_2219A1CC8(v153, &unk_27CFBB7C0, &qword_221BE4C20);
  }

  if (v87)
  {
    v121 = &unk_27CFBB7C0;
    v122 = &qword_221BE4C20;
    v123 = v156;
    return sub_2219A1CC8(v123, v121, v122);
  }

  return result;
}

void *sub_221AFAD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v142 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v142);
  v132 = (&v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v131 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v141 = &v124 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  MEMORY[0x28223BE20](v8 - 8);
  v130 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v140 = &v124 - v11;
  MEMORY[0x28223BE20](v12);
  v147 = &v124 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9C78, &qword_221BDB0F8);
  MEMORY[0x28223BE20](v14 - 8);
  v139 = &v124 - v15;
  v138 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  MEMORY[0x28223BE20](v138);
  v145 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  v143 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v144 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v166 = &v124 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v20 - 8);
  v151 = &v124 - v21;
  *&v152 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v152);
  v153 = (&v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v150);
  v148 = (&v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v24 - 8);
  v146 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v149 = &v124 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v124 - v29;
  v31 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v31);
  v33 = (&v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_221BCC558();
  v124 = *(v34 - 8);
  v125 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0) + 20);
  v129 = a1;
  v38 = *(a1 + v37);
  v39 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v38 + v39, v30, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    *v33 = 0;
    v33[1] = 0;
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v30, 1, v31) != 1)
    {
      sub_2219A1CC8(v30, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v30, v33, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v40 = v154;
  sub_221AE9E30(v33);
  sub_221B22C2C(v33, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v40)
  {
    return sub_221B22C2C(v129, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
  }

  (*(v124 + 32))(v128, v36, v125);
  v42 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  v43 = v149;
  sub_2219A02E8(v38 + v42, v149, &unk_27CFBB790, &qword_221BDADD8);
  v44 = v150;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v150);
  sub_2219A1CC8(v43, &unk_27CFBB790, &qword_221BDADD8);
  if (EnumTagSinglePayload == 1)
  {
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    v46 = v151;
    v47 = v152;
  }

  else
  {
    v48 = v146;
    sub_2219A02E8(v38 + v42, v146, &unk_27CFBB790, &qword_221BDADD8);
    if (__swift_getEnumTagSinglePayload(v48, 1, v44) == 1)
    {
      v49 = MEMORY[0x277D84F90];
      v50 = v148;
      *v148 = 0;
      *(v50 + 8) = 1;
      v50[2] = v49;
      v50[3] = v49;
      v50[4] = v49;
      v50[5] = v49;
      v50[6] = v49;
      v50[7] = v49;
      v50[8] = v49;
      v50[9] = sub_221BCD2C8();
      v50[10] = v49;
      v50[11] = sub_221BCD2C8();
      sub_221BCC8C8();
      v51 = (v50 + v44[16]);
      *v51 = 0;
      v51[1] = 0;
      *(v50 + v44[17]) = xmmword_221BD8640;
      v52 = (v50 + v44[18]);
      *v52 = 0;
      v52[1] = 0;
      v53 = (v50 + v44[19]);
      *v53 = 0;
      v53[1] = 0;
      v54 = __swift_getEnumTagSinglePayload(v48, 1, v44);
      v46 = v151;
      v47 = v152;
      if (v54 != 1)
      {
        sub_2219A1CC8(v48, &unk_27CFBB790, &qword_221BDADD8);
      }
    }

    else
    {
      v50 = v148;
      sub_221B229DC(v48, v148, type metadata accessor for AppIntentsProtobuf_Dialog);
      v46 = v151;
      v47 = v152;
    }

    v55 = sub_221B0B9B8(v50);
    *(&v163 + 1) = &type metadata for AnyDialog;
    v164 = &off_283512A28;
    *&v162 = v55;
    *(&v162 + 1) = v56;
    *&v163 = v57;
  }

  v58 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  swift_beginAccess();
  sub_2219A02E8(v38 + v58, v46, &unk_27CFBB7D0, &unk_221BE4E60);
  if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
  {
    v59 = v153;
    *v153 = 0;
    v59[1] = 0xE000000000000000;
    sub_221BCC8C8();
    v60 = (v59 + *(v47 + 24));
    *v60 = 0;
    v60[1] = 0;
    v61 = (v59 + *(v47 + 28));
    *v61 = 0;
    v61[1] = 0;
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) != 1)
    {
      sub_2219A1CC8(v46, &unk_27CFBB7D0, &unk_221BE4E60);
    }
  }

  else
  {
    sub_221B229DC(v46, v153, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  }

  v160 = &type metadata for AnyIntentParameterMetadata;
  v161 = &protocol witness table for AnyIntentParameterMetadata;
  v62 = swift_allocObject();
  *&v159 = v62;
  v63 = v153;
  v65 = *v153;
  v64 = v153[1];
  v66 = *(v47 + 24);
  v67 = (v153 + *(v47 + 28));
  v68 = v67[1];
  v69 = (v153 + v66);
  v70 = v69[1];
  *&v71 = *v67;
  v154 = v71;
  *&v71 = *v69;
  v152 = v71;

  sub_221B22C2C(v63, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  *(v62 + 16) = v65;
  *(v62 + 24) = v64;
  *&v72 = v152;
  *(&v72 + 1) = v70;
  *&v73 = v154;
  *(&v73 + 1) = v68;
  *(v62 + 32) = v72;
  *(v62 + 48) = v73;
  v74 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
  swift_beginAccess();
  v75 = *(v38 + v74);
  v76 = *(v75 + 16);
  v77 = MEMORY[0x277D84F90];
  if (v76)
  {
    v137 = 0;
    v158 = MEMORY[0x277D84F90];

    sub_2219A3204(0, v76, 0);
    v77 = v158;
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v78 = 0;
    v79 = v144;
    v134 = v75 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v135 = result;
    v127 = xmmword_221BD8630;
    v126 = xmmword_221BD8640;
    v80 = v145;
    v136 = v75;
    v133 = v76;
    while (v78 < *(v75 + 16))
    {
      v81 = *(v143 + 72);
      v148 = v78;
      v82 = v166;
      sub_221B22BD0(v134 + v81 * v78, v166, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      sub_221B22BD0(v82, v79, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      v83 = v139;
      sub_2219A02E8(v79 + *(v155 + 24), v139, &qword_27CFB9C78, &qword_221BDB0F8);
      v84 = v138;
      v85 = __swift_getEnumTagSinglePayload(v83, 1, v138);
      *&v154 = v77;
      if (v85 == 1)
      {
        *v80 = 0;
        v80[1] = 0xE000000000000000;
        v80[2] = MEMORY[0x277D84F90];
        sub_221BCC8C8();
        v86 = (v80 + *(v84 + 28));
        *v86 = 0;
        v86[1] = 0;
        v87 = *(v84 + 32);
        v88 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
        __swift_storeEnumTagSinglePayload(v80 + v87, 1, 1, v88);
        if (__swift_getEnumTagSinglePayload(v83, 1, v84) != 1)
        {
          sub_2219A1CC8(v83, &qword_27CFB9C78, &qword_221BDB0F8);
        }
      }

      else
      {
        sub_221B229DC(v83, v80, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
      }

      v89 = v80[1];
      *&v152 = *v80;
      v90 = *(v84 + 32);
      v91 = (v80 + *(v84 + 28));
      v92 = *v91;
      v93 = v91[1];
      v149 = v80[2];
      v150 = v92;
      v146 = v90;
      v94 = v80 + v90;
      v95 = v140;
      sub_2219A02E8(v94, v140, &qword_27CFB85E8, &unk_221BD86E0);
      v96 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
      v97 = 1;
      v98 = __swift_getEnumTagSinglePayload(v95, 1, v96);
      v151 = v93;

      v153 = v89;
      v99 = v149;

      v100 = v95;
      v80 = v145;
      sub_2219A1CC8(v100, &qword_27CFB85E8, &unk_221BD86E0);
      if (v98 != 1)
      {
        v101 = v130;
        sub_2219A02E8(v80 + v146, v130, &qword_27CFB85E8, &unk_221BD86E0);
        if (__swift_getEnumTagSinglePayload(v101, 1, v96) == 1)
        {
          v102 = v147;
          sub_221BCC8C8();
          *(v102 + v96[5]) = v126;
          v103 = v102 + v96[6];
          *v103 = 0;
          *(v103 + 8) = 1;
          v104 = v102 + v96[7];
          *v104 = 0;
          *(v104 + 8) = 1;
          if (__swift_getEnumTagSinglePayload(v101, 1, v96) != 1)
          {
            sub_2219A1CC8(v101, &qword_27CFB85E8, &unk_221BD86E0);
          }
        }

        else
        {
          sub_221B229DC(v101, v147, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
        }

        v97 = 0;
      }

      v105 = v147;
      __swift_storeEnumTagSinglePayload(v147, v97, 1, v96);
      v106 = v135;
      v107 = sub_221B0F228(v105);
      sub_2219A1CC8(v105, &qword_27CFB85E8, &unk_221BD86E0);
      if (v107)
      {
        v108 = v106;
      }

      else
      {
        v108 = 0;
      }

      if (v107)
      {
        v109 = &protocol witness table for LNImage;
      }

      else
      {
        v109 = 0;
      }

      sub_221B22C2C(v80, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
      v156[0] = v152;
      v156[1] = v153;
      v156[2] = v150;
      v156[3] = v151;
      v156[4] = v99;
      v156[5] = v107;
      v156[6] = 0;
      v156[7] = 0;
      v156[8] = v108;
      v156[9] = v109;
      v110 = *(v155 + 28);
      v79 = v144;
      v111 = v141;
      sub_2219A02E8(&v144[v110], v141, &unk_27CFBB660, &qword_221BE4610);
      v112 = v142;
      if (__swift_getEnumTagSinglePayload(v111, 1, v142) == 1)
      {
        sub_221B22C2C(v166, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
        sub_2219A1CC8(v111, &unk_27CFBB660, &qword_221BE4610);
        v113 = 0;
        v77 = v154;
      }

      else
      {
        sub_2219A1CC8(v111, &unk_27CFBB660, &qword_221BE4610);
        v114 = v79 + v110;
        v115 = v131;
        sub_2219A02E8(v114, v131, &unk_27CFBB660, &qword_221BE4610);
        v116 = __swift_getEnumTagSinglePayload(v115, 1, v112);
        v77 = v154;
        if (v116 == 1)
        {
          v117 = v132;
          *v132 = v127;
          sub_221BCC8C8();
          if (__swift_getEnumTagSinglePayload(v115, 1, v112) != 1)
          {
            sub_2219A1CC8(v115, &unk_27CFBB660, &qword_221BE4610);
          }
        }

        else
        {
          v117 = v132;
          sub_221B229DC(v115, v132, type metadata accessor for AppIntentsProtobuf_Value);
        }

        v118 = v137;
        sub_221B14BC4(*v117, v117[1], &qword_27CFBB680, 0x277D23958);
        v137 = v118;
        if (v118)
        {

          sub_221B22C2C(v79, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
          sub_221B22C2C(v166, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
          sub_221B22C2C(v117, type metadata accessor for AppIntentsProtobuf_Value);
          sub_221B220F4(v156);

          sub_221B22C2C(v129, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
          __swift_destroy_boxed_opaque_existential_0(&v159);
          sub_2219A1CC8(&v162, &qword_27CFB8320, &unk_221BD1D60);
          return (*(v124 + 8))(v128, v125);
        }

        v113 = v119;
        sub_221B22C2C(v166, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
        sub_221B22C2C(v117, type metadata accessor for AppIntentsProtobuf_Value);
      }

      v156[10] = v113;
      v120 = *v79;
      sub_221B22C2C(v79, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      v156[11] = v120;
      memcpy(v157, v156, sizeof(v157));
      v158 = v77;
      v122 = *(v77 + 16);
      v121 = *(v77 + 24);
      if (v122 >= v121 >> 1)
      {
        sub_2219A3204((v121 > 1), v122 + 1, 1);
        v77 = v158;
      }

      v78 = v148 + 1;
      *(v77 + 16) = v122 + 1;
      result = memcpy((v77 + 96 * v122 + 32), v157, 0x60uLL);
      v75 = v136;
      if (v133 == v78)
      {

        goto LABEL_49;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_49:
    sub_221B22C2C(v129, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
    *__src = v162;
    *&__src[16] = v163;
    *&__src[32] = v164;
    sub_22198B358(&v159, &__src[40]);
    *&__src[80] = v77;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
    return memcpy((v128 + *(v123 + 28)), __src, 0x58uLL);
  }

  return result;
}

double sub_221AFBF00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v78 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  MEMORY[0x28223BE20](v78);
  v74 = (&v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
  v75 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v72 - v9;
  v76 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v76);
  v73 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v72 - v17;
  v19 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_221BCC558();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0) + 20);
  v83 = a1;
  v25 = *(a1 + v24);
  v26 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v25 + v26, v18, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    *v21 = 0;
    v21[1] = 0;
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      sub_2219A1CC8(v18, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v18, v21, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v27 = v84;
  sub_221AE9E30(v21);
  v28 = v27;
  sub_221B22C2C(v21, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v27)
  {
    sub_221B22C2C(v83, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
    return result;
  }

  (*(v80 + 32))(v82, v23, v81);
  v30 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  sub_2219A02E8(v25 + v30, v15, &unk_27CFBB790, &qword_221BDADD8);
  v31 = v76;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v76);
  sub_2219A1CC8(v15, &unk_27CFBB790, &qword_221BDADD8);
  if (EnumTagSinglePayload == 1)
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
  }

  else
  {
    v33 = v72;
    sub_2219A02E8(v25 + v30, v72, &unk_27CFBB790, &qword_221BDADD8);
    if (__swift_getEnumTagSinglePayload(v33, 1, v31) == 1)
    {
      v34 = MEMORY[0x277D84F90];
      v35 = v73;
      *v73 = 0;
      *(v35 + 8) = 1;
      v35[2] = v34;
      v35[3] = v34;
      v35[4] = v34;
      v35[5] = v34;
      v35[6] = v34;
      v35[7] = v34;
      v35[8] = v34;
      v35[9] = sub_221BCD2C8();
      v35[10] = v34;
      v35[11] = sub_221BCD2C8();
      sub_221BCC8C8();
      v36 = (v35 + v31[16]);
      *v36 = 0;
      v36[1] = 0;
      *(v35 + v31[17]) = xmmword_221BD8640;
      v37 = (v35 + v31[18]);
      *v37 = 0;
      v37[1] = 0;
      v38 = (v35 + v31[19]);
      *v38 = 0;
      v38[1] = 0;
      if (__swift_getEnumTagSinglePayload(v33, 1, v31) != 1)
      {
        sub_2219A1CC8(v33, &unk_27CFBB790, &qword_221BDADD8);
      }
    }

    else
    {
      v35 = v73;
      sub_221B229DC(v33, v73, type metadata accessor for AppIntentsProtobuf_Dialog);
    }

    v39 = sub_221B0B9B8(v35);
    *(&v87 + 1) = &type metadata for AnyDialog;
    v88 = &off_283512A28;
    *&v86 = v39;
    *(&v86 + 1) = v40;
    *&v87 = v41;
  }

  v42 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
  swift_beginAccess();
  v43 = *(v25 + v42);
  v44 = v43[2];
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v76 = 0;
    v92 = MEMORY[0x277D84F90];

    sub_2219A3224(0, v44, 0);
    v45 = v92;
    v46 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v73 = v43;
    v47 = v43 + v46;
    v84 = *(v75 + 72);
    do
    {
      v48 = v85;
      sub_221B22BD0(v47, v85, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
      v49 = *v48;
      v50 = *(v48 + 8);
      v51 = *(v48 + 16);
      v52 = *(v48 + 24);
      v53 = *(v48 + 32);

      sub_221B22C2C(v48, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
      if (v53)
      {
        v54 = 0x10002u >> (8 * v52);
      }

      else
      {
        v54 = 2;
      }

      v92 = v45;
      v56 = *(v45 + 16);
      v55 = *(v45 + 24);
      v57 = v45;
      if (v56 >= v55 >> 1)
      {
        sub_2219A3224(v55 > 1, v56 + 1, 1);
        v57 = v92;
      }

      *(v57 + 16) = v56 + 1;
      v58 = v57 + 32 * v56;
      *(v58 + 32) = v49;
      *(v58 + 40) = v50;
      *(v58 + 48) = v51;
      *(v58 + 56) = v54;
      v47 += v84;
      --v44;
      v45 = v57;
    }

    while (v44);

    v28 = v76;
  }

  KeyPath = swift_getKeyPath();
  v60 = swift_getKeyPath();
  v61 = v79;
  v62 = v83;
  sub_221AE9C84(KeyPath, v60, type metadata accessor for AppIntentsProtobuf_ViewSnippet);

  v63 = v77;
  sub_2219A02E8(v61, v77, &qword_27CFB9920, &unk_221BDADC0);
  if (__swift_getEnumTagSinglePayload(v63, 1, v78) == 1)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v67 = v74;
    sub_221B229DC(v63, v74, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
    v64 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v68 = sub_221B0CC78(v67);
    if (v28)
    {

      sub_221B22C2C(v67, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
      sub_2219A1CC8(v61, &qword_27CFB9920, &unk_221BDADC0);
      sub_221B22C2C(v62, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
      sub_2219A1CC8(&v86, &qword_27CFB8320, &unk_221BD1D60);
      (*(v80 + 8))(v82, v81);
      return result;
    }

    v66 = v68;
    sub_221B22C2C(v67, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
    v65 = &protocol witness table for LNViewSnippet;
  }

  sub_2219A1CC8(v61, &qword_27CFB9920, &unk_221BDADC0);
  sub_221B22C2C(v62, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
  v89 = v86;
  v90 = v87;
  v91 = v88;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  v70 = v82 + *(v69 + 28);
  result = *&v89;
  v71 = v90;
  *v70 = v89;
  *(v70 + 16) = v71;
  *(v70 + 32) = v91;
  *(v70 + 40) = v45;
  *(v70 + 48) = v66;
  *(v70 + 56) = 0;
  *(v70 + 64) = 0;
  *(v70 + 72) = v64;
  *(v70 + 80) = v65;
  return result;
}

void *sub_221AFC9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v77 - v4;
  v87 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  MEMORY[0x28223BE20](v87);
  v89 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v77 - v7;
  *&v85 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v85);
  *&v86 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v83);
  v80 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v77 - v15;
  v17 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_221BCC558();
  v90 = *(v20 - 8);
  v91 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(0) + 20);
  v101 = a1;
  v24 = *(a1 + v23);
  v25 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v24 + v25, v16, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    *v19 = 0;
    v19[1] = 0;
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_2219A1CC8(v16, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v16, v19, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v26 = v93;
  sub_221AE9E30(v19);
  sub_221B22C2C(v19, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v26)
  {
    return sub_221B22C2C(v101, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
  }

  v79 = 0;
  (*(v90 + 32))(v92, v22, v91);
  v28 = (v24 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  swift_beginAccess();
  v29 = v28[1];
  v78 = *v28;
  v30 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  v31 = v82;
  sub_2219A02E8(v24 + v30, v82, &unk_27CFBB790, &qword_221BDADD8);
  v32 = v83;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v83);
  v93 = v29;

  sub_2219A1CC8(v31, &unk_27CFBB790, &qword_221BDADD8);
  if (EnumTagSinglePayload == 1)
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v34 = v86;
    v35 = v85;
  }

  else
  {
    v36 = v81;
    sub_2219A02E8(v24 + v30, v81, &unk_27CFBB790, &qword_221BDADD8);
    v37 = __swift_getEnumTagSinglePayload(v36, 1, v32);
    v35 = v85;
    if (v37 == 1)
    {
      v38 = v80;
      *v80 = 0;
      *(v38 + 8) = 1;
      v39 = MEMORY[0x277D84F90];
      v38[2] = MEMORY[0x277D84F90];
      v38[3] = v39;
      v38[4] = v39;
      v38[5] = v39;
      v38[6] = v39;
      v38[7] = v39;
      v38[8] = v39;
      v38[9] = sub_221BCD2C8();
      v38[10] = v39;
      v40 = v81;
      v38[11] = sub_221BCD2C8();
      sub_221BCC8C8();
      v41 = (v38 + v32[16]);
      *v41 = 0;
      v41[1] = 0;
      *(v38 + v32[17]) = xmmword_221BD8640;
      v42 = (v38 + v32[18]);
      *v42 = 0;
      v42[1] = 0;
      v43 = (v38 + v32[19]);
      *v43 = 0;
      v43[1] = 0;
      v44 = __swift_getEnumTagSinglePayload(v40, 1, v32);
      v34 = v86;
      if (v44 != 1)
      {
        sub_2219A1CC8(v40, &unk_27CFBB790, &qword_221BDADD8);
      }
    }

    else
    {
      v38 = v80;
      sub_221B229DC(v36, v80, type metadata accessor for AppIntentsProtobuf_Dialog);
      v34 = v86;
    }

    v45 = sub_221B0B9B8(v38);
    *(&v98 + 1) = &type metadata for AnyDialog;
    v99 = &off_283512A28;
    *&v97 = v45;
    *(&v97 + 1) = v46;
    *&v98 = v47;
  }

  v48 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  swift_beginAccess();
  v49 = v24 + v48;
  v50 = v84;
  sub_2219A02E8(v49, v84, &unk_27CFBB7D0, &unk_221BE4E60);
  v51 = v24;
  if (__swift_getEnumTagSinglePayload(v50, 1, v35) == 1)
  {
    *v34 = 0;
    v34[1] = 0xE000000000000000;
    sub_221BCC8C8();
    v52 = (v34 + *(v35 + 24));
    *v52 = 0;
    v52[1] = 0;
    v53 = (v34 + *(v35 + 28));
    *v53 = 0;
    v53[1] = 0;
    if (__swift_getEnumTagSinglePayload(v50, 1, v35) != 1)
    {
      sub_2219A1CC8(v50, &unk_27CFBB7D0, &unk_221BE4E60);
    }
  }

  else
  {
    sub_221B229DC(v50, v34, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  }

  v95 = &type metadata for AnyIntentParameterMetadata;
  v96 = &protocol witness table for AnyIntentParameterMetadata;
  v54 = swift_allocObject();
  *&v94 = v54;
  v56 = *v34;
  v55 = v34[1];
  v57 = (v34 + *(v35 + 28));
  v58 = v57[1];
  v59 = (v34 + *(v35 + 24));
  v60 = v59[1];
  *&v61 = *v57;
  v86 = v61;
  *&v61 = *v59;
  v85 = v61;

  sub_221B22C2C(v34, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  *(v54 + 16) = v56;
  *(v54 + 24) = v55;
  *&v63 = v85;
  *&v62 = v86;
  *(&v63 + 1) = v60;
  *(&v62 + 1) = v58;
  *(v54 + 32) = v63;
  *(v54 + 48) = v62;
  v64 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  swift_beginAccess();
  v65 = v51 + v64;
  v66 = v88;
  sub_2219A02E8(v65, v88, &qword_27CFB95E0, &qword_221BE0A10);
  v67 = v87;
  if (__swift_getEnumTagSinglePayload(v66, 1, v87) == 1)
  {
    v68 = v89;
    *v89 = xmmword_221BD8630;
    sub_221BCC8C8();
    v69 = __swift_getEnumTagSinglePayload(v66, 1, v67);
    v70 = v79;
    if (v69 != 1)
    {
      sub_2219A1CC8(v66, &qword_27CFB95E0, &qword_221BE0A10);
    }
  }

  else
  {
    v68 = v89;
    sub_221B229DC(v66, v89, type metadata accessor for AppIntentsProtobuf_ValueType);
    v70 = v79;
  }

  sub_221B14BC4(*v68, v68[1], &unk_27CFBB670, 0x277D23960);
  if (v70)
  {

    sub_221B22C2C(v101, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
    sub_221B22C2C(v68, type metadata accessor for AppIntentsProtobuf_ValueType);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    sub_2219A1CC8(&v97, &qword_27CFB8320, &unk_221BD1D60);
    return (*(v90 + 8))(v92, v91);
  }

  else
  {
    v72 = v71;
    sub_221B22C2C(v68, type metadata accessor for AppIntentsProtobuf_ValueType);
    v73 = (v51 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
    swift_beginAccess();
    v75 = *v73;
    v74 = v73[1];

    sub_221B22C2C(v101, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
    *__src = v78;
    *&__src[8] = v93;
    *&__src[16] = v97;
    *&__src[32] = v98;
    *&__src[48] = v99;
    sub_22198B358(&v94, &__src[56]);
    *&__src[96] = v72;
    *&__src[104] = v75;
    *&__src[112] = v74;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
    return memcpy((v92 + *(v76 + 28)), __src, 0x78uLL);
  }
}

void *sub_221AFD44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v70 - v4;
  v77 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  MEMORY[0x28223BE20](v77);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v70 - v7;
  v75 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v75);
  *&v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v73);
  v71 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v70 - v15;
  v17 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_221BCC558();
  v80 = *(v20 - 8);
  v81 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0) + 20);
  v94 = a1;
  v24 = *(a1 + v23);
  v25 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v24 + v25, v16, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    *v19 = 0;
    v19[1] = 0;
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_2219A1CC8(v16, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v16, v19, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v26 = v83;
  sub_221AE9E30(v19);
  sub_221B22C2C(v19, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v26)
  {
    return sub_221B22C2C(v94, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);
  }

  (*(v80 + 32))(v82, v22, v81);
  v28 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  v29 = v72;
  sub_2219A02E8(v24 + v28, v72, &unk_27CFBB790, &qword_221BDADD8);
  v30 = v73;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v73);
  sub_2219A1CC8(v29, &unk_27CFBB790, &qword_221BDADD8);
  if (EnumTagSinglePayload == 1)
  {
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    v32 = v75;
    v33 = v76;
  }

  else
  {
    v34 = v24 + v28;
    v35 = v70;
    sub_2219A02E8(v34, v70, &unk_27CFBB790, &qword_221BDADD8);
    if (__swift_getEnumTagSinglePayload(v35, 1, v30) == 1)
    {
      v36 = v71;
      *v71 = 0;
      *(v36 + 8) = 1;
      v37 = MEMORY[0x277D84F90];
      v36[2] = MEMORY[0x277D84F90];
      v36[3] = v37;
      v36[4] = v37;
      v36[5] = v37;
      v36[6] = v37;
      v36[7] = v37;
      v36[8] = v37;
      v36[9] = sub_221BCD2C8();
      v36[10] = v37;
      v36[11] = sub_221BCD2C8();
      sub_221BCC8C8();
      v38 = (v36 + v30[16]);
      *v38 = 0;
      v38[1] = 0;
      *(v36 + v30[17]) = xmmword_221BD8640;
      v39 = (v36 + v30[18]);
      *v39 = 0;
      v39[1] = 0;
      v40 = (v36 + v30[19]);
      *v40 = 0;
      v40[1] = 0;
      v41 = __swift_getEnumTagSinglePayload(v35, 1, v30) == 1;
      v42 = v35;
      v32 = v75;
      v33 = v76;
      if (!v41)
      {
        sub_2219A1CC8(v42, &unk_27CFBB790, &qword_221BDADD8);
      }
    }

    else
    {
      v36 = v71;
      sub_221B229DC(v35, v71, type metadata accessor for AppIntentsProtobuf_Dialog);
      v32 = v75;
      v33 = v76;
    }

    v43 = sub_221B0B9B8(v36);
    *(&v91 + 1) = &type metadata for AnyDialog;
    v92 = &off_283512A28;
    *&v90 = v43;
    *(&v90 + 1) = v44;
    *&v91 = v45;
  }

  v46 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  swift_beginAccess();
  v47 = v24 + v46;
  v48 = v74;
  sub_2219A02E8(v47, v74, &unk_27CFBB7D0, &unk_221BE4E60);
  v49 = v24;
  if (__swift_getEnumTagSinglePayload(v48, 1, v32) == 1)
  {
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    sub_221BCC8C8();
    v50 = (v33 + *(v32 + 24));
    *v50 = 0;
    v50[1] = 0;
    v51 = (v33 + *(v32 + 28));
    *v51 = 0;
    v51[1] = 0;
    if (__swift_getEnumTagSinglePayload(v48, 1, v32) != 1)
    {
      sub_2219A1CC8(v48, &unk_27CFBB7D0, &unk_221BE4E60);
    }
  }

  else
  {
    sub_221B229DC(v48, v33, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  }

  v88 = &type metadata for AnyIntentParameterMetadata;
  v89 = &protocol witness table for AnyIntentParameterMetadata;
  v52 = swift_allocObject();
  *&v87 = v52;
  v54 = *v33;
  v53 = v33[1];
  v55 = *(v32 + 24);
  v56 = (v33 + *(v32 + 28));
  v57 = v56[1];
  v58 = (v33 + v55);
  v59 = v58[1];
  *&v60 = *v56;
  v83 = v60;
  *&v60 = *v58;
  v76 = v60;

  sub_221B22C2C(v33, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  *(v52 + 16) = v54;
  *(v52 + 24) = v53;
  *&v61 = v76;
  *(&v61 + 1) = v59;
  *&v62 = v83;
  *(&v62 + 1) = v57;
  *(v52 + 32) = v61;
  *(v52 + 48) = v62;
  v63 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__value;
  swift_beginAccess();
  v64 = v78;
  sub_2219A02E8(v49 + v63, v78, &unk_27CFBB7E0, &unk_221BE0A00);
  v65 = v77;
  if (__swift_getEnumTagSinglePayload(v64, 1, v77) == 1)
  {
    v66 = v79;
    sub_221BCC8C8();
    v67 = *(v65 + 20);
    v68 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
    __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
    if (__swift_getEnumTagSinglePayload(v64, 1, v65) != 1)
    {
      sub_2219A1CC8(v64, &unk_27CFBB7E0, &unk_221BE0A00);
    }
  }

  else
  {
    v66 = v79;
    sub_221B229DC(v64, v79, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);
  }

  *(&v85 + 1) = &type metadata for AnyDisplayRepresentable;
  v86 = &off_28351B430;
  *&v84 = swift_allocObject();
  sub_221B0BAF0((v84 + 16), v66);
  sub_221B22C2C(v94, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);
  *(&v93[7] + 8) = 0u;
  *(&v93[8] + 8) = 0u;
  v93[0] = v90;
  v93[1] = v91;
  *(&v93[9] + 1) = 0;
  *&v93[2] = v92;
  sub_22198B358(&v87, &v93[2] + 8);
  v93[5] = v84;
  v93[6] = v85;
  *&v93[7] = v86;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  return memcpy((v82 + *(v69 + 28)), v93, 0xA0uLL);
}

void *sub_221AFDE68@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v27 - v4;
  v28 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  MEMORY[0x28223BE20](v28);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_221BCC558();
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v16 = a2;
  sub_2219A02E8(a2 + *(v15 + 20), v8, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    *v11 = 0;
    v11[1] = 0;
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_2219A1CC8(v8, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v8, v11, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v17 = v38;
  sub_221AE9E30(v11);
  if (v17)
  {
    sub_221B22C2C(a2, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);
    return sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  else
  {
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_UUID);
    v19 = v31;
    (*(v32 + 32))(v31, v14, v33);
    v20 = a2 + *(v15 + 24);
    v21 = v30;
    sub_2219A02E8(v20, v30, &qword_27CFB9D00, &unk_221BDB1B0);
    v22 = v28;
    if (__swift_getEnumTagSinglePayload(v21, 1, v28) == 1)
    {
      v23 = v29;
      sub_221BCC8C8();
      v24 = *(v22 + 20);
      if (qword_27CFB6DA0 != -1)
      {
        swift_once();
      }

      *(v23 + v24) = qword_27CFB9450;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);

      if (EnumTagSinglePayload != 1)
      {
        sub_2219A1CC8(v21, &qword_27CFB9D00, &unk_221BDB1B0);
      }
    }

    else
    {
      v23 = v29;
      sub_221B229DC(v21, v29, type metadata accessor for AppIntentsProtobuf_ActionOutput);
    }

    sub_221AF9F84(v23, v34);
    sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);
    sub_2219A02E8(v35, __src, &qword_27CFB8320, &unk_221BD1D60);
    sub_2219A02E8(v34, &__src[40], &unk_27CFBB7B0, &unk_221BE4C10);
    __src[120] = v35[80];
    sub_2219A02E8(&v36, &__src[80], &unk_27CFB93B0, &qword_221BD1D70);
    sub_2219A1CC8(v34, &unk_27CFBB7A0, &qword_221BD2930);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
    return memcpy((v19 + *(v26 + 28)), __src, 0x79uLL);
  }
}

uint64_t sub_221AFE3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  v43 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v43);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_221BCC558();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0) + 20);
  v46 = a1;
  v18 = *(a1 + v17);
  v19 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v18 + v19, v9, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    *v12 = 0;
    v12[1] = 0;
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_2219A1CC8(v9, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v9, v12, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v20 = v47;
  sub_221AE9E30(v12);
  sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v20)
  {
    return sub_221B22C2C(v46, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);
  }

  v22 = v45;
  (*(v14 + 32))(v45, v16, v13);
  v23 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  v24 = v44;
  sub_2219A02E8(v18 + v23, v44, &unk_27CFBB790, &qword_221BDADD8);
  v25 = v43;
  if (__swift_getEnumTagSinglePayload(v24, 1, v43) == 1)
  {
    *v6 = 0;
    v6[8] = 1;
    v26 = MEMORY[0x277D84F90];
    *(v6 + 2) = MEMORY[0x277D84F90];
    *(v6 + 3) = v26;
    *(v6 + 4) = v26;
    *(v6 + 5) = v26;
    *(v6 + 6) = v26;
    *(v6 + 7) = v26;
    *(v6 + 8) = v26;
    *(v6 + 9) = sub_221BCD2C8();
    *(v6 + 10) = v26;
    *(v6 + 11) = sub_221BCD2C8();
    sub_221BCC8C8();
    v27 = &v6[v25[16]];
    *v27 = 0;
    *(v27 + 1) = 0;
    *&v6[v25[17]] = xmmword_221BD8640;
    v28 = &v6[v25[18]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v6[v25[19]];
    *v29 = 0;
    *(v29 + 1) = 0;
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
    {
      sub_2219A1CC8(v24, &unk_27CFBB790, &qword_221BDADD8);
    }
  }

  else
  {
    sub_221B229DC(v24, v6, type metadata accessor for AppIntentsProtobuf_Dialog);
  }

  v30 = sub_221B0B9B8(v6);
  v32 = v31;
  v34 = v33;
  v35 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  swift_beginAccess();
  v36 = *(v18 + v35);
  v37 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
  swift_beginAccess();
  v38 = *(v18 + v37);
  v39 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  result = swift_beginAccess();
  v40 = *(v18 + v39);
  if (v40 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_221B22C2C(v46, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
    v41 = v22 + *(result + 28);
    *v41 = v30;
    *(v41 + 8) = v32;
    *(v41 + 16) = v34;
    *(v41 + 24) = &type metadata for AnyDialog;
    *(v41 + 32) = &off_283512A28;
    *(v41 + 40) = v36;
    *(v41 + 41) = v38;
    *(v41 + 48) = v40;
  }

  return result;
}

void sub_221AFE910()
{
  OUTLINED_FUNCTION_55_4();
  v133 = v2;
  v132 = v1;
  v131 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  OUTLINED_FUNCTION_8_1(v12);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  OUTLINED_FUNCTION_8_1(v15);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  OUTLINED_FUNCTION_8_1(v18);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  OUTLINED_FUNCTION_8_1(v21);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
  OUTLINED_FUNCTION_8_1(v24);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_104_2();
  v27 = OUTLINED_FUNCTION_70_7(v26);
  v28 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(v27);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v31 = OUTLINED_FUNCTION_8_1(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_62_5();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_242_2();
  MEMORY[0x28223BE20](v35);
  v37 = v126 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x28223BE20](v40);
  v135 = v126 - v41;
  v130 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  __swift_storeEnumTagSinglePayload(v135, 1, 1, v130);
  sub_221B22BD0(v132, v4, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v91 = *v4;
      type metadata accessor for AppIntentsProtobuf_Error(0);
      OUTLINED_FUNCTION_200_1();
      MEMORY[0x28223BE20](v92);
      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_8_15();
      v95 = sub_221AE8904(v93, v94, &unk_221BD9C18);
      OUTLINED_FUNCTION_128_3(sub_221B22CCC, v0, v96, v95);

      if (v2)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v0);
      v71 = v3;
      goto LABEL_15;
    case 2u:
      v60 = v126[1];
      OUTLINED_FUNCTION_192_3(v42);
      sub_2219A182C(v61, v62, v63, &qword_221BD2E18);
      v64 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
      MEMORY[0x28223BE20](v64);
      OUTLINED_FUNCTION_120_3();
      *(v65 - 16) = v60;
      v66 = sub_221AE8904(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest, &unk_221BDC9E0);
      OUTLINED_FUNCTION_128_3(sub_221B2225C, v4, v67, v66);
      OUTLINED_FUNCTION_221_3();
      if (v4)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, &qword_27CFB8348);
      v71 = v37;
      goto LABEL_15;
    case 3u:
      v72 = v128;
      OUTLINED_FUNCTION_192_3(v42);
      sub_2219A182C(v73, v74, v75, &unk_221BD2E00);
      v76 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0);
      MEMORY[0x28223BE20](v76);
      OUTLINED_FUNCTION_120_3();
      *(v77 - 16) = v72;
      v78 = sub_221AE8904(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest, &unk_221BDD110);
      OUTLINED_FUNCTION_128_3(sub_221B221EC, v4, v79, v78);
      OUTLINED_FUNCTION_221_3();
      if (v4)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, &unk_27CFB93F0);
      v71 = v6;
      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_245_2();
      OUTLINED_FUNCTION_237_1();
      sub_2219A182C(v51, v52, v53, v54);
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0);
      OUTLINED_FUNCTION_200_1();
      MEMORY[0x28223BE20](v55);
      OUTLINED_FUNCTION_120_3();
      *(v56 - 16) = v6;
      sub_221AE8904(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest, &unk_221BDCCB0);
      v57 = OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_128_3(v57, v4, v58, v59);
      OUTLINED_FUNCTION_222_3();
      OUTLINED_FUNCTION_171_3();
      goto LABEL_14;
    case 5u:
      OUTLINED_FUNCTION_245_2();
      OUTLINED_FUNCTION_237_1();
      sub_2219A182C(v100, v101, v102, v103);
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0);
      OUTLINED_FUNCTION_200_1();
      MEMORY[0x28223BE20](v104);
      OUTLINED_FUNCTION_120_3();
      *(v105 - 16) = v6;
      sub_221AE8904(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest, &unk_221BDC878);
      v106 = OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_128_3(v106, v4, v107, v108);
      OUTLINED_FUNCTION_222_3();
      OUTLINED_FUNCTION_171_3();
LABEL_14:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v28);
      v71 = v0;
      goto LABEL_15;
    case 6u:
      v83 = v127;
      sub_2219A182C(v4, v127, &qword_27CFB8340, &unk_221BE57E0);
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v115);
      OUTLINED_FUNCTION_102_4();
      v116 = sub_221AE8904(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest, &unk_221BDD3E0);
      OUTLINED_FUNCTION_128_3(sub_221B22208, v0, v117, v116);
      v48 = &qword_27CFB8340;
      v49 = &unk_221BE57E0;
      if (v2)
      {
        goto LABEL_18;
      }

      sub_2219A1CC8(v83, &qword_27CFB8340, &unk_221BE57E0);
      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v0);
      v71 = v7;
      goto LABEL_15;
    case 7u:
      v83 = v129;
      sub_2219A182C(v4, v129, &unk_27CFB93E0, &unk_221BD2DF0);
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v84);
      OUTLINED_FUNCTION_102_4();
      v85 = sub_221AE8904(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest, &unk_221BDCE18);
      v86 = v126[0];
      OUTLINED_FUNCTION_128_3(sub_221B22198, v0, v87, v85);
      v48 = &unk_27CFB93E0;
      v49 = &unk_221BD2DF0;
      if (v2)
      {
LABEL_18:
        v50 = v83;
        goto LABEL_19;
      }

      sub_2219A1CC8(v83, &unk_27CFB93E0, &unk_221BD2DF0);
      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      v88 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v0);
      v71 = v86;
LABEL_15:
      v112 = v135;
      sub_221B22A38(v71, v135, &unk_27CFBB780, &unk_221BDB150);
      goto LABEL_16;
    case 8u:
      sub_221BCE058();
      __break(1u);
      return;
    default:
      v44 = v4[28];
      v43 = v4[29];
      memcpy(v134, v4, sizeof(v134));
      v45 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
      MEMORY[0x28223BE20](v45);
      v126[-4] = v134;
      v126[-3] = v44;
      v125 = v43;
      v46 = sub_221AE8904(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success, &unk_221BDD548);
      OUTLINED_FUNCTION_128_3(sub_221B22278, &v126[-6], v47, v46);

      if (v2)
      {
        v48 = &unk_27CFBB7A0;
        v49 = &qword_221BD2930;
        v50 = v134;
LABEL_19:
        sub_2219A1CC8(v50, v48, v49);
LABEL_20:
        v114 = v135;
      }

      else
      {
        OUTLINED_FUNCTION_94_5();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_122();
        __swift_storeEnumTagSinglePayload(v118, v119, v120, v43);
        v121 = v5;
        v112 = v135;
        sub_221B22A38(v121, v135, &unk_27CFBB780, &unk_221BDB150);
        sub_2219A1CC8(v134, &unk_27CFBB7A0, &qword_221BD2930);
LABEL_16:
        type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
        OUTLINED_FUNCTION_178_3();
        MEMORY[0x28223BE20](v113);
        OUTLINED_FUNCTION_102_4();
        sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse, &unk_221BDD6B0);
        sub_221BCCB58();
        v114 = v112;
      }

      sub_2219A1CC8(v114, &unk_27CFBB780, &unk_221BDB150);
      OUTLINED_FUNCTION_133_4();
      OUTLINED_FUNCTION_53_5();
      return;
  }
}

uint64_t sub_221AFF500(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a2;
  sub_221AE8904(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDABB8);
  result = sub_221BCCB58();
  if (!v4)
  {
    v13 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0) + 24);
    sub_2219A1CC8(a1 + v13, &qword_27CFB9D00, &unk_221BDB1B0);
    sub_221B229DC(v11, a1 + v13, type metadata accessor for AppIntentsProtobuf_ActionOutput);
    __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v9);

    *a1 = a3;
    a1[1] = a4;
  }

  return result;
}

void sub_221AFF7DC()
{
  OUTLINED_FUNCTION_55_4();
  v46 = v3;
  v5 = v4;
  v6 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  v10 = OUTLINED_FUNCTION_8_1(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_51_4();
  v45 = v11;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_174_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_40_8();
  v17 = type metadata accessor for AppIntentsProtobuf_UUID(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_45_9();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v20 = OUTLINED_FUNCTION_79_2();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(v20);
  v22 = v5;
  sub_2219A02E8(v5 + *(v21 + 24), v1, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_43_9(v1);
  if (v36)
  {
    *v2 = 0;
    v2[1] = 0;
    sub_221BCC8C8();
    OUTLINED_FUNCTION_43_9(v1);
    if (!v36)
    {
      sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v1, v2, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v23 = OUTLINED_FUNCTION_236_0();
  sub_221AE9E30(v23);
  if (v0)
  {
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v24);
  }

  else
  {
    sub_221B22C2C(v2, type metadata accessor for AppIntentsProtobuf_UUID);
    v25 = OUTLINED_FUNCTION_95_5();
    v27 = v26(v25);
    OUTLINED_FUNCTION_223_3(v27, v28, &qword_27CFBA488, &qword_221BE0AD8);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(v17);
    if (v36)
    {
      v46(0);
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC(v29, v30, v31);
      OUTLINED_FUNCTION_15_0();
      v32 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v32, v33);
      OUTLINED_FUNCTION_187_2(v34, v35);
      OUTLINED_FUNCTION_32_9();
      sub_221B22C2C(v22, v38);
      sub_2219A1CC8(v17, &qword_27CFBA488, &qword_221BE0AD8);
      v39 = OUTLINED_FUNCTION_343();
      v40(v39);
    }

    else
    {
      sub_2219A02E8(v17, v45, &qword_27CFBA488, &qword_221BE0AD8);
      OUTLINED_FUNCTION_70();
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_230_1();
      if (v36)
      {
        sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
      }

      else
      {
        sub_221B229DC(v45, v44, type metadata accessor for AppIntentsProtobuf_Error);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v37 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v37);
        OUTLINED_FUNCTION_32_9();
        sub_221B22C2C(v5, v41);
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(v44, v42);
      }

      v43 = (v46)(0);
      OUTLINED_FUNCTION_233_1(v43);
      sub_2219A1CC8(v17, &qword_27CFBA488, &qword_221BE0AD8);
    }
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221AFFC4C()
{
  OUTLINED_FUNCTION_55_4();
  v39 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_149_2();
  v12 = type metadata accessor for AppIntentsProtobuf_UUID(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v14 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0) + 24);
  sub_2219A1CC8(&v8[v14], &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_5_20();
  sub_221B229DC(v1, &v8[v14], v15);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
  v19 = v6 + *(v4(0) + 20);
  v20 = *v19;
  if (*(v19 + 8))
  {
    v21 = type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_120_3();
    *(v23 - 16) = v20;
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v24, v25, &unk_221BD9C18);
    v26 = v20;
    sub_221BCCB58();
    v27 = OUTLINED_FUNCTION_141_3();
    v39(v27);
    if (!v0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
      OUTLINED_FUNCTION_164_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v21);
      v31 = OUTLINED_FUNCTION_55_3();
      sub_221B22A38(v31, v32, v33, v34);
    }
  }

  else
  {
    sub_2219A1CC8(v8, &qword_27CFBA488, &qword_221BE0AD8);
    *v8 = v20 & 1;
    v35 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_0_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221AFFF9C()
{
  OUTLINED_FUNCTION_55_4();
  v4 = OUTLINED_FUNCTION_185_2(v3);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_150_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_51_4();
  v63 = v9;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_174_3(v11);
  v12 = OUTLINED_FUNCTION_169_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_45_9();
  v17 = type metadata accessor for AppIntentsProtobuf_UUID(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21_10();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v20 = OUTLINED_FUNCTION_79_2();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(v20);
  v22 = OUTLINED_FUNCTION_198_2(v21);
  sub_2219A02E8(v22, v2, &qword_27CFB9988, &qword_221BDAE20);
  v23 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_49_4(v23, v24, v17);
  if (v25)
  {
    *v1 = 0;
    v1[1] = 0;
    sub_221BCC8C8();
    v26 = OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_49_4(v26, v27, v17);
    if (!v25)
    {
      sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v28 = OUTLINED_FUNCTION_235_1();
    sub_221B229DC(v28, v29, v30);
  }

  v31 = OUTLINED_FUNCTION_208_2();
  sub_221AE9E30(v31);
  if (v0)
  {
    v32 = OUTLINED_FUNCTION_19_10();
    sub_221B22C2C(v32, v33);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v1, v34);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v1, v35);
    v36 = OUTLINED_FUNCTION_95_5();
    v38 = v37(v36);
    OUTLINED_FUNCTION_223_3(v38, v39, &unk_27CFBB890, &qword_221BE0AF0);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(&qword_221BDAE20);
    if (v25)
    {
      type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0);
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC(v40, v41, v42);
      OUTLINED_FUNCTION_15_0();
      v43 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v43, v44);
      OUTLINED_FUNCTION_187_2(v45, v46);
      v47 = OUTLINED_FUNCTION_19_10();
      sub_221B22C2C(v47, v56);
      sub_2219A1CC8(&qword_221BDAE20, &unk_27CFBB890, &qword_221BE0AF0);
      v57 = OUTLINED_FUNCTION_214_1();
      v58(v57);
    }

    else
    {
      sub_2219A02E8(&qword_221BDAE20, v63, &unk_27CFBB890, &qword_221BE0AF0);
      OUTLINED_FUNCTION_70();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v49 = OUTLINED_FUNCTION_19_10();
        sub_221B22C2C(v49, v50);
        v51 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_213_3();
        sub_221B229DC(v52, v53, v54);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v55 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v55);
        v51 = v59;
        v60 = OUTLINED_FUNCTION_19_10();
        sub_221B22C2C(v60, v61);
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(1, v62);
      }

      *(v17 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) + 20)) = v51;
      sub_2219A1CC8(&qword_221BDAE20, &unk_27CFBB890, &qword_221BE0AF0);
    }
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}