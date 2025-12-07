uint64_t sub_1DCC8C640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC8C67C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC8C6C8(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1DCC8C6E4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

void sub_1DCC8C70C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    v3 = *a1;
  }

  else
  {
    if (v2)
    {
      return;
    }

    if (*(a1 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v3 = *(a1 + 48);
  }
}

uint64_t sub_1DCC8C7A4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 56);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    v6 = *a2;
    v7 = *a2;
    *a1 = v6;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 56) = 1;
  }

  else if (v4)
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 41) = *(a2 + 41);
  }

  else
  {
    v5 = a2[3];
    if (v5)
    {
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
    }

    else
    {
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v9;
    }

    v10 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v10;
    v11 = a2[6];
    *(a1 + 48) = v11;
    *(a1 + 56) = 0;

    v12 = v11;
  }

  return a1;
}

uint64_t sub_1DCC8C898(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }
    }

    v5 = *(a2 + 56);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *a2;
      v8 = *a2;
      *a1 = v7;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 56) = 1;
    }

    else if (v5)
    {
      v9 = *a2;
      v10 = *(a2 + 1);
      v11 = *(a2 + 2);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v10;
      *(a1 + 32) = v11;
      *a1 = v9;
    }

    else
    {
      v6 = a2[3];
      if (v6)
      {
        *(a1 + 24) = v6;
        (**(v6 - 8))(a1, a2);
      }

      else
      {
        v12 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v12;
      }

      *(a1 + 32) = a2[4];
      *(a1 + 40) = a2[5];
      v13 = a2[6];
      *(a1 + 48) = v13;
      *(a1 + 56) = 0;

      v14 = v13;
    }
  }

  return a1;
}

uint64_t sub_1DCC8C9E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }
    }

    v5 = *(a2 + 56);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 56) = 1;
    }

    else
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = *(a2 + 32);
      if (v5)
      {
        *(a1 + 41) = *(a2 + 41);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = 0;
      }
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for CorrectionsActionOutcome(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CorrectionsActionOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC8CB64(uint64_t a1)
{
  result = *(a1 + 56);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1DCC8CB80(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t CompositionResolutionFeatureFlags.isEnabled.getter()
{
  v2[3] = &type metadata for CompositionResolutionFeatureFlags;
  v2[4] = sub_1DCC8CC40();
  v0 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_1DCC8CC40()
{
  result = qword_1ECCA2F40;
  if (!qword_1ECCA2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2F40);
  }

  return result;
}

uint64_t CompositionResolutionFeatureFlags.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCC8CD3C()
{
  result = qword_1ECCA2F48;
  if (!qword_1ECCA2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2F48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompositionResolutionFeatureFlags(_BYTE *result, int a2, int a3)
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

void sub_1DCC8D13C()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC8D2F0(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_state;
  swift_beginAccess();
  sub_1DCC91930(a1, (v1 + v3));
  swift_endAccess();
  sub_1DCC8D13C();
}

uint64_t sub_1DCC8D35C()
{
  v1 = OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_state;
  OUTLINED_FUNCTION_156(v0 + OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_state, &v5);
  sub_1DCC8D410((v0 + v1), v6);
  if (v7 == 2)
  {
    v2 = v6[0];
    v3 = 11;
  }

  else
  {
    sub_1DCC8D448(v6);
    sub_1DCC8D410((v0 + v1), v6);
    if (v7 == 3)
    {
      v3 = v6[0];
    }

    else
    {
      sub_1DCC8D448(v6);
      v3 = 11;
    }

    v2 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CompositionResolutionResponse();
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

void CompositionResolutionFlow.__allocating_init(from:to:expectMultipleResolutionResults:nlContextUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  swift_allocObject();
  CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:)(a1, a2, v5, a4);
}

void CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  sub_1DD0DCF8C();
}

void CompositionResolutionFlow.__allocating_init(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  swift_allocObject();
  CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)(a1, a2, v7, a4, a5);
}

void CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  sub_1DD0DCF8C();
}

void sub_1DCC8D76C()
{
  v1 = OUTLINED_FUNCTION_26_6();
  v2 = type metadata accessor for Input(v1);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  sub_1DCC91788(v0, v7);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC8D980()
{
  OUTLINED_FUNCTION_42();
  v1[37] = v2;
  v1[38] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v3);
  v1[39] = OUTLINED_FUNCTION_38();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F70, &qword_1DD0E8C70);
  v1[40] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCC8DA48()
{
  v2 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC8E080()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC8E164()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 216, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCC8E1F4(uint64_t a1)
{
  sub_1DCB0DF6C(a1, v1);
  v2 = 1;
  sub_1DCC8D2F0(v1);
}

void sub_1DCC8E238(uint64_t a1, uint64_t a2)
{
  v17[1] = a1;
  v2 = type metadata accessor for FlowSearchResult(0);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v17[0] = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v17 - v10;
  type metadata accessor for USOParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v14 = sub_1DD0DC6EC();
  LOWORD(v25) = 1;
  *(&v25 + 1) = v14;
  *v26 = v15;
  *&v26[8] = xmmword_1DD0E8C50;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v18[0] = v25;
  v18[1] = *v26;
  v19[0] = 0xE600000000000000;
  *(v19 + 9) = 0u;
  sub_1DCD3C748(v18, v20);
  sub_1DCB340B4(&v25);
  if (v20[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F90, &qword_1DD0EFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F98, &qword_1DD0E8CA0);
    if (swift_dynamicCast())
    {
      if (*(&v22 + 1))
      {
        sub_1DCAFF9E8(&v21, &v24);
        sub_1DCC8E7A0(v11);
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    sub_1DCB0E9D8(v20, &qword_1ECCA2F80, &unk_1DD0EFEC0);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
  }

  sub_1DCB0E9D8(&v21, &qword_1ECCA2F88, &unk_1DD0E8C90);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v16 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC8E7A0(uint64_t a2@<X8>)
{
  v41 = a2;
  sub_1DD0DB4BC();
  OUTLINED_FUNCTION_9();
  v38[10] = v3;
  v38[11] = v2;
  MEMORY[0x1EEE9AC00](v2, v4);
  OUTLINED_FUNCTION_16();
  v38[9] = v6 - v5;
  sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v38[7] = v8;
  v38[8] = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  OUTLINED_FUNCTION_16();
  v38[6] = v11 - v10;
  v38[13] = sub_1DD0DB66C();
  OUTLINED_FUNCTION_9();
  v38[5] = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_44_0();
  v38[2] = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v38[4] = v38 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FD8, &qword_1DD0FDDF0);
  v20 = OUTLINED_FUNCTION_20_0(v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v40 = sub_1DD0DB44C();
  OUTLINED_FUNCTION_9();
  v38[3] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_44_0();
  v38[1] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v38[12] = v38 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  v30 = OUTLINED_FUNCTION_20_0(v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  sub_1DD0DC6EC();
  sub_1DD0DBBEC();
  swift_allocObject();
  v32 = OUTLINED_FUNCTION_33_1();
  v33 = MEMORY[0x1E12A4230](v32);
  sub_1DD0DBE0C();
  v34 = sub_1DD0DC6EC();
  v36 = v35;
  sub_1DD0DBB6C();
  swift_allocObject();
  MEMORY[0x1E12A41B0](v34, v36, 0x627265566F6ELL, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v37 = swift_allocObject();
  v39 = xmmword_1DD0E15D0;
  *(v37 + 16) = xmmword_1DD0E15D0;
  *(v37 + 32) = v33;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC8EFDC()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_1DD0DD9BC();
  v1[8] = v3;
  OUTLINED_FUNCTION_99(v3);
  v1[9] = v4;
  v1[10] = OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FE8, &qword_1DD0E8E40);
  OUTLINED_FUNCTION_20_0(v5);
  v1[11] = OUTLINED_FUNCTION_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FF0, &qword_1DD0E8E48);
  v1[12] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCC8F0F0()
{
  v50 = v0;
  sub_1DCB09970(*(v0 + 48), v0 + 16, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (*(v0 + 40))
  {
    v3 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v1, v3 ^ 1u, 1, v2);
    if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
    {
      sub_1DCC91890(*(v0 + 88), *(v0 + 112), &qword_1ECCA2FF0, &qword_1DD0E8E48);
      sub_1DD0DC6EC();
      v4 = sub_1DD0DBEAC();

      if (!v4 || (sub_1DD0DC6EC(), v5 = sub_1DD0DBEAC(), , !v5))
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v23 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

      sub_1DCB09970(*(v0 + 112), *(v0 + 104), &qword_1ECCA2FF0, &qword_1DD0E8E48);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 104), *(v0 + 64));
        v24 = swift_task_alloc();
        *(v0 + 120) = v24;
        *v24 = v0;
        v24[1] = sub_1DCC8F7C8;

        sub_1DCC8F95C();
      }

      v6 = **(v0 + 104);
      switch(v6)
      {
        case 10:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v32 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
          v33 = sub_1DD0DD8EC();
          v34 = sub_1DD0DE6CC();
          if (OUTLINED_FUNCTION_15_19(v34))
          {
            v35 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v35);
            OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v36, v37, "#CompositionResolutionFlow search flow was canceled by user");
            OUTLINED_FUNCTION_62();
          }

          OUTLINED_FUNCTION_23_10();

          v31 = 10;
          break;
        case 9:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v25 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
          v26 = sub_1DD0DD8EC();
          v27 = sub_1DD0DE6CC();
          if (OUTLINED_FUNCTION_15_19(v27))
          {
            v28 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v28);
            OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v29, v30, "#CompositionResolutionFlow search flow is not supported");
            OUTLINED_FUNCTION_62();
          }

          OUTLINED_FUNCTION_23_10();

          v31 = 9;
          break;
        case 2:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v7 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
          v8 = sub_1DD0DD8EC();
          v9 = sub_1DD0DE6CC();
          if (OUTLINED_FUNCTION_15_19(v9))
          {
            v10 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v10);
            OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v11, v12, "#CompositionResolutionFlow search flow returned 0 search result");
            OUTLINED_FUNCTION_62();
          }

          OUTLINED_FUNCTION_23_10();

          v48[0] = MEMORY[0x1E69E7CC0];
          v13 = 2;
LABEL_24:
          v49 = v13;
          sub_1DCC8D2F0(v48);
        default:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v38 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v38, qword_1EDE57E00);
          v39 = sub_1DD0DD8EC();
          v40 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = OUTLINED_FUNCTION_151();
            v42 = OUTLINED_FUNCTION_83();
            v48[0] = v42;
            *v41 = 136315138;
            *(v0 + 128) = v6;
            sub_1DCC918DC();
            v43 = sub_1DD0DF18C();
            v45 = sub_1DCB10E9C(v43, v44, v48);

            *(v41 + 4) = v45;
            OUTLINED_FUNCTION_88(&dword_1DCAFC000, v46, v47, "#CompositionResolutionFlow search flow has failed with error: %s");
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_92_0();
          }

          OUTLINED_FUNCTION_23_10();
          v31 = 1;
          break;
      }

      LOBYTE(v48[0]) = v31;
      v13 = 3;
      goto LABEL_24;
    }
  }

  else
  {
    sub_1DCB0E9D8(v0 + 16, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v2);
  }

  sub_1DCB0E9D8(*(v0 + 88), &qword_1ECCA2FE8, &qword_1DD0E8E40);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v17 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v17, qword_1EDE57E00);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_15_19(v19))
  {
    v20 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v20);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v21, v22, "#CompositionResolutionFlow failed to cast search result to Result<RREntity, CompositionResolutionError>");
    OUTLINED_FUNCTION_62();
  }

  LOBYTE(v48[0]) = 1;
  v49 = 3;
  sub_1DCC8D2F0(v48);
}

uint64_t sub_1DCC8F7C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC8F8AC()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1DCB0E9D8(v1, &qword_1ECCA2FF0, &qword_1DD0E8E48);

  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCC8F95C()
{
  OUTLINED_FUNCTION_42();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = sub_1DD0DB04C();
  v1[24] = v5;
  OUTLINED_FUNCTION_99(v5);
  v1[25] = v6;
  v1[26] = OUTLINED_FUNCTION_38();
  sub_1DD0DCE2C();
}

void sub_1DCC8FA50()
{
  v4 = v0;
  sub_1DD0DD9AC();
  v1 = sub_1DD0DBA2C();
  sub_1DD0DBEBC();

  v2 = v0[17];
  v0[30] = v2;
  if (v2)
  {
    v0[6] = v2;
    v0[9] = v1;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC900A8()
{
  OUTLINED_FUNCTION_39();
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1DCC90260;
  }

  else
  {
    v2 = sub_1DCC901D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DCC901D8()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC90260()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 280);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_50_0();
    *v6 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "#CompositionResolutionFlow failed to donate transformed result to SRR", v6, 2u);
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCC903CC(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC903EC, 0, 0);
}

uint64_t sub_1DCC903EC()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1DCC904E0;

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1DCC904E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 48) = v0;

  if (v0)
  {
    v6 = sub_1DCC90610;
  }

  else
  {

    v6 = sub_1DCC905EC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCC90610()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

void *CompositionResolutionFlow.deinit()
{

  sub_1DCB0E9D8(v0 + OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_nlContextUpdate, &unk_1ECCA3270, &qword_1DD0E0F70);

  sub_1DCC8D448(v0 + OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_state);

  return v0;
}

uint64_t CompositionResolutionFlow.__deallocating_deinit()
{
  CompositionResolutionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC90808()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCC8D980();
}

uint64_t sub_1DCC908A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCC8D35C();
  *a1 = result;
  return result;
}

uint64_t CompositionSearchFlow.findFlowForPommesResponse(_:)(void *a1)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = (v5 - v4);
  v7 = type metadata accessor for FlowSearchResult(0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v10 = sub_1DD0DD73C();
  if (v11)
  {
    *v26 = 261;
    memset(&v26[8], 0, 32);
    *&v26[40] = v10;
    *&v26[48] = v11;
    v26[56] = 0;
    if (qword_1EDE4F518 != -1)
    {
      OUTLINED_FUNCTION_3_0(&qword_1EDE4F518);
    }

    v17[0] = *v26;
    v17[1] = *&v26[16];
    v18[0] = *&v26[32];
    *(v18 + 9) = *&v26[41];
    sub_1DCD3C748(v17, v19);
    sub_1DCB340B4(v26);
    if (v19[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F90, &qword_1DD0EFFF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F98, &qword_1DD0E8CA0);
      if (swift_dynamicCast())
      {
        if (*(&v21 + 1))
        {
          sub_1DCAFF9E8(&v20, v23);
          v12 = v24;
          v13 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          *v6 = a1;
          swift_storeEnumTagMultiPayload();
          v14 = *(v13 + 16);
          v15 = a1;
          v14(v6, v12, v13);
          sub_1DCC917E0(v6, type metadata accessor for Parse);
          sub_1DD0DCF8C();
        }
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
      }
    }

    else
    {
      sub_1DCB0E9D8(v19, &qword_1ECCA2F80, &unk_1DD0EFEC0);
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
    }

    sub_1DCB0E9D8(&v20, &qword_1ECCA2F88, &unk_1DD0E8C90);
  }

  return 0;
}

uint64_t sub_1DCC90B68()
{
  sub_1DCB0DF6C(v0 + 32, v2);
  type metadata accessor for ActingFlowToFlowShim();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC90BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC0, &qword_1DD0E8E08);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_1DD0DD9CC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  sub_1DD0DD75C();

  return sub_1DCB0E9D8(v12, &qword_1ECCA2FC0, &qword_1DD0E8E08);
}

unint64_t sub_1DCC90DA8(uint64_t a1)
{
  result = sub_1DCC90DD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCC90DD0()
{
  result = qword_1ECCA2FA0;
  if (!qword_1ECCA2FA0)
  {
    type metadata accessor for CompositionResolutionFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2FA0);
  }

  return result;
}

