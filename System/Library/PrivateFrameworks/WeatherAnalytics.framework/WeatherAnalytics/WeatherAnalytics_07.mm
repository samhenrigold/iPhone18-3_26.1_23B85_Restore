_BYTE *storeEnumTagSinglePayload for NetworkOperationFailedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C8598C()
{
  result = qword_27CF7D5F0;
  if (!qword_27CF7D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D5F0);
  }

  return result;
}

unint64_t sub_220C859E4()
{
  result = qword_27CF7D5F8;
  if (!qword_27CF7D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D5F8);
  }

  return result;
}

unint64_t sub_220C85A3C()
{
  result = qword_27CF7D600;
  if (!qword_27CF7D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D600);
  }

  return result;
}

uint64_t sub_220C85A90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 97, 7);
}

_BYTE *LocationConditionData.init(locationCondition:temperature:temperatureHigh:temperatureLow:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t sub_220C85BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000220CB6260 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEF68676948657275;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74617265706D6574 && a2 == 0xEE00776F4C657275)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

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

unint64_t sub_220C85D1C(char a1)
{
  result = 0x74617265706D6574;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_220C85DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C85BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C85DD4(uint64_t a1)
{
  v2 = sub_220C86004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C85E10(uint64_t a1)
{
  v2 = sub_220C86004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationConditionData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D608, &qword_220CB1150);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v13[2] = *(v1 + 2);
  v13[3] = v11;
  v13[1] = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C86004();
  sub_220CA1254();
  v18 = v10;
  v17 = 0;
  sub_220C86058();
  OUTLINED_FUNCTION_1_2();
  sub_220CA1104();
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
    v15 = 2;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
    v14 = 3;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C86004()
{
  result = qword_27CF7D610;
  if (!qword_27CF7D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D610);
  }

  return result;
}

unint64_t sub_220C86058()
{
  result = qword_27CF7D618;
  if (!qword_27CF7D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D618);
  }

  return result;
}

uint64_t LocationConditionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D620, &qword_220CB1158);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C86004();
  sub_220CA1234();
  if (!v2)
  {
    v20[1] = 0;
    sub_220C86294();
    sub_220CA1034();
    v11 = v20[2];
    v20[0] = 1;
    v12 = OUTLINED_FUNCTION_1_27(v20);
    v19 = 2;
    v17 = OUTLINED_FUNCTION_1_27(&v19);
    v18 = 3;
    v14 = OUTLINED_FUNCTION_1_27(&v18);
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    v15 = v17;
    *(a2 + 4) = v12;
    *(a2 + 8) = v15;
    *(a2 + 12) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C86294()
{
  result = qword_27CF7D628;
  if (!qword_27CF7D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D628);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationConditionData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD6 && a1[16])
    {
      v2 = *a1 + 213;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0x2B;
      v2 = v3 - 43;
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

uint64_t storeEnumTagSinglePayload for LocationConditionData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD5)
  {
    *result = a2 - 214;
    *(result + 8) = 0;
    if (a3 >= 0xD6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 42;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationConditionData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C86498()
{
  result = qword_27CF7D630;
  if (!qword_27CF7D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D630);
  }

  return result;
}

unint64_t sub_220C864F0()
{
  result = qword_27CF7D638;
  if (!qword_27CF7D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D638);
  }

  return result;
}

unint64_t sub_220C86548()
{
  result = qword_27CF7D640;
  if (!qword_27CF7D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D640);
  }

  return result;
}

uint64_t sub_220C8659C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_220C86638(a1);
  v3 = sub_220C93274(v1);
  MEMORY[0x223D94FE0](v3);

  v4 = sub_220BFBE64(v2, 0x20746567646957, 0xE700000000000000);

  return v4 & 1;
}

WeatherAnalytics::CoarseLocationStatus_optional __swiftcall CoarseLocationStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CoarseLocationStatus.rawValue.getter()
{
  v1 = 0x657372616F63;
  if (*v0 != 1)
  {
    v1 = 0x65736963657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_220C867F4()
{
  result = qword_27CF7D648;
  if (!qword_27CF7D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D648);
  }

  return result;
}

uint64_t sub_220C8686C@<X0>(uint64_t *a1@<X8>)
{
  result = CoarseLocationStatus.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CoarseLocationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C86A10()
{
  result = qword_2812CFC98;
  if (!qword_2812CFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC98);
  }

  return result;
}

WeatherAnalytics::DeviceOrientation_optional __swiftcall DeviceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220C86AD0()
{
  result = qword_27CF7D650;
  if (!qword_27CF7D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceOrientation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220C86D3C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D670);
  __swift_project_value_buffer(v0, qword_27CF7D670);
  return sub_220CA0244();
}

uint64_t NetworkOperationEvent.networkEventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t NetworkOperationEvent.networkEventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t NetworkOperationEvent.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NetworkOperationEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NetworkOperationEvent(uint64_t a1)
{
  result = qword_2812CFBB0;
  if (!qword_2812CFBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NetworkOperationEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkOperationEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t NetworkOperationEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = *(type metadata accessor for NetworkOperationEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 104);

  return v6(a1 + v4, v2);
}

uint64_t NetworkOperationEvent.Model.networkEventData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_220C32848(v7, &v6);
}

uint64_t NetworkOperationEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 84);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
}

__n128 NetworkOperationEvent.Model.init(networkEventData:privateUserData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 4);
  v6 = *(a2 + 20);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v9;
  *(a3 + 64) = v3;
  *(a3 + 72) = v4;
  *(a3 + 80) = v5;
  *(a3 + 84) = v6;
  return result;
}

uint64_t sub_220C871A0(uint64_t a1)
{
  v2 = sub_220C87450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C871DC(uint64_t a1)
{
  v2 = sub_220C87450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkOperationEvent.Model.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D690, &qword_220CB1790);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = v1[1];
  v24 = *v1;
  v25 = v10;
  v11 = v1[3];
  v26 = v1[2];
  v27 = v11;
  v12 = *(v1 + 9);
  v16 = *(v1 + 8);
  v28 = v12;
  v15 = *(v1 + 20);
  v14 = *(v1 + 84);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C32848(&v24, v23);
  sub_220C87450();
  sub_220CA1254();
  v23[0] = v24;
  v23[1] = v25;
  v23[2] = v26;
  v23[3] = v27;
  v22 = 0;
  sub_220C3290C();
  sub_220CA1104();
  OUTLINED_FUNCTION_1_28();
  if (!v2)
  {
    v18 = v16;
    v19 = v28;
    v20 = v15;
    v21 = v14;
    v17 = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C87450()
{
  result = qword_27CF7D698;
  if (!qword_27CF7D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D698);
  }

  return result;
}

uint64_t NetworkOperationEvent.Model.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D6A0, &qword_220CB1798);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C87450();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v5 = v30;
  v20 = 0;
  sub_220C328B4();
  OUTLINED_FUNCTION_3_10(&type metadata for NetworkOperationEventData, &v20);
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v16 = 1;
  sub_220BFF730();
  OUTLINED_FUNCTION_3_10(&type metadata for PrivateUserData, &v16);
  v6 = OUTLINED_FUNCTION_1_15();
  v7(v6);
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v25 = v19;
  v12[0] = v26;
  v12[1] = v27;
  v12[2] = v28;
  v12[3] = v29;
  v12[4] = v17;
  LODWORD(v12[5]) = v18;
  BYTE4(v12[5]) = v19;
  memcpy(v5, v12, 0x55uLL);
  sub_220C876DC(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_3_19();
  v13[4] = v8;
  v14 = v9;
  v15 = v10;
  return sub_220C87714(v13);
}

void sub_220C877AC(uint64_t a1)
{
  sub_220C878A0(319, &qword_2812D0E70, sub_220C328B4, sub_220C3290C, &type metadata for NetworkOperationEventData);
  if (v1 <= 0x3F)
  {
    sub_220C878A0(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C878A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C87924(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 85))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_220C87964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 85) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 85) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkOperationEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C87AB0()
{
  result = qword_27CF7D6A8;
  if (!qword_27CF7D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D6A8);
  }

  return result;
}

unint64_t sub_220C87B08()
{
  result = qword_27CF7D6B0;
  if (!qword_27CF7D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D6B0);
  }

  return result;
}

unint64_t sub_220C87B60()
{
  result = qword_27CF7D6B8;
  if (!qword_27CF7D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D6B8);
  }

  return result;
}

uint64_t sub_220C87C7C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D6F0);
  __swift_project_value_buffer(v0, qword_27CF7D6F0);
  return sub_220CA0244();
}

uint64_t ReportWeatherExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ReportWeatherExposureEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ReportWeatherExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherExposureEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_12_6() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t ReportWeatherExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherExposureEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_12_6() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t ReportWeatherExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for ReportWeatherExposureEvent(0);
  v5 = *(v4 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

uint64_t ReportWeatherExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t ReportWeatherExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherExposureEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReportWeatherExposureEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ReportWeatherExposureEvent.Model.init(eventData:timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v10 = *(a3 + 20);
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  (*(v11 + 32))(a4, a1);
  v12 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
  v13 = *(v12 + 20);
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v14 + 32))(a4 + v13, a2);
  v16 = a4 + *(v12 + 24);
  *v16 = v7;
  *(v16 + 8) = v8;
  *(v16 + 16) = v9;
  *(v16 + 20) = v10;
  return result;
}

uint64_t sub_220C88378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220C884A0(char a1)
{
  if (!a1)
  {
    return 0x746144746E657665;
  }

  if (a1 == 1)
  {
    return 0x74614464656D6974;
  }

  return 0x5565746176697270;
}

