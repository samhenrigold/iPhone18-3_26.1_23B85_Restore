uint64_t sub_268A78ACC()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  for (i = (v0 + 40); v1; --v1)
  {
    v4 = *(i - 1);
    v3 = *i;
    v5 = qword_2802A4F68;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_2_31();
      swift_once();
    }

    v6 = sub_268B35794();
    sub_268A78C6C(v6, v7, v4, v3);

    i += 2;
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A78B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (qword_2802A4F70 != -1)
    {
      swift_once();
    }

    do
    {
      v2 = sub_268B35794();
      sub_268A78644(v2, v3, 0xD000000000000012, 0x8000000268B56B50);

      --v1;
    }

    while (v1);
  }
}

uint64_t sub_268A78C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - v8);
  *v9 = a3;
  v9[1] = a4;
  v10 = *MEMORY[0x277D5E5C8];
  v11 = sub_268B35A44();
  OUTLINED_FUNCTION_4();
  (*(v12 + 104))(v9, v10, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);

  sub_268A78758();
  return sub_268A7A0F4(v9);
}

uint64_t sub_268A78D74()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    if (qword_2802A4F78 != -1)
    {
      OUTLINED_FUNCTION_4_36(&qword_2802A4F78);
    }

    do
    {
      v3 = *v2++;
      v4 = sub_268B35794();
      v6 = 0xE200000000000000;
      v7 = 28271;
      switch(v3)
      {
        case 1:
          v6 = 0xE700000000000000;
          v7 = 0x646570706F7473;
          break;
        case 2:
          v6 = 0xE600000000000000;
          v7 = 0x646573756170;
          break;
        case 3:
          v6 = 0xE700000000000000;
          v7 = 0x64656D75736572;
          break;
        default:
          break;
      }

      sub_268A78644(v4, v5, v7, v6);

      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t HomeAutomationState.rawValue.getter()
{
  result = 28271;
  switch(*v0)
  {
    case 1:
      result = 0x646570706F7473;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x64656D75736572;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A78F28()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B80, &qword_268B49490);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B88, &unk_268B49498);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = sub_268B35CB4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  LOBYTE(v27[0]) = *v1;
  sub_268A784A8(v27);

  swift_beginAccess();

  sub_268920EBC();

  OUTLINED_FUNCTION_5_24();
  sub_268B35CA4();
  sub_268B35C84();
  v27[3] = v10;
  v27[4] = MEMORY[0x277D5E728];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v12 + 16))(boxed_opaque_existential_1, v16, v10);
  v20 = sub_268B36664();
  OUTLINED_FUNCTION_4_7(v9, v21, v22, v20);
  v23 = sub_268B35CD4();
  OUTLINED_FUNCTION_4_7(v5, v24, v25, v23);
  sub_268B366B4();
  v26 = *(v12 + 8);
  v26(v16, v10);
  v26(v18, v10);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A791C4()
{

  return v0;
}

uint64_t sub_268A791F4()
{
  sub_268A791C4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_268A79230(uint64_t a1)
{
  v2 = sub_268A7A508(&qword_2802A7BF0, &protocol conformance descriptor for HomeAutomationNLV3Intent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268A79298(uint64_t a1)
{
  v2 = sub_268A7A508(&qword_2802A7BF0, &protocol conformance descriptor for HomeAutomationNLV3Intent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268A792F0(uint64_t a1)
{
  v2 = sub_268A7A508(&qword_2802A7BF0, &protocol conformance descriptor for HomeAutomationNLV3Intent);

  return MEMORY[0x2821C0C70](a1, v2);
}

SiriPlaybackControlIntents::HomeAutomationVerb_optional __swiftcall HomeAutomationVerb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_27();
  v2 = sub_268B382F4();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_268A793D8@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationVerb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPlaybackControlIntents::HomeAutomationState_optional __swiftcall HomeAutomationState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_27();
  v2 = sub_268B382F4();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_268A794E0@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_268A795D0()
{
  result = qword_2802A7AF0;
  if (!qword_2802A7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7AF0);
  }

  return result;
}

unint64_t sub_268A79628()
{
  result = qword_2802A7AF8;
  if (!qword_2802A7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7AF8);
  }

  return result;
}

unint64_t sub_268A796C4()
{
  result = qword_2802A7B10;
  if (!qword_2802A7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B10);
  }

  return result;
}

unint64_t sub_268A7971C()
{
  result = qword_2802A7B18;
  if (!qword_2802A7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B18);
  }

  return result;
}

unint64_t sub_268A79774()
{
  result = qword_2802A7B20;
  if (!qword_2802A7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B20);
  }

  return result;
}

unint64_t sub_268A79810()
{
  result = qword_2802A7B38;
  if (!qword_2802A7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B38);
  }

  return result;
}

unint64_t sub_268A79868()
{
  result = qword_2802A7B40;
  if (!qword_2802A7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B40);
  }

  return result;
}

unint64_t sub_268A798D4@<X0>(void *a1@<X8>)
{
  result = AccessoryTypeSemantic.rawValue.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

unint64_t sub_268A7995C()
{
  result = qword_2802A7B58;
  if (!qword_2802A7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B58);
  }

  return result;
}

unint64_t sub_268A79A64()
{
  result = qword_2802A7B60;
  if (!qword_2802A7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B60);
  }

  return result;
}

uint64_t sub_268A79AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_268A79B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_142_0();
  v6 = sub_268B366C4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_268A79C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_268B366C4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_268A79D00(uint64_t a1)
{
  sub_268B366C4();
  if (v1 <= 0x3F)
  {
    sub_268A79D9C(319);
    if (v2 <= 0x3F)
    {
      sub_268B35774();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268A79D9C(uint64_t a1)
{
  if (!qword_2802A7B78)
  {
    sub_268B35C14();
    v1 = sub_268B37D54();
    if (!v2)
    {
      atomic_store(v1, &qword_2802A7B78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeAutomationVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268A79EE4);
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

_BYTE *storeEnumTagSinglePayload for HomeAutomationState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268A79FE8);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessoryTypeSemantic(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268A7A0BCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268A7A0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268A7A15C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_268987E28();
    *v0 = v3;
  }
}

uint64_t sub_268A7A1A8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_268B37D14();
  }

  return result;
}

void sub_268A7A1D4(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_268987E28();
    *v1 = v2;
  }
}

unint64_t sub_268A7A214()
{
  result = qword_2802A7BA8;
  if (!qword_2802A7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BA8);
  }

  return result;
}

unint64_t sub_268A7A268()
{
  result = qword_2802A7BB0;
  if (!qword_2802A7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BB0);
  }

  return result;
}

unint64_t sub_268A7A2BC()
{
  result = qword_2802A7BB8;
  if (!qword_2802A7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BB8);
  }

  return result;
}

unint64_t sub_268A7A310()
{
  result = qword_2802A7BC0;
  if (!qword_2802A7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BC0);
  }

  return result;
}

unint64_t sub_268A7A364()
{
  result = qword_2802A7BC8;
  if (!qword_2802A7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BC8);
  }

  return result;
}

unint64_t sub_268A7A3B8()
{
  result = qword_2802A7BD0;
  if (!qword_2802A7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BD0);
  }

  return result;
}

unint64_t sub_268A7A40C()
{
  result = qword_2802A7BD8;
  if (!qword_2802A7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BD8);
  }

  return result;
}

unint64_t sub_268A7A460()
{
  result = qword_2802A7BE0;
  if (!qword_2802A7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BE0);
  }

  return result;
}

unint64_t sub_268A7A4B4()
{
  result = qword_2802A7BE8;
  if (!qword_2802A7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BE8);
  }

  return result;
}

uint64_t sub_268A7A508(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAutomationNLV3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_40(unint64_t *a1)
{
  v4 = MEMORY[0x277D5E430];

  return sub_2688F4354(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_3_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_36(uint64_t a1)
{

  return swift_once();
}

Swift::String_optional __swiftcall UsoTask_noVerb_uso_NoEntity.verb()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268A7A63C(uint64_t a1)
{
  result = sub_268A7A6E8(&qword_2802A7BF8, &protocol conformance descriptor for UsoTask_noVerb_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A7A6E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A7A750(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A7A7A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A7A7F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A7A84C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A7A8A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A7A8F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A7A948(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A7A99C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A7AA00(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A7AA54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A7AAB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A7AB1C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A7AB80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

double sub_268A7ABE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7928, &qword_268B48288);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  sub_268B35AA4();
  OUTLINED_FUNCTION_1_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B35AE4();
  v10 = 0.0;
  if ((v11 & 1) == 0)
  {
    v10 = *&v9;
    sub_268B35AC4();
    if (__swift_getEnumTagSinglePayload(v3, 1, v0) == 1)
    {
      sub_268A7AF54(v3);
    }

    else
    {
      (*(v5 + 32))(v8, v3, v0);
      v10 = sub_268A7AD60(v8, v10);
      (*(v5 + 8))(v8, v0);
    }
  }

  return v10;
}

double sub_268A7AD60(uint64_t a1, double a2)
{
  sub_268B35AA4();
  OUTLINED_FUNCTION_1_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v2);
  v10 = (*(v6 + 88))(v9, v2);
  if (v10 == *MEMORY[0x277D5E5E0])
  {
    return a2 / 1000.0;
  }

  if (v10 != *MEMORY[0x277D5E620])
  {
    if (v10 == *MEMORY[0x277D5E618])
    {
      return a2 * 60.0;
    }

    else if (v10 == *MEMORY[0x277D5E5F0])
    {
      return a2 * 60.0 * 60.0;
    }

    else
    {
      if (v10 == *MEMORY[0x277D5E5E8])
      {
        v11 = a2 * 24.0;
      }

      else
      {
        if (v10 == *MEMORY[0x277D5E5F8])
        {
          v12 = 7.0;
        }

        else
        {
          if (v10 != *MEMORY[0x277D5E630])
          {
            (*(v6 + 8))(v9, v2);
            return 0.0;
          }

          v12 = 14.0;
        }

        v11 = a2 * v12 * 24.0;
      }

      return v11 * 60.0 * 60.0;
    }
  }

  return a2;
}

uint64_t sub_268A7AF54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7928, &qword_268B48288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_268A7AFBC(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78B8, &qword_268B47A38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_268B35AF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268A7B4CC(a1);
  sub_268A7B808(a1, v1);
  sub_268A7BBCC(a1);
  v14 = [v1 duration];
  if (!v14)
  {
    type metadata accessor for SignedDuration();
    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = sub_26893A824(0, 0, 0, 0xE000000000000000);
    [v2 setDuration_];
  }

  v16 = type metadata accessor for MediaPlayerIntent(0);
  sub_268A532E4(&a1[*(v16 + 28)], v6);
  v17 = sub_268B35984();
  if (__swift_getEnumTagSinglePayload(v6, 1, v17) == 1)
  {
    sub_2688EF38C(v6, &qword_2802A5FA8, &unk_268B3DEF0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
LABEL_6:
    sub_2688EF38C(v9, &qword_2802A78B8, &qword_268B47A38);
    v18 = OUTLINED_FUNCTION_0_41();
    if (v18 && (v19 = v18, v20 = [v18 duration], v19, v20))
    {
    }

    else
    {
      v21 = OUTLINED_FUNCTION_0_41();
      if (v21)
      {
        v22 = v21;
        sub_2688C063C();
        v23 = sub_268B38064();
        [v22 setDuration_];
      }
    }

    goto LABEL_14;
  }

  sub_268B35974();
  (*(*(v17 - 8) + 8))(v6, v17);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    goto LABEL_6;
  }

  (*(v11 + 32))(v13, v9, v10);
  v24 = OUTLINED_FUNCTION_0_41();
  if (v24)
  {
    v25 = v24;
    sub_268A7ABE8();
    v26 = sub_268B37DD4();
    [v25 setDuration_];
  }

  (*(v11 + 8))(v13, v10);
LABEL_14:
  v27 = *a1;
  if (v27 == 24)
  {
    goto LABEL_30;
  }

  if (sub_26893E3F8(*a1) == 0x77726F4670696B73 && v28 == 0xEB00000000647261)
  {

    goto LABEL_27;
  }

  v30 = sub_268B38444();

  if (v30)
  {
LABEL_27:
    v34 = OUTLINED_FUNCTION_0_41();
    if (!v34)
    {
      goto LABEL_30;
    }

    v35 = v34;
    [v34 setDirection_];
    goto LABEL_29;
  }

  if (sub_26893E3F8(v27) == 0x6B63614270696B73 && v31 == 0xEC00000064726177)
  {
  }

  else
  {
    v33 = sub_268B38444();

    if ((v33 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v40 = OUTLINED_FUNCTION_0_41();
  if (v40)
  {
    v35 = v40;
    [v40 setDirection_];
LABEL_29:
  }

LABEL_30:
  v36 = a1[*(v16 + 48)];
  if (v36 == 26)
  {
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = sub_268942D54(v36);
  }

  return [v2 setMediaType_];
}

uint64_t sub_268A7B4CC(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MediaPlayerIntent(0);
  v22 = sub_2689A9870(&qword_2802A56B0, &unk_268B3E7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_268B37A34();
    v9 = sub_268B37F04();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2688BB000, v8, v9, "Found home automation nodes, attempting to map them to SiriKit intent", v10, 2u);
      MEMORY[0x26D6266E0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_268B3BBA0;
    v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v12);
    v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    *(v11 + 32) = sub_268A91478(v14);
    v16 = off_287959F20;
    v17 = type metadata accessor for SkipTimeIntent();
    v16(v11, v17, &off_287959F00);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

void sub_268A7B808(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = var50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MediaPlayerIntent(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v9 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = sub_268B18100(a2);
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_287959F20;
    v30 = type metadata accessor for SkipTimeIntent();
    v24 = v26;
    v29(v28, v30, &off_287959F00);
LABEL_13:
  }
}

void sub_268A7BBCC(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  v9 = sub_268B37854();
  sub_2688C2F6C(v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v21);
      sub_26890C900(v21, v20);
      sub_268AC88F0(v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v22;
    v13 = off_28795BB38;
    v14 = type metadata accessor for SkipTimeIntent();
    v13(v12, v14, &off_28795BB28);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

id OUTLINED_FUNCTION_0_41()
{

  return [v0 (v1 + 120)];
}

uint64_t sub_268A7C03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 80);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v8[4] = *(a1 + 64);
  v9 = v4;
  return v3(v8, a2);
}

unint64_t sub_268A7C0CC(char a1)
{
  result = 0x6D72616C61;
  switch(a1)
  {
    case 1:
      result = 0x72656D6974;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268A7C150(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = *(*(a1 + 48) + 8 * v7);

LABEL_10:
    v14 = v12;
    while (v8)
    {
LABEL_16:
      v12 = *(*(a1 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v8)))));
      if (qword_2802A4D50 != -1)
      {
        result = swift_once();
      }

      v8 &= v8 - 1;
      v16 = qword_2802CD900;
      if (*(qword_2802CD900 + 16))
      {
        result = sub_268A76C60(v14);
        if (v17)
        {
          v18 = *(*(v16 + 56) + 8 * result);
        }

        else
        {
          v18 = -1;
        }

        if (*(v16 + 16) && (result = sub_268A76C60(v12), (v19 & 1) != 0))
        {
          if (v18 < *(*(v16 + 56) + 8 * result))
          {
            goto LABEL_10;
          }
        }

        else if (v18 < -1)
        {
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v9)
      {

        return v14;
      }

      v8 = *(v2 + 8 * v15);
      ++v6;
      if (v8)
      {
        v6 = v15;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (1)
    {
      v6 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        return 0;
      }

      v11 = *(a1 + 64 + 8 * v5);
      v10 += 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) + v10;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_268A7C324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268B34614();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = type metadata accessor for QuickStopContext.FiringItem(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  MEMORY[0x28223BE20](v17);
  v39 = *(a1 + 16);
  if (v39)
  {
    v21 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v35 = a2;
    v36 = v21;
    v40 = &v34 - v20;
    sub_268A7FA0C(v21, &v34 - v20, type metadata accessor for QuickStopContext.FiringItem);
    v22 = (v5 + 32);
    v23 = (v5 + 8);
    v24 = 1;
    v37 = v10;
    while (v39 != v24)
    {
      v25 = v11;
      sub_268A7FA0C(v36 + *(v11 + 72) * v24, v19, type metadata accessor for QuickStopContext.FiringItem);
      sub_268A7FA0C(v40, v16, type metadata accessor for QuickStopContext.FiringItem);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        sub_268B34574();
      }

      else
      {
        (*v22)(v9, v16, v4);
      }

      sub_268A7FA0C(v19, v41, type metadata accessor for QuickStopContext.FiringItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v27 = v38;
        if (EnumCaseMultiPayload == 1)
        {
          (*v22)(v38, v41, v4);
        }

        else
        {
          sub_268B34574();
        }
      }

      else
      {
        v27 = v38;
        (*v22)(v38, v41, v4);
      }

      v28 = sub_268B345B4();
      v29 = v27;
      v30 = *v23;
      (*v23)(v29, v4);
      v30(v9, v4);
      if (v28)
      {
        v31 = v40;
        sub_268A7F9B4(v40, type metadata accessor for QuickStopContext.FiringItem);
        sub_268A7F958(v19, v31, type metadata accessor for QuickStopContext.FiringItem);
      }

      else
      {
        sub_268A7F9B4(v19, type metadata accessor for QuickStopContext.FiringItem);
      }

      v11 = v25;
      ++v24;
      v10 = v37;
    }

    v32 = v35;
    sub_268A7F958(v40, v35, type metadata accessor for QuickStopContext.FiringItem);
    return __swift_storeEnumTagSinglePayload(v32, 0, 1, v10);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
  }
}

uint64_t sub_268A7C750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v10 = qword_2802CDB28;
  sub_268B37A14();
  sub_268B38004();
  OUTLINED_FUNCTION_11_26();
  sub_268B37A04();
  sub_268A7C8D0(a1, v2, &v13);
  sub_268B37FF4();
  OUTLINED_FUNCTION_11_26();
  sub_268B379F4();
  (*(v6 + 8))(v9, v4);
  return v13;
}

void sub_268A7C8D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v225 = a2;
  v211 = sub_268B36FD4();
  v209 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v199 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C78, &unk_268B49770);
  MEMORY[0x28223BE20](v208);
  v210 = &v194 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C80, &qword_268B3CE20);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v204 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v213 = &v194 - v11;
  MEMORY[0x28223BE20](v10);
  v212 = &v194 - v12;
  v13 = type metadata accessor for QuickStopContext(0);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x28223BE20](v13);
  v222 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v224 = &v194 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v220 = &v194 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v219 = &v194 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v194 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v194 - v26;
  v226 = sub_268B37A54();
  v28 = *(v226 - 8);
  v29 = MEMORY[0x28223BE20](v226);
  v31 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v203 = &v194 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v202 = &v194 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v201 = &v194 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v200 = &v194 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v214 = &v194 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v217 = &v194 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v215 = &v194 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v206 = &v194 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v221 = &v194 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v216 = &v194 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v218 = &v194 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v223 = &v194 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  i = &v194 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = &v194 - v59;
  v207 = a1;
  if ((sub_268A409F0() & 1) == 0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v82 = v226;
    v83 = __swift_project_value_buffer(v226, qword_2802CDA10);
    (*(v28 + 16))(v31, v83, v82);
    v84 = sub_268B37A34();
    v85 = sub_268B37F04();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = a3;
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_2688BB000, v84, v85, "QuickStopUtil#quickStopResult Not a valid QuickStop parse, returning .unsupported", v87, 2u);
      v88 = v87;
      a3 = v86;
      MEMORY[0x26D6266E0](v88, -1, -1);
    }

    (*(v28 + 8))(v31, v82);
    v89 = 0x8000000000000000;
    goto LABEL_107;
  }

  v205 = a3;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_146;
  }

LABEL_3:
  v61 = __swift_project_value_buffer(v226, qword_2802CDA10);
  v62 = *(v28 + 16);
  v194 = v61;
  v196 = v28 + 16;
  v195 = v62;
  (v62)(v60);
  v63 = sub_268B37A34();
  v64 = sub_268B37F04();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2688BB000, v63, v64, "QuickStopUtil#quickStopResult Fetching context", v65, 2u);
    MEMORY[0x26D6266E0](v65, -1, -1);
  }

  v197 = *(v28 + 8);
  v66 = v60;
  v67 = v226;
  v198 = v28 + 8;
  v197(v66, v226);
  v68 = sub_2689AB6B8();
  sub_26890C900(v225 + 56, &v227);
  v69 = swift_allocObject();
  sub_2688EA320(&v227, v69 + 16);
  v70 = swift_allocObject();
  *(v70 + 16) = sub_268A7FAA0;
  *(v70 + 24) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C20, &unk_268B49780);
  v28 = v68;
  v71 = v68;
  sub_268B38024();

  v72 = v228;
  if (!v228)
  {
    v195(i, v194, v67);
    v90 = sub_268B37A34();
    v91 = sub_268B37EE4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2688BB000, v90, v91, "QuickStopUtil#quickStopResult Unable to fetch quick time context. Returning nothing to stop", v92, 2u);
      MEMORY[0x26D6266E0](v92, -1, -1);
    }

    v197(i, v67);
    v93 = *(v225 + 40);
    v94 = (v225 + 16);
    goto LABEL_26;
  }

  v73 = sub_268A7EAB4(v228, 0);
  if (v73 != 4)
  {
    LODWORD(v74) = v73;

    v95 = v223;
    v96 = v226;
    v195(v223, v194, v226);
    v97 = sub_268B37A34();
    v98 = sub_268B37F04();
    if (!os_log_type_enabled(v97, v98))
    {

      v121 = v95;
      v122 = v96;
      goto LABEL_105;
    }

    v14 = v197;
    v99 = 0x6D72616C61;
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v227 = v101;
    *v100 = 136315394;
    v102 = 0xE500000000000000;
    v103 = v101;
    v104 = 0x6D72616C61;
    switch(v74)
    {
      case 1:
        v104 = 0x72656D6974;
        break;
      case 2:
        v104 = 0xD000000000000010;
        v102 = 0x8000000268B58FF0;
        break;
      case 3:
        v104 = 0x656E6F6870;
        break;
      default:
        break;
    }

    v141 = sub_26892CDB8(v104, v102, &v227);

    *(v100 + 4) = v141;
    *(v100 + 12) = 2080;
    v142 = 0xE500000000000000;
    switch(v74)
    {
      case 0:
        break;
      case 1:
        v99 = 0x72656D6974;
        break;
      case 2:
        v99 = 0xD000000000000010;
        v142 = 0x8000000268B58FF0;
        break;
      case 3:
        v99 = 0x656E6F6870;
        break;
      default:
LABEL_150:
        JUMPOUT(0);
    }

    v143 = sub_26892CDB8(v99, v142, &v227);

    *(v100 + 14) = v143;
    _os_log_impl(&dword_2688BB000, v97, v98, "QuickStopUtil#quickStopResult Local device has firing %s. Reforming to %s domain", v100, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v103, -1, -1);
    MEMORY[0x26D6266E0](v100, -1, -1);

    v144 = v223;
    v145 = v96;
LABEL_84:
    (v14)(v144, v145);
    goto LABEL_106;
  }

  v74 = 0;
  v60 = *(v72 + 16);
  while (v60 != v74)
  {
    if (v74 >= *(v72 + 16))
    {
      __break(1u);
LABEL_132:
      v155 = 0xD000000000000010;
      v154 = 0x8000000268B58FF0;
LABEL_134:
      v180 = sub_26892CDB8(v155, v154, &v227);

      *(v70 + 4) = v180;
      *(v70 + 12) = 2080;
      v181 = 0xE500000000000000;
      v182 = v226;
      switch(v74)
      {
        case 0:
          goto LABEL_138;
        case 1:
          v27 = 0x72656D6974;
          goto LABEL_138;
        case 2:
          v27 = 0xD000000000000010;
          v181 = 0x8000000268B58FF0;
          goto LABEL_138;
        case 3:
          v27 = 0x656E6F6870;
LABEL_138:
          v183 = sub_26892CDB8(v27, v181, &v227);

          *(v70 + 14) = v183;
          _os_log_impl(&dword_2688BB000, v71, v72, "QuickStopUtil#quickStopResult Far device has firing %s. Reforming to %s domain", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6266E0](v60, -1, -1);
          MEMORY[0x26D6266E0](v70, -1, -1);

          v144 = v217;
          v145 = v182;
          goto LABEL_84;
        default:
          goto LABEL_150;
      }
    }

    sub_268A7FA0C(v72 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v74, v27, type metadata accessor for QuickStopContext);
    v75 = *(v27 + v13[5]);
    if (v75 - 1 >= 4)
    {
      if (v75)
      {
        goto LABEL_149;
      }

      v71 = *(v27 + v13[12]);
      sub_268A7F9B4(v27, type metadata accessor for QuickStopContext);
      if (v71)
      {

        v76 = v218;
        v77 = v226;
        v195(v218, v194, v226);
        v78 = sub_268B37A34();
        v79 = sub_268B37F04();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_2688BB000, v78, v79, "QuickStopUtil#quickStopResult Barged in over Siri. Dismiss with no action", v80, 2u);
          MEMORY[0x26D6266E0](v80, -1, -1);
        }

        v197(v76, v77);
        __swift_project_boxed_opaque_existential_1((v225 + 16), *(v225 + 40));
        v81 = sub_268B07EEC();
        goto LABEL_27;
      }
    }

    else
    {
      sub_268A7F9B4(v27, type metadata accessor for QuickStopContext);
    }

    ++v74;
  }

  v105 = 0;
  v27 = v225;
  while (v60 != v105)
  {
    if (v105 >= *(v72 + 16))
    {
      __break(1u);
LABEL_140:
      v184 = v14 + v70;
      v185 = v199;
      (*(v72 + 32))(v199, v184, v13);
      sub_268A7FAF0();
      v186 = sub_268B37BB4();
      v187 = *(v72 + 8);
      v187(v185, v13);
      sub_2688C058C(v213, &qword_2802A5C80, &qword_268B3CE20);
      v187(v105, v13);
      sub_2688C058C(v14, &qword_2802A5C80, &qword_268B3CE20);
      if (v186)
      {
LABEL_141:
        v188 = v201;
        v189 = v226;
        v195(v201, v194, v226);
        v190 = sub_268B37A34();
        v191 = sub_268B37F04();
        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          *v192 = 0;
          _os_log_impl(&dword_2688BB000, v190, v191, "QuickStopUtil#quickStopResult Watch treating as pause request", v192, 2u);
          MEMORY[0x26D6266E0](v192, -1, -1);
        }

        v197(v188, v189);
        __swift_project_boxed_opaque_existential_1((v27 + 16), *(v27 + 40));
        sub_268B0366C();
        v89 = v193;
        sub_2688C058C(v25, &qword_2802A5C80, &qword_268B3CE20);
        goto LABEL_28;
      }

LABEL_123:
      sub_2688C058C(v25, &qword_2802A5C80, &qword_268B3CE20);
LABEL_124:
      if (sub_268A4118C())
      {
        v170 = v202;
        v171 = v226;
        v195(v202, v194, v226);
        v172 = sub_268B37A34();
        v173 = sub_268B37F04();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          *v174 = 0;
          _os_log_impl(&dword_2688BB000, v172, v173, "QuickStopUtil#quickStopResult Didn't find anything to stop and parse is a Turn off, returning .unsupported for other domains to handle", v174, 2u);
          MEMORY[0x26D6266E0](v174, -1, -1);
        }

        v197(v170, v171);
        v89 = 0x8000000000000000;
        goto LABEL_28;
      }

      v175 = v203;
      v176 = v226;
      v195(v203, v194, v226);
      v177 = sub_268B37A34();
      v178 = sub_268B37F04();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_2688BB000, v177, v178, "QuickStopUtil#quickStopResult Didn't find anything to stop. Returning QuickStopNothingToStop flow", v179, 2u);
        MEMORY[0x26D6266E0](v179, -1, -1);
      }

      v197(v175, v176);
      v93 = *(v27 + 40);
      v94 = (v27 + 16);
