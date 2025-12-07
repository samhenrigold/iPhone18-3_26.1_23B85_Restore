_BYTE *storeEnumTagSinglePayload for SignalChannel(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Channel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Channel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF8F6E70(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF8F6F30()
{
  result = qword_1EBDE8FB0;
  if (!qword_1EBDE8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FB0);
  }

  return result;
}

unint64_t sub_1BF8F6F88()
{
  result = qword_1EBDE8FB8;
  if (!qword_1EBDE8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FB8);
  }

  return result;
}

unint64_t sub_1BF8F6FE0()
{
  result = qword_1EBDE8FC0;
  if (!qword_1EBDE8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FC0);
  }

  return result;
}

unint64_t sub_1BF8F7038()
{
  result = qword_1EDBF4088;
  if (!qword_1EDBF4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4088);
  }

  return result;
}

unint64_t sub_1BF8F7090()
{
  result = qword_1EDBF4090;
  if (!qword_1EDBF4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4090);
  }

  return result;
}

unint64_t sub_1BF8F70E8()
{
  result = qword_1EDBF40B8;
  if (!qword_1EDBF40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40B8);
  }

  return result;
}

unint64_t sub_1BF8F7140()
{
  result = qword_1EDBF40C0;
  if (!qword_1EDBF40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40C0);
  }

  return result;
}

unint64_t sub_1BF8F7198()
{
  result = qword_1EDBF40E8;
  if (!qword_1EDBF40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40E8);
  }

  return result;
}

unint64_t sub_1BF8F71F0()
{
  result = qword_1EDBF40F0;
  if (!qword_1EDBF40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40F0);
  }

  return result;
}

unint64_t sub_1BF8F7248()
{
  result = qword_1EDBF4098;
  if (!qword_1EDBF4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4098);
  }

  return result;
}

unint64_t sub_1BF8F72A0()
{
  result = qword_1EDBF40A0;
  if (!qword_1EDBF40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40A0);
  }

  return result;
}

unint64_t sub_1BF8F72F8()
{
  result = qword_1EDBF40D8;
  if (!qword_1EDBF40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40D8);
  }

  return result;
}

unint64_t sub_1BF8F7350()
{
  result = qword_1EDBF40E0;
  if (!qword_1EDBF40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40E0);
  }

  return result;
}

unint64_t sub_1BF8F73A8()
{
  result = qword_1EDBF40A8;
  if (!qword_1EDBF40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40A8);
  }

  return result;
}

unint64_t sub_1BF8F7400()
{
  result = qword_1EDBF40B0;
  if (!qword_1EDBF40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40B0);
  }

  return result;
}

unint64_t sub_1BF8F7458()
{
  result = qword_1EDBF40F8;
  if (!qword_1EDBF40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40F8);
  }

  return result;
}

unint64_t sub_1BF8F74B0()
{
  result = qword_1EDBF4100;
  if (!qword_1EDBF4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4100);
  }

  return result;
}

unint64_t sub_1BF8F7508()
{
  result = qword_1EDBF40C8;
  if (!qword_1EDBF40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40C8);
  }

  return result;
}

unint64_t sub_1BF8F7560()
{
  result = qword_1EDBF40D0;
  if (!qword_1EDBF40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40D0);
  }

  return result;
}

unint64_t sub_1BF8F75B8()
{
  result = qword_1EDBF4108;
  if (!qword_1EDBF4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4108);
  }

  return result;
}

unint64_t sub_1BF8F7610()
{
  result = qword_1EDBF4110;
  if (!qword_1EDBF4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4110);
  }

  return result;
}

unint64_t sub_1BF8F7664()
{
  result = qword_1EBDE8FC8;
  if (!qword_1EBDE8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FC8);
  }

  return result;
}

unint64_t sub_1BF8F76B8()
{
  result = qword_1EBDE8FD0;
  if (!qword_1EBDE8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FD0);
  }

  return result;
}

uint64_t sub_1BF8F770C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF8F7774(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B54A8();
}

Swift::String __swiftcall DialogIdProvider.getId()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t DialogProvider.description.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1BF9B4B08();
}

void *DefaultDialogProperties.globals.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t DefaultDialogProperties.__allocating_init(params:globals:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DefaultDialogProperties.init(params:globals:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DefaultDialogProperties.deinit()
{

  return v0;
}

uint64_t DefaultDialogProperties.__deallocating_deinit()
{
  DefaultDialogProperties.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t dispatch thunk of DialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BF8F7AF0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BF8F7AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;

  v11 = *(v13 + 8);

  return v11(a1, a2);
}

uint64_t ExperimentId.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BF8F7D14(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8F7DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8F7D14(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8F7DCC(uint64_t a1)
{
  v2 = sub_1BF8F7F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F7E08(uint64_t a1)
{
  v2 = sub_1BF8F7F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExperimentId.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8FD8, &qword_1BF9BAC90);
  OUTLINED_FUNCTION_0_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8F7F70();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_1BF8F7F70()
{
  result = qword_1EBDE8FE0;
  if (!qword_1EBDE8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FE0);
  }

  return result;
}

uint64_t ExperimentId.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8FE8, &qword_1BF9BAC98);
  OUTLINED_FUNCTION_0_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8F7F70();
  sub_1BF9B5868();
  if (!v2)
  {
    v11 = sub_1BF9B5518();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for ExperimentId.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF8F8218()
{
  result = qword_1EBDE8FF0;
  if (!qword_1EBDE8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FF0);
  }

  return result;
}

unint64_t sub_1BF8F8270()
{
  result = qword_1EBDE8FF8;
  if (!qword_1EBDE8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FF8);
  }

  return result;
}

unint64_t sub_1BF8F82C8()
{
  result = qword_1EBDE9000;
  if (!qword_1EBDE9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9000);
  }

  return result;
}

uint64_t static Clocks.getSystemClock()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SystemClock();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F3EF85D8;
  *a1 = result;
  return result;
}

void *static Clocks.getStaticClock(_:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9008, &qword_1BF9BAE60);
  OUTLINED_FUNCTION_1_8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF9B6370;
  *(v4 + 32) = a2;
  v5 = type metadata accessor for StaticClock();
  OUTLINED_FUNCTION_1_8();
  v6 = swift_allocObject();
  result = sub_1BF8F8C58(v4);
  a1[3] = v5;
  a1[4] = &off_1F3EF85C8;
  *a1 = v6;
  return result;
}

void *static Clocks.getStaticClock(timeIntervals:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StaticClock();
  OUTLINED_FUNCTION_1_8();
  v3 = swift_allocObject();

  result = sub_1BF8F8C58(v4);
  a1[3] = v2;
  a1[4] = &off_1F3EF85C8;
  *a1 = v3;
  return result;
}

uint64_t static Clocks.getOffsetClock(clock:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = &type metadata for OffsetClock;
  a4[4] = &off_1F3EF85B8;
  v8 = swift_allocObject();
  *a4 = v8;
  sub_1BF8D2004(a1, v8 + 16);
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
}

uint64_t static Clocks.getMutableClock(bootstrapWith:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  type metadata accessor for MutableClock();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

uint64_t MutableClock.time.setter(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_2_7(v3 + 16, a3);
  *(v3 + 16) = a1;
  return result;
}

uint64_t MovingForwardClock.step.setter(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_2_7(v3 + 24, a3);
  *(v3 + 24) = a1;
  return result;
}

uint64_t MovingForwardClock.__allocating_init(time:step:)(double a1, double a2)
{
  OUTLINED_FUNCTION_1_8();
  v4 = swift_allocObject();
  MovingForwardClock.init(time:step:)(a1, a2);
  return v4;
}

uint64_t MovingForwardClock.init(time:step:)(double a1, double a2)
{
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

Swift::Double __swiftcall MovingForwardClock.getCurrentTime()()
{
  v1 = *(v0 + 32);

  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_beginAccess();
  *(v0 + 16) = v2 + *(v0 + 24);
  [v1 unlock];

  return v2;
}

double sub_1BF8F8898(void *a1, uint64_t a2)
{
  [a1 lock];
  sub_1BF8F8E24(a2, &v6);
  [a1 unlock];

  if (!v2)
  {
    return v6;
  }

  return result;
}

Swift::Void __swiftcall MovingForwardClock.setTime(newTime:)(Swift::Double newTime)
{
  v3 = *(v1 + 32);

  [v3 lock];
  OUTLINED_FUNCTION_2_7(v1 + 16, v4);
  *(v1 + 16) = newTime;
  [v3 unlock];
}

uint64_t MovingForwardClock.__deallocating_deinit()
{
  OUTLINED_FUNCTION_1_8();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

double sub_1BF8F8A0C()
{
  v0 = sub_1BF9B44C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF9B44B8();
  sub_1BF9B4478();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

double sub_1BF8F8B04()
{
  (*(v0 + 40))();
  v2 = v1;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, v3);
  return (*(v4 + 8))(v3, v4) - v2;
}

void *sub_1BF8F8C58(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = 0;
  v1[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  return v1;
}

_BYTE *storeEnumTagSinglePayload for Clocks(_BYTE *result, int a2, int a3)
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

double sub_1BF8F8DDC()
{
  v1 = *(v0 + 32);

  return sub_1BF8F8898(v1, v0);
}

uint64_t sub_1BF8F8E24@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(result + 24);
  v5 = v4 % v3;
  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFADD__(v4, 1);
  v7 = v4 + 1;
  if (!v6)
  {
    v8 = *(v2 + 8 * v5 + 32);
    *(result + 24) = v7;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BF8F8E68()
{

  return v0;
}

uint64_t sub_1BF8F8E90()
{
  sub_1BF8F8E68();
  OUTLINED_FUNCTION_1_8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
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

uint64_t sub_1BF8F8EDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BF8F8F1C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF8F8FAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF904C9C;

  return DialogCallback.getText(dialog:dialogProperties:environment:)();
}

uint64_t sub_1BF8F903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  *v15 = v9;
  v15[1] = sub_1BF8F9100;

  return DialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, v16, a5, a6, v17, v18, a9);
}

uint64_t sub_1BF8F9100()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_5_3();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_121();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  return v5(v4);
}

uint64_t DialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_111(v10);
  v22 = v11 + *v11;
  v12 = swift_task_alloc();
  *(v9 + 16) = v12;
  *v12 = v9;
  v12[1] = sub_1BF904C9C;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_100();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

double DialogCallbacksProvider.getPreambleOverrideCallback(context:deliveryVehicle:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void DialogCallbacksProvider.getPreambleOverrideCallback(context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle;
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v17 = *v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v11 = *(a3 + 32);
  sub_1BF8C0D00(v17, v7, v8, v9, v10);
  v11(a1, &v17, a2, a3);
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v16 = v21;

  sub_1BF8C0CB8(v12, v13, v14, v15, v16);
}

void ViewContext.deliveryVehicle.getter(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle;
  v3 = *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle);
  v4 = *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 8);
  v5 = *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 16);
  v6 = *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  sub_1BF8C0D00(v3, v4, v5, v6, v7);
}

uint64_t sub_1BF8F94E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_contextMap;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ViewContext.__allocating_init(suggestionId:)()
{
  v0 = sub_1BF9B4558();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_17();
  sub_1BF9B4548();
  type metadata accessor for ViewContext(0);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_33();
  ViewContext.init(suggestionId:locale:deliveryVehicle:)();
  return v1;
}

uint64_t ViewContext.__allocating_init(locale:deliveryVehicle:)(uint64_t a1)
{
  v3 = sub_1BF9B4558();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  (*(v5 + 16))(v1, a1, v3);
  type metadata accessor for ViewContext(0);
  v7 = swift_allocObject();
  ViewContext.init(suggestionId:locale:deliveryVehicle:)();
  (*(v5 + 8))(a1, v3);
  return v7;
}

uint64_t ViewContext.__allocating_init(suggestionId:locale:deliveryVehicle:)()
{
  OUTLINED_FUNCTION_104();
  v0 = OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_26();
  ViewContext.init(suggestionId:locale:deliveryVehicle:)();
  return v0;
}

uint64_t ViewContext.init(suggestionId:locale:deliveryVehicle:)()
{
  OUTLINED_FUNCTION_104();
  v6 = *(v5 + 32);
  *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_contextMap) = sub_1BF9B4988();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  v7 = OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_locale;
  sub_1BF9B4558();
  OUTLINED_FUNCTION_13();
  v11 = v0[1];
  v12 = *v0;
  (*(v8 + 32))(v1 + v7, v2);
  v9 = v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle;
  *v9 = v12;
  *(v9 + 16) = v11;
  *(v9 + 32) = v6;
  return v1;
}

uint64_t ViewContext.deinit()
{

  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_locale;
  sub_1BF9B4558();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  sub_1BF8C0CB8(*(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle), *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 8), *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 16), *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 24), *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 32));

  return v0;
}

void Assets.icon.getter(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  OUTLINED_FUNCTION_66_1(v2, v3, v4, v5, *(v1 + 32), a1);
}

void sub_1BF8F9990(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    sub_1BF8F99A4(a1, a2, a3, a4, a5, SBYTE1(a5));
  }
}

void sub_1BF8F99A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      sub_1BF8F9A50(a1, a2);
      break;
    case 1:
      v7 = a5;

      sub_1BF8F9AA8(a3, a4, v7);
      break;
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_1BF8F9A50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BF8F9AA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return OUTLINED_FUNCTION_17_6(a1, a2);
  }

  return a1;
}

void Assets.inAppIcon.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  OUTLINED_FUNCTION_66_1(v2, v3, v4, v5, *(v1 + 72), a1);
}

void Assets.init(icon:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  sub_1BF8F9990(v3, v2, v4, v5, v6);
}

__n128 Assets.init(icon:inAppIcon:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  v6 = *(a2 + 32);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = v6;
  return result;
}