uint64_t type metadata accessor for CompositionResolutionFlow(uint64_t a1)
{
  result = qword_1ECCA2FA8;
  if (!qword_1ECCA2FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCC90E7C(uint64_t a1)
{
  sub_1DCC91108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CompositionResolutionFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v6 = (*(*v0 + 208) + **(*v0 + 208));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCB4AD3C;

  return v6(v3);
}

void sub_1DCC91108(uint64_t a1)
{
  if (!qword_1EDE49560)
  {
    type metadata accessor for NLContextUpdate(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE49560);
    }
  }
}

uint64_t destroy for CompositionResolutionFlow.State(uint64_t result)
{
  v2 = *(result + 32);
  if (v2 >= 4)
  {
    v2 = *result + 4;
  }

  switch(v2)
  {
    case 1u:
      if (*(result + 24) >= 0xFFFFFFFFuLL)
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(result);
      }

      break;
    case 2u:

      break;
    case 3u:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t initializeWithCopy for CompositionResolutionFlow.State(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 32);
  if (v3 >= 4)
  {
    v3 = *a2 + 4;
  }

  switch(v3)
  {
    case 1u:
      v5 = a2[3];
      if (v5 < 0xFFFFFFFF)
      {
        v6 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v6;
      }

      else
      {
        *(a1 + 24) = v5;
        (**(v5 - 8))(a1);
      }

      v4 = 1;
      goto LABEL_11;
    case 2u:
      *a1 = *a2;
      *(a1 + 32) = 2;

      return a1;
    case 3u:
      *a1 = *a2;
      v4 = 3;
LABEL_11:
      *(a1 + 32) = v4;
      return a1;
    default:
      *a1 = *a2;
      *(a1 + 32) = 0;
      sub_1DD0DCF8C();
  }
}

uint64_t *assignWithCopy for CompositionResolutionFlow.State(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 4)
    {
      v4 = *a1 + 4;
    }

    switch(v4)
    {
      case 1u:
        if (a1[3] >= 0xFFFFFFFF)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:

        break;
      case 3u:
        break;
      default:

        break;
    }

    v5 = *(a2 + 32);
    if (v5 >= 4)
    {
      v5 = *a2 + 4;
    }

    switch(v5)
    {
      case 1u:
        v7 = a2[3];
        if (v7 < 0xFFFFFFFF)
        {
          v8 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v8;
        }

        else
        {
          a1[3] = v7;
          (**(v7 - 8))(a1, a2);
        }

        v6 = 1;
        goto LABEL_19;
      case 2u:
        *a1 = *a2;
        *(a1 + 32) = 2;

        return a1;
      case 3u:
        *a1 = *a2;
        v6 = 3;
LABEL_19:
        *(a1 + 32) = v6;
        break;
      default:
        *a1 = *a2;
        *(a1 + 32) = 0;
        sub_1DD0DCF8C();
    }
  }

  return a1;
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

void *assignWithTake for CompositionResolutionFlow.State(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 4)
    {
      v4 = *a1 + 4;
    }

    switch(v4)
    {
      case 1u:
        if (a1[3] >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:

        break;
      case 3u:
        break;
      default:

        break;
    }

    v5 = *(a2 + 32);
    if (v5 >= 4)
    {
      v5 = *a2 + 4;
    }

    switch(v5)
    {
      case 1u:
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 1) = v7;
        v6 = 1;
        break;
      case 2u:
        *a1 = *a2;
        v6 = 2;
        break;
      case 3u:
        *a1 = *a2;
        v6 = 3;
        break;
      default:
        v6 = 0;
        *a1 = *a2;
        break;
    }

    *(a1 + 32) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for CompositionResolutionFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompositionResolutionFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC91660(uint64_t a1)
{
  result = *(a1 + 32);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t sub_1DCC9167C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1DCC916E0(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  OUTLINED_FUNCTION_20_0(v4);

  return sub_1DCE2140C(a1, a2 & 1);
}

uint64_t sub_1DCC91788(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

uint64_t sub_1DCC917E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCC91838(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

uint64_t sub_1DCC91890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v4;
}

unint64_t sub_1DCC918DC()
{
  result = qword_1ECCA2FF8;
  if (!qword_1ECCA2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2FF8);
  }

  return result;
}

uint64_t CompositionResolutionResponse.__allocating_init(entities:error:)(uint64_t a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = a1;
  *(result + 24) = v5;
  return result;
}

void *CompositionResolutionEntity.__allocating_init(id:appBundleId:usoEntity:dataType:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  return result;
}

void CompositionResolutionEntity.toRREntity()(uint64_t a1@<X8>)
{
  v6[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3000, &qword_1DD0E8E50);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v6 - v3;
  v5 = sub_1DD0DD93C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);

  sub_1DD0DCF8C();
}

uint64_t CompositionResolutionResponse.init(entities:error:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

BOOL static CompositionResolutionResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1DCC0CF54(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  v6 = v5 == 11;
  v7 = v4 == v5;
  if (v4 == 11)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t CompositionResolutionResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CompositionResolutionEntity.data.getter()
{
  v0 = OUTLINED_FUNCTION_33_1();
  sub_1DCC91E6C(v0, v1);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t CompositionResolutionEntity.description.getter()
{
  v1 = v0;
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](v1[2], v1[3]);
  MEMORY[0x1E12A6780](0x646E75427070610ALL, 0xEE00203A6449656CLL);
  MEMORY[0x1E12A6780](v1[4], v1[5]);
  MEMORY[0x1E12A6780](0x69746E456F73750ALL, 0xEC000000203A7974);
  v2 = sub_1DD0DC7BC();
  MEMORY[0x1E12A6780](v2);

  MEMORY[0x1E12A6780](0x707954617461640ALL, 0xEB00000000203A65);
  if (v0[8])
  {
    v3 = v0[7];
    v4 = v0[8];
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x1E12A6780](v3, v4);

  return 540697705;
}

void *CompositionResolutionEntity.init(id:appBundleId:usoEntity:dataType:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[8] = a7;
  v9[9] = a8;
  v9[10] = a9;
  return v9;
}

void sub_1DCC91E6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1DCC91E80(a1, a2);
  }
}

void sub_1DCC91E80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {

    sub_1DD0DCF8C();
  }

  if (a2 >> 62 == 2)
  {
    sub_1DD0DCF8C();
  }
}

uint64_t static CompositionResolutionEntity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_1DD0DC7BC();
  v8 = v7;
  if (v6 == sub_1DD0DC7BC() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1DD0DF0AC();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = a1[8];
  v13 = a2[8];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = a1[7] == a2[7] && v12 == v13;
    if (!v14 && (sub_1DD0DF0AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v16 = a1[9];
  v15 = a1[10];
  v18 = a2[9];
  v17 = a2[10];
  if (v15 >> 60 == 15)
  {
    if (v17 >> 60 == 15)
    {
      v19 = OUTLINED_FUNCTION_0_26();
      sub_1DCB2C520(v19, v20);
      return 1;
    }

    goto LABEL_31;
  }

  if (v17 >> 60 == 15)
  {
LABEL_31:
    v22 = OUTLINED_FUNCTION_0_26();
    sub_1DCB2C520(v22, v23);
    sub_1DCB2C520(v18, v17);
    return 0;
  }

  v24 = OUTLINED_FUNCTION_0_26();
  v25 = MEMORY[0x1E12A3570](v24);
  sub_1DCB2C520(v18, v17);
  sub_1DCB2C520(v16, v15);
  return v25 & 1;
}

void *CompositionResolutionEntity.deinit()
{

  sub_1DCB2C520(*(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t CompositionResolutionEntity.__deallocating_deinit()
{
  CompositionResolutionEntity.deinit();

  return swift_deallocClassInstance();
}

uint64_t CompositionResolutionError.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCC921EC()
{
  result = qword_1ECCA3008;
  if (!qword_1ECCA3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA3008);
  }

  return result;
}

unint64_t sub_1DCC92244()
{
  result = qword_1ECCA3010;
  if (!qword_1ECCA3010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3018, &qword_1DD0E8F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA3010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompositionResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void *sub_1DCC9242C()
{
  OUTLINED_FUNCTION_66();
  v2 = *(v0 + *(v1 + 104));
  sub_1DCC93338(v2);
  return v2;
}

void sub_1DCC92468()
{
  OUTLINED_FUNCTION_66();
  v2 = *(v1 + 104);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
  sub_1DCC22568(v3);
}

uint64_t ConcludingInform.__allocating_init(value:outputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConcludingInform.init(value:outputGenerator:)(a1, a2, a3);
  return v6;
}

uint64_t ConcludingInform.init(value:outputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + *(*v3 + 96), a1, v7);
  v12 = &type metadata for ClosureOutputGenerator;
  v13 = &off_1F5860950;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  (*(v8 + 8))(a1, v7);
  sub_1DCAFF9E8(&v11, v3 + 16);
  OUTLINED_FUNCTION_66();
  *(v3 + *(v9 + 104)) = 0;
  return v3;
}

uint64_t ConcludingInform.__allocating_init(value:outputGenerator:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  ConcludingInform.init(value:outputGenerator:)(a1, a2);
  return v4;
}

uint64_t ConcludingInform.init(value:outputGenerator:)(uint64_t a1, __int128 *a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  sub_1DCAFF9E8(a2, v2 + 16);
  OUTLINED_FUNCTION_66();
  *(v2 + *(v4 + 104)) = 0;
  return v2;
}

void sub_1DCC92700(uint64_t *a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_66();
  v5 = v4;
  v6 = sub_1DCC9242C();
  if (!v6)
  {
    sub_1DCB17CA0(v1 + 16, &v18);
    type metadata accessor for Inform();
    swift_allocObject();
    Inform.init(_:)(&v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3020, &qword_1DD0E90D0);
    swift_allocObject();
    sub_1DD0DCF8C();
  }

  v9 = v6;
  if (v6 == 1)
  {
    v10 = *(*v1 + 96);
    v11 = *(v5 + 80);
    a1[3] = type metadata accessor for Conclude(0, v11, v7, v8);
    a1[4] = &protocol witness table for Conclude<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for ConcludingInform(0, v11, v13, v14);
    OUTLINED_FUNCTION_2_39();
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v2 + v10, boxed_opaque_existential_1Tm);
  }

  else
  {
    a1[3] = type metadata accessor for Abort(0);
    a1[4] = &protocol witness table for Abort;
    v15 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for ConcludingInform(0, *(v5 + 80), v16, v17);
    OUTLINED_FUNCTION_2_39();
    swift_getWitnessTable();
    ActingFlow.abort(reason:)(v9, v15);
    sub_1DCC22568(v9);
  }
}

void sub_1DCC929B8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
  }

  sub_1DCC92468();
}

char *ConcludingInform.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  OUTLINED_FUNCTION_66();
  sub_1DCC22568(*&v0[*(v3 + 104)]);
  return v0;
}

uint64_t ConcludingInform.__deallocating_deinit()
{
  ConcludingInform.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCC92B64()
{
  OUTLINED_FUNCTION_0_27();
  v0[17] = sub_1DCC932E0;
  v0[18] = 0;
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3130, &unk_1DD0E9170);
  v0[16] = sub_1DCBF7DC0(&qword_1ECCA3138, &qword_1ECCA3130, &unk_1DD0E9170, &protocol conformance descriptor for Prompt<A>);
  OUTLINED_FUNCTION_8_30();
}

uint64_t sub_1DCC92C4C(char a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = nullsub_1;
  *(v1 + 88) = 0;
  *(v1 + 136) = j_nullsub_1;
  *(v1 + 144) = 0;
  *(v1 + 120) = &type metadata for NoopFlow;
  *(v1 + 128) = &off_1EECFDA08;
  *(v1 + 96) = a1;
  sub_1DD0DEC1C();

  OUTLINED_FUNCTION_1_32();
  v2 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v2);

  OUTLINED_FUNCTION_6_25();
  return OUTLINED_FUNCTION_5_30(v3, v4, v5, v6, v7, v8, v9, v10, v12, 0, 0xE000000000000000);
}

void sub_1DCC92D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_0_27();
  v4[17] = v7;
  v4[18] = 0;
  v4[15] = v8(0, v6);
  v4[16] = a4;
  OUTLINED_FUNCTION_8_30();
}

uint64_t sub_1DCC92E08(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConcludingInform.__allocating_init(value:outputGenerator:)()
{
  return (*(v0 + 136))();
}

{
  return (*(v0 + 144))();
}

void sub_1DCC92F14(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **sub_1DCC92F2C(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v7 = v4;
    }

    *a1 = v4;
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    v5 = v4;
    v6 = *a1;
    *a1 = v4;
  }

  return a1;
}

void **sub_1DCC92FBC(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    goto LABEL_6;
  }

  if (v4 < 0xFFFFFFFF)
  {

LABEL_6:
    *a1 = v4;
    return a1;
  }

  *a1 = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for AttachmentOption(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttachmentOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1DCC930D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1DCC93148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = *(v4 + 136);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v4 + 136) = a4;
  *(v4 + 144) = v8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC931B4(uint64_t a1, char a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = a1;
  v8 = a2 & 1;
  a3(&v7);
  return a5(&v7);
}

uint64_t sub_1DCC93258(char a1, void (*a2)(char *), uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = a1;
  a2(&v6);
  return a4(&v6);
}

id sub_1DCC93338(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1DCC933F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConditionalFlow(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

void sub_1DCC9353C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_14_23();
  v10 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v10, v11, v12, v13);
  OUTLINED_FUNCTION_47_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
  if (!OUTLINED_FUNCTION_34_12(&v49, v50) || (v15 = v49, v49 == 1))
  {
    OUTLINED_FUNCTION_48_8();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    v17 = OUTLINED_FUNCTION_59_0(v16, qword_1EDE57E00);
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v18))
    {
      OUTLINED_FUNCTION_43_0();
      v50[0] = OUTLINED_FUNCTION_24_14();
      *v14 = 136315394;
      v51 = v2;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3188, &unk_1DD0E9330);
      v20 = OUTLINED_FUNCTION_63_3(v19);
      OUTLINED_FUNCTION_62_4(v20, v21);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v51 = v4;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v23 = OUTLINED_FUNCTION_63_3(v22);
      OUTLINED_FUNCTION_62_4(v23, v24);
      OUTLINED_FUNCTION_148();
      *(v14 + 14) = v3;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v25, v26, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v27 = OUTLINED_FUNCTION_10_23();
    v28(v27);
    v29 = OUTLINED_FUNCTION_8_31();
    v32 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v16);
    OUTLINED_FUNCTION_44_6(v32, v33, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v34)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v36))
      {
        OUTLINED_FUNCTION_83();
        v50[0] = OUTLINED_FUNCTION_54();
        *v48 = 136315650;
        v37 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        sub_1DCB10E9C(v37, v38, v50);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v39 = OUTLINED_FUNCTION_21_7();
        *(v48 + 24) = sub_1DCB10E9C(v39, v40, v41);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v42, v43, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v44 = OUTLINED_FUNCTION_13_18();
      v45(v44);
    }

    v46 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v46, v47);
  }

  v51 = v49;
  v1(&v51);
  sub_1DCC99E48(v15);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC93880(uint64_t a1, void (*a2)(id *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v39 - v10;
  sub_1DCB09910(a1, v43, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E10, &qword_1DD0E23A0);
  if (!swift_dynamicCast())
  {
    v16 = v13;
    v17 = v12;
    v40 = v11;
    v41 = 0;
    v15 = 0;
    v14 = 65280;
    v42 = -256;
    goto LABEL_6;
  }

  v14 = v42;
  v15 = v41;
  if (HIBYTE(v42) > 0xFEu)
  {
    v16 = v13;
    v17 = v12;
    v40 = v11;
LABEL_6:
    sub_1DCB96104(v15, v14);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    v19 = __swift_project_value_buffer(v18, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136315394;
      v44 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3168, &qword_1DD0E92F8);
      v24 = sub_1DD0DE02C();
      v26 = sub_1DCB10E9C(v24, v25, v43);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v44 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v27 = sub_1DD0DE02C();
      v29 = sub_1DCB10E9C(v27, v28, v43);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "Expected exitValue of type %s but instead got value of type %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v23, -1, -1);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }

    v30 = *(v18 - 8);
    v31 = v40;
    (*(v30 + 16))(v40, v19, v18);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v18);
    sub_1DCB09910(v31, v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v18) == 1)
    {
      sub_1DCB0E9D8(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v32 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43[0] = v35;
        *v34 = 136315650;
        v36 = sub_1DD0DEC3C();
        v38 = sub_1DCB10E9C(v36, v37, v43);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2048;
        *(v34 + 14) = 446;
        *(v34 + 22) = 2080;
        *(v34 + 24) = sub_1DCB10E9C(0xD00000000000004CLL, 0x80000001DD1167C0, v43);
        _os_log_impl(&dword_1DCAFC000, v32, v33, "FatalError at %s:%lu - %s", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v35, -1, -1);
        MEMORY[0x1E12A8390](v34, -1, -1);
      }

      (*(v30 + 8))(v8, v18);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004CLL, 0x80000001DD1167C0);
  }

  v44 = v41;
  v45 = v42;
  a2(&v44);
  sub_1DCBB12E0(v44, v45, SHIBYTE(v45));
}