LABEL_26:
      __swift_project_boxed_opaque_existential_1(v94, v93);
      sub_268B08224();
      goto LABEL_27;
    }

    sub_268A7FA0C(v72 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v105, v25, type metadata accessor for QuickStopContext);
    v75 = *&v25[v13[5]];
    if (v75 - 1 >= 4)
    {
      if (v75)
      {
        goto LABEL_149;
      }

      v106 = v25[v13[13]];
      sub_268A7F9B4(v25, type metadata accessor for QuickStopContext);
      if (v106 == 1)
      {

        v107 = v216;
        v108 = v226;
        v195(v216, v194, v226);
        v109 = sub_268B37A34();
        v110 = sub_268B37F04();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_2688BB000, v109, v110, "QuickStopUtil#quickStopResult Barged in over Home Anouncement. Reforming to Home Communication to stop the announcement", v111, 2u);
          MEMORY[0x26D6266E0](v111, -1, -1);
        }

        v197(v107, v108);
        v89 = 0x4000000000000002;
        goto LABEL_28;
      }
    }

    else
    {
      sub_268A7F9B4(v25, type metadata accessor for QuickStopContext);
    }

    ++v105;
  }

  v112 = sub_268A7EAB4(v72, 2uLL);
  if (v112 != 4)
  {
    LODWORD(v74) = v112;

    v123 = v221;
    v124 = v226;
    v195(v221, v194, v226);
    v125 = sub_268B37A34();
    v126 = sub_268B37F04();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = v197;
      v128 = 0x6D72616C61;
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v227 = v130;
      *v129 = 136315394;
      v131 = 0xE500000000000000;
      v132 = v130;
      v133 = 0x6D72616C61;
      switch(v74)
      {
        case 1:
          v133 = 0x72656D6974;
          break;
        case 2:
          v133 = 0xD000000000000010;
          v131 = 0x8000000268B58FF0;
          break;
        case 3:
          v133 = 0x656E6F6870;
          break;
        default:
          break;
      }

      v166 = sub_26892CDB8(v133, v131, &v227);

      *(v129 + 4) = v166;
      *(v129 + 12) = 2080;
      v167 = 0xE500000000000000;
      switch(v74)
      {
        case 0:
          goto LABEL_114;
        case 1:
          v128 = 0x72656D6974;
          goto LABEL_114;
        case 2:
          v128 = 0xD000000000000010;
          v167 = 0x8000000268B58FF0;
          goto LABEL_114;
        case 3:
          v128 = 0x656E6F6870;
LABEL_114:
          v168 = sub_26892CDB8(v128, v167, &v227);

          *(v129 + 14) = v168;
          _os_log_impl(&dword_2688BB000, v125, v126, "QuickStopUtil#quickStopResult Nearby device has firing %s. Reforming to %s domain", v129, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6266E0](v132, -1, -1);
          MEMORY[0x26D6266E0](v129, -1, -1);

          v127(v221, v124);
          goto LABEL_106;
        default:
          goto LABEL_150;
      }
    }

    v121 = v123;
    v122 = v124;
LABEL_105:
    v197(v121, v122);
LABEL_106:
    a3 = v205;
    v89 = v74 | 0x4000000000000000;
    goto LABEL_107;
  }

  __swift_project_boxed_opaque_existential_1((v27 + 176), *(v27 + 200));
  v113 = sub_268B36F84();
  v25 = v219;
  v114 = v220;
  if (v113)
  {
    for (i = 0; v60 != i; ++i)
    {
      if (i >= *(v72 + 16))
      {
        goto LABEL_145;
      }

      sub_268A7FA0C(v72 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * i, v25, type metadata accessor for QuickStopContext);
      v75 = *&v25[v13[5]];
      if (v75 - 1 >= 4)
      {
        if (v75)
        {
          goto LABEL_149;
        }

        v115 = v25[v13[14]];
        sub_268A7F9B4(v25, type metadata accessor for QuickStopContext);
        if (v115 == 1)
        {

          v116 = v206;
          v117 = v226;
          v195(v206, v194, v226);
          v118 = sub_268B37A34();
          v119 = sub_268B37F04();
          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            *v120 = 0;
            _os_log_impl(&dword_2688BB000, v118, v119, "QuickStopUtil#quickStopResult Local device has ongoing phone call. Reforming to phone domain", v120, 2u);
            MEMORY[0x26D6266E0](v120, -1, -1);
          }

          v197(v116, v117);
          v89 = 0x4000000000000003;
          goto LABEL_28;
        }
      }

      else
      {
        sub_268A7F9B4(v25, type metadata accessor for QuickStopContext);
      }
    }
  }

  for (i = 0; v60 != i; ++i)
  {
    if (i >= *(v72 + 16))
    {
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      swift_once();
      goto LABEL_3;
    }

    sub_268A7FA0C(v72 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * i, v114, type metadata accessor for QuickStopContext);
    v75 = *(v114 + v13[5]);
    if (v75 >= 3)
    {
      if (v75 - 3 > 1)
      {
        goto LABEL_149;
      }

      sub_268A7F9B4(v114, type metadata accessor for QuickStopContext);
    }

    else
    {
      v134 = *(v114 + v13[11]);
      sub_268A7F9B4(v114, type metadata accessor for QuickStopContext);
      if (v134 == 1)
      {

        v146 = v215;
        v147 = v226;
        v195(v215, v194, v226);
        v148 = sub_268B37A34();
        v149 = sub_268B37F04();
        if (os_log_type_enabled(v148, v149))
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          v140 = "QuickStopUtil#quickStopResult Local or nearby device has playing media. Returning PauseMedia flow";
LABEL_87:
          _os_log_impl(&dword_2688BB000, v148, v149, v140, v139, 2u);
          MEMORY[0x26D6266E0](v139, -1, -1);
        }

        goto LABEL_88;
      }
    }
  }

  v135 = sub_268A7EAB4(v72, 4uLL);
  if (v135 != 4)
  {
    LODWORD(v74) = v135;

    v151 = v217;
    v152 = v226;
    v195(v217, v194, v226);
    v71 = sub_268B37A34();
    LOBYTE(v72) = sub_268B37F04();
    if (os_log_type_enabled(v71, v72))
    {
      v14 = v197;
      v27 = 0x6D72616C61;
      v70 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&v227 = v153;
      *v70 = 136315394;
      v154 = 0xE500000000000000;
      v60 = v153;
      v155 = 0x6D72616C61;
      switch(v74)
      {
        case 1:
          v155 = 0x72656D6974;
          goto LABEL_134;
        case 2:
          goto LABEL_132;
        case 3:
          v155 = 0x656E6F6870;
          goto LABEL_134;
        default:
          goto LABEL_134;
      }
    }

    v121 = v151;
    v122 = v152;
    goto LABEL_105;
  }

  v136 = 0;
  v137 = v224;
  do
  {
    if (v60 == v136)
    {
      v156 = 0;
      a3 = v205;
      v157 = v222;
      while (v60 != v156)
      {
        v75 = *(v72 + 16);
        if (v156 >= v75)
        {
          goto LABEL_148;
        }

        sub_268A7FA0C(v72 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v156, v157, type metadata accessor for QuickStopContext);
        v75 = *(v157 + v13[5]);
        if (v75 - 1 >= 4)
        {
          if (v75)
          {
            goto LABEL_149;
          }

          v158 = *(v222 + v13[10]);
          sub_268A7F9B4(v222, type metadata accessor for QuickStopContext);
          v159 = v158 == 1;
          v157 = v222;
          if (v159)
          {

            v160 = v200;
            v161 = v226;
            v195(v200, v194, v226);
            v162 = sub_268B37A34();
            v163 = sub_268B37F04();
            if (os_log_type_enabled(v162, v163))
            {
              v164 = swift_slowAlloc();
              *v164 = 0;
              _os_log_impl(&dword_2688BB000, v162, v163, "QuickStopUtil#quickStopResult Local device has running timer. Reforming to timer domain", v164, 2u);
              v165 = v164;
              a3 = v205;
              MEMORY[0x26D6266E0](v165, -1, -1);
            }

            v89 = 0x4000000000000001;

            v197(v160, v161);
            goto LABEL_107;
          }
        }

        else
        {
          sub_268A7F9B4(v157, type metadata accessor for QuickStopContext);
        }

        ++v156;
      }

      __swift_project_boxed_opaque_existential_1((v27 + 96), *(v27 + 120));
      if ((sub_268B34CF4() & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1((v27 + 96), *(v27 + 120));
        if ((sub_268B34CB4() & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      v25 = v212;
      v13 = v211;
      sub_268B38024();

      v72 = v209;
      v169 = v213;
      (*(v209 + 104))(v213, *MEMORY[0x277D5F700], v13);
      __swift_storeEnumTagSinglePayload(v169, 0, 1, v13);
      v70 = *(v208 + 48);
      v14 = v210;
      sub_26890C964(v25, v210, &qword_2802A5C80, &qword_268B3CE20);
      sub_26890C964(v169, v14 + v70, &qword_2802A5C80, &qword_268B3CE20);
      if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
      {
        sub_2688C058C(v169, &qword_2802A5C80, &qword_268B3CE20);
        if (__swift_getEnumTagSinglePayload(v14 + v70, 1, v13) == 1)
        {
          sub_2688C058C(v14, &qword_2802A5C80, &qword_268B3CE20);
          goto LABEL_141;
        }
      }

      else
      {
        v105 = v204;
        sub_26890C964(v14, v204, &qword_2802A5C80, &qword_268B3CE20);
        if (__swift_getEnumTagSinglePayload(v14 + v70, 1, v13) != 1)
        {
          goto LABEL_140;
        }

        sub_2688C058C(v213, &qword_2802A5C80, &qword_268B3CE20);
        (*(v72 + 8))(v105, v13);
      }

      sub_2688C058C(v14, &qword_2802A5C78, &unk_268B49770);
      goto LABEL_123;
    }

    v75 = *(v72 + 16);
    if (v136 >= v75)
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      *&v227 = v75;
      sub_268B38474();
      __break(1u);
      JUMPOUT(0x268A7E84CLL);
    }

    sub_268A7FA0C(v72 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v136++, v137, type metadata accessor for QuickStopContext);
    v138 = *(v137 + v13[11]);
    sub_268A7F9B4(v137, type metadata accessor for QuickStopContext);
  }

  while ((v138 & 1) == 0);

  v146 = v214;
  v147 = v226;
  v195(v214, v194, v226);
  v148 = sub_268B37A34();
  v149 = sub_268B37F04();
  if (os_log_type_enabled(v148, v149))
  {
    v139 = swift_slowAlloc();
    *v139 = 0;
    v140 = "QuickStopUtil#quickStopResult Far device has playing media. Returning PauseMedia flow";
    goto LABEL_87;
  }

LABEL_88:

  v197(v146, v147);
  __swift_project_boxed_opaque_existential_1((v27 + 16), *(v27 + 40));
  sub_268B0366C();
LABEL_27:
  v89 = v81;
LABEL_28:
  a3 = v205;
LABEL_107:
  *a3 = v89;
}

uint64_t sub_268A7E8AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_268A7E914(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_2688E19F8, v6);
}

uint64_t sub_268A7EA00(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C18, &qword_268B49768);
  MEMORY[0x28223BE20](v1 - 8);
  sub_268B35494();
  sub_268B36764();
  return sub_268B35214();
}