BOOL static Assets.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 16);
  v136 = a1[5];
  v137 = a1[6];
  v138 = a1[7];
  v139 = a1[8];
  v140 = *(a1 + 36);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 16);
  v12 = a2[5];
  v141 = a2[6];
  v134 = a2[7];
  v142 = a2[8];
  v135 = *(a2 + 36);
  if (v6 >> 8 <= 0xFE)
  {
    v148 = *a1;
    v149 = v3;
    v150 = v5;
    v151 = v4;
    v152 = v6;
    if (v11 >> 8 <= 0xFE)
    {
      v133 = v12;
      v143 = v7;
      v144 = v8;
      v145 = v9;
      v146 = v10;
      v147 = v11;
      v49 = OUTLINED_FUNCTION_1_9();
      sub_1BF8F9990(v49, v50, v51, v52, v53);
      OUTLINED_FUNCTION_25_3();
      sub_1BF8F9990(v54, v55, v56, v57, v58);
      v59 = OUTLINED_FUNCTION_1_9();
      sub_1BF8F9990(v59, v60, v61, v62, v63);
      v132 = static Image.== infix(_:_:)(&v148, &v143);
      OUTLINED_FUNCTION_25_3();
      sub_1BF8F9E90(v64, v65, v66, v67, v68, SBYTE1(v11));
      v69 = OUTLINED_FUNCTION_1_9();
      sub_1BF8F9E90(v69, v70, v71, v72, v73, SBYTE1(v6));
      v74 = OUTLINED_FUNCTION_1_9();
      sub_1BF8F9E7C(v74, v75, v76, v77, v78);
      if ((v132 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    v13 = v7;
    v29 = OUTLINED_FUNCTION_1_9();
    sub_1BF8F9990(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_25_3();
    sub_1BF8F9990(v34, v35, v36, v37, v38);
    v39 = OUTLINED_FUNCTION_1_9();
    sub_1BF8F9990(v39, v40, v41, v42, v43);
    v44 = OUTLINED_FUNCTION_1_9();
    sub_1BF8F9E90(v44, v45, v46, v47, v48, SBYTE1(v6));
LABEL_6:
    v148 = v2;
    v149 = v3;
    v150 = v5;
    v151 = v4;
    v152 = v6;
    v153 = v13;
    v154 = v8;
    v155 = v9;
    v156 = v10;
    v157 = v11;
LABEL_14:
    sub_1BF8DFBF0(&v148, &qword_1EBDE9010, &qword_1BF9BAFE0);
    return 0;
  }

  v133 = a2[5];
  v13 = *a2;
  v14 = OUTLINED_FUNCTION_1_9();
  sub_1BF8F9990(v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_25_3();
  sub_1BF8F9990(v19, v20, v21, v22, v23);
  if (v11 >> 8 <= 0xFE)
  {
    goto LABEL_6;
  }

  v24 = OUTLINED_FUNCTION_1_9();
  sub_1BF8F9E7C(v24, v25, v26, v27, v28);
LABEL_8:
  if (v140 >> 8 > 0xFE)
  {
    v79 = v135;
    v81 = v136;
    v80 = v137;
    v82 = OUTLINED_FUNCTION_27_0();
    v84 = v138;
    v83 = v139;
    sub_1BF8F9990(v82, v85, v138, v139, v140);
    v86 = v133;
    v87 = v134;
    v89 = v141;
    v88 = v142;
    sub_1BF8F9990(v133, v141, v134, v142, v135);
    if (v135 >> 8 > 0xFE)
    {
      v90 = OUTLINED_FUNCTION_3_7();
      sub_1BF8F9E7C(v90, v91, v92, v93, v94);
      return 1;
    }

    goto LABEL_13;
  }

  v81 = v136;
  v80 = v137;
  v148 = v136;
  v149 = v137;
  v84 = v138;
  v83 = v139;
  v150 = v138;
  v151 = v139;
  v79 = v135;
  v152 = v140;
  v87 = v134;
  v89 = v141;
  if (v135 >> 8 > 0xFE)
  {
    v95 = OUTLINED_FUNCTION_3_7();
    sub_1BF8F9990(v95, v96, v97, v98, v99);
    v86 = v133;
    v88 = v142;
    sub_1BF8F9990(v133, v141, v134, v142, v135);
    v100 = OUTLINED_FUNCTION_3_7();
    sub_1BF8F9990(v100, v101, v102, v103, v104);
    v105 = OUTLINED_FUNCTION_3_7();
    sub_1BF8F9E90(v105, v106, v107, v108, v109, SBYTE1(v140));
LABEL_13:
    v148 = v81;
    v149 = v80;
    v150 = v84;
    v151 = v83;
    v152 = v140;
    v153 = v86;
    v154 = v89;
    v155 = v87;
    v156 = v88;
    v157 = v79;
    goto LABEL_14;
  }

  v143 = v133;
  v144 = v141;
  v145 = v134;
  v146 = v142;
  v147 = v135;
  v111 = OUTLINED_FUNCTION_3_7();
  sub_1BF8F9990(v111, v112, v113, v114, v115);
  sub_1BF8F9990(v133, v141, v134, v142, v135);
  v116 = OUTLINED_FUNCTION_3_7();
  sub_1BF8F9990(v116, v117, v118, v119, v120);
  v121 = static Image.== infix(_:_:)(&v148, &v143);
  sub_1BF8F9E90(v133, v141, v134, v142, v135, SBYTE1(v135));
  v122 = OUTLINED_FUNCTION_3_7();
  sub_1BF8F9E90(v122, v123, v124, v125, v126, SBYTE1(v140));
  v127 = OUTLINED_FUNCTION_3_7();
  sub_1BF8F9E7C(v127, v128, v129, v130, v131);
  return (v121 & 1) != 0;
}

void sub_1BF8F9E7C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    sub_1BF8F9E90(result, a2, a3, a4, a5, SBYTE1(a5));
  }
}

void sub_1BF8F9E90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      sub_1BF8F9F3C(a1, a2);
      break;
    case 1:
      v7 = a5;

      sub_1BF8F9F94(a3, a4, v7);
      break;
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_1BF8F9F3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BF8F9F94(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF8F9FAC();
  }

  return v3;
}

uint64_t sub_1BF8F9FB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852793705 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F63497070416E69 && a2 == 0xE90000000000006ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF8FA084(char a1)
{
  if (a1)
  {
    return 0x6F63497070416E69;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_1BF8FA0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8F9FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8FA100(uint64_t a1)
{
  v2 = sub_1BF8FAA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FA13C(uint64_t a1)
{
  v2 = sub_1BF8FAA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Assets.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9018, &qword_1BF9BAFE8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_78_1();
  v28 = *(v24 + 8);
  v29 = *(v24 + 16);
  v30 = *(v24 + 24);
  v31 = *(v24 + 32);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v32 = OUTLINED_FUNCTION_106();
  sub_1BF8F9990(v32, v28, v29, v30, v31);
  sub_1BF8FAA2C();
  sub_1BF9B5898();
  sub_1BF8FAA80();
  sub_1BF9B55E8();
  OUTLINED_FUNCTION_116();
  if (!v40)
  {
    OUTLINED_FUNCTION_81_0();
    sub_1BF8F9990(v33, v34, v35, v36, v37);
    sub_1BF9B55E8();
    OUTLINED_FUNCTION_116();
  }

  v38 = OUTLINED_FUNCTION_33();
  v39(v38);
  OUTLINED_FUNCTION_37();
}

void Assets.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9020, &qword_1BF9BAFF0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_77_0();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1BF8FAA2C();
  sub_1BF9B5868();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v32 = v30;
    LOBYTE(v44[0]) = 0;
    sub_1BF8FAAD4();
    OUTLINED_FUNCTION_96(&type metadata for Image, v44);
    v33 = v45;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    a10 = v49;
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_96(&type metadata for Image, &a14);
    v34 = OUTLINED_FUNCTION_22();
    v35(v34);
    v40 = v55;
    v39 = v56;
    v38 = v57;
    v37 = v58;
    v36 = v59;
    v44[0] = v33;
    v44[1] = v41;
    v44[2] = v42;
    v44[3] = v43;
    LOWORD(v44[4]) = a10;
    v44[5] = v55;
    v44[6] = v56;
    v44[7] = v57;
    v44[8] = v58;
    LOWORD(v44[9]) = v59;
    memcpy(v32, v44, 0x4AuLL);
    sub_1BF8FAB28(v44, &v45);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v45 = v33;
    v46 = v41;
    v47 = v42;
    v48 = v43;
    v49 = a10;
    v50 = v40;
    v51 = v39;
    v52 = v38;
    v53 = v37;
    v54 = v36;
    sub_1BF8FAB60(&v45);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t static Image.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 32);
  v13 = *(a2 + 33);
  v139[0] = *a1;
  v139[1] = v2;
  v139[2] = v5;
  v139[3] = v4;
  v134 = v6;
  v140 = v6;
  v141 = v7;
  v142 = v9;
  v143 = v8;
  v144 = v11;
  v145 = v10;
  v146 = v12;
  v147 = v13;
  v14 = v5;
  v15 = v4;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_28;
      }

      if (v3 != v9 || v2 != v8)
      {
        v49 = OUTLINED_FUNCTION_27_0();
        if ((OUTLINED_FUNCTION_95_0(v49, v50) & 1) == 0)
        {
          v111 = OUTLINED_FUNCTION_7_7();
          sub_1BF8F99A4(v111, v112, v113, v114, v115, 1);
          v76 = OUTLINED_FUNCTION_6_7();
          v81 = 1;
          goto LABEL_29;
        }
      }

      if (v134 == 255)
      {
        v96 = OUTLINED_FUNCTION_7_7();
        sub_1BF8F99A4(v96, v97, v98, v99, v100, 1);
        v101 = OUTLINED_FUNCTION_8_4();
        sub_1BF8F99A4(v101, v102, v103, v104, 255, 1);
        v105 = OUTLINED_FUNCTION_42_2();
        sub_1BF8F9AA8(v105, v106, 255);
        v107 = OUTLINED_FUNCTION_26();
        sub_1BF8F9AA8(v107, v108, v12);
        sub_1BF8DFBF0(v139, &qword_1EBDE9028, &qword_1BF9BAFF8);
        if (v12 == 255)
        {
          v109 = OUTLINED_FUNCTION_42_2();
          sub_1BF8F9F94(v109, v110, 255);
          return 1;
        }

        goto LABEL_41;
      }

      v137[0] = v14;
      v137[1] = v15;
      v138 = v134;
      if (v12 == 255)
      {
        OUTLINED_FUNCTION_43_2();
        sub_1BF8F99A4(v116, v117, v118, v119, 255, 1);
        v120 = OUTLINED_FUNCTION_8_4();
        sub_1BF8F99A4(v120, v121, v122, v123, v134, 1);
        v124 = OUTLINED_FUNCTION_42_2();
        sub_1BF8F9AA8(v124, v125, v134);
        v126 = OUTLINED_FUNCTION_26();
        sub_1BF8F9AA8(v126, v127, 255);
        v128 = OUTLINED_FUNCTION_42_2();
        sub_1BF8F9AA8(v128, v129, v134);
        sub_1BF8DFBF0(v139, &qword_1EBDE9028, &qword_1BF9BAFF8);
        OUTLINED_FUNCTION_42_2();
        sub_1BF8F9FAC();
LABEL_41:
        v130 = OUTLINED_FUNCTION_42_2();
        sub_1BF8F9F94(v130, v131, v134);
        v132 = OUTLINED_FUNCTION_26();
        sub_1BF8F9F94(v132, v133, v12);
        return 0;
      }

      v135[0] = v11;
      v135[1] = v10;
      v136 = v12 & 1;
      v51 = 1;
      v52 = OUTLINED_FUNCTION_7_7();
      sub_1BF8F99A4(v52, v53, v54, v55, v56, 1);
      v57 = OUTLINED_FUNCTION_8_4();
      sub_1BF8F99A4(v57, v58, v59, v60, v134, 1);
      v61 = OUTLINED_FUNCTION_42_2();
      sub_1BF8F9AA8(v61, v62, v134);
      v63 = OUTLINED_FUNCTION_26();
      sub_1BF8F9AA8(v63, v64, v12);
      v65 = OUTLINED_FUNCTION_42_2();
      sub_1BF8F9AA8(v65, v66, v134);
      v67 = static Color.== infix(_:_:)(v137, v135);
      sub_1BF8DFBF0(v139, &qword_1EBDE9028, &qword_1BF9BAFF8);
      OUTLINED_FUNCTION_26();
      sub_1BF8F9FAC();
      OUTLINED_FUNCTION_42_2();
      sub_1BF8F9FAC();
      v68 = OUTLINED_FUNCTION_42_2();
      sub_1BF8F9F94(v68, v69, v134);
      if ((v67 & 1) == 0)
      {
        return 0;
      }

      return v51;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_28;
      }

      if (v3 != v9 || v2 != v8)
      {
        v28 = OUTLINED_FUNCTION_95_0(v3, v2);
        v30 = OUTLINED_FUNCTION_7_7();
        sub_1BF8F99A4(v30, v31, v32, v33, v34, 2);
        v35 = OUTLINED_FUNCTION_6_7();
        v40 = 2;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_43_2();
      sub_1BF8F99A4(v82, v83, v84, v85, v12, 2);
      v86 = OUTLINED_FUNCTION_6_7();
      v91 = 2;
      goto LABEL_35;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_28;
      }

      if (v3 != v9 || v2 != v8)
      {
        v28 = OUTLINED_FUNCTION_95_0(v3, v2);
        v42 = OUTLINED_FUNCTION_7_7();
        sub_1BF8F99A4(v42, v43, v44, v45, v46, 3);
        v35 = OUTLINED_FUNCTION_6_7();
        v40 = 3;
LABEL_16:
        sub_1BF8F99A4(v35, v36, v37, v38, v39, v40);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_43_2();
      sub_1BF8F99A4(v92, v93, v94, v95, v12, 3);
      v86 = OUTLINED_FUNCTION_6_7();
      v91 = 3;
LABEL_35:
      sub_1BF8F99A4(v86, v87, v88, v89, v90, v91);
      sub_1BF8DFBF0(v139, &qword_1EBDE9028, &qword_1BF9BAFF8);
      return 1;
    default:
      if (v13)
      {
LABEL_28:
        v70 = OUTLINED_FUNCTION_7_7();
        sub_1BF8F99A4(v70, v71, v72, v73, v74, v75);
        v76 = OUTLINED_FUNCTION_6_7();
        v81 = v7;
LABEL_29:
        sub_1BF8F99A4(v76, v77, v78, v79, v80, v81);
        sub_1BF8DFBF0(v139, &qword_1EBDE9028, &qword_1BF9BAFF8);
        return 0;
      }

      v16 = OUTLINED_FUNCTION_7_7();
      sub_1BF8F99A4(v16, v17, v18, v19, v20, v21);
      v22 = OUTLINED_FUNCTION_6_7();
      sub_1BF8F99A4(v22, v23, v24, v25, v26, 0);
      v27 = OUTLINED_FUNCTION_27_0();
      v28 = MEMORY[0x1BFB5D740](v27);
LABEL_17:
      sub_1BF8DFBF0(v139, &qword_1EBDE9028, &qword_1BF9BAFF8);
      return v28 & 1;
  }
}

unint64_t sub_1BF8FAA2C()
{
  result = qword_1EDBF47D0;
  if (!qword_1EDBF47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47D0);
  }

  return result;
}

unint64_t sub_1BF8FAA80()
{
  result = qword_1EDBF0968;
  if (!qword_1EDBF0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0968);
  }

  return result;
}

unint64_t sub_1BF8FAAD4()
{
  result = qword_1EDBF4140;
  if (!qword_1EDBF4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4140);
  }

  return result;
}

uint64_t sub_1BF8FAB90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001BF9CB670 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8FAC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4963696870617267 && a2 == 0xEB000000006E6F63)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

        if (v9)
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

uint64_t sub_1BF8FAD84(char a1)
{
  result = 1635017060;
  switch(a1)
  {
    case 1:
      result = 0x6C6F626D7973;
      break;
    case 2:
      result = 0x6E6F6349707061;
      break;
    case 3:
      result = 0x4963696870617267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8FAE04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8FAE8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8FAF30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F43746E6974 && a2 == 0xE900000000000072)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF8FB000(char a1)
{
  if (a1)
  {
    return 0x6F6C6F43746E6974;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1BF8FB038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAB90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8FB064(uint64_t a1)
{
  v2 = sub_1BF8FC27C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB0A0(uint64_t a1)
{
  v2 = sub_1BF8FC27C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FB0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8FB10C(uint64_t a1)
{
  v2 = sub_1BF8FC1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB148(uint64_t a1)
{
  v2 = sub_1BF8FC1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FB188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAE04(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8FB1B4(uint64_t a1)
{
  v2 = sub_1BF8FC378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB1F0(uint64_t a1)
{
  v2 = sub_1BF8FC378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FB230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAE8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8FB25C(uint64_t a1)
{
  v2 = sub_1BF8FC228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB298(uint64_t a1)
{
  v2 = sub_1BF8FC228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FB2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAF30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8FB304(uint64_t a1)
{
  v2 = sub_1BF8FC2D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB340(uint64_t a1)
{
  v2 = sub_1BF8FC2D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Image.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  v76 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9030, &qword_1BF9BB000);
  OUTLINED_FUNCTION_1();
  v70 = v31;
  v71 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_12();
  v69 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9038, &qword_1BF9BB008);
  OUTLINED_FUNCTION_1();
  v65 = v35;
  v66 = v34;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9040, &qword_1BF9BB010);
  OUTLINED_FUNCTION_1();
  v67 = v38;
  v68 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_12();
  v64 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9048, &qword_1BF9BB018);
  OUTLINED_FUNCTION_1();
  v63 = v42;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_105();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9050, &qword_1BF9BB020);
  OUTLINED_FUNCTION_1();
  v74 = v45;
  v75 = v44;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v61 - v47;
  v49 = v25[1];
  v72 = *v25;
  v73 = v49;
  v50 = v25[2];
  v61 = v25[3];
  v62 = v50;
  v80 = *(v25 + 32);
  v51 = *(v25 + 33);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1BF8FC1D4();
  sub_1BF9B5898();
  switch(v51)
  {
    case 1:
      LOBYTE(v77) = 1;
      sub_1BF8FC2D0();
      v55 = v64;
      OUTLINED_FUNCTION_57_2();
      sub_1BF9B5598();
      LOBYTE(v77) = 0;
      v56 = v68;
      v57 = v76;
      sub_1BF9B55F8();
      if (!v57)
      {
        v77 = v62;
        v78 = v61;
        v79 = v80;
        sub_1BF8FC324();
        sub_1BF9B55E8();
      }

      (*(v67 + 8))(v55, v56);
      goto LABEL_9;
    case 2:
      LOBYTE(v77) = 2;
      sub_1BF8FC27C();
      OUTLINED_FUNCTION_57_2();
      sub_1BF9B5598();
      v52 = v66;
      sub_1BF9B55F8();
      (*(v65 + 8))(v24, v52);
LABEL_9:
      v58 = OUTLINED_FUNCTION_26();
      v60(v58, v59);
      goto LABEL_10;
    case 3:
      LOBYTE(v77) = 3;
      sub_1BF8FC228();
      v53 = v69;
      OUTLINED_FUNCTION_115(&type metadata for Image.GraphicIconCodingKeys, &v77);
      v54 = v71;
      sub_1BF9B55F8();
      (*(v70 + 8))(v53, v54);
      goto LABEL_5;
    default:
      LOBYTE(v77) = 0;
      sub_1BF8FC378();
      OUTLINED_FUNCTION_115(&type metadata for Image.DataCodingKeys, &v77);
      v77 = v72;
      v78 = v73;
      sub_1BF8FC3CC();
      sub_1BF9B5638();
      (*(v63 + 8))(v27, v41);
LABEL_5:
      (*(v74 + 8))(v48, v24);
LABEL_10:
      OUTLINED_FUNCTION_37();
      return;
  }
}

void Image.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v109 = v24;
  v27 = v26;
  v104 = v28;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9060, &qword_1BF9BB028);
  OUTLINED_FUNCTION_1();
  v102 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12();
  v106 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9068, &qword_1BF9BB030);
  OUTLINED_FUNCTION_1();
  v99 = v33;
  v100 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v103 = v35;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9070, &qword_1BF9BB038);
  OUTLINED_FUNCTION_1();
  v101 = v36;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_105();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9078, &qword_1BF9BB040);
  OUTLINED_FUNCTION_1();
  v98 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v92 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9080, &unk_1BF9BB048);
  OUTLINED_FUNCTION_1();
  v45 = v44;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_78_1();
  v47 = v27[3];
  v108 = v27;
  __swift_project_boxed_opaque_existential_1(v27, v47);
  sub_1BF8FC1D4();
  v48 = v109;
  sub_1BF9B5868();
  if (v48)
  {
    goto LABEL_9;
  }

  v95 = v38;
  v96 = v42;
  v97 = v25;
  v49 = v107;
  v109 = v45;
  v50 = v23;
  sub_1BF9B5568();
  sub_1BF8D21BC();
  if (v52 == v53 >> 1)
  {
LABEL_8:
    sub_1BF9B5308();
    swift_allocError();
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400);
    *v62 = &type metadata for Image;
    v63 = sub_1BF9B54B8();
    OUTLINED_FUNCTION_36_0(v63);
    OUTLINED_FUNCTION_11();
    (*(v64 + 104))(v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v109 + 8))(v50, v43);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v108);
LABEL_10:
    OUTLINED_FUNCTION_37();
    return;
  }

  if (v52 < (v53 >> 1))
  {
    v93 = *(v51 + v52);
    v54 = sub_1BF8D21AC();
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v94 = v54;
    if (v56 == v58 >> 1)
    {
      v59 = v104;
      switch(v93)
      {
        case 1:
          LOBYTE(v110) = 1;
          sub_1BF8FC2D0();
          OUTLINED_FUNCTION_46_1(&type metadata for Image.SymbolCodingKeys, &v110);
          LOBYTE(v110) = 0;
          v86 = sub_1BF9B5518();
          v85 = v87;
          OUTLINED_FUNCTION_81_0();
          sub_1BF902398();
          sub_1BF9B5508();
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_108();
          v89(v88);
          v90 = OUTLINED_FUNCTION_54_4();
          v91(v90);
          v73 = v110;
          v84 = v111;
          goto LABEL_15;
        case 2:
          LOBYTE(v110) = 2;
          sub_1BF8FC27C();
          OUTLINED_FUNCTION_46_1(&type metadata for Image.AppIconCodingKeys, &v110);
          v65 = v100;
          v67 = sub_1BF9B5518();
          v85 = v68;
          swift_unknownObjectRelease();
          v69 = OUTLINED_FUNCTION_58_1();
          v70(v69, v65);
          v71 = OUTLINED_FUNCTION_24_3();
          v72(v71);
          v84 = 0;
          v73 = 0uLL;
          v74 = v108;
          v86 = v67;
          goto LABEL_16;
        case 3:
          v66 = v49;
          LOBYTE(v110) = 3;
          sub_1BF8FC228();
          OUTLINED_FUNCTION_46_1(&type metadata for Image.GraphicIconCodingKeys, &v110);
          v86 = sub_1BF9B5518();
          v85 = v75;
          swift_unknownObjectRelease();
          v76 = OUTLINED_FUNCTION_58_1();
          v77(v76, v66);
          v78 = OUTLINED_FUNCTION_54_4();
          v79(v78);
          v84 = 0;
          goto LABEL_14;
        default:
          LOBYTE(v110) = 0;
          sub_1BF8FC378();
          OUTLINED_FUNCTION_46_1(&type metadata for Image.DataCodingKeys, &v110);
          sub_1BF9023EC();
          v60 = v95;
          sub_1BF9B5558();
          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_58_1();
          v81(v80, v60);
          v82 = OUTLINED_FUNCTION_54_4();
          v83(v82);
          v84 = 0;
          v85 = *(&v110 + 1);
          v86 = v110;
LABEL_14:
          v73 = 0uLL;
LABEL_15:
          v74 = v108;
LABEL_16:
          *v59 = v86;
          *(v59 + 8) = v85;
          *(v59 + 16) = v73;
          *(v59 + 32) = v84;
          *(v59 + 33) = v93;
          __swift_destroy_boxed_opaque_existential_1(v74);
          break;
      }

      goto LABEL_10;
    }

    v50 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static Color.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v18 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1BF9B56D8();
        v20 = OUTLINED_FUNCTION_69_1();
        v22 = OUTLINED_FUNCTION_26_4(v20, v21);
        OUTLINED_FUNCTION_26_4(v22, v23);
        sub_1BF8F9FAC();
        OUTLINED_FUNCTION_69_1();
        goto LABEL_16;
      }

      v28 = OUTLINED_FUNCTION_26_4(v18, v2);
      OUTLINED_FUNCTION_26_4(v28, v29);
      sub_1BF8F9FAC();
      OUTLINED_FUNCTION_33();
      sub_1BF8F9FAC();
      return 1;
    }