void sub_1DCC93DE8(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v37 - v10;
  sub_1DCB09910(a1, v40, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (!swift_dynamicCast())
  {
    v15 = v12;
    v38 = v11;
    v14 = 0;
    v39 = xmmword_1DD0E9180;
    v13 = 0xF000000000000007;
    goto LABEL_6;
  }

  v14 = *(&v39 + 1);
  v13 = v39;
  if ((~v39 & 0xF000000000000007) == 0)
  {
    v15 = v12;
    v38 = v11;
LABEL_6:
    sub_1DCC99DF4(v13, v14);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    v17 = __swift_project_value_buffer(v16, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v20 = 136315394;
      *&v41 = &type metadata for AppResolutionFlowResult;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3160, &unk_1DD0E92E8);
      v22 = sub_1DD0DE02C();
      v24 = sub_1DCB10E9C(v22, v23, v40);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *&v41 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v25 = sub_1DD0DE02C();
      v27 = sub_1DCB10E9C(v25, v26, v40);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Expected exitValue of type %s but instead got value of type %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v21, -1, -1);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    v28 = *(v16 - 8);
    v29 = v38;
    (*(v28 + 16))(v38, v17, v16);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v16);
    sub_1DCB09910(v29, v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
    {
      sub_1DCB0E9D8(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40[0] = v33;
        *v32 = 136315650;
        v34 = sub_1DD0DEC3C();
        v36 = sub_1DCB10E9C(v34, v35, v40);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2048;
        *(v32 + 14) = 446;
        *(v32 + 22) = 2080;
        *(v32 + 24) = sub_1DCB10E9C(0xD00000000000004CLL, 0x80000001DD1167C0, v40);
        _os_log_impl(&dword_1DCAFC000, v30, v31, "FatalError at %s:%lu - %s", v32, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v33, -1, -1);
        MEMORY[0x1E12A8390](v32, -1, -1);
      }

      (*(v28 + 8))(v8, v16);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004CLL, 0x80000001DD1167C0);
  }

  v41 = v39;
  a2(&v41);
  sub_1DCC2315C(v41, *(&v41 + 1));
}

void sub_1DCC94334()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14_23();
  v8 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_47_7();
  v13 = MEMORY[0x1E69E7CA0];
  if (!swift_dynamicCast())
  {
    v47 = v12;
    memset(v48, 0, sizeof(v48));
    sub_1DCB0E9D8(v48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    v15 = OUTLINED_FUNCTION_59_0(v14, qword_1EDE57E00);
    v16 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v16))
    {
      OUTLINED_FUNCTION_43_0();
      *&v50[0] = OUTLINED_FUNCTION_24_14();
      dword_1ECCA3CE0 = 136315394;
      v49 = v13 + 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA31B0, qword_1DD0E9370);
      v17 = sub_1DD0DE02C();
      v19 = sub_1DCB10E9C(v17, v18, v50);

      *algn_1ECCA3CE4 = v19;
      word_1ECCA3CEC = 2080;
      v49 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v20 = sub_1DD0DE02C();
      v22 = sub_1DCB10E9C(v20, v21, v50);

      *algn_1ECCA3CEE = v22;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v23, v24, "Expected exitValue of type %s but instead got value of type %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_0_1();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_10_23();
    v28(v27);
    v29 = OUTLINED_FUNCTION_8_31();
    v32 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v14);
    OUTLINED_FUNCTION_44_6(v32, v33, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v34)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v36))
      {
        OUTLINED_FUNCTION_83();
        *&v50[0] = OUTLINED_FUNCTION_54();
        *v2 = 136315650;
        v37 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        v39 = sub_1DCB10E9C(v37, v38, v50);

        *(v2 + 4) = v39;
        *(v2 + 12) = 2048;
        *(v2 + 14) = 446;
        *(v2 + 22) = 2080;
        v40 = OUTLINED_FUNCTION_21_7();
        *(v2 + 24) = sub_1DCB10E9C(v40, v41, v42);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v43, v44, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_92_0();
        OUTLINED_FUNCTION_52();
      }

      (*(v26 + 8))(v0, v14);
    }

    v45 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v45, v46);
  }

  sub_1DCB20B30(v48, v50);
  v1(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC94730()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3198, &qword_1DD0E9348);
  v13 = OUTLINED_FUNCTION_20_0(v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E80, &qword_1DD0E9350);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v58 - v20;
  sub_1DCB09910(v4, v62, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  OUTLINED_FUNCTION_11_23();
  if (!swift_dynamicCast())
  {
    v59 = v22;
    v60 = v11;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    sub_1DCB0E9D8(v16, &qword_1ECCA3198, &qword_1DD0E9348);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    v27 = OUTLINED_FUNCTION_59_0(v26, qword_1EDE57E00);
    v28 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v28))
    {
      OUTLINED_FUNCTION_43_0();
      v29 = OUTLINED_FUNCTION_24_14();
      v61 = v17;
      v62[0] = v29;
      *v22 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA31A0, &qword_1DD0E9358);
      v30 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_61_7(v30, v31);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v61 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v32 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_61_7(v32, v33);
      OUTLINED_FUNCTION_148();
      *(v22 + 14) = &unk_1DD0E4F80;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v34, v35, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = v60;
    v37 = OUTLINED_FUNCTION_10_23();
    v38(v37);
    v39 = OUTLINED_FUNCTION_8_31();
    v42 = __swift_storeEnumTagSinglePayload(v39, v40, v41, v26);
    OUTLINED_FUNCTION_44_6(v42, v43, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v44)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v45 = sub_1DD0DD8EC();
      v46 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v46))
      {
        OUTLINED_FUNCTION_83();
        v62[0] = OUTLINED_FUNCTION_54();
        *v36 = 136315650;
        v47 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        sub_1DCB10E9C(v47, v48, v62);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v49 = OUTLINED_FUNCTION_21_7();
        *(v36 + 3) = sub_1DCB10E9C(v49, v50, v51);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v52, v53, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v54 = OUTLINED_FUNCTION_13_18();
      v55(v54);
    }

    v56 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v56, v57);
  }

  v23 = OUTLINED_FUNCTION_8_31();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v17);
  sub_1DCBF55E4(v16, v21);
  v2(v21);
  sub_1DCB0E9D8(v21, &qword_1ECCA1E80, &qword_1DD0E9350);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC94B6C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14_23();
  v8 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v8, v9, v10, v11);
  OUTLINED_FUNCTION_47_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E60, &qword_1DD0E2548);
  if (!OUTLINED_FUNCTION_16_13(v12))
  {
    v22 = OUTLINED_FUNCTION_9_21();
    goto LABEL_6;
  }

  v13 = OUTLINED_FUNCTION_20_13();
  if (!v17 & v16)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_6:
    sub_1DCB96104(v22, v23);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v24 = sub_1DD0DD8FC();
    v25 = OUTLINED_FUNCTION_59_0(v24, qword_1EDE57E00);
    v26 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v26))
    {
      OUTLINED_FUNCTION_43_0();
      v27 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v27);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3190, &qword_1DD0E9340);
      v29 = OUTLINED_FUNCTION_42_9(v28);
      OUTLINED_FUNCTION_41_10(v29, v30);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v32 = OUTLINED_FUNCTION_42_9(v31);
      OUTLINED_FUNCTION_41_10(v32, v33);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v34, v35, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = OUTLINED_FUNCTION_10_23();
    v37(v36);
    v38 = OUTLINED_FUNCTION_8_31();
    v41 = __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
    OUTLINED_FUNCTION_44_6(v41, v42, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v17)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v44))
      {
        OUTLINED_FUNCTION_83();
        v45 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v45);
        *v57 = 136315650;
        v46 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        OUTLINED_FUNCTION_58_5(v46, v47);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v48 = OUTLINED_FUNCTION_21_7();
        *(v57 + 24) = sub_1DCB10E9C(v48, v49, v50);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v51, v52, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v53 = OUTLINED_FUNCTION_13_18();
      v54(v53);
    }

    v55 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v55, v56);
  }

  v18 = OUTLINED_FUNCTION_19_14(v13, v14, v15);
  v1(v18);
  v19 = OUTLINED_FUNCTION_36_14();
  sub_1DCBB12E0(v19, v20, v21);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC94E94()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14_23();
  v8 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v8, v9, v10, v11);
  OUTLINED_FUNCTION_47_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D58, &qword_1DD0E1F88);
  if (!OUTLINED_FUNCTION_16_13(v12))
  {
    v22 = OUTLINED_FUNCTION_9_21();
    goto LABEL_6;
  }

  v13 = OUTLINED_FUNCTION_20_13();
  if (!v17 & v16)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_6:
    sub_1DCB960DC(v22, v23);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v24 = sub_1DD0DD8FC();
    v25 = OUTLINED_FUNCTION_59_0(v24, qword_1EDE57E00);
    v26 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v26))
    {
      OUTLINED_FUNCTION_43_0();
      v27 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v27);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3150, &unk_1DD0E92D0);
      v29 = OUTLINED_FUNCTION_42_9(v28);
      OUTLINED_FUNCTION_41_10(v29, v30);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v32 = OUTLINED_FUNCTION_42_9(v31);
      OUTLINED_FUNCTION_41_10(v32, v33);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v34, v35, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = OUTLINED_FUNCTION_10_23();
    v37(v36);
    v38 = OUTLINED_FUNCTION_8_31();
    v41 = __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
    OUTLINED_FUNCTION_44_6(v41, v42, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v17)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v44))
      {
        OUTLINED_FUNCTION_83();
        v45 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v45);
        *v57 = 136315650;
        v46 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        OUTLINED_FUNCTION_58_5(v46, v47);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v48 = OUTLINED_FUNCTION_21_7();
        *(v57 + 24) = sub_1DCB10E9C(v48, v49, v50);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v51, v52, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v53 = OUTLINED_FUNCTION_13_18();
      v54(v53);
    }

    v55 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v55, v56);
  }

  v18 = OUTLINED_FUNCTION_19_14(v13, v14, v15);
  v1(v18);
  v19 = OUTLINED_FUNCTION_36_14();
  sub_1DCC334C8(v19, v20, v21);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC951BC()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14_23();
  v8 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v8, v9, v10, v11);
  OUTLINED_FUNCTION_47_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D78, &qword_1DD0E20B8);
  if (!OUTLINED_FUNCTION_16_13(v12))
  {
    v22 = OUTLINED_FUNCTION_9_21();
    goto LABEL_6;
  }

  v13 = OUTLINED_FUNCTION_20_13();
  if (!v17 & v16)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_6:
    sub_1DCB960DC(v22, v23);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v24 = sub_1DD0DD8FC();
    v25 = OUTLINED_FUNCTION_59_0(v24, qword_1EDE57E00);
    v26 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v26))
    {
      OUTLINED_FUNCTION_43_0();
      v27 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v27);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3158, &qword_1DD0E92E0);
      v29 = OUTLINED_FUNCTION_42_9(v28);
      OUTLINED_FUNCTION_41_10(v29, v30);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v32 = OUTLINED_FUNCTION_42_9(v31);
      OUTLINED_FUNCTION_41_10(v32, v33);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v34, v35, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = OUTLINED_FUNCTION_10_23();
    v37(v36);
    v38 = OUTLINED_FUNCTION_8_31();
    v41 = __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
    OUTLINED_FUNCTION_44_6(v41, v42, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v17)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v44))
      {
        OUTLINED_FUNCTION_83();
        v45 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v45);
        *v57 = 136315650;
        v46 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        OUTLINED_FUNCTION_58_5(v46, v47);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v48 = OUTLINED_FUNCTION_21_7();
        *(v57 + 24) = sub_1DCB10E9C(v48, v49, v50);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v51, v52, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v53 = OUTLINED_FUNCTION_13_18();
      v54(v53);
    }

    v55 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v55, v56);
  }

  v18 = OUTLINED_FUNCTION_19_14(v13, v14, v15);
  v1(v18);
  v19 = OUTLINED_FUNCTION_36_14();
  sub_1DCC334C8(v19, v20, v21);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC954E4(uint64_t a1, void (*a2)(id *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v39 - v10;
  sub_1DCB09910(a1, v43, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F58, &qword_1DD0E2B80);
  if (!swift_dynamicCast())
  {
    v16 = v13;
    v17 = v12;
    v40 = v11;
    v41 = 0;
    v15 = 0;
    v14 = 65280;
    v42 = -256;
    goto LABEL_6;
  }

  v14 = v42;
  v15 = v41;
  if (HIBYTE(v42) > 0xFEu)
  {
    v16 = v13;
    v17 = v12;
    v40 = v11;
LABEL_6:
    sub_1DCB96104(v15, v14);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    v19 = __swift_project_value_buffer(v18, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136315394;
      v44 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3178, &unk_1DD0E9310);
      v24 = sub_1DD0DE02C();
      v26 = sub_1DCB10E9C(v24, v25, v43);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v44 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v27 = sub_1DD0DE02C();
      v29 = sub_1DCB10E9C(v27, v28, v43);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "Expected exitValue of type %s but instead got value of type %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v23, -1, -1);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }

    v30 = *(v18 - 8);
    v31 = v40;
    (*(v30 + 16))(v40, v19, v18);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v18);
    sub_1DCB09910(v31, v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v18) == 1)
    {
      sub_1DCB0E9D8(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v32 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43[0] = v35;
        *v34 = 136315650;
        v36 = sub_1DD0DEC3C();
        v38 = sub_1DCB10E9C(v36, v37, v43);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2048;
        *(v34 + 14) = 446;
        *(v34 + 22) = 2080;
        *(v34 + 24) = sub_1DCB10E9C(0xD00000000000004CLL, 0x80000001DD1167C0, v43);
        _os_log_impl(&dword_1DCAFC000, v32, v33, "FatalError at %s:%lu - %s", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v35, -1, -1);
        MEMORY[0x1E12A8390](v34, -1, -1);
      }

      (*(v30 + 8))(v8, v18);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004CLL, 0x80000001DD1167C0);
  }

  v44 = v41;
  v45 = v42;
  a2(&v44);
  sub_1DCBB12E0(v44, v45, SHIBYTE(v45));
}