uint64_t sub_268A7EAB4(uint64_t a1, unint64_t a2)
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v167 = v5;
  v168 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v157 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v158 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v160 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v156 = &v155 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C10, &qword_268B49760);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_3();
  v165 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v163 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v166 = &v155 - v19;
  v164 = type metadata accessor for QuickStopContext.FiringItem(0);
  OUTLINED_FUNCTION_1();
  v172 = v20;
  MEMORY[0x28223BE20](v21);
  v159 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for QuickStopContext(0);
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v171 = v27;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v169 = v29;
  OUTLINED_FUNCTION_8();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v155 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v155 - v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  v170 = v37;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  v173 = v39;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  v161 = v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  v44 = &v155 - v43;
  v45 = 0;
  v46 = *(a1 + 16);
  v174 = a1;
  v175 = v46;
  v47 = MEMORY[0x277D84F90];
  v162 = a2;
  while (2)
  {
    if (v175 != v45)
    {
      OUTLINED_FUNCTION_18_16();
      v2 = *(v25 + 72);
      OUTLINED_FUNCTION_0_42();
      sub_268A7FA0C(v48, v44, v49);
      if (a2 < 5)
      {
        switch(*&v44[v23[5]])
        {
          case 0:
            goto LABEL_12;
          case 1:
            if (!a2)
            {
              goto LABEL_14;
            }

            goto LABEL_12;
          case 2:
            if (a2 < 2)
            {
              goto LABEL_14;
            }

            goto LABEL_12;
          case 3:
            if (a2 >= 3)
            {
              goto LABEL_12;
            }

            goto LABEL_14;
          case 4:
            if (a2 != 4)
            {
              goto LABEL_14;
            }

LABEL_12:
            if ((v44[v23[6]] & 1) != 0 || v44[v23[7]] == 1)
            {
              OUTLINED_FUNCTION_0_42();
              sub_268A7F958(v44, v170, v51);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v177[0] = v47;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_20_18(*(v47 + 16));
                a2 = v162;
                v47 = v177[0];
              }

              v54 = *(v47 + 16);
              v53 = *(v47 + 24);
              v55 = v54 + 1;
              if (v54 >= v53 >> 1)
              {
                v58 = OUTLINED_FUNCTION_13_17(v53);
                v60 = v59;
                v155 = v61;
                sub_2689448AC(v58, v59, 1);
                v55 = v60;
                a2 = v162;
                v47 = v177[0];
              }

              ++v45;
              *(v47 + 16) = v55;
              OUTLINED_FUNCTION_0_42();
              sub_268A7F958(v170, v56, v57);
            }

            else
            {
LABEL_14:
              OUTLINED_FUNCTION_2_32();
              sub_268A7F9B4(v44, v50);
              ++v45;
            }

            continue;
          default:
            v176 = *&v44[v23[5]];
            goto LABEL_102;
        }
      }

      v176 = a2;
      goto LABEL_102;
    }

    break;
  }

  v62 = *(v47 + 16);
  if (v62)
  {
    OUTLINED_FUNCTION_18_16();
    v65 = v47 + (v64 & ~v63);
    OUTLINED_FUNCTION_0_42();
    sub_268A7FA0C(v65, v173, v66);
    v67 = 1;
    v2 = v173;
    while (2)
    {
      if (v62 != v67)
      {
        if (v67 < *(v47 + 16))
        {
          OUTLINED_FUNCTION_0_42();
          sub_268A7FA0C(v68, v36, v69);
          v70 = v23[5];
          v71 = *&v36[v70];
          if (v71 < 5)
          {
            switch(*(v173 + v70))
            {
              case 0:
                goto LABEL_27;
              case 1:
                if (v71)
                {
                  goto LABEL_27;
                }

                goto LABEL_29;
              case 2:
                if (v71 < 2)
                {
                  goto LABEL_29;
                }

                goto LABEL_27;
              case 3:
                if (v71 < 3)
                {
                  goto LABEL_29;
                }

                goto LABEL_27;
              case 4:
                if (v71 == 4)
                {
LABEL_27:
                  OUTLINED_FUNCTION_2_32();
                  sub_268A7F9B4(v36, v72);
                }

                else
                {
LABEL_29:
                  sub_268A7F9B4(v2, type metadata accessor for QuickStopContext);
                  sub_268A7F958(v36, v2, type metadata accessor for QuickStopContext);
                }

                ++v67;
                continue;
              default:
                v177[0] = *(v173 + v70);
                goto LABEL_102;
            }
          }

          v177[0] = *&v36[v70];
          goto LABEL_102;
        }

LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      break;
    }

    v73 = v161;
    sub_268A7F958(v173, v161, type metadata accessor for QuickStopContext);
    v74 = *(v73 + v23[5]);
    sub_268A7F9B4(v73, type metadata accessor for QuickStopContext);
  }

  else
  {
    v74 = 0;
  }

  v36 = 0;
  v75 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v62 != v36)
    {
      if (v36 < *(v47 + 16))
      {
        OUTLINED_FUNCTION_18_16();
        v2 = v77 & ~v76;
        OUTLINED_FUNCTION_0_42();
        sub_268A7FA0C(v78, v33, v79);
        v80 = *&v33[v23[5]];
        if (v80 < 5)
        {
          switch(v74)
          {
            case 0uLL:
              if (!v80)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            case 1uLL:
              if (v80 == 1)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            case 2uLL:
              if (v80 == 2)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            case 3uLL:
              if (v80 == 3)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            case 4uLL:
              if (v80 == 4)
              {
LABEL_47:
                OUTLINED_FUNCTION_0_42();
                sub_268A7F958(v33, v169, v82);
                v83 = swift_isUniquelyReferenced_nonNull_native();
                v177[0] = v75;
                if ((v83 & 1) == 0)
                {
                  OUTLINED_FUNCTION_20_18(*(v75 + 16));
                  v75 = v177[0];
                }

                v85 = *(v75 + 16);
                v84 = *(v75 + 24);
                v86 = v85 + 1;
                if (v85 >= v84 >> 1)
                {
                  v89 = OUTLINED_FUNCTION_13_17(v84);
                  v174 = v90;
                  v175 = v91;
                  sub_2689448AC(v89, v91, 1);
                  v86 = v175;
                  v75 = v177[0];
                }

                ++v36;
                *(v75 + 16) = v86;
                OUTLINED_FUNCTION_0_42();
                sub_268A7F958(v169, v87, v88);
              }

              else
              {
LABEL_45:
                OUTLINED_FUNCTION_2_32();
                sub_268A7F9B4(v33, v81);
                ++v36;
              }

              continue;
            default:
              v176 = v74;
              goto LABEL_102;
          }
        }

        v176 = *&v33[v23[5]];
LABEL_102:
        sub_268B38474();
        __break(1u);
        JUMPOUT(0x268A7F884);
      }

      __break(1u);
      goto LABEL_93;
    }

    break;
  }

  v92 = *(v75 + 16);
  if (v92)
  {
    v177[0] = MEMORY[0x277D84F90];
    sub_26894488C(0, v92, 0);
    v93 = v177[0];
    OUTLINED_FUNCTION_18_16();
    v175 = v75;
    v96 = v75 + (v95 & ~v94);
    v97 = *(v25 + 72);
    v99 = v166;
    v98 = v167;
    v100 = v159;
    do
    {
      v101 = v171;
      sub_268A7FA0C(v96, v171, type metadata accessor for QuickStopContext);
      sub_26897B01C(v100);
      sub_268A7F9B4(v101, type metadata accessor for QuickStopContext);
      v177[0] = v93;
      v103 = *(v93 + 16);
      v102 = *(v93 + 24);
      if (v103 >= v102 >> 1)
      {
        v104 = OUTLINED_FUNCTION_13_17(v102);
        sub_26894488C(v104, v103 + 1, 1);
        v93 = v177[0];
      }

      *(v93 + 16) = v103 + 1;
      sub_268A7F958(v100, v93 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v103, type metadata accessor for QuickStopContext.FiringItem);
      v96 += v97;
      --v92;
    }

    while (v92);

    v33 = v99;
    v62 = v98;
    v2 = v168;
  }

  else
  {

    v93 = MEMORY[0x277D84F90];
    v62 = v167;
    v2 = v168;
    v33 = v166;
  }

  v106 = v164;
  v105 = v165;
  v107 = v163;
  if (!*(v93 + 16))
  {

    if (qword_2802A4F30 != -1)
    {
      v109 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_7_28(v109, qword_2802CDA10);
    v110 = v157;
    v111(v157);
    v112 = sub_268B37A34();
    v113 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_17_23(v113))
    {
      swift_slowAlloc();
      v177[0] = OUTLINED_FUNCTION_143_0();
      *v110 = 136315138;
      v114 = DeviceProximity.description.getter(v162);
      v116 = sub_26892CDB8(v114, v115, v177);

      *(v110 + 4) = v116;
      OUTLINED_FUNCTION_169(&dword_2688BB000, v117, v118, "QuickStopUtil#mostRelevantFiringItemDomain No firing alarms/timers found within %s proximity");
      OUTLINED_FUNCTION_79_0();
      OUTLINED_FUNCTION_12();
    }

    v119 = OUTLINED_FUNCTION_12_21();
    v120(v119);
    return 4;
  }

  sub_268A7C324(v93, v33);

  sub_26890C964(v33, v107, &qword_2802A7C10, &qword_268B49760);
  if (__swift_getEnumTagSinglePayload(v107, 1, v106) == 1)
  {
    sub_2688C058C(v107, &qword_2802A7C10, &qword_268B49760);
    v108 = v160;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v108 = v160;
    if (!EnumCaseMultiPayload)
    {
      sub_268B34614();
      OUTLINED_FUNCTION_4();
      v143 = (*(v142 + 8))(v107);
      if (qword_2802A4F30 != -1)
      {
        v143 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_7_28(v143, qword_2802CDA10);
      v144 = v156;
      v145(v156);
      v146 = sub_268B37A34();
      v147 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_17_23(v147))
      {
        swift_slowAlloc();
        v177[0] = OUTLINED_FUNCTION_143_0();
        *v144 = 136315138;
        v148 = DeviceProximity.description.getter(v162);
        v150 = sub_26892CDB8(v148, v149, v177);

        *(v144 + 4) = v150;
        OUTLINED_FUNCTION_169(&dword_2688BB000, v151, v152, "QuickStopUtil#mostRelevantFiringItemDomain Most recently firing item is alarm within %s proximity");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_12();
      }

      v153 = OUTLINED_FUNCTION_12_21();
      v154(v153);
      sub_2688C058C(v33, &qword_2802A7C10, &qword_268B49760);
      return 0;
    }

    OUTLINED_FUNCTION_5_25();
    sub_268A7F9B4(v107, v122);
  }

  sub_26890C964(v33, v105, &qword_2802A7C10, &qword_268B49760);
  if (__swift_getEnumTagSinglePayload(v105, 1, v106) == 1)
  {
    v123 = sub_2688C058C(v105, &qword_2802A7C10, &qword_268B49760);
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_123();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_5_25();
    v123 = sub_268A7F9B4(v105, v137);
LABEL_82:
    v36 = v158;
    if (qword_2802A4F30 == -1)
    {
LABEL_83:
      OUTLINED_FUNCTION_7_28(v123, qword_2802CDA10);
      v138(v36);
      v139 = sub_268B37A34();
      v140 = sub_268B37EC4();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_2688BB000, v139, v140, "ControlsFlowProvider#mostRelevantFiringItemDomain Most recent firing item should not be empty, returning nil", v141, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v2 + 8))(v36, v62);
      sub_2688C058C(v33, &qword_2802A7C10, &qword_268B49760);
      return 4;
    }

LABEL_94:
    v123 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    goto LABEL_83;
  }

  sub_268B34614();
  OUTLINED_FUNCTION_4();
  v125 = (*(v124 + 8))(v105);
  if (qword_2802A4F30 != -1)
  {
    v125 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_7_28(v125, qword_2802CDA10);
  v126(v108);
  v127 = sub_268B37A34();
  v128 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_17_23(v128))
  {
    swift_slowAlloc();
    v177[0] = OUTLINED_FUNCTION_143_0();
    *v108 = 136315138;
    v129 = DeviceProximity.description.getter(v162);
    v131 = sub_26892CDB8(v129, v130, v177);

    *(v108 + 4) = v131;
    OUTLINED_FUNCTION_169(&dword_2688BB000, v132, v133, "QuickStopUtil#mostRelevantFiringItemDomain Most recently firing item is timer within %s proximity");
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_12();
  }

  v134 = OUTLINED_FUNCTION_12_21();
  v135(v134);
  sub_2688C058C(v33, &qword_2802A7C10, &qword_268B49760);
  return 1;
}

void *sub_268A7F8C0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  return v0;
}

uint64_t sub_268A7F900()
{
  sub_268A7F8C0();

  return MEMORY[0x2821FE8D8](v0, 216, 7);
}

uint64_t sub_268A7F958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_123();
  v5(v4);
  return a2;
}

uint64_t sub_268A7F9B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_268A7FA0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_123();
  v5(v4);
  return a2;
}

uint64_t sub_268A7FA68()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268A7FAA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_268A7FAF0()
{
  result = qword_2802A5C98;
  if (!qword_2802A5C98)
  {
    sub_268B36FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5C98);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_17_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_20_18(uint64_t a1@<X8>)
{

  sub_2689448AC(0, a1 + 1, 1);
}

Swift::String_optional __swiftcall UsoTask_hide_common_MediaItem.verb()()
{
  v0 = 1701079400;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268A7FC7C(uint64_t a1)
{
  result = sub_268A7FD28(&qword_2802A7C28, &protocol conformance descriptor for UsoTask_hide_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A7FD28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36004();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A7FD90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A7FDE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A7FE38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A7FE8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A7FEE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A7FF34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A7FF88(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A7FFDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A80040(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A80094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A800F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A8015C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A801C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t getEnumTagSinglePayload for ControlsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x3A)
  {
    if (a2 + 198 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 198) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 199;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC7;
  v5 = v6 - 199;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ControlsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 198 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 198) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x39)
  {
    v6 = ((a2 - 58) >> 8) + 1;
    *result = a2 - 58;
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
        JUMPOUT(0x268A80378);
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
          *result = a2 - 58;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268A803B4()
{
  result = qword_2802A7C40;
  if (!qword_2802A7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7C40);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_restart_uso_NoEntity.verb()()
{
  v0 = 0x74726174736572;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_restart_uso_NoEntity.referencedSetting()(uint64_t a1)
{
  result = sub_268B36304();
  if (result)
  {
    v2 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v2);
      }

      else
      {
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void UsoTask_restart_uso_NoEntity.shouldHandle(requestContext:)(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v3 = sub_268B37A54();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = sub_2688EFD0C();
  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D625BD0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = [v9 nowPlayingState];

    ++v8;
    if (v11 == 1)
    {
      v17 = 0;
      goto LABEL_14;
    }
  }

  if (qword_2802A4F30 == -1)
  {
    goto LABEL_11;
  }

LABEL_17:
  swift_once();
LABEL_11:
  v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v13 = v18;
  (*(v18 + 16))(v5, v12, v3);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "User asked to restart but no devices in the home are playing. Retuning nil flow for Settings domain to handle the request instead", v16, 2u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  (*(v13 + 8))(v5, v3);
  v17 = 3;
LABEL_14:
  *v19 = v17;
}

uint64_t sub_268A807A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A807FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A80850(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A808A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A808F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A8094C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A809A0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A809F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A80A58(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A80AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A80B10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A80B74(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A80BD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A80C3C(uint64_t a1)
{
  result = sub_268A80CE8(&qword_2802A7C48, &protocol conformance descriptor for UsoTask_restart_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A80CE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A80D2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v66 = a5;
  v67 = a7;
  v70 = a6;
  v71 = a2;
  v72 = a4;
  v65 = a1;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v59 = v10;
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v22 = *(v14 + 16);
  v22(v20, v21, v12);
  v23 = sub_268B37A34();
  v24 = sub_268B37ED4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v64 = v12;
    v26 = v21;
    v27 = v22;
    v28 = v14;
    v29 = a3;
    v30 = v18;
    v31 = v25;
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "SetAudioLanguageUnsupportedValueStrategy.makeUnsupportedValueOutput()", v25, 2u);
    v32 = v31;
    v18 = v30;
    a3 = v29;
    v14 = v28;
    v22 = v27;
    v21 = v26;
    v12 = v64;
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  v33 = *(v14 + 8);
  v33(v20, v12);
  v64 = a3;
  v62 = sub_2688E1B9C(5, 3, a3, v72, v71, 0x6E776F6E6B6E75, 0xE700000000000000, v70);
  v63 = v34;
  sub_268B36754();
  v35 = sub_268B36734();
  if (!v35)
  {
    v35 = sub_268B36744();
  }

  v36 = v35;
  v22(v18, v21, v12);

  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v57 = v33;
    v40 = v39;
    v41 = swift_slowAlloc();
    v56 = v18;
    v42 = v41;
    v73 = v41;
    *v40 = 136315138;
    sub_268B36714();
    v43 = v58;
    sub_268B36B14();

    v44 = sub_268B36784();
    v46 = v45;
    (*(v59 + 8))(v43, v60);
    v47 = sub_26892CDB8(v44, v46, &v73);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_2688BB000, v37, v38, "SetAudioLanguageUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x26D6266E0](v42, -1, -1);
    MEMORY[0x26D6266E0](v40, -1, -1);

    v57(v56, v12);
  }

  else
  {

    v33(v18, v12);
  }

  v48 = swift_allocObject();
  v50 = v67;
  v49 = v68;
  v48[2] = v36;
  v48[3] = v49;
  v51 = v71;
  v48[4] = v65;
  v48[5] = v51;
  v61 = v36;
  v52 = v63;
  v48[6] = v62;
  v48[7] = v52;
  v53 = v69;
  v48[8] = v50;
  v48[9] = v53;
  swift_retain_n();
  swift_retain_n();

  v70;

  v54 = v51;

  sub_2689FC038();
}

uint64_t sub_268A81320(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v98 = a7;
  v99 = a8;
  v86 = a5;
  v87 = a6;
  v95 = a4;
  v85 = a3;
  v84 = a2;
  v91 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v77 - v9;
  v10 = sub_268B37A54();
  v96 = *(v10 - 8);
  v97 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v94 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v14 - 8);
  v93 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v83 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v77 - v19;
  v20 = sub_268B34E24();
  v92 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v24 = MEMORY[0x28223BE20](v23);
  v88 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v77 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v77 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v31);
  v33 = &v77 - v32;
  sub_268935590(v91, &v77 - v32, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v33, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = v97;
    v35 = __swift_project_value_buffer(v97, qword_2802CDA10);
    v36 = v96;
    (*(v96 + 16))(v94, v35, v34);
    v37 = sub_268B37A34();
    v38 = sub_268B37EE4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "SetAudioLanguageUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v39, 2u);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (*(v36 + 8))(v94, v34);
    sub_2688C2ECC();
    v40 = swift_allocError();
    *v41 = -84;
    v100[0] = v40;
    v101 = 1;
    v98(v100);
    return sub_2688EF38C(v100, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v33, v30);
    v43 = v84;
    v44 = __swift_project_boxed_opaque_existential_1(v84 + 13, v84[16]);
    v45 = *MEMORY[0x277D5BBE0];
    v46 = *(v92 + 104);
    v79 = v22;
    v80 = v20;
    v46(v22, v45, v20);
    sub_268935590(v30, v28, &unk_2802A56E0, &unk_268B3CDF0);
    v94 = v23;

    v47 = sub_268B350F4();
    v48 = *(v47 - 8);
    v49 = v82;
    (*(v48 + 32))(v82, v28, v47);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
    v50 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v50);
    v51 = *v44;
    v52 = v83;
    sub_268935590(v49, v83, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v47);
    v78 = v30;
    v81 = v47;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v52, &unk_2802A57B0, &unk_268B3CE00);
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v56 = v52;
      v54 = sub_268B350B4();
      v55 = v57;
      (*(v48 + 8))(v56, v47);
    }

    v91 = v48;
    v76 = v51;
    v58 = v79;
    v59 = v93;
    sub_2688E3A78(v85, v79, v95, v54, v55, v86, v87, v93, v76);

    sub_2688EF38C(v59, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v92 + 8))(v58, v80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v60 = v97;
    v61 = __swift_project_value_buffer(v97, qword_2802CDA10);
    v62 = v96;
    v63 = v89;
    (*(v96 + 16))(v89, v61, v60);
    v64 = sub_268B37A34();
    v65 = sub_268B37ED4();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v81;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2688BB000, v64, v65, "SetAudioLanguageUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v68, 2u);
      MEMORY[0x26D6266E0](v68, -1, -1);
    }

    (*(v62 + 8))(v63, v60);
    v69 = v43[21];
    v70 = v43[22];
    __swift_project_boxed_opaque_existential_1(v43 + 18, v69);
    v71 = v78;
    v72 = v88;
    sub_268935590(v78, v88, &unk_2802A56E0, &unk_268B3CDF0);
    v73 = *(v72 + *(v94 + 12));
    v74 = v90;
    sub_268A82B50(v95, v90);
    v75 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v75);
    (*(v70 + 40))(v72, v73, v74, v98, v99, v69, v70);

    sub_2688EF38C(v74, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v71, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v91 + 8))(v72, v67);
  }
}

uint64_t sub_268A81C6C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  sub_268935590(a1, v34, &unk_2802A57C0, &qword_268B3BE00);
  v15 = v35;
  sub_2688EF38C(v34, &unk_2802A57C0, &qword_268B3BE00);
  if (v15 == 1)
  {
    v16 = a4 == 0x65676175676E616CLL && a5 == 0xE800000000000000;
    if (v16 || (sub_268B38444() & 1) != 0)
    {
      v17 = SetAudioLanguageLanguageUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
      if (v18)
      {
LABEL_8:
        v19 = sub_2688C2ECC();
        v20 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v19);
        v22 = 65;
LABEL_9:
        *v21 = v22;
        v34[0] = v20;
        v35 = 1;
        a2(v34);
        return sub_2688EF38C(v34, &unk_2802A57C0, &qword_268B3BE00);
      }

      if (v17 == 4)
      {
        return sub_268A365F4(0, 0, a8, a9);
      }

      if (v17 == 2)
      {
        v28 = a7[26];
        v29 = a7[27];
        __swift_project_boxed_opaque_existential_1(a7 + 23, v28);
        return sub_2689CE88C(0xD000000000000028, 0x8000000268B587A0, a8, a9, v28, v29);
      }

      if (v17 != 1)
      {
        goto LABEL_8;
      }

      sub_268B37B84();
      sub_268A374BC(0, 0);
    }

    v24 = a4 == 0x656369766564 && a5 == 0xE600000000000000;
    if (!v24 && (sub_268B38444() & 1) == 0)
    {
      v31 = sub_2688C2ECC();
      v20 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v31);
      v22 = 68;
      goto LABEL_9;
    }

    v25 = SetAudioLanguageDeviceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
    if ((v26 & 1) == 0)
    {
      if ((v25 - 2) < 2)
      {
        v30 = v25 == 3;
        sub_268B37B84();
        sub_268A367E4(v30);
      }

      if (v25 == 1)
      {
        v32 = sub_2688C2ECC();
        v20 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v32);
        v22 = 66;
        goto LABEL_9;
      }
    }

    v27 = sub_2688C2ECC();
    v20 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v27);
    v22 = 67;
    goto LABEL_9;
  }

  return a2(a1);
}

uint64_t type metadata accessor for SetAudioLanguageUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A7C60;
  if (!qword_2802A7C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A82024()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268A820E0(void *a1, void (*a2)(uint64_t, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34CB4())
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D47818]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6510, &unk_268B3F610);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_268B3BBC0;
    v10 = sub_268B37BF4();
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    sub_268A823BC(v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_268B3BBA0;
    *(v12 + 32) = v8;
    v13 = v8;
    a2(v12, 0);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "VolumeControlsViewProvider#makeAceViewsForHandle Not macOS, skip rendering volume snippet", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return (a2)(MEMORY[0x277D84F90], 0);
  }
}