LABEL_9:
    v12 = OUTLINED_FUNCTION_69_1();
    v14 = OUTLINED_FUNCTION_26_4(v12, v13);
    OUTLINED_FUNCTION_26_4(v14, v15);
    sub_1BF8F9FAC();
    OUTLINED_FUNCTION_69_1();
    sub_1BF8F9FAC();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v16 = 1;
    v24 = OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_17_6(v24, v25);
    v26 = OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_17_6(v26, v27);
    OUTLINED_FUNCTION_20_5();
    sub_1BF8F9FAC();
    OUTLINED_FUNCTION_20_5();
    sub_1BF8F9FAC();
    return v16;
  }

  OUTLINED_FUNCTION_33();
  v7 = sub_1BF9B56D8();
  v8 = OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_17_6(v8, v9);
  v10 = OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_17_6(v10, v11);
  OUTLINED_FUNCTION_20_5();
  sub_1BF8F9FAC();
  OUTLINED_FUNCTION_69_1();
LABEL_16:
  sub_1BF8F9FAC();
  return v7 & 1;
}

unint64_t sub_1BF8FC1D4()
{
  result = qword_1EDBF4ED8;
  if (!qword_1EDBF4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4ED8);
  }

  return result;
}

unint64_t sub_1BF8FC228()
{
  result = qword_1EDBF4148;
  if (!qword_1EDBF4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4148);
  }

  return result;
}

unint64_t sub_1BF8FC27C()
{
  result = qword_1EDBF4EA0;
  if (!qword_1EDBF4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EA0);
  }

  return result;
}

unint64_t sub_1BF8FC2D0()
{
  result = qword_1EDBF4150;
  if (!qword_1EDBF4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4150);
  }

  return result;
}

unint64_t sub_1BF8FC324()
{
  result = qword_1EDBF4158[0];
  if (!qword_1EDBF4158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4158);
  }

  return result;
}

unint64_t sub_1BF8FC378()
{
  result = qword_1EBDE9058;
  if (!qword_1EBDE9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9058);
  }

  return result;
}

unint64_t sub_1BF8FC3CC()
{
  result = qword_1EDBF4B10;
  if (!qword_1EDBF4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B10);
  }

  return result;
}

uint64_t sub_1BF8FC420(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1633838962 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF8FC4F0(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 1633838962;
  }
}

uint64_t sub_1BF8FC510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8FC564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FC420(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8FC58C(uint64_t a1)
{
  v2 = sub_1BF902440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FC5C8(uint64_t a1)
{
  v2 = sub_1BF902440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FC608(uint64_t a1)
{
  v2 = sub_1BF902494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FC644(uint64_t a1)
{
  v2 = sub_1BF902494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FC680(uint64_t a1)
{
  v2 = sub_1BF9024E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FC6BC(uint64_t a1)
{
  v2 = sub_1BF9024E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Color.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v53 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9088, &qword_1BF9BB058);
  OUTLINED_FUNCTION_1();
  v49 = v29;
  v50 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12();
  v48 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9090, &qword_1BF9BB060);
  OUTLINED_FUNCTION_1();
  v46 = v33;
  v47 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v46 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9098, &qword_1BF9BB068);
  OUTLINED_FUNCTION_1();
  v39 = v38;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_77_0();
  v41 = *v23;
  v51 = v23[1];
  v52 = v41;
  v42 = *(v23 + 16);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1BF902440();
  sub_1BF9B5898();
  if (v42)
  {
    OUTLINED_FUNCTION_81_0();
    sub_1BF902494();
    v43 = v48;
    sub_1BF9B5598();
    v44 = v50;
    sub_1BF9B55F8();
    (*(v49 + 8))(v43, v44);
  }

  else
  {
    sub_1BF9024E8();
    sub_1BF9B5598();
    v45 = v47;
    sub_1BF9B55F8();
    (*(v46 + 8))(v36, v45);
  }

  (*(v39 + 8))(v25, v37);
  OUTLINED_FUNCTION_37();
}

void Color.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v60 = v2;
  v61 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE90B8, &qword_1BF9BB070);
  OUTLINED_FUNCTION_1();
  v57 = v5;
  v58 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE90C0, &qword_1BF9BB078);
  OUTLINED_FUNCTION_1();
  v56 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_77_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE90C8, &qword_1BF9BB080);
  OUTLINED_FUNCTION_1();
  v59 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = OUTLINED_FUNCTION_68();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1BF902440();
  v18 = v61;
  sub_1BF9B5868();
  if (v18)
  {
    goto LABEL_11;
  }

  v54 = v8;
  v55 = v1;
  v61 = v4;
  v19 = v60;
  v20 = sub_1BF9B5568();
  sub_1BF8D0848(v20, 0);
  if (v22 == v23 >> 1)
  {
    goto LABEL_8;
  }

  v53 = 0;
  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    v25 = sub_1BF8D21AC();
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 == v29 >> 1)
    {
      v30 = v24;
      if (v24)
      {
        LODWORD(v56) = v24;
        OUTLINED_FUNCTION_81_0();
        sub_1BF902494();
        OUTLINED_FUNCTION_57_2();
        v31 = v53;
        sub_1BF9B54A8();
        if (!v31)
        {
          v32 = v19;
          v55 = v25;
          v33 = v57;
          v42 = sub_1BF9B5518();
          v44 = v43;
          swift_unknownObjectRelease();
          v45 = OUTLINED_FUNCTION_58_1();
          v46(v45, v33);
          v30 = v56;
LABEL_14:
          v50 = OUTLINED_FUNCTION_26();
          v51(v50);
          *v32 = v42;
          *(v32 + 8) = v44;
          *(v32 + 16) = v30;
          __swift_destroy_boxed_opaque_existential_1(v61);
          goto LABEL_12;
        }
      }

      else
      {
        sub_1BF9024E8();
        OUTLINED_FUNCTION_57_2();
        v38 = v53;
        sub_1BF9B54A8();
        if (!v38)
        {
          v32 = v19;
          v41 = sub_1BF9B5518();
          v44 = v47;
          v58 = v41;
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_103();
          v49(v48);
          v42 = v58;
          goto LABEL_14;
        }
      }

      v39 = OUTLINED_FUNCTION_26();
      v40(v39);
      swift_unknownObjectRelease();
      v4 = v61;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_12:
      OUTLINED_FUNCTION_37();
      return;
    }

LABEL_8:
    sub_1BF9B5308();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400);
    *v35 = &type metadata for Color;
    v36 = sub_1BF9B54B8();
    OUTLINED_FUNCTION_36_0(v36);
    OUTLINED_FUNCTION_11();
    (*(v37 + 104))(v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v59 + 8))(v15, v11);
    v4 = v61;
    goto LABEL_11;
  }

  __break(1u);
}

void ViewCallbacksWrapper.__allocating_init(delegateSpokenDialogCallback:delegateDisplayedDialogCallback:delegateDescriptionDialogCallback:delegateInvocationActionProvider:assetsProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v31 = v2;
  v32 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v7 + 24);
  v29 = *(v7 + 32);
  v30 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  v16 = v6[3];
  v28 = v6[4];
  __swift_mutable_project_boxed_opaque_existential_1(v6, v16);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22 = v4[3];
  v23 = v4[4];
  __swift_mutable_project_boxed_opaque_existential_1(v4, v22);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v26 = OUTLINED_FUNCTION_82_0(v25);
  v27(v26);
  sub_1BF90253C(v14, v20, v30, v31, v1, v32, v9, v22, v16, v29, v23, v28);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_64();
}

void ViewCallbacksWrapper.__allocating_init(delegateSpokenDialogCallback:delegateDisplayedDialogCallback:delegateDescriptionDialogCallback:delegatedPreambleOverrideCallback:delegateInvocationActionProvider:assetsProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v26 = v2;
  v27 = v0;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *(v10 + 24);
  v12 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v13);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v16 = OUTLINED_FUNCTION_22_4(v15);
  v17(v16);
  v19 = v9[3];
  v18 = v9[4];
  __swift_mutable_project_boxed_opaque_existential_1(v9, v19);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21);
  sub_1BF902AA4(v1, v23, v7, v5, v25, v26, v27, v13, v19, v12, v18);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_64();
}