void sub_1DCC95A4C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14_23();
  v8 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v8, v9, v10, v11);
  OUTLINED_FUNCTION_47_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DE8, &qword_1DD0E2268);
  if (!OUTLINED_FUNCTION_16_13(v12))
  {
    v22 = OUTLINED_FUNCTION_9_21();
    goto LABEL_6;
  }

  v13 = OUTLINED_FUNCTION_20_13();
  if (!v17 & v16)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_6:
    sub_1DCC99E18(v22, v23);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v24 = sub_1DD0DD8FC();
    v25 = OUTLINED_FUNCTION_59_0(v24, qword_1EDE57E00);
    v26 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v26))
    {
      OUTLINED_FUNCTION_43_0();
      v27 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v27);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3180, &unk_1DD0E9320);
      v29 = OUTLINED_FUNCTION_42_9(v28);
      OUTLINED_FUNCTION_41_10(v29, v30);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v32 = OUTLINED_FUNCTION_42_9(v31);
      OUTLINED_FUNCTION_41_10(v32, v33);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v34, v35, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = OUTLINED_FUNCTION_10_23();
    v37(v36);
    v38 = OUTLINED_FUNCTION_8_31();
    v41 = __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
    OUTLINED_FUNCTION_44_6(v41, v42, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v17)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v44))
      {
        OUTLINED_FUNCTION_83();
        v45 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v45);
        *v57 = 136315650;
        v46 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        OUTLINED_FUNCTION_58_5(v46, v47);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v48 = OUTLINED_FUNCTION_21_7();
        *(v57 + 24) = sub_1DCB10E9C(v48, v49, v50);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v51, v52, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v53 = OUTLINED_FUNCTION_13_18();
      v54(v53);
    }

    v55 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v55, v56);
  }

  v18 = OUTLINED_FUNCTION_19_14(v13, v14, v15);
  v1(v18);
  v19 = OUTLINED_FUNCTION_36_14();
  sub_1DCC99E2C(v19, v20, v21);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC95D74()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_14_23();
  v10 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v10, v11, v12, v13);
  OUTLINED_FUNCTION_47_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EB0, &qword_1DD0E9360);
  if (!OUTLINED_FUNCTION_34_12(&v49, v50) || (v15 = v49, (v49 & 0xF000000000000006) == 0xB000000000000006))
  {
    OUTLINED_FUNCTION_48_8();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    v17 = OUTLINED_FUNCTION_59_0(v16, qword_1EDE57E00);
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v18))
    {
      OUTLINED_FUNCTION_43_0();
      v50[0] = OUTLINED_FUNCTION_24_14();
      *v14 = 136315394;
      v51 = v2;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA31A8, &qword_1DD0E9368);
      v20 = OUTLINED_FUNCTION_63_3(v19);
      OUTLINED_FUNCTION_62_4(v20, v21);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v51 = v4;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v23 = OUTLINED_FUNCTION_63_3(v22);
      OUTLINED_FUNCTION_62_4(v23, v24);
      OUTLINED_FUNCTION_148();
      *(v14 + 14) = v3;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v25, v26, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v27 = OUTLINED_FUNCTION_10_23();
    v28(v27);
    v29 = OUTLINED_FUNCTION_8_31();
    v32 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v16);
    OUTLINED_FUNCTION_44_6(v32, v33, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v34)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v36))
      {
        OUTLINED_FUNCTION_83();
        v50[0] = OUTLINED_FUNCTION_54();
        *v48 = 136315650;
        v37 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        sub_1DCB10E9C(v37, v38, v50);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v39 = OUTLINED_FUNCTION_21_7();
        *(v48 + 24) = sub_1DCB10E9C(v39, v40, v41);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v42, v43, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v44 = OUTLINED_FUNCTION_13_18();
      v45(v44);
    }

    v46 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v46, v47);
  }

  v51 = v49;
  v1(&v51);
  sub_1DCC99E58(v15);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCC960C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCC96128(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_1DCC961A4(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(v6 + 64);
  if (v8)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (*(v6 + 80) > 7u || (*(v6 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (v8)
  {
    if (!__swift_getEnumTagSinglePayload(a2, *(v6 + 84), v5))
    {
LABEL_33:
      (*(v7 + 16))(a1, a2, v5);
      if (!v8)
      {
        *(a1 + v9) = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v9))
    {
      goto LABEL_33;
    }

    v13 = (*(a2 + v9) - 1) << (8 * v9);
    if (v9 > 3)
    {
      v13 = 0;
    }

    if (v9)
    {
      v14 = v9 <= 3 ? v9 : 4;
      switch(v14)
      {
        case 2:
          v15 = *a2;
          break;
        case 3:
          v15 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v15 = *a2;
          break;
        default:
          v15 = *a2;
          break;
      }
    }

    else
    {
      v15 = 0;
    }

    if ((v15 | v13) == 0xFFFFFFFF)
    {
      goto LABEL_33;
    }
  }

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCC9636C(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5)
  {
    v11 = *(v3 - 8);
    result = __swift_getEnumTagSinglePayload(a1, v5, v3);
    v4 = v11;
    if (result)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!*(a1 + v6))
  {
    goto LABEL_17;
  }

  v8 = (*(a1 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v8 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  v9 = v6 | v8;
  result = (v9 + 1);
  if (v9 == -1)
  {
LABEL_17:
    v10 = *(v4 + 8);

    return v10(a1, v3);
  }

  return result;
}

_BYTE *sub_1DCC964B4(_BYTE *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7)
  {
    if (!__swift_getEnumTagSinglePayload(a2, v7, v5))
    {
LABEL_24:
      (*(v6 + 16))(a1, a2, v5);
      if (!v7)
      {
        a1[v8] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v8))
    {
      goto LABEL_24;
    }

    v9 = (*(a2 + v8) - 1) << (8 * v8);
    if (v8 > 3)
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8 <= 3 ? *(v6 + 64) : 4;
      switch(v10)
      {
        case 2:
          v11 = *a2;
          break;
        case 3:
          v11 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v11 = *a2;
          break;
        default:
          v11 = *a2;
          break;
      }
    }

    else
    {
      v11 = 0;
    }

    if ((v11 | v9) == 0xFFFFFFFF)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  return memcpy(a1, a2, v12);
}

unsigned __int16 *sub_1DCC96634(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (!v7)
  {
    v11 = 8 * v8;
    if (*(a1 + v8))
    {
      v12 = (*(a1 + v8) - 1) << v11;
      if (v8 > 3)
      {
        v12 = 0;
      }

      if (v8)
      {
        v13 = v8 <= 3 ? *(v6 + 64) : 4;
        switch(v13)
        {
          case 2:
            v14 = *a1;
            break;
          case 3:
            v14 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v14 = *a1;
            break;
          default:
            v14 = *a1;
            break;
        }
      }

      else
      {
        v14 = 0;
      }

      if ((v14 | v12) != 0xFFFFFFFF)
      {
        if (!*(a2 + v8))
        {
          goto LABEL_56;
        }

        v15 = (*(a2 + v8) - 1) << v11;
        if (v8 > 3)
        {
          v15 = 0;
        }

        if (v8)
        {
          v16 = v8 <= 3 ? *(v6 + 64) : 4;
          switch(v16)
          {
            case 2:
              v17 = *a2;
              break;
            case 3:
              v17 = *a2 | (*(a2 + 2) << 16);
              break;
            case 4:
              v17 = *a2;
              break;
            default:
              v17 = *a2;
              break;
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v17 | v15) == 0xFFFFFFFF)
        {
          goto LABEL_56;
        }

        goto LABEL_45;
      }
    }

    if (!*(a2 + v8))
    {
LABEL_51:
      (*(v6 + 24))(a1, a2, v5);
      return a1;
    }

    v18 = (*(a2 + v8) - 1) << v11;
    if (v8 > 3)
    {
      v18 = 0;
    }

    if (v8)
    {
      if (v8 <= 3)
      {
        v19 = *(v6 + 64);
      }

      else
      {
        v19 = 4;
      }

      switch(v19)
      {
        case 2:
          v20 = *a2;
          break;
        case 3:
          v20 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v20 = *a2;
          break;
        default:
          v20 = *a2;
          break;
      }
    }

    else
    {
      v20 = 0;
    }

    v10 = (v20 | v18) + 1;
LABEL_43:
    if (v10)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
  v10 = __swift_getEnumTagSinglePayload(a2, v7, v5);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_43;
  }

  if (!v10)
  {
LABEL_56:
    (*(v6 + 16))(a1, a2, v5);
    if (!v7)
    {
      *(a1 + v8) = 0;
    }

    return a1;
  }

LABEL_45:
  if (v7)
  {
    v21 = v8;
  }

  else
  {
    v21 = v8 + 1;
  }

  return memcpy(a1, a2, v21);
}

_BYTE *sub_1DCC96918(_BYTE *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7)
  {
    if (!__swift_getEnumTagSinglePayload(a2, v7, v5))
    {
LABEL_24:
      (*(v6 + 32))(a1, a2, v5);
      if (!v7)
      {
        a1[v8] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v8))
    {
      goto LABEL_24;
    }

    v9 = (*(a2 + v8) - 1) << (8 * v8);
    if (v8 > 3)
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8 <= 3 ? *(v6 + 64) : 4;
      switch(v10)
      {
        case 2:
          v11 = *a2;
          break;
        case 3:
          v11 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v11 = *a2;
          break;
        default:
          v11 = *a2;
          break;
      }
    }

    else
    {
      v11 = 0;
    }

    if ((v11 | v9) == 0xFFFFFFFF)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  return memcpy(a1, a2, v12);
}

unsigned __int16 *sub_1DCC96A98(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (!v7)
  {
    v11 = 8 * v8;
    if (*(a1 + v8))
    {
      v12 = (*(a1 + v8) - 1) << v11;
      if (v8 > 3)
      {
        v12 = 0;
      }

      if (v8)
      {
        v13 = v8 <= 3 ? *(v6 + 64) : 4;
        switch(v13)
        {
          case 2:
            v14 = *a1;
            break;
          case 3:
            v14 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v14 = *a1;
            break;
          default:
            v14 = *a1;
            break;
        }
      }

      else
      {
        v14 = 0;
      }

      if ((v14 | v12) != 0xFFFFFFFF)
      {
        if (!*(a2 + v8))
        {
          goto LABEL_56;
        }

        v15 = (*(a2 + v8) - 1) << v11;
        if (v8 > 3)
        {
          v15 = 0;
        }

        if (v8)
        {
          v16 = v8 <= 3 ? *(v6 + 64) : 4;
          switch(v16)
          {
            case 2:
              v17 = *a2;
              break;
            case 3:
              v17 = *a2 | (*(a2 + 2) << 16);
              break;
            case 4:
              v17 = *a2;
              break;
            default:
              v17 = *a2;
              break;
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v17 | v15) == 0xFFFFFFFF)
        {
          goto LABEL_56;
        }

        goto LABEL_45;
      }
    }

    if (!*(a2 + v8))
    {
LABEL_51:
      (*(v6 + 40))(a1, a2, v5);
      return a1;
    }

    v18 = (*(a2 + v8) - 1) << v11;
    if (v8 > 3)
    {
      v18 = 0;
    }

    if (v8)
    {
      if (v8 <= 3)
      {
        v19 = *(v6 + 64);
      }

      else
      {
        v19 = 4;
      }

      switch(v19)
      {
        case 2:
          v20 = *a2;
          break;
        case 3:
          v20 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v20 = *a2;
          break;
        default:
          v20 = *a2;
          break;
      }
    }

    else
    {
      v20 = 0;
    }

    v10 = (v20 | v18) + 1;
LABEL_43:
    if (v10)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
  v10 = __swift_getEnumTagSinglePayload(a2, v7, v5);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_43;
  }

  if (!v10)
  {
LABEL_56:
    (*(v6 + 32))(a1, a2, v5);
    if (!v7)
    {
      *(a1 + v8) = 0;
    }

    return a1;
  }

LABEL_45:
  if (v7)
  {
    v21 = v8;
  }

  else
  {
    v21 = v8 + 1;
  }

  return memcpy(a1, a2, v21);
}

uint64_t sub_1DCC96D7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCC96EF4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
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
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            if (a2 >= v9)
            {
              if (v11 <= 3)
              {
                v22 = ~(-1 << (8 * v11));
              }

              else
              {
                v22 = -1;
              }

              if (v11)
              {
                v23 = v22 & (a2 - v9);
                if (v11 <= 3)
                {
                  v24 = v11;
                }

                else
                {
                  v24 = 4;
                }

                bzero(a1, v11);
                switch(v24)
                {
                  case 2:
                    *a1 = v23;
                    break;
                  case 3:
                    *a1 = v23;
                    a1[2] = BYTE2(v23);
                    break;
                  case 4:
                    *a1 = v23;
                    break;
                  default:
                    *a1 = v23;
                    break;
                }
              }
            }

            else
            {
              v21 = a2 + 1;

              __swift_storeEnumTagSinglePayload(a1, v21, v9, v7);
            }
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCC9719C(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 64);
  if (v4)
  {
    return __swift_getEnumTagSinglePayload(a1, v4, v2);
  }

  if (!*(a1 + v5))
  {
    return 0;
  }

  v7 = (*(a1 + v5) - 1) << (8 * v5);
  if (v5 > 3)
  {
    v7 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v7) + 1;
}

void sub_1DCC97274(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 >= a2)
  {
    if (v6)
    {
      if (!a2)
      {
        return;
      }
    }

    else
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }
    }

    __swift_storeEnumTagSinglePayload(a1, a2, v6, v4);
    return;
  }

  v8 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v8;
    LOBYTE(v9) = 1;
    if (v6)
    {
      return;
    }

    goto LABEL_19;
  }

  v9 = (v8 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_18:
    if (v6)
    {
      return;
    }

    goto LABEL_19;
  }

  v10 = v8 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v10;
    a1[2] = BYTE2(v10);
    goto LABEL_18;
  }

  if (v7 == 2)
  {
    *a1 = v10;
    if (v6)
    {
      return;
    }

    goto LABEL_19;
  }

  *a1 = v8;
  if (!v6)
  {
LABEL_19:
    a1[v7] = v9;
  }
}

uint64_t sub_1DCC973C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ConditionalFlow.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConditionalFlow.execute()(uint64_t a1)
{
  OUTLINED_FUNCTION_66();
  v6 = (*(v3 + 168) + **(v3 + 168));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCB193FC;

  return v6(a1);
}