uint64_t sub_220C8850C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C88378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C88534(uint64_t a1)
{
  v2 = sub_220C887D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C88570(uint64_t a1)
{
  v2 = sub_220C887D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReportWeatherExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D708, &qword_220CB19D8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C887D0();
  sub_220CA1254();
  LOBYTE(v29[0]) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  v13 = sub_220C04F84(v11, v12, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_16(v3, v29, v14, v15, v13);
  if (!v2)
  {
    v16 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
    v17 = *(v16 + 20);
    LOBYTE(v29[0]) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    v20 = sub_220C04F84(v18, v19, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_16(v3 + v17, v29, v21, v22, v20);
    v23 = v3 + *(v16 + 24);
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    LOBYTE(v23) = *(v23 + 20);
    v29[0] = v24;
    v29[1] = v25;
    v30 = v26;
    v31 = v23;
    v28[7] = 2;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C887D0()
{
  result = qword_27CF7D710;
  if (!qword_27CF7D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D710);
  }

  return result;
}

uint64_t ReportWeatherExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v29 = v5;
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v8 = v7 - v6;
  v32 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v28 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v31 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D718, &qword_220CB19E0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v18 = v17 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C887D0();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_7();
  sub_220C04F84(v19, v20, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v28 + 32))(v18, v31, v32);
  LOBYTE(v33) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v21, v22, MEMORY[0x277CEAEE0]);
  sub_220CA1034();
  (*(v29 + 32))(v18 + *(v14 + 20), v8, v30);
  sub_220BFF730();
  sub_220CA1034();
  v23 = OUTLINED_FUNCTION_7_14();
  v24(v23);
  v25 = v18 + *(v14 + 24);
  *v25 = v33;
  *(v25 + 8) = v34;
  *(v25 + 16) = v35;
  *(v25 + 20) = v36;
  sub_220C88C78(v18, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C88CDC(v18);
}

uint64_t sub_220C88C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C88CDC(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C88DA0(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C43144(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220C88E64(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C88FD0()
{
  result = qword_27CF7D740;
  if (!qword_27CF7D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D740);
  }

  return result;
}

unint64_t sub_220C89028()
{
  result = qword_27CF7D748;
  if (!qword_27CF7D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D748);
  }

  return result;
}

unint64_t sub_220C89080()
{
  result = qword_27CF7D750;
  if (!qword_27CF7D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D750);
  }

  return result;
}

uint64_t NetworkOperationFailedEventData.errorDescriptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NetworkOperationFailedEventData.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NetworkOperationFailedEventData.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NetworkOperationFailedEventData.init(errorDescriptions:duration:cellularRadioAccessTechnology:bundleIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_220C89234(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000220CB5010 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001DLL && 0x8000000220CB5030 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x8000000220CB5050 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

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

unint64_t sub_220C89398(char a1)
{
  result = 0x6E6F697461727564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_220C8943C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C89234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C89464(uint64_t a1)
{
  v2 = sub_220C89710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C894A0(uint64_t a1)
{
  v2 = sub_220C89710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkOperationFailedEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D758, &unk_220CB1C10);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *v1;
  v16 = v1[1];
  v15 = *(v1 + 16);
  v10 = v1[3];
  v14[1] = v1[4];
  v14[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_220C89710();

  sub_220CA1254();
  v22 = v9;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD60, &qword_220CA5758);
  sub_220C32788(&qword_2812CE7A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_1_29();
  sub_220CA1094();

  if (!v11)
  {
    v12 = v15;
    v20 = 1;
    OUTLINED_FUNCTION_1_29();
    sub_220CA1124();
    v19 = v12;
    v18 = 2;
    sub_220C01050();
    OUTLINED_FUNCTION_1_29();
    sub_220CA1104();
    v17 = 3;
    OUTLINED_FUNCTION_1_29();
    sub_220CA10C4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C89710()
{
  result = qword_2812CEC68[0];
  if (!qword_2812CEC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CEC68);
  }

  return result;
}

uint64_t NetworkOperationFailedEventData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D760, &qword_220CB1C20);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C89710();
  sub_220CA1234();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD60, &qword_220CA5758);
    v25 = 0;
    sub_220C32788(&qword_27CF7BD70, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_2_21();
    sub_220CA0FC4();
    v12 = v26;
    v24 = 1;
    OUTLINED_FUNCTION_2_21();
    v13 = sub_220CA1054();
    v22 = 2;
    sub_220C327F4();
    OUTLINED_FUNCTION_2_21();
    sub_220CA1034();
    v20 = v23;
    v21 = 3;
    OUTLINED_FUNCTION_2_21();
    v14 = sub_220CA0FF4();
    v16 = v15;
    v17 = *(v7 + 8);
    v19 = v14;
    v17(v10, v5);
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v20;
    *(a2 + 24) = v19;
    *(a2 + 32) = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_220C89A3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_220C89A7C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for NetworkOperationFailedEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C89BB4()
{
  result = qword_27CF7D768;
  if (!qword_27CF7D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D768);
  }

  return result;
}

unint64_t sub_220C89C0C()
{
  result = qword_2812CEC58;
  if (!qword_2812CEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC58);
  }

  return result;
}

unint64_t sub_220C89C64()
{
  result = qword_2812CEC60;
  if (!qword_2812CEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC60);
  }

  return result;
}

uint64_t MapStallStatisticsData.activeTaskCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MapStallStatisticsData.init(activeTaskCount:tasksStalled:avgTimeTaskStalled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_220C89D70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6154657669746361 && a2 == 0xEF746E756F436B73;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617453736B736174 && a2 == 0xEC00000064656C6CLL;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000220CB62F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220C89E94(char a1)
{
  if (!a1)
  {
    return 0x6154657669746361;
  }

  if (a1 == 1)
  {
    return 0x617453736B736174;
  }

  return 0xD000000000000012;
}

uint64_t sub_220C89F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C89D70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C89F34(uint64_t a1)
{
  v2 = sub_220C8A144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C89F70(uint64_t a1)
{
  v2 = sub_220C8A144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapStallStatisticsData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D770, &qword_220CB1E50);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C8A144();
  sub_220CA1254();
  v15 = 0;
  v10 = v12[3];
  sub_220CA10B4();
  if (!v10)
  {
    v14 = 1;
    sub_220CA1124();
    v13 = 2;
    sub_220CA1124();
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_220C8A144()
{
  result = qword_27CF7D778;
  if (!qword_27CF7D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D778);
  }

  return result;
}

uint64_t MapStallStatisticsData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D780, &qword_220CB1E58);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C8A144();
  sub_220CA1234();
  if (!v2)
  {
    v20 = 0;
    OUTLINED_FUNCTION_0_26();
    v11 = sub_220CA0FE4();
    v13 = v12;
    v19 = 1;
    OUTLINED_FUNCTION_0_26();
    v17 = sub_220CA1054();
    v18 = 2;
    OUTLINED_FUNCTION_0_26();
    v15 = sub_220CA1054();
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v17;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220C8A388(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220C8A3A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MapStallStatisticsData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C8A4C4()
{
  result = qword_27CF7D788;
  if (!qword_27CF7D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D788);
  }

  return result;
}

unint64_t sub_220C8A51C()
{
  result = qword_27CF7D790;
  if (!qword_27CF7D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D790);
  }

  return result;
}

unint64_t sub_220C8A574()
{
  result = qword_27CF7D798;
  if (!qword_27CF7D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D798);
  }

  return result;
}

uint64_t sub_220C8A5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC0, &qword_220CB2070);
  OUTLINED_FUNCTION_14_1(v9);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_220C8E43C(a3, v25 - v11, &qword_27CF7BBC0, &qword_220CB2070);
  v13 = sub_220CA0D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_220C71714(v12, &qword_27CF7BBC0, &qword_220CB2070);
  }

  else
  {
    sub_220CA0D24();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_220CA0D04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_220CA0C44() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_220C71714(a3, &qword_27CF7BBC0, &qword_220CB2070);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_220C71714(a3, &qword_27CF7BBC0, &qword_220CB2070);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_220C8A8A4()
{
  type metadata accessor for WidgetTimelineTelemetryManager.SerialActor();
  swift_allocObject();
  result = sub_220C8A940();
  qword_2812CEF18 = result;
  return result;
}

uint64_t sub_220C8A908()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_220C8A940()
{
  v9 = sub_220CA0DD4();
  v0 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_220CA0E64();
  MEMORY[0x28223BE20](v3);
  v4 = sub_220CA0B94();
  MEMORY[0x28223BE20](v4 - 8);
  v8 = sub_220BF9260(0, &qword_2812CE748, 0x277D85C90);
  sub_220CA0B64();
  v11 = MEMORY[0x277D84F90];
  sub_220C8E5EC(&qword_2812CE750, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D7A8, &unk_220CB2290);
  sub_220BF8A20(&qword_2812CE790, &qword_27CF7D7A8, &unk_220CB2290);
  sub_220CA0F14();
  (*(v0 + 104))(v2, *MEMORY[0x277D85268], v9);
  v5 = sub_220CA0E74();
  v6 = v10;
  *(v10 + 16) = v5;
  return v6;
}

uint64_t sub_220C8ABAC()
{
  if (qword_2812CEF10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_220C8AC08(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WidgetTimelineTelemetryManager.SerialActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t WidgetTimelineTelemetryManager.__allocating_init(flushManager:coordinator:)(uint64_t a1, void *a2)
{
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_34();
  WidgetTimelineTelemetryManager.init(flushManager:coordinator:)(v4, a2);
  return v2;
}

uint64_t WidgetTimelineTelemetryManager.init(flushManager:coordinator:)(void *a1, void *a2)
{
  v3 = v2;
  sub_220BF92A0(a1, v9);
  sub_220BF92A0(a2, v8);
  type metadata accessor for WidgetTimelineTelemetryManager.Actor(0);
  v6 = swift_allocObject();
  sub_220C8B56C(v9, v8, 10.0);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v3 + 16) = v6;
  return v3;
}

uint64_t type metadata accessor for WidgetTimelineTelemetryManager.Actor(uint64_t a1)
{
  result = qword_2812CEE40;
  if (!qword_2812CEE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall WidgetTimelineTelemetryManager.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC0, &qword_220CB2070);
  OUTLINED_FUNCTION_14_1(v1);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v5 = sub_220CA0D34();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = qword_2812CEF10;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_16_7(&qword_2812CEF10);
  }

  v7 = qword_2812CEF18;
  OUTLINED_FUNCTION_12_7();
  v10 = sub_220C8E5EC(v8, v9, &unk_220CB2238);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v10;
  v11[4] = v0;

  sub_220C8A5C8(0, 0, v4, &unk_220CB2080, v11);
}

uint64_t sub_220C8AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_2812CEF10 != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetTimelineTelemetryManager.SerialActor();
  sub_220C8E5EC(&qword_2812CEF08, type metadata accessor for WidgetTimelineTelemetryManager.SerialActor, &unk_220CB2238);
  v6 = sub_220CA0D04();

  return MEMORY[0x2822009F8](sub_220C8AF94, v6, v5);
}

uint64_t sub_220C8AF94()
{
  OUTLINED_FUNCTION_1_3();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_220C8B024;

  return sub_220C8BA94();
}

uint64_t sub_220C8B024()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_2_3();

  return v3();
}

uint64_t WidgetTimelineTelemetryManager.finish(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC0, &qword_220CB2070);
  OUTLINED_FUNCTION_14_1(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_220CA0D34();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);

  sub_220C02FC8(a1);
  if (qword_2812CEF10 != -1)
  {
    OUTLINED_FUNCTION_16_7(&qword_2812CEF10);
  }

  v10 = qword_2812CEF18;
  OUTLINED_FUNCTION_12_7();
  v13 = sub_220C8E5EC(v11, v12, &unk_220CB2238);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v13;
  v14[4] = v2;
  v14[5] = a1;
  v14[6] = a2;

  sub_220C8A5C8(0, 0, v8, &unk_220CB2090, v14);
}

uint64_t sub_220C8B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (qword_2812CEF10 != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetTimelineTelemetryManager.SerialActor();
  sub_220C8E5EC(&qword_2812CEF08, type metadata accessor for WidgetTimelineTelemetryManager.SerialActor, &unk_220CB2238);
  v8 = sub_220CA0D04();

  return MEMORY[0x2822009F8](sub_220C8B354, v8, v7);
}

uint64_t sub_220C8B354()
{
  OUTLINED_FUNCTION_1_3();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_220C8B3EC;

  return sub_220C8C07C();
}

uint64_t sub_220C8B3EC()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_2_3();

  return v3();
}

uint64_t WidgetTimelineTelemetryManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_220C8B56C(__int128 *a1, __int128 *a2, double a3)
{
  v4 = v3;
  sub_220CA0DD4();
  OUTLINED_FUNCTION_3();
  v27 = v7;
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v26 = v9 - v8;
  sub_220CA0DC4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v11 = sub_220CA0B94();
  v12 = OUTLINED_FUNCTION_14_1(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v13 = sub_220C9F804();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v19 = v18 - v17;
  swift_defaultActor_initialize();
  sub_220C9F7F4();
  v20 = sub_220C9F7E4();
  v22 = v21;
  (*(v15 + 8))(v19, v13);
  *(v4 + 112) = v20;
  *(v4 + 120) = v22;
  sub_220BF9260(0, &qword_2812D1740, 0x277D85C78);
  sub_220CA0B74();
  sub_220C8E5EC(&qword_2812D0F58, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CCD0, &qword_220CACAE0);
  sub_220BF8A20(&qword_2812D0F80, &qword_27CF7CCD0, &qword_220CACAE0);
  sub_220CA0F14();
  (*(v27 + 104))(v26, *MEMORY[0x277D85260], v28);
  *(v4 + 216) = sub_220CA0E04();
  v23 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  v24 = sub_220C9F7D4();
  __swift_storeEnumTagSinglePayload(v4 + v23, 1, 1, v24);
  *(v4 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task) = 0;
  sub_220BF9210(a1, v4 + 128);
  sub_220BF9210(a2, v4 + 168);
  *(v4 + 208) = a3;
  return v4;
}

uint64_t sub_220C8B8C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18_3(v3);
  *v4 = v5;
  v4[1] = sub_220C28A7C;
  v6 = OUTLINED_FUNCTION_17_5();

  return sub_220C8AEA4(v6, v7, v1, v2);
}

uint64_t sub_220C8B968()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_18_3(v5);
  *v6 = v7;
  v6[1] = sub_220C8E634;
  v8 = OUTLINED_FUNCTION_17_5();

  return sub_220C8B260(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_220C8BA94()
{
  OUTLINED_FUNCTION_1_3();
  v1[10] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  OUTLINED_FUNCTION_14_1(v2);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220C8BB2C()
{
  v16 = v0;
  if (qword_2812D1768 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2812D1768);
  }

  v1 = v0[10];
  v2 = sub_220CA0A84();
  v0[13] = __swift_project_value_buffer(v2, qword_2812D1770);

  v3 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  if (OUTLINED_FUNCTION_26_0())
  {
    v4 = v0[10];
    OUTLINED_FUNCTION_25_0();
    v15 = OUTLINED_FUNCTION_7_15();
    *v1 = 136446210;
    *(v1 + 4) = sub_220BFC484(*(v4 + 112), *(v4 + 120), &v15);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  __swift_project_boxed_opaque_existential_1((v0[10] + 168), *(v0[10] + 192));
  v13 = (OUTLINED_FUNCTION_34() + 8);
  v14 = (*v13 + **v13);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_33(v10);

  return v14(v11);
}

uint64_t sub_220C8BD04()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_10_10();
  *v2 = v1;
  *(v1 + 72) = v3;
  *(v1 + 64) = v0;
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_220C8BE00()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  swift_beginAccess();
  sub_220C8E43C(v2 + v3, v1, &qword_27CF7BC30, &qword_220CA4AE0);
  v4 = sub_220C9F7D4();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) != 1)
  {
    v4 = *(v0 + 80);
    sub_220C71714(*(v0 + 96), &qword_27CF7BC30, &qword_220CA4AE0);

    v7 = sub_220CA0A64();
    sub_220CA0DA4();
    OUTLINED_FUNCTION_30();
    if (OUTLINED_FUNCTION_26_0())
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  sub_220C71714(*(v0 + 96), &qword_27CF7BC30, &qword_220CA4AE0);
  sub_220C9F7B4();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v4);
  swift_beginAccess();
  sub_220C8E3CC(v6, v2 + v3);
  swift_endAccess();

  v7 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_40();
  v8 = OUTLINED_FUNCTION_26_0();
  if (v5 != 1)
  {
    if (v8)
    {
LABEL_9:
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_15_8();
      *(v4 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v22, v23, v24, v25, v26, v27, v28, v29, v37);
      OUTLINED_FUNCTION_2_22();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      OUTLINED_FUNCTION_0_27();
      OUTLINED_FUNCTION_8_14();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v4 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v9, v10, v11, v12, v13, v14, v15, v16, v37);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  sub_220C8CBBC();
LABEL_11:

  OUTLINED_FUNCTION_2_3();

  return v35();
}

uint64_t sub_220C8C07C()
{
  OUTLINED_FUNCTION_1_3();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_220C9F7D4();
  v1[5] = v4;
  OUTLINED_FUNCTION_14(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_31();
  v6 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_220C8C124()
{
  OUTLINED_FUNCTION_23();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 168), *(*(v0 + 32) + 192));
  v4 = (OUTLINED_FUNCTION_34() + 16);
  v5 = (*v4 + **v4);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_33(v1);

  return v5(v2);
}

uint64_t sub_220C8C238()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_10_10();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;
  *(v6 + 112) = v5;

  v7 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220C8C334()
{
  OUTLINED_FUNCTION_23();
  if (qword_2812D1768 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2812D1768);
  }

  v1 = v0[4];
  v2 = sub_220CA0A84();
  v0[9] = __swift_project_value_buffer(v2, qword_2812D1770);

  v3 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  if (OUTLINED_FUNCTION_26_0())
  {
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v1 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v4, v5, v6, v7, v8, v9, v10, v11, v20);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  sub_220C9F7B4();
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_28_0(v17);
  OUTLINED_FUNCTION_41();

  return sub_220C8CCE8();
}

uint64_t sub_220C8C470()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_2();
  v2 = v1;
  OUTLINED_FUNCTION_10_10();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  *(v2 + 113) = v10;

  v11 = *(v6 + 8);
  *(v2 + 88) = v11;
  *(v2 + 96) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_220C8C5E0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 113);
  v2 = *(v0 + 32);

  v3 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  v4 = OUTLINED_FUNCTION_26_0();
  if (v1 != 1)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_13:
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v2 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v36, v37, v38, v39, v40, v41, v42, v43, v51);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
LABEL_14:

    sub_220C8CAC4(*(v0 + 32), *(v0 + 16));

    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_41();

    __asm { BRAA            X1, X16 }
  }

  if (v4)
  {
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v2 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v5, v6, v7, v8, v9, v10, v11, v12, v51);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  v18 = *(v0 + 112);
  v2 = *(v0 + 32);

  v3 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_26_0();
  if (v18 != 1)
  {
    if (!v19)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v19)
  {
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v2 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v20, v21, v22, v23, v24, v25, v26, v27, v51);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  sub_220C8CBBC();
  sub_220C9F7B4();
  v33 = swift_task_alloc();
  *(v0 + 104) = v33;
  *v33 = v0;
  OUTLINED_FUNCTION_28_0(v33);
  OUTLINED_FUNCTION_41();

  return sub_220C8CCE8();
}