void ViewCallbacksWrapper.__allocating_init(delegateSpokenDialogCallback:delegateDisplayedDialogCallback:delegateDescriptionDialogCallbackProvider:delegatedPreambleOverrideCallbackProvider:delegateInvocationActionProvider:assetsProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v28 = v0;
  v29 = v3;
  v31 = v4;
  v32 = v5;
  v30 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = *(v13 + 24);
  v15 = *(v13 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v16);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = OUTLINED_FUNCTION_5_7(v18, v27);
  v20(v19);
  v21 = v12[3];
  v22 = v12[4];
  __swift_mutable_project_boxed_opaque_existential_1(v12, v21);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v25 = OUTLINED_FUNCTION_82_0(v24);
  v26(v25);
  sub_1BF902E80(v2, v1, v10, v8, v29, v30, v31, v32, v28, v16, v21, v15, v22);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void ViewCallbacksWrapper.init(delegateSpokenDialogCallback:delegateDisplayedDialogCallback:delegateDescriptionDialogCallbackProvider:delegatedPreambleOverrideCallbackProvider:delegateInvocationActionProvider:assetsProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v34 = v0;
  v35 = v2;
  v4 = v3;
  v36 = v5;
  v37 = v6;
  v32 = v7;
  v33 = v8;
  v10 = v9;
  v12 = v11;
  v13 = *(v11 + 24);
  v31 = *(v11 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v13);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  (*(v15 + 16))(v1);
  v16 = v10[3];
  v30 = v10[4];
  __swift_mutable_project_boxed_opaque_existential_1(v10, v16);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22 = *(v4 + 24);
  v23 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v22);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v27 = v26 - v25;
  (*(v28 + 16))(v26 - v25);
  sub_1BF902974(v1, v20, v32, v33, v35, v36, v37, v27, v34, v13, v16, v22, v31, v30, v23);
  v29 = OUTLINED_FUNCTION_106();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t ViewCallbacksWrapper.getInvocationAction(dialogProperties:)()
{
  __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
  v1 = OUTLINED_FUNCTION_68();
  return v2(v1);
}

uint64_t ViewCallbacksWrapper.getAssets(context:suggestion:)()
{
  OUTLINED_FUNCTION_113();
  __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  v1 = OUTLINED_FUNCTION_88();
  return v2(v1);
}

double ViewCallbacksWrapper.getPreambleOverrideCallback(context:deliveryVehicle:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    (*(v2 + 112))();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *ViewCallbacksWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  return v0;
}

uint64_t ViewCallbacksWrapper.__deallocating_deinit()
{
  ViewCallbacksWrapper.deinit();
  OUTLINED_FUNCTION_62_2();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 StaticIconUrlProvider.__allocating_init(icon:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  return result;
}

uint64_t StaticIconUrlProvider.init(icon:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = v2;
  return OUTLINED_FUNCTION_67();
}

void StaticIconUrlProvider.getAssets(context:suggestion:)(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  v7 = OUTLINED_FUNCTION_14_3();
  sub_1BF8F9990(v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_14_3();

  sub_1BF8F9990(v12, v13, v14, v15, v16);
}

uint64_t StaticIconUrlProvider.__deallocating_deinit()
{
  sub_1BF8F9E7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDC0](v0, 50, 7);
}

void *ViewCallbacksWrapper.__allocating_init(dialogId:icon:invocationActionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v18 = *(a3 + 32);
  v7 = type metadata accessor for DialogIdCallback();
  OUTLINED_FUNCTION_55_1();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD000000000000010;
  *(v8 + 64) = 0x80000001BF9BB080;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = 0x6974736567677573;
  *(v8 + 40) = 0xEA00000000006E6FLL;
  *(v8 + 48) = 1;
  OUTLINED_FUNCTION_55_1();
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000010;
  *(v9 + 64) = 0x80000001BF9BB080;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = 0x6974736567677573;
  *(v9 + 40) = 0xEA00000000006E6FLL;
  *(v9 + 48) = 0;
  OUTLINED_FUNCTION_55_1();
  v10 = swift_allocObject();
  v10[7] = 0xD000000000000010;
  v10[8] = 0x80000001BF9BB080;
  v10[2] = a1;
  v10[3] = a2;
  *(OUTLINED_FUNCTION_59_2(v10) + 48) = 0;
  v11 = type metadata accessor for StaticIconUrlProvider();
  v12 = swift_allocObject();
  v13 = *(a3 + 16);
  *(v12 + 16) = *a3;
  *(v12 + 32) = v13;
  *(v12 + 48) = v18;
  OUTLINED_FUNCTION_28_2();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[5] = v7;
  v14[6] = &protocol witness table for DialogIdCallback;
  OUTLINED_FUNCTION_28_2();
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  OUTLINED_FUNCTION_62_2();
  v16 = swift_allocObject();
  v16[5] = v7;
  v16[6] = &protocol witness table for DialogIdCallback;
  v16[2] = v8;
  v16[10] = v7;
  v16[11] = &protocol witness table for DialogIdCallback;
  v16[7] = v9;
  v16[24] = v11;
  v16[25] = &protocol witness table for StaticIconUrlProvider;
  v16[21] = v12;
  v16[12] = sub_1BF904C98;
  v16[13] = v14;
  v16[14] = sub_1BF9031BC;
  v16[15] = v15;
  sub_1BF8C2C9C(a4, (v16 + 16));
  swift_bridgeObjectRetain_n();
  return v16;
}

uint64_t DialogIdCallback.__allocating_init(templateId:sectionId:isSpeakable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_55_1();
  result = swift_allocObject();
  *(result + 56) = 0xD000000000000010;
  *(result + 64) = 0x80000001BF9BB080;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

void ViewCallbacksWrapper.__allocating_init(dialogId:assetsProvider:invocationActionProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v19 = v1;
  v20 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DialogIdCallback();
  OUTLINED_FUNCTION_55_1();
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000010;
  *(v9 + 64) = 0x80000001BF9BB080;
  *(v9 + 16) = v7;
  *(v9 + 24) = v5;
  *(v9 + 32) = 0x6974736567677573;
  *(v9 + 40) = 0xEA00000000006E6FLL;
  *(v9 + 48) = 1;
  OUTLINED_FUNCTION_55_1();
  v10 = swift_allocObject();
  *(v10 + 56) = 0xD000000000000010;
  *(v10 + 64) = 0x80000001BF9BB080;
  *(v10 + 16) = v7;
  *(v10 + 24) = v5;
  *(v10 + 32) = 0x6974736567677573;
  *(v10 + 40) = 0xEA00000000006E6FLL;
  *(v10 + 48) = 0;
  OUTLINED_FUNCTION_55_1();
  v11 = swift_allocObject();
  v11[7] = 0xD000000000000010;
  v11[8] = 0x80000001BF9BB080;
  v11[2] = v7;
  v11[3] = v5;
  v12 = OUTLINED_FUNCTION_59_2(v11);
  *(v12 + 48) = 0;
  v23[3] = v8;
  v23[4] = &protocol witness table for DialogIdCallback;
  v23[0] = v12;
  v14 = v3[3];
  v13 = v3[4];
  __swift_mutable_project_boxed_opaque_existential_1(v3, v14);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v17 = OUTLINED_FUNCTION_22_4(v16);
  v18(v17);
  v21 = v10;
  v22 = v9;
  swift_bridgeObjectRetain_n();
  sub_1BF90253C(&v22, &v21, v23, v19, 0x80000001BF9BB080, v20, v8, v14, v8, &protocol witness table for DialogIdCallback, v13, &protocol witness table for DialogIdCallback);
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createCatViewCallback(dialogId:assetsProvider:invocationActionProvider:)(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = type metadata accessor for ViewCallbacksWrapper();
  sub_1BF8E69C4(a1, v9);
  sub_1BF8E69C4(a2, &v8);

  OUTLINED_FUNCTION_69_1();
  ViewCallbacksWrapper.__allocating_init(dialogId:assetsProvider:invocationActionProvider:)();
  a3[3] = v6;
  a3[4] = &protocol witness table for ViewCallbacksWrapper;
  *a3 = v7;
}

void static ViewCallbacks.createCatViewCallback(dialogId:icon:invocationActionProvider:)(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = type metadata accessor for ViewCallbacksWrapper();
  v16[5] = v5;
  v16[6] = v6;
  v16[7] = v7;
  v16[8] = v8;
  v17 = v9;
  sub_1BF8E69C4(a2, v16);
  v11 = OUTLINED_FUNCTION_42_2();
  v15 = ViewCallbacksWrapper.__allocating_init(dialogId:icon:invocationActionProvider:)(v11, v12, v13, v14);
  a3[3] = v10;
  a3[4] = &protocol witness table for ViewCallbacksWrapper;
  *a3 = v15;

  sub_1BF8F9990(v5, v6, v7, v8, v9);
}

void static ViewCallbacks.createCatViewCallback(dialogId:templateDirectory:assetsProvider:invocationActionProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v34 = v1;
  v36 = v2;
  v4 = v3;
  v38 = v5;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v9 = *(v7 + 16);
  v10 = OUTLINED_FUNCTION_49_1();
  v9(v10);
  v11 = type metadata accessor for TemplateOverrideDialogIdCallback(0);
  v37 = OUTLINED_FUNCTION_67_1(v11);
  v12 = OUTLINED_FUNCTION_50_2();
  sub_1BF900AA8(v12, v13, v14, 0x6974736567677573, 0xEA00000000006E6FLL, 1);
  v15 = OUTLINED_FUNCTION_49_1();
  v9(v15);
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_50_2();
  sub_1BF8FF2BC();
  v35 = v16;
  v17 = OUTLINED_FUNCTION_49_1();
  v9(v17);

  OUTLINED_FUNCTION_50_2();
  sub_1BF8FF2BC();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_49_1();
  v9(v20);

  OUTLINED_FUNCTION_50_2();
  sub_1BF8FF2BC();
  v22 = v21;
  sub_1BF8E69C4(v34, v44);
  sub_1BF8E69C4(v36, v41);
  OUTLINED_FUNCTION_28_2();
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = *(&v44[3] + 8);
  *(v23 + 40) = v0;
  *(v23 + 48) = &off_1F3EF9308;
  OUTLINED_FUNCTION_28_2();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = *(&v44[2] + 8);
  *(v24 + 40) = v0;
  *(v24 + 48) = &off_1F3EF9308;
  v25 = type metadata accessor for ViewCallbacksWrapper();
  OUTLINED_FUNCTION_62_2();
  v26 = swift_allocObject();
  v28 = v42;
  v27 = v43;
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  v31 = OUTLINED_FUNCTION_22_4(v30);
  v32(v31);
  v39 = v35;
  v40 = v37;
  v33 = sub_1BF902974(&v40, &v39, sub_1BF904C98, v23, sub_1BF904C98, v24, v44, v4, v26, v0, v0, v28, &off_1F3EF9308, &off_1F3EF9308, v27);
  __swift_destroy_boxed_opaque_existential_1(v41);
  v38[3] = v25;
  v38[4] = &protocol witness table for ViewCallbacksWrapper;
  *v38 = v33;
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createCatViewCallback(dialogId:templateDirectory:assetsProvider:invocationActionProvider:spokenDialogId:displayedDialogId:descriptionDialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_13_5(v30, v31, v32, v33, v34);
  v35 = OUTLINED_FUNCTION_48_0(a22);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12_5();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v46 = OUTLINED_FUNCTION_53_2(v38, v39, v40, v41, v42, v43, v44, v45, v64);
  v29(v46);
  v47 = v28;
  if (!v28)
  {
    v47 = v72;

    v24 = v73;
  }

  v48 = OUTLINED_FUNCTION_107("preambleOverride");
  v49 = type metadata accessor for TemplateOverrideDialogIdCallback(v48);
  v50 = OUTLINED_FUNCTION_67_1(v49);
  OUTLINED_FUNCTION_56_2(v50);
  sub_1BF900AA8(v26, v69, v27, v24, v47, 1);
  (v29)(v23, v68, v35);
  OUTLINED_FUNCTION_110();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
  sub_1BF8FF2BC();
  (v29)(v23, v68, v35);

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_98();
  (v29)(v23, v68, v35);

  OUTLINED_FUNCTION_68();
  sub_1BF8FF2BC();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_2();
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_52_1(v51);
  *(v52 + 40) = v25;
  *(v52 + 48) = &off_1F3EF9308;
  OUTLINED_FUNCTION_28_2();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_32_3(v53);
  OUTLINED_FUNCTION_62_2();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = OUTLINED_FUNCTION_5_7(v55, v65);
  v57(v56);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_18_5(v58, v59, sub_1BF904C98, v60, sub_1BF904C98, v61, v62, v63, v66, v67, a23, v68, v69, v70, v71);
  __swift_destroy_boxed_opaque_existential_1(v74);
  OUTLINED_FUNCTION_23_5(&protocol witness table for ViewCallbacksWrapper);
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createCatViewCallback(dialogCallback:templateDirectory:assetsProvider:invocationActionProvider:spokenDialogId:displayedDialogId:descriptionDialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_13_5(v30, v31, v32, v33, v34);
  v35 = OUTLINED_FUNCTION_48_0(a22);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12_5();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v46 = OUTLINED_FUNCTION_53_2(v38, v39, v40, v41, v42, v43, v44, v45, v66);
  v29(v46);
  v47 = v28;
  if (!v28)
  {
    v47 = v74;

    v24 = v75;
  }

  v48 = OUTLINED_FUNCTION_107("preambleOverride");
  v49 = type metadata accessor for TemplateOverrideCATTemplatingCallback(v48);
  v50 = OUTLINED_FUNCTION_67_1(v49);
  OUTLINED_FUNCTION_56_2(v50);
  sub_1BF900358(v26, v24, v47, 1, v71, v27);
  (v29)(v23, v70, v35);
  OUTLINED_FUNCTION_110();
  swift_retain_n();

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_117();
  v51 = OUTLINED_FUNCTION_68();
  v29(v51);

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_117();
  v52 = OUTLINED_FUNCTION_68();
  v29(v52);

  sub_1BF8FEB88();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_2();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_52_1(v53);
  *(v54 + 40) = v25;
  *(v54 + 48) = &off_1F3EF92F0;
  OUTLINED_FUNCTION_28_2();
  v55 = swift_allocObject();
  OUTLINED_FUNCTION_32_3(v55);
  OUTLINED_FUNCTION_62_2();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v56);
  v58 = OUTLINED_FUNCTION_5_7(v57, v67);
  v59(v58);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_18_5(v60, v61, sub_1BF904C98, v62, sub_1BF904C98, v63, v64, v65, v68, v69, a23, v70, v71, v72, v73);
  __swift_destroy_boxed_opaque_existential_1(v76);
  OUTLINED_FUNCTION_23_5(&protocol witness table for ViewCallbacksWrapper);
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createCatViewCallback(dialogCallback:templateDirectory:assetsProvider:invocationActionProvider:spokenDialogId:displayedDialogId:descriptionDialogId:preambleOverrideDialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_13_5(v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_44_2(a25);
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12_5();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v59 - v38;
  v40 = *(v35 + 16);
  v41 = OUTLINED_FUNCTION_85_0();
  (v40)(v41);
  v42 = v28;
  if (!v28)
  {
    v42 = v61;

    v25 = v62;
  }

  v43 = type metadata accessor for TemplateOverrideCATTemplatingCallback(0);
  v44 = OUTLINED_FUNCTION_67_1(v43);
  OUTLINED_FUNCTION_56_2(v44);
  sub_1BF900358(v39, v25, v42, 1, v60, v27);
  OUTLINED_FUNCTION_47_2();
  v40();
  OUTLINED_FUNCTION_110();
  swift_retain_n();

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_71_1();
  v62 = v45;
  OUTLINED_FUNCTION_47_2();
  v40();

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_47_2();
  v40();

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_2();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_52_1(v46);
  *(v47 + 40) = v26;
  *(v47 + 48) = &off_1F3EF92F0;
  OUTLINED_FUNCTION_28_2();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_32_3(v48);
  OUTLINED_FUNCTION_62_2();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = OUTLINED_FUNCTION_5_7(v50, v59[0]);
  v52(v51);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_18_5(v53, v54, sub_1BF904C98, v55, sub_1BF904C98, v56, v57, v58, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v60);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  OUTLINED_FUNCTION_23_5(&protocol witness table for ViewCallbacksWrapper);
  OUTLINED_FUNCTION_64();
}

void sub_1BF8FEB88()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  OUTLINED_FUNCTION_76_1();
  v4 = v3;
  v5 = sub_1BF9B4378();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v10 = OUTLINED_FUNCTION_70_1(v9);
  v11(v10);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_47_2();
  sub_1BF900358(v12, v13, v14, 0, v0, v2);
  (*(v7 + 8))(v4, v5);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createBespokeViewCallback(dialogProvider:assetsProvider:invocationActionProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1BF8E69C4(v5, v29);
  OUTLINED_FUNCTION_28_2();
  v9 = swift_allocObject();
  sub_1BF8C2C9C(v29, v9 + 16);
  sub_1BF8E69C4(v6, v29);
  OUTLINED_FUNCTION_28_2();
  v10 = swift_allocObject();
  sub_1BF8C2C9C(v29, v10 + 16);
  sub_1BF8E69C4(v6, v29);
  OUTLINED_FUNCTION_28_2();
  v11 = swift_allocObject();
  sub_1BF8C2C9C(v29, v11 + 16);
  sub_1BF8E69C4(v6, v28);
  OUTLINED_FUNCTION_28_2();
  v12 = swift_allocObject();
  sub_1BF8C2C9C(v28, v12 + 16);
  sub_1BF8E69C4(v2, v27);
  sub_1BF8E69C4(v4, v24);
  v13 = type metadata accessor for ViewCallbacksWrapper();
  OUTLINED_FUNCTION_62_2();
  v14 = swift_allocObject();
  v15 = v25;
  v16 = v26;
  __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v19 = OUTLINED_FUNCTION_22_4(v18);
  v20(v19);
  v23[0] = sub_1BF90322C;
  v23[1] = v9;
  v22[0] = sub_1BF903234;
  v22[1] = v10;
  v21 = sub_1BF902974(v23, v22, sub_1BF90323C, v11, sub_1BF903244, v12, v27, v0, v14, &type metadata for DelegateDialogCallback, &type metadata for DelegateDialogCallback, v15, &off_1F3EF92D8, &off_1F3EF92D8, v16);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v8[3] = v13;
  v8[4] = &protocol witness table for ViewCallbacksWrapper;
  *v8 = v21;
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF8FEEC4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_31_3(a1, a2);
  OUTLINED_FUNCTION_89();
  v2 = OUTLINED_FUNCTION_35_2();
  return v3(v2);
}

uint64_t sub_1BF8FEF04(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_31_3(a1, a2);
  OUTLINED_FUNCTION_89();
  v2 = OUTLINED_FUNCTION_35_2();
  return v3(v2);
}

uint64_t sub_1BF8FEF44(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_31_3(a1, a2);
  OUTLINED_FUNCTION_89();
  v2 = OUTLINED_FUNCTION_35_2();
  return v3(v2);
}

void static ViewCallbacks.createCatViewCallback(dialogId:templateDirectory:assetsProvider:invocationActionProvider:spokenDialogId:displayedDialogId:descriptionDialogId:preambleOverrideDialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_65_0();
  v71 = v25;
  v27 = v26;
  v29 = v28;
  v67 = v31;
  v68 = v30;
  v33 = v32;
  v35 = v34;
  v65 = v36;
  v69 = v37;
  OUTLINED_FUNCTION_44_2(a25);
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_12_5();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v64 - v42;
  v44 = *(v39 + 16);
  v45 = OUTLINED_FUNCTION_85_0();
  (v44)(v45);
  v46 = v27;
  if (!v27)
  {
    v46 = v70;

    v29 = v71;
  }

  v47 = type metadata accessor for TemplateOverrideDialogIdCallback(0);
  v48 = OUTLINED_FUNCTION_67_1(v47);
  OUTLINED_FUNCTION_56_2(v48);
  sub_1BF900AA8(v43, v65, v35, v29, v46, 1);
  OUTLINED_FUNCTION_47_2();
  v44();
  OUTLINED_FUNCTION_110();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_79_0();
  sub_1BF8FF2BC();
  v71 = v49;
  OUTLINED_FUNCTION_47_2();
  v44();

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_98();
  v51 = v50;
  OUTLINED_FUNCTION_47_2();
  v44();

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_2();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v73;
  *(v52 + 40) = v33;
  *(v52 + 48) = &off_1F3EF9308;
  OUTLINED_FUNCTION_28_2();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_32_3(v53);
  OUTLINED_FUNCTION_62_2();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = OUTLINED_FUNCTION_5_7(v55, v64[0]);
  v57(v56);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_18_5(v58, v59, sub_1BF904C98, v60, sub_1BF904C98, v61, v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v65, v66);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  OUTLINED_FUNCTION_23_5(&protocol witness table for ViewCallbacksWrapper);
  OUTLINED_FUNCTION_64();
}

void sub_1BF8FF2BC()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  OUTLINED_FUNCTION_76_1();
  v3 = v2;
  v4 = sub_1BF9B4378();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v9 = OUTLINED_FUNCTION_70_1(v8);
  v10(v9);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_43_2();
  sub_1BF900AA8(v11, v12, v13, v14, v1, 0);
  (*(v6 + 8))(v3, v4);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t CascadingDialogCallback.__allocating_init(sourceDialogCallback:targetDialogCallback:)()
{
  OUTLINED_FUNCTION_113();
  v2 = swift_allocObject();
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_1BF8C2C9C(v0, v2 + 56);
  return v2;
}

uint64_t CascadingDialogCallback.init(sourceDialogCallback:targetDialogCallback:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  sub_1BF8C2C9C(a2, v2 + 56);
  return v2;
}

uint64_t sub_1BF8FF430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1BF9B4288();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8FF4F4, 0, 0);
}

uint64_t sub_1BF8FF4F4()
{
  v39 = v0;
  v0[2] = v0[4];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[3] = v0[5];
  sub_1BF9B4278();
  sub_1BF904C28();
  v4 = sub_1BF9B5178();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = OUTLINED_FUNCTION_33();
    result = sub_1BF8FF974(v8, v9);
    if (!v11)
    {
      __break(1u);
      return result;
    }

    v12 = sub_1BF9B4A68();

    v14 = v0[6];
    v13 = v0[7];
    if (v12)
    {
      v37 = v4;
      v38 = v6;

      MEMORY[0x1BFB5DE90](32, 0xE100000000000000);

      MEMORY[0x1BFB5DE90](v14, v13);

      if (qword_1EDBF0910 != -1)
      {
        OUTLINED_FUNCTION_11_7(&qword_1EDBF0910);
      }

      v15 = sub_1BF9B47C8();
      __swift_project_value_buffer(v15, qword_1EDBF0918);
    }

    else
    {
      v37 = v4;
      v38 = v6;

      MEMORY[0x1BFB5DE90](8238, 0xE200000000000000);

      MEMORY[0x1BFB5DE90](v14, v13);

      if (qword_1EDBF0910 != -1)
      {
        OUTLINED_FUNCTION_11_7(&qword_1EDBF0910);
      }

      v23 = sub_1BF9B47C8();
      __swift_project_value_buffer(v23, qword_1EDBF0918);
      OUTLINED_FUNCTION_106();
    }

    v24 = sub_1BF9B47A8();
    v25 = sub_1BF9B5038();

    if (os_log_type_enabled(v24, v25))
    {
      v35 = v0[6];
      v36 = v0[7];
      v26 = v0[4];
      v27 = v0[5];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315650;
      v30 = OUTLINED_FUNCTION_88();
      *(v28 + 4) = sub_1BF8DE810(v30, v31, v32);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1BF8DE810(v26, v27, &v37);
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_1BF8DE810(v35, v36, &v37);
      _os_log_impl(&dword_1BF8B8000, v24, v25, "CascadingDialogCallback#combined dialog calculated as: %s from source: %s and target: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5F320](v29, -1, -1);
      OUTLINED_FUNCTION_93();
    }
  }

  else
  {

    if (qword_1EDBF0910 != -1)
    {
      OUTLINED_FUNCTION_11_7(&qword_1EDBF0910);
    }

    v16 = sub_1BF9B47C8();
    __swift_project_value_buffer(v16, qword_1EDBF0918);

    v17 = sub_1BF9B47A8();
    v18 = sub_1BF9B5038();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[6];
      v19 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1BF8DE810(v20, v19, &v37);
      _os_log_impl(&dword_1BF8B8000, v17, v18, "CascadingDialogCallback#combined no source dialog determined. Using just target %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB5F320](v22, -1, -1);
      OUTLINED_FUNCTION_93();
    }
  }

  OUTLINED_FUNCTION_121();
  v33 = OUTLINED_FUNCTION_88();

  return v34(v33);
}

uint64_t sub_1BF8FF974(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1BF9B4B68();
  return sub_1BF9B4C38();
}

uint64_t CascadingDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_2_8(sub_1BF8FFA14);
}

uint64_t sub_1BF8FFA14()
{
  OUTLINED_FUNCTION_6();
  __swift_project_boxed_opaque_existential_1((v0[16] + 56), *(v0[16] + 80));
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1BF8FFB20;
  v2 = OUTLINED_FUNCTION_38_3(v0[12]);

  return v3(v2);
}

uint64_t sub_1BF8FFB20()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  *(v3 + 144) = v1;
  *(v3 + 152) = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_77();

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF8FFC48, 0, 0);
  }
}

uint64_t sub_1BF8FFC48()
{
  OUTLINED_FUNCTION_6();
  sub_1BF90324C(*(v0 + 128) + 16, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1BF8C2C9C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_19();
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_1BF8FFDC4;
    v2 = OUTLINED_FUNCTION_38_3(*(v0 + 96));

    return v3(v2);
  }

  else
  {
    sub_1BF8DFBF0(v0 + 56, &qword_1EBDE90D0, &qword_1BF9BB090);
    OUTLINED_FUNCTION_121();

    return v5();
  }
}

uint64_t sub_1BF8FFDC4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  v4[21] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_39_4();
    OUTLINED_FUNCTION_114();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v4[22] = v2;
    v12 = swift_task_alloc();
    v4[23] = v12;
    *v12 = v6;
    v12[1] = sub_1BF8FFF3C;
    OUTLINED_FUNCTION_114();

    return sub_1BF8FF430(v13, v14, v15, v16);
  }
}