uint64_t sub_1DCC975FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ConditionalFlowResult(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_1DCC97678(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  v12 = v10;
  if (v8 <= 1)
  {
    if (v10 <= 3)
    {
      v14 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v14 > 0xFFFE)
      {
        v13 = 4;
      }

      else
      {
        v15 = 1;
        if (v14 >= 0xFF)
        {
          v15 = 2;
        }

        if (v14)
        {
          v13 = v15;
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

    v12 = v13 + v10;
  }

  if (*(v6 + 80) > 7u || v12 > 0x18 || (*(v6 + 80) & 0x100000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_28;
    }

    v19 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v19 > 0xFFFE)
    {
      v18 = *(a2 + v10);
      if (!v18)
      {
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    if (v19 > 0xFE)
    {
      v18 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    if (v19)
    {
LABEL_28:
      v18 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_45;
      }

LABEL_35:
      v20 = (v18 - 1) << v11;
      if (v10 > 3)
      {
        v20 = 0;
      }

      if (v10)
      {
        if (v10 <= 3)
        {
          v21 = v10;
        }

        else
        {
          v21 = 4;
        }

        switch(v21)
        {
          case 2:
            v22 = *a2;
            break;
          case 3:
            v22 = *a2 | (*(a2 + 2) << 16);
            break;
          case 4:
            v22 = *a2;
            break;
          default:
            v22 = *a2;
            break;
        }
      }

      else
      {
        v22 = 0;
      }

      if ((v22 | v20) + v8 != -1)
      {
        goto LABEL_53;
      }

LABEL_55:
      if (!v7)
      {
        if (*(a2 + v9))
        {
          v24 = (*(a2 + v9) - 1) << (8 * v9);
          if (v9 > 3)
          {
            v24 = 0;
          }

          if (v9)
          {
            v25 = v9 <= 3 ? *(v6 + 64) : 4;
            switch(v25)
            {
              case 2:
                v26 = *a2;
                break;
              case 3:
                v26 = *a2 | (*(a2 + 2) << 16);
                break;
              case 4:
                v26 = *a2;
                break;
              default:
                v26 = *a2;
                break;
            }
          }

          else
          {
            v26 = 0;
          }

          if ((v26 | v24) != 0xFFFFFFFF)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_83;
      }

LABEL_56:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5))
      {
LABEL_57:
        memcpy(a1, a2, v10);
        goto LABEL_85;
      }

LABEL_83:
      (*(v6 + 16))(a1, a2, v5);
      if (!v7)
      {
        *(a1 + v9) = 0;
      }

LABEL_85:
      if (v8 <= 1)
      {
        if (v10 <= 3)
        {
          v30 = (~(-1 << v11) - v8 + 2) >> v11;
          if (v30 > 0xFFFE)
          {
            *(a1 + v10) = 0;
            return a1;
          }

          if (v30 > 0xFE)
          {
            *(a1 + v10) = 0;
            return a1;
          }

          if (!v30)
          {
            return a1;
          }
        }

        *(a1 + v10) = 0;
      }

      return a1;
    }
  }

LABEL_45:
  if (v7 < 2)
  {
    goto LABEL_55;
  }

  if (__swift_getEnumTagSinglePayload(a2, *(v6 + 84), v5) < 2)
  {
    goto LABEL_56;
  }

  if (v8 <= 1)
  {
LABEL_53:
    if (v10 <= 3)
    {
      v27 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v27 > 0xFFFE)
      {
        v23 = 4;
      }

      else
      {
        v28 = 1;
        if (v27 >= 0xFF)
        {
          v28 = 2;
        }

        if (v27)
        {
          v23 = v28;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }

    v10 += v23;
  }

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCC97A80(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = *(v3 - 8);
  v16 = result;
  v5 = *(result + 84);
  v6 = *(result + 64);
  v7 = v5 - 1;
  if (v5)
  {
    v8 = *(result + 64);
  }

  else
  {
    v7 = 0;
    v8 = v6 + 1;
  }

  if (v7 <= 1)
  {
    v9 = 8 * v8;
    if (v8 > 3)
    {
      goto LABEL_6;
    }

    v11 = (~(-1 << v9) - v7 + 2) >> v9;
    if (v11 > 0xFFFE)
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (v11 > 0xFE)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (v11)
    {
LABEL_6:
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_21;
      }

LABEL_13:
      v12 = (v10 - 1) << v9;
      if (v8 > 3)
      {
        v12 = 0;
      }

      if (v8)
      {
        if (v8 > 3)
        {
          LODWORD(v8) = 4;
        }

        switch(v8)
        {
          case 2:
            LODWORD(v8) = *a1;
            break;
          case 3:
            LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v8) = *a1;
            break;
          default:
            LODWORD(v8) = *a1;
            break;
        }
      }

      if ((v8 | v12) + v7 != -1)
      {
        return result;
      }

      goto LABEL_28;
    }
  }

LABEL_21:
  if (v5 >= 2)
  {
    result = __swift_getEnumTagSinglePayload(a1, v5, v3);
    if (result >= 2)
    {
      return result;
    }

LABEL_29:
    result = __swift_getEnumTagSinglePayload(a1, v5, v3);
    if (result)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_28:
  if (v5)
  {
    goto LABEL_29;
  }

  if (!*(a1 + v6))
  {
    goto LABEL_43;
  }

  v13 = (*(a1 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v13 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  v14 = v6 | v13;
  result = (v14 + 1);
  if (v14 == -1)
  {
LABEL_43:
    v15 = *(v16 + 8);

    return v15(a1, v3);
  }

  return result;
}

char *sub_1DCC97CE4(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v13 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v13 > 0xFFFE)
    {
      v12 = *(a2 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFE)
    {
      v12 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v13)
    {
LABEL_9:
      v12 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_26;
      }

LABEL_16:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 <= 3)
        {
          v15 = v10;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 2:
            v16 = *a2;
            break;
          case 3:
            v16 = *a2 | (*(a2 + 2) << 16);
            break;
          case 4:
            v16 = *a2;
            break;
          default:
            v16 = *a2;
            break;
        }
      }

      else
      {
        v16 = 0;
      }

      if ((v16 | v14) + v8 != -1)
      {
        goto LABEL_34;
      }

LABEL_36:
      if (!v7)
      {
        if (*(a2 + v9))
        {
          v18 = (*(a2 + v9) - 1) << (8 * v9);
          if (v9 > 3)
          {
            v18 = 0;
          }

          if (v9)
          {
            v19 = v9 <= 3 ? *(v6 + 64) : 4;
            switch(v19)
            {
              case 2:
                v20 = *a2;
                break;
              case 3:
                v20 = *a2 | (*(a2 + 2) << 16);
                break;
              case 4:
                v20 = *a2;
                break;
              default:
                v20 = *a2;
                break;
            }
          }

          else
          {
            v20 = 0;
          }

          if ((v20 | v18) != 0xFFFFFFFF)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_64;
      }

LABEL_37:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5))
      {
LABEL_38:
        memcpy(a1, a2, v10);
        goto LABEL_66;
      }

LABEL_64:
      (*(v6 + 16))(a1, a2, v5);
      if (!v7)
      {
        a1[v9] = 0;
      }

LABEL_66:
      if (v8 <= 1)
      {
        if (v10 <= 3)
        {
          v24 = (~(-1 << v11) - v8 + 2) >> v11;
          if (v24 > 0xFFFE)
          {
            *&a1[v10] = 0;
            return a1;
          }

          if (v24 > 0xFE)
          {
            *&a1[v10] = 0;
            return a1;
          }

          if (!v24)
          {
            return a1;
          }
        }

        a1[v10] = 0;
      }

      return a1;
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    goto LABEL_36;
  }

  if (__swift_getEnumTagSinglePayload(a2, *(v6 + 84), v5) < 2)
  {
    goto LABEL_37;
  }

  if (v8 <= 1)
  {
LABEL_34:
    if (v10 <= 3)
    {
      v21 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v21 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v22 = 1;
        if (v21 >= 0xFF)
        {
          v22 = 2;
        }

        if (v21)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v10 += v17;
  }

  return memcpy(a1, a2, v10);
}

unsigned __int8 *sub_1DCC98054(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  v12 = 8 * v9;
  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v14 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v14 > 0xFFFE)
    {
      v13 = *&a1[v10];
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v14 <= 0xFE)
      {
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_9:
        v13 = a1[v10];
        if (!a1[v10])
        {
          goto LABEL_26;
        }

LABEL_16:
        v15 = (v13 - 1) << v11;
        if (v10 > 3)
        {
          v15 = 0;
        }

        if (v10)
        {
          if (v10 <= 3)
          {
            v16 = v10;
          }

          else
          {
            v16 = 4;
          }

          switch(v16)
          {
            case 2:
              v17 = *a1;
              break;
            case 3:
              v17 = *a1 | (a1[2] << 16);
              break;
            case 4:
              v17 = *a1;
              break;
            default:
              v17 = *a1;
              break;
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v17 | v15) + v8 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v13 = *&a1[v10];
      if (*&a1[v10])
      {
        goto LABEL_16;
      }
    }
  }

LABEL_26:
  if (v7 >= 2 && __swift_getEnumTagSinglePayload(a1, *(v6 + 84), v5) >= 2)
  {
    if (v8 > 1)
    {
LABEL_106:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5) >= 2)
      {
        goto LABEL_163;
      }

      goto LABEL_114;
    }

LABEL_36:
    if (v10 <= 3)
    {
      v21 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v21 > 0xFFFE)
      {
        v18 = *&a2[v10];
        if (!v18)
        {
          goto LABEL_105;
        }

        goto LABEL_61;
      }

      if (v21 > 0xFE)
      {
        v18 = *&a2[v10];
        if (!*&a2[v10])
        {
          goto LABEL_105;
        }

        goto LABEL_61;
      }

      if (!v21)
      {
LABEL_105:
        if (v7 >= 2)
        {
          goto LABEL_106;
        }

LABEL_113:
        if (!v7)
        {
          if (a2[v9])
          {
            v36 = (a2[v9] - 1) << v12;
            if (v9 > 3)
            {
              v36 = 0;
            }

            if (v9)
            {
              v37 = v9 <= 3 ? v9 : 4;
              switch(v37)
              {
                case 2:
                  v38 = *a2;
                  break;
                case 3:
                  v38 = *a2 | (a2[2] << 16);
                  break;
                case 4:
                  v38 = *a2;
                  break;
                default:
                  v38 = *a2;
                  break;
              }
            }

            else
            {
              v38 = 0;
            }

            if ((v38 | v36) != 0xFFFFFFFF)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_181;
        }

LABEL_114:
        if (__swift_getEnumTagSinglePayload(a2, v7, v5))
        {
LABEL_115:
          memcpy(a1, a2, v10);
          goto LABEL_183;
        }

LABEL_181:
        (*(v6 + 16))(a1, a2, v5);
        if (!v7)
        {
          a1[v9] = 0;
        }

LABEL_183:
        if (v8 <= 1)
        {
          if (v10 <= 3)
          {
            v49 = (~(-1 << v11) - v8 + 2) >> v11;
            if (v49 > 0xFFFE)
            {
              *&a1[v10] = 0;
              return a1;
            }

            if (v49 > 0xFE)
            {
              *&a1[v10] = 0;
              return a1;
            }

            if (!v49)
            {
              return a1;
            }
          }

          a1[v10] = 0;
        }

        return a1;
      }
    }

    v18 = a2[v10];
    if (!a2[v10])
    {
      goto LABEL_105;
    }

LABEL_61:
    v25 = (v18 - 1) << v11;
    if (v10 > 3)
    {
      v25 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v26 = v10;
      }

      else
      {
        v26 = 4;
      }

      switch(v26)
      {
        case 2:
          v27 = *a2;
          break;
        case 3:
          v27 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v27 = *a2;
          break;
        default:
          v27 = *a2;
          break;
      }
    }

    else
    {
      v27 = 0;
    }

    if ((v27 | v25) + v8 != -1)
    {
      goto LABEL_164;
    }

    goto LABEL_113;
  }

  if (v8 > 1)
  {
    goto LABEL_71;
  }

LABEL_39:
  if (v10 > 3)
  {
    goto LABEL_40;
  }

  v20 = (~(-1 << v11) - v8 + 2) >> v11;
  if (v20 > 0xFFFE)
  {
    v19 = *&a2[v10];
    if (!v19)
    {
      goto LABEL_71;
    }

LABEL_51:
    v22 = (v19 - 1) << v11;
    if (v10 > 3)
    {
      v22 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v23 = v10;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 2:
          v24 = *a2;
          break;
        case 3:
          v24 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v24 = *a2;
          break;
        default:
          v24 = *a2;
          break;
      }
    }

    else
    {
      v24 = 0;
    }

    if ((v24 | v22) + v8 == -1)
    {
      goto LABEL_81;
    }

    if (v7)
    {
      goto LABEL_79;
    }

    if (!a1[v9])
    {
      goto LABEL_162;
    }

    v33 = (a1[v9] - 1) << v12;
    if (v9 > 3)
    {
      v33 = 0;
    }

    if (v9)
    {
      v34 = v9 <= 3 ? v9 : 4;
      switch(v34)
      {
        case 2:
          v35 = *a1;
          break;
        case 3:
          v35 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v35 = *a1;
          break;
        default:
          v35 = *a1;
          break;
      }
    }

    else
    {
      v35 = 0;
    }

    if ((v35 | v33) == 0xFFFFFFFF)
    {
LABEL_162:
      (*(v6 + 8))(a1, v5);
    }

LABEL_163:
    if (v8 > 1)
    {
      goto LABEL_174;
    }

LABEL_164:
    if (v10 <= 3)
    {
      v46 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v46 > 0xFFFE)
      {
        v45 = 4;
      }

      else
      {
        v47 = 1;
        if (v46 >= 0xFF)
        {
          v47 = 2;
        }

        if (v46)
        {
          v45 = v47;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    else
    {
      v45 = 1;
    }

    v10 += v45;
    goto LABEL_174;
  }

  if (v20 > 0xFE)
  {
    v19 = *&a2[v10];
    if (!*&a2[v10])
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

  if (v20)
  {
LABEL_40:
    v19 = a2[v10];
    if (!a2[v10])
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

LABEL_71:
  if (v7 >= 2)
  {
    if (__swift_getEnumTagSinglePayload(a2, v7, v5) < 2)
    {
      goto LABEL_82;
    }

LABEL_79:
    if (__swift_getEnumTagSinglePayload(a1, v7, v5))
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_81:
  if (!v7)
  {
    if (a1[v9])
    {
      v30 = (a1[v9] - 1) << v12;
      if (v9 > 3)
      {
        v30 = 0;
      }

      if (v9)
      {
        v31 = v9 <= 3 ? v9 : 4;
        switch(v31)
        {
          case 2:
            v32 = *a1;
            break;
          case 3:
            v32 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v32 = *a1;
            break;
          default:
            v32 = *a1;
            break;
        }
      }

      else
      {
        v32 = 0;
      }

      if ((v32 | v30) != 0xFFFFFFFF)
      {
        if (!a2[v9])
        {
          goto LABEL_84;
        }

        v39 = (a2[v9] - 1) << v12;
        if (v9 > 3)
        {
          v39 = 0;
        }

        if (v9)
        {
          v40 = v9 <= 3 ? v9 : 4;
          switch(v40)
          {
            case 2:
              v41 = *a2;
              break;
            case 3:
              v41 = *a2 | (a2[2] << 16);
              break;
            case 4:
              v41 = *a2;
              break;
            default:
              v41 = *a2;
              break;
          }
        }

        else
        {
          v41 = 0;
        }

        if ((v41 | v39) == 0xFFFFFFFF)
        {
          goto LABEL_84;
        }

        goto LABEL_174;
      }
    }

    if (!a2[v9])
    {
      goto LABEL_157;
    }

    v42 = (a2[v9] - 1) << v12;
    if (v9 > 3)
    {
      v42 = 0;
    }

    if (v9)
    {
      if (v9 <= 3)
      {
        v43 = v9;
      }

      else
      {
        v43 = 4;
      }

      switch(v43)
      {
        case 2:
          v44 = *a2;
          break;
        case 3:
          v44 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v44 = *a2;
          break;
        default:
          v44 = *a2;
          break;
      }
    }

    else
    {
      v44 = 0;
    }

    v29 = (v44 | v42) + 1;
LABEL_155:
    if (v29)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_174;
    }

LABEL_157:
    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

LABEL_82:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
  v29 = __swift_getEnumTagSinglePayload(a2, v7, v5);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_155;
  }

  if (!v29)
  {
LABEL_84:
    (*(v6 + 16))(a1, a2, v5);
    if (!v7)
    {
      a1[v9] = 0;
    }

    return a1;
  }

LABEL_174:

  return memcpy(a1, a2, v10);
}

char *sub_1DCC988AC(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v13 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v13 > 0xFFFE)
    {
      v12 = *(a2 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFE)
    {
      v12 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v13)
    {
LABEL_9:
      v12 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_26;
      }

LABEL_16:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 <= 3)
        {
          v15 = v10;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 2:
            v16 = *a2;
            break;
          case 3:
            v16 = *a2 | (*(a2 + 2) << 16);
            break;
          case 4:
            v16 = *a2;
            break;
          default:
            v16 = *a2;
            break;
        }
      }

      else
      {
        v16 = 0;
      }

      if ((v16 | v14) + v8 != -1)
      {
        goto LABEL_34;
      }

LABEL_36:
      if (!v7)
      {
        if (*(a2 + v9))
        {
          v18 = (*(a2 + v9) - 1) << (8 * v9);
          if (v9 > 3)
          {
            v18 = 0;
          }

          if (v9)
          {
            v19 = v9 <= 3 ? *(v6 + 64) : 4;
            switch(v19)
            {
              case 2:
                v20 = *a2;
                break;
              case 3:
                v20 = *a2 | (*(a2 + 2) << 16);
                break;
              case 4:
                v20 = *a2;
                break;
              default:
                v20 = *a2;
                break;
            }
          }

          else
          {
            v20 = 0;
          }

          if ((v20 | v18) != 0xFFFFFFFF)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_64;
      }

LABEL_37:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5))
      {
LABEL_38:
        memcpy(a1, a2, v10);
        goto LABEL_66;
      }

LABEL_64:
      (*(v6 + 32))(a1, a2, v5);
      if (!v7)
      {
        a1[v9] = 0;
      }

LABEL_66:
      if (v8 <= 1)
      {
        if (v10 <= 3)
        {
          v24 = (~(-1 << v11) - v8 + 2) >> v11;
          if (v24 > 0xFFFE)
          {
            *&a1[v10] = 0;
            return a1;
          }

          if (v24 > 0xFE)
          {
            *&a1[v10] = 0;
            return a1;
          }

          if (!v24)
          {
            return a1;
          }
        }

        a1[v10] = 0;
      }

      return a1;
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    goto LABEL_36;
  }

  if (__swift_getEnumTagSinglePayload(a2, *(v6 + 84), v5) < 2)
  {
    goto LABEL_37;
  }

  if (v8 <= 1)
  {
LABEL_34:
    if (v10 <= 3)
    {
      v21 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v21 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v22 = 1;
        if (v21 >= 0xFF)
        {
          v22 = 2;
        }

        if (v21)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v10 += v17;
  }

  return memcpy(a1, a2, v10);
}