uint64_t sub_220C8C838()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_10_10();
  *v2 = v1;
  v4 = v3[11];
  v5 = v3[7];
  v6 = v3[5];
  v7 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v10 + 114) = v9;

  v4(v5, v6);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_220C8C9A4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 114);
  v2 = *(v0 + 32);

  v3 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  v4 = OUTLINED_FUNCTION_26_0();
  if (v1 == 1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_15_8();
  *(v2 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v5, v6, v7, v8, v9, v10, v11, v12, v20);
  OUTLINED_FUNCTION_2_22();
  _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
  OUTLINED_FUNCTION_0_27();
  OUTLINED_FUNCTION_8_14();
LABEL_6:

  sub_220C8CAC4(*(v0 + 32), *(v0 + 16));

  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_41();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_220C8CAC4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_220C9F7D4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  swift_beginAccess();
  sub_220C8E3CC(v6, a1 + v8);
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task) = 0;

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_220C8CBBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  OUTLINED_FUNCTION_14_1(v1);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  swift_beginAccess();
  sub_220C8E43C(v0 + v5, v4, &qword_27CF7BC30, &qword_220CA4AE0);
  v6 = sub_220C9F7D4();
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v4, 1, v6);
  result = sub_220C71714(v4, &qword_27CF7BC30, &qword_220CA4AE0);
  if (v5 != 1)
  {
    v8 = v0[20];
    __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
    v9 = OUTLINED_FUNCTION_34();
    *(v0 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task) = v10(v9, v8);
  }

  return result;
}

uint64_t sub_220C8CCE8()
{
  OUTLINED_FUNCTION_1_3();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_220CA0B54();
  v1[14] = v3;
  OUTLINED_FUNCTION_14(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_31();
  v5 = sub_220CA0B94();
  v1[17] = v5;
  OUTLINED_FUNCTION_14(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_31();
  v7 = sub_220CA0B44();
  v1[20] = v7;
  OUTLINED_FUNCTION_14(v7);
  v1[21] = v8;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = sub_220CA0BB4();
  v1[24] = v9;
  OUTLINED_FUNCTION_14(v9);
  v1[25] = v10;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = sub_220CA0E14();
  v1[28] = v11;
  OUTLINED_FUNCTION_14(v11);
  v1[29] = v12;
  v1[30] = OUTLINED_FUNCTION_31();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  OUTLINED_FUNCTION_14_1(v13);
  v1[31] = OUTLINED_FUNCTION_31();
  v14 = sub_220C9F7D4();
  v1[32] = v14;
  OUTLINED_FUNCTION_14(v14);
  v1[33] = v15;
  v1[34] = OUTLINED_FUNCTION_31();
  v16 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_220C8CF5C()
{
  v87 = v0;
  if (qword_2812D1768 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2812D1768);
  }

  v1 = sub_220CA0A84();
  v2 = __swift_project_value_buffer(v1, qword_2812D1770);
  *(v0 + 35) = v2;

  v3 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_40();
  if (OUTLINED_FUNCTION_26_0())
  {
    v4 = *(v0 + 13);
    v5 = OUTLINED_FUNCTION_25_0();
    v6 = OUTLINED_FUNCTION_24_0();
    v86 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_220BFC484(*(v4 + 112), *(v4 + 120), &v86);
    OUTLINED_FUNCTION_35();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_6_13();
  }

  v12 = *(v0 + 31);
  v13 = *(v0 + 32);
  v14 = *(v0 + 13);
  v15 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  swift_beginAccess();
  sub_220C8E43C(v14 + v15, v12, &qword_27CF7BC30, &qword_220CA4AE0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220C71714(*(v0 + 31), &qword_27CF7BC30, &qword_220CA4AE0);
LABEL_20:

    v55 = sub_220CA0A64();
    sub_220CA0DA4();
    OUTLINED_FUNCTION_40();
    if (OUTLINED_FUNCTION_26_0())
    {
      v56 = *(v0 + 13);
      OUTLINED_FUNCTION_25_0();
      v86 = OUTLINED_FUNCTION_7_15();
      *v2 = 136446210;
      *(v2 + 4) = sub_220BFC484(*(v56 + 112), *(v56 + 120), &v86);
      OUTLINED_FUNCTION_2_22();
      _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
      OUTLINED_FUNCTION_0_27();
      OUTLINED_FUNCTION_8_14();
    }

    v62 = 1;
    goto LABEL_23;
  }

  v16 = *(v0 + 13);
  (*(*(v0 + 33) + 32))(*(v0 + 34), *(v0 + 31), *(v0 + 32));
  v17 = *(v16 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task);
  *(v0 + 36) = v17;
  if (!v17)
  {
    (*(*(v0 + 33) + 8))(*(v0 + 34), *(v0 + 32));
    goto LABEL_20;
  }

  v18 = *(v0 + 13);

  sub_220C9F774();
  v0[37] = v19;
  v20 = *(v18 + 208);
  v0[38] = v20;
  v21 = v20 - v19;
  if (v20 - v19 > 0.0)
  {
    v22 = *(v0 + 29);
    v23 = *(v0 + 30);
    v24 = *(v0 + 28);
    v25 = *(v0 + 13);
    v84 = *(v25 + 112);
    v85 = v17;
    *(v0 + 39) = v84;
    v83 = *(v25 + 120);
    *(v0 + 40) = v83;
    sub_220BF9260(0, &qword_2812CE760, 0x277D85CA0);
    *(v0 + 11) = MEMORY[0x277D84F90];
    sub_220C8E5EC(&qword_2812CE768, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D7A0, &unk_220CB2268);
    sub_220BF8A20(&qword_2812CE798, &qword_27CF7D7A0, &unk_220CB2268);
    sub_220CA0F14();
    *(v0 + 41) = sub_220CA0E24();
    (*(v22 + 8))(v23, v24);

    v26 = sub_220CA0A64();
    sub_220CA0DA4();
    OUTLINED_FUNCTION_40();
    if (OUTLINED_FUNCTION_26_0())
    {
      v27 = swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_24_0();
      v86 = v28;
      OUTLINED_FUNCTION_32(3.8521e-34);
      *(v27 + 14) = sub_220BFC484(v84, v83, &v86);
      OUTLINED_FUNCTION_35();
      _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6_13();
    }

    ObjectType = swift_getObjectType();
    *(v0 + 42) = ObjectType;
    sub_220CA0BA4();
    v35 = v21 * 1000.0;
    if (COERCE_UNSIGNED_INT64(v21 * 1000.0) >> 52 > 0x7FE)
    {
      __break(1u);
    }

    else if (v35 > -9.22337204e18)
    {
      v82 = ObjectType;
      if (v35 < 9.22337204e18)
      {
        v37 = *(v0 + 26);
        v36 = *(v0 + 27);
        v38 = *(v0 + 24);
        v39 = *(v0 + 25);
        v40 = *(v0 + 23);
        v75 = *(v0 + 22);
        v42 = *(v0 + 20);
        v41 = *(v0 + 21);
        v80 = *(v0 + 18);
        v81 = *(v0 + 17);
        v76 = *(v0 + 19);
        v77 = *(v0 + 16);
        v78 = *(v0 + 15);
        v79 = *(v0 + 14);
        *v40 = v35;
        (*(v41 + 104))(v40, *MEMORY[0x277D85178], v42);
        MEMORY[0x223D94F40](v37, v40);
        v43 = *(v41 + 8);
        v44 = OUTLINED_FUNCTION_37();
        v43(v44);
        v74 = *(v39 + 8);
        v74(v37, v38);
        sub_220C8DC40(v40);
        sub_220C8DCB4(v75);
        MEMORY[0x223D95200](v36, v40, v75, v82);
        (v43)(v75, v42);
        v45 = OUTLINED_FUNCTION_37();
        v43(v45);
        v74(v36, v38);
        v46 = swift_allocObject();
        *(v46 + 16) = v21;
        *(v46 + 24) = v84;
        *(v46 + 32) = v83;
        *(v46 + 40) = v85;
        *(v0 + 6) = sub_220C8E3BC;
        *(v0 + 7) = v46;
        *(v0 + 2) = MEMORY[0x277D85DD0];
        *(v0 + 3) = 1107296256;
        *(v0 + 4) = sub_220C01EFC;
        *(v0 + 5) = &block_descriptor_3;
        v47 = _Block_copy(v0 + 2);

        sub_220CA0B64();
        sub_220C8DEC8();
        sub_220CA0E34();
        _Block_release(v47);
        (*(v78 + 8))(v77, v79);
        (*(v80 + 8))(v76, v81);

        sub_220CA0E54();

        v48 = sub_220CA0A64();
        sub_220CA0DA4();

        if (OUTLINED_FUNCTION_26_0())
        {
          swift_slowAlloc();
          v86 = OUTLINED_FUNCTION_7_15();
          *v82 = 134218242;
          *(v82 + 4) = v21;
          *(v82 + 12) = 2082;
          *(v82 + 14) = sub_220BFC484(v84, v83, &v86);
          OUTLINED_FUNCTION_2_22();
          _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
          OUTLINED_FUNCTION_0_27();
          OUTLINED_FUNCTION_8_14();
        }

        v54 = swift_task_alloc();
        *(v0 + 43) = v54;
        *v54 = v0;
        v54[1] = sub_220C8D8A8;

        return MEMORY[0x282200460]();
      }

LABEL_32:
      __break(1u);
      return MEMORY[0x282200460]();
    }

    __break(1u);
    goto LABEL_32;
  }

  v65 = sub_220CA0A64();
  v66 = sub_220CA0DA4();

  v67 = os_log_type_enabled(v65, v66);
  v69 = *(v0 + 33);
  v68 = *(v0 + 34);
  v70 = *(v0 + 32);
  if (v67)
  {
    v71 = *(v0 + 13);
    v72 = OUTLINED_FUNCTION_25_0();
    v86 = OUTLINED_FUNCTION_24_0();
    v73 = v86;
    *v72 = 136446210;
    *(v72 + 4) = sub_220BFC484(*(v71 + 112), *(v71 + 120), &v86);
    _os_log_impl(&dword_220BF4000, v65, v66, "No time left to wait on the flush - %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {
  }

  (*(v69 + 8))(v68, v70);
  v62 = 0;
LABEL_23:
  OUTLINED_FUNCTION_39(*(v0 + 34));

  v63 = *(v0 + 1);

  return v63(v62);
}

uint64_t sub_220C8D8A8()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220C8D9A0()
{
  isCancelled = swift_task_isCancelled();
  if (isCancelled)
  {

    v3 = sub_220CA0A64();
    v4 = sub_220CA0DA4();

    if (os_log_type_enabled(v3, v4))
    {
      OUTLINED_FUNCTION_29_0();
      v5 = swift_slowAlloc();
      v6 = OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_32(3.8521e-34);
      v7 = OUTLINED_FUNCTION_37();
      *(v5 + 14) = sub_220BFC484(v7, v8, v9);
      OUTLINED_FUNCTION_35();
      v15 = 22;
LABEL_6:
      _os_log_impl(v10, v11, v12, v13, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6_13();

      swift_unknownObjectRelease();

      (*(v1 + 8))();
      goto LABEL_8;
    }
  }

  else
  {
    sub_220CA0E44();

    v3 = sub_220CA0A64();
    v16 = sub_220CA0DA4();

    if (os_log_type_enabled(v3, v16))
    {
      OUTLINED_FUNCTION_29_0();
      v17 = OUTLINED_FUNCTION_25_0();
      v6 = OUTLINED_FUNCTION_24_0();
      *v17 = 136446210;
      v18 = OUTLINED_FUNCTION_37();
      *(v17 + 4) = sub_220BFC484(v18, v19, v20);
      OUTLINED_FUNCTION_35();
      v15 = 12;
      goto LABEL_6;
    }
  }

  v22 = v0[33];
  v21 = v0[34];
  v23 = v0[32];
  swift_unknownObjectRelease();

  (*(v22 + 8))(v21, v23);
LABEL_8:
  OUTLINED_FUNCTION_39(v0[34]);

  v24 = v0[1];

  return v24((isCancelled & 1) == 0);
}

uint64_t sub_220C8DC40@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_220CA0B44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220C8DCB4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_220CA0B44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220C8DD2C(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v8 = sub_220CA0A84();
  __swift_project_value_buffer(v8, qword_2812D1770);

  v9 = sub_220CA0A64();
  v10 = sub_220CA0D94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 134218242;
    *(v11 + 4) = a4;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_220BFC484(a1, a2, &v17);
    _os_log_impl(&dword_220BF4000, v9, v10, "Timer is cancelling the task after waiting %fs - %{public}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223D95B30](v12, -1, -1);
    MEMORY[0x223D95B30](v11, -1, -1);
  }

  v13 = MEMORY[0x277D84A98];
  v14 = MEMORY[0x277D84AC0];
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200438](a3, v15, v13, v14);
}

uint64_t sub_220C8DEC8()
{
  sub_220CA0B54();
  sub_220C8E5EC(&qword_2812D1760, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
  sub_220BF8A20(&qword_2812D1748, &qword_27CF7BF30, &qword_220CA6BB0);
  return sub_220CA0F14();
}

uint64_t sub_220C8DFA0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  sub_220C71714(v0 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime, &qword_27CF7BC30, &qword_220CA4AE0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_220C8E010()
{
  sub_220C8DFA0();

  return MEMORY[0x282200960](v0);
}

void sub_220C8E044(uint64_t a1)
{
  sub_220C8E118(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_220C8E118(uint64_t a1)
{
  if (!qword_2812D0F40)
  {
    sub_220C9F7D4();
    v1 = sub_220CA0EE4();
    if (!v2)
    {
      atomic_store(v1, &qword_2812D0F40);
    }
  }
}

uint64_t sub_220C8E1E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_220C8E2D8;

  return v6(a1);
}

uint64_t sub_220C8E2D8()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_2_3();

  return v3();
}

uint64_t sub_220C8E3CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C8E43C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220C8E49C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18_3(v0);
  *v1 = v2;
  v1[1] = sub_220C8E634;
  v3 = OUTLINED_FUNCTION_17_5();

  return v4(v3);
}

uint64_t sub_220C8E544()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18_3(v0);
  *v1 = v2;
  v1[1] = sub_220C28A7C;
  v3 = OUTLINED_FUNCTION_17_5();

  return v4(v3);
}

uint64_t sub_220C8E5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_26_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_30()
{
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_32(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2082;
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_40()
{
}

WeatherAnalytics::WidgetRefreshEventData __swiftcall WidgetRefreshEventData.init(widget:)(WeatherAnalytics::WidgetRefreshEventData widget)
{
  v2 = *(widget.widget.name._countAndFlagsBits + 8);
  v3 = *(widget.widget.name._countAndFlagsBits + 16);
  *v1 = *widget.widget.name._countAndFlagsBits;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return widget;
}

uint64_t WidgetRefreshEventData.widget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t WidgetRefreshEventData.widget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_220C8E804(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746567646977 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C8E890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C8E804(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C8E8BC(uint64_t a1)
{
  v2 = sub_220C8EA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C8E8F8(uint64_t a1)
{
  v2 = sub_220C8EA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetRefreshEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D7B0, &qword_220CB22A0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  HIDWORD(v12) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C8EA9C();

  sub_220CA1254();
  v13 = v9;
  v14 = v10;
  v15 = BYTE4(v12);
  sub_220C4674C();
  sub_220CA1104();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C8EA9C()
{
  result = qword_27CF7D7B8;
  if (!qword_27CF7D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D7B8);
  }

  return result;
}

uint64_t WidgetRefreshEventData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D7C0, &qword_220CB22A8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C8EA9C();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C469B8();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    v11 = v14[2];
    v12 = v15;
    *a2 = v14[1];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshEventData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C8ED54()
{
  result = qword_27CF7D7C8;
  if (!qword_27CF7D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D7C8);
  }

  return result;
}

unint64_t sub_220C8EDAC()
{
  result = qword_27CF7D7D0;
  if (!qword_27CF7D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D7D0);
  }

  return result;
}

unint64_t sub_220C8EE04()
{
  result = qword_27CF7D7D8;
  if (!qword_27CF7D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D7D8);
  }

  return result;
}

uint64_t dispatch thunk of WidgetAnalyticsCoordinatorType.enter()()
{
  OUTLINED_FUNCTION_23();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7_16(v1);

  return v3(v2);
}

uint64_t sub_220C8EF5C()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_14();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  OUTLINED_FUNCTION_4_18();

  return v4(v0);
}

uint64_t dispatch thunk of WidgetAnalyticsCoordinatorType.leave()()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_20(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_7_16(v2);

  return v4(v3);
}

void *sub_220C8F138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for WidgetAnalyticsCoordinator.Actor();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  v3[3] = a2;
  v3[4] = v6;
  v3[2] = a1;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;

    do
    {
      sub_220BF92A0(v8, v12);
      v9 = v13;
      v10 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v10 + 8))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_220C8F250()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_0_28(sub_220C8F270, v1);
}

uint64_t sub_220C8F270()
{
  OUTLINED_FUNCTION_1_3();
  sub_220C8F608();
  OUTLINED_FUNCTION_4_18();
  v2 = v1 & 1;

  return v0(v2);
}

uint64_t sub_220C8F2E8()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_220C8F37C;

  return sub_220C8F628(v1);
}

uint64_t sub_220C8F37C()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_14();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  OUTLINED_FUNCTION_4_18();

  return v4(v0);
}