uint64_t sub_1BF8FFF3C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;
  *(v5 + 192) = v3;
  *(v5 + 200) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BF900068, 0, 0);
}

uint64_t sub_1BF900068()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_121();

  return v1();
}

uint64_t sub_1BF9000C8()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_77();

  return v1();
}

uint64_t CascadingDialogCallback.deinit()
{
  sub_1BF8DFBF0(v0 + 16, &qword_1EBDE90D0, &qword_1BF9BB090);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t CascadingDialogCallback.__deallocating_deinit()
{
  sub_1BF8DFBF0(v0 + 16, &qword_1EBDE90D0, &qword_1BF9BB090);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1BF9001AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2();
}

uint64_t sub_1BF90026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF904C9C;

  return CascadingDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, a4);
}

uint64_t sub_1BF900358(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_description);
  *v9 = 0xD000000000000025;
  v9[1] = 0x80000001BF9BBAD0;
  v10 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templatingResultCallback);
  *v10 = a5;
  v10[1] = a6;
  v11 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_sectionId);
  *v11 = a2;
  v11[1] = a3;
  v12 = OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templateDirectory;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_13();
  (*(v13 + 32))(v6 + v12, a1);
  *(v6 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_isSpeakable) = a4;
  return v6;
}

uint64_t sub_1BF900418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return OUTLINED_FUNCTION_2_8(sub_1BF900460);
}

uint64_t sub_1BF900460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_51_1();
  v11 = sub_1BF9032BC(&qword_1EBDE9148, 255, type metadata accessor for TemplateOverrideCATTemplatingCallback, &unk_1BF9BC424);
  OUTLINED_FUNCTION_30_3(v11);
  v25 = v10 + *v10;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_112(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_15_9(v13);
  OUTLINED_FUNCTION_100();

  return v21(v15, v16, v17, v18, v19, v20, v21, v22, v25, a10);
}

uint64_t sub_1BF900590()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_114();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF9006DC()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templateDirectory;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_sectionId);

  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templatingResultCallback);

  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_description);

  return v0;
}

uint64_t sub_1BF90077C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1BF9007D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2();
}

uint64_t sub_1BF900898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF904C9C;

  return sub_1BF900418(a1, a2, a3, a4);
}

uint64_t sub_1BF900990()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templatingResultCallback);

  return v1;
}

uint64_t sub_1BF900A10()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_description);

  return v1;
}

uint64_t sub_1BF900AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_description);
  *v9 = 0xD000000000000020;
  v9[1] = 0x80000001BF9BBB10;
  v10 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_templateId);
  *v10 = a2;
  v10[1] = a3;
  v11 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_sectionId);
  *v11 = a4;
  v11[1] = a5;
  v12 = OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_templateDirectory;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_13();
  (*(v13 + 32))(v6 + v12, a1);
  *(v6 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_isSpeakable) = a6;
  return v6;
}

uint64_t sub_1BF900B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return OUTLINED_FUNCTION_2_8(sub_1BF900BB0);
}

uint64_t sub_1BF900BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_51_1();
  v11 = sub_1BF9032BC(&qword_1EDBF0FE0, 255, type metadata accessor for TemplateOverrideDialogIdCallback, &unk_1BF9BC398);
  OUTLINED_FUNCTION_30_3(v11);
  v25 = v10 + *v10;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_112(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_15_9(v13);
  OUTLINED_FUNCTION_100();

  return v21(v15, v16, v17, v18, v19, v20, v21, v22, v25, a10);
}

uint64_t sub_1BF900D00@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  OUTLINED_FUNCTION_13();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

uint64_t sub_1BF900D70()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_templateDirectory;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_templateId);

  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_sectionId);

  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_description);

  return v0;
}

uint64_t sub_1BF900E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2();
}

uint64_t sub_1BF900ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF904C9C;

  return sub_1BF900B68(a1, a2, a3, a4);
}

uint64_t sub_1BF90102C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_description);

  return v1;
}

uint64_t DialogIdCallback.init(templateId:sectionId:isSpeakable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = 0xD000000000000010;
  *(v5 + 64) = 0x80000001BF9BB080;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return OUTLINED_FUNCTION_67();
}

uint64_t DialogIdCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return OUTLINED_FUNCTION_2_8(sub_1BF9010E8);
}

uint64_t sub_1BF9010E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_51_1();
  v12 = sub_1BF9032BC(&qword_1EBDE90D8, v11, type metadata accessor for DialogIdCallback, &protocol conformance descriptor for DialogIdCallback);
  OUTLINED_FUNCTION_30_3(v12);
  v26 = v10 + *v10;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_112(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_15_9(v14);
  OUTLINED_FUNCTION_100();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, v26, a10);
}

uint64_t sub_1BF901214()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_114();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF901340()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_77();

  return v1();
}

uint64_t DialogIdCallback.deinit()
{

  return v0;
}

uint64_t DialogIdCallback.__deallocating_deinit()
{
  DialogIdCallback.deinit();
  OUTLINED_FUNCTION_55_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF901454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2();
}

uint64_t sub_1BF901514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF904C9C;

  return DialogIdCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, a4);
}

uint64_t StaticViewProvider.__allocating_init(text:icon:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v5;
  return StaticViewProvider.__allocating_init(text:muText:icon:description:)(a1, a2, 0, 0, v8, a4, a5);
}

uint64_t StaticViewProvider.__allocating_init(text:muText:icon:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_80_0();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_102();
  StaticViewProvider.init(displayedText:spokenText:muText:icon:description:preambleOverride:)(v10, v11, v12, v13, v14, v15, v16, a6, a7, 0, 0);

  return v9;
}

uint64_t StaticViewProvider.__allocating_init(displayedText:spokenText:muText:icon:description:preambleOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_80_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_102();
  StaticViewProvider.init(displayedText:spokenText:muText:icon:description:preambleOverride:)(v14, v15, v16, v17, v18, v19, a7, a8, a9, a10, a11);
  return v13;
}

uint64_t StaticViewProvider.init(displayedText:spokenText:muText:icon:description:preambleOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a7;
  v13 = a7[1];
  v14 = *(a7 + 16);
  v15 = &type metadata for StaticDialogCallback;
  v16 = &protocol witness table for StaticDialogCallback;
  *(v11 + 40) = &type metadata for StaticDialogCallback;
  *(v11 + 48) = &protocol witness table for StaticDialogCallback;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 80) = &type metadata for StaticDialogCallback;
  *(v11 + 88) = &protocol witness table for StaticDialogCallback;
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;
  if (a11)
  {
    v18 = &protocol witness table for StaticDialogCallback;
    v19 = &type metadata for StaticDialogCallback;
  }

  else
  {
    a10 = 0;
    v19 = 0;
    v18 = 0;
    *(v11 + 152) = 0;
  }

  *(v11 + 136) = a10;
  *(v11 + 144) = a11;
  *(v11 + 160) = v19;
  *(v11 + 168) = v18;
  if (a9)
  {
    v20 = a8;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v20 = 0;
  }

  *(v11 + 96) = v20;
  *(v11 + 104) = a9;
  *(v11 + 112) = 0;
  *(v11 + 120) = v15;
  *(v11 + 128) = v16;
  *(v11 + 176) = a5;
  *(v11 + 184) = a6;
  *(v11 + 192) = v12;
  *(v11 + 208) = v13;
  *(v11 + 224) = v14;
  return OUTLINED_FUNCTION_67();
}

uint64_t StaticViewProvider.getInvocationAction(dialogProperties:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);
  v5 = type metadata accessor for UtteranceAction();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = sub_1BF9032BC(&qword_1EDBF32A8, 255, type metadata accessor for UtteranceAction, &protocol conformance descriptor for UtteranceAction);
  a1[3] = v5;
  a1[4] = v7;
  *a1 = v6;
}

uint64_t sub_1BF901984@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = *v2;
  a2[4] = a1;
  *a2 = v2;
}

void StaticViewProvider.getAssets(context:suggestion:)(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 224);
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  v7 = OUTLINED_FUNCTION_14_3();
  sub_1BF8F9990(v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_14_3();

  sub_1BF8F9990(v12, v13, v14, v15, v16);
}

uint64_t StaticViewProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_1BF8DFBF0(v0 + 96, &qword_1EBDE90D0, &qword_1BF9BB090);
  sub_1BF8DFBF0(v0 + 136, &qword_1EBDE90D0, &qword_1BF9BB090);

  sub_1BF8F9E7C(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  return v0;
}

uint64_t StaticViewProvider.__deallocating_deinit()
{
  StaticViewProvider.deinit();
  v0 = OUTLINED_FUNCTION_80_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t StaticDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v3[7] = a2;
  v3[8] = v4;
  v3[9] = v5;
  return OUTLINED_FUNCTION_2_8(sub_1BF901BD0);
}

uint64_t sub_1BF901BD0()
{
  v20 = v0;
  if (qword_1EDBF0910 != -1)
  {
    OUTLINED_FUNCTION_11_7(&qword_1EDBF0910);
  }

  v1 = v0[7];
  v2 = sub_1BF9B47C8();
  __swift_project_value_buffer(v2, qword_1EDBF0918);
  sub_1BF8E69C4(v1, (v0 + 2));

  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5038();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1BF8DE810(v6, v5, &v19);
    *(v7 + 12) = 2080;
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v9 = OUTLINED_FUNCTION_106();
    v10(v9, v8);
    v11 = sub_1BF9B4978();
    v13 = v12;

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v14 = sub_1BF8DE810(v11, v13, &v19);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1BF8B8000, v3, v4, "Getting text: %s with properties %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_93();
    MEMORY[0x1BFB5F320](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  OUTLINED_FUNCTION_77();
  v18 = v15;

  v16 = OUTLINED_FUNCTION_43();

  return v18(v16);
}

uint64_t sub_1BF901E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2();
}

uint64_t sub_1BF901ED4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF904C9C;

  return StaticDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(v4, a2);
}

uint64_t sub_1BF901F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return OUTLINED_FUNCTION_2_8(sub_1BF901F88);
}

uint64_t sub_1BF901F88()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 88))(*(v0 + 80));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_112(v1);
  *v2 = v3;
  v2[1] = sub_1BF9020A0;
  v4 = OUTLINED_FUNCTION_38_3(*(v0 + 56));

  return v5(v4);
}

uint64_t sub_1BF9020A0()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_5_3();
  v7 = v6;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  v7[14] = v0;

  if (!v0)
  {
    v7[15] = v3;
    v7[16] = v5;
  }

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF9021B0()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_121();
  v3 = v0[15];
  v2 = v0[16];

  return v1(v2, v3);
}

uint64_t sub_1BF902210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2();
}

uint64_t sub_1BF9022D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = v4[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1BF904C9C;

  return sub_1BF901F68(a1, a2, a3, a4, v11, v10);
}

unint64_t sub_1BF902398()
{
  result = qword_1EDBF0970;
  if (!qword_1EDBF0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0970);
  }

  return result;
}

unint64_t sub_1BF9023EC()
{
  result = qword_1EDBF3F80;
  if (!qword_1EDBF3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3F80);
  }

  return result;
}

unint64_t sub_1BF902440()
{
  result = qword_1EBDE90A0;
  if (!qword_1EBDE90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90A0);
  }

  return result;
}

unint64_t sub_1BF902494()
{
  result = qword_1EBDE90A8;
  if (!qword_1EBDE90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90A8);
  }

  return result;
}

unint64_t sub_1BF9024E8()
{
  result = qword_1EBDE90B0;
  if (!qword_1EBDE90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90B0);
  }

  return result;
}

uint64_t *sub_1BF90253C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v60 = a6;
  v58 = a2;
  v64 = a12;
  v65 = a4;
  v63 = a11;
  v56 = a8;
  v53 = *(a8 - 8);
  v15 = v53;
  v62 = a10;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v61 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - v19;
  v54 = a9;
  v21 = *(a9 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v59 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - v25;
  v55 = v27;
  v28 = MEMORY[0x1EEE9AC00](v24);
  v57 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v49 - v30;
  v33 = v32;
  v51 = &v49 - v30;
  v52 = v32;
  (*(v32 + 32))(&v49 - v30);
  v49 = v26;
  v50 = v21;
  (*(v21 + 32))(v26, v58, a9);
  v34 = v20;
  (*(v15 + 32))(v20, a5, a8);
  v35 = swift_allocObject();
  v36 = *(a3 + 16);
  *(v35 + 16) = *a3;
  *(v35 + 32) = v36;
  *(v35 + 48) = *(a3 + 32);
  v37 = swift_allocObject();
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0;
  v60 = swift_allocObject();
  v38 = v57;
  v39 = v31;
  v40 = v55;
  (*(v33 + 16))(v57, v39, v55);
  v41 = *(v21 + 16);
  v42 = v59;
  v43 = v54;
  v41(v59, v26, v54);
  v44 = v53;
  v45 = v61;
  v46 = v56;
  (*(v53 + 16))(v61, v34, v56);
  v47 = sub_1BF902974(v38, v42, sub_1BF904C98, v35, sub_1BF904C98, v37, v65, v45, v60, v40, v43, v46, v62, v64, v63);
  (*(v44 + 8))(v34, v46);
  (*(v50 + 8))(v49, v43);
  (*(v52 + 8))(v51, v40);
  return v47;
}

uint64_t *sub_1BF902974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a9[5] = a10;
  a9[6] = a13;
  __swift_allocate_boxed_opaque_existential_1Tm(a9 + 2);
  OUTLINED_FUNCTION_11();
  (*(v16 + 32))();
  a9[10] = a11;
  a9[11] = a14;
  __swift_allocate_boxed_opaque_existential_1Tm(a9 + 7);
  OUTLINED_FUNCTION_11();
  (*(v17 + 32))();
  a9[24] = a12;
  a9[25] = a15;
  __swift_allocate_boxed_opaque_existential_1Tm(a9 + 21);
  OUTLINED_FUNCTION_11();
  (*(v18 + 32))();
  a9[12] = a3;
  a9[13] = a4;
  a9[14] = a5;
  a9[15] = a6;
  sub_1BF8C2C9C(a7, (a9 + 16));
  return a9;
}

uint64_t *sub_1BF902AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = a10;
  v57 = a5;
  v15 = *(a9 - 8);
  v55 = a11;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v51 = v21;
  v52 = &v46 - v19;
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v53 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  v48 = v22;
  v27 = *(v22 + 32);
  v46 = &v46 - v25;
  v27(&v46 - v25);
  (*(v15 + 32))(v20, a2, a9);
  v28 = swift_allocObject();
  v29 = *(a3 + 16);
  *(v28 + 16) = *a3;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(a3 + 32);
  v30 = swift_allocObject();
  v31 = *(a4 + 16);
  *(v30 + 16) = *a4;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(a4 + 32);
  v49 = swift_allocObject();
  v50 = a6;
  v32 = a6[3];
  v47 = a6[4];
  v33 = __swift_mutable_project_boxed_opaque_existential_1(a6, v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v46 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  v37 = *(v22 + 16);
  v38 = v53;
  v39 = v51;
  v37(v53, v26, v51);
  v40 = v15;
  v41 = *(v15 + 16);
  v42 = v54;
  v43 = v52;
  v41(v54, v52, a9);
  v44 = sub_1BF902974(v38, v42, sub_1BF904C98, v28, sub_1BF904C98, v30, v57, v35, v49, v39, a9, v32, v56, v55, v47);
  __swift_destroy_boxed_opaque_existential_1(v50);
  (*(v40 + 8))(v43, a9);
  (*(v48 + 8))(v46, v39);
  return v44;
}

uint64_t *sub_1BF902E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a6;
  v41 = a7;
  v38 = a4;
  v39 = a5;
  v34 = a2;
  v35 = a13;
  v36 = a12;
  v37 = a3;
  v15 = *(a11 - 8);
  v16 = MEMORY[0x1EEE9AC00](a9);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = a8;
  v22 = a8[3];
  v31 = a8[4];
  v23 = __swift_mutable_project_boxed_opaque_existential_1(a8, v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  (*(v19 + 16))(v21, a1, a10);
  v27 = v34;
  (*(v15 + 16))(v18, v34, a11);
  v28 = sub_1BF902974(v21, v18, v37, v38, v39, v40, v41, v25, v32, a10, a11, v22, v36, v35, v31);
  __swift_destroy_boxed_opaque_existential_1(v33);
  (*(v15 + 8))(v27, a11);
  (*(v19 + 8))(a1, a10);
  return v28;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF90324C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE90D0, &qword_1BF9BB090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF9032BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BF903304(uint64_t a1, uint64_t a2)
{
  result = sub_1BF9032BC(&qword_1EBDE90E0, a2, type metadata accessor for DialogIdCallback, &protocol conformance descriptor for DialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF90335C(uint64_t a1, uint64_t a2)
{
  result = sub_1BF9032BC(&qword_1EBDE90D8, a2, type metadata accessor for DialogIdCallback, &protocol conformance descriptor for DialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF9033B4(uint64_t a1, uint64_t a2)
{
  result = sub_1BF9032BC(&qword_1EBDE90E8, a2, type metadata accessor for DialogIdCallback, &protocol conformance descriptor for DialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of DialogCallback.getText(dialog:dialogProperties:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_111(v10);
  v22 = v11 + *v11;
  v12 = swift_task_alloc();
  *(v9 + 16) = v12;
  *v12 = v9;
  v12[1] = sub_1BF904CA8;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_100();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of DialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(a6 + 16) + **(a6 + 16));
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_1BF90366C;
  v8 = OUTLINED_FUNCTION_27_0();

  return v10(v8);
}

uint64_t sub_1BF90366C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_121();
  v3 = OUTLINED_FUNCTION_88();

  return v4(v3);
}

uint64_t sub_1BF9037CC(uint64_t a1)
{
  result = sub_1BF9B4558();
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit5ColorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit5ImageOSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF903990(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 74))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 33);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF9039D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 33) = ~a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF903A50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 34))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 33);
      if (v3 <= 3)
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

uint64_t sub_1BF903A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF903AF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1BF903B30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF903C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1BF9B4378();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Image.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF903F30(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1BF903FDC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9040BC()
{
  result = qword_1EBDE90F0;
  if (!qword_1EBDE90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90F0);
  }

  return result;
}