void sub_268A823BC(uint64_t a1, void *a2)
{
  v3 = sub_268B37CE4();

  [a2 setSettingKeys_];
}

void sub_268A8242C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_268A82724(a1);
  type metadata accessor for VolumeLevel();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_26893A824(0, 0, 0, 0xE000000000000000);
  v12 = type metadata accessor for SettingsIntent(0);
  [v11 setVolumeSettingState_];
  v13 = *(a1 + v12[8]);
  if (v13 == 2)
  {
    [v11 setVolumeSettingQualifier_];
  }

  else
  {
    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    [v11 setVolumeSettingQualifier_];
  }

  v15 = v12[6];
  sub_268A82A20(a1 + v15, v9);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
  if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
  {
    sub_268A82A90(v9);
LABEL_10:
    v18 = 0;
    goto LABEL_12;
  }

  sub_268B36634();
  v17 = v21[15];
  (*(*(v16 - 8) + 8))(v9, v16);
  if (v17)
  {
    goto LABEL_10;
  }

  v18 = 1;
LABEL_12:
  [v11 setVolumeSettingUnit_];
  sub_268A82A20(a1 + v15, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v16) == 1)
  {
    sub_268A82A90(v7);
  }

  else
  {
    sub_268B36654();
    v19 = v21[24];
    (*(*(v16 - 8) + 8))(v7, v16);
    if ((v19 & 1) == 0)
    {
      v20 = sub_268B37DD4();
      [v11 setVolumeSettingValue_];
    }
  }

  [v2 setSettingAttribute_];
  [v2 setVolumeLevel_];
}

void sub_268A82724(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26897EC08(a1, v8);
  sub_268A82AF8();
  v9 = sub_268B37854();
  sub_26891E5F8(v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v21);
      sub_26890C900(v21, v20);
      sub_268AC88F0(v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v22;
    v13 = off_28795BC18;
    v14 = type metadata accessor for SetVolumeLevelIntent();
    v13(v12, v14, &off_28795BC08);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_268A82A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A82A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268A82AF8()
{
  result = qword_2802A6678;
  if (!qword_2802A6678)
  {
    type metadata accessor for SettingsIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6678);
  }

  return result;
}

uint64_t sub_268A82B50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C70, qword_268B49C28);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v91 - v7;
  sub_268B37A94();
  OUTLINED_FUNCTION_1();
  v106 = v10;
  v107 = v9;
  MEMORY[0x28223BE20](v9);
  v94 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v96 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v91 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v91 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v91 - v23;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v25 = __swift_project_value_buffer(v12, qword_2802CDA10);
    v26 = *(v14 + 16);
    v100 = v25;
    v101 = v14 + 16;
    v99 = v26;
    v26(v24);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    v29 = os_log_type_enabled(v27, v28);
    v102 = a1;
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_14();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "HandleNLContextUpdateProvider#makeHandledContext making handled context", v30, 2u);
      a1 = v102;
      MEMORY[0x26D6266E0](v30, -1, -1);
    }

    v31 = *(v14 + 8);
    v14 += 8;
    v104 = v14;
    v98 = v31;
    v31(v24, v12);
    sub_268B35034();
    v32 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    ObjectType = swift_getObjectType();
    v34 = dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for DeviceQueryableIntent);
    v97 = v12;
    if (v34)
    {
      v36 = v34;
      v37 = v35;
      OUTLINED_FUNCTION_0_43();
      v38();
      v93 = a1;
      v39 = sub_268B37A34();
      v40 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v40))
      {
        v12 = OUTLINED_FUNCTION_14();
        *v12 = 0;
        OUTLINED_FUNCTION_7(&dword_2688BB000, v41, v42, "HandleNLContextUpdateProvider#makeHandledContext Making handled context using device queries");
        OUTLINED_FUNCTION_4_37();
      }

      v98(v22, v12);
      v43 = swift_getObjectType();
      v24 = v36;
      v44 = (*(v37 + 8))(v43, v37);
      a1 = v107;
      if (v44)
      {
        v22 = v44;
        v45 = sub_2688EFD0C();
        v46 = 0;
        v27 = (v22 & 0xC000000000000001);
        v12 = (v22 & 0xFFFFFFFFFFFFFF8);
        v92 = (v106 + 32);
        v105 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v45 == v46)
          {

            v12 = v97;
            goto LABEL_25;
          }

          if (v27)
          {
            v47 = MEMORY[0x26D625BD0](v46, v22);
          }

          else
          {
            if (v46 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v47 = *(v22 + 8 * v46 + 32);
          }

          v24 = v47;
          v14 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          sub_268AC8384(v6);

          sub_268A83434(v6, v8);
          if (__swift_getEnumTagSinglePayload(v8, 1, a1) == 1)
          {
            sub_268A834A4(v8);
            ++v46;
          }

          else
          {
            v48 = *v92;
            (*v92)(v94, v8, a1);
            v49 = v105;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v91 = v48;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_268987774();
              v49 = v55;
            }

            v52 = *(v49 + 16);
            v51 = *(v49 + 24);
            v105 = v49;
            v24 = (v52 + 1);
            if (v52 >= v51 >> 1)
            {
              sub_268987774();
              v105 = v56;
            }

            v54 = v105;
            v53 = v106;
            *(v105 + 16) = v24;
            v91((v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v52), v94, a1);
            v46 = v14;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v105 = MEMORY[0x277D84F90];
    }

    else
    {
      v105 = v32;
    }

LABEL_25:
    v57 = v102;
    v58 = swift_getObjectType();
    v59 = dynamic_cast_existential_1_conditional(v57, v58, &protocol descriptor for DeviceSelectableIntent);
    v61 = v95;
    if (!v59)
    {
      goto LABEL_48;
    }

    v62 = v60;
    OUTLINED_FUNCTION_0_43();
    v63();
    v64 = v57;
    v65 = sub_268B37A34();
    v66 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v66))
    {
      v12 = OUTLINED_FUNCTION_14();
      *v12 = 0;
      OUTLINED_FUNCTION_7(&dword_2688BB000, v67, v68, "HandleNLContextUpdateProvider#makeHandledContext Making handled context using devices");
      OUTLINED_FUNCTION_4_37();
    }

    v98(v61, v12);
    v69 = swift_getObjectType();
    v70 = (*(v62 + 24))(v69, v62);
    if (!v70)
    {

LABEL_48:
      v6 = MEMORY[0x277D84F90];
      goto LABEL_51;
    }

    v22 = v70;
    v95 = v64;
    result = sub_2688EFD0C();
    if (!result)
    {
      break;
    }

    v72 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v12 = (v22 & 0xC000000000000001);
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v73 = v12 ? MEMORY[0x26D625BD0](v8, v22) : *(v22 + 8 * v8 + 32);
      v24 = v73;
      sub_2689841C4();
      isa = v74[2].isa;
      v14 = *(v6 + 2);
      a1 = (v14 + isa);
      if (__OFADD__(v14, isa))
      {
        break;
      }

      v27 = v74;
      if (!swift_isUniquelyReferenced_nonNull_native() || (v76 = *(v6 + 3) >> 1, v76 < a1))
      {
        sub_268987774();
        v6 = v77;
        v76 = *(v77 + 3) >> 1;
      }

      if (v27[2].isa)
      {
        if (v76 - *(v6 + 2) < isa)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (isa)
        {
          v78 = *(v6 + 2);
          v79 = __OFADD__(v78, isa);
          v80 = v78 + isa;
          if (v79)
          {
            goto LABEL_61;
          }

          *(v6 + 2) = v80;
        }
      }

      else
      {

        if (isa)
        {
          goto LABEL_59;
        }
      }

      ++v8;

      if (v72 == v8)
      {

        goto LABEL_50;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_50:
  v57 = v102;
LABEL_51:
  v81 = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v57, v81, &protocol descriptor for RREntityProvidingIntent))
  {
    v83 = v82;
    OUTLINED_FUNCTION_0_43();
    v84();
    v85 = v57;
    v86 = sub_268B37A34();
    v87 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v87))
    {
      v88 = OUTLINED_FUNCTION_14();
      *v88 = 0;
      _os_log_impl(&dword_2688BB000, v86, v27, "HandleNLContextUpdateProvider#makeHandledContext Making handled context from intent", v88, 2u);
      MEMORY[0x26D6266E0](v88, -1, -1);
    }

    v98(v96, v97);
    v89 = swift_getObjectType();
    v90 = (*(v83 + 8))(v89, v83);
    sub_268984768(v90);
  }

  v108 = v105;
  sub_268984768(v6);
  sub_268984768(v109);
  return sub_268B34F94();
}

uint64_t sub_268A83434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C70, qword_268B49C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A834A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C70, qword_268B49C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_4_37()
{

  JUMPOUT(0x26D6266E0);
}

void sub_268A83648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, __int128 a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  v55 = v25;
  v53 = v26;
  v54 = v27;
  v52 = v28;
  v50 = v29;
  v51 = v30;
  v32 = v31;
  v34 = v33;
  v49 = a21;
  v48 = a22;
  v47 = a23;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v36 = v35 - 8;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = OUTLINED_FUNCTION_69_6();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v24, v34, v40);
  *(v24 + *(v36 + 56)) = v32;
  sub_2688C053C(v24, v39, &unk_2802A56E0, &unk_268B3CDF0);
  v42 = *&v39[*(v36 + 56)];
  v43 = *(a24 + 64);
  v44 = v32;
  v45 = v49;
  v43(v39, v42, v50, v51, v52, v53, v54, v55, v45, 0, v48, *(&v48 + 1), v47, a24);

  sub_2689A7CD8(v24, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v41 + 8))(v39, v40);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A8381C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_268B35174();
    sub_268B35144();
    sub_268B35154();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_268B35164();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

void sub_268A838A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  v129 = v24;
  v118 = v25;
  v27 = v26;
  v128 = v28;
  v126 = v29;
  v122 = v30;
  v121 = v31;
  v33 = v32;
  v35 = v34;
  v119 = type metadata accessor for SnippetModelContext(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v37);
  v127 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v130 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v110 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_97_3(&v140);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v43);
  v44 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  v116 = v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_15();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v51 = v50 - 8;
  v123 = *(v50 - 8);
  v52 = *(v123 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_79(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v55);
  MEMORY[0x28223BE20](v56);
  v58 = &v110 - v57;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v59 + 16))(v58, v35);
  *&v58[*(v51 + 56)] = v33;
  v60 = qword_2802A4F30;
  v61 = v33;
  if (v60 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v135 = v41;
  v133 = a24;
  v132 = a23;
  v131 = a21;
  v62 = __swift_project_value_buffer(v44, qword_2802CDA10);
  v63 = *(v46 + 16);
  v113 = v62;
  v114 = v46 + 16;
  v112 = v63;
  (v63)(v24);
  v64 = sub_268B37A34();
  v65 = sub_268B37ED4();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v46;
  v68 = v130;
  if (v66)
  {
    v69 = OUTLINED_FUNCTION_14();
    *v69 = 0;
    _os_log_impl(&dword_2688BB000, v64, v65, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput...", v69, 2u);
    OUTLINED_FUNCTION_12();
  }

  v111 = v44;

  v70 = *(v67 + 8);
  v117 = v67 + 8;
  v115 = v70;
  v70(v24, v44);
  v71 = *(v68 + 2);
  v72 = v125;
  v73 = v127;
  v71(v125, v27, v127);
  v130 = v58;
  v74 = v124;
  sub_2688C053C(v58, v124, &unk_2802A56E0, &unk_268B3CDF0);
  v71(v135, v72, v73);
  sub_2688C053C(v74, v134, &unk_2802A56E0, &unk_268B3CDF0);
  v75 = (v68[80] + 24) & ~v68[80];
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_74_5();
  v77 = &v68[v76 + 25] & ~v76;
  v78 = swift_allocObject();
  v79 = v129;
  *(v78 + 16) = v129;
  v80 = v78 + v75;
  v81 = v73;
  (*(v68 + 4))(v80, v72, v73);
  v82 = &v68[v78 + 16];
  v83 = v128;
  *v82 = v128;
  *(v82 + 8) = v131 & 1;
  sub_268954254(v74, v78 + v77, &unk_2802A56E0, &unk_268B3CDF0);
  v84 = (v78 + ((v52 + v77 + 7) & 0xFFFFFFFFFFFFFFF8));
  v85 = v133;
  *v84 = v132;
  v84[1] = v85;
  if ((v126 & 1) == 0)
  {

    sub_2689A7CD8(v134, &unk_2802A56E0, &unk_268B3CDF0);
    (*(v68 + 1))(v135, v81);
    sub_2688E4594(v79 + 56, v139);
    sub_2688E4594(v118, v138);
    sub_2688E4594(v139, v137);
    sub_2688E4594(v138, v136);
    v102 = swift_allocObject();
    v103 = v121;
    v104 = v122;
    v102[2] = v121;
    v102[3] = v104;
    sub_2688E6514(v139, (v102 + 4));
    v102[9] = sub_268A8F8A0;
    v102[10] = v78;
    sub_2688E6514(v138, (v102 + 11));
    sub_268B36C54();

    if (sub_268B36C24() == v103 && v105 == v104)
    {

      v108 = v130;
    }

    else
    {
      v107 = sub_268B38444();

      v108 = v130;
      if ((v107 & 1) == 0)
      {
        sub_2689AE8D8(0, 0xE000000000000000, v103, v104, v137, sub_268A8F8A0, v78, v136);

        __swift_destroy_boxed_opaque_existential_0Tm(v136);
        __swift_destroy_boxed_opaque_existential_0Tm(v137);
LABEL_17:
        v101 = v108;
        goto LABEL_18;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v136);
    __swift_destroy_boxed_opaque_existential_0Tm(v137);
    sub_268B36C44();
    v109 = swift_allocObject();
    v109[2] = 0;
    v109[3] = 0xE000000000000000;
    v109[4] = sub_268A8FA0C;
    v109[5] = v102;

    sub_268B36C34();

    goto LABEL_17;
  }

  v86 = v116;
  v87 = v111;
  v112(v116, v113, v111);

  v88 = sub_268B37A34();
  v89 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_19(v89))
  {
    v90 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v90);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v91, v92, "MediaControlsViewProvider.mediaPlayerSnippetModel Not rendering the controls platter due to enabled suppressSnippets");
    OUTLINED_FUNCTION_83_0();
  }

  v115(v86, v87);
  v93 = sub_268B36A54();
  v94 = v120;
  OUTLINED_FUNCTION_4_7(v120, v95, v96, v93);
  v97 = (v94 + *(v119 + 20));
  *v97 = 0;
  v97[1] = 0;
  v98 = v135;
  v99 = v83;
  v100 = v134;
  sub_268A841E0(v94, v79, v135, v99, v131 & 1, v134, v132, v133);

  sub_2689B0974(v94);
  sub_2689A7CD8(v100, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v68 + 1))(v98, v81);
  v101 = v130;
LABEL_18:
  sub_2689A7CD8(v101, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A841E0(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = a7;
  v93 = a8;
  v88 = a6;
  v75 = a5;
  v83 = a4;
  v82 = a3;
  v94 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v84 = *(v11 - 8);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v69 - v12;
  v13 = type metadata accessor for SnippetModelContext(0);
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = v14;
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B34DA4();
  MEMORY[0x28223BE20](v15 - 8);
  v76 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B35374();
  v89 = *(v17 - 8);
  v90 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v78 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v19;
  MEMORY[0x28223BE20](v18);
  v87 = &v69 - v20;
  v72 = sub_268B367A4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v69 - v23;
  v25 = sub_268B37A54();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v69 - v30;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v25, qword_2802CDA10);
  v73 = *(v26 + 16);
  v73(v31, v32, v25);
  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v74 = v25;
    v36 = v32;
    v37 = v29;
    v38 = a1;
    v39 = v35;
    *v35 = 0;
    _os_log_impl(&dword_2688BB000, v33, v34, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput creating output with a mediaPlayerSnippetModelContext.", v35, 2u);
    v40 = v39;
    a1 = v38;
    v29 = v37;
    v32 = v36;
    v25 = v74;
    MEMORY[0x26D6266E0](v40, -1, -1);
  }

  v74 = *(v26 + 8);
  v74(v31, v25);
  sub_2688E4594(v94 + 96, v97);
  __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  sub_2688C053C(a1, v24, &qword_2802A6AE0, qword_268B416B8);
  v41 = sub_268B36A54();
  if (__swift_getEnumTagSinglePayload(v24, 1, v41) == 1)
  {
    sub_2689A7CD8(v24, &qword_2802A6AE0, qword_268B416B8);
    v95 = 0u;
    v96 = 0u;
  }

  else
  {
    *(&v96 + 1) = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
    (*(*(v41 - 8) + 32))(boxed_opaque_existential_1, v24, v41);
  }

  sub_268948494(&v95);
  sub_2689A7CD8(&v95, &byte_2802A6450, &byte_268B3BE10);
  __swift_destroy_boxed_opaque_existential_0Tm(v97);
  v73(v29, v32, v25);
  v43 = sub_268B37A34();
  v44 = sub_268B37EC4();
  if (os_log_type_enabled(v43, v44))
  {
    v73 = a1;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v97[0] = v46;
    *v45 = 136315138;
    sub_268B36754();
    if (sub_268B36734())
    {
      sub_268B36714();

      v47 = v70;
      sub_268B36B14();

      v48 = sub_268B36784();
      v50 = v49;
      (*(v71 + 8))(v47, v72);
    }

    else
    {
      v50 = 0xE300000000000000;
      v48 = 4271950;
    }

    v51 = sub_26892CDB8(v48, v50, v97);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_2688BB000, v43, v44, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput with responseMode = %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x26D6266E0](v46, -1, -1);
    MEMORY[0x26D6266E0](v45, -1, -1);

    v74(v29, v25);
    a1 = v73;
  }

  else
  {

    v74(v29, v25);
  }

  v52 = sub_268B34D44();
  MEMORY[0x28223BE20](v52);
  *(&v69 - 6) = v82;
  *(&v69 - 5) = a1;
  v53 = v94;
  *(&v69 - 4) = v83;
  *(&v69 - 3) = v53;
  *(&v69 - 16) = v75 & 1;
  v55 = v87;
  v54 = v88;
  *(&v69 - 1) = v88;
  sub_268B352C4();
  v56 = v81;
  sub_268A8FA80(a1, v81);
  v57 = v86;
  sub_2688C053C(v54, v86, &unk_2802A56E0, &unk_268B3CDF0);
  v59 = v89;
  v58 = v90;
  v60 = v78;
  (*(v89 + 16))(v78, v55, v90);
  v61 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v62 = (v80 + *(v84 + 80) + v61) & ~*(v84 + 80);
  v63 = (v85 + *(v59 + 80) + v62) & ~*(v59 + 80);
  v64 = swift_allocObject();
  sub_268A8FD24(v56, v64 + v61);
  sub_268954254(v57, v64 + v62, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v59 + 32))(v64 + v63, v60, v58);
  v65 = sub_268B37DB4();
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v65);
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v66[4] = &unk_268B49DF8;
  v66[5] = v64;
  v67 = v93;
  v66[6] = v92;
  v66[7] = v67;

  sub_2688DB634();

  return (*(v59 + 8))(v55, v58);
}

uint64_t sub_268A84C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v30 = a7;
  v31 = a5;
  v28 = a6;
  v27[1] = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v29);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v13 = sub_268B367A4();
  v27[0] = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C78, &qword_268B49DE8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (v27 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v27 - v20;
  v22 = sub_268B35044();
  (*(*(v22 - 8) + 16))(v21, a2, v22);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  sub_268B35314();
  type metadata accessor for SnippetModelContext(0);

  sub_268B35354();

  sub_268B35334();
  sub_268A8381C(v28, v18);
  sub_268B35324();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    (*(v27[0] + 32))(v15, v12, v13);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_2689A7CD8(v12, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(v30, v9, &unk_2802A56E0, &unk_268B3CDF0);
  v23 = *&v9[*(v29 + 48)];
  v24 = [v23 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v25 = sub_268B350F4();
  (*(*(v25 - 8) + 8))(v9, v25);
  __swift_project_boxed_opaque_existential_1((v31 + 56), *(v31 + 80));
  result = sub_268B34C84();
  if (result)
  {
    return sub_268B35364();
  }

  return result;
}

uint64_t sub_268A85084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v4[17] = swift_task_alloc();
  v5 = sub_268B37A54();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  v4[22] = swift_task_alloc();
  v6 = sub_268B36A54();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A85224, 0, 0);
}