uint64_t sub_220C8F460()
{

  return v0;
}

uint64_t sub_220C8F490()
{
  sub_220C8F460();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_220C8F4E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_220C8EF5C;

  return sub_220C8F234();
}

uint64_t sub_220C8F578()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_220C8FA38;

  return sub_220C8F2CC();
}

BOOL sub_220C8F608()
{
  v1 = *(v0 + 112);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    result = v1 == 0;
    *(v0 + 112) = v1 + 1;
  }

  return result;
}

uint64_t sub_220C8F628(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_220C8F648, v1, 0);
}

uint64_t sub_220C8F648()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[3];
  v2 = *(v1 + 112);
  v3 = v2 == 1;
  v4 = v2 < 1;
  v5 = v2 - 1;
  if (!v4 && (*(v1 + 112) = v5, v3) && (v8 = v0[2], v9 = v8[2], (v0[4] = v9) != 0))
  {
    v0[5] = 0;
    v10 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v8[7]);
    OUTLINED_FUNCTION_3_20(v10);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v12 = OUTLINED_FUNCTION_1_30(v11);

    return v13(v12);
  }

  else
  {
    OUTLINED_FUNCTION_4_18();

    return v6();
  }
}

uint64_t sub_220C8F79C()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_220C8F8A0, v1, 0);
}

uint64_t sub_220C8F8A0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    OUTLINED_FUNCTION_4_18();
    v3 = 1;
  }

  else
  {
    v0[5] = v1;
    v4 = (v0[2] + 40 * v1);
    v5 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    OUTLINED_FUNCTION_3_20(v5);
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v3 = OUTLINED_FUNCTION_1_30(v6);
  }

  return v2(v3);
}

uint64_t sub_220C8F9E0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_220C8FA3C()
{
  v0 = sub_220C9FF64();
  __swift_allocate_value_buffer(v0, qword_27CF7D7E0);
  v1 = __swift_project_value_buffer(v0, qword_27CF7D7E0);
  *v1 = 0xD000000000000020;
  *(v1 + 8) = 0x8000000220CB6680;
  *(v1 + 16) = 4;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_220C8FB2C()
{
  v0 = sub_220CA01B4();
  __swift_allocate_value_buffer(v0, qword_27CF7D7F8);
  v1 = __swift_project_value_buffer(v0, qword_27CF7D7F8);
  v2 = *MEMORY[0x277CEADB8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_220C8FBEC()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D810);
  __swift_project_value_buffer(v0, qword_27CF7D810);
  return sub_220CA0244();
}

uint64_t ReportWeatherEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ReportWeatherEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ReportWeatherEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.locationData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.locationData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.feedbackUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.feedbackUserData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.feedbackUserData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.conditionsFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.conditionsFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.conditionsFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.temperatureFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.temperatureFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.temperatureFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.locationConditionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.locationConditionData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.locationConditionData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.forecastAgeData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.forecastAgeData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.forecastAgeData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.windFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.windFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.windFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.aqiFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.aqiFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.aqiFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.otherConditionsFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.otherConditionsFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.otherConditionsFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.descriptionFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.descriptionFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.descriptionFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.weatherJSONData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReportWeatherEvent.weatherJSONData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
  OUTLINED_FUNCTION_0_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t ReportWeatherEvent.weatherJSONData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReportWeatherEvent(v0);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for ReportWeatherEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_16_0();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0();
  v13 = OUTLINED_FUNCTION_15_9();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
  OUTLINED_FUNCTION_0_0();
  v15 = OUTLINED_FUNCTION_15_9();
  v16(v15);
  v17 = *(v4 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
  OUTLINED_FUNCTION_0_0();
  (*(v18 + 104))(a1 + v17, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
  OUTLINED_FUNCTION_0_0();
  v19 = OUTLINED_FUNCTION_15_9();
  v20(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
  OUTLINED_FUNCTION_0_0();
  v21 = OUTLINED_FUNCTION_15_9();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
  OUTLINED_FUNCTION_0_0();
  v23 = OUTLINED_FUNCTION_15_9();
  v24(v23);
  v25 = *(v4 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
  OUTLINED_FUNCTION_0_0();
  v27 = *(v26 + 104);

  return v27(a1 + v25, v2);
}

uint64_t ReportWeatherEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

__n128 ReportWeatherEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 20));
  *v0 = result;
  return result;
}

uint64_t ReportWeatherEvent.Model.feedbackUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ReportWeatherEvent.Model.conditionsFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  v4 = v1 + *(result + 28);
  *v0 = *v4;
  *(v0 + 1) = *(v4 + 1);
  return result;
}

uint64_t ReportWeatherEvent.Model.temperatureFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LODWORD(v4) = *(v4 + 1);
  *v0 = v5;
  *(v0 + 4) = v4;
  return result;
}

__n128 ReportWeatherEvent.Model.locationConditionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 36));
  *v0 = result;
  return result;
}

uint64_t ReportWeatherEvent.Model.forecastAgeData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *v0 = v5;
  *(v0 + 4) = v4;
  return result;
}

double ReportWeatherEvent.Model.windFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 44);
  v4 = *(v3 + 12);
  *v0 = *v3;
  result = *(v3 + 4);
  *(v0 + 4) = result;
  *(v0 + 12) = v4;
  return result;
}

uint64_t ReportWeatherEvent.Model.aqiFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 48);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = *(v3 + 32);
  *v0 = *v3;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
}

uint64_t ReportWeatherEvent.Model.otherConditionsFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  *(v0 + 4) = *(v4 + 2);
  *v0 = v5;
  return result;
}

uint64_t ReportWeatherEvent.Model.descriptionFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t ReportWeatherEvent.Model.weatherJSONData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 60));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

__n128 ReportWeatherEvent.Model.init(eventData:locationData:feedbackUserData:conditionsFeedbackData:temperatureFeedbackData:locationConditionData:forecastAgeData:windFeedbackData:aqiFeedbackData:otherConditionsFeedbackData:descriptionFeedbackData:weatherJSONData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, int *a11, uint64_t *a12, uint64_t *a13)
{
  v13 = a8;
  v17 = *a2;
  v18 = a2[1];
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a3 + 4);
  v22 = *(a3 + 20);
  v23 = *a4;
  v41 = *a5;
  v40 = *(a5 + 1);
  v43 = *a6;
  v42 = a6[1];
  v45 = *a7;
  v44 = *(a7 + 4);
  v46 = *a8;
  v47 = a8[12];
  v48 = *(a10 + 32);
  v49 = *(a11 + 2);
  v50 = *a12;
  v52 = *a13;
  v53 = *a11;
  v51 = a13[1];
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  v38 = *(a10 + 16);
  v39 = *a10;
  v25 = *(v13 + 4);
  LODWORD(v13) = *(a4 + 1);
  (*(v24 + 32))(a9, a1);
  v26 = type metadata accessor for ReportWeatherEvent.Model(0);
  v27 = (a9 + v26[5]);
  *v27 = v17;
  v27[1] = v18;
  v28 = a9 + v26[6];
  *v28 = v19;
  *(v28 + 8) = v20;
  *(v28 + 16) = v21;
  *(v28 + 20) = v22;
  v29 = a9 + v26[7];
  *v29 = v23;
  *(v29 + 1) = v13;
  v30 = a9 + v26[8];
  *v30 = v41;
  *(v30 + 4) = v40;
  v31 = (a9 + v26[9]);
  *v31 = v43;
  v31[1] = v42;
  v32 = a9 + v26[10];
  *v32 = v45;
  *(v32 + 4) = v44;
  v33 = a9 + v26[11];
  *v33 = v46;
  *(v33 + 4) = v25;
  *(v33 + 12) = v47;
  v34 = a9 + v26[12];
  result = v39;
  *v34 = v39;
  *(v34 + 16) = v38;
  *(v34 + 32) = v48;
  v36 = a9 + v26[13];
  *(v36 + 4) = v49;
  *v36 = v53;
  *(a9 + v26[14]) = v50;
  v37 = (a9 + v26[15]);
  *v37 = v52;
  v37[1] = v51;
  return result;
}