unint64_t sub_1BF904114()
{
  result = qword_1EBDE90F8;
  if (!qword_1EBDE90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90F8);
  }

  return result;
}

unint64_t sub_1BF90416C()
{
  result = qword_1EBDE9100;
  if (!qword_1EBDE9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9100);
  }

  return result;
}

unint64_t sub_1BF9041C4()
{
  result = qword_1EBDE9108;
  if (!qword_1EBDE9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9108);
  }

  return result;
}

unint64_t sub_1BF90421C()
{
  result = qword_1EBDE9110;
  if (!qword_1EBDE9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9110);
  }

  return result;
}

unint64_t sub_1BF904274()
{
  result = qword_1EBDE9118;
  if (!qword_1EBDE9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9118);
  }

  return result;
}

unint64_t sub_1BF9042CC()
{
  result = qword_1EBDE9120;
  if (!qword_1EBDE9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9120);
  }

  return result;
}

unint64_t sub_1BF904324()
{
  result = qword_1EBDE9128;
  if (!qword_1EBDE9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9128);
  }

  return result;
}

unint64_t sub_1BF90437C()
{
  result = qword_1EBDE9130;
  if (!qword_1EBDE9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9130);
  }

  return result;
}

uint64_t sub_1BF9043D0(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EDBF0FE8, 255, type metadata accessor for TemplateOverrideDialogIdCallback, &unk_1BF9BC370);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF90442C(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EDBF0FE0, 255, type metadata accessor for TemplateOverrideDialogIdCallback, &unk_1BF9BC398);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF904488(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EDBF0FD8, 255, type metadata accessor for TemplateOverrideDialogIdCallback, &unk_1BF9BC3B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF9044E4(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EBDE9138, 255, type metadata accessor for TemplateOverrideCATTemplatingCallback, &unk_1BF9BC3FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF904540(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EBDE9140, 255, type metadata accessor for TemplateOverrideCATTemplatingCallback, &unk_1BF9BC46C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF90459C(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EBDE9148, 255, type metadata accessor for TemplateOverrideCATTemplatingCallback, &unk_1BF9BC424);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF9045FC()
{
  result = qword_1EBDE9150;
  if (!qword_1EBDE9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9150);
  }

  return result;
}

unint64_t sub_1BF904654()
{
  result = qword_1EBDE9158;
  if (!qword_1EBDE9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9158);
  }

  return result;
}

unint64_t sub_1BF9046AC()
{
  result = qword_1EBDE9160;
  if (!qword_1EBDE9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9160);
  }

  return result;
}

unint64_t sub_1BF904704()
{
  result = qword_1EBDE9168;
  if (!qword_1EBDE9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9168);
  }

  return result;
}

unint64_t sub_1BF90475C()
{
  result = qword_1EBDE9170;
  if (!qword_1EBDE9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9170);
  }

  return result;
}

unint64_t sub_1BF9047B4()
{
  result = qword_1EBDE9178;
  if (!qword_1EBDE9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9178);
  }

  return result;
}

unint64_t sub_1BF90480C()
{
  result = qword_1EDBF4EB8;
  if (!qword_1EDBF4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EB8);
  }

  return result;
}

unint64_t sub_1BF904864()
{
  result = qword_1EDBF4EC0;
  if (!qword_1EDBF4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EC0);
  }

  return result;
}

unint64_t sub_1BF9048BC()
{
  result = qword_1EDBF4EA8;
  if (!qword_1EDBF4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EA8);
  }

  return result;
}

unint64_t sub_1BF904914()
{
  result = qword_1EDBF4EB0;
  if (!qword_1EDBF4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EB0);
  }

  return result;
}

unint64_t sub_1BF90496C()
{
  result = qword_1EDBF4E90;
  if (!qword_1EDBF4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E90);
  }

  return result;
}

unint64_t sub_1BF9049C4()
{
  result = qword_1EDBF4E98;
  if (!qword_1EDBF4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E98);
  }

  return result;
}

unint64_t sub_1BF904A1C()
{
  result = qword_1EDBF5590;
  if (!qword_1EDBF5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5590);
  }

  return result;
}

unint64_t sub_1BF904A74()
{
  result = qword_1EDBF4E88;
  if (!qword_1EDBF4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E88);
  }

  return result;
}

unint64_t sub_1BF904ACC()
{
  result = qword_1EDBF4EC8;
  if (!qword_1EDBF4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EC8);
  }

  return result;
}

unint64_t sub_1BF904B24()
{
  result = qword_1EDBF4ED0;
  if (!qword_1EDBF4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4ED0);
  }

  return result;
}

unint64_t sub_1BF904B7C()
{
  result = qword_1EDBF47C0;
  if (!qword_1EDBF47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47C0);
  }

  return result;
}

unint64_t sub_1BF904BD4()
{
  result = qword_1EDBF47C8;
  if (!qword_1EDBF47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47C8);
  }

  return result;
}

unint64_t sub_1BF904C28()
{
  result = qword_1EDBF4E58;
  if (!qword_1EDBF4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_31_3(uint64_t a1, void *a2)
{
  v4 = a2[3];

  return __swift_project_boxed_opaque_existential_1(a2, v4);
}

uint64_t OUTLINED_FUNCTION_44_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 36) = v2[5];
  *(v2 - 38) = v2[4];
  *(v2 - 39) = v2[3];
  *(v2 - 29) = v2[2];

  return sub_1BF9B4378();
}

void *OUTLINED_FUNCTION_51_1()
{
  v1 = *(v0 + 96);
  result = __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  *(v0 + 40) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_1(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_71_1()
{

  sub_1BF8FEB88();
}

uint64_t OUTLINED_FUNCTION_72_1()
{
  v2 = *(v0 - 256);

  return sub_1BF8E69C4(v2, v0 - 160);
}

uint64_t OUTLINED_FUNCTION_85_0()
{
  result = v1;
  *(v2 - 296) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_94()
{
}

uint64_t OUTLINED_FUNCTION_95_0(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B56D8();
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B5508();
}

void OUTLINED_FUNCTION_98()
{

  sub_1BF8FF2BC();
}

uint64_t OUTLINED_FUNCTION_99()
{
}

uint64_t OUTLINED_FUNCTION_115(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B5598();
}

void OUTLINED_FUNCTION_116()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);
  v6 = *(v0 - 88);

  sub_1BF8F9E7C(v2, v3, v4, v5, v6);
}

void OUTLINED_FUNCTION_117()
{

  sub_1BF8FEB88();
}

uint64_t OUTLINED_FUNCTION_119()
{
}

uint64_t OUTLINED_FUNCTION_120()
{
  v2 = *(v0 - 248);

  return sub_1BF8E69C4(v2, v0 - 200);
}

uint64_t sub_1BF9050B8@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for DelegatingResolver();
  *a1 = v1;
}

uint64_t sub_1BF9050FC@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t Wrappable.getRoot()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  v5 = *(*(a1 - 8) + 16);

  return v5(boxed_opaque_existential_1Tm, v2, a1);
}

void *OSFeatureFlagProvider.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = sub_1BF905224;
  result[3] = 0;
  result[4] = sub_1BF905228;
  result[5] = 0;
  return result;
}

uint64_t OSFeatureFlagProvider.isSiriHelpEnabled(device:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  if ((sub_1BF9B4608() & 1) == 0)
  {
    if (sub_1BF9B4618())
    {
      v6 = &type metadata for SiriSuggestionsFeatureFlags;
      v7 = sub_1BF9053B4();
      v2 = 9;
      goto LABEL_6;
    }

    if (sub_1BF9B45F8() & 1) != 0 || (sub_1BF9B45E8())
    {

      v3 = 1;
      return v3 & 1;
    }

    if (sub_1BF9B45D8())
    {
      v6 = &type metadata for SiriSuggestionsFeatureFlags;
      v7 = sub_1BF9053B4();
      v2 = 10;
      goto LABEL_6;
    }

LABEL_13:
    v3 = 0;
    return v3 & 1;
  }

  v6 = &type metadata for SiriSuggestionsFeatureFlags;
  v7 = sub_1BF9053B4();
  v2 = 8;
LABEL_6:
  LOBYTE(v5[0]) = v2;
  v3 = (*(v1 + 16))(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3 & 1;
}

uint64_t OSFeatureFlagProvider.isEnabled(flag:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BF9065EC(v4, v1, v2, v3);
}

unint64_t sub_1BF9053B4()
{
  result = qword_1EDBF52D8[0];
  if (!qword_1EDBF52D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF52D8);
  }

  return result;
}

uint64_t OSFeatureFlagProvider.isContinuersEnabled(device:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  if ((sub_1BF9B4618() & 1) == 0)
  {
    if (sub_1BF9B4608())
    {
      v6 = &type metadata for SiriSuggestionsFeatureFlags;
      v7 = sub_1BF9053B4();
      v2 = 2;
      goto LABEL_10;
    }

    if (sub_1BF9B45E8())
    {
      v6 = &type metadata for SiriSuggestionsFeatureFlags;
      v7 = sub_1BF9053B4();
      v2 = 4;
      goto LABEL_10;
    }

    if (sub_1BF9B45F8())
    {
      v6 = &type metadata for SiriSuggestionsFeatureFlags;
      v7 = sub_1BF9053B4();
      v2 = 1;
      goto LABEL_10;
    }

    if (sub_1BF9B45D8())
    {
      v3 = OSFeatureFlagProvider.isSAESuggestionsEnabled()();

      return v3 & 1;
    }

LABEL_14:
    v3 = 0;
    return v3 & 1;
  }

  v6 = &type metadata for SiriSuggestionsFeatureFlags;
  v7 = sub_1BF9053B4();
  v2 = 3;
LABEL_10:
  LOBYTE(v5[0]) = v2;
  v3 = (*(v1 + 16))(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3 & 1;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isSAESuggestionsEnabled()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_1BF90657C(v0);
  v3 = v2;
  if ([objc_opt_self() isSAEEnabled])
  {
    v4.value._countAndFlagsBits = v1;
    v4.value._object = v3;
    v5 = OSFeatureFlagProvider.isSAESuggestionsFeatureFlagEnabled(locale:)(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isSAESuggestionsFeatureFlagEnabled(locale:)(Swift::String_optional locale)
{
  if (!locale.value._object)
  {
    goto LABEL_6;
  }

  object = locale.value._object;
  countAndFlagsBits = locale.value._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF9BC820;
  *(inited + 32) = 0x52462D7266;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x41432D7266;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x45422D7266;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x48432D7266;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x53452D7365;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = 0x53552D7365;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = 0x584D2D7365;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0x4C432D7365;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 160) = 0x45442D6564;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x48432D6564;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = 0x54412D6564;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = 0x54492D7469;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = 0x48432D7469;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = 0x52422D7470;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 256) = 0x4E432D687ALL;
  *(inited + 264) = 0xE500000000000000;
  *(inited + 272) = 0x504A2D616ALL;
  *(inited + 280) = 0xE500000000000000;
  *(inited + 288) = 0x524B2D6F6BLL;
  *(inited + 296) = 0xE500000000000000;
  v5 = sub_1BF9B4C08();
  if ((v5 & 1) == 0)
  {
    v9[0] = countAndFlagsBits;
    v9[1] = object;
    MEMORY[0x1EEE9AC00](v5);
    v6 = sub_1BF90626C();
    swift_setDeallocating();
    sub_1BF906454();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_6:
    v7 = 0;
    return v7 & 1;
  }

  swift_setDeallocating();
  sub_1BF906454();
LABEL_5:
  v9[3] = &type metadata for SiriSuggestionsFeatureFlags;
  v9[4] = sub_1BF9053B4();
  LOBYTE(v9[0]) = 21;
  v7 = (*(v1 + 16))(v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7 & 1;
}

BOOL OSFeatureFlagProvider.isSAESuggestionsEnabled(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {

    return OSFeatureFlagProvider.isSAESuggestionsEnabled()();
  }

  else
  {
    if (v2 == 3 || (v2 & 1) != 0 || !OSFeatureFlagProvider.isSAESuggestionsEnabled()())
    {
      v1 = 0;
    }

    else
    {
      sub_1BF9053B4();
      OUTLINED_FUNCTION_0_9();
      v4 = v3();
      OUTLINED_FUNCTION_2_9(v4, v5);
    }

    return v1 & 1;
  }
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isFeatureAnnouncementEnabled()()
{
  v4[3] = &type metadata for SiriSuggestionsFeatureFlags;
  v4[4] = sub_1BF9053B4();
  OUTLINED_FUNCTION_0_9();
  v1 = v0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return (v1 & 1) != 0 && !OSFeatureFlagProvider.isSAEUIEnabled()();
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isSAEUIEnabled()()
{
  v1 = v0;
  if ((*(v0 + 32))())
  {
    v6 = &type metadata for SiriSuggestionsFeatureFlags;
    v7 = sub_1BF9053B4();
    v5[0] = 29;
    v2 = (*(v0 + 16))(v5);
    OUTLINED_FUNCTION_2_9(v2, v3);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isPanIndiaFeatureAnnouncementEnabled()()
{
  if (OSFeatureFlagProvider.isFeatureAnnouncementEnabled()())
  {
    sub_1BF9053B4();
    OUTLINED_FUNCTION_0_9();
    v2 = v1();
    OUTLINED_FUNCTION_2_9(v2, v3);
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isSMARTEnabled()()
{
  v8 = &type metadata for SiriSuggestionsFeatureFlags;
  v1 = sub_1BF9053B4();
  v9 = v1;
  LOBYTE(v7[0]) = 19;
  v2 = *(v0 + 16);
  v3 = v2(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v3)
  {
    v8 = &type metadata for SiriSuggestionsFeatureFlags;
    v9 = v1;
    LOBYTE(v7[0]) = 18;
    v4 = v2(v7);
    OUTLINED_FUNCTION_2_9(v4, v5);
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isHandCraftedAppIntentSuggestionsEnabled()()
{
  sub_1BF9053B4();
  OUTLINED_FUNCTION_0_9();
  v2 = v1();
  OUTLINED_FUNCTION_2_9(v2, v3);
  v4 = OSFeatureFlagProvider.isSAEFullPlannerEnabled()();
  v5 = OSFeatureFlagProvider.isDisableAllActionsOn()();
  v6 = (v0 & 1) != 0 && v4 && !v5;
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF9B47C8();
  __swift_project_value_buffer(v7, qword_1EDBF5570);
  v8 = sub_1BF9B47A8();
  v9 = sub_1BF9B5038();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109888;
    *(v10 + 4) = v6;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v0 & 1;
    *(v10 + 14) = 1024;
    *(v10 + 16) = v4;
    *(v10 + 20) = 1024;
    *(v10 + 22) = v5;
    _os_log_impl(&dword_1BF8B8000, v8, v9, "isHandCraftedAISuggestionsEnabled: %{BOOL}d\nReasons:\nhandCraftedAISuggestionsFF: %{BOOL}d\nsaeFullPlannerEnabled: %{BOOL}d\ndisableAllActionsOn: %{BOOL}d --> must be 'false' for AppIntent suggestions to be enabled ", v10, 0x1Au);
    MEMORY[0x1BFB5F320](v10, -1, -1);
  }

  return v6;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isAppIntentSuggestionsEnabled()()
{
  v4[3] = &type metadata for SiriSuggestionsFeatureFlags;
  v4[4] = sub_1BF9053B4();
  OUTLINED_FUNCTION_0_9();
  v1 = v0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return (v1 & 1) != 0 && OSFeatureFlagProvider.isSAEUIEnabled()() && OSFeatureFlagProvider.isSAEFullPlannerEnabled()();
}

uint64_t sub_1BF905CFC(char a1)
{
  v7 = &type metadata for SiriSuggestionsFeatureFlags;
  v8 = sub_1BF9053B4();
  v6[0] = a1;
  v3 = (*(v1 + 16))(v6);
  OUTLINED_FUNCTION_2_9(v3, v4);
  return a1 & 1;
}

uint64_t sub_1BF905D54(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return sub_1BF9065EC(v5, v2, v3, v4);
}

uint64_t StaticFeatureFlagProvider.isSAESuggestionsEnabled(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  result = *(v1 + 11);
  if (v2 != 2)
  {
    if (v2 == 3 || (v2 & 1) != 0)
    {
      return 0;
    }

    else
    {
      return result & *(v1 + 22);
    }
  }

  return result;
}

double static StaticFeatureFlagProvider.create(enabled:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 1) = 0x101010101010101;
  *(a2 + 9) = 16843008;
  *&result = 16842753;
  *(a2 + 17) = 16842753;
  *(a2 + 21) = 256;
  *(a2 + 23) = 1;
  return result;
}

BOOL sub_1BF90626C()
{
  OUTLINED_FUNCTION_3_8();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v3;
    v10[0] = *(v3 - 1);
    v10[1] = v6;

    v7 = v1(v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;
    v3 += 2;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1BF906310()
{
  OUTLINED_FUNCTION_3_8();
  v3 = (v2 + 64);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v3 - 2);
    v7 = *(v3 - 1);
    v8 = *(v3 - 3);
    v9 = *v3;
    v12 = *(v3 - 4);
    v13 = v8;
    v14 = v6;
    v15 = v7;
    v16 = v9;
    sub_1BF8C0D00(v12, v8, v6, v7, v9);
    v10 = v1(&v12);
    sub_1BF8C0CB8(v12, v13, v14, v15, v16);
    if (v0)
    {
      break;
    }

    v3 += 40;
  }

  while ((v10 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1BF9063B4()
{
  OUTLINED_FUNCTION_1_10();
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v0(v2);
    if (v1)
    {
      break;
    }

    v2 += 40;
  }

  while ((v4 & 1) == 0);
  return v3 != 0;
}

BOOL sub_1BF906404()
{
  OUTLINED_FUNCTION_1_10();
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v0(v2);
    if (v1)
    {
      break;
    }

    v2 += 120;
  }

  while ((v4 & 1) == 0);
  return v3 != 0;
}

uint64_t sub_1BF906454()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF906498()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF90654C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1BF90657C(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BF9B4AA8();

  return v3;
}

uint64_t sub_1BF9065EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v9);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v4);
  LOBYTE(v4) = (*(a2 + 16))(v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4 & 1;
}

__n128 __swift_memcpy24_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticFeatureFlagProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
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

uint64_t storeEnumTagSinglePayload for StaticFeatureFlagProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t AppEntityDetails.signalValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

SiriSuggestionsKit::AppEntityDetails::AppEntityCount_optional __swiftcall AppEntityDetails.AppEntityCount.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

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

uint64_t AppEntityDetails.AppEntityCount.rawValue.getter()
{
  if (*v0)
  {
    return 0x656C7069746C756DLL;
  }

  else
  {
    return 0x656C676E6973;
  }
}

uint64_t sub_1BF906AE8@<X0>(uint64_t *a1@<X8>)
{
  result = AppEntityDetails.AppEntityCount.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall AppEntityDetails.init(bundleId:appEntityType:appEntityCount:)(SiriSuggestionsKit::AppEntityDetails *__return_ptr retstr, Swift::String bundleId, Swift::String appEntityType, SiriSuggestionsKit::AppEntityDetails::AppEntityCount appEntityCount)
{
  v4 = *appEntityCount;
  retstr->signalValue.bundleId = bundleId;
  retstr->signalValue.appEntityType = appEntityType;
  retstr->appEntityCount = v4;
}

SiriSuggestionsKit::AppEntitySignalValue __swiftcall AppEntitySignalValue.init(bundleId:appEntityType:)(Swift::String bundleId, Swift::String appEntityType)
{
  *v2 = bundleId;
  v2[1] = appEntityType;
  result.appEntityType = appEntityType;
  result.bundleId = bundleId;
  return result;
}

uint64_t AppEntityDetails.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD00000000000001BLL, 0x80000001BF9CB700);
  v3 = OUTLINED_FUNCTION_36();
  MEMORY[0x1BFB5DE90](v3);
  MEMORY[0x1BFB5DE90](0xD000000000000011, 0x80000001BF9CB720);
  MEMORY[0x1BFB5DE90](v1, v2);
  MEMORY[0x1BFB5DE90](0xD000000000000012, 0x80000001BF9CB740);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
  return 0;
}

uint64_t AppEntityDetails.getLookupValue()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  a1[3] = &type metadata for AppEntitySignalValue;
  a1[4] = sub_1BF8E630C();
  a1[5] = sub_1BF8E6360();
  a1[6] = sub_1BF8E63B4();
  a1[7] = sub_1BF8E6408();
  v7 = swift_allocObject();
  *a1 = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
}

uint64_t static AppEntityDetails.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a2[2];
  v6 = a2[3];
  v7 = *a1 == *a2 && a1[1] == a2[1];
  if (!v7 && (sub_1BF9B56D8() & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1BF9B56D8() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF8CA8AC(v4);
}

uint64_t static AppEntitySignalValue.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BF9B56D8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_43();

      return sub_1BF9B56D8();
    }
  }

  return result;
}

uint64_t sub_1BF906F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61566C616E676973 && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E45707061 && a2 == 0xEE00746E756F4379)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF906FD4(char a1)
{
  if (a1)
  {
    return 0x7469746E45707061;
  }

  else
  {
    return 0x61566C616E676973;
  }
}

uint64_t sub_1BF907040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF906F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF907068(uint64_t a1)
{
  v2 = sub_1BF907284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9070A4(uint64_t a1)
{
  v2 = sub_1BF907284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppEntityDetails.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v15 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9180, &qword_1BF9BC930);
  OUTLINED_FUNCTION_1();
  v16 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[3];
  v14 = v0[2];
  v21 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF907284();

  sub_1BF9B5898();
  v17 = v9;
  v18 = v10;
  v19 = v14;
  v20 = v11;
  sub_1BF8E63B4();
  OUTLINED_FUNCTION_7_8();
  v12 = v15;
  sub_1BF9B5638();

  if (!v12)
  {
    LOBYTE(v17) = v21;
    sub_1BF9072D8();
    OUTLINED_FUNCTION_7_8();
    sub_1BF9B5638();
  }

  (*(v16 + 8))(v8, v4);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF907284()
{
  result = qword_1EBDE9188;
  if (!qword_1EBDE9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9188);
  }

  return result;
}

unint64_t sub_1BF9072D8()
{
  result = qword_1EBDE9190;
  if (!qword_1EBDE9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9190);
  }

  return result;
}

uint64_t AppEntityDetails.hash(into:)(uint64_t a1)
{
  sub_1BF9B4B48();
  OUTLINED_FUNCTION_36();
  sub_1BF9B4B48();
  sub_1BF9B4B48();
}

uint64_t AppEntityDetails.hashValue.getter()
{
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF9B4B48();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

void AppEntityDetails.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9198, &qword_1BF9BC938);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v6 = sub_1BF907284();
  OUTLINED_FUNCTION_53(&type metadata for AppEntityDetails.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1BF8E6360();
    OUTLINED_FUNCTION_2_10(&type metadata for AppEntitySignalValue);
    sub_1BF907DB0();
    OUTLINED_FUNCTION_2_10(&type metadata for AppEntityDetails.AppEntityCount);
    v8 = OUTLINED_FUNCTION_60();
    v9(v8);
    *v4 = v10;
    *(v4 + 8) = v11;
    *(v4 + 16) = v12;
    *(v4 + 24) = v13;
    *(v4 + 32) = v10;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF90761C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_1BF9B57A8();
  AppEntityDetails.hash(into:)(v6);
  return sub_1BF9B57E8();
}

uint64_t AppEntitySignalValue.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD00000000000001FLL, 0x80000001BF9CB760);
  v3 = OUTLINED_FUNCTION_36();
  MEMORY[0x1BFB5DE90](v3);
  MEMORY[0x1BFB5DE90](0xD000000000000011, 0x80000001BF9CB720);
  MEMORY[0x1BFB5DE90](v1, v2);
  MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF9077D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E45707061 && a2 == 0xED00006570795479)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF9078A4(char a1)
{
  if (a1)
  {
    return 0x7469746E45707061;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_1BF9078E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF90793C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9077D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF907964(uint64_t a1)
{
  v2 = sub_1BF907E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9079A0(uint64_t a1)
{
  v2 = sub_1BF907E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppEntitySignalValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE91A8, &qword_1BF9BC940);
  OUTLINED_FUNCTION_1();
  v34 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v33 - v30;
  v32 = *(v23 + 16);
  v33[1] = *(v23 + 24);
  v33[2] = v32;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1BF907E04();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v24)
  {
    sub_1BF9B55F8();
  }

  (*(v34 + 8))(v31, v27);
  OUTLINED_FUNCTION_37();
}

uint64_t AppEntitySignalValue.hash(into:)(uint64_t a1)
{
  sub_1BF9B4B48();
  OUTLINED_FUNCTION_36();

  return sub_1BF9B4B48();
}

uint64_t AppEntitySignalValue.hashValue.getter()
{
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

void AppEntitySignalValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE91B8, &qword_1BF9BC948);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v43 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v34 = sub_1BF907E04();
  OUTLINED_FUNCTION_53(&type metadata for AppEntitySignalValue.CodingKeys, v35, v34);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v36 = sub_1BF9B5518();
    v38 = v37;
    v39 = sub_1BF9B5518();
    v41 = v40;
    v42 = *(v30 + 8);
    v44 = v39;
    v42(v33, v28);
    *v27 = v36;
    v27[1] = v38;
    v27[2] = v44;
    v27[3] = v41;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF907DB0()
{
  result = qword_1EBDE91A0;
  if (!qword_1EBDE91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91A0);
  }

  return result;
}

unint64_t sub_1BF907E04()
{
  result = qword_1EBDE91B0;
  if (!qword_1EBDE91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91B0);
  }

  return result;
}