unsigned __int8 *sub_1DCC98C1C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  v12 = 8 * v9;
  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v14 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v14 > 0xFFFE)
    {
      v13 = *&a1[v10];
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v14 <= 0xFE)
      {
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_9:
        v13 = a1[v10];
        if (!a1[v10])
        {
          goto LABEL_26;
        }

LABEL_16:
        v15 = (v13 - 1) << v11;
        if (v10 > 3)
        {
          v15 = 0;
        }

        if (v10)
        {
          if (v10 <= 3)
          {
            v16 = v10;
          }

          else
          {
            v16 = 4;
          }

          switch(v16)
          {
            case 2:
              v17 = *a1;
              break;
            case 3:
              v17 = *a1 | (a1[2] << 16);
              break;
            case 4:
              v17 = *a1;
              break;
            default:
              v17 = *a1;
              break;
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v17 | v15) + v8 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v13 = *&a1[v10];
      if (*&a1[v10])
      {
        goto LABEL_16;
      }
    }
  }

LABEL_26:
  if (v7 >= 2 && __swift_getEnumTagSinglePayload(a1, *(v6 + 84), v5) >= 2)
  {
    if (v8 > 1)
    {
LABEL_106:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5) >= 2)
      {
        goto LABEL_163;
      }

      goto LABEL_114;
    }

LABEL_36:
    if (v10 <= 3)
    {
      v21 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v21 > 0xFFFE)
      {
        v18 = *&a2[v10];
        if (!v18)
        {
          goto LABEL_105;
        }

        goto LABEL_61;
      }

      if (v21 > 0xFE)
      {
        v18 = *&a2[v10];
        if (!*&a2[v10])
        {
          goto LABEL_105;
        }

        goto LABEL_61;
      }

      if (!v21)
      {
LABEL_105:
        if (v7 >= 2)
        {
          goto LABEL_106;
        }

LABEL_113:
        if (!v7)
        {
          if (a2[v9])
          {
            v36 = (a2[v9] - 1) << v12;
            if (v9 > 3)
            {
              v36 = 0;
            }

            if (v9)
            {
              v37 = v9 <= 3 ? v9 : 4;
              switch(v37)
              {
                case 2:
                  v38 = *a2;
                  break;
                case 3:
                  v38 = *a2 | (a2[2] << 16);
                  break;
                case 4:
                  v38 = *a2;
                  break;
                default:
                  v38 = *a2;
                  break;
              }
            }

            else
            {
              v38 = 0;
            }

            if ((v38 | v36) != 0xFFFFFFFF)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_181;
        }

LABEL_114:
        if (__swift_getEnumTagSinglePayload(a2, v7, v5))
        {
LABEL_115:
          memcpy(a1, a2, v10);
          goto LABEL_183;
        }

LABEL_181:
        (*(v6 + 32))(a1, a2, v5);
        if (!v7)
        {
          a1[v9] = 0;
        }

LABEL_183:
        if (v8 <= 1)
        {
          if (v10 <= 3)
          {
            v49 = (~(-1 << v11) - v8 + 2) >> v11;
            if (v49 > 0xFFFE)
            {
              *&a1[v10] = 0;
              return a1;
            }

            if (v49 > 0xFE)
            {
              *&a1[v10] = 0;
              return a1;
            }

            if (!v49)
            {
              return a1;
            }
          }

          a1[v10] = 0;
        }

        return a1;
      }
    }

    v18 = a2[v10];
    if (!a2[v10])
    {
      goto LABEL_105;
    }

LABEL_61:
    v25 = (v18 - 1) << v11;
    if (v10 > 3)
    {
      v25 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v26 = v10;
      }

      else
      {
        v26 = 4;
      }

      switch(v26)
      {
        case 2:
          v27 = *a2;
          break;
        case 3:
          v27 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v27 = *a2;
          break;
        default:
          v27 = *a2;
          break;
      }
    }

    else
    {
      v27 = 0;
    }

    if ((v27 | v25) + v8 != -1)
    {
      goto LABEL_164;
    }

    goto LABEL_113;
  }

  if (v8 > 1)
  {
    goto LABEL_71;
  }

LABEL_39:
  if (v10 > 3)
  {
    goto LABEL_40;
  }

  v20 = (~(-1 << v11) - v8 + 2) >> v11;
  if (v20 > 0xFFFE)
  {
    v19 = *&a2[v10];
    if (!v19)
    {
      goto LABEL_71;
    }

LABEL_51:
    v22 = (v19 - 1) << v11;
    if (v10 > 3)
    {
      v22 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v23 = v10;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 2:
          v24 = *a2;
          break;
        case 3:
          v24 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v24 = *a2;
          break;
        default:
          v24 = *a2;
          break;
      }
    }

    else
    {
      v24 = 0;
    }

    if ((v24 | v22) + v8 == -1)
    {
      goto LABEL_81;
    }

    if (v7)
    {
      goto LABEL_79;
    }

    if (!a1[v9])
    {
      goto LABEL_162;
    }

    v33 = (a1[v9] - 1) << v12;
    if (v9 > 3)
    {
      v33 = 0;
    }

    if (v9)
    {
      v34 = v9 <= 3 ? v9 : 4;
      switch(v34)
      {
        case 2:
          v35 = *a1;
          break;
        case 3:
          v35 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v35 = *a1;
          break;
        default:
          v35 = *a1;
          break;
      }
    }

    else
    {
      v35 = 0;
    }

    if ((v35 | v33) == 0xFFFFFFFF)
    {
LABEL_162:
      (*(v6 + 8))(a1, v5);
    }

LABEL_163:
    if (v8 > 1)
    {
      goto LABEL_174;
    }