uint64_t sub_220C9129C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000220CB65C0 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x8000000220CB65E0 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000220CB6600 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000220CB4CD0 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7473616365726F66 && a2 == 0xEF61746144656741;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000220CB6620 == a2;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6264656546697161 && a2 == 0xEF617461446B6361;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001BLL && 0x8000000220CB6640 == a2;
                    if (v14 || (sub_220CA1154() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x8000000220CB6660 == a2;
                      if (v15 || (sub_220CA1154() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x4A72656874616577 && a2 == 0xEF617461444E4F53)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_220CA1154();

                        if (v17)
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

unint64_t sub_220C91660(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461636F6CLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 10:
      result = 0xD000000000000017;
      break;
    case 5:
      v3 = 5;
      goto LABEL_10;
    case 6:
      result = 0x7473616365726F66;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6264656546697161;
      break;
    case 9:
      v3 = 11;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
    case 11:
      result = 0x4A72656874616577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C917EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C9129C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C91814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C91658();
  *a1 = result;
  return result;
}

uint64_t sub_220C9183C(uint64_t a1)
{
  v2 = sub_220C91D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C91878(uint64_t a1)
{
  v2 = sub_220C91D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReportWeatherEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D868, &qword_220CB25E0);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C91D24();
  sub_220CA1254();
  LOBYTE(v34) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_1_1();
  sub_220CA1104();
  if (!v2)
  {
    v11 = type metadata accessor for ReportWeatherEvent.Model(0);
    v34 = *(v3 + v11[5]);
    v38 = 1;
    sub_220C05568();
    OUTLINED_FUNCTION_2_23();
    sub_220CA1104();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v12 + 4);
    LOBYTE(v12) = *(v12 + 20);
    *&v34 = v13;
    *(&v34 + 1) = v14;
    LODWORD(v35) = v15;
    BYTE4(v35) = v12;
    v38 = 2;
    v16 = sub_220BFF788();

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1104();
    if (!v16)
    {

      v17 = v3 + v11[7];
      LOBYTE(v34) = *v17;
      *(&v34 + 1) = *(v17 + 1);
      v38 = 3;
      sub_220C18EA4();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1104();
      v18 = (v3 + v11[8]);
      v19 = *v18;
      LODWORD(v18) = *(v18 + 1);
      LOBYTE(v34) = v19;
      DWORD1(v34) = v18;
      v38 = 4;
      sub_220C65974();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1104();
      v34 = *(v3 + v11[9]);
      v38 = 5;
      sub_220C054C0();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1094();
      v20 = (v3 + v11[10]);
      v21 = *v20;
      LOBYTE(v20) = *(v20 + 4);
      LODWORD(v34) = v21;
      BYTE4(v34) = v20;
      v38 = 6;
      sub_220C91D78();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1094();
      v22 = v3 + v11[11];
      v23 = *(v22 + 12);
      LOBYTE(v34) = *v22;
      *(&v34 + 4) = *(v22 + 4);
      BYTE12(v34) = v23;
      v38 = 7;
      sub_220C68AC0();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1104();
      v25 = (v3 + v11[12]);
      v26 = *(v25 + 2);
      v27 = *(v25 + 3);
      v28 = *(v25 + 32);
      v34 = *v25;
      v35 = v26;
      v36 = v27;
      v37 = v28;
      v38 = 8;
      v29 = sub_220C663E4();

      OUTLINED_FUNCTION_3_13();
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();
      if (!v29)
      {

        v30 = (v3 + v11[13]);
        v31 = *v30;
        WORD2(v34) = *(v30 + 2);
        LODWORD(v34) = v31;
        v38 = 9;
        sub_220C295A0();
        OUTLINED_FUNCTION_2_23();
        sub_220CA1094();
        *&v34 = *(v3 + v11[14]);
        v38 = 10;
        sub_220C5FCE8();
        OUTLINED_FUNCTION_2_23();
        sub_220CA1094();
        v32 = (v3 + v11[15]);
        v33 = v32[1];
        *&v34 = *v32;
        *(&v34 + 1) = v33;
        v38 = 11;
        sub_220C1434C();

        OUTLINED_FUNCTION_3_13();
        OUTLINED_FUNCTION_1_1();
        sub_220CA1104();
      }
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C91D24()
{
  result = qword_27CF7D870;
  if (!qword_27CF7D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D870);
  }

  return result;
}

unint64_t sub_220C91D78()
{
  result = qword_27CF7D878;
  if (!qword_27CF7D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D878);
  }

  return result;
}

uint64_t ReportWeatherEvent.Model.init(from:)(void *a1)
{
  OUTLINED_FUNCTION_6();
  v4 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D880, &qword_220CB25E8);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v44 = type metadata accessor for ReportWeatherEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  v45 = a1;
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C91D24();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v40 = v1;
  v41 = v10;
  LOBYTE(v47) = 0;
  sub_220C04FCC(&qword_2812D0D88, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  v14 = v4;
  v15 = v46;
  (*(v43 + 32))(v46, v8, v14);
  v50 = 1;
  sub_220C05514();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v16 = v44;
  *&v15[v44[5]] = v47;
  v50 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v17 = *(&v47 + 1);
  v18 = v48;
  v19 = BYTE4(v48);
  v20 = &v15[v16[6]];
  *v20 = v47;
  *(v20 + 1) = v17;
  *(v20 + 4) = v18;
  v20[20] = v19;
  v50 = 3;
  sub_220C18E4C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v21 = &v15[v16[7]];
  *v21 = v47;
  *(v21 + 1) = *(&v47 + 1);
  v50 = 4;
  sub_220C6591C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v22 = DWORD1(v47);
  v23 = &v15[v16[8]];
  *v23 = v47;
  *(v23 + 1) = v22;
  v50 = 5;
  sub_220C0546C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA0FC4();
  *&v15[v16[9]] = v47;
  v50 = 6;
  sub_220C9243C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA0FC4();
  v24 = BYTE4(v47);
  v25 = &v15[v16[10]];
  *v25 = v47;
  v25[4] = v24;
  v50 = 7;
  sub_220C68A68();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v26 = BYTE12(v47);
  v27 = &v15[v44[11]];
  *v27 = v47;
  *(v27 + 4) = *(&v47 + 4);
  v27[12] = v26;
  v50 = 8;
  sub_220C6638C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA0FC4();
  v28 = v49;
  v29 = &v15[v44[12]];
  v30 = v48;
  *v29 = v47;
  *(v29 + 1) = v30;
  v29[32] = v28;
  v50 = 9;
  sub_220C29548();
  OUTLINED_FUNCTION_0_29();
  sub_220CA0FC4();
  v31 = v47;
  v32 = &v46[v44[13]];
  *(v32 + 2) = WORD2(v47);
  *v32 = v31;
  v50 = 10;
  sub_220C5FC90();
  OUTLINED_FUNCTION_13_8();
  sub_220CA0FC4();
  *&v46[v44[14]] = v47;
  v50 = 11;
  sub_220C142F4();
  OUTLINED_FUNCTION_13_8();
  sub_220CA1034();
  v33 = OUTLINED_FUNCTION_17_6();
  v34(v33);
  v35 = *(&v47 + 1);
  v36 = v46;
  v37 = &v46[v44[15]];
  *v37 = v47;
  *(v37 + 1) = v35;
  sub_220C92490(v36, v40);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_220C924F4(v36);
}

unint64_t sub_220C9243C()
{
  result = qword_27CF7D888;
  if (!qword_27CF7D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D888);
  }

  return result;
}

uint64_t sub_220C92490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportWeatherEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C924F4(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C925B8(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C92994(319, &qword_2812D0E38, sub_220C05514, sub_220C05568, &type metadata for LocationData);
    if (v2 <= 0x3F)
    {
      sub_220C92994(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        sub_220C92994(319, &qword_27CF7D8A0, sub_220C18E4C, sub_220C18EA4, &type metadata for ConditionsFeedbackData);
        if (v4 <= 0x3F)
        {
          sub_220C92994(319, &qword_27CF7D8A8, sub_220C6591C, sub_220C65974, &type metadata for TemperatureFeedbackData);
          if (v5 <= 0x3F)
          {
            sub_220C92994(319, &qword_2812D0DF0, sub_220C0546C, sub_220C054C0, &type metadata for LocationConditionData);
            if (v6 <= 0x3F)
            {
              sub_220C92994(319, &qword_27CF7D8B0, sub_220C9243C, sub_220C91D78, &type metadata for ForecastAgeData);
              if (v7 <= 0x3F)
              {
                sub_220C92994(319, &qword_27CF7D8B8, sub_220C68A68, sub_220C68AC0, &type metadata for WindFeedbackData);
                if (v8 <= 0x3F)
                {
                  sub_220C92994(319, &qword_27CF7D8C0, sub_220C6638C, sub_220C663E4, &type metadata for AQIFeedbackData);
                  if (v9 <= 0x3F)
                  {
                    sub_220C92994(319, &qword_27CF7D8C8, sub_220C29548, sub_220C295A0, &type metadata for OtherConditionsFeedbackData);
                    if (v10 <= 0x3F)
                    {
                      sub_220C92994(319, &qword_27CF7D8D0, sub_220C5FC90, sub_220C5FCE8, &type metadata for DescriptionFeedbackData);
                      if (v11 <= 0x3F)
                      {
                        sub_220C92994(319, &qword_27CF7D8D8, sub_220C142F4, sub_220C1434C, &type metadata for WeatherJSONData);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

void sub_220C92994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_220C92A38(uint64_t a1)
{
  sub_220CA0494();
  if (v1 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_27CF7D030, &type metadata for LocationConditionData);
    if (v2 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_27CF7D8F0, &type metadata for ForecastAgeData);
      if (v3 <= 0x3F)
      {
        sub_220BFE7B0(319, &qword_27CF7D8F8, &type metadata for AQIFeedbackData);
        if (v4 <= 0x3F)
        {
          sub_220BFE7B0(319, &qword_27CF7D900, &type metadata for OtherConditionsFeedbackData);
          if (v5 <= 0x3F)
          {
            sub_220BFE7B0(319, &qword_27CF7D908, &type metadata for DescriptionFeedbackData);
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

uint64_t getEnumTagSinglePayload for ReportWeatherEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C92D10()
{
  result = qword_27CF7D910;
  if (!qword_27CF7D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D910);
  }

  return result;
}

unint64_t sub_220C92D68()
{
  result = qword_27CF7D918;
  if (!qword_27CF7D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D918);
  }

  return result;
}

unint64_t sub_220C92DC0()
{
  result = qword_27CF7D920;
  if (!qword_27CF7D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D920);
  }

  return result;
}

uint64_t sub_220C92E60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000220CB66B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C92EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C92E60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C92F0C(uint64_t a1)
{
  v2 = sub_220C01674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C92F48(uint64_t a1)
{
  v2 = sub_220C01674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureScaleData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D930, &qword_220CB2898);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C01674();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C930E4();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C930E4()
{
  result = qword_2812D01A8;
  if (!qword_2812D01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureScaleData(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C93220()
{
  result = qword_27CF7D938;
  if (!qword_27CF7D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D938);
  }

  return result;
}

unint64_t sub_220C93274(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6E69646F636F6567;
      break;
    case 2:
      result = 0x6B726F7774656ELL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6552746567646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t WidgetAssembly.load(in:)()
{
  v0 = sub_220CA0704();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D150, &qword_220CAF6B0);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  sub_220CA0654();
  sub_220CA0074();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  v4 = *(v1 + 104);
  v4(v3, *MEMORY[0x277D6CF08], v0);
  sub_220CA0554();

  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3F8, &qword_220CB2B40);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();

  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D940, &qword_220CB2B48);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();

  v4(v3, *MEMORY[0x277D6CF10], v0);
  sub_220CA0554();

  v5(v3, v0);
  sub_220CA0664();
  sub_220CA0694();
}

uint64_t sub_220C935CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (v4)
  {
    type metadata accessor for WidgetDynamicEndpoint();
    v2 = swift_allocObject();
    *(v2 + 16) = 7;
    sub_220C59B10(&v3, v2 + 24);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220C9366C()
{
  v0 = sub_220C9FEF4();
  MEMORY[0x28223BE20](v0);
  sub_220C93E14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1A8, &unk_220CAF700);
  sub_220C93E6C();
  sub_220CA0F14();
  sub_220CA0074();
  swift_allocObject();
  return sub_220CA0064();
}

uint64_t sub_220C93754@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
    result = sub_220CA0624();
    if (v8)
    {
      v5 = type metadata accessor for WidgetTelemetryPrivacySampler();
      v6 = swift_allocObject();
      type metadata accessor for AppConfigTelemetryPrivacySampler();
      swift_allocObject();
      result = sub_220BFA138(&v9, &v7);
      *(v6 + 16) = result;
      a2[3] = v5;
      a2[4] = &off_28346CD90;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220C93870@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D950, &unk_220CB2BA8);
  result = sub_220CA0624();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for AppAnalyticsFlushManager();
    v20[3] = v10;
    v20[4] = &off_283468FD0;
    v20[0] = v9;
    v11 = type metadata accessor for WidgetFlushManager();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_283468FD0;
    v12[2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D958, &qword_220CB2BB8);
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    *(v19 + 16) = 0;
    v12[7] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v11;
    a2[4] = &off_283466F38;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220C93AC0()
{
  v0 = sub_220CA0704();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D948, &qword_220CB2BA0);
  sub_220CA06B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D950, &unk_220CB2BA8);
  sub_220CA06B4();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_220CA0554();

  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
  sub_220CA06B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D168, &qword_220CB04E0);
  sub_220CA06B4();
}

uint64_t sub_220C93CC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220C9FAC4();
  v3 = MEMORY[0x277D7AA38];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220C9FAB4();
}

uint64_t sub_220C93D0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9FF44();
  result = sub_220CA0614();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for AppAnalyticsFlushManager();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_283468FD0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_220C93E14()
{
  result = qword_2812D1A20;
  if (!qword_2812D1A20)
  {
    sub_220C9FEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1A20);
  }

  return result;
}

unint64_t sub_220C93E6C()
{
  result = qword_2812D1758;
  if (!qword_2812D1758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7D1A8, &unk_220CAF700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1758);
  }

  return result;
}

WeatherAnalytics::DisplayModeType_optional __swiftcall DisplayModeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DisplayModeType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6F775479426F7774;
      break;
    case 2:
      v2 = 1114601332;
      goto LABEL_5;
    case 3:
      result = 0x6F46794272756F66;
      break;
    case 4:
      v2 = 1115187571;
LABEL_5:
      result = v2 | 0x756F467900000000;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C93FD0()
{
  result = qword_27CF7D960;
  if (!qword_27CF7D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D960);
  }

  return result;
}

uint64_t sub_220C94048@<X0>(uint64_t *a1@<X8>)
{
  result = DisplayModeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DisplayModeType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C941FC()
{
  result = qword_27CF7D968;
  if (!qword_27CF7D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D968);
  }

  return result;
}

uint64_t sub_220C94250(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v60 = a1;
  v61 = a4;
  v65 = a2;
  v5 = sub_220CA0A24();
  v6 = OUTLINED_FUNCTION_14(v5);
  v56 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  v14 = OUTLINED_FUNCTION_14(v13);
  v55 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = sub_220CA09D4();
  v22 = OUTLINED_FUNCTION_14(v21);
  v54 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v54 - v28;
  sub_220CA08C4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v30);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a3[1];
  v62 = *a3;
  v64 = v33;
  v63 = *(a3 + 4);
  v34 = *(a3 + 20);
  LODWORD(v61) = *v61;
  LODWORD(v59) = *(v59 + 16);
  sub_220C9558C(v60, v32, MEMORY[0x277D7AFD8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = MEMORY[0x277D7B0C8];
    sub_220C954BC(v32, v12, MEMORY[0x277D7B0C8]);
    v36 = v57;
    sub_220C9558C(v12, v57, MEMORY[0x277D7B0C8]);
    v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v38 = swift_allocObject();
    sub_220C954BC(v36, v38 + v37, v35);
    *(v38 + v37 + v9) = v61;
    v39 = v38 + ((v37 + v9) & 0xFFFFFFFFFFFFFFF8);
    v40 = v64;
    *(v39 + 8) = v62;
    *(v39 + 16) = v40;
    *(v39 + 24) = v63;
    *(v39 + 28) = v34;

    sub_220CA0444();

    v41 = v12;
    v42 = v35;
  }

  else
  {
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF28, &qword_220CB2D60) + 48);
    v44 = MEMORY[0x277D7B0A0];
    sub_220C954BC(v32, v29, MEMORY[0x277D7B0A0]);
    sub_220C9551C(&v32[v43], v20);
    sub_220C9558C(v29, v26, MEMORY[0x277D7B0A0]);
    LODWORD(v60) = v34;
    v45 = v58;
    sub_220C955EC(v20, v58);
    v46 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v47 = v46 + v25;
    v48 = (*(v55 + 80) + v46 + v25 + 2) & ~*(v55 + 80);
    v49 = swift_allocObject();
    sub_220C954BC(v26, v49 + v46, v44);
    v50 = (v49 + v47);
    *v50 = v61;
    v50[1] = v59;
    sub_220C9551C(v45, v49 + v48);
    v51 = v49 + ((v17 + v48 + 7) & 0xFFFFFFFFFFFFFFF8);
    v52 = v64;
    *v51 = v62;
    *(v51 + 8) = v52;
    *(v51 + 16) = v63;
    *(v51 + 20) = v60;

    sub_220CA0444();

    sub_220C71714(v20, &qword_27CF7D970, &qword_220CB2D58);
    v41 = v29;
    v42 = v44;
  }

  return sub_220C95788(v41, v42);
}

uint64_t sub_220C94744(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(&v63 + 1) = a7;
  v64 = a8;
  *&v63 = a6;
  LODWORD(v62) = a3;
  v65 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = sub_220C9F7D4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CA09C4();
  sub_220C9F794();
  v21 = v20;
  (*(v17 + 8))(v19, v16);
  *&v61 = sub_220C563A8(v21);
  sub_220CA08F4();
  v60 = sub_220C563A8(v22);
  sub_220CA0934();
  v59 = sub_220C563A8(v23);
  sub_220CA0944();
  v58 = sub_220C563A8(v24);
  sub_220CA0954();
  v57 = sub_220C563A8(v25);
  sub_220CA0914();
  v56 = sub_220C563A8(v26);
  v55 = sub_220CA0904();
  v54 = sub_220CA0924();
  v53 = sub_220CA09B4();
  sub_220C6FBA0(v69);
  v52 = v69[0];
  v51 = sub_220CA0964();
  v27 = [objc_opt_self() mainBundle];
  v28 = sub_220BFAF38(v27);
  v30 = v29;
  sub_220C6FCE4(&v68);
  v50 = v68;
  if (a4)
  {
    v31 = sub_220CA09A4();
    v48 = v32;
    v49 = v31;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v33 = a5;
  sub_220C955EC(a5, v15);
  v34 = sub_220CA0994();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v34);
  if (EnumTagSinglePayload == 1)
  {
    sub_220C71714(v15, &qword_27CF7D970, &qword_220CB2D58);
    v36 = 0;
  }

  else
  {
    v36 = sub_220CA0974();
    (*(*(v34 - 8) + 8))(v15, v34);
  }

  sub_220C955EC(v33, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v34) == 1)
  {
    sub_220C71714(v12, &qword_27CF7D970, &qword_220CB2D58);
    v37 = 2;
  }

  else
  {
    v38 = sub_220CA0984();
    (*(*(v34 - 8) + 8))(v12, v34);
    v37 = v38 & 1;
  }

  if (v30)
  {
    v39 = v30;
  }

  else
  {
    v39 = 0x8000000220CB5570;
  }

  if (!v30)
  {
    v28 = 0xD000000000000011;
  }

  v40 = v51 & 1;
  v70 = 0;

  v69[1] = EnumTagSinglePayload == 1;
  *&v66[0] = v61;
  *(&v66[0] + 1) = v60;
  *&v66[1] = v59;
  *(&v66[1] + 1) = v58;
  *&v66[2] = v57;
  *(&v66[2] + 1) = v56;
  LOBYTE(v66[3]) = v70;
  *(&v66[3] + 1) = v55;
  *&v66[4] = v54;
  *(&v66[4] + 1) = v53;
  LOBYTE(v66[5]) = v52;
  BYTE1(v66[5]) = v62;
  BYTE2(v66[5]) = v40;
  *(&v66[5] + 1) = v28;
  *&v66[6] = v39;
  *(&v66[6] + 1) = v50;
  *&v66[7] = v49;
  *(&v66[7] + 1) = v48;
  *&v66[8] = v36;
  BYTE8(v66[8]) = EnumTagSinglePayload == 1;
  BYTE9(v66[8]) = v37;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v41 = sub_220CA0054();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  v61 = xmmword_220CA4A70;
  *(v44 + 16) = xmmword_220CA4A70;
  v45 = *(v42 + 104);
  v45(v44 + v43, *MEMORY[0x277CEAD18], v41);
  v60 = "allowRecordingCDNServer";
  sub_220C957E0();
  sub_220C9FFC4();

  memcpy(v67, v66, 0x8AuLL);
  sub_220C41464(v67);
  v66[0] = v63;
  LODWORD(v66[1]) = v64;
  BYTE4(v66[1]) = BYTE4(v64) & 1;
  v46 = swift_allocObject();
  *(v46 + 16) = v61;
  v45(v46 + v43, *MEMORY[0x277CEAD10], v41);
  sub_220C39228();
  sub_220C9FFC4();

  type metadata accessor for TelemetryEvent(0);
  sub_220C958DC(&qword_2812D0540, type metadata accessor for TelemetryEvent, &protocol conformance descriptor for TelemetryEvent);
  memset(v66, 0, 32);
  sub_220C9FFD4();
  return sub_220C71714(v66, &qword_27CF7D978, &qword_220CB2D68);
}

uint64_t sub_220C94D8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v10 = sub_220C9F804();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220CA0A24();
  if (*(a2 + *(v14 + 24) + 9))
  {
    v15 = sub_220CA0A14();
    v16 = sub_220C563A8(*(a2 + *(v14 + 20)));
    v17 = [objc_opt_self() mainBundle];
    v18 = sub_220BFAF38(v17);
    v20 = 0x8000000220CB5570;
    v21 = 0xD000000000000011;
    if (v19)
    {
      v21 = v18;
      v20 = v19;
    }

    *&v54 = v15;
    *(&v54 + 1) = v16;
    LOBYTE(v55) = a3;
    *(&v55 + 1) = v21;
    *&v56 = v20;
    sub_220C95834();
    sub_220C9FFC4();

    *&v54 = v49;
    *(&v54 + 1) = a5;
    LODWORD(v55) = a6;
    BYTE4(v55) = BYTE4(a6) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
    v22 = sub_220CA0054();
    v23 = *(v22 - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_220CA4A70;
    (*(v23 + 104))(v25 + v24, *MEMORY[0x277CEAD10], v22);
    sub_220C39228();
    sub_220C9FFC4();

    sub_220C9F7F4();
    sub_220C9F7E4();
    (*(v11 + 8))(v13, v10);
    sub_220C9FF74();

    type metadata accessor for NetworkOperationFailedEvent(0);
    sub_220C958DC(&qword_2812CF308, type metadata accessor for NetworkOperationFailedEvent, &protocol conformance descriptor for NetworkOperationFailedEvent);
    v54 = 0u;
    v55 = 0u;
    sub_220C9FFD4();
    sub_220C71714(&v54, &qword_27CF7D978, &qword_220CB2D68);
    return sub_220C9FF84();
  }

  else
  {
    sub_220C9F794();
    v28 = sub_220C563A8(v27);
    v29 = sub_220C563A8(*(a2 + *(v14 + 20)));
    v30 = sub_220CA09F4();
    v32 = v31;
    v33 = sub_220CA0A04();
    v34 = sub_220CA0A14();
    v35 = [objc_opt_self() mainBundle];
    v36 = sub_220BFAF38(v35);
    v58 = v32 & 1;
    *&v50 = v28;
    *(&v50 + 1) = v29;
    v38 = 0x8000000220CB5570;
    *&v51 = v30;
    BYTE8(v51) = v32 & 1;
    if (v37)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0xD000000000000011;
    }

    if (v37)
    {
      v38 = v37;
    }

    BYTE9(v51) = v33;
    *&v52 = v34;
    BYTE8(v52) = a3;
    *&v53 = v39;
    *(&v53 + 1) = v38;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
    v40 = sub_220CA0054();
    v41 = *(v40 - 8);
    v47 = a5;
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    v46 = xmmword_220CA4A70;
    *(v43 + 16) = xmmword_220CA4A70;
    v44 = *(v41 + 104);
    v44(v43 + v42, *MEMORY[0x277CEAD18], v40);
    sub_220C95888();
    sub_220C9FFC4();

    v54 = v50;
    v55 = v51;
    v56 = v52;
    v57 = v53;
    sub_220C32880(&v54);
    *&v50 = v49;
    *(&v50 + 1) = v47;
    LODWORD(v51) = a6;
    BYTE4(v51) = BYTE4(a6) & 1;
    v45 = swift_allocObject();
    *(v45 + 16) = v46;
    v44(v45 + v42, *MEMORY[0x277CEAD10], v40);
    sub_220C39228();
    sub_220C9FFC4();

    type metadata accessor for NetworkOperationEvent(0);
    sub_220C958DC(&qword_2812CFBC0, type metadata accessor for NetworkOperationEvent, &protocol conformance descriptor for NetworkOperationEvent);
    v50 = 0u;
    v51 = 0u;
    sub_220C9FFD4();
    return sub_220C71714(&v50, &qword_27CF7D978, &qword_220CB2D68);
  }
}

uint64_t sub_220C95408(uint64_t a1)
{
  v3 = sub_220CA0A24();
  OUTLINED_FUNCTION_14(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = v1 + (v9 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *(v10 + 28);
  v15 = *(v1 + v9);

  return sub_220C94D8C(a1, v1 + v8, v15, v11, v12, v13 | (v14 << 32));
}

uint64_t sub_220C954BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220C9551C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C9558C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220C955EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C9565C(uint64_t a1)
{
  v3 = sub_220CA09D4();
  OUTLINED_FUNCTION_14(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  OUTLINED_FUNCTION_14(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v7 + *(v10 + 80) + 2) & ~*(v10 + 80);
  v14 = *(v1 + v7 + 1);
  v15 = v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 20);
  v20 = *(v1 + v7);

  return sub_220C94744(a1, v1 + v5, v20, v14, v1 + v13, v16, v17, v18 | (v19 << 32));
}

uint64_t sub_220C95788(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_220C957E0()
{
  result = qword_2812D0208;
  if (!qword_2812D0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0208);
  }

  return result;
}

unint64_t sub_220C95834()
{
  result = qword_2812CEC50;
  if (!qword_2812CEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC50);
  }

  return result;
}

unint64_t sub_220C95888()
{
  result = qword_2812CF480;
  if (!qword_2812CF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF480);
  }

  return result;
}

uint64_t sub_220C958DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

WeatherAnalytics::CurrentLocationUpdateFailureReason_optional __swiftcall CurrentLocationUpdateFailureReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CurrentLocationUpdateFailureReason.rawValue.getter()
{
  result = 0x74754F656D6974;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x73696D7265506F6ELL;
      break;
    case 3:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C95A18()
{
  result = qword_27CF7D980;
  if (!qword_27CF7D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D980);
  }

  return result;
}

unint64_t sub_220C95A90@<X0>(unint64_t *a1@<X8>)
{
  result = CurrentLocationUpdateFailureReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C95C44()
{
  result = qword_27CF7D988;
  if (!qword_27CF7D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D988);
  }

  return result;
}

uint64_t sub_220C95D60()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D9A8);
  __swift_project_value_buffer(v0, qword_27CF7D9A8);
  return sub_220CA0244();
}

uint64_t WeatherDataLoadEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t WeatherDataLoadEvent.data.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t WeatherDataLoadEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WeatherDataLoadEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WeatherDataLoadEvent.timedData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for WeatherDataLoadEvent(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*WeatherDataLoadEvent.timedData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for WeatherDataLoadEvent(v0);
  return nullsub_1;
}

uint64_t WeatherDataLoadEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WeatherDataLoadEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WeatherDataLoadEvent.privateUserData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for WeatherDataLoadEvent(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*WeatherDataLoadEvent.privateUserData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for WeatherDataLoadEvent(v0);
  return nullsub_1;
}

uint64_t WeatherDataLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  Event = type metadata accessor for WeatherDataLoadEvent(0);
  v5 = *(Event + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(Event + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

void WeatherDataLoadEvent.Model.data.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WeatherDataLoadEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WeatherDataLoadEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WeatherDataLoadEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WeatherDataLoadEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t WeatherDataLoadEvent.Model.init(data:timedData:privateUserData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a1[1];
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v10 = *(a3 + 20);
  *a4 = *a1;
  a4[1] = v6;
  v11 = type metadata accessor for WeatherDataLoadEvent.Model(0);
  v12 = *(v11 + 20);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  result = (*(v13 + 32))(&a4[v12], a2);
  v15 = &a4[*(v11 + 24)];
  *v15 = v7;
  *(v15 + 1) = v8;
  *(v15 + 4) = v9;
  v15[20] = v10;
  return result;
}

uint64_t sub_220C96418(uint64_t a1)
{
  v2 = sub_220C966B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C96454(uint64_t a1)
{
  v2 = sub_220C966B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherDataLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C8, &qword_220CB2EB8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C966B8();
  sub_220CA1254();
  v11 = v3[1];
  LOBYTE(v19) = *v3;
  BYTE1(v19) = v11;
  v23 = 0;
  sub_220C62B2C();
  sub_220CA1104();
  if (!v2)
  {
    v12 = type metadata accessor for WeatherDataLoadEvent.Model(0);
    LOBYTE(v19) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80, MEMORY[0x277CEAED8]);
    sub_220CA1104();
    v13 = &v3[*(v12 + 24)];
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 4);
    LOBYTE(v13) = v13[20];
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = v13;
    v23 = 2;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C966B8()
{
  result = qword_27CF7D9D0;
  if (!qword_27CF7D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D9D0);
  }

  return result;
}

uint64_t WeatherDataLoadEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v30 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9D8, &qword_220CB2EC0);
  OUTLINED_FUNCTION_3();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for WeatherDataLoadEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C966B8();
  v13 = v34;
  sub_220CA1234();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = a1;
  v14 = v32;
  v39 = 0;
  sub_220C62AD4();
  sub_220CA1034();
  v15 = BYTE1(v35);
  *v12 = v35;
  v28 = v12;
  v12[1] = v15;
  LOBYTE(v35) = 1;
  sub_220C315AC(&qword_2812D0D78, MEMORY[0x277CEAEE0]);
  v16 = v6;
  sub_220CA1034();
  v17 = *(v30 + 32);
  v18 = v28;
  v27 = *(v9 + 20);
  v17(&v28[v27], v16, v14);
  v39 = 2;
  sub_220BFF730();
  sub_220CA1034();
  v19 = OUTLINED_FUNCTION_3_21();
  v20(v19);
  v21 = v36;
  v22 = v37;
  v23 = v38;
  v24 = v18 + *(v9 + 24);
  *v24 = v35;
  *(v24 + 8) = v21;
  *(v24 + 16) = v22;
  *(v24 + 20) = v23;
  sub_220C96A88(v18, v29);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_220C96AEC(v18);
}

uint64_t sub_220C96A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C96AEC(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C96BB0(uint64_t a1)
{
  sub_220C96CBC(319, &qword_2812D0E40, sub_220C62AD4, sub_220C62B2C, &type metadata for WeatherDataLoadEventData);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C96CBC(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C96CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C96D60(uint64_t a1)
{
  result = sub_220CA04D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataLoadEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C96EC4()
{
  result = qword_27CF7D9F0;
  if (!qword_27CF7D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D9F0);
  }

  return result;
}

unint64_t sub_220C96F1C()
{
  result = qword_27CF7D9F8;
  if (!qword_27CF7D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D9F8);
  }

  return result;
}

unint64_t sub_220C96F74()
{
  result = qword_27CF7DA00;
  if (!qword_27CF7DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA00);
  }

  return result;
}

WeatherAnalytics::StartMethod_optional __swiftcall StartMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220C97034()
{
  result = qword_27CF7DA08;
  if (!qword_27CF7DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA08);
  }

  return result;
}

uint64_t sub_220C971D4()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7DA40);
  __swift_project_value_buffer(v0, qword_27CF7DA40);
  return sub_220CA0244();
}

uint64_t ViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ViewEvent.viewData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ViewEvent.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ViewEvent(uint64_t a1)
{
  result = qword_27CF7DA70;
  if (!qword_27CF7DA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ViewEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t ViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = *(type metadata accessor for ViewEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 104);

  return v6(a1 + v4, v2);
}

uint64_t ViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ViewEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 44);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
}