uint64_t sub_268A85224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  v11 = v10[22];
  v12 = v10[23];
  sub_2688C053C(v10[13], v11, &qword_2802A6AE0, qword_268B416B8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2689A7CD8(v10[22], &qword_2802A6AE0, qword_268B416B8);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v10[18], qword_2802CDA10);
    v13 = OUTLINED_FUNCTION_11_27();
    v14(v13);
    v15 = sub_268B37A34();
    v16 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_139_0(v16))
    {
      v17 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v17);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v18, v19, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput returning output without snippet.");
      OUTLINED_FUNCTION_83_0();
    }

    v20 = v10[17];

    v21 = OUTLINED_FUNCTION_70_7();
    v22(v21);
    v23 = sub_268B35094();
    OUTLINED_FUNCTION_245(v23);
    v10[29] = sub_268B35084();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v25 = OUTLINED_FUNCTION_29_6(v24);
    v10[30] = v25;
    *(v25 + 16) = xmmword_268B3BBA0;
    v26 = OUTLINED_FUNCTION_74_2();
    sub_2688C053C(v26, v27, v28, v29);
    OUTLINED_FUNCTION_30_15();
    OUTLINED_FUNCTION_11_13();
    (*(v30 + 8))(v20);
    OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
    v64 = v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v10[31] = v32;
    *v32 = v33;
    v32[1] = sub_268A85838;
    OUTLINED_FUNCTION_26_15();
    OUTLINED_FUNCTION_164();

    return v37(v34, v35, v36, v37, v38, v39, v40, v41, v64, a10);
  }

  else
  {
    v44 = v10[24];
    v43 = v10[25];
    v45 = v10[23];
    v46 = v10[17];
    (*(v44 + 32))(v43, v10[22], v45);
    v47 = sub_268B35094();
    OUTLINED_FUNCTION_245(v47);
    v10[26] = sub_268B35084();
    v10[10] = v45;
    v10[11] = sub_268A8F3C4();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 7);
    (*(v44 + 16))(boxed_opaque_existential_1, v43, v45);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v50 = OUTLINED_FUNCTION_29_6(v49);
    v10[27] = v50;
    *(v50 + 16) = xmmword_268B3BBA0;
    OUTLINED_FUNCTION_112_2(v50, v51, &unk_2802A56E0, &unk_268B3CDF0);
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_11_13();
    (*(v52 + 8))(v46);
    OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD38]);
    v65 = v53;
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v10[28] = v54;
    *v54 = v55;
    v54[1] = sub_268A855A4;
    OUTLINED_FUNCTION_164();

    return v60(v56, v57, v58, v59, v60, v61, v62, v63, v65, a10);
  }
}

uint64_t sub_268A855A4()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_219();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  v5 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268A856D0()
{
  OUTLINED_FUNCTION_125();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(*(v0 + 144), qword_2802CDA10);
  v1 = OUTLINED_FUNCTION_11_27();
  v2(v1);
  v3 = sub_268B37A34();
  v4 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_139_0(v4))
  {
    v5 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v6, v7, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput returning output with media player snippet.");
    OUTLINED_FUNCTION_83_0();
  }

  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v10 = *(v0 + 184);
  v11 = *(v0 + 96);

  v12 = OUTLINED_FUNCTION_70_1();
  v13(v12);
  (*(v9 + 8))(v8, v10);
  sub_2688E6514((v0 + 16), v11);

  OUTLINED_FUNCTION_17_24();

  return v14();
}

uint64_t sub_268A85838()
{
  OUTLINED_FUNCTION_127();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_268A859F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  v102 = v22;
  v103 = v23;
  v98 = v24;
  v100 = v25;
  v101 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_74();
  v99 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v34);
  v94 = v35;
  OUTLINED_FUNCTION_21();
  v95 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_74();
  v97 = v38;
  OUTLINED_FUNCTION_9();
  v39 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v96 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  v46 = &v90 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v48 = v47 - 8;
  v92 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_79(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_4();
  (*(v51 + 16))(v20, v30);
  v52 = *(v48 + 56);
  v104 = v20;
  *(v20 + v52) = v28;
  v53 = qword_2802A4F30;
  v54 = v28;
  if (v53 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v105 = v21;
  v55 = __swift_project_value_buffer(v39, qword_2802CDA10);
  v56 = v41;
  v57 = v41 + 16;
  v58 = OUTLINED_FUNCTION_74_2();
  v91 = v59;
  (v59)(v58);
  v60 = sub_268B37A34();
  v61 = sub_268B37F04();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_14();
    *v62 = 0;
    _os_log_impl(&dword_2688BB000, v60, v61, "SiriPlaybackControlsOutputProvider.completionViewOutput...", v62, 2u);
    OUTLINED_FUNCTION_12();
  }

  v63 = *(v56 + 8);
  v64 = v46;
  v65 = v56 + 8;
  v63(v64, v39);
  v66 = v105;
  __swift_project_boxed_opaque_existential_1(v105 + 2, v105[5]);
  if (sub_268B36FA4())
  {
    v67 = v97;
    sub_2688C053C(v100, v97, &qword_2802A57F0, &qword_268B3DDB0);
    v68 = v93;
    sub_2688C053C(v104, v93, &unk_2802A56E0, &unk_268B3CDF0);
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_42_5();
    v69 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_74_5();
    v71 = (v70 + v69 + 9) & ~v70;
    v72 = swift_allocObject();
    sub_268954254(v67, v72 + v65, &qword_2802A57F0, &qword_268B3DDB0);
    *(v72 + v57) = v101;
    v73 = v72 + v69;
    *v73 = v66;
    *(v73 + 8) = v98 & 1;
    sub_268954254(v68, v72 + v71, &unk_2802A56E0, &unk_268B3CDF0);
    v74 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v99, v75, v76, v74);
    OUTLINED_FUNCTION_10_18();
    v77 = swift_allocObject();
    v77[2] = 0;
    v77[3] = 0;
    v77[4] = &unk_268B49DD8;
    v77[5] = v72;
    v78 = v103;
    v77[6] = v102;
    v77[7] = v78;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v79 = v104;
    v80 = &unk_2802A56E0;
    v81 = &unk_268B3CDF0;
  }

  else
  {
    v82 = v96;
    v91(v96, v55, v39);
    v83 = sub_268B37A34();
    v84 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v84))
    {
      v85 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v85);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v86, v87, "SiriPlaybackControlsOutputProvider#completionViewOutput creating completionViewOutput");
      OUTLINED_FUNCTION_83_0();
    }

    v63(v82, v39);
    OUTLINED_FUNCTION_14_20(v105 + 7);
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v88, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_85_5();
    v89 = v104;
    sub_268B34F04();
    sub_2689A7CD8(&v106, &unk_2802A5800, &unk_268B3CE10);
    v107[40] = 0;
    v102(v107);
    sub_2689A7CD8(v89, &unk_2802A56E0, &unk_268B3CDF0);
    v80 = &unk_2802A57C0;
    v81 = &qword_268B3BE00;
    v79 = v107;
  }

  sub_2689A7CD8(v79, v80, v81);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A86014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 184) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  *(v6 + 64) = swift_task_alloc();
  sub_268B34DA4();
  *(v6 + 72) = swift_task_alloc();
  v7 = sub_268B35374();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  v8 = sub_268B367A4();
  *(v6 + 104) = v8;
  *(v6 + 112) = *(v8 - 8);
  *(v6 + 120) = swift_task_alloc();
  v9 = sub_268B37A54();
  *(v6 + 128) = v9;
  *(v6 + 136) = *(v9 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8620C, 0, 0);
}

uint64_t sub_268A8620C()
{
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(*(v0 + 128), qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_78_6();
  v47 = v4;
  v46 = v5;
  (v5)(v3);
  v6 = sub_268B37A34();
  v7 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v7))
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_53_1();
    v8 = OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v9 = *(v0 + 120);
      v10 = *(v0 + 104);
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5(v11);

      v8 = v9;
      sub_268B36784();
      v12 = OUTLINED_FUNCTION_13_18();
      v13(v12, v10);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    v15 = *(v0 + 136);
    v16 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v16, v17, v18);
    OUTLINED_FUNCTION_48_9();

    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v19, v20, "SiriPlaybackControlsOutputProvider.completionViewOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v2 = *(v15 + 8);
    v21 = OUTLINED_FUNCTION_106_2();
    v2(v21);
  }

  else
  {
    v8 = *(v0 + 152);

    v14 = OUTLINED_FUNCTION_50_8();
    v2(v14);
  }

  OUTLINED_FUNCTION_96_4();
  v22 = *(v0 + 184);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  v45 = *(v0 + 24);
  sub_268B34D44();
  v25 = swift_task_alloc();
  *(v25 + 16) = v45;
  *(v25 + 32) = v23;
  *(v25 + 40) = v22;
  *(v25 + 48) = v24;
  OUTLINED_FUNCTION_34_11();

  v46(v8, v47, v6);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v28);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v29, v30, "SiriPlaybackControlsOutputProvider.completionViewOutput returning completionViewOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v31 = *(v0 + 64);

  v32 = OUTLINED_FUNCTION_70_7();
  v2(v32);
  v33 = sub_268B35094();
  OUTLINED_FUNCTION_245(v33);
  *(v0 + 160) = sub_268B35084();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v35 = OUTLINED_FUNCTION_29_6(v34);
  *(v0 + 168) = v35;
  *(v35 + 16) = xmmword_268B3BBA0;
  v36 = OUTLINED_FUNCTION_74_2();
  sub_2688C053C(v36, v37, v38, v39);
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_11_13();
  (*(v40 + 8))(v31);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v48 = v41;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  *(v0 + 176) = v42;
  *v42 = v43;
  v42[1] = sub_268A86570;
  OUTLINED_FUNCTION_26_15();

  return v48();
}

uint64_t sub_268A86570()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268A8668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v27 = a6;
  v25 = a5;
  v29 = a4;
  v24 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_268B367A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C78, &qword_268B49DE8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v24 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v17 - 8);
  sub_2688C053C(v24, &v24 - v18, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();

  sub_268B35334();
  sub_268A8381C(v25, v16);
  sub_268B35324();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_2689A7CD8(v9, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  v19 = v28;
  sub_2688C053C(v27, v28, &unk_2802A56E0, &unk_268B3CDF0);
  v20 = *(v19 + *(v26 + 48));
  v21 = [v20 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v22 = sub_268B350F4();
  (*(*(v22 - 8) + 8))(v19, v22);
  __swift_project_boxed_opaque_existential_1((v29 + 56), *(v29 + 80));
  result = sub_268B34C84();
  if (result)
  {
    return sub_268B35364();
  }

  return result;
}

void sub_268A86A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v196 = v25;
  v197 = v20;
  v194 = v26;
  v195 = v27;
  v29 = v28;
  v31 = v30;
  v181 = sub_268B354F4();
  OUTLINED_FUNCTION_1();
  v180 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v191 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v40);
  v190 = sub_268B36A54();
  OUTLINED_FUNCTION_1();
  v185 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_79(v43);
  OUTLINED_FUNCTION_97_3(&v203 + 8);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v45);
  v177 = sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v176 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v48);
  v49 = sub_268B34DA4();
  v50 = OUTLINED_FUNCTION_22(v49);
  MEMORY[0x28223BE20](v50);
  sub_268B35374();
  OUTLINED_FUNCTION_1();
  v192 = v52;
  v193 = v51;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52_10();
  v189 = v53;
  OUTLINED_FUNCTION_97_3(&a18);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_78();
  v201 = v55;
  OUTLINED_FUNCTION_9();
  v56 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_3();
  v178 = v60;
  OUTLINED_FUNCTION_8();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = v173 - v63;
  MEMORY[0x28223BE20](v62);
  v174 = v173 - v65;
  OUTLINED_FUNCTION_8();
  v67 = MEMORY[0x28223BE20](v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_105_0();
  v186 = v68;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_33_16(v173);
  OUTLINED_FUNCTION_97_3(&a16);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_4();
  (*(v71 + 16))(v21, v31);
  v72 = *(v22 + 56);
  v202 = v21;
  *(v21 + v72) = v29;
  v73 = qword_2802A4F30;
  v74 = v29;
  if (v73 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v75 = __swift_project_value_buffer(v56, qword_2802CDA10);
  v76 = v58;
  v78 = *(v58 + 16);
  v77 = v58 + 16;
  v198 = v75;
  v199 = v78;
  v78(v20);
  v79 = sub_268B37A34();
  v80 = sub_268B37F04();
  if (OUTLINED_FUNCTION_183_0(v80))
  {
    v81 = OUTLINED_FUNCTION_14();
    *v81 = 0;
    _os_log_impl(&dword_2688BB000, v79, v80, "SiriPlaybackControlsOutputProvider.confirmationViewOutput...", v81, 2u);
    OUTLINED_FUNCTION_12();
  }

  v82 = *(v76 + 8);
  v200 = (v76 + 8);
  (v82)(v20, v56);
  v83 = v82;
  v84 = v197;
  __swift_project_boxed_opaque_existential_1(v197 + 2, v197[5]);
  if (sub_268B36FA4())
  {
    v85 = sub_268B34D54();
    MEMORY[0x28223BE20](v85);
    sub_268B352C4();
    OUTLINED_FUNCTION_104_4();
    v86();
    v87 = sub_268B37A34();
    v88 = sub_268B37EC4();
    v89 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
    if (os_log_type_enabled(v87, v88))
    {
      v90 = OUTLINED_FUNCTION_172_0();
      v91 = OUTLINED_FUNCTION_173_0();
      *&v203 = v91;
      *v90 = 136315138;
      sub_268B36754();
      if (sub_268B36734())
      {
        sub_268B36714();

        v194 = v83;
        v92 = v175;
        sub_268B36B14();

        v93 = sub_268B36784();
        v89 = v94;
        v95 = v92;
        v83 = v194;
        (*(v176 + 8))(v95, v177);
      }

      else
      {
        v93 = 7104878;
        v89 = 0xE300000000000000;
      }

      v121 = sub_26892CDB8(v93, v89, &v203);

      *(v90 + 4) = v121;
      _os_log_impl(&dword_2688BB000, v87, v88, "SiriPlaybackControlsOutputProvider.confirmationViewOutput responseMode = %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v122 = OUTLINED_FUNCTION_86_4();
      v83(v122);
      v84 = v197;
    }

    else
    {

      v115 = OUTLINED_FUNCTION_86_4();
      v82(v115);
    }

    OUTLINED_FUNCTION_14_20(v84 + 7);
    if (sub_268B34D24())
    {
      v117 = v202;
      OUTLINED_FUNCTION_82_3();
      sub_2688C053C(v123, v124, v125, &unk_268B3CDF0);
      v127 = v192;
      v126 = v193;
      v128 = v189;
      (*(v192 + 16))(v189, v201, v193);
      v129 = (*(v186 + 80) + 24) & ~*(v186 + 80);
      OUTLINED_FUNCTION_99_4();
      v130 = swift_allocObject();
      *(v130 + 16) = v84;
      sub_268954254(v89, v130 + v129, &unk_2802A56E0, &unk_268B3CDF0);
      (*(v127 + 32))(v130 + v77, v128, v126);
      v131 = sub_268B37DB4();
      OUTLINED_FUNCTION_4_7(v191, v132, v133, v131);
      OUTLINED_FUNCTION_10_18();
      v134 = swift_allocObject();
      v134[2] = 0;
      v134[3] = 0;
      v134[4] = &unk_268B49DC0;
      v134[5] = v130;
      v135 = v196;
      v134[6] = v195;
      v134[7] = v135;

      OUTLINED_FUNCTION_12_22();
      sub_2688DB634();

      (*(v127 + 8))(v201, v126);
      goto LABEL_30;
    }

    v136 = sub_268B376A4();
    v137 = sub_268B37694();
    *(&v204 + 1) = v136;
    v205 = MEMORY[0x277D5F928];
    *&v203 = v137;
    v138 = v182;
    sub_268A60494();
    __swift_destroy_boxed_opaque_existential_0Tm(&v203);
    v139 = v190;
    if (__swift_getEnumTagSinglePayload(v138, 1, v190) != 1)
    {
      v150 = v185;
      v200 = *(v185 + 32);
      v151 = v184;
      v200(v184, v138, v139);
      v152 = v150;
      (*(v150 + 16))(v183, v151, v139);
      v117 = v202;
      v153 = v188;
      sub_2688C053C(v202, v188, &unk_2802A56E0, &unk_268B3CDF0);
      v154 = v192;
      v155 = v189;
      (*(v192 + 16))(v189, v201, v193);
      v156 = (*(v152 + 80) + 24) & ~*(v152 + 80);
      OUTLINED_FUNCTION_74_5();
      v158 = (v173[1] + v157 + v156) & ~v157;
      v159 = (v187 + *(v154 + 80) + v158) & ~*(v154 + 80);
      v160 = swift_allocObject();
      v161 = v139;
      v162 = v160;
      *(v160 + 16) = v84;
      v200(v160 + v156, v183, v161);
      sub_268954254(v153, v162 + v158, &unk_2802A56E0, &unk_268B3CDF0);
      v163 = v193;
      (*(v154 + 32))(v162 + v159, v155, v193);
      v164 = sub_268B37DB4();
      OUTLINED_FUNCTION_4_7(v191, v165, v166, v164);
      OUTLINED_FUNCTION_10_18();
      v167 = swift_allocObject();
      v167[2] = 0;
      v167[3] = 0;
      v167[4] = &unk_268B49DA8;
      v167[5] = v162;
      v168 = v196;
      v167[6] = v195;
      v167[7] = v168;

      OUTLINED_FUNCTION_12_22();
      sub_2688DB634();

      (*(v185 + 8))(v184, v190);
      (*(v154 + 8))(v201, v163);
      goto LABEL_30;
    }

    sub_2689A7CD8(v138, &qword_2802A6AE0, qword_268B416B8);
    v140 = v174;
    OUTLINED_FUNCTION_104_4();
    v141();
    v142 = sub_268B37A34();
    v143 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_183_0(v143))
    {
      v144 = OUTLINED_FUNCTION_172_0();
      v145 = OUTLINED_FUNCTION_173_0();
      *&v203 = v145;
      *v144 = 136315138;
      sub_268B36754();
      if (sub_268B36734())
      {
        sub_268B36714();

        v146 = v175;
        sub_268B36B14();

        v147 = sub_268B36784();
        v149 = v148;
        (*(v176 + 8))(v146, v177);
      }

      else
      {
        v147 = 7104878;
        v149 = 0xE300000000000000;
      }

      v169 = sub_26892CDB8(v147, v149, &v203);

      *(v144 + 4) = v169;
      OUTLINED_FUNCTION_93_6(&dword_2688BB000, v170, v143, "SiriPlaybackControlsOutputProvider.confirmationViewOutput Unable to generate RF confirmationSnippet for confirmation. (responseMode = %s)");
      __swift_destroy_boxed_opaque_existential_0Tm(v145);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_83_0();
    }

    (v83)(v140, v56);
    sub_2688C2ECC();
    v171 = swift_allocError();
    *v172 = -86;
    *&v203 = v171;
    v206 = 1;
    v195(&v203);
    sub_2689A7CD8(&v203, &unk_2802A57C0, &qword_268B3BE00);
    (*(v192 + 8))(v201, v193);
LABEL_29:
    v117 = v202;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_104_4();
  v96();
  v97 = sub_268B37A34();
  v98 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v98))
  {
    v99 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v99);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v100, v101, "SiriPlaybackControlsOutputProvider.confirmationViewOutput creating views for non-RF response");
    OUTLINED_FUNCTION_83_0();
  }

  (v83)(v64, v56);
  sub_268B376A4();
  v102 = sub_268B37694();
  v103 = sub_268A8E470(v84 + 7, v102);
  v105 = v104;

  if (v105)
  {
    sub_268A48FEC(v103, 1);
    OUTLINED_FUNCTION_104_4();
    v106();
    v107 = sub_268B37A34();
    v108 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v108))
    {
      v109 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v109);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v110, v111, "SiriPlaybackControlsOutputProvider.confirmationViewOutput Unable to generate views for confirmation");
      OUTLINED_FUNCTION_83_0();
    }

    v112 = OUTLINED_FUNCTION_86_4();
    v83(v112);
    sub_2688C2ECC();
    v113 = swift_allocError();
    *v114 = -68;
    *&v203 = v113;
    v206 = 1;
    v195(&v203);
    sub_2689A7CD8(&v203, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(v84 + 12, v84[15]);
  *(&v204 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
  *&v203 = v103;

  sub_268948494(&v203);
  sub_2689A7CD8(&v203, &byte_2802A6450, &byte_268B3BE10);
  OUTLINED_FUNCTION_27_13(v84 + 7);
  sub_268B34CA4();
  v205 = 0;
  v203 = 0u;
  v204 = 0u;
  v116 = v179;
  v117 = v202;
  sub_268B34F24();
  sub_268A48FEC(v103, 0);
  sub_2689A7CD8(&v203, &unk_2802A5800, &unk_268B3CE10);
  v118 = v181;
  *(&v204 + 1) = v181;
  v205 = MEMORY[0x277D5C1D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v203);
  v120 = v180;
  (*(v180 + 16))(boxed_opaque_existential_1, v116, v118);
  v206 = 0;
  v195(&v203);
  (*(v120 + 8))(v116, v118);
  sub_2689A7CD8(&v203, &unk_2802A57C0, &qword_268B3BE00);
LABEL_30:
  sub_2689A7CD8(v117, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A87AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v19);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_268B367A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2688C053C(a2, &v19 - v14, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_2689A7CD8(v8, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(v20, v5, &unk_2802A56E0, &unk_268B3CDF0);
  v15 = *&v5[*(v19 + 48)];
  v16 = [v15 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v17 = sub_268B350F4();
  (*(*(v17 - 8) + 8))(v5, v17);
  sub_268B35344();
  return sub_268B35304();
}

uint64_t sub_268A87E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v4[7] = swift_task_alloc();
  v5 = sub_268B37A54();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A87F30, 0, 0);
}

uint64_t sub_268A87F30()
{
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v0[8], qword_2802CDA10);
  v1 = OUTLINED_FUNCTION_11_27();
  v2(v1);
  v3 = sub_268B37A34();
  v4 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_139_0(v4))
  {
    v5 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v6, v7, "SiriPlaybackControlsOutputProvider.confirmationViewOutput creating confirmationViewOutput without snippet using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v8 = v0[7];
  v9 = v0[3];

  v10 = OUTLINED_FUNCTION_70_1();
  v11(v10);
  __swift_project_boxed_opaque_existential_1((v9 + 96), *(v9 + 120));
  sub_268948308(MEMORY[0x277D84F90]);
  v12 = sub_268B35094();
  OUTLINED_FUNCTION_245(v12);
  v0[11] = sub_268B35084();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v14 = OUTLINED_FUNCTION_29_6(v13);
  v0[12] = v14;
  *(v14 + 16) = xmmword_268B3BBA0;
  OUTLINED_FUNCTION_112_2(v14, v15, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_11_13();
  (*(v16 + 8))(v8);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v23 = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[13] = v18;
  *v18 = v19;
  v18[1] = sub_268A88134;
  v20 = v0[5];
  v21 = v0[2];

  return v23(v21, v14, v20);
}

uint64_t sub_268A88134()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  OUTLINED_FUNCTION_17_24();

  return v3();
}

uint64_t sub_268A8828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v5[17] = swift_task_alloc();
  v6 = sub_268B367A4();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v7 = sub_268B37A54();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A883EC, 0, 0);
}