LABEL_164:
    if (v10 <= 3)
    {
      v46 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v46 > 0xFFFE)
      {
        v45 = 4;
      }

      else
      {
        v47 = 1;
        if (v46 >= 0xFF)
        {
          v47 = 2;
        }

        if (v46)
        {
          v45 = v47;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    else
    {
      v45 = 1;
    }

    v10 += v45;
    goto LABEL_174;
  }

  if (v20 > 0xFE)
  {
    v19 = *&a2[v10];
    if (!*&a2[v10])
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

  if (v20)
  {
LABEL_40:
    v19 = a2[v10];
    if (!a2[v10])
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

LABEL_71:
  if (v7 >= 2)
  {
    if (__swift_getEnumTagSinglePayload(a2, v7, v5) < 2)
    {
      goto LABEL_82;
    }

LABEL_79:
    if (__swift_getEnumTagSinglePayload(a1, v7, v5))
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_81:
  if (!v7)
  {
    if (a1[v9])
    {
      v30 = (a1[v9] - 1) << v12;
      if (v9 > 3)
      {
        v30 = 0;
      }

      if (v9)
      {
        v31 = v9 <= 3 ? v9 : 4;
        switch(v31)
        {
          case 2:
            v32 = *a1;
            break;
          case 3:
            v32 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v32 = *a1;
            break;
          default:
            v32 = *a1;
            break;
        }
      }

      else
      {
        v32 = 0;
      }

      if ((v32 | v30) != 0xFFFFFFFF)
      {
        if (!a2[v9])
        {
          goto LABEL_84;
        }

        v39 = (a2[v9] - 1) << v12;
        if (v9 > 3)
        {
          v39 = 0;
        }

        if (v9)
        {
          v40 = v9 <= 3 ? v9 : 4;
          switch(v40)
          {
            case 2:
              v41 = *a2;
              break;
            case 3:
              v41 = *a2 | (a2[2] << 16);
              break;
            case 4:
              v41 = *a2;
              break;
            default:
              v41 = *a2;
              break;
          }
        }

        else
        {
          v41 = 0;
        }

        if ((v41 | v39) == 0xFFFFFFFF)
        {
          goto LABEL_84;
        }

        goto LABEL_174;
      }
    }

    if (!a2[v9])
    {
      goto LABEL_157;
    }

    v42 = (a2[v9] - 1) << v12;
    if (v9 > 3)
    {
      v42 = 0;
    }

    if (v9)
    {
      if (v9 <= 3)
      {
        v43 = v9;
      }

      else
      {
        v43 = 4;
      }

      switch(v43)
      {
        case 2:
          v44 = *a2;
          break;
        case 3:
          v44 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v44 = *a2;
          break;
        default:
          v44 = *a2;
          break;
      }
    }

    else
    {
      v44 = 0;
    }

    v29 = (v44 | v42) + 1;
LABEL_155:
    if (v29)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_174;
    }

LABEL_157:
    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

LABEL_82:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
  v29 = __swift_getEnumTagSinglePayload(a2, v7, v5);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_155;
  }

  if (!v29)
  {
LABEL_84:
    (*(v6 + 32))(a1, a2, v5);
    if (!v7)
    {
      a1[v9] = 0;
    }

    return a1;
  }

LABEL_174:

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCC99474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 - 2;
  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v6 <= 1)
  {
    v7 = 0;
    if (v8 <= 3)
    {
      v10 = (~(-1 << (8 * v8)) - v6 + 2) >> (8 * v8);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v8 += v9;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2 - v7;
  if (a2 > v7)
  {
    v13 = 8 * v8;
    if (v8 <= 3)
    {
      v15 = ((v12 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v15))
      {
        v14 = *(a1 + v8);
        if (!v14)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      if (v15 > 0xFF)
      {
        v14 = *(a1 + v8);
        if (!*(a1 + v8))
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      if (v15 < 2)
      {
LABEL_35:
        if (!v7)
        {
          return 0;
        }

        goto LABEL_36;
      }
    }

    v14 = *(a1 + v8);
    if (!*(a1 + v8))
    {
      goto LABEL_35;
    }

LABEL_27:
    v16 = (v14 - 1) << v13;
    if (v8 > 3)
    {
      v16 = 0;
    }

    if (v8)
    {
      if (v8 > 3)
      {
        LODWORD(v8) = 4;
      }

      switch(v8)
      {
        case 2:
          LODWORD(v8) = *a1;
          break;
        case 3:
          LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          LODWORD(v8) = *a1;
          break;
        default:
          LODWORD(v8) = *a1;
          break;
      }
    }

    return v7 + (v8 | v16) + 1;
  }

LABEL_36:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  v18 = EnumTagSinglePayload >= 3;
  result = EnumTagSinglePayload - 3;
  if (result == 0 || !v18)
  {
    return 0;
  }

  return result;
}

void sub_1DCC99650(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 - 2;
  v11 = *(v7 + 64);
  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = v12;
  if (v9 <= 1)
  {
    v10 = 0;
    if (v12 <= 3)
    {
      v16 = (~(-1 << v13) - v9 + 2) >> v13;
      if (v16 > 0xFFFE)
      {
        v15 = 4;
      }

      else
      {
        v17 = 1;
        if (v16 >= 0xFF)
        {
          v17 = 2;
        }

        if (v16)
        {
          v15 = v17;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }

    v14 = v15 + v12;
  }

  v18 = 8 * v14;
  v19 = a3 >= v10;
  v20 = a3 - v10;
  if (v20 != 0 && v19)
  {
    if (v14 <= 3)
    {
      v24 = ((v20 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
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
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v10 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        break;
      case 3:
LABEL_77:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (a2)
        {
LABEL_41:
          v27 = a2 + 2;
          if (a2 + 2 <= v9)
          {
            if (v8 >= 2)
            {
              v31 = a2 + 3;
              if (v31 <= v8)
              {

                __swift_storeEnumTagSinglePayload(a1, v31, v8, v6);
              }

              else
              {
                if (v11 <= 3)
                {
                  v32 = ~(-1 << (8 * v11));
                }

                else
                {
                  v32 = -1;
                }

                if (v11)
                {
                  v29 = v32 & (v27 - v8);
                  if (v11 <= 3)
                  {
                    v33 = v11;
                  }

                  else
                  {
                    v33 = 4;
                  }

                  bzero(a1, v11);
                  switch(v33)
                  {
                    case 2:
LABEL_61:
                      *a1 = v29;
                      break;
                    case 3:
LABEL_75:
                      *a1 = v29;
                      a1[2] = BYTE2(v29);
                      break;
                    case 4:
LABEL_76:
                      *a1 = v29;
                      break;
                    default:
LABEL_50:
                      *a1 = v29;
                      break;
                  }
                }
              }
            }
          }

          else
          {
            if (v12 <= 3)
            {
              v28 = ~(-1 << v13);
            }

            else
            {
              v28 = -1;
            }

            if (v12)
            {
              v29 = v28 & (a2 - v9 + 1);
              if (v12 <= 3)
              {
                v30 = v12;
              }

              else
              {
                v30 = 4;
              }

              bzero(a1, v12);
              switch(v30)
              {
                case 2:
                  goto LABEL_61;
                case 3:
                  goto LABEL_75;
                case 4:
                  goto LABEL_76;
                default:
                  goto LABEL_50;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v22 = ~v10 + a2;
    if (v14 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v14)
      {
        v26 = v22 & ~(-1 << v18);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v14 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v14] = v23;
        break;
      case 2:
        *&a1[v14] = v23;
        break;
      case 3:
        goto LABEL_77;
      case 4:
        *&a1[v14] = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCC999D4(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 84);
  v5 = v4 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(v3 + 64);
  if (!v4)
  {
    ++v6;
  }

  if (v5 > 1)
  {
    goto LABEL_22;
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = (~(-1 << v7) - v5 + 2) >> v7;
    if (v9 > 0xFFFE)
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFE)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (!v9)
    {
LABEL_22:
      if (v4 < 2)
      {
        return 0;
      }

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v4, v2);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1DCC99B44(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  if (v8 <= 1)
  {
    if (v10 <= 3)
    {
      v12 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v12 > 0xFFFE)
      {
        v4 = 4;
      }

      else
      {
        if (v12 < 0xFF)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        if (v12)
        {
          v4 = v13;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    else
    {
      v4 = 1;
    }
  }

  if (v8 >= a2)
  {
    switch(v4)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_56:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v7 >= 2)
          {
            if (a2 >= v7)
            {
              if (v9 <= 3)
              {
                v18 = ~(-1 << (8 * v9));
              }

              else
              {
                v18 = -1;
              }

              if (v9)
              {
                v19 = v18 & (a2 - v7);
                if (v9 <= 3)
                {
                  v20 = v9;
                }

                else
                {
                  v20 = 4;
                }

                bzero(a1, v9);
                switch(v20)
                {
                  case 2:
                    *a1 = v19;
                    break;
                  case 3:
                    *a1 = v19;
                    a1[2] = BYTE2(v19);
                    break;
                  case 4:
                    *a1 = v19;
                    break;
                  default:
                    *a1 = v19;
                    break;
                }
              }
            }

            else
            {
              v17 = a2 + 1;

              __swift_storeEnumTagSinglePayload(a1, v17, v7, v5);
            }
          }
        }

        break;
    }
  }

  else
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> v11) + 1;
      if (v10)
      {
        v16 = v14 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v10 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
    }

    switch(v4)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1DCC99DF4(unint64_t a1, void *a2)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_1DCC2315C(a1, a2);
  }
}

void sub_1DCC99E18(unint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1DCC99E2C(result, a2, SBYTE1(a2));
  }
}

void sub_1DCC99E2C(unint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    sub_1DCBF44A0(a1);
  }
}

void sub_1DCC99E48(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1DCC99E58(unint64_t result)
{
  if ((result & 0xF000000000000006) != 0xB000000000000006)
  {
    sub_1DCBB1234(result);
  }
}

uint64_t sub_1DCC99EC4(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1DCC99F14(a1, a2);
  return v4;
}

uint64_t sub_1DCC99F14(__int128 *a1, __int128 *a2)
{
  sub_1DCAFF9E8(a1, v2 + 56);
  sub_1DCAFF9E8(a2, v2 + 16);
  return v2;
}

void sub_1DCC99F4C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_30_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA33E8, &qword_1DD10CAB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_28_10();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 8))(v5, v6);
  OUTLINED_FUNCTION_49_3();
  swift_storeEnumTagMultiPayload();
  v1(v2);
  sub_1DCB0E9D8(v2, qword_1ECCA33E8, &qword_1DD10CAB0);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t *), uint64_t a22)
{
  OUTLINED_FUNCTION_50();
  v23 = v22;
  v25 = v24;
  v257 = a22;
  v258 = a21;
  v26 = *v23;
  v255 = v27;
  v256 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v29 = OUTLINED_FUNCTION_20_0(v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v251 = v249 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v32, v33);
  v249[1] = v249 - v34;
  OUTLINED_FUNCTION_29_0();
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = v249 - v38;
  v41 = MEMORY[0x1EEE9AC00](v37, v40);
  v43 = v249 - v42;
  MEMORY[0x1EEE9AC00](v41, v44);
  v250 = v249 - v45;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v46, v47);
  v249[2] = v249 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  v50 = OUTLINED_FUNCTION_20_0(v49);
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  v54 = v249 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v52, v55);
  v58 = v249 - v57;
  v60 = MEMORY[0x1EEE9AC00](v56, v59);
  v62 = v249 - v61;
  v64 = MEMORY[0x1EEE9AC00](v60, v63);
  v66 = v249 - v65;
  v68 = MEMORY[0x1EEE9AC00](v64, v67);
  v70 = v249 - v69;
  v72 = MEMORY[0x1EEE9AC00](v68, v71);
  v74 = v249 - v73;
  MEMORY[0x1EEE9AC00](v72, v75);
  v253 = v249 - v76;
  OUTLINED_FUNCTION_29_0();
  v79 = MEMORY[0x1EEE9AC00](v77, v78);
  v81 = v249 - v80;
  MEMORY[0x1EEE9AC00](v79, v82);
  v252 = v249 - v83;
  v266 = &unk_1F5898308;
  v254 = swift_dynamicCastObjCProtocolConditional();
  if (!v254)
  {
    v253 = v58;
    v254 = v66;
    v92 = v251;
    v250 = v43;
    v252 = v39;
    v93 = v255;
    v265 = &unk_1F58986B0;
    v94 = swift_dynamicCastObjCProtocolConditional();
    v249[0] = v25;
    if (v94)
    {
      v95 = v94;
      v96 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
      v261 = 0;
      v262 = 0xE000000000000000;
      v97 = v93;
      v98 = [v93 fullName];
      if (v98)
      {
        v99 = v98;
        sub_1DD0DDFBC();
      }

      v143 = v74;
      v144 = OUTLINED_FUNCTION_49_3();
      MEMORY[0x1E12A6780](v144);

      v145 = sub_1DD0DDF8C();

      v146 = [v96 personNameComponentsFromString_];

      v147 = v254;
      if (v146)
      {
        sub_1DD0DAD5C();

        v148 = 0;
      }

      else
      {
        v148 = 1;
      }

      v149 = sub_1DD0DAD7C();
      __swift_storeEnumTagSinglePayload(v70, v148, 1, v149);
      sub_1DCC9DCF0(v70, v143);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      OUTLINED_FUNCTION_92_2();
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_1DD0E15D0;
      v151 = objc_allocWithZone(MEMORY[0x1E696E948]);
      OUTLINED_FUNCTION_13_19();
      sub_1DCB09910(v143, v147, &qword_1ECCA32B0, &qword_1DD0E8538);
      v152 = [v93 internalGUID];
      if (v152)
      {
        v153 = v152;
        v154 = sub_1DD0DDFBC();
        v156 = v155;
      }

      else
      {
        v154 = 0;
        v156 = 0;
      }

      v157 = objc_allocWithZone(MEMORY[0x1E696E940]);
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_18_14();
      *(v150 + 32) = sub_1DCC9DA88(v158, v159, v160, v161, v162, v154, v156, 0, v249[0]);
      v163 = sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
      v164 = sub_1DD0DE2DC();

      [v95 setRecipients_];

      v165 = *(v256 + 80);
      if (!swift_dynamicCastUnknownClass())
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v223 = OUTLINED_FUNCTION_36_15();
        __swift_project_value_buffer(v223, qword_1EDE57E00);
        OUTLINED_FUNCTION_19_15();
        v225 = v224;
        v226 = OUTLINED_FUNCTION_16_14();
        v227(v226);
        OUTLINED_FUNCTION_35_2();
        v228 = v163;
        v229 = v252;
        sub_1DCB09910(v228, v252, &unk_1ECCA7470, &qword_1DD0E16E0);
        OUTLINED_FUNCTION_38_2(v229);
        if (v214)
        {
          sub_1DCB0E9D8(v252, &unk_1ECCA7470, &qword_1DD0E16E0);
        }

        else
        {
          v235 = sub_1DD0DD8EC();
          v236 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v235, v236))
          {
            v237 = swift_slowAlloc();
            v261 = swift_slowAlloc();
            *v237 = 136315650;
            v238 = sub_1DD0DEC3C();
            v240 = sub_1DCB10E9C(v238, v239, &v261);

            *(v237 + 4) = v240;
            *(v237 + 12) = 2048;
            *(v237 + 14) = 49;
            *(v237 + 22) = 2080;
            *(v237 + 24) = sub_1DCB10E9C(v95 + 14, v97 | 0x8000000000000000, &v261);
            OUTLINED_FUNCTION_37_14(&dword_1DCAFC000, v241, v242, "FatalError at %s:%lu - %s");
            OUTLINED_FUNCTION_60_1();
            OUTLINED_FUNCTION_92_0();
            MEMORY[0x1E12A8390](v237, -1, -1);
          }

          (*(v225 + 8))(v252, v223);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)(v95 + 14, v97 | 0x8000000000000000);
      }

      v166 = v249[0];
      v167 = [v95 recipients];
      if (v167)
      {
        v168 = v167;
        v169 = sub_1DD0DE2EC();

        if (sub_1DCB08B14(v169))
        {
          v170 = OUTLINED_FUNCTION_31_10();
          sub_1DCB35460(v170, v171, v169);
          if ((v169 & 0xC000000000000001) != 0)
          {
            v172 = MEMORY[0x1E12A72C0](0, v169);
          }

          else
          {
            v172 = *(v169 + 32);
          }

          v173 = v172;

          *(&v260 + 1) = v163;
          *&v259 = v173;
          goto LABEL_40;
        }
      }

      v259 = 0u;
      v260 = 0u;
LABEL_40:
      OUTLINED_FUNCTION_35_13();
      v263 = 0;
      v174 = v166;
LABEL_56:
      v203 = v174;
      v258(&v261);

      type metadata accessor for IntentPromptAnswer(255, v165, v204, v205);
      sub_1DD0DE97C();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      sub_1DD0DF22C();
      OUTLINED_FUNCTION_2();
      (*(v206 + 8))(&v261);
      v134 = v143;
      goto LABEL_57;
    }

    v264 = &unk_1F58989A0;
    v135 = swift_dynamicCastObjCProtocolConditional();
    if (!v135)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v230 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v230, qword_1EDE57E00);
      OUTLINED_FUNCTION_19_15();
      v232 = v231;
      v233 = OUTLINED_FUNCTION_16_14();
      v234(v233);
      OUTLINED_FUNCTION_35_2();
      sub_1DCB09910(v25, v92, &unk_1ECCA7470, &qword_1DD0E16E0);
      OUTLINED_FUNCTION_38_2(v92);
      if (v214)
      {
        sub_1DCB0E9D8(v92, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v243 = sub_1DD0DD8EC();
        v244 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v243, v244))
        {
          v245 = swift_slowAlloc();
          v261 = swift_slowAlloc();
          *v245 = 136315650;
          v246 = sub_1DD0DEC3C();
          v248 = sub_1DCB10E9C(v246, v247, &v261);

          *(v245 + 4) = v248;
          *(v245 + 12) = 2048;
          *(v245 + 14) = 61;
          *(v245 + 22) = 2080;
          *(v245 + 24) = sub_1DCB10E9C(0xD000000000000013, 0x80000001DD116890, &v261);
          _os_log_impl(&dword_1DCAFC000, v243, v244, "FatalError at %s:%lu - %s", v245, 0x20u);
          OUTLINED_FUNCTION_60_1();
          OUTLINED_FUNCTION_92_0();
          MEMORY[0x1E12A8390](v245, -1, -1);
        }

        (*(v232 + 8))(v92, v230);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000013, 0x80000001DD116890);
    }

    v136 = v135;
    v137 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    v138 = 0xE000000000000000;
    v261 = 0;
    v262 = 0xE000000000000000;
    v139 = [v93 fullName];
    if (v139)
    {
      v140 = v139;
      v141 = sub_1DD0DDFBC();
      v138 = v142;
    }

    else
    {
      v141 = 0;
    }

    v143 = v62;
    MEMORY[0x1E12A6780](v141, v138);

    v175 = sub_1DD0DDF8C();

    v176 = [v137 personNameComponentsFromString_];

    if (v176)
    {
      v177 = v253;
      sub_1DD0DAD5C();

      v178 = 0;
    }

    else
    {
      v178 = 1;
      v177 = v253;
    }

    v179 = sub_1DD0DAD7C();
    __swift_storeEnumTagSinglePayload(v177, v178, 1, v179);
    sub_1DCC9DCF0(v177, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    OUTLINED_FUNCTION_92_2();
    v165 = swift_allocObject();
    *(v165 + 16) = xmmword_1DD0E15D0;
    v180 = objc_allocWithZone(MEMORY[0x1E696E948]);
    OUTLINED_FUNCTION_13_19();
    sub_1DCB09910(v62, v54, &qword_1ECCA32B0, &qword_1DD0E8538);
    v181 = [v93 internalGUID];
    if (v181)
    {
      v182 = v181;
      v183 = sub_1DD0DDFBC();
      v185 = v184;
    }

    else
    {
      v183 = 0;
      v185 = 0;
    }

    v186 = objc_allocWithZone(MEMORY[0x1E696E940]);
    OUTLINED_FUNCTION_17_13();
    OUTLINED_FUNCTION_18_14();
    *(v165 + 32) = sub_1DCC9DA88(v187, v188, v189, v190, v191, v183, v185, 0, v249[0]);
    v192 = sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
    v193 = sub_1DD0DE2DC();

    [v136 setSenders_];

    OUTLINED_FUNCTION_33_11();
    v194 = swift_dynamicCastUnknownClassUnconditional();
    v195 = v249[0];
    v196 = [v136 senders];
    if (v196)
    {
      v197 = v196;
      v198 = sub_1DD0DE2EC();

      if (sub_1DCB08B14(v198))
      {
        v199 = OUTLINED_FUNCTION_31_10();
        sub_1DCB35460(v199, v200, v198);
        if ((v198 & 0xC000000000000001) != 0)
        {
          v201 = MEMORY[0x1E12A72C0](0, v198);
        }

        else
        {
          v201 = *(v198 + 32);
        }

        v202 = v201;

        *(&v260 + 1) = v192;
        *&v259 = v202;
        goto LABEL_55;
      }
    }

    v259 = 0u;
    v260 = 0u;
LABEL_55:
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(&v259, v194, &v261);
    v263 = 0;
    v174 = v195;
    goto LABEL_56;
  }

  v84 = v25;
  v85 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  v86 = 0xE000000000000000;
  v261 = 0;
  v262 = 0xE000000000000000;
  v87 = v255;
  v88 = [v255 fullName];
  if (v88)
  {
    v89 = v88;
    v90 = sub_1DD0DDFBC();
    v86 = v91;
  }

  else
  {
    v90 = 0;
  }

  v100 = v252;
  MEMORY[0x1E12A6780](v90, v86);

  v101 = sub_1DD0DDF8C();

  v102 = [v85 personNameComponentsFromString_];

  v103 = v253;
  if (v102)
  {
    sub_1DD0DAD5C();

    v104 = 0;
  }

  else
  {
    v104 = 1;
  }

  v105 = sub_1DD0DAD7C();
  __swift_storeEnumTagSinglePayload(v81, v104, 1, v105);
  sub_1DCC9DCF0(v81, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  OUTLINED_FUNCTION_92_2();
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1DD0E15D0;
  v107 = objc_allocWithZone(MEMORY[0x1E696E948]);
  OUTLINED_FUNCTION_13_19();
  sub_1DCB09910(v100, v103, &qword_1ECCA32B0, &qword_1DD0E8538);
  v108 = [v87 internalGUID];
  if (v108)
  {
    v109 = v108;
    v110 = sub_1DD0DDFBC();
    v112 = v111;
  }

  else
  {
    v110 = 0;
    v112 = 0;
  }

  v113 = v254;
  v114 = objc_allocWithZone(MEMORY[0x1E696E940]);
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_18_14();
  *(v106 + 32) = sub_1DCC9DA88(v115, v116, v117, v118, v119, v110, v112, 0, v249[0]);
  v120 = sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  v121 = sub_1DD0DE2DC();

  [v113 setContacts_];

  OUTLINED_FUNCTION_33_11();
  if (!swift_dynamicCastUnknownClass())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v207 = OUTLINED_FUNCTION_36_15();
    __swift_project_value_buffer(v207, qword_1EDE57E00);
    OUTLINED_FUNCTION_19_15();
    v209 = v208;
    v210 = OUTLINED_FUNCTION_16_14();
    v211(v210);
    OUTLINED_FUNCTION_35_2();
    v212 = v120;
    v213 = v250;
    sub_1DCB09910(v212, v250, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_38_2(v213);
    if (v214)
    {
      sub_1DCB0E9D8(v250, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v215 = sub_1DD0DD8EC();
      v216 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        *v217 = 136315650;
        v218 = sub_1DD0DEC3C();
        v220 = sub_1DCB10E9C(v218, v219, &v261);

        *(v217 + 4) = v220;
        *(v217 + 12) = 2048;
        *(v217 + 14) = 40;
        *(v217 + 22) = 2080;
        *(v217 + 24) = sub_1DCB10E9C(v100 + 20, 0x80000001E696E940, &v261);
        OUTLINED_FUNCTION_37_14(&dword_1DCAFC000, v221, v222, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_60_1();
        OUTLINED_FUNCTION_92_0();
        MEMORY[0x1E12A8390](v217, -1, -1);
      }

      (*(v209 + 8))(v250, v207);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v100 + 20, 0x80000001E696E940);
  }

  v122 = v84;
  v123 = [v113 contacts];
  if (v123)
  {
    v124 = v123;
    v125 = sub_1DD0DE2EC();

    if (sub_1DCB08B14(v125))
    {
      v126 = OUTLINED_FUNCTION_31_10();
      sub_1DCB35460(v126, v127, v125);
      if ((v125 & 0xC000000000000001) != 0)
      {
        v128 = MEMORY[0x1E12A72C0](0, v125);
      }

      else
      {
        v128 = *(v125 + 32);
      }

      v129 = v128;

      *(&v260 + 1) = v120;
      *&v259 = v129;
      goto LABEL_22;
    }
  }

  v259 = 0u;
  v260 = 0u;
LABEL_22:
  OUTLINED_FUNCTION_35_13();
  v263 = 0;
  v130 = v122;
  v258(&v261);

  type metadata accessor for IntentPromptAnswer(255, v106, v131, v132);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  OUTLINED_FUNCTION_2();
  (*(v133 + 8))(&v261);
  v134 = v100;
LABEL_57:
  sub_1DCB0E9D8(v134, &qword_1ECCA32B0, &qword_1DD0E8538);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9B3B4()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  v5 = *v0;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_6_27();
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_1_34();
  sub_1DCC9D84C(v4 + v10, v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v21 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError(0, *(v5 + 80), v13, v14);
      v22 = OUTLINED_FUNCTION_0_28(v21);
      v23 = OUTLINED_FUNCTION_10_5(v22);
      *v24 = 3;
      v30 = 1;
      v29[0] = v23;
      memcpy(&v29[1], v31, 0x48uLL);
      v25 = OUTLINED_FUNCTION_34_13(1);
      v26(v25);
      memcpy(v32, v29, 0x51uLL);
      sub_1DCB0E9D8(v32, &unk_1ECCA32A0, &qword_1DD0E94B8);
      OUTLINED_FUNCTION_2_40();
      sub_1DCB42DC0(v1, v27);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
  }

  v15 = OUTLINED_FUNCTION_11_24();
  v16(v15);
  OUTLINED_FUNCTION_21_8();
  (*(v5 + 24))(v28, v2, v1, v5);
  v17 = OUTLINED_FUNCTION_49_3();
  v18(v17);
  v31[0] = 0;
  memcpy(v29, v28, 0x50uLL);
  v19 = OUTLINED_FUNCTION_34_13(0);
  v20(v19);
  memcpy(v32, v29, 0x51uLL);
  sub_1DCB0E9D8(v32, &unk_1ECCA32A0, &qword_1DD0E94B8);
LABEL_6:
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_92_2();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a9;
  v11[4] = v10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC9B6B8(uint64_t a1, void (*a2)(void **), uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = *a1;
  if ((*(a1 + 72) & 1) == 0)
  {
    v25 = *a1;
    v15 = *(a1 + 24);
    v26 = *(a1 + 8);
    v27 = v15;
    v16 = *(a1 + 56);
    v28 = *(a1 + 40);
    v29 = v16;
    v17 = a4[10];
    v18 = a4[11];
    __swift_project_boxed_opaque_existential_1(a4 + 7, v17);
    LOBYTE(v17) = (*(v18 + 96))(v17, v18);
    v19 = a4[5];
    v20 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v19);
    (*(v20 + 40))(v19, v20);
    v21 = type metadata accessor for NLContextUpdate(0);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v21);
    static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(&v25, (a4 + 7), v17 & 1, MEMORY[0x1E69E7CC0], 1, 1, v10, MEMORY[0x1E69E7CC0], &v24, v23, 0, 0, 0, 0, 0, v25, v26, *(&v26 + 1), v27, *(&v27 + 1), v28);
  }

  v25 = *a1;
  LOBYTE(v28) = 1;
  v14 = v13;
  a2(&v25);
  return sub_1DCB0E9D8(&v25, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCC9B9B0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4A548;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCC9BA4C@<X0>(uint64_t a1@<X6>, char *a2@<X8>)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = sub_1DD0DC76C();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = OUTLINED_FUNCTION_6_27();
  type metadata accessor for Input(v16);
  OUTLINED_FUNCTION_1_34();
  sub_1DCC9D84C(a1 + v17, v10, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      *a2 = 2;
      OUTLINED_FUNCTION_2_40();
      return sub_1DCB42DC0(v10, v25);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
  }

  (*(v13 + 32))(v3, v10, v11);
  v20 = v2[5];
  v21 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v20);
  v22 = (*(v21 + 16))(v3, v20, v21);
  result = (*(v13 + 8))(v3, v11);
  if (v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  *a2 = v24;
  return result;
}

void sub_1DCC9BC08()
{
  OUTLINED_FUNCTION_30_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3250, &qword_1DD0E9428);
  v1 = swift_allocObject();
  *(v1 + 24) = v0;
  *(v1 + 16) = 0;

  sub_1DD0DCF8C();
}

void sub_1DCC9BC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(id *))
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v27 = v26;
  v70 = *v21;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_6_27();
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v32 = *v25;
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_1_34();
  sub_1DCC9D84C(v27 + v33, v22, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v55 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError(0, *(v70 + 80), v36, v37);
      v56 = OUTLINED_FUNCTION_0_28(v55);
      v57 = OUTLINED_FUNCTION_10_5(v56);
      *v58 = 3;
      v72[0] = v57;
      LOWORD(v72[1]) = 0;
      BYTE2(v72[1]) = 1;
      a21(v72);
      sub_1DCC9DC8C(v72[0], LOWORD(v72[1]), SBYTE2(v72[1]));
      OUTLINED_FUNCTION_2_40();
      sub_1DCB42DC0(v22, v59);
      goto LABEL_36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
  }

  v38 = OUTLINED_FUNCTION_11_24();
  v39(v38);
  OUTLINED_FUNCTION_21_8();
  (*(v27 + 24))(v71, v23, v22, v27);
  v40 = OUTLINED_FUNCTION_49_3();
  v41(v40);
  memcpy(v72, v71, 0x50uLL);
  v42 = sub_1DCB08B14(v32);
  v43 = 0;
  v44 = v32 & 0xC000000000000001;
  while (1)
  {
    if (v42 == v43)
    {
      sub_1DCB0E9D8(v72, &qword_1ECCA3298, &qword_1DD0E94A0);
      if (!v42)
      {
        v65 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError(0, *(v70 + 80), v60, v61);
        v66 = OUTLINED_FUNCTION_0_28(v65);
        v67 = OUTLINED_FUNCTION_10_5(v66);
        *v68 = 0;
        v71[0] = v67;
        LOWORD(v71[1]) = 0;
        BYTE2(v71[1]) = 1;
        a21(v71);
        goto LABEL_35;
      }

      v62 = OUTLINED_FUNCTION_31_10();
      sub_1DCB35460(v62, v63, v32);
      if (v44)
      {
        goto LABEL_39;
      }

      v64 = *(v32 + 32);
LABEL_30:
      v46 = v64;
      goto LABEL_34;
    }

    if (v44)
    {
      v45 = MEMORY[0x1E12A72C0](v43, v32);
    }

    else
    {
      if (v43 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v45 = *(v32 + 8 * v43 + 32);
    }

    v46 = v45;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v64 = MEMORY[0x1E12A72C0](0, v32);
      goto LABEL_30;
    }

    v47 = sub_1DCCC331C(v45);
    v49 = v48;
    if (v72[1] == 1)
    {
      if (!v48)
      {
        goto LABEL_33;
      }

LABEL_12:

      goto LABEL_24;
    }

    v50 = v47;
    v52 = v72[6];
    v51 = v72[7];

    if (!v49)
    {
      if (!v51)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (!v51)
    {
      goto LABEL_12;
    }

    if (v50 == v52 && v49 == v51)
    {
      break;
    }

    v54 = sub_1DD0DF0AC();

    if (v54)
    {
      goto LABEL_33;
    }

LABEL_23:

LABEL_24:
    ++v43;
  }

LABEL_33:
  sub_1DCB0E9D8(v72, &qword_1ECCA3298, &qword_1DD0E94A0);
LABEL_34:
  v71[0] = v46;
  LOWORD(v71[1]) = 0;
  BYTE2(v71[1]) = 0;
  v69 = v46;
  a21(v71);

LABEL_35:
  sub_1DCC9DC8C(v71[0], LOWORD(v71[1]), SBYTE2(v71[1]));
LABEL_36:
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9C0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v12);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v22[-v15];
  v17 = a7[1];
  v23 = *a7;
  v24[0] = v17;
  *(v24 + 9) = *(a7 + 25);
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  *(v18 + 24) = a9;
  v19 = a7[1];
  *(v18 + 32) = *a7;
  *(v18 + 48) = v19;
  *(v18 + 57) = *(a7 + 25);
  *(v18 + 80) = v9;
  v20 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = sub_1DCC9D968;
  v21[5] = v18;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC9C214(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(a1 + 24);
  v60 = *(a1 + 8);
  v61 = v19;
  v20 = *(a1 + 56);
  v62 = *(a1 + 40);
  v63 = v20;
  if (*(a1 + 72))
  {
    v54 = v18;
    LOBYTE(v57) = 1;
    v21 = v18;
    a2(&v54);
    return sub_1DCB0E9D8(&v54, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  }

  else
  {
    v43 = v18;
    v46 = a5;
    v22 = *a4;
    v23 = [objc_allocWithZone(MEMORY[0x1E69C7B58]) init];
    v24 = sub_1DCB08B14(v22);
    v50 = a2;
    v49 = a3;
    v48 = v17;
    v47 = v13;
    v45 = v14;
    v44 = v23;
    if (!v24)
    {
LABEL_12:
      sub_1DCB10E5C(0, &qword_1ECCAB500, 0x1E69C7B70);
      v30 = sub_1DD0DE2DC();

      v31 = v44;
      [v44 setItems_];

      v54 = v43;
      v55 = v60;
      v56 = v61;
      v57 = v62;
      v58 = v63;
      v32 = v46;
      v33 = v46[10];
      v34 = v46[11];
      __swift_project_boxed_opaque_existential_1(v46 + 7, v33);
      LOBYTE(v34) = (*(v34 + 96))(v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1DD0E15D0;
      *(v35 + 32) = v31;
      v36 = v32[5];
      v37 = v32[6];
      __swift_project_boxed_opaque_existential_1(v32 + 2, v36);
      v38 = *(v37 + 48);
      v44 = v31;
      v39 = v47;
      v38(v22, v36, v37);
      v40 = type metadata accessor for NLContextUpdate(0);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
      v53 = 0;
      v52 = 0u;
      static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(&v54, (v32 + 7), v34 & 1, v35, 1, 1, v39, MEMORY[0x1E69E7CC0], v51, v42, v43, v44, v45, v46, v47, v48, v49, v50, 0, 0, 0);
    }

    v25 = v24;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if ((v22 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1E12A72C0](v26, v22);
        }

        else
        {
          if (v26 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v28 = *(v22 + 8 * v26 + 32);
        }

        v29 = v28;
        v59 = v28;
        sub_1DCC9C6F0(&v59, v51);

        sub_1DD0DECDC();
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
        ++v26;
        if (v27 == v25)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1DCC9C6F0(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69C7B70]) init];
  [v4 setObject_];
  sub_1DCCC331C(v3);
  if (v5)
  {
    v6 = sub_1DD0DDF8C();
  }

  else
  {
    v6 = 0;
  }

  [v4 setSelectionText_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69C7AB0]) init];
  sub_1DCCC331C(v3);
  if (v8)
  {
    v9 = sub_1DD0DDF8C();
  }

  else
  {
    v9 = 0;
  }

  [v7 setUtterance_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD0E15D0;
  *(v11 + 32) = v7;
  v12 = v7;
  sub_1DCC6589C(v11, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E15D0;
  *(v13 + 32) = v10;
  v14 = v10;
  sub_1DCC9DC0C(v13, v4);

  *a2 = v4;
}

void sub_1DCC9C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v12);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v19 - v15;
  v17 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a11;
  v18[5] = 0;
  v18[6] = a8;
  v18[7] = a9;
  sub_1DD0DCF8C();
}

void sub_1DCC9C9E0()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_6_27();
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_1_34();
  sub_1DCC9D84C(v5 + v11, v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v29 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError(0, *(v6 + 80), v14, v15);
      v30 = OUTLINED_FUNCTION_0_28(v29);
      v31 = OUTLINED_FUNCTION_10_5(v30);
      *v32 = 3;
      v34 = v31;
      v35 = 1;
      v3(&v34);
      sub_1DCB79378(v34, v35);
      OUTLINED_FUNCTION_2_40();
      sub_1DCB42DC0(v1, v33);
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
  }

  v16 = OUTLINED_FUNCTION_11_24();
  v17(v16);
  OUTLINED_FUNCTION_21_8();
  v18 = OUTLINED_FUNCTION_11_24();
  v20 = v19(v18);
  v21 = OUTLINED_FUNCTION_49_3();
  v22(v21);
  if (v20 == 2)
  {
    v25 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError(0, *(v6 + 80), v23, v24);
    v26 = OUTLINED_FUNCTION_0_28(v25);
    v27 = OUTLINED_FUNCTION_10_5(v26);
    *v28 = 1;
    v34 = v27;
    v35 = 1;
    v3(&v34);
    sub_1DCB79378(v34, v35);
  }

  else
  {
    v34 = (v20 & 1) == 0;
    v35 = 0;
    v3(&v34);
  }

LABEL_8:
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_92_2();
  v11 = swift_allocObject();
  v11[2] = a9;
  v11[3] = a10;
  v11[4] = v10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC9CCD0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v18 - v10;
  memcpy(__dst, a1, 0x49uLL);
  v12 = __dst[0];
  if ((__dst[9] & 1) == 0)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    *(v15 + 32) = v12;
    *(v15 + 40) = *(a1 + 8);
    *(v15 + 56) = *(a1 + 24);
    *(v15 + 72) = *(a1 + 40);
    *(v15 + 88) = *(a1 + 56);
    *(v15 + 104) = a4;
    v16 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = sub_1DCC9D794;
    v17[5] = v15;
    sub_1DCB09910(__dst, v18, &unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DCF8C();
  }

  v18[0] = __dst[0];
  v19 = 1;
  v13 = __dst[0];
  a2(v18);
  return sub_1DCB0E9D8(v18, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCC9CEA8(void *a1, char a2, void (*a3)(uint64_t *), uint64_t a4, void *a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for AceOutput(0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  if ((a2 & 1) == 0)
  {
    v33 = v18;
    memcpy(__dst, a5, sizeof(__dst));
    v20 = a6[10];
    v21 = a6[11];
    __swift_project_boxed_opaque_existential_1(a6 + 7, v20);
    v22 = *(v21 + 96);
    v34 = a4;
    HIDWORD(v31) = v22(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DD0E15D0;
    *(v23 + 32) = a1;
    LODWORD(v31) = a5[7] != 1;
    v32 = a3;
    v24 = a6[5];
    v25 = a6[6];
    __swift_project_boxed_opaque_existential_1(a6 + 2, v24);
    v26 = *(v25 + 56);
    v27 = a1;
    v26(v24, v25);
    v28 = type metadata accessor for NLContextUpdate(0);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v28);
    static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(__dst, (a6 + 7), BYTE4(v31) & 1, v23, v31, 1, v15, MEMORY[0x1E69E7CC0], &v35, v30, v31, v32, v33, v34, 0, 0, 0, 0, 0, __dst[0], __dst[1]);
  }

  __dst[0] = a1;
  LOBYTE(__dst[5]) = 1;
  v19 = a1;
  a3(__dst);
  return sub_1DCB0E9D8(__dst, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

void sub_1DCC9D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DD0E9458;
  v16[5] = 0;
  v16[6] = a9;
  v16[7] = a10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC9D290(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB193FC;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCC9D350(uint64_t a1)
{
  sub_1DD0DF1DC();
  sub_1DCBB1180(v3, *v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCC9D398()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_1DCC9D3C0()
{
  sub_1DCC9D398();

  return swift_deallocClassInstance();
}

void sub_1DCC9D4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a8;
  *(v10 + 24) = a9;
  sub_1DD0DCF8C();
}

unint64_t sub_1DCC9D6A8()
{
  result = qword_1ECCA3248;
  if (!qword_1ECCA3248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCA3250, &qword_1DD0E9428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA3248);
  }

  return result;
}

uint64_t sub_1DCC9D70C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCC9D748(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1DCC9D7A8()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_9(v3);

  return sub_1DCCA48B4(v5, v6, v7, v8, v1);
}

uint64_t sub_1DCC9D84C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCC9D8C4()
{
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();

  return sub_1DCC100AC();
}

uint64_t sub_1DCC9D978()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_9(v3);

  return sub_1DD052160(v5, v6, v7, v8, v1);
}

id sub_1DCC9DA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DD0DDF8C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_1DCC9DA88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_1DD0DAD7C();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_1DD0DAD3C();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_1DD0DDF8C();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_1DD0DDF8C();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_1DD0DDF8C();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

void sub_1DCC9DC0C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2DC();

  [a2 setCommands_];
}

void sub_1DCC9DC8C(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1DCC9DC9C(a1, a2, BYTE1(a2) & 1);
  }
}

void sub_1DCC9DC9C(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t objectdestroy_9Tm()
{

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCC9DCF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1DCC9DD60(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCC9DE58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1DCC9DEDC(v1, v2);
}

uint64_t sub_1DCC9DE98()
{
  OUTLINED_FUNCTION_156(v0 + 16, v3);
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DCC9DEDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *sub_1DCC9DF30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC9DFA4(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1DCC9DFA4@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_156(v1 + 32, v4);
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_1DCC9DFE0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t ConfirmationFlowFrame.__allocating_init(renderer:dialogFactoryFn:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConfirmationFlowFrame.init(renderer:dialogFactoryFn:)(a1, a2, a3);
  return v6;
}

uint64_t ConfirmationFlowFrame.init(renderer:dialogFactoryFn:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0xD000000000000029;
  *(v3 + 24) = 0x80000001DD113770;
  *(v3 + 32) = 4;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  sub_1DCAFF9E8(a1, v3 + 56);
  return v3;
}

uint64_t ConfirmationFlowFrame.__allocating_init(dialogProvider:renderer:)(void *a1, void *a2)
{
  sub_1DCB17CA0(a2, v9);
  sub_1DCB17CA0(a1, v8);
  v5 = swift_allocObject();
  sub_1DCAFF9E8(v8, v5 + 16);
  v6 = (*(v2 + 160))(v9, sub_1DCC9E1E0, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_1DCC9E178(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t ConfirmationFlowFrame.__allocating_init(dialog:renderer:)(uint64_t a1, void *a2)
{
  sub_1DCB17CA0(a2, v7);
  v5 = (*(v2 + 160))(v7, sub_1DCC9E268, a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v5;
}