uint64_t ViewEvent.Model.init(viewData:privateUserData:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a2 + 20);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 44) = v8;
  return result;
}

uint64_t sub_220C9760C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C976DC(char a1)
{
  if (a1)
  {
    return 0x5565746176697270;
  }

  else
  {
    return 0x6174614477656976;
  }
}

uint64_t sub_220C97728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C9760C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C97750(uint64_t a1)
{
  v2 = sub_220C979B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C9778C(uint64_t a1)
{
  v2 = sub_220C979B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewEvent.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DA58, &qword_220CB3200);
  OUTLINED_FUNCTION_3();
  v18 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 8);
  v11 = v1[4];
  v15 = v1[3];
  v16 = v11;
  v23 = *(v1 + 10);
  HIDWORD(v14) = *(v1 + 44);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C979B0();

  sub_220CA1254();
  v19 = v8;
  v20 = v9;
  LOWORD(v21) = v10;
  v24 = 0;
  sub_220C04820();
  v12 = v17;
  sub_220CA1104();

  if (!v12)
  {
    v19 = v15;
    v20 = v16;
    v21 = v23;
    v22 = BYTE4(v14);
    v24 = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v18 + 8))(v7, v3);
}

unint64_t sub_220C979B0()
{
  result = qword_27CF7DA60;
  if (!qword_27CF7DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA60);
  }

  return result;
}