uint64_t sub_268A883EC()
{
  v37 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v0[21], qword_2802CDA10);
  v1 = OUTLINED_FUNCTION_11_27();
  v2(v1);
  v3 = sub_268B37A34();
  v4 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_183_0(v4))
  {
    v5 = OUTLINED_FUNCTION_172_0();
    v6 = OUTLINED_FUNCTION_173_0();
    v36 = v6;
    *v5 = 136315138;
    sub_268B36754();
    if (sub_268B36734())
    {
      sub_268B36714();
      OUTLINED_FUNCTION_98_2();

      sub_268B36B14();

      v7 = sub_268B36784();
      v9 = v8;
      v10 = OUTLINED_FUNCTION_51_6();
      v11(v10);
    }

    else
    {
      v9 = 0xE400000000000000;
      v7 = 1701736270;
    }

    sub_26892CDB8(v7, v9, &v36);
    OUTLINED_FUNCTION_98_2();

    *(v5 + 4) = v7;
    OUTLINED_FUNCTION_93_6(&dword_2688BB000, v15, v4, "SiriPlaybackControlsOutputProvider.confirmationViewOutput creating confirmationViewOutput using RF 2.0 with responseMode = %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_83_0();

    v16 = OUTLINED_FUNCTION_51_6();
    v17(v16);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
  }

  v18 = v0[17];
  v19 = v0[13];
  __swift_project_boxed_opaque_existential_1((v0[12] + 96), *(v0[12] + 120));
  v20 = sub_268B36A54();
  v0[10] = v20;
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_70();
  v22 = *(v21 + 16);
  v22();
  sub_268948494((v0 + 7));
  sub_2689A7CD8((v0 + 7), &byte_2802A6450, &byte_268B3BE10);
  v23 = sub_268B35094();
  OUTLINED_FUNCTION_245(v23);
  v0[24] = sub_268B35084();
  v0[5] = v20;
  v0[6] = sub_268A8F3C4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (v22)(boxed_opaque_existential_1, v19, v20);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v26 = OUTLINED_FUNCTION_29_6(v25);
  v0[25] = v26;
  *(v26 + 16) = xmmword_268B3BBA0;
  OUTLINED_FUNCTION_112_2(v26, v27, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_11_13();
  (*(v28 + 8))(v18);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD40]);
  v35 = v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[26] = v30;
  *v30 = v31;
  v30[1] = sub_268A88760;
  v32 = v0[15];
  v33 = v0[11];

  return v35(v33, v0 + 2, v26, v32);
}

uint64_t sub_268A88760()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_219();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_277();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_268A888DC()
{
  OUTLINED_FUNCTION_26();
  v81 = v2;
  v82 = v0;
  v80 = v3;
  v74 = v4;
  v75 = v5;
  v76 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v77 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v14);
  v71[3] = v15;
  OUTLINED_FUNCTION_21();
  v72 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_74();
  v78 = v18;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v73 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v26 = v25 - 8;
  v71[1] = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_33_16(v71);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_4();
  (*(v28 + 16))(v1, v10);
  v29 = *(v26 + 56);
  v79 = v1;
  *(v1 + v29) = v8;
  v30 = qword_2802A4F30;
  v31 = v8;
  if (v30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v32 = __swift_project_value_buffer(v19, qword_2802CDA10);
  v33 = v21 + 16;
  v34 = *(v21 + 16);
  v34(v0, v32, v19);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v37);
    _os_log_impl(&dword_2688BB000, v35, v36, "SiriPlaybackControlsOutputProvider.clarificationViewOutput...", v30, 2u);
    OUTLINED_FUNCTION_83_0();
  }

  v38 = *(v21 + 8);
  v38(v0, v19);
  OUTLINED_FUNCTION_27_13((v82 + 16));
  if (sub_268B36FA4())
  {
    v39 = v78;
    sub_2688C053C(v74, v78, &qword_2802A57F0, &qword_268B3DDB0);
    v40 = v79;
    OUTLINED_FUNCTION_82_3();
    sub_2688C053C(v41, v42, &unk_2802A56E0, v43);
    OUTLINED_FUNCTION_83_5();
    v44 = v33 + v72;
    OUTLINED_FUNCTION_74_5();
    v46 = (v45 + v44 + 2) & ~v45;
    v47 = swift_allocObject();
    sub_268954254(v39, v47 + v33, &qword_2802A57F0, &qword_268B3DDB0);
    v48 = (v47 + v44);
    *v48 = v75 & 1;
    v48[1] = v76 & 1;
    sub_268954254(v0, v47 + v46, &unk_2802A56E0, &unk_268B3CDF0);
    v49 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v77, v50, v51, v49);
    OUTLINED_FUNCTION_10_18();
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = &unk_268B49D88;
    v52[5] = v47;
    v53 = v81;
    v52[6] = v80;
    v52[7] = v53;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v54 = v40;
    v55 = &unk_2802A56E0;
    v56 = &unk_268B3CDF0;
  }

  else
  {
    v57 = v73;
    v34(v73, v32, v19);
    v58 = sub_268B37A34();
    v59 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v59))
    {
      v60 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v60);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v61, v62, "SiriPlaybackControlsOutputProvider.clarificationViewOutput creating clarificationViewOutput");
      OUTLINED_FUNCTION_83_0();
    }

    v38(v57, v19);
    OUTLINED_FUNCTION_14_20((v82 + 56));
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    v63 = sub_268B35044();
    v64 = v78;
    OUTLINED_FUNCTION_4_7(v78, v65, v66, v63);
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v67, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_85_5();
    v68 = v79;
    sub_268B34F34();
    sub_2689A7CD8(&v83, &unk_2802A5800, &unk_268B3CE10);
    sub_2689A7CD8(v64, &qword_2802A57F0, &qword_268B3DDB0);
    v69 = OUTLINED_FUNCTION_36_10();
    v70(v69);
    sub_2689A7CD8(v68, &unk_2802A56E0, &unk_268B3CDF0);
    v55 = &unk_2802A57C0;
    v56 = &qword_268B3BE00;
    v54 = &v84;
  }

  sub_2689A7CD8(v54, v55, v56);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A88ECC(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = a5;
  *(v5 + 169) = a4;
  *(v5 + 168) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  *(v5 + 48) = swift_task_alloc();
  sub_268B34DA4();
  *(v5 + 56) = swift_task_alloc();
  v6 = sub_268B35374();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_268B367A4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  v8 = sub_268B37A54();
  *(v5 + 112) = v8;
  *(v5 + 120) = *(v8 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A890C4, 0, 0);
}

uint64_t sub_268A890C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_107_3();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(*(v16 + 112), qword_2802CDA10);
  v19 = OUTLINED_FUNCTION_78_6();
  v73 = v20;
  v72 = v21;
  (v21)(v19);
  v22 = sub_268B37A34();
  v23 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v23))
  {
    OUTLINED_FUNCTION_172_0();
    a13 = OUTLINED_FUNCTION_53_1();
    v24 = OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v25 = *(v16 + 104);
      v26 = *(v16 + 88);
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5(v27);

      v24 = v25;
      sub_268B36784();
      v28 = OUTLINED_FUNCTION_13_18();
      v29(v28, v26);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    v32 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v32, v33, v34);
    OUTLINED_FUNCTION_48_9();

    *(v17 + 4) = v18;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v35, v36, "SiriPlaybackControlsOutputProvider.clarificationViewOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v37 = OUTLINED_FUNCTION_106_2();
    v71 = v38;
    (v38)(v37);
  }

  else
  {
    v24 = *(v16 + 136);
    v30 = *(v16 + 112);
    v31 = *(v16 + 120);

    v71 = *(v31 + 8);
    v71(v24, v30);
  }

  OUTLINED_FUNCTION_100_3();
  v39 = *(v16 + 169);
  v40 = *(v16 + 168);
  v42 = *(v16 + 24);
  v41 = *(v16 + 32);
  sub_268B34D64();
  v43 = swift_task_alloc();
  *(v43 + 16) = v42;
  *(v43 + 24) = v40;
  *(v43 + 25) = v39;
  *(v43 + 32) = v41;
  OUTLINED_FUNCTION_34_11();

  v72(v24, v73, v22);
  v44 = sub_268B37A34();
  v45 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v45))
  {
    v46 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v46);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v47, v48, "SiriPlaybackControlsOutputProvider.clarificationViewOutput creating clarificationViewOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v49 = *(v16 + 48);

  v50 = OUTLINED_FUNCTION_70_7();
  (v71)(v50);
  v51 = sub_268B35094();
  OUTLINED_FUNCTION_245(v51);
  *(v16 + 144) = sub_268B35084();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v53 = OUTLINED_FUNCTION_29_6(v52);
  *(v16 + 152) = v53;
  *(v53 + 16) = xmmword_268B3BBA0;
  v54 = OUTLINED_FUNCTION_74_2();
  sub_2688C053C(v54, v55, v56, v57);
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_11_13();
  (*(v58 + 8))(v49);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v74 = v59;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  *(v16 + 160) = v60;
  *v60 = v61;
  v60[1] = sub_268A8941C;
  OUTLINED_FUNCTION_26_15();
  OUTLINED_FUNCTION_108_2();

  return v65(v62, v63, v64, v65, v66, v67, v68, v69, v71, v72, v73, v74, a13, a14, a15, a16);
}

uint64_t sub_268A8941C()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268A89538()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_277();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_268A895E8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v26 = a5;
  v24 = a3;
  v25 = a4;
  v6 = sub_268B34E54();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_268B367A4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v17 - 8);
  sub_2688C053C(a2, &v23 - v18, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    (*(v14 + 32))(v16, v12, v13);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_2689A7CD8(v12, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_268B35344();
  sub_268B35304();
  sub_2688C053C(v26, v9, &unk_2802A56E0, &unk_268B3CDF0);
  v19 = *&v9[*(v23 + 48)];
  v20 = [v19 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v21 = sub_268B350F4();
  (*(*(v21 - 8) + 8))(v9, v21);
  (*(v28 + 104))(v27, *MEMORY[0x277D5BC50], v29);
  return sub_268B352E4();
}

void sub_268A899F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  v23 = v21;
  v96 = v24;
  v97 = v25;
  v94 = v26;
  v95 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_74();
  v93 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v33);
  v89[3] = v34;
  OUTLINED_FUNCTION_21();
  v89[4] = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v91 = v37;
  OUTLINED_FUNCTION_9();
  v38 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  v90 = v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_102_4();
  v89[1] = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_33_16(v89);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_4();
  v49 = OUTLINED_FUNCTION_106_2();
  v50(v49);
  v51 = *(v22 + 56);
  v98 = v20;
  *(v20 + v51) = v29;
  v52 = qword_2802A4F30;
  v53 = v29;
  if (v52 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v54 = __swift_project_value_buffer(v38, qword_2802CDA10);
  v55 = v40;
  v57 = *(v40 + 16);
  v56 = v40 + 16;
  v89[0] = v57;
  v57(v21, v54, v38);
  v58 = sub_268B37A34();
  v59 = sub_268B37F04();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_14();
    *v60 = 0;
    _os_log_impl(&dword_2688BB000, v58, v59, "SiriPlaybackControlsOutputProvider.summaryViewOutput...", v60, 2u);
    v23 = v21;
    OUTLINED_FUNCTION_12();
  }

  v61 = *(v55 + 8);
  v92 = v55 + 8;
  v61(v21, v38);
  v62 = v23;
  OUTLINED_FUNCTION_27_13((v23 + 16));
  if (sub_268B36FA4())
  {
    v63 = v91;
    sub_2688C053C(v94, v91, &qword_2802A57F0, &qword_268B3DDB0);
    OUTLINED_FUNCTION_82_3();
    sub_2688C053C(v64, v65, v66, v67);
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_74_5();
    v69 = (v68 + v56 + 8) & ~v68;
    v70 = swift_allocObject();
    sub_268954254(v63, v61 + v70, &qword_2802A57F0, &qword_268B3DDB0);
    *(v70 + v56) = v95;
    sub_268954254(v21, v70 + v69, &unk_2802A56E0, &unk_268B3CDF0);
    *(v70 + ((v46 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
    v71 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v93, v72, v73, v71);
    OUTLINED_FUNCTION_10_18();
    v74 = swift_allocObject();
    v74[2] = 0;
    v74[3] = 0;
    v74[4] = &unk_268B49D70;
    v74[5] = v70;
    v75 = v97;
    v74[6] = v96;
    v74[7] = v75;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v76 = v98;
    v77 = &unk_2802A56E0;
    v78 = &unk_268B3CDF0;
  }

  else
  {
    v79 = v90;
    (v89[0])(v90, v54, v38);
    v80 = sub_268B37A34();
    v81 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v81))
    {
      v82 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v82);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v83, v84, "SiriPlaybackControlsOutputProvider.summaryViewOutput creating summaryViewOutput");
      OUTLINED_FUNCTION_83_0();
    }

    v61(v79, v38);
    OUTLINED_FUNCTION_14_20((v62 + 56));
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v85, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    v86 = v98;
    sub_268B34EE4();
    sub_2689A7CD8(&v99, &unk_2802A5800, &unk_268B3CE10);
    v87 = OUTLINED_FUNCTION_36_10();
    v88(v87);
    sub_2689A7CD8(v86, &unk_2802A56E0, &unk_268B3CDF0);
    v77 = &unk_2802A57C0;
    v78 = &qword_268B3BE00;
    v76 = &v100;
  }

  sub_2689A7CD8(v76, v77, v78);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A89FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v5[8] = swift_task_alloc();
  sub_268B34DA4();
  v5[9] = swift_task_alloc();
  v6 = sub_268B35374();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_268B367A4();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_268B37A54();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8A1C4, 0, 0);
}

uint64_t sub_268A8A1C4()
{
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = *(v0 + 136);
  __swift_project_value_buffer(*(v0 + 128), qword_2802CDA10);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_54_5();
  v4(v5);
  v6 = sub_268B37A34();
  v7 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v7))
  {
    v42 = v4;
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v40 = *(v0 + 104);
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5(v8);

      sub_268B36784();
      v9 = OUTLINED_FUNCTION_13_18();
      v10(v9, v40);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    v41 = *(v0 + 152);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v14 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v14, v15, v16);
    OUTLINED_FUNCTION_48_9();

    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v17, v18, "SiriPlaybackControlsOutputProvider.summaryViewOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v2 = *(v12 + 8);
    v2(v41, v13);
    v4 = v42;
  }

  else
  {

    v11 = OUTLINED_FUNCTION_50_8();
    (v2)(v11);
  }

  OUTLINED_FUNCTION_96_4();
  v43 = *(v0 + 40);
  v44 = *(v0 + 24);
  sub_268B34D84();
  v19 = swift_task_alloc();
  *(v19 + 16) = v44;
  *(v19 + 32) = v43;
  OUTLINED_FUNCTION_34_11();

  v20 = OUTLINED_FUNCTION_54_5();
  v4(v20);
  v21 = sub_268B37A34();
  v22 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v22))
  {
    v23 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v23);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v24, v25, "SiriPlaybackControlsOutputProvider.summaryViewOutput creating summaryViewOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v26 = *(v0 + 64);

  v27 = OUTLINED_FUNCTION_70_7();
  (v2)(v27);
  v28 = sub_268B35094();
  OUTLINED_FUNCTION_245(v28);
  *(v0 + 160) = sub_268B35084();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v30 = OUTLINED_FUNCTION_29_6(v29);
  *(v0 + 168) = v30;
  *(v30 + 16) = xmmword_268B3BBA0;
  v31 = OUTLINED_FUNCTION_74_2();
  sub_2688C053C(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_11_13();
  (*(v35 + 8))(v26);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v45 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  *(v0 + 176) = v37;
  *v37 = v38;
  v37[1] = sub_268A8A524;
  OUTLINED_FUNCTION_26_15();

  return v45();
}

uint64_t sub_268A8A524()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268A8A640()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_277();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_268A8A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v21 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_268B367A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v15 - 8);
  sub_2688C053C(a2, &v21 - v16, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();

  sub_268B35334();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    (*(v12 + 32))(v14, v10, v11);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_2689A7CD8(v10, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(v23, v7, &unk_2802A56E0, &unk_268B3CDF0);
  v17 = *&v7[*(v22 + 48)];
  v18 = [v17 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v19 = sub_268B350F4();
  (*(*(v19 - 8) + 8))(v7, v19);
  __swift_project_boxed_opaque_existential_1((v24 + 56), *(v24 + 80));
  result = sub_268B34C84();
  if (result)
  {
    return sub_268B35364();
  }

  return result;
}

void sub_268A8AA80()
{
  OUTLINED_FUNCTION_26();
  v60 = v3;
  v59 = v4;
  v57 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v56 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v55 = v15;
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v54 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_105_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_79(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_4();
  (*(v25 + 16))(v1, v9);
  v58 = v1;
  *(v1 + *(v2 + 56)) = v7;
  v26 = qword_2802A4F30;
  v27 = v7;
  if (v26 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v28 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v29 = v18 + 16;
  v30 = *(v18 + 16);
  v30(v0, v28, v16);
  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v33);
    _os_log_impl(&dword_2688BB000, v31, v32, "SiriPlaybackControlsOutputProvider.errorOutput...", v26, 2u);
    OUTLINED_FUNCTION_83_0();
  }

  v36 = *(v18 + 8);
  v34 = v18 + 8;
  v35 = v36;
  v36(v0, v16);
  OUTLINED_FUNCTION_27_13((v0 + 16));
  if (sub_268B36FA4())
  {
    sub_2688C053C(v57, v55, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C053C(v58, v53, &unk_2802A56E0, &unk_268B3CDF0);
    OUTLINED_FUNCTION_83_5();
    OUTLINED_FUNCTION_74_5();
    OUTLINED_FUNCTION_99_4();
    v37 = swift_allocObject();
    sub_268954254(v55, v37 + v34, &qword_2802A57F0, &qword_268B3DDB0);
    sub_268954254(v53, v37 + v29, &unk_2802A56E0, &unk_268B3CDF0);
    v38 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v56, v39, v40, v38);
    OUTLINED_FUNCTION_10_18();
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = &unk_268B49D58;
    v41[5] = v37;
    v41[6] = v59;
    v41[7] = v60;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v42 = OUTLINED_FUNCTION_13_13();
    v44 = &unk_268B3CDF0;
  }

  else
  {
    v30(v54, v28, v16);
    v45 = sub_268B37A34();
    v46 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v46))
    {
      v47 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v47);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v48, v49, "SiriPlaybackControlsOutputProvider.errorOutput creating errorOutput");
      OUTLINED_FUNCTION_83_0();
    }

    v35(v54, v16);
    OUTLINED_FUNCTION_14_20((v0 + 56));
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v50, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_85_5();
    sub_268B34F44();
    sub_2689A7CD8(&v61, &unk_2802A5800, &unk_268B3CE10);
    v51 = OUTLINED_FUNCTION_36_10();
    v52(v51);
    sub_2689A7CD8(v58, &unk_2802A56E0, &unk_268B3CDF0);
    v43 = &unk_2802A57C0;
    v44 = &qword_268B3BE00;
    v42 = &v62;
  }

  sub_2689A7CD8(v42, v43, v44);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A8AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v3[6] = swift_task_alloc();
  sub_268B34DA4();
  v3[7] = swift_task_alloc();
  v4 = sub_268B35374();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_268B367A4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_268B37A54();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8B1E8, 0, 0);
}