uint64_t sub_1BF907E58(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1BF9B57A8();
  AppEntitySignalValue.hash(into:)(v5);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF907EAC()
{
  result = qword_1EBDE91C0;
  if (!qword_1EBDE91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91C0);
  }

  return result;
}

unint64_t sub_1BF907F04()
{
  result = qword_1EDBF31E0;
  if (!qword_1EDBF31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF31E0);
  }

  return result;
}

unint64_t sub_1BF907F5C()
{
  result = qword_1EDBF28C0;
  if (!qword_1EDBF28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF28C0);
  }

  return result;
}

uint64_t sub_1BF907FE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BF908028(uint64_t result, int a2, int a3)
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

_BYTE *sub_1BF9080A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF908180()
{
  result = qword_1EBDE91C8;
  if (!qword_1EBDE91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91C8);
  }

  return result;
}

unint64_t sub_1BF9081D8()
{
  result = qword_1EBDE91D0;
  if (!qword_1EBDE91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91D0);
  }

  return result;
}

unint64_t sub_1BF908230()
{
  result = qword_1EBDE91D8;
  if (!qword_1EBDE91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91D8);
  }

  return result;
}

unint64_t sub_1BF908288()
{
  result = qword_1EBDE91E0;
  if (!qword_1EBDE91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91E0);
  }

  return result;
}

unint64_t sub_1BF9082E0()
{
  result = qword_1EBDE91E8;
  if (!qword_1EBDE91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91E8);
  }

  return result;
}

unint64_t sub_1BF908338()
{
  result = qword_1EBDE91F0;
  if (!qword_1EBDE91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91F0);
  }

  return result;
}

unint64_t sub_1BF90838C()
{
  result = qword_1EBDE91F8;
  if (!qword_1EBDE91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91F8);
  }

  return result;
}

uint64_t sub_1BF9083E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9200, qword_1BF9BCF70);
  sub_1BF9B4558();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9BCEF0;
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  result = sub_1BF9B4528();
  qword_1EDBF1ED8 = v0;
  return result;
}

uint64_t sub_1BF9085B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9200, qword_1BF9BCF70);
  sub_1BF9B4558();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9BCF00;
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  result = sub_1BF9B4528();
  qword_1EDBF1F00 = v0;
  return result;
}

uint64_t sub_1BF908954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9200, qword_1BF9BCF70);
  sub_1BF9B4558();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9BCF10;
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  result = sub_1BF9B4528();
  qword_1EDBF1EE8 = v0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionEnabledLocales(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BF9090B8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BF9090B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;

  v10 = *(v12 + 8);

  return v10(a1);
}