uint64_t ViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DA68, &qword_220CB3208);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C979B0();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18) = 0;
  sub_220C0449C();
  OUTLINED_FUNCTION_3_18(&type metadata for ViewData, &v18);
  v6 = v21;
  v17 = v20;
  v7 = v22;
  v32 = v23;
  v34 = 1;
  sub_220BFF730();
  OUTLINED_FUNCTION_3_18(&type metadata for PrivateUserData, &v34);
  v8 = OUTLINED_FUNCTION_0_3();
  v9(v8);
  v15 = v29;
  v16 = v28;
  v10 = v30;
  v11 = v31;
  v33 = v31;
  *&v18 = v17;
  *(&v18 + 1) = v6;
  v19[0] = v7;
  v12 = v32;
  v19[1] = v32;
  *&v19[8] = v28;
  *&v19[16] = v29;
  *&v19[24] = v30;
  v19[28] = v31;
  v13 = *v19;
  *a2 = v18;
  a2[1] = v13;
  *(a2 + 29) = *&v19[13];
  sub_220C97C48(&v18, &v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v17;
  v21 = v6;
  v22 = v7;
  v23 = v12;
  v24 = v16;
  v25 = v15;
  v26 = v10;
  v27 = v11;
  return sub_220C97C80(&v20);
}

void sub_220C97D18(uint64_t a1)
{
  sub_220C97E0C(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820, &type metadata for ViewData);
  if (v1 <= 0x3F)
  {
    sub_220C97E0C(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C97E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220C97E9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 45))
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

uint64_t sub_220C97EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9801C()
{
  result = qword_27CF7DA80;
  if (!qword_27CF7DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA80);
  }

  return result;
}

unint64_t sub_220C98074()
{
  result = qword_27CF7DA88;
  if (!qword_27CF7DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA88);
  }

  return result;
}

unint64_t sub_220C980CC()
{
  result = qword_27CF7DA90;
  if (!qword_27CF7DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA90);
  }

  return result;
}

uint64_t sub_220C98160(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461446863746566 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C98200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C98160(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C9822C(uint64_t a1)
{
  v2 = sub_220C983CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C98268(uint64_t a1)
{
  v2 = sub_220C983CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForecastAgeData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DA98, &qword_220CB3440);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C983CC();
  sub_220CA1254();
  sub_220CA1114();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_220C983CC()
{
  result = qword_27CF7DAA0;
  if (!qword_27CF7DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DAA0);
  }

  return result;
}

uint64_t ForecastAgeData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DAA8, &qword_220CB3448);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C983CC();
  sub_220CA1234();
  if (!v2)
  {
    v11 = sub_220CA1044();
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for ForecastAgeData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C9865C()
{
  result = qword_27CF7DAB0;
  if (!qword_27CF7DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DAB0);
  }

  return result;
}

unint64_t sub_220C986B4()
{
  result = qword_27CF7DAB8;
  if (!qword_27CF7DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DAB8);
  }

  return result;
}

unint64_t sub_220C9870C()
{
  result = qword_27CF7DAC0;
  if (!qword_27CF7DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DAC0);
  }

  return result;
}

uint64_t sub_220C98828()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7DAF8);
  __swift_project_value_buffer(v0, qword_27CF7DAF8);
  return sub_220CA0244();
}

uint64_t ComponentEngagementEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ComponentEngagementEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ComponentEngagementEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentEngagementEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentEngagementEvent.timedData.setter()
{
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentEngagementEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentEngagementEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentEngagementEvent.orientationData.setter()
{
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentEngagementEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentEngagementEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentEngagementEvent.locationData.setter()
{
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentEngagementEvent.hostViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentEngagementEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentEngagementEvent.hostViewData.setter()
{
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentEngagementEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentEngagementEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentEngagementEvent.privateUserData.setter()
{
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentEngagementEvent.componentData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentEngagementEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentEngagementEvent.componentData.setter()
{
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentEngagementEvent.componentPositionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentEngagementEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentEngagementEvent.componentPositionData.setter()
{
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for ComponentEngagementEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_16_0();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v13 = OUTLINED_FUNCTION_16_0();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_0_0();
  v15 = OUTLINED_FUNCTION_16_0();
  v16(v15);
  v17 = *(v4 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_0_0();
  v19 = *(v18 + 104);

  return v19(a1 + v17, v2);
}

uint64_t ComponentEngagementEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t ComponentEngagementEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentEngagementEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentEngagementEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ComponentEngagementEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

__n128 ComponentEngagementEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ComponentEngagementEvent.Model(v2) + 28));
  *v0 = result;
  return result;
}

uint64_t ComponentEngagementEvent.Model.hostViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ComponentEngagementEvent.Model(v2) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t ComponentEngagementEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ComponentEngagementEvent.Model(v2) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ComponentEngagementEvent.Model.componentData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ComponentEngagementEvent.Model(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

double ComponentEngagementEvent.Model.componentPositionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ComponentEngagementEvent.Model(v2) + 44));
  *v0 = result;
  return result;
}

uint64_t ComponentEngagementEvent.Model.init(eventData:timedData:orientationData:locationData:hostViewData:privateUserData:componentData:componentPositionData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = *a4;
  v15 = a4[1];
  v16 = *a5;
  v17 = a5[1];
  v18 = *(a5 + 8);
  v30 = a6[1];
  v31 = *a6;
  v19 = *(a6 + 4);
  v20 = *(a6 + 20);
  v32 = *a7;
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  v22 = *a8;
  (*(v21 + 32))(a9, a1);
  v23 = type metadata accessor for ComponentEngagementEvent.Model(0);
  v24 = v23[5];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v25 + 32))(a9 + v24, a2);
  *(a9 + v23[6]) = v13;
  v27 = (a9 + v23[7]);
  *v27 = v14;
  v27[1] = v15;
  v28 = a9 + v23[8];
  *v28 = v16;
  *(v28 + 8) = v17;
  *(v28 + 16) = v18;
  v29 = a9 + v23[9];
  *v29 = v31;
  *(v29 + 8) = v30;
  *(v29 + 16) = v19;
  *(v29 + 20) = v20;
  *(a9 + v23[10]) = v32;
  *(a9 + v23[11]) = v22;
  return result;
}

uint64_t sub_220C99768(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_5;
    case 2:
      v3 = 0x746E6569726FLL;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x7765695674736F68;
      break;
    case 5:
      result = 0x5565746176697270;
      break;
    case 6:
      result = 0x6E656E6F706D6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C9987C(uint64_t a1)
{
  v2 = sub_220C99C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C998B8(uint64_t a1)
{
  v2 = sub_220C99C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DB10, &qword_220CB3650);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C99C48();
  sub_220CA1254();
  LOBYTE(v59) = 0;
  v11 = sub_220CA0494();
  OUTLINED_FUNCTION_7();
  v14 = sub_220C04F84(v12, v13, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_17(v3, &v59, v5, v11, v14);
  if (!v2)
  {
    v15 = type metadata accessor for ComponentEngagementEvent.Model(0);
    v16 = v15[5];
    LOBYTE(v59) = 1;
    v17 = sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    v20 = sub_220C04F84(v18, v19, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_17(v3 + v16, &v59, v5, v17, v20);
    LOWORD(v59) = *(v3 + v15[6]);
    v62 = 2;
    sub_220BFE5BC();
    v21 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v21, v22, v23, v24, v25);
    v59 = *(v3 + v15[7]);
    v62 = 3;
    sub_220C05568();
    v26 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v26, v27, v28, v29, v30);
    v31 = v3 + v15[8];
    v32 = *v31;
    v33 = *(v31 + 8);
    LOWORD(v31) = *(v31 + 16);
    *&v59 = v32;
    *(&v59 + 1) = v33;
    LOWORD(v60) = v31;
    v62 = 4;
    v34 = sub_220C04820();

    v35 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v35, v36, v37, v38, v34);
    if (v34)
    {
    }

    else
    {

      v39 = v3 + v15[9];
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      LOBYTE(v39) = *(v39 + 20);
      *&v59 = v40;
      *(&v59 + 1) = v41;
      v60 = v42;
      v61 = v39;
      v62 = 5;
      v43 = sub_220BFF788();

      v44 = OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17(v44, v45, v46, v47, v43);

      if (!v43)
      {
        LOBYTE(v59) = *(v3 + v15[10]);
        v62 = 6;
        sub_220C222D8();
        v48 = OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_17(v48, v49, v50, v51, v52);
        *&v59 = *(v3 + v15[11]);
        v62 = 7;
        sub_220C2232C();
        v53 = OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_17(v53, v54, v55, v56, v57);
      }
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C99C48()
{
  result = qword_27CF7DB18;
  if (!qword_27CF7DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB18);
  }

  return result;
}

uint64_t ComponentEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v44 = v4;
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v7 = v6 - v5;
  sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v46 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v12 = v11 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DB20, &qword_220CB3658);
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v47 = type metadata accessor for ComponentEngagementEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v21 = v20 - v19;
  v22 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_220C99C48();
  v43 = v17;
  v23 = v48;
  sub_220CA1234();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v48 = v14;
  LOBYTE(v50) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v24, v25, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v46 + 32))(v21, v12);
  LOBYTE(v50) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v26, v27, MEMORY[0x277CEAEE0]);
  v28 = v45;
  sub_220CA1034();
  v29 = v47;
  (*(v44 + 32))(v21 + *(v47 + 20), v7, v28);
  v53 = 2;
  sub_220BFE564();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v21 + v29[6]) = v50;
  v53 = 3;
  sub_220C05514();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v21 + v29[7]) = v50;
  v53 = 4;
  sub_220C0449C();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v30 = *(&v50 + 1);
  v31 = v51;
  v32 = v21 + v29[8];
  *v32 = v50;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  v53 = 5;
  sub_220BFF730();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v33 = *(&v50 + 1);
  v34 = v51;
  v35 = v52;
  v36 = v21 + v29[9];
  *v36 = v50;
  *(v36 + 8) = v33;
  *(v36 + 16) = v34;
  *(v36 + 20) = v35;
  v53 = 6;
  sub_220C22978();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v21 + v29[10]) = v50;
  v53 = 7;
  sub_220C229CC();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v37 = OUTLINED_FUNCTION_15_2();
  v38(v37);
  *(v21 + v29[11]) = v50;
  sub_220C9A294(v21, v41);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_220C9A2F8(v21);
}

uint64_t sub_220C9A294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C9A2F8(uint64_t a1)
{
  v2 = type metadata accessor for ComponentEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ComponentEngagementEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9A4C4()
{
  result = qword_27CF7DB48;
  if (!qword_27CF7DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB48);
  }

  return result;
}

unint64_t sub_220C9A51C()
{
  result = qword_27CF7DB50;
  if (!qword_27CF7DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB50);
  }

  return result;
}

unint64_t sub_220C9A574()
{
  result = qword_27CF7DB58;
  if (!qword_27CF7DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB58);
  }

  return result;
}

uint64_t URLData.url.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t URLData.url.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

WeatherAnalytics::URLData __swiftcall URLData.init(url:linkType:)(WeatherAnalytics::URLData url, WeatherAnalytics::LinkType linkType)
{
  v3 = *linkType;
  *v2 = url.url;
  *(v2 + 16) = v3;
  url.linkType = linkType;
  return url;
}

uint64_t sub_220C9A6A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657079546B6E696CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C9A768(char a1)
{
  if (a1)
  {
    return 0x657079546B6E696CLL;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_220C9A7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C9A6A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C9A7C8(uint64_t a1)
{
  v2 = sub_220C9A9C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C9A804(uint64_t a1)
{
  v2 = sub_220C9A9C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URLData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DB60, &qword_220CB38D0);
  OUTLINED_FUNCTION_3();
  v11 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9A9C8();
  sub_220CA1254();
  v15 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_220C9AA1C();
    sub_220CA1104();
  }

  return (*(v11 + 8))(v8, v4);
}

unint64_t sub_220C9A9C8()
{
  result = qword_27CF7DB68;
  if (!qword_27CF7DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB68);
  }

  return result;
}

unint64_t sub_220C9AA1C()
{
  result = qword_27CF7DB70;
  if (!qword_27CF7DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB70);
  }

  return result;
}

uint64_t URLData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DB78, &qword_220CB38D8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9A9C8();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_220CA0FF4();
  v8 = v7;
  sub_220C9AC40();
  sub_220CA1034();
  v9 = OUTLINED_FUNCTION_0_3();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C9AC40()
{
  result = qword_27CF7DB80;
  if (!qword_27CF7DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9ADBC()
{
  result = qword_27CF7DB88;
  if (!qword_27CF7DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB88);
  }

  return result;
}

unint64_t sub_220C9AE14()
{
  result = qword_27CF7DB90;
  if (!qword_27CF7DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB90);
  }

  return result;
}

unint64_t sub_220C9AE6C()
{
  result = qword_27CF7DB98;
  if (!qword_27CF7DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB98);
  }

  return result;
}

WeatherAnalytics::EndReason_optional __swiftcall EndReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EndReason.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x676B636142707061;
      break;
    case 2:
      result = 0x6975516563726F66;
      break;
    case 3:
      result = 0x6873617263;
      break;
    case 4:
      result = 0x6465726961706572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C9AFD0()
{
  result = qword_27CF7DBA0;
  if (!qword_27CF7DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBA0);
  }

  return result;
}

uint64_t sub_220C9B048@<X0>(uint64_t *a1@<X8>)
{
  result = EndReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EndReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9B1EC()
{
  result = qword_2812CE7D8;
  if (!qword_2812CE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7D8);
  }

  return result;
}