uint64_t sub_268A8B1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_107_3();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = *(v16 + 120);
  __swift_project_value_buffer(*(v16 + 112), qword_2802CDA10);
  v20 = *(v19 + 16);
  v21 = OUTLINED_FUNCTION_54_5();
  v20(v21);
  v22 = sub_268B37A34();
  v23 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v23))
  {
    a10 = v20;
    OUTLINED_FUNCTION_172_0();
    a13 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v63 = *(v16 + 88);
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5(v24);

      sub_268B36784();
      v25 = OUTLINED_FUNCTION_13_18();
      v26(v25, v63);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    a9 = *(v16 + 136);
    v29 = *(v16 + 112);
    v28 = *(v16 + 120);
    v30 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v30, v31, v32);
    OUTLINED_FUNCTION_48_9();

    *(v17 + 4) = v18;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v33, v34, "SiriPlaybackControlsOutputProvider.errorOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v18 = *(v28 + 8);
    v18(a9, v29);
    v20 = a10;
  }

  else
  {

    v27 = OUTLINED_FUNCTION_50_8();
    (v18)(v27);
  }

  OUTLINED_FUNCTION_100_3();
  v64 = *(v16 + 24);
  sub_268B34D74();
  *(swift_task_alloc() + 16) = v64;
  OUTLINED_FUNCTION_34_11();

  v35 = OUTLINED_FUNCTION_54_5();
  v20(v35);
  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v37))
  {
    v38 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v38);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v39, v40, "SiriPlaybackControlsOutputProvider.errorOutput returning errorOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v41 = *(v16 + 48);

  v42 = OUTLINED_FUNCTION_70_7();
  (v18)(v42);
  v43 = sub_268B35094();
  OUTLINED_FUNCTION_245(v43);
  *(v16 + 144) = sub_268B35084();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v45 = OUTLINED_FUNCTION_29_6(v44);
  *(v16 + 152) = v45;
  *(v45 + 16) = xmmword_268B3BBA0;
  v46 = OUTLINED_FUNCTION_74_2();
  sub_2688C053C(v46, v47, v48, v49);
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_11_13();
  (*(v50 + 8))(v41);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  *&v64 = v51;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  *(v16 + 160) = v52;
  *v52 = v53;
  v52[1] = sub_268A8B524;
  OUTLINED_FUNCTION_26_15();
  OUTLINED_FUNCTION_108_2();

  return v57(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, v64, *(&v64 + 1), a13, a14, a15, a16);
}

uint64_t sub_268A8B524()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268A8B640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v19);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_268B367A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2688C053C(a2, &v19 - v14, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();
  sub_268B35344();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_2689A7CD8(v8, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(v20, v5, &unk_2802A56E0, &unk_268B3CDF0);
  v15 = *&v5[*(v19 + 48)];
  v16 = [v15 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v17 = sub_268B350F4();
  return (*(*(v17 - 8) + 8))(v5, v17);
}

void sub_268A8B990()
{
  OUTLINED_FUNCTION_26();
  v50 = v2;
  v49 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v48 = v10;
  OUTLINED_FUNCTION_9();
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v47 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52_10();
  v46 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_4();
  (*(v21 + 16))(v1, v7);
  *(v1 + *(v18 + 56)) = v5;
  v22 = qword_2802A4F30;
  v23 = v5;
  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v24 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v25 = *(v13 + 16);
  v25(v0, v24, v11);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (OUTLINED_FUNCTION_53_6(v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v18, "SiriPlaybackControlsOutputProvider#errorOutput...", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v13 + 8);
  v29(v0, v11);
  OUTLINED_FUNCTION_27_13((v0 + 16));
  if (sub_268B36FA4())
  {
    sub_2688C053C(v1, v46, &unk_2802A56E0, &unk_268B3CDF0);
    OUTLINED_FUNCTION_83_5();
    v30 = swift_allocObject();
    sub_268954254(v46, v30 + v13 + 16, &unk_2802A56E0, &unk_268B3CDF0);
    v31 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v48, v32, v33, v31);
    OUTLINED_FUNCTION_10_18();
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = &unk_268B49D40;
    v34[5] = v30;
    v34[6] = v49;
    v34[7] = v50;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v35 = v1;
    v36 = &unk_2802A56E0;
    v37 = &unk_268B3CDF0;
  }

  else
  {
    v25(v47, v24, v11);
    v38 = sub_268B37A34();
    v39 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v39))
    {
      v40 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v40);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v41, v42, "SiriPlaybackControlsOutputProvider.cancelOutput creating cancel output");
      OUTLINED_FUNCTION_83_0();
    }

    v29(v47, v11);
    OUTLINED_FUNCTION_14_20((v0 + 56));
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v43, MEMORY[0x277D5C1D8]);
    sub_268B34F14();
    sub_2689A7CD8(&v51, &unk_2802A5800, &unk_268B3CE10);
    v44 = OUTLINED_FUNCTION_36_10();
    v45(v44);
    sub_2689A7CD8(v1, &unk_2802A56E0, &unk_268B3CDF0);
    v36 = &unk_2802A57C0;
    v37 = &qword_268B3BE00;
    v35 = &v52;
  }

  sub_2689A7CD8(v35, v36, v37);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A8BE4C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v2[5] = swift_task_alloc();
  sub_268B34DA4();
  v2[6] = swift_task_alloc();
  v3 = sub_268B35374();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_268B367A4();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_268B37A54();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8C02C, 0, 0);
}

uint64_t sub_268A8C02C()
{
  v33 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v0[13], qword_2802CDA10);
  v1 = OUTLINED_FUNCTION_11_27();
  v2(v1);
  v3 = sub_268B37A34();
  v4 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_183_0(v4))
  {
    v5 = OUTLINED_FUNCTION_172_0();
    v6 = OUTLINED_FUNCTION_173_0();
    v32 = v6;
    *v5 = 136315138;
    sub_268B36754();
    if (sub_268B36734())
    {
      sub_268B36714();
      OUTLINED_FUNCTION_98_2();

      sub_268B36B14();

      v7 = sub_268B36784();
      v9 = v8;
      v10 = OUTLINED_FUNCTION_51_6();
      v11(v10);
    }

    else
    {
      v9 = 0xE400000000000000;
      v7 = 1701736270;
    }

    sub_26892CDB8(v7, v9, &v32);
    OUTLINED_FUNCTION_98_2();

    *(v5 + 4) = v7;
    OUTLINED_FUNCTION_93_6(&dword_2688BB000, v15, v4, "SiriPlaybackControlsOutputProvider.cancelOutput with responseMode = %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_83_0();

    v16 = OUTLINED_FUNCTION_51_6();
    v17(v16);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  v18 = v0[5];
  v19 = v0[3];
  sub_268B34D94();
  *(swift_task_alloc() + 16) = v19;
  sub_268B352C4();

  v20 = sub_268B35094();
  OUTLINED_FUNCTION_245(v20);
  v0[16] = sub_268B35084();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v22 = OUTLINED_FUNCTION_29_6(v21);
  v0[17] = v22;
  *(v22 + 16) = xmmword_268B3BBA0;
  OUTLINED_FUNCTION_112_2(v22, v23, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_11_13();
  (*(v24 + 8))(v18);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v31 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[18] = v26;
  *v26 = v27;
  v26[1] = sub_268A8C340;
  v28 = v0[9];
  v29 = v0[2];

  return v31(v29, v22, v28);
}

uint64_t sub_268A8C340()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268A8C45C()
{
  OUTLINED_FUNCTION_127();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_17_24();

  return v1();
}

uint64_t sub_268A8C50C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_268B367A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_2689A7CD8(v8, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(a2, v5, &unk_2802A56E0, &unk_268B3CDF0);
  v13 = *&v5[*(v3 + 48)];
  v14 = [v13 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v15 = sub_268B350F4();
  return (*(*(v15 - 8) + 8))(v5, v15);
}

void sub_268A8C7D4()
{
  OUTLINED_FUNCTION_26();
  v54 = v1;
  v55 = v0;
  v52 = v2;
  v53 = v3;
  v51 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v49 = v7;
  OUTLINED_FUNCTION_9();
  v50 = sub_268B350F4();
  OUTLINED_FUNCTION_1();
  v48 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v47 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v46 = v13;
  OUTLINED_FUNCTION_9();
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v21 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v22 = *(v16 + 16);
  v22(v0, v21, v14);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "SiriPlaybackControlsOutputProvider.emptyOutput...", v25, 2u);
    OUTLINED_FUNCTION_12();
  }

  v26 = *(v16 + 8);
  (v26)(v0, v14);
  __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
  OUTLINED_FUNCTION_70_1();
  if (sub_268B36FA4())
  {
    v27 = swift_allocObject();
    v28 = v52;
    *(v27 + 16) = v51;
    *(v27 + 24) = v28;
    v29 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v46, v30, v31, v29);
    OUTLINED_FUNCTION_10_18();
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = &unk_268B49D28;
    v32[5] = v27;
    v33 = v54;
    v32[6] = v53;
    v32[7] = v33;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();
  }

  else
  {
    v22(v20, v21, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37F04();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "SiriPlaybackControlsOutputProvider.emptyOutput creating errorOutput", v36, 2u);
      OUTLINED_FUNCTION_20_2();
    }

    v37 = OUTLINED_FUNCTION_106_2();
    v26(v37);

    v38 = v47;
    sub_268B350A4();
    OUTLINED_FUNCTION_27_13(v55 + 7);
    sub_268B34CA4();
    v39 = sub_268B35044();
    v40 = v49;
    OUTLINED_FUNCTION_4_7(v49, v41, v42, v39);
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v43, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    sub_268B34F44();
    sub_2689A7CD8(&v56, &unk_2802A5800, &unk_268B3CE10);
    sub_2689A7CD8(v40, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v48 + 8))(v38, v50);
    v44 = OUTLINED_FUNCTION_36_10();
    v45(v44);
    sub_2689A7CD8(&v57, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A8CCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_268B34DA4();
  v3[5] = swift_task_alloc();
  v4 = sub_268B35374();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_268B367A4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_268B37A54();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8CE60, 0, 0);
}

uint64_t sub_268A8CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_107_3();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v16[12], qword_2802CDA10);
  v19 = OUTLINED_FUNCTION_78_6();
  v65 = v21;
  v66 = v20;
  (v21)(v19);
  v22 = sub_268B37A34();
  v23 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v23))
  {
    OUTLINED_FUNCTION_172_0();
    a13 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v64 = v16[9];
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5(v24);

      sub_268B36784();
      v25 = OUTLINED_FUNCTION_13_18();
      v26(v25, v64);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    a10 = v16[15];
    v29 = v16[12];
    v28 = v16[13];
    v30 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v30, v31, v32);
    OUTLINED_FUNCTION_48_9();

    *(v17 + 4) = v18;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v33, v34, "SiriPlaybackControlsOutputProvider.emptyOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v18 = *(v28 + 8);
    v18(a10, v29);
  }

  else
  {

    v27 = OUTLINED_FUNCTION_50_8();
    (v18)(v27);
  }

  v35 = v16[14];
  v36 = v16[12];
  v37 = v16[4];
  v38 = v16[3];
  sub_268B34D44();
  v39 = swift_task_alloc();
  *(v39 + 16) = v38;
  *(v39 + 24) = v37;
  OUTLINED_FUNCTION_34_11();

  v65(v35, v66, v36);
  v40 = sub_268B37A34();
  v41 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v41))
  {
    v42 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v42);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v43, v44, "SiriPlaybackControlsOutputProvider.emptyOutput returning errorOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v45 = v16[14];
  v46 = v16[12];

  v18(v45, v46);
  v47 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v16[16] = v47;
  v48 = sub_268B37BC4();
  [v47 setCatId_];

  v49 = sub_268B35094();
  OUTLINED_FUNCTION_245(v49);
  v16[17] = sub_268B35084();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v51 = OUTLINED_FUNCTION_29_6(v50);
  v16[18] = v51;
  *(v51 + 16) = xmmword_268B3BBA0;
  *(v51 + 32) = v47;
  v67 = *MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50];
  v52 = v47;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v16[19] = v53;
  *v53 = v54;
  v53[1] = sub_268A8D1BC;
  OUTLINED_FUNCTION_26_15();
  OUTLINED_FUNCTION_108_2();

  return v58(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, v65, v67, a13, a14, a15, a16);
}

uint64_t sub_268A8D1BC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268A8D2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();

  v11 = OUTLINED_FUNCTION_70_1();
  v12(v11);

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_164();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_268A8D384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_268B367A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_2689A7CD8(v5, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();

  return sub_268B352F4();
}

void *sub_268A8D570()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  return v0;
}

uint64_t sub_268A8D5A0()
{
  sub_268A8D570();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_268A8D730()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268A8D768()
{
  OUTLINED_FUNCTION_17_11();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_33(v2);
  *v3 = v4;
  v3[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_26_15();

  return sub_268A8CCAC(v5, v6, v1);
}

uint64_t sub_268A8D804()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_164();

  return sub_2688DB8EC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_268A8D898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v7 + 8))(v1 + v4);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_268A8D974()
{
  OUTLINED_FUNCTION_17_11();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_33(v6);
  *v7 = v8;
  v7[1] = sub_268A8FF78;

  return sub_268A8BE4C(v2, v0 + v5);
}

uint64_t sub_268A8DA50()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_164();

  return sub_2688DB8EC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_268A8DADC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_268A8DBC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 80);
  v8 = sub_268B35044();
  if (!OUTLINED_FUNCTION_68_6(v8))
  {
    OUTLINED_FUNCTION_70();
    v9 = OUTLINED_FUNCTION_89_5();
    v10(v9);
  }

  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v11 + 8))(v0 + ((v3 + v5 + v7) & ~v7));
  OUTLINED_FUNCTION_113_1();
  v12 = OUTLINED_FUNCTION_79_6();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_268A8DD34()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_66_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_44(v2);
  *v3 = v4;
  v3[1] = sub_268A8FF78;
  v5 = OUTLINED_FUNCTION_67_4();

  return sub_268A8AFF8(v5, v6, v7);
}

uint64_t sub_268A8DE70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v8 = *(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_268B35044();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v11))
  {
    OUTLINED_FUNCTION_70();
    (*(v12 + 8))(v0 + v4, v11);
  }

  v13 = (((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v14 + 8))(v0 + v13);
  OUTLINED_FUNCTION_113_1();

  return MEMORY[0x2821FE8E8](v0, ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v8 | 7);
}

uint64_t sub_268A8E020()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_44(v2);
  *v3 = v4;
  v3[1] = sub_268A8DADC;
  OUTLINED_FUNCTION_67_4();
  OUTLINED_FUNCTION_277();

  return sub_268A89FD0(v5, v6, v7, v8, v9);
}

uint64_t sub_268A8E1A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 80);
  v8 = sub_268B35044();
  if (!OUTLINED_FUNCTION_68_6(v8))
  {
    OUTLINED_FUNCTION_70();
    v9 = OUTLINED_FUNCTION_89_5();
    v10(v9);
  }

  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v11 + 8))(v0 + ((v5 + v3 + v7 + 2) & ~v7));
  OUTLINED_FUNCTION_113_1();
  v12 = OUTLINED_FUNCTION_79_6();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_268A8E310()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_44(v2);
  *v3 = v4;
  v3[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_67_4();
  OUTLINED_FUNCTION_277();

  return sub_268A88ECC(v5, v6, v7, v8, v9);
}

uint64_t sub_268A8E470(void *a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v70 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = v59 - v7;
  v75 = sub_268B34714();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_268B37474();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_268B37434();
  v12 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B376A4();
  v78[3] = v15;
  v78[4] = MEMORY[0x277D5F928];
  v78[0] = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  if (sub_268B34D24() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_268B34CB4()))
  {
LABEL_3:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_4;
  }

  v67 = __swift_project_boxed_opaque_existential_1(v78, v15);
  v18 = *MEMORY[0x277D5F850];
  v64 = *(v12 + 104);
  v65 = (v12 + 104);
  v64(v14, v18, v77);
  v19 = v76;
  v20 = *(v76 + 104);
  v21 = v11;
  v62 = *MEMORY[0x277D5F8A8];
  v22 = v14;
  v23 = v11;
  v24 = v15;
  v25 = v74;
  v63 = v76 + 104;
  v61 = v20;
  v20(v21);
  v26 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_268B34C94();
  v66 = v24;
  v59[1] = sub_268B376E4();
  v28 = v27;
  v29 = *(v73 + 8);
  v68 = v9;
  v60 = v29;
  v29(v9, v75);
  v30 = *(v19 + 8);
  v76 = v19 + 8;
  v30(v23, v25);
  v31 = *(v12 + 8);
  v73 = v12 + 8;
  v31(v22, v77);
  if (v28)
  {
    v59[0] = v28;
    v64(v22, *MEMORY[0x277D5F840], v77);
    v65 = v30;
    v32 = v74;
    v61(v23, v62, v74);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v33 = v68;
    sub_268B34C94();
    sub_268B376E4();
    v34 = v31;
    v36 = v35;
    v60(v33, v75);
    v65(v23, v32);
    v34(v22, v77);
    if (v36)
    {
      type metadata accessor for DirectInvocationHelper();
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v37 = sub_268B34D34();
      sub_268A696EC();
      v39 = v38;

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v40 = sub_268B34D34();
      sub_268A696EC();
      v42 = v41;

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      if (sub_268B34CF4())
      {
        sub_268A60E20();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        if (sub_268B34D04())
        {
          sub_268A610D8();
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          if ((sub_268B34CC4() & 1) == 0)
          {
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            if ((sub_268B34CD4() & 1) == 0)
            {
              __swift_project_boxed_opaque_existential_1(a1, a1[3]);
              if ((sub_268B34CE4() & 1) == 0)
              {

                if (qword_2802A4F30 != -1)
                {
                  swift_once();
                }

                v52 = v72;
                v53 = __swift_project_value_buffer(v72, qword_2802CDA10);
                v54 = v71;
                v55 = v69;
                (*(v71 + 16))(v69, v53, v52);
                v56 = sub_268B37A34();
                v57 = sub_268B37EE4();
                if (os_log_type_enabled(v56, v57))
                {
                  v58 = swift_slowAlloc();
                  *v58 = 0;
                  _os_log_impl(&dword_2688BB000, v56, v57, "Unexpected device type, returning empty views", v58, 2u);
                  MEMORY[0x26D6266E0](v58, -1, -1);
                }

                (*(v54 + 8))(v55, v52);
                goto LABEL_3;
              }
            }
          }

          sub_268A61424();
        }
      }

      v16 = v43;

      goto LABEL_4;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v44 = v72;
  v45 = __swift_project_value_buffer(v72, qword_2802CDA10);
  v47 = v70;
  v46 = v71;
  (*(v71 + 16))(v70, v45, v44);
  v48 = sub_268B37A34();
  v49 = sub_268B37EE4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2688BB000, v48, v49, "Failed to localize labels for confirmation dialog.", v50, 2u);
    MEMORY[0x26D6266E0](v50, -1, -1);
  }

  (*(v46 + 8))(v47, v44);
  sub_2688C2ECC();
  v16 = swift_allocError();
  *v51 = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  return v16;
}

uint64_t sub_268A8EDD4()
{
  v2 = sub_268B36A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = v6 + *(v7 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_102_4();
  v10 = *(v9 + 80);
  v11 = (v8 + v10) & ~v10;
  v13 = *(v12 + 64);
  v24 = sub_268B35374();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v11 + v13 + v18) & ~v18;
  v23 = *(v17 + 64);
  v20 = v5 | v18 | v10;

  (*(v4 + 8))(v0 + v6, v2);
  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v21 + 8))(v0 + v11);

  (*(v15 + 8))(v0 + v19, v24);

  return MEMORY[0x2821FE8E8](v0, v19 + v23, v20 | 7);
}

uint64_t sub_268A8EFB8()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v0 = sub_268B36A54();
  OUTLINED_FUNCTION_19_0(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v1);
  v2 = sub_268B35374();
  OUTLINED_FUNCTION_22(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_44(v3);
  *v4 = v5;
  v4[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_26_15();
  OUTLINED_FUNCTION_277();

  return sub_268A8828C(v6, v7, v8, v9, v10);
}

uint64_t sub_268A8F13C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_268B35374();
  OUTLINED_FUNCTION_1();

  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v4 + 8))(v1 + v3);

  v5 = OUTLINED_FUNCTION_89_5();
  v6(v5);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_268A8F28C()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v0);
  v1 = sub_268B35374();
  OUTLINED_FUNCTION_22(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_44(v2);
  *v3 = v4;
  v3[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_26_15();

  return sub_268A87E30(v5, v6, v7, v8);
}

unint64_t sub_268A8F3C4()
{
  result = qword_2802A6470;
  if (!qword_2802A6470)
  {
    sub_268B36A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6470);
  }

  return result;
}