uint64_t static OwnerDefinitionFactory.createOwnerDefinitions()()
{
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF9B47C8();
  __swift_project_value_buffer(v0, qword_1EDBF5570);
  v1 = sub_1BF9B47A8();
  v2 = sub_1BF9B5048();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF8B8000, v1, v2, "Unable to get owner definitions as neither createOwnerDefinitions have been provided", v3, 2u);
    MEMORY[0x1BFB5F320](v3, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF9092D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2, a3, a4);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t dispatch thunk of static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9090B8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1BF9094A0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  OUTLINED_FUNCTION_2_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v50 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v52 = v15;
  OUTLINED_FUNCTION_9();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v46 = v21 - v20;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v40 = v23;
  v41 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - v25;
  v27 = sub_1BF9B4FE8();
  if (!v27)
  {
    return sub_1BF9B4D78();
  }

  v51 = v27;
  v55 = sub_1BF9B5358();
  v42 = sub_1BF9B5368();
  sub_1BF9B5338();
  result = sub_1BF9B4FC8();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v29 = 0;
    v43 = (v52 + 16);
    v44 = v52 + 8;
    v45 = v8;
    while (!__OFADD__(v29, 1))
    {
      v52 = v29 + 1;
      v30 = sub_1BF9B5018();
      v31 = v19;
      v32 = v19;
      v33 = AssociatedTypeWitness;
      (*v43)(v31);
      v30(v54, 0);
      v34 = v53;
      v48(v32, v50);
      if (v34)
      {
        OUTLINED_FUNCTION_17_7();
        v36(v32, v33);
        (*(v40 + 8))(v26, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      OUTLINED_FUNCTION_17_7();
      v35(v32, v33);
      sub_1BF9B5348();
      result = sub_1BF9B4FF8();
      ++v29;
      v19 = v32;
      if (v52 == v51)
      {
        (*(v40 + 8))(v26, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *newLineJoined<A>(_:prefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  v5 = sub_1BF9B4E08();
  v6 = OUTLINED_FUNCTION_5_8(v5);
  v10 = sub_1BF9094A0(sub_1BF909A60, v9, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  sub_1BF9B4A78();
  OUTLINED_FUNCTION_11_8();
  return &v10;
}

uint64_t sub_1BF90994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1BF9B4B08();
  v12 = v11;
  v15 = a2;
  v16 = a3;

  MEMORY[0x1BFB5DE90](v10, v12);

  v14 = v16;
  *a5 = v15;
  a5[1] = v14;
  return result;
}

uint64_t newLineJoined<A, B>(_:prefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_1BF9B49D8();
  OUTLINED_FUNCTION_4_9(v10);
  v11 = sub_1BF9B4E18();
  newLineJoined<A>(_:prefix:)(v11, a2, a3, TupleTypeMetadata2);
  OUTLINED_FUNCTION_11_8();
  return a5;
}

uint64_t *commaJoined<A>(_:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7[2] = a2;
  v3 = sub_1BF9B4E08();
  v4 = OUTLINED_FUNCTION_5_8(v3);
  v8 = sub_1BF9094A0(sub_1BF909CDC, v7, v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  sub_1BF9B4A78();
  OUTLINED_FUNCTION_11_8();
  return &v8;
}

uint64_t sub_1BF909C0C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1BF9B4B08();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t prependEachLine<A>(of:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  (*(v9 + 16))(v8 - v7);
  sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](a2, a3);
  sub_1BF904C28();
  v10 = sub_1BF9B5188();
  v12 = v11;

  MEMORY[0x1BFB5DE90](v10, v12);

  return a2;
}

void dedupByField<A, B>(_:field:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v51 = v4;
  v5 = *(*v4 + *MEMORY[0x1E69E77B0] + 8);
  OUTLINED_FUNCTION_2_0();
  v48 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - v10;
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v15 = *v14;
  OUTLINED_FUNCTION_2_0();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v44 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - v25;
  v52 = sub_1BF9B4938();
  v56 = v52;
  v49 = sub_1BF9B4948();
  v55 = v49;
  OUTLINED_FUNCTION_16_5();
  v27 = sub_1BF9B4D18();
  v54 = v27;
  OUTLINED_FUNCTION_16_5();
  if (v27 == sub_1BF9B4DD8())
  {
LABEL_12:

    OUTLINED_FUNCTION_64();
    return;
  }

  v40 = v19;
  v41 = v1;
  v52 = (v17 + 16);
  v42 = (v48 + 2);
  v43 = v26;
  ++v48;
  v49 = (v17 + 32);
  v47 = (v17 + 8);
  v50 = v24;
  while (1)
  {
    OUTLINED_FUNCTION_16_5();
    v28 = sub_1BF9B4D98();
    sub_1BF9B4D38();
    if ((v28 & 1) == 0)
    {
      break;
    }

    v29 = *(v17 + 16);
    v29(v26, v3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v27, v15);
LABEL_5:
    sub_1BF9B4DE8();
    (*v49)(v24, v26, v15);
    swift_getAtKeyPath();
    if (sub_1BF9B4FA8())
    {
      (*v48)(v13, v5);
    }

    else
    {
      OUTLINED_FUNCTION_17_7();
      v30(v46, v13, v5);
      sub_1BF9B4FB8();
      v31 = v3;
      v32 = v17;
      v33 = v13;
      v34 = v45;
      sub_1BF9B4F98();
      v35 = *v48;
      v36 = v34;
      v13 = v33;
      v17 = v32;
      v3 = v31;
      (*v48)(v36, v5);
      v29(v44, v50, v15);
      sub_1BF9B4E08();
      v26 = v43;
      sub_1BF9B4DC8();
      v35(v13, v5);
      v24 = v50;
    }

    (*v47)(v24, v15);
    OUTLINED_FUNCTION_16_5();
    v37 = sub_1BF9B4DD8();
    v27 = v54;
    if (v54 == v37)
    {
      goto LABEL_12;
    }
  }

  v38 = sub_1BF9B52C8();
  if (v40 == 8)
  {
    v53 = v38;
    v29 = *v52;
    (*v52)(v26, &v53, v15);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void mergeDicts<A, B>(_:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_72(v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v62 - v8;
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_2_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v77 = v19 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_11();
  v75 = v23 - v24;
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v25);
  v74 = &v62 - v26;
  v84 = sub_1BF9B4928();
  v27 = sub_1BF9B49D8();
  v28 = sub_1BF9B4D18();
  v83 = v28;
  if (v28 == sub_1BF9B4DD8())
  {
    goto LABEL_30;
  }

  v82 = v1;
  v63 = v5 + 32;
  v80 = (v10 + 32);
  v81 = (v16 + 32);
  v65 = v10 + 16;
  v66 = v16 + 16;
  v71 = v21 + 32;
  v73 = v3;
  v62 = v5;
  v67 = v16;
  v68 = v10;
  v29 = v14;
  v30 = TupleTypeMetadata2;
  v72 = v27;
  while (2)
  {
    v31 = sub_1BF9B4D98();
    sub_1BF9B4D38();
    if (v31)
    {
      v32 = *(v63 + 8 * v28);
    }

    else
    {
      v32 = sub_1BF9B52C8();
    }

    v33 = v77;
    sub_1BF9B4DE8();
    v34 = v32;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = sub_1BF9B53D8();
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v34 = v35 | 0x8000000000000000;
    }

    else
    {
      v39 = -1 << *(v32 + 32);
      v36 = v32 + 64;
      v37 = ~v39;
      v40 = -v39;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v38 = v41 & *(v32 + 64);
    }

    v42 = 0;
    v64 = v37;
    v43 = (v37 + 64) >> 6;
    for (i = v34; ; v34 = i)
    {
      v79 = v42;
      if ((v34 & 0x8000000000000000) == 0)
      {
        v44 = v38;
        v45 = v42;
        if (!v38)
        {
          while (1)
          {
            v45 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v45 >= v43)
            {
              v46 = 0;
              v52 = 1;
              goto LABEL_23;
            }

            v44 = *(v36 + 8 * v45);
            ++v42;
            if (v44)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_17:
        v46 = (v44 - 1) & v44;
        v47 = __clz(__rbit64(v44)) | (v45 << 6);
        v48 = v34;
        (*(v67 + 16))(v33, *(v34 + 48) + *(v67 + 72) * v47, v3);
        v49 = v82;
        (*(v68 + 16))(v29, *(v48 + 56) + *(v68 + 72) * v47, v82);
        goto LABEL_20;
      }

      if (sub_1BF9B53E8())
      {
        sub_1BF9B56B8();
        swift_unknownObjectRelease();
        v49 = v82;
        sub_1BF9B56B8();
        swift_unknownObjectRelease();
        v45 = v42;
        v46 = v38;
LABEL_20:
        v50 = *(TupleTypeMetadata2 + 48);
        v51 = v75;
        v30 = TupleTypeMetadata2;
        (*v81)();
        (*v80)((v51 + v50), v29, v49);
        v52 = 0;
        v42 = v45;
        goto LABEL_24;
      }

      v52 = 1;
      v46 = v38;
LABEL_23:
      v51 = v75;
LABEL_24:
      __swift_storeEnumTagSinglePayload(v51, v52, 1, v30);
      OUTLINED_FUNCTION_17_7();
      v53 = v74;
      v54(v74, v51, v76);
      if (__swift_getEnumTagSinglePayload(v53, 1, v30) == 1)
      {
        break;
      }

      v55 = *(v30 + 48);
      v33 = v77;
      v56 = v53;
      v57 = v53;
      v3 = v73;
      (*v81)(v77, v56, v73);
      v58 = v57 + v55;
      v59 = v70;
      v60 = v82;
      (*v80)(v70, v58, v82);
      __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
      sub_1BF9B4A08();
      v38 = v46;
    }

    sub_1BF90D2E8();
    v61 = sub_1BF9B4DD8();
    v28 = v83;
    v3 = v73;
    if (v83 != v61)
    {
      continue;
    }

    break;
  }

LABEL_30:
  OUTLINED_FUNCTION_64();
}

BOOL isEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24) && !*(a2 + 24))
  {
    return 1;
  }

  sub_1BF8EE390(a1, &v28, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!*(&v29 + 1))
  {
    sub_1BF90DB60(&v28, &qword_1EBDE9208, &unk_1BF9C2A50);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_12;
  }

  if (!*(&v32 + 1))
  {
LABEL_12:
    sub_1BF90DB60(&v31, &qword_1EBDE9210, &qword_1BF9BD040);
    goto LABEL_13;
  }

  sub_1BF8C2C9C(&v31, v34);
  sub_1BF8EE390(a2, &v25, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!v27)
  {
    sub_1BF90DB60(&v25, &qword_1EBDE9208, &unk_1BF9C2A50);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_22;
  }

  if (!*(&v29 + 1))
  {
LABEL_22:
    sub_1BF90DB60(&v28, &qword_1EBDE9210, &qword_1BF9BD040);
    __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_13:
    sub_1BF8EE390(a1, v34, &qword_1EBDE9208, &unk_1BF9C2A50);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
    if (OUTLINED_FUNCTION_12_6(v6, v7, v8, v9, v10, v11, v12, v13, v25, v26))
    {
      v14 = v31;
      v15 = sub_1BF8EE390(a2, v34, &qword_1EBDE9208, &unk_1BF9C2A50);
      if (OUTLINED_FUNCTION_12_6(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26))
      {
        v23 = v31;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v14 == v23;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  sub_1BF8C2C9C(&v28, &v31);
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_1BF90AB90();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(&v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v5;
}

void sub_1BF90AB90()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v26[1] = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  OUTLINED_FUNCTION_2_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_11();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - v20;
  sub_1BF8D2004(v6, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
    (*(v14 + 32))(v21, v12, v4);
    v22 = v1;
    v23 = sub_1BF9B4A88();
    (*(v14 + 8))(v21, v4);
    if (v23)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v4);
    (*(v9 + 8))(v12, v7);
    v22 = v1;
  }

  sub_1BF8D2004(v6, v27);
  sub_1BF8BE93C(0, &qword_1EDBF0548, 0x1E696AEC0);
  if (swift_dynamicCast())
  {
    v24 = v26[2];
    (*(v14 + 16))(v18, v22, v4);
    if (swift_dynamicCast())
    {
      v25 = v27[0];
      sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
      sub_1BF9B50B8();
    }

    else
    {
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF90AE78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BF8C187C(a1, &v28);
  sub_1BF8C187C(&v28, v24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
  if (OUTLINED_FUNCTION_21_5(v3, v4, v5, v3, v6, v7, v8, v9, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24[0]))
  {
    sub_1BF8C2C9C(&v21, &v25);
    v10 = v26;
    v11 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    (*(v11 + 8))(&v21, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v28);
    sub_1BF8C192C(&v21, &v28);
    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_1BF90DB60(&v21, &qword_1EBDE9240, &unk_1BF9C1A70);
  }

  sub_1BF8C187C(&v28, v24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  if (OUTLINED_FUNCTION_21_5(v12, v13, v14, v12, v15, v16, v17, v18, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24[0]))
  {
    __swift_destroy_boxed_opaque_existential_1(&v28);
    sub_1BF8C2C9C(&v21, &v25);
    return sub_1BF8C2C9C(&v25, a2);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_1BF90DB60(&v21, &qword_1EBDE9210, &qword_1BF9BD040);
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v20 = sub_1BF9B56C8();
    a2[3] = &type metadata for ReferenceEquatable;
    a2[4] = sub_1BF90D864();
    *a2 = v20;
    return __swift_destroy_boxed_opaque_existential_1(&v28);
  }
}

uint64_t static Dictionary<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  OUTLINED_FUNCTION_9_5();
  v4 = sub_1BF9B49A8();
  OUTLINED_FUNCTION_9_5();
  v5 = sub_1BF9B49A8();
  if (v4 == v5)
  {
    v6 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_9_5();
    v7 = sub_1BF9B49D8();
    OUTLINED_FUNCTION_4_9(v7);
    v8 = sub_1BF9B4C78();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1BF90B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  sub_1BF9B49F8();
  if (v8)
  {
    sub_1BF8C2C9C(&v7, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1BF90AB90();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1BF90DB60(&v7, &qword_1EBDE9210, &qword_1BF9BD040);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1BF90B240(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9218, &qword_1BF9BD048);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1BF90B2F8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v10[3] = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1BF90B3A4(v10, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1BF90B3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BF8C187C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
  if (swift_dynamicCast())
  {
    sub_1BF8C2C9C(v7, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v5 + 8))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1BF90DB60(v7, &qword_1EBDE9240, &unk_1BF9C1A70);
    return sub_1BF8C187C(a1, a2);
  }
}

double sub_1BF90B53C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v12[3] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a2);
  sub_1BF90AE78(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v7 = v14;
  if (v14)
  {
    v8 = v15;
    v9 = __swift_project_boxed_opaque_existential_1(v13, v14);
    *(a3 + 24) = v7;
    *(a3 + 32) = v8;
    v10 = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    (*(*(v7 - 8) + 16))(v10, v9, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1BF90DB60(v13, &qword_1EBDE9210, &qword_1BF9BD040);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t ReferenceEquatable.getRoot()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return swift_unknownObjectRetain();
}

void *Transformer.asyncTransform.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  (*(v3 + 32))(v9 + v8, v7, a1);
  return &unk_1BF9BD060;
}

uint64_t sub_1BF90B7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF90B7F0, 0, 0);
}

uint64_t sub_1BF90B7F0()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 24);
  sub_1BF9B45B8();
  v2 = sub_1BF9B45A8();
  v2(v1);

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t SiriSuggestions.AsyncTransformer.asyncTransform.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriSuggestions.AsyncTransformer.init(asyncTransform:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t (*SiriSuggestions.Transformer<>.transform.getter(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v6 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v6 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BF90D54C;
}

void sub_1BF90BA18(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v30 = a5;
  v39 = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v32 = &v30 - v12;
  v14 = *a1;
  v35 = a1[1];
  v36 = v14;
  v34 = a1[2];
  v33 = *(a1 + 24);
  v15 = swift_allocObject();
  *(v15 + 32) = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 48) = -1;
  v31 = dispatch_semaphore_create(0);
  v16 = sub_1BF9B4EB8();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
  (*(v8 + 16))(v10, a2, a3);
  v17 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v18 = (v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v39;
  *(v20 + 4) = a3;
  *(v20 + 5) = v21;
  *(v20 + 6) = v15;
  (*(v8 + 32))(&v20[v17], v10, a3);
  v22 = &v20[v18];
  v23 = v35;
  v24 = v36;
  *v22 = v36;
  *(v22 + 1) = v23;
  v25 = v34;
  *(v22 + 2) = v34;
  LOBYTE(v18) = v33;
  v22[24] = v33;
  v26 = v31;
  *&v20[v19] = v31;

  sub_1BF90DA94(v24, v23, v25, v18);
  v27 = v26;
  sub_1BF90C1F4(0, 0, v32, &unk_1BF9BD210, v20);

  sub_1BF9B5088();
  swift_beginAccess();
  sub_1BF8EE390(v15 + 16, v37, &qword_1EBDE9250, &qword_1BF9BD218);
  if (v38 == 255)
  {
    sub_1BF90DB60(v37, &qword_1EBDE9250, &qword_1BF9BD218);
    sub_1BF90DB0C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {

    v28 = v37[1];
    v29 = v30;
    *v30 = v37[0];
    v29[1] = v28;
    *(v29 + 32) = v38;
  }
}

uint64_t sub_1BF90BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v13;
  *(v8 + 120) = v12;
  *(v8 + 49) = v11;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  *(v8 + 144) = type metadata accessor for SiriSuggestions.Intent(0);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF90BE04, 0, 0);
}

uint64_t sub_1BF90BE04()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 96);
  v3 = (*(*(v0 + 136) + 24))(*(v0 + 128));
  *(v0 + 160) = v4;
  if (v1)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    *v5 = v2;
    v5[1] = v6;
    v5[2] = v7;
    type metadata accessor for SiriSuggestions.AppIntent(0);
    v8 = v2;

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    **(v0 + 152) = v2;
    swift_storeEnumTagMultiPayload();
    v9 = v2;
  }

  v13 = (v3 + *v3);
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_1BF90BF9C;
  v11 = *(v0 + 152);

  return v13(v0 + 16, v11);
}

uint64_t sub_1BF90BF9C()
{
  OUTLINED_FUNCTION_65();
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);

  sub_1BF90DBB4(v3);
  if (v0)
  {
    v4 = sub_1BF90C17C;
  }

  else
  {
    v4 = sub_1BF90C0E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BF90C0E8()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 80);
  swift_beginAccess();
  sub_1BF90DC10(v0 + 16, v1 + 16);
  sub_1BF9B5098();

  OUTLINED_FUNCTION_77();

  return v2();
}

uint64_t sub_1BF90C17C()
{
  OUTLINED_FUNCTION_65();
  sub_1BF9B5098();
  swift_willThrow();

  OUTLINED_FUNCTION_77();

  return v0();
}

uint64_t sub_1BF90C1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1BF8EE390(a3, v21 - v9, &qword_1EBDE8E28, &qword_1BF9BD200);
  v11 = sub_1BF9B4EB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF90DB60(v10, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1BF9B4E28();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1BF9B4B18() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1BF90DB60(a3, &qword_1EBDE8E28, &qword_1BF9BD200);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF90DB60(a3, &qword_1EBDE8E28, &qword_1BF9BD200);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void Array.appendIfNotNil(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = *(v24 + 16);
  v26 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  OUTLINED_FUNCTION_2_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_11();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  (*(v28 + 16))(v31, v23, v26);
  if (__swift_getEnumTagSinglePayload(v31, 1, v25) == 1)
  {
    (*(v28 + 8))(v31, v26);
  }

  else
  {
    (*(v33 + 32))(v40, v31, v25);
    (*(v33 + 16))(v37, v40, v25);
    sub_1BF9B4DC8();
    (*(v33 + 8))(v40, v25);
  }

  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF90C68C(unint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 > 0.0)
  {
    v3 = v2 * 1000000000.0;
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -1.0)
    {
      if (v3 < 1.84467441e19)
      {
        v4 = v3;
        v5 = swift_task_alloc();
        *(v1 + 24) = v5;
        *v5 = v1;
        v5[1] = sub_1BF90C7A8;
        a1 = v4;

        return MEMORY[0x1EEE6DA60](a1);
      }

LABEL_13:
      __break(1u);
      return MEMORY[0x1EEE6DA60](a1);
    }

    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_77();

  return v6();
}

uint64_t sub_1BF90C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  OUTLINED_FUNCTION_77();

  return v8();
}

void sub_1BF90C898()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v72 = v2;
  OUTLINED_FUNCTION_20_6();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_2_0();
  v74 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_11();
  v67 = v7 - v8;
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v59 - v10;
  v75 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_2_0();
  v73 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_11();
  v68 = (v13 - v14);
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = sub_1BF9B44C8();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_11();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v59 - v26;
  sub_1BF9B44B8();
  OUTLINED_FUNCTION_19_6();
  v29 = (v1 + *(v28 + 88));
  os_unfair_lock_lock(v29);
  v66 = *(sub_1BF9B4678() + 28);
  sub_1BF90CD8C(v29 + v66, v17);
  v65 = 0;
  v30 = v4;
  os_unfair_lock_unlock(v29);
  OUTLINED_FUNCTION_19_6();
  v32 = (v1 + *(v31 + 96));
  os_unfair_lock_lock(v32);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9228, &qword_1BF9BD070) + 28);
  v69 = v20;
  v70 = v18;
  v34 = *(v20 + 16);
  v63 = v33;
  v64 = v34;
  v35 = v24;
  v36 = v24;
  v37 = v68;
  v38 = v18;
  v39 = v73;
  v34(v36, v32 + v33, v38);
  os_unfair_lock_unlock(v32);
  v40 = *(v39 + 16);
  v71 = v17;
  v41 = v17;
  v42 = v75;
  v40(v37, v41, v75);
  if (__swift_getEnumTagSinglePayload(v37, 1, v30) == 1)
  {
    v60 = v35;
    v62 = v27;
    (*(v39 + 8))(v37, v42);
LABEL_6:
    OUTLINED_FUNCTION_19_6();
    v51 = *(v1 + *(v50 + 104));
    v52 = v67;
    v51();
    os_unfair_lock_lock(v29);
    v53 = v30;
    sub_1BF90CDFC(v29 + v66, v52, v30);
    os_unfair_lock_unlock(v29);
    os_unfair_lock_lock(v32);
    v54 = v70;
    v55 = *(v69 + 8);
    v56 = v63;
    v55(v32 + v63, v70);
    v57 = v32 + v56;
    v58 = v62;
    v64(v57, v62, v54);
    os_unfair_lock_unlock(v32);
    v55(v60, v54);
    (*(v39 + 8))(v71, v42);
    v55(v58, v54);
    (*(v74 + 32))(v72, v52, v53);
    goto LABEL_7;
  }

  v43 = v61;
  v68 = *(v74 + 32);
  v68(v61, v37, v30);
  sub_1BF9B4488();
  OUTLINED_FUNCTION_19_6();
  v45 = v27;
  if (v46 >= *(v1 + *(v44 + 112)))
  {
    v60 = v35;
    v62 = v27;
    (*(v74 + 8))(v43, v30);
    v42 = v75;
    v39 = v73;
    goto LABEL_6;
  }

  v47 = *(v69 + 8);
  v48 = v35;
  v49 = v70;
  v47(v48, v70);
  (*(v73 + 8))(v71, v75);
  v47(v45, v49);
  v68(v72, v43, v30);
LABEL_7:
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF90CDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF9B50F8();
  (*(*(v6 - 8) + 8))(a1, v6);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a3);
}

uint64_t TTLCache.__allocating_init(wrappedValue:ttl:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  TTLCache.init(wrappedValue:ttl:)(a1, a2, a3);
  return v6;
}

uint64_t *TTLCache.init(wrappedValue:ttl:)(uint64_t a1, uint64_t a2, double a3)
{
  v36 = a2;
  v6 = *v3;
  v7 = sub_1BF9B44C8();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v13 = v12 - v11;
  v14 = *(v6 + 80);
  v15 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = v3 + *(v6 + 88);
  __swift_storeEnumTagSinglePayload(&v35 - v19, 1, 1, v14);
  *v21 = 0;
  v22 = *(sub_1BF9B4678() + 28);
  v23 = sub_1BF9B4688();
  OUTLINED_FUNCTION_72(v23);
  bzero(&v21[v22], *(v24 + 64));
  (*(v17 + 32))(&v21[v22], v20, v15);
  OUTLINED_FUNCTION_20_6();
  v26 = v3 + *(v25 + 96);
  sub_1BF9B44B8();
  *v26 = 0;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9228, &qword_1BF9BD070) + 28);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9230, &qword_1BF9BD078);
  OUTLINED_FUNCTION_72(v28);
  bzero(&v26[v27], *(v29 + 64));
  (*(v9 + 32))(&v26[v27], v13, v7);
  OUTLINED_FUNCTION_20_6();
  v31 = (v3 + *(v30 + 104));
  v32 = v36;
  *v31 = a1;
  v31[1] = v32;
  OUTLINED_FUNCTION_20_6();
  *(v3 + *(v33 + 112)) = a3;
  return v3;
}

uint64_t TTLCache.deinit()
{
  v1 = v0;
  sub_1BF9B50F8();
  sub_1BF9B4678();
  v2 = sub_1BF9B4688();
  sub_1BF90D59C(v2);
  v3 = *(*v0 + 96);
  v4 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9228, &qword_1BF9BD070) + 28);
  sub_1BF9B44C8();
  OUTLINED_FUNCTION_16_3();
  (*(v5 + 8))(v4 + v3);

  return v1;
}

uint64_t TTLCache.__deallocating_deinit()
{
  TTLCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF90D360(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = sub_1BF9B45B8();
  OUTLINED_FUNCTION_72(v8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BF90D45C;

  return sub_1BF90B7C8(a1, a2, v2 + v10, v6, v7);
}

uint64_t sub_1BF90D45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  OUTLINED_FUNCTION_77();

  return v8();
}

uint64_t sub_1BF90D5AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF90D5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF90D64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1BF90D6AC(uint64_t a1)
{
  sub_1BF9B50F8();
  sub_1BF9B4678();
  if (v1 <= 0x3F)
  {
    sub_1BF90D80C(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1BF90D80C(uint64_t a1)
{
  if (!qword_1EDBF54D0)
  {
    sub_1BF9B44C8();
    v1 = sub_1BF9B4678();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBF54D0);
    }
  }
}

unint64_t sub_1BF90D864()
{
  result = qword_1EBDE9248;
  if (!qword_1EBDE9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9248);
  }

  return result;
}

void sub_1BF90D8B8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}