WeatherAnalytics::MapOverlay_optional __swiftcall MapOverlay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MapOverlay.rawValue.getter()
{
  result = 0x7469706963657270;
  switch(*v0)
  {
    case 1:
      result = 0x74617265706D6574;
      break;
    case 2:
      result = 0x696C617551726961;
      break;
    case 3:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C9B33C()
{
  result = qword_27CF7DBA8;
  if (!qword_27CF7DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBA8);
  }

  return result;
}

uint64_t sub_220C9B3B4@<X0>(uint64_t *a1@<X8>)
{
  result = MapOverlay.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MapOverlay(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9B568()
{
  result = qword_27CF7DBB0;
  if (!qword_27CF7DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBB0);
  }

  return result;
}

uint64_t LocationViewLoadErrorData.errorDescriptions.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocationViewLoadErrorData.errorDescriptions.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

WeatherAnalytics::LocationViewLoadErrorData __swiftcall LocationViewLoadErrorData.init(errorDescriptions:missingCurrent:missingDaily:missingHourly:insufficientDays:insufficientHours:unexpectedDateFormat:missingResponse:failedToCreateResponseModel:invalidAuthorization:responseFailed:invalidJWTResponse:invalidBundleIdentifier:failedToGenerateSigningRequestData:invalidServerResponseForJWTToken:)(WeatherAnalytics::LocationViewLoadErrorData errorDescriptions, Swift::Bool missingCurrent, Swift::Bool missingDaily, Swift::Bool missingHourly, Swift::Bool insufficientDays, Swift::Bool insufficientHours, Swift::Bool unexpectedDateFormat, Swift::Bool missingResponse, Swift::Bool failedToCreateResponseModel, Swift::Bool invalidAuthorization, Swift::Bool responseFailed, Swift::Bool invalidJWTResponse, Swift::Bool invalidBundleIdentifier, Swift::Bool failedToGenerateSigningRequestData, Swift::Bool invalidServerResponseForJWTToken)
{
  *v15 = errorDescriptions.errorDescriptions;
  *(v15 + 16) = missingCurrent;
  *(v15 + 17) = missingDaily;
  *(v15 + 18) = missingHourly;
  *(v15 + 19) = insufficientDays;
  *(v15 + 20) = insufficientHours;
  *(v15 + 21) = unexpectedDateFormat;
  *(v15 + 22) = missingResponse;
  *(v15 + 23) = failedToCreateResponseModel;
  *(v15 + 24) = invalidAuthorization;
  *(v15 + 25) = responseFailed;
  *(v15 + 26) = invalidJWTResponse;
  *(v15 + 27) = invalidBundleIdentifier;
  *(v15 + 28) = failedToGenerateSigningRequestData;
  *(v15 + 29) = invalidServerResponseForJWTToken;
  errorDescriptions.invalidAuthorization = missingDaily;
  errorDescriptions.missingCurrent = missingCurrent;
  return errorDescriptions;
}

uint64_t sub_220C9B94C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000220CB5010 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x43676E697373696DLL && a2 == 0xEE00746E65727275;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44676E697373696DLL && a2 == 0xEC000000796C6961;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x48676E697373696DLL && a2 == 0xED0000796C72756FLL;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000220CB6820 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000220CB6840 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000220CB6860 == a2;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x52676E697373696DLL && a2 == 0xEF65736E6F707365;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001BLL && 0x8000000220CB6880 == a2;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x8000000220CB68A0 == a2;
                    if (v14 || (sub_220CA1154() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x65736E6F70736572 && a2 == 0xEE0064656C696146;
                      if (v15 || (sub_220CA1154() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x8000000220CB68C0 == a2;
                        if (v16 || (sub_220CA1154() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x8000000220CB68E0 == a2;
                          if (v17 || (sub_220CA1154() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000022 && 0x8000000220CB6900 == a2;
                            if (v18 || (sub_220CA1154() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000020 && 0x8000000220CB6930 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_220CA1154();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

unint64_t sub_220C9BDE8(char a1)
{
  result = 0x43676E697373696DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x44676E697373696DLL;
      break;
    case 3:
      result = 0x48676E697373696DLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 9:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x52676E697373696DLL;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0x65736E6F70736572;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000022;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_220C9BFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C9B94C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C9C00C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C9BDE0();
  *a1 = result;
  return result;
}

uint64_t sub_220C9C034(uint64_t a1)
{
  v2 = sub_220C9C41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C9C070(uint64_t a1)
{
  v2 = sub_220C9C41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationViewLoadErrorData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DBB8, &qword_220CB3D20);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = v1[16];
  v35 = v1[17];
  v36 = v9;
  v10 = v1[18];
  v33 = v1[19];
  v34 = v10;
  v11 = v1[20];
  v31 = v1[21];
  v32 = v11;
  v12 = v1[22];
  v29 = v1[23];
  v30 = v12;
  v13 = v1[24];
  v27 = v1[25];
  v28 = v13;
  v14 = v1[26];
  v25 = v1[27];
  v26 = v14;
  v15 = v1[28];
  v23 = v1[29];
  v24 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9C41C();
  sub_220CA1254();
  v50[1] = 0;
  v16 = v37;
  sub_220CA10C4();
  if (v16)
  {
    return (*(v5 + 8))(v8, v3);
  }

  v18 = v34;
  v19 = v35;
  v20 = v32;
  v21 = v33;
  v37 = v5;
  v50[0] = 1;
  OUTLINED_FUNCTION_1_31(v36, v50);
  v49 = 2;
  OUTLINED_FUNCTION_1_31(v19, &v49);
  v48 = 3;
  OUTLINED_FUNCTION_1_31(v18, &v48);
  v47 = 4;
  OUTLINED_FUNCTION_1_31(v21, &v47);
  v46 = 5;
  OUTLINED_FUNCTION_1_31(v20, &v46);
  v45 = 6;
  OUTLINED_FUNCTION_1_31(v31, &v45);
  v44 = 7;
  OUTLINED_FUNCTION_1_31(v30, &v44);
  v43 = 8;
  OUTLINED_FUNCTION_1_31(v29, &v43);
  v42 = 9;
  OUTLINED_FUNCTION_1_31(v28, &v42);
  v41[1] = 10;
  sub_220CA10D4();
  v41[0] = 11;
  OUTLINED_FUNCTION_3_22(v26, v41);
  v40 = 12;
  OUTLINED_FUNCTION_3_22(v25, &v40);
  v39 = 13;
  OUTLINED_FUNCTION_3_22(v24, &v39);
  v38 = 14;
  OUTLINED_FUNCTION_3_22(v23, &v38);
  return (*(v37 + 8))(v8, v3);
}

unint64_t sub_220C9C41C()
{
  result = qword_27CF7DBC0;
  if (!qword_27CF7DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBC0);
  }

  return result;
}

uint64_t LocationViewLoadErrorData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DBC8, &qword_220CB3D28);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9C41C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_0_30();
  v6 = sub_220CA0FF4();
  v8 = v7;
  OUTLINED_FUNCTION_0_30();
  v42 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v25 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v24 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v23 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v22 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v21 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v20 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v19 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v18 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v17 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v16 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v15 = sub_220CA1004();
  LOBYTE(v27[0]) = 13;
  OUTLINED_FUNCTION_0_30();
  v14 = sub_220CA1004();
  v43 = 14;
  v13 = sub_220CA1004();
  v12 = v42 & 1;
  v42 = v22 & 1;
  v9 = OUTLINED_FUNCTION_0_3();
  v10(v9);
  *v26 = v6;
  *&v26[8] = v8;
  v26[16] = v12;
  v26[17] = v25 & 1;
  v26[18] = v24 & 1;
  v26[19] = v23 & 1;
  v26[20] = v42;
  v26[21] = v21 & 1;
  v26[22] = v20 & 1;
  v26[23] = v19 & 1;
  v26[24] = v18 & 1;
  v26[25] = v17 & 1;
  v26[26] = v16 & 1;
  v26[27] = v15 & 1;
  v26[28] = v14 & 1;
  v26[29] = v13 & 1;
  *a2 = *v26;
  *(a2 + 14) = *&v26[14];
  sub_220C9C908(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v6;
  v27[1] = v8;
  v28 = v12;
  v29 = v25 & 1;
  v30 = v24 & 1;
  v31 = v23 & 1;
  v32 = v42;
  v33 = v21 & 1;
  v34 = v20 & 1;
  v35 = v19 & 1;
  v36 = v18 & 1;
  v37 = v17 & 1;
  v38 = v16 & 1;
  v39 = v15 & 1;
  v40 = v14 & 1;
  v41 = v13 & 1;
  return sub_220C9C940(v27);
}

__n128 __swift_memcpy30_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_220C9C9BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 30))
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

uint64_t sub_220C9C9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 30) = 1;
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

    *(result + 30) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewLoadErrorData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C9CB34()
{
  result = qword_27CF7DBD0;
  if (!qword_27CF7DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBD0);
  }

  return result;
}

unint64_t sub_220C9CB8C()
{
  result = qword_27CF7DBD8;
  if (!qword_27CF7DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBD8);
  }

  return result;
}

unint64_t sub_220C9CBE4()
{
  result = qword_27CF7DBE0;
  if (!qword_27CF7DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBE0);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for Configuration.Enablement(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Configuration.Enablement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220C9CDD4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_220C9CDF0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_220C9D18C(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_220CA11F4();
  a2(v5, a1);
  return sub_220CA1214();
}

uint64_t sub_220C9D1E8()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9D2C4()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_15_10();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D35C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D3D0()
{
  OUTLINED_FUNCTION_3_23();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_12_8();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D484()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 4:
    case 5:
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D53C()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9D5D4(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_6_15();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D658(uint64_t a1, char a2)
{
  sub_220CA0C54();
}

uint64_t sub_220C9D698(uint64_t a1, char a2)
{
  sub_220CA0C54();
}

uint64_t sub_220C9D768()
{
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_5_15();
  sub_220CA0C54();
}

uint64_t sub_220C9D808(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_21_1();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D884()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_9();
      break;
    case 2:
      OUTLINED_FUNCTION_4_19();
      break;
    case 3:
      OUTLINED_FUNCTION_21();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_22();
LABEL_6:
      OUTLINED_FUNCTION_18_4();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D910(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13_10();
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D984(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_7_17();
  }

  else
  {
    OUTLINED_FUNCTION_17_7();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D9FC()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_5_15();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DAB4()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_9();
      break;
    case 2:
      OUTLINED_FUNCTION_4_19();
      break;
    case 3:
      OUTLINED_FUNCTION_21();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_22();
LABEL_6:
      OUTLINED_FUNCTION_18_4();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DB6C()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9DC08(uint64_t a1, char a2)
{
  sub_220CA0C54();
}

uint64_t sub_220C9DC88()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DD34(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_4_19();
      break;
    case 3:
      OUTLINED_FUNCTION_2_24();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DDF8(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DE78()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9DF2C()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_12_8();
      goto LABEL_3;
    case 4:
    case 5:
LABEL_3:
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DFFC()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9E0B8(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E150(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_7_17();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E1CC()
{
  OUTLINED_FUNCTION_10_11();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_10_11();
      break;
    case 3:
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_4_19();
      break;
    case 4:
    case 6:
      OUTLINED_FUNCTION_4_19();
      break;
    case 8:
      OUTLINED_FUNCTION_1_32();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E2F8()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_12_8();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E3B4()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_2_24();
      break;
    case 5:
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_22_2();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E4E0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_7_17();
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E558(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E5D8()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_15_10();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E698(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_2_24();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E74C(uint64_t a1, char a2)
{
  sub_220CA0C54();
}

uint64_t sub_220C9E7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  sub_220CA0C54();
}

uint64_t sub_220C9E834()
{
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_5_15();
  sub_220CA0C54();
}

uint64_t sub_220C9E8D0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13_10();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E948()
{
  OUTLINED_FUNCTION_3_23();
  sub_220CA0C54();
}

uint64_t sub_220C9EA4C(uint64_t a1, char a2)
{
  sub_220CA11F4();
  if (a2)
  {
    OUTLINED_FUNCTION_13_10();
    if (v5)
    {
      v6 = 0x64656C696166;
    }

    else
    {
      v6 = 0x656E6F646E616261;
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
  }

  OUTLINED_FUNCTION_8_15(v3, v6, v4);

  return sub_220CA1214();
}

uint64_t sub_220C9EB00()
{
  v1 = OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    v3 = 0x657263536C6C7566;
  }

  else
  {
    v3 = 0x64656E6E6970;
  }

  OUTLINED_FUNCTION_8_15(v1, v3, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9EBA0()
{
  v1 = OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x695764656E6E6970;
    }

    else
    {
      v3 = 0x6B63617473;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15(v1, v3, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9EC24()
{
  OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_7_17();
    if (v3)
    {
      v4 = 0x74726F7065527361;
    }

    else
    {
      v4 = 0x6573726F77;
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
  }

  OUTLINED_FUNCTION_8_15(v1, v4, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9ECE8()
{
  v1 = OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_7_17();
    if (v3)
    {
      v4 = 0x74726F7065527361;
    }

    else
    {
      v4 = 1936942444;
    }
  }

  else
  {
    v4 = 1701998445;
  }

  OUTLINED_FUNCTION_8_15(v1, v4, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9ED80()
{
  v1 = OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x7261626C6F6F74;
    }

    else
    {
      v3 = 0x6E656E6F706D6F63;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15(v1, v3, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9EE4C()
{
  v1 = OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6E656E6F706D6F63;
    }

    else
    {
      v3 = 0x726F7463656C6573;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15(v1, v3, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9EF00(uint64_t a1, char a2)
{
  sub_220CA11F4();
  sub_220CA0C54();

  return sub_220CA1214();
}

uint64_t sub_220C9EFF4()
{
  OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_7_17();
    if (v3)
    {
      v4 = 0x74726F7065527361;
    }

    else
    {
      v4 = 0x7265646C6F63;
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_7();
  }

  OUTLINED_FUNCTION_8_15(v1, v4, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9F070()
{
  OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_13_10();
    if (v3)
    {
      v4 = 0x657372616F63;
    }

    else
    {
      v4 = 0x65736963657270;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15(v1, v4, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9F100(uint64_t a1, char a2)
{
  v3 = sub_220CA11F4();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x6953746E65696C63;
    }

    else
    {
      v5 = 0x6568636163;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_1();
  }

  OUTLINED_FUNCTION_8_15(v3, v5, v4);

  return sub_220CA1214();
}

uint64_t sub_220C9F1B8(uint64_t a1, char a2)
{
  sub_220CA11F4();
  sub_220CA0C54();

  return sub_220CA1214();
}

uint64_t sub_220C9F214()
{
  v1 = OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x697461636F4C6F6ELL;
    }

    else
    {
      v3 = 0x726568746FLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_15();
  }

  OUTLINED_FUNCTION_8_15(v1, v3, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9F2E4()
{
  v1 = OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 1936744813;
    }

    else
    {
      v3 = 0x72656469766F7270;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15(v1, v3, v2);

  return sub_220CA1214();
}

uint64_t sub_220C9F38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_220CA11F4();
  a3(v4);
  sub_220CA0C54();

  return sub_220CA1214();
}

uint64_t sub_220C9F410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_220CA11F4();
  a3(v6, a2);
  return sub_220CA1214();
}

WeatherAnalytics::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220C9F4C8()
{
  result = qword_27CF7DBE8;
  if (!qword_27CF7DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OsInstallVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1, uint64_t a2)
{

  return sub_220C9F38C(0, a2, v2);
}