uint64_t sub_268A8F41C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 80);
  v8 = sub_268B35044();
  if (!OUTLINED_FUNCTION_68_6(v8))
  {
    OUTLINED_FUNCTION_70();
    v9 = OUTLINED_FUNCTION_89_5();
    v10(v9);
  }

  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v11 + 8))(v0 + ((((((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 9) & ~v7));
  OUTLINED_FUNCTION_113_1();
  v12 = OUTLINED_FUNCTION_79_6();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_268A8F5AC()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_66_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_44(v2);
  *v3 = v4;
  v3[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_67_4();
  OUTLINED_FUNCTION_164();

  return sub_268A86014(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_268A8F724()
{
  OUTLINED_FUNCTION_26();
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v6 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);

  v7 = OUTLINED_FUNCTION_89_5();
  v8(v7);

  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v9 + 8))(v1 + v6);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_268A8F8A0(uint64_t (*a1)(char *, uint64_t, uint64_t))
{
  v3 = sub_268B35044();
  OUTLINED_FUNCTION_19_0(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v7 + *(v10 + 80) + 9) & ~*(v10 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + v7);
  v16 = *(v1 + v7 + 8);
  v17 = (v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  v19 = v17[1];

  return sub_268A841E0(a1, v14, v1 + v5, v15, v16, v1 + v13, v18, v19);
}

uint64_t sub_268A8F9BC()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_268A8FA20()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_268A8FA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetModelContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A8FAE4()
{
  v1 = *(type metadata accessor for SnippetModelContext(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(v1 + 64);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 80);
  v20 = *(v6 + 64);
  v7 = sub_268B35374();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v10 = *(v8 + 80);
  v22 = *(v11 + 64);
  v12 = sub_268B36A54();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v12))
  {
    OUTLINED_FUNCTION_70();
    v13 = OUTLINED_FUNCTION_70_1();
    v14(v13);
  }

  v15 = v2 | v5 | v10;
  v16 = (v3 + v21 + v5) & ~v5;
  v17 = (v16 + v20 + v10) & ~v10;

  sub_268B350F4();
  OUTLINED_FUNCTION_11_13();
  (*(v18 + 8))(v0 + v16);

  (*(v9 + 8))(v0 + v17, v7);

  return MEMORY[0x2821FE8E8](v0, v17 + v22, v15 | 7);
}

uint64_t sub_268A8FD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetModelContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A8FD88()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v0 = type metadata accessor for SnippetModelContext(0);
  OUTLINED_FUNCTION_19_0(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v1);
  v2 = sub_268B35374();
  OUTLINED_FUNCTION_22(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_44(v3);
  *v4 = v5;
  v4[1] = sub_268A8FF78;
  v6 = OUTLINED_FUNCTION_67_4();

  return sub_268A85084(v6, v7, v8, v9);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

double OUTLINED_FUNCTION_23_18()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_15()
{
  *(v1 + 32) = *(v0 + *(v2 + 48));

  return sub_268B350F4();
}

void OUTLINED_FUNCTION_31_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return sub_268B352C4();
}

void OUTLINED_FUNCTION_37_14()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_47_7()
{
  *(v1 + 32) = *(v0 + *(v2 + 48));

  return sub_268B350F4();
}

BOOL OUTLINED_FUNCTION_53_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_68_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_69_6()
{

  return sub_268B350F4();
}

uint64_t *OUTLINED_FUNCTION_92_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 136));
}

void OUTLINED_FUNCTION_93_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_94_5(uint64_t a1)
{

  return sub_268B36B14();
}

uint64_t OUTLINED_FUNCTION_95_5(float a1)
{
  *v1 = a1;

  return sub_268B36754();
}

uint64_t OUTLINED_FUNCTION_110_0()
{

  return sub_268B350F4();
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2688C053C(v5, v4, a3, a4);
}

void OUTLINED_FUNCTION_113_1()
{
  v3 = *(v1 + *(v0 + 48));
}

uint64_t sub_268A90410(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_268B37A34();
  v15 = sub_268B37ED4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31[1] = a3;
    v17 = a4;
    v18 = a5;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "SetShuffleStateDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v16, 2u);
    v20 = v19;
    a5 = v18;
    a4 = v17;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_268AE2278(v21);
  v23 = v22;

  v24 = [a1 shuffleState];
  v25 = sub_268B35244();
  sub_268AE23DC(v25);
  v27 = v26;

  if (v27)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  if (v24 == 1)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = v28;
  }

  sub_268AB8B7C(v23, v29, a4, a5);
}

void sub_268A906A8()
{
  type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268A90794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A90844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A908F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A9098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A90A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268A90ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_268A90BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_268A90DAC(uint64_t a1, uint64_t a2)
{
  result = sub_268A90E04(&qword_2802A7C88, a2, type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy, &unk_268B49EF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A90E04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A90E50(uint64_t a1, uint64_t a2)
{
  v3 = sub_268B372B4();
  sub_26892E170(0xD00000000000002DLL, 0x8000000268B5C130, v3);
  v5 = v4;

  if (v5)
  {
    goto LABEL_6;
  }

  sub_268B36E84();
  if (!v6)
  {
    goto LABEL_6;
  }

  type metadata accessor for DeviceSelectingUtil();
  sub_268901DA4(a1);
  v8 = v7;
  OUTLINED_FUNCTION_0_44();
  v9 = sub_268B38404();
  MEMORY[0x26D625650](v9);

  MEMORY[0x26D625650](8236, 0xE200000000000000);

  OUTLINED_FUNCTION_0_44();
  sub_268B38404();

  v10 = OUTLINED_FUNCTION_0_44();
  MEMORY[0x26D625650](v10);

  MEMORY[0x26D625650](41, 0xE100000000000000);

  if ((v8 & 1) == 0)
  {

LABEL_6:
    v11 = 0;
    return v11 & 1;
  }

  sub_26895EF2C();
  v11 = sub_268B380C4();

  return v11 & 1;
}

id sub_268A91044(unsigned __int8 *a1)
{
  sub_268A92380(a1);
  sub_268A926D8(a1, v1);
  sub_268A92AB0(a1);
  v3 = a1[2];
  if (v3 != 2)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = sub_268B38444();

    if (v5)
    {
      goto LABEL_8;
    }
  }

  v4 = a1[1];
  switch(a1[1])
  {
    case 2u:
      goto LABEL_6;
    case 4u:
      goto LABEL_9;
    default:
      v6 = sub_268B38444();

      if (v6)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v3 == 2)
      {
        break;
      }

      if (v3)
      {
LABEL_12:

LABEL_16:
        v7 = 3;
        goto LABEL_17;
      }

      v8 = sub_268B38444();

      if (v8)
      {
        goto LABEL_16;
      }

      break;
  }

  switch(v4)
  {
    case 3:
      goto LABEL_12;
    case 4:
      goto LABEL_24;
    default:
      v9 = sub_268B38444();

      if (v9)
      {
        goto LABEL_16;
      }

      if (!v4)
      {

        goto LABEL_34;
      }

      v16 = sub_268B38444();

      if (v16)
      {
LABEL_34:
        v7 = 4;
        goto LABEL_17;
      }

LABEL_24:
      v17 = a1[*(type metadata accessor for MediaPlayerIntent(0) + 48)];
      if (v17 == 26)
      {
        goto LABEL_25;
      }

      if (sub_268942D54(v17) == 1735290739 && v19 == 0xE400000000000000)
      {
      }

      else
      {
        v21 = sub_268B38444();

        if ((v21 & 1) == 0)
        {
LABEL_25:
          v18 = *a1;
          if (v18 == 24)
          {
LABEL_26:
            v7 = 0;
            goto LABEL_17;
          }

          if (sub_26893E3F8(v18) != 0x746165706572 || v22 != 0xE600000000000000)
          {
            OUTLINED_FUNCTION_4_38();
            v24 = sub_268B38444();

            if ((v24 & 1) == 0)
            {
              goto LABEL_26;
            }

LABEL_8:
            v7 = 1;
            goto LABEL_17;
          }

LABEL_6:

          goto LABEL_8;
        }
      }

      v7 = 2;
LABEL_17:
      [v1 setRepeatState_];
      v10 = type metadata accessor for MediaPlayerIntent(0);
      v11 = 0;
      v12 = 0;
      v13 = a1[*(v10 + 48)];
      if (v13 != 26)
      {
        v11 = sub_268942D54(v13);
      }

      v14 = sub_268A7528C(v11, v12);

      return [v1 setMediaType_];
  }
}

void sub_268A9140C(uint64_t a1, void *a2)
{
  v3 = sub_268B37CE4();

  [a2 setZoneNames_];
}

id sub_268A91478(uint64_t a1)
{
  sub_268B378F4();
  OUTLINED_FUNCTION_1_15();
  v117 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_22(v8, v109);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v109 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  v109 = v18 - v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v112 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v113 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v115 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_80_1();
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_16(v28, v29, v30, v31, v32, v33, v34, v35, v109);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x28223BE20](v37);
  v38 = objc_allocWithZone(OUTLINED_FUNCTION_28_18());
  v39 = sub_268B37BC4();
  v40 = [v38 initWithIdentifier:0 displayString:v39];

  v41 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_14_21();
  if (v43)
  {
    v3 = *(v42 + 40);
    v44 = v40;

    v45 = sub_268B37BC4();
  }

  else
  {
    v46 = v40;
    v45 = 0;
  }

  v114 = v12;
  OUTLINED_FUNCTION_29_14(v46, sel_setRoomName_);

  sub_268A9140C(v47, v40);

  OUTLINED_FUNCTION_14_21();
  if (v49 || (OUTLINED_FUNCTION_14_21(), v51))
  {
    v3 = *(v48 + 32);

    v52 = OUTLINED_FUNCTION_31_17();
  }

  else
  {
    v52 = 0;
  }

  OUTLINED_FUNCTION_29_14(v50, sel_setName_);

  sub_2688F1FA4(a1 + *(v41 + 96), v2, &qword_2802A58F0, &unk_268B3BEC0);
  v53 = sub_268B37034();
  v54 = OUTLINED_FUNCTION_32_11(v53);
  if (v3 == 1)
  {
    sub_2688C058C(v2, &qword_2802A58F0, &unk_268B3BEC0);
    v55 = 0;
  }

  else
  {
    sub_268B37014();
    OUTLINED_FUNCTION_18_17();
    (*(v56 + 8))(v2, v52);
    v55 = OUTLINED_FUNCTION_31_17();
  }

  v57 = v118;
  [v54 setType_];
  v116 = v54;

  v110 = *(v41 + 100);
  OUTLINED_FUNCTION_13_19(a1 + v110, v57);
  v58 = OUTLINED_FUNCTION_12_23();
  v59(v58);
  OUTLINED_FUNCTION_2_33(v4);
  OUTLINED_FUNCTION_13_19(v54, v15);
  OUTLINED_FUNCTION_13_19(v4, v57 + v15);
  OUTLINED_FUNCTION_124(v15);
  if (v61)
  {
    OUTLINED_FUNCTION_5_26();
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_124(v57 + v15);
    if (v61)
    {
      sub_2688C058C(v15, &qword_2802A5908, &qword_268B3D920);
LABEL_29:
      OUTLINED_FUNCTION_7_29();
      sub_2688C063C();
      v89 = OUTLINED_FUNCTION_201_0();
      v67 = v116;
      [v116 setCurrentRoom_];
LABEL_32:

      return v67;
    }

    goto LABEL_18;
  }

  v60 = v115;
  sub_2688F1FA4(v15, v115, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_124(v57 + v15);
  if (v61)
  {
    v57 = v60;
    OUTLINED_FUNCTION_5_26();
    sub_2688C058C(v118, &qword_2802A5908, &qword_268B3D920);
    v62 = OUTLINED_FUNCTION_22_17();
    v63(v62);
LABEL_18:
    sub_2688C058C(v15, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_23_19();
  v72 = OUTLINED_FUNCTION_9_24();
  v73(v72);
  OUTLINED_FUNCTION_0_45();
  v76 = sub_268A92DF0(v74, v75, MEMORY[0x277D5F9E0]);
  OUTLINED_FUNCTION_17_25(v60, v77, v78, v76);
  v79 = OUTLINED_FUNCTION_19_17();
  (v41)(v79);
  v57 = &qword_268B3D920;
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v80, v81, v82);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v83, v84, v85);
  (v41)(v115, v1);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v86, v87, v88);
  if (v54)
  {
    goto LABEL_29;
  }

LABEL_19:
  v64 = v113;
  OUTLINED_FUNCTION_13_19(a1 + v110, v113);
  OUTLINED_FUNCTION_7_29();
  v65 = v112;
  v111(v112, *MEMORY[0x277D5F9C0], v1);
  OUTLINED_FUNCTION_2_33(v65);
  v66 = v114;
  OUTLINED_FUNCTION_13_19(v64, v114);
  OUTLINED_FUNCTION_13_19(v65, v57 + v66);
  OUTLINED_FUNCTION_124(v66);
  if (v61)
  {
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_5_26();
    OUTLINED_FUNCTION_124(v57 + v66);
    if (v61)
    {
      sub_2688C058C(v66, &qword_2802A5908, &qword_268B3D920);
      v67 = v116;
LABEL_31:
      sub_2688C063C();
      v89 = OUTLINED_FUNCTION_201_0();
      [v67 setCurrentHome_];
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v68 = v109;
  sub_2688F1FA4(v66, v109, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_124(v57 + v66);
  if (v69)
  {
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_5_26();
    v70 = OUTLINED_FUNCTION_31_15();
    v71(v70);
LABEL_27:
    sub_2688C058C(v66, &qword_2802A5900, &unk_268B3BED0);
    return v116;
  }

  OUTLINED_FUNCTION_23_19();
  v90 = OUTLINED_FUNCTION_9_24();
  v91(v90);
  OUTLINED_FUNCTION_0_45();
  v94 = sub_268A92DF0(v92, v93, MEMORY[0x277D5F9E0]);
  OUTLINED_FUNCTION_17_25(v68, v95, v96, v94);
  v97 = OUTLINED_FUNCTION_21_16();
  v15(v97);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v98, v99, v100);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v101, v102, v103);
  v104 = OUTLINED_FUNCTION_31_15();
  v15(v104);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v105, v106, v107);
  v67 = v116;
  if (&qword_2802A5908)
  {
    goto LABEL_31;
  }

  return v67;
}

id sub_268A91BFC(uint64_t a1)
{
  sub_268B378F4();
  OUTLINED_FUNCTION_1_15();
  v117 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_22(v8, v109);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v109 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  v109 = v18 - v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v112 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v113 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v115 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_80_1();
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_16(v28, v29, v30, v31, v32, v33, v34, v35, v109);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x28223BE20](v37);
  v38 = objc_allocWithZone(OUTLINED_FUNCTION_28_18());
  v39 = sub_268B37BC4();
  v40 = [v38 initWithIdentifier:0 displayString:v39];

  v41 = type metadata accessor for MediaIntent(0);
  OUTLINED_FUNCTION_14_21();
  if (v43)
  {
    v3 = *(v42 + 40);
    v44 = v40;

    v45 = sub_268B37BC4();
  }

  else
  {
    v46 = v40;
    v45 = 0;
  }

  v114 = v12;
  OUTLINED_FUNCTION_29_14(v46, sel_setRoomName_);

  sub_268A9140C(v47, v40);

  OUTLINED_FUNCTION_14_21();
  if (v49 || (OUTLINED_FUNCTION_14_21(), v51))
  {
    v3 = *(v48 + 32);

    v52 = OUTLINED_FUNCTION_31_17();
  }

  else
  {
    v52 = 0;
  }

  OUTLINED_FUNCTION_29_14(v50, sel_setName_);

  sub_2688F1FA4(a1 + *(v41 + 80), v2, &qword_2802A58F0, &unk_268B3BEC0);
  v53 = sub_268B37034();
  v54 = OUTLINED_FUNCTION_32_11(v53);
  if (v3 == 1)
  {
    sub_2688C058C(v2, &qword_2802A58F0, &unk_268B3BEC0);
    v55 = 0;
  }

  else
  {
    sub_268B37014();
    OUTLINED_FUNCTION_18_17();
    (*(v56 + 8))(v2, v52);
    v55 = OUTLINED_FUNCTION_31_17();
  }

  v57 = v118;
  [v54 setType_];
  v116 = v54;

  v110 = *(v41 + 84);
  OUTLINED_FUNCTION_13_19(a1 + v110, v57);
  v58 = OUTLINED_FUNCTION_12_23();
  v59(v58);
  OUTLINED_FUNCTION_2_33(v4);
  OUTLINED_FUNCTION_13_19(v54, v15);
  OUTLINED_FUNCTION_13_19(v4, v57 + v15);
  OUTLINED_FUNCTION_124(v15);
  if (v61)
  {
    OUTLINED_FUNCTION_5_26();
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_124(v57 + v15);
    if (v61)
    {
      sub_2688C058C(v15, &qword_2802A5908, &qword_268B3D920);
LABEL_29:
      OUTLINED_FUNCTION_6_35();
      sub_2688C063C();
      v89 = OUTLINED_FUNCTION_201_0();
      v67 = v116;
      [v116 setCurrentRoom_];
LABEL_32:

      return v67;
    }

    goto LABEL_18;
  }

  v60 = v115;
  sub_2688F1FA4(v15, v115, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_124(v57 + v15);
  if (v61)
  {
    v57 = v60;
    OUTLINED_FUNCTION_5_26();
    sub_2688C058C(v118, &qword_2802A5908, &qword_268B3D920);
    v62 = OUTLINED_FUNCTION_22_17();
    v63(v62);
LABEL_18:
    sub_2688C058C(v15, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_23_19();
  v72 = OUTLINED_FUNCTION_9_24();
  v73(v72);
  OUTLINED_FUNCTION_0_45();
  v76 = sub_268A92DF0(v74, v75, MEMORY[0x277D5F9E0]);
  OUTLINED_FUNCTION_17_25(v60, v77, v78, v76);
  v79 = OUTLINED_FUNCTION_19_17();
  (v41)(v79);
  v57 = &qword_268B3D920;
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v80, v81, v82);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v83, v84, v85);
  (v41)(v115, v1);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v86, v87, v88);
  if (v54)
  {
    goto LABEL_29;
  }

LABEL_19:
  v64 = v113;
  OUTLINED_FUNCTION_13_19(a1 + v110, v113);
  OUTLINED_FUNCTION_6_35();
  v65 = v112;
  v111(v112, *MEMORY[0x277D5F9C0], v1);
  OUTLINED_FUNCTION_2_33(v65);
  v66 = v114;
  OUTLINED_FUNCTION_13_19(v64, v114);
  OUTLINED_FUNCTION_13_19(v65, v57 + v66);
  OUTLINED_FUNCTION_124(v66);
  if (v61)
  {
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_5_26();
    OUTLINED_FUNCTION_124(v57 + v66);
    if (v61)
    {
      sub_2688C058C(v66, &qword_2802A5908, &qword_268B3D920);
      v67 = v116;
LABEL_31:
      sub_2688C063C();
      v89 = OUTLINED_FUNCTION_201_0();
      [v67 setCurrentHome_];
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v68 = v109;
  sub_2688F1FA4(v66, v109, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_124(v57 + v66);
  if (v69)
  {
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_5_26();
    v70 = OUTLINED_FUNCTION_31_15();
    v71(v70);
LABEL_27:
    sub_2688C058C(v66, &qword_2802A5900, &unk_268B3BED0);
    return v116;
  }

  OUTLINED_FUNCTION_23_19();
  v90 = OUTLINED_FUNCTION_9_24();
  v91(v90);
  OUTLINED_FUNCTION_0_45();
  v94 = sub_268A92DF0(v92, v93, MEMORY[0x277D5F9E0]);
  OUTLINED_FUNCTION_17_25(v68, v95, v96, v94);
  v97 = OUTLINED_FUNCTION_21_16();
  v15(v97);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v98, v99, v100);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v101, v102, v103);
  v104 = OUTLINED_FUNCTION_31_15();
  v15(v104);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v105, v106, v107);
  v67 = v116;
  if (&qword_2802A5908)
  {
    goto LABEL_31;
  }

  return v67;
}

uint64_t sub_268A92380(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MediaPlayerIntent(0);
  v22 = sub_268A92DF0(&qword_2802A56B0, type metadata accessor for MediaPlayerIntent, &unk_268B3E7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_268A92DF0(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent, &unk_268B3E718);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_268B37A34();
    v9 = sub_268B37F04();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2688BB000, v8, v9, "Found home automation nodes, attempting to map them to SiriKit intent", v10, 2u);
      MEMORY[0x26D6266E0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_268B3BBA0;
    v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v12);
    v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    *(v11 + 32) = sub_268A91478(v14);
    v16 = off_287959FD0;
    v17 = type metadata accessor for SetRepeatStateIntent();
    v16(v11, v17, &off_287959FB0